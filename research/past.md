---
layout: default
title: Past Research
---

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
