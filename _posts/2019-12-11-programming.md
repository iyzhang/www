---
layout: post
shortnews: false
title: Application Programmer != Distributed Systems Programmer != OS Programmer
photo: img/demikernel.jpg
---

In the last decade since I started my PhD, PhD, I've noticed a
disturbing trend of fast-moving technologies in the cloud (e.g.,
microservices, serverless) and datacenter (e.g., kernel-bypass,
hardware accelerators) placing more and more burden on programmers.

In my PhD, I watched (and tried to fix) the increasing need for
application programmers to be come distributed systems engineers.  My
canonical example was always that the programmer of a large, complex
application -- Microsoft Word -- would previously never need to
understand distributed systems concepts, like RPC, but now needs to
deeply understand both their application and distributed systems to
build usable software.

After my PhD, I saw a similar trend with kernel-bypass technologies in
the datacenter.  Distributed systems developers must now understand
low-level operating systems concepts like I/O buffer management to
build an efficient distributed system with technologies like RDMA.

We must stop this trend before it goes any further.  Distributed
system programmers should not need to learn about networking hardware,
and application programmers should not also be deep systems engineers.

This trend is because systems researchers have have shied away from
introducing new APIs.  However, the world is drastically in need of
some new abstractions to hide the mounting complexity of cloud
services and new datacenter hardware.  Sapphire and Diamond introduced
new APIs to make building distributed applications easier and now
Demikernel is introducing new APIs to make building kernel-bypass
applications easier.
