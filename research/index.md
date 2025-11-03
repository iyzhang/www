---
layout: page
title: Research
---

My current research focuses on datapath operating systems for
microsecond-scale datacenter systems.

<ul class="media-list">
<li class="media">
<div class="media-left hidden-xs">
<img style="width:100px" class="media-object img-circle" src="../img/demikernel.jpg" />
</div>
<div class="media-body">

    <span class="links btn-group pull-right">
    <a href="papers/demikernel-sosp21.pdf" class="btn btn-default btn-xs">{%icon fa-file-text-o%} Paper</a>
    </span>

    <h3 class="media-heading">Demikernel</h3>
    The Demikernel is a new datapath OS and architecture for
    microsecond-scale datacenter systems and kernel-bypass devices.
    Demikernel accommodates heterogenous kernel-bypass devices with a
    flexible library OS architecture and new high-level datapath API
    with an asynchronous I/O interface and zero-copy memory
    semantics for microsecond I/O processing.  Demikernel implements
    this API for RDMA, DPDK and SPDK devices with new nanosecond-scale
    I/O stacks in Rust.  Once ported to Demikernel, microsecond
    datacenter systems can run across different devices with no code changes.
    <br>
    </div>

</li>

</ul>
