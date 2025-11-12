---
layout: page
title: Research
---

<div class="row">
  <div class="col-sm-3">
    <img src="/img/demikernel.jpg" alt="Demikernel logo"
         class="rounded-circle img-responsive">
  </div>
  </div>



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

<a href="publications/papers/demikernel-sosp21.pdf" class="btn btn-sm btn-light">PAPER</a>
<a href="https://github.com/microsoft/demikernel" class="btn btn-sm btn-light">CODE</a>