---
layout: page
title: Research
permalink: /research/index.html
---

# Demikernel

My current research focuses on datapath operating systems for
microsecond-scale datacenter systems.  Demikernel is a new
datapath OS and architecture for microsecond-scale datacenter systems
and kernel-bypass devices.  Demikernel accommodates heterogenous
kernel-bypass devices with a flexible library OS architecture and new
high-level datapath API with an asynchronous I/O interface and
zero-copy memory semantics for microsecond I/O processing.  Demikernel
implements this API for RDMA, DPDK and SPDK devices with new
nanosecond-scale I/O stacks in Rust.  Once ported to Demikernel,
microsecond datacenter systems can run across different devices with
no code changes.

[PAPER](/papers/demikernel-sosp21.pdf){: .btn .btn-sm .btn-light}
[CODE](https://github.com/microsoft/demikernel){: .btn .btn-sm .btn-light}

# Cornflakes

Cornflakes is a new serialization library co-designed with a new
networking stack to provide zero-copy serialization using NIC DMA. We
make the obvservation that serialization is fundamentally *data
movement* which the NIC is ideally designed to do and not the CPU.
Unlike existing systems, Cornflakes leverages existing commodity
networking hardware and its support for scatter-gather I/O to
eliminate copies from the serialization and networking path.  Our
project also studies the design trade-offs of software copies and DMA
under different workloads.

[PAPER](/papers/cornflakes-sosp23.pdf){: .btn .btn-sm .btn-light}


# Capybara

Capybara is a new load balancer architecture that uses microsecond
scale TCP migration to enable dynamic L4 load balancing. Capybara
leverages two trends – programmable switches and kernel-bypass – to
efficiently implement connection migration without disruption, while
maintaining transparency to clients.  Capybara divides load balancing
responsibility into a fast L4 load balancer, a host-switch co-designed
connection migration protocol, and a transport interface for
application-level connection state migration.
