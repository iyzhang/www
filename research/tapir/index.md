---
layout: default
title: Transactional Application Protocol for Inconsistent Replication (TAPIR)
---

<div class="inset-img pull-left">
  <img src="{{ site.base }}/img/tapir.jpg" alt="Photo of Tapir"
       class="img-responsive">
</div>

Application programmers increasingly prefer distributed storage
systems with distributed transactions and strong consistency (e.g.,
Google's Spanner) for their strong guarantees and ease of
use. Unfortunately, existing transactional storage systems are
expensive to use because they rely on costly replication protocols,
like Paxos, for fault-tolerance. In the TAPIR project, we present a
new approach that makes transactional storage systems more affordable:
we eliminate consistency from the replication protocol while still
providing distributed transactions with strong consistency to
applications.

*TAPIR* -- the Transaction Application Protocol for Inconsistent
Replication -- is the first transaction protocol to use a replication
protocol, called *inconsistent replication*, that provides
fault-tolerance with no consistency.  By enforcing strong consistency
only in the transaction protocol, TAPIR can commit transactions in a
single round-trip and order distributed transactions without
centralized coordination. We demonstrate the use of TAPIR in TAPIR-KV,
a key-value store that provides high-performance transactional
storage. Compared to systems using conventional transaction protocols
that require replication with strong consistency, TAPIR-KV has 2x
better latency *and* throughput.

### Publications

- **[Building Consistent Transactions with Inconsistent Replication.]({{ site.base }}/papers/tapir-tr14.pdf)**   
Irene Zhang, Naveen Kr. Sharma, Adriana Szekeres, Arvind Krishnamurthy, Dan R. K. Ports.   
UW Technical Report UW-CSE-14-12-01.