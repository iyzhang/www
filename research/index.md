---
layout: default
title: Current Research
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

<li class="media">
<div class="media-left hidden-xs">
<img style="width:100px" class="media-object img-circle" src="../img/treehouse.png" />
</div>
<div class="media-body">

    <span class="links btn-group pull-right">
    <a href="papers/treehouse-arxiv22.pdf" class="btn btn-default btn-xs">{%icon fa-file-text-o%} Paper</a>
    </span>
<h3 class="media-heading">Treehouse</h3>

Treehouse is new project that proposes a software-centric approach to
green datacenters. While existing research aims to reduce energy usage
of datacenter hardware, we argue that being energy-aware in the design
of datacenter software is equally important.  To that end, Treehouse
aims to make energy and carbon visible to application developers on a
fine-grained basis, modify system APIs to make informed trade offs
between performance and carbon emissions, and raise the level of
application programming for flexible use of more energy efficient
means of compute and storage. Find out more about the Treehouse project at our <a href="https://treehouse-research.github.io">project webpage</a>!
    <br>
    </div>

</li>
</ul>

## Past Research

My PhD research broadly covered distributed systems for large-scale,
wide-area applications. Some recent projects are listed below.

<ul class="media-list">
<li class="media">
<div class="media-left hidden-xs">
<img style="width:100px" class="media-object img-circle" src="../img/marvin.jpg" />
</div>
<div class="media-body">

    <span class="links btn-group pull-right">
    <a href="papers/marvin-tr19.pdf" class="btn btn-default btn-xs">{%icon fa-file-text-o%} Paper</a>
    </span>

    <h3 class="media-heading">Marvin</h3>
    Marvin is a new memory manager for Android that co-designs the
    application runtime (i.e., JVM) and operating system.
    Marvin's key insight is that all mobile applications run within
    the <i>same</i> runtime, so we can leverage  runtime insight into the
    application for better  resource management.  Marvin implements
    almost all memory management in a modified Android Runtime to
    achieve better  memory utilization and performance.
    <br>
    </div>

</li>
    <li class="media">
		<div class="media-left hidden-xs">
    <img style="width:100px" class="media-object img-rounded"
    src="../img/felix.jpg" />
	</div>
	<div class="media-body">

<span class="links btn-group pull-right">
<a href="papers/tapir-sosp15.pdf" class="btn btn-default btn-xs">{%icon fa-file-text-o%} Paper</a>
<a href="https://www.youtube.com/watch?v=yE3eMxYJDiE" class="btn btn-default btn-xs">{%icon fa-film%} Talk</a>
<a href="https://github.com/UWSysLab/tapir" class="btn btn-default btn-xs">{%icon fa-code%} Code</a>
<a href="tapir/index.html" class="btn btn-default btn-xs">{%icon fa-plus%} More</a>
</span>

<h3 class="media-heading">TAPIR</h3>

The Transactional Application Protocol for Inconsistent Replication
(TAPIR) is a new protocol for linearizable distributed transactions
built using replication with <em>no consistency guarantees</em>. By
enforcing consistency <em>only</em> at the transaction layer, TAPIR
eliminates coordination at the replication layer, enabling TAPIR to
provide the same transaction model and consistency guarantees as
existing systems like Spanner with better latency and throughput.
</div>
</li>

    <li class="media">
		<div class="media-left hidden-xs">
			<img style="width:100px" class="media-object img-rounded"
			src="../img/diamond.jpg" />
	</div>
	<div class="media-body">
	
<span class="links btn-group pull-right">
<a href="papers/diamond-osdi16.pdf" class="btn btn-default btn-xs">{%icon fa-file-text-o%} Paper</a>
<a href="https://www.usenix.org/conference/osdi16/technical-sessions/presentation/zhang-irene" class="btn btn-default btn-xs">{%icon fa-volume-up%} Talk</a>
<a href="https://github.com/UWSysLab/diamond" class="btn btn-default btn-xs">{%icon fa-code%} Code</a>
<a href="//sapphire.cs.washington.edu/research/project/diamond.html" class="btn btn-default btn-xs">{%icon fa-plus%} More</a>
</span>

	<h3 class="media-heading">Diamond</h3>

Diamond is a new data management system for wide-area, reactive
applications.  Reactive applications give users the illusion of
continuous synchronization across mobile devices and the cloud server.
Diamond simplifies this task by providing applications with persistent
cloud storage, reliable synchronization between storage and mobile
devices, and automated execution of application code in response to
shared data updates.  </li>

</ul>




