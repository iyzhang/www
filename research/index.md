---
layout: default
title: Research Projects
projects:
  - link: /
    name: An Exciting project
    summary: This will never work.
---

My current research focuses on operating systems and distributed
systems for large-scale distributed applications. I am exploring
better transactional storage, flexible deployment and practical
user-level I/O for these applications.

### Optimistic Replicated Two-Phase Commit 

Optimistic Replicated Two-Phase Commit (OR-2PC) is a new protocol
integrating two-phase commit, replication and concurrency control. By
taking advantage of cross-protocol optimizations, OR-2PC is able to
commit transactions in a single round-trip with the same consistency
guarantees and general transaction model as conventional
protocols.   
[More about OR-2PC...][or-2pc]

[or-2pc]: or-2pc/index.html

### Sapphire 

Sapphire is a new distributed programming platform that provides
*customizable* and *extensible* deployment of mobile/cloud
applications.  This flexibility enables programmers to separate
deployment logic from their application, while maintaining
fine-grained control over performance trade-offs.   
[More about Sapphire...][sapphire].

[sapphire]: http://sapphire.cs.washington.edu

### Arrakis 

Arrakis is a new operating system that takes advantage of hardware
virtualization technology to eliminate the operating system from
fast-path I/O operations. Arrakis allows applications to directly
access the hardware during normal execution and providing
significantly better performance, reliability and
customizability.   
[More about Arrakis...][arrakis].

[arrakis]: http://arrakis.cs.washington.edu

## Research Projects at VMware 

Before starting my PhD, I worked on research at VMware. My primary
focus was on improving the performance of restoring checkpointed
virtual machines. My work included:

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

## Research Projects at MIT 

I worked on a number of research projects with great people while at
MIT as an undergrad and MEng. Some notable projects that I worked on:

**TxCache** is a distributed, in-memory, application-level cache with
transactional consistency and automated cache invalidations. By using
recent snapshots for read-only transactions to optimize cache
utilization and eliminate cache invalidation, TxCache provides the
same performance benefits as other in-memory caches without violating
transactional consistency.

**WheelFS** is a flexible, wide-area file system that gives applications
control over performance trade-offs, but with a standard POSIX
interface. My master's thesis work focused on using prefetching and
cooperative caching for efficient file distribution in WheelFS.

**FreshBreeze** is a new multiprocessor architecture designed to support
the design of functional programs by providing a single global address
space, a no-update, cycle-free heap and fine-grained threading. As an
undergraduate, I worked with Prof. Jack Dennis to develop a
cycle-accurate simulation of the processor architecture.