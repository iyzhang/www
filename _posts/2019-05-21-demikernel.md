---
layout: post
shortnews: false
title: The Case for a High-level Kernel-Bypass I/O Abstraction
photo: img/demikernel.jpg
link: /papers/demikernel-hotos19.pdf
---

After chatting with people at HotOS, I was inspired to write this blog
post summarizing my HotOS paper.  At a high-level, the HotOS paper
advocates for ***a new high-level I/O abstraction for
kernel-bypass.***

In the past, kernel-bypass has been associated with giving
applications ***low-level access to devices.*** We argue that modern
kernel-bypass applications should use a high-level abstraction
instead, provided by a user-level, library OS that runs alongside the
application in its address space.

In this blog post, I will motivate the ***problem***: why we need a
high-level interface for kernel-bypass I/O.  The Demikernel OS
architecture is a ***solution***: it defines a high-level I/O
abstraction for kernel-bypass and supports this abstraction across
different kernel-bypass devices with library OSes.  Read [the HotOS
paper](papers/demikernel-hotos19.pdf) if you are interested in our
proposed solution.

### Background: Existing kernel-bypass abstractions are low-level
Existing kernel-bypass abstractions (e.g., DPDK, RDMA) are
***low-level*** because they expose hardware features and limitations
to applications.  As a concrete example, we will look at sending data of
arbitrary size and sending data at arbitrary speed with DPDK and RDMA.
Note that both are easy with a high-level interface like POSIX
sockets, which let applications send data of any size and at (almost)
unlimited speed (until the OS runs out of memory for buffering).

DPDK senders are limited to the max network packet size, and DPDK
provides no flow or congestion control, so the network or receiver
might discard packets.  RDMA senders are limited to the receive buffer
size posted by the receiver; the receiving NIC will discard larger
packets.  RDMA implements congestion control (through PFC or other
means) but not flow control, so the receiver must post sufficient
receive buffers fast enough; posting too many buffers wastes memory,
not posting enough buffers causes the receiver to discard packets.

Every RDMA or DPDK application must work around these two hardware
limitations, and most of them do it in the same way.  For example,
most DPDK application will use full networking stack (e.g., mTCP) to
break up messages into network packets and implement congestion and
flow control.  Almost every RDMA application implements an RPC
messaging mechanism that coordinates message sizes and when the sender
should stop sending because the receiver is running out of buffers.

This functionality would normally be provided by an OS, but low-level
kernel-bypass interfaces instead force every application to
re-implement it.  At the end of the day, most kernel-bypass
applications are still looking for a high-level OS interface but
without the overhead of going through the OS kernel.

### Benefits of a high-level interface
Since most applications want the same functionality (e.g., the ability
to send data of any size at any speed), we propose using a library OS
to provide a high-level interface for kernel-bypass.  Having
applications use a high-level interface provides the following benefits:

**Ease-of-use:** Application programmers do not have to implement OS
functionality, like flow control, which requires them to understand
the hardware limitations and features (e.g., that DPDK needs a full
networking stack but RDMA just needs flow control).

**Portability:** Application work with both DPDK or RDMA devices
without modification.  Today, building an application that works
across RDMA and DPDK requires supporting two different interfaces and
implementing different OS functionality in the application since RDMA
NICs handle congestion control but not flow control, while DPDK NICs
do not implement either.  Current Intel NICs do not support RDMA, thus
do not implement congestion control, so applications using RDMA for
kernel-bypass cannot run on them.

**Flexibility:** An interface that hides hardware limitations and
features lets OS functionality move between the device and the CPU
without modifying the application.  NICs continue to gain networking
capabilities, so DPDK NICs might eventually provide congestion control
but the DPDK interface makes it impossible to use because the
application is already using a full networking stack.  As devices
evolve, only the library OS has to change functionality, rather than
every application.

### FAQ

1. **Why not the POSIX interface?**  The existing I/O interface was
designed when I/O devices were slow, so it did not take I/O efficiency
into account.  It imposes a high cost on applications that is not
affordable with kernel-bypass.  For example, we found that 30% of the
cost of the Linux kernel comes from its interface.  This overhead is
just too much to carry around while using kernel-bypass devices.

2. **What about other RDMA features?**  Many applications cannot easily
take advantage of RDMA's direct memory access.  These applications do
not use the full RDMA interface and use RDMA simply for kernel-bypass
messaging.  A high-level interface does not dictate whether messaging
should be implemented with one-sided or two-sided operations.
Applications that do use direct memory access are not portable anyway,
so would not benefit from a higher-level interface.

3. **Doesn't programming against a low-level interface provide better
performance?**  Not necessarily.  For example, the RDMA interface
requires all kinds of tricks for optimizing its use.  We use these to
lower the cost of providing our interface and provide applications
better performance without requiring the programmer to learn all of
the ins and outs of RDMA.  For many applications, the benefit gained
by kernel-bypass will far outweigh the cost of our interface anyway.

### Redis Experimental Results

We ran an experiment with the Redis benchmark on
[CloudLab](cloudlab.us), which has a 25Gb network with Mellanox CX-4
NICs.  The first bar is unmodified Redis performance.  The next three
bars are performance for Redis ported to the Demikernel interface.
The first bar is simply the Demikernel interface with no
kernel-bypass, still going through the Linux kernel on every I/O.  The
next two bars are kernel-bypass with RDMA and DPDK.

<img src="img/demikernel-redis-exp.jpg" width="50%">

Note that 30% of the overhead from the Linux kernel comes from
inefficiencies in the interface, while bypassing the kernel using RDMA
or DPDK provides another 30% decrease in latency.  For this experiment
with the Redis benchmark, 60% of the latency comes from the OS kernel
and its interface!

### Summary

Datacenter applications, which spend a signficant portion of their
time processing network and storage I/O, will no longer be able to
afford going through the OS kernel on every I/O operation.  However,
that does nto mean that these applications want low-level access to
devices.  Instead, we need a new and efficient ***high-level*** I/O
abstraction for kernel-bypass.

This is a work in progress as I continue the Demikernel project. If
you have comments or questions, please email me at
irene.zhang@microsoft.com.
