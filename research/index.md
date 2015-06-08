---
layout: default
title: Research
notitle: true
---

### Current Research
My PhD research broadly covers operating systems and distributed
systems for large-scale, distributed applications. I am working on
better transactional storage, flexible mobile/cloud deployment and
practical user-level I/O for these types of applications. My currently
ongoing projects are:

**TAPIR**, the Transactional Application Protocol for Inconsistent
Replication, is a new protocol for linearizable distributed
transactions built using replication with *no consistency
guarantees*. By enforcing consistency *only* at the transaction
layer, TAPIR eliminates coordination at the replication layer,
enabling TAPIR to provide the same transaction model and consistency
guarantees as existing systems like Spanner with better latency and
throughput.

More about [TAPIR {% icon fa-chevron-circle-right%}](tapir/index.html) 

**Agate** is a new trusted distributed runtime system that gives
users control over how mobile/cloud applications share sensitive user
data collected on mobile devices (e.g., photos, GPS location).  Agate
combines aspects of access control and information flow control to
allow applications to share user data in application-specific ways,
while enforcing user policies without trusting the application or the
application programmer.

More about [Agate {% icon fa-chevron-circle-right%}](//sapphire.cs.washington.edu/research/project/agate.html)

**Sapphire** is a new distributed programming platform that provides
*customizable* and *extensible* deployment of mobile/cloud
applications.  This flexibility enables programmers to separate
deployment logic from their application, while maintaining
fine-grained control over performance trade-offs.

More about [Sapphire {% icon fa-chevron-circle-right%}](//sapphire.cs.washington.edu)

**Arrakis** is a new operating system that takes advantage of
hardware virtualization technology to eliminate the operating system
from fast-path I/O operations. Arrakis allows applications to directly
access the hardware during normal execution, providing significantly
better performance, reliability and customizability.

More about [Arrakis {% icon fa-chevron-circle-right%}](//arrakis.cs.washington.edu)

### Past Research
Before starting my PhD, I worked on several research projects at
VMware. My primary focus was on improving the performance of restoring
checkpointed virtual machines. My work included:

**Halite** is a new VM checkpointing system for VMware ESXi Server that
optimizes for checkpoint restore performance. Halite improves disk
efficiency and overall performance during restore by organizing
checkpointed memory based on access locality.

**Working set restore** is a new technique for restoring checkpointed
virtual machines that predicts the working set of VM memory pages
before checkpointing and prefetches those pages on restore, reducing
overhead on the VM. This project included a new metric for measuring
VM performance on restore, as well as an implementation of working set
restore for VMware Workstation.

I worked on a number of research projects with great people while at
MIT as an undergrad and MEng student. Some notable projects that I
worked on:

**TxCache** is a distributed, in-memory, application-level cache with
transactional consistency and automated cache invalidations. By using
recent snapshots for read-only transactions to optimize cache
utilization and eliminate cache invalidation, TxCache provides the
same performance benefits as other in-memory caches without violating
transactional consistency. I worked on this project with [Dan
Ports](//drkp.net"), [Austin
Clements](//web.mit.edu/amdragon/www/), [Barbara
Liskov](http://www.pmg.csail.mit.edu/~liskov/) and [Sam
Madden](http://db.lcs.mit.edu/madden/)

**WheelFS** is a flexible, wide-area file system that gives applications
control over performance trade-offs, but with a standard POSIX
interface. My master's thesis work focused on using prefetching and
cooperative caching for efficient file distribution in WheelFS. I was
advised by [Jeremy Stribling](http://pdos.csail.mit.edu/~strib/),
[Robert Morris](http://pdos.csail.mit.edu/rtm/) and [Frans
Kaashoek](http://pdos.csail.mit.edu/~kaashoek/).

**FreshBreeze** is a new multiprocessor architecture designed to support
the design of functional programs by providing a single global address
space, a no-update, cycle-free heap and fine-grained threading. As an
undergraduate, I worked with [Prof. Jack
Dennis](http://csg.csail.mit.edu/Users/dennis) to develop a
cycle-accurate simulation of the processor architecture.
