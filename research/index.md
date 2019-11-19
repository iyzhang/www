---
layout: default
title: Current Research
---

My current research focuses on operating systems for datacenter servers
and mobile devices.  I also work in distributed systems and security
for the datacenter.  


<ul class="media-list">
<li class="media">
<div class="media-left hidden-xs">
<img style="width:100px" class="media-object img-circle" src="../img/demikernel.jpg" />
</div>
<div class="media-body">

    <span class="links btn-group pull-right">
    <a href="papers/demikernel-hotos19.pdf" class="btn btn-default btn-xs">{%icon fa-file-text-o%} Paper</a>
    </span>

    <h3 class="media-heading">Demikernel</h3>
    The Demikernel is a new library OS architecture for kernel-bypass
    I/O in datacenter servers.  The Demikernel defines a new
    kernel-bypass I/O abstraction and uses library OSes to flexibly provide
    that abstraction across different
    kernel-bypass devices (e.g., DPDK, RDMA).  This standard interface
     makes kernel-bypass applications easier to build and portable
    across different devices. 
    <br>
    </div>

</li>
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
</ul>

## Past Research

My PhD research broadly covered distributed systems for large-scale,
wide-area applications. Some recent projects are listed below.

<ul class="media-list">
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
<a href="{{ site-base }}/papers/diamond-osdi16.pdf" class="btn btn-default btn-xs">{%icon fa-file-text-o%} Paper</a>
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




