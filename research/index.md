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
<img style="width:100px" class="media-object img-circle" src="../img/persimmon.jpg" />
</div>
<div class="media-body">

    <span class="links btn-group pull-right">
    <a href="papers/persimmon-osdi20.pdf" class="btn btn-default btn-xs">{%icon fa-file-text-o%} Paper</a>
    </span>

    <h3 class="media-heading">Persimmon</h3>
    Persimmon is a persistent memory system that  presents a new persistent state machine abstraction
    (PSM) to applications,
    which captures both the granularity of atomic persistent
    operations and the data that should be persisted.  Persistent
    state machines nicely capture the RPC-processing behavior of
    modern datacenter storage systems.  As a result, Persimmon is able
    to converts existing
    distributed in-memory storage systems into persistent,
    crash-consistent versions with low overhead and minimal code
    changes.  
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




