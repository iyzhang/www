---
layout: default
title: Research
---

My PhD research broadly covers operating systems and distributed
systems for large-scale, distributed applications. I am working on
better transactional storage, flexible mobile/cloud deployment and
practical user-level I/O for these types of applications. My currently
ongoing projects are:


<ul class="media-list">
    <li class="media">
		<div class="media-left hidden-xs">
			<img style="width:100px" class="media-object img-rounded"
    src="../img/felix.jpg" />
	</div>
	<div class="media-body">

<a href="tapir/index.html" class="pull-right btn btn-default btn-xs">More about TAPIR {% icon fa-chevron-circle-right%}</a>
	<h4 class="media-heading">TAPIR</h4>

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
			src="../img/agate.jpg" />
	</div>
	<div class="media-body">
	
			<a href="//sapphire.cs.washington.edu/research/project/agate.html"
class="pull-right btn btn-default btn-xs">More about Agate
{% icon fa-chevron-circle-right%}</a>

	<h4 class="media-heading">Agate</h4>

Agate is a new trusted distributed runtime system that gives users
control over how mobile/cloud applications share sensitive user data
collected on mobile devices (e.g., photos, GPS location).  Agate
combines aspects of access control and information flow control to
allow applications to share user data in application-specific ways,
while enforcing user policies without trusting the application or the
application programmer.

</li>

    <li class="media">
		<div class="media-left hidden-xs">
			<img style="width:100px" class="media-object img-rounded"
    src="../img/sapphire.jpg" />
	</div>
	<div class="media-body">

	<a href="//sapphire.cs.washington.edu" class="pull-right btn
	btn-default btn-xs">More about Sapphire {% icon fa-chevron-circle-right%}</a>
	<h4 class="media-heading">Sapphire</h4>

Sapphire is a new distributed programming platform that provides
customizable and extensible deployment of mobile/cloud applications.
This flexibility enables programmers to separate deployment logic from
their application, while maintaining fine-grained control over
performance trade-offs.
</div>
</li>

    <li class="media">
		<div class="media-left hidden-xs">
			<img style="width:100px" class="media-object img-rounded"
    src="../img/arrakis.jpg" />
	</div>
	<div class="media-body">
<a href="//arrakis.cs.washington.edu" class="pull-right btn
btn-default btn-xs">More about Arrakis
{% icon fa-chevron-circle-right%}</a>
	<h4 class="media-heading">Arrakis</h4>

Arrakis is a new operating system that takes advantage of hardware
virtualization technology to eliminate the operating system from
fast-path I/O operations. Arrakis allows applications to directly
access the hardware during normal execution, providing significantly
better performance, reliability and customizability.
<br />
</div>
</li>

</ul>

Before starting my PhD, I worked on several research projects at
VMware and MIT. You can find out more about my [past projects here {% icon fa-chevron-circle-right%}](past.html).

