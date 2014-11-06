---
layout: default
title: Transactional Application Protocol for Inconsistent Replication (TAPIR)
---

<div class="inset-img pull-left">
  <img src="{{ site.base }}/img/tapir.jpg" alt="Photo of Tapir"
       class="img-responsive">
</div>

Distributed transactional storage systems (such as Google's Spanner)
are easier for application developers to use because they provide
strong guarantees. However, they use strongly consistent replication
protocols, introducing serious performance challenges. On the other
hand, systems with weaker consistency guarantees (such as Amazon's
Dynamo) use replication techniques with better performance, but they
are more complex to use.
 
This paper demonstrates that it is possible to build transactions with
strong consistency guarantees using a new replication technique,
*inconsistent replication*, that provides *no* consistency guarantees.
We present *TAPIR* -- the Transaction Application
Protocol for Inconsistent Replication.  We show that using
inconsistent replication, TAPIR can provide linearizable transactions
with better latency and throughput than conventional transaction
protocols.  We demonstrate the use of TAPIR in TAPIR-KV, a key-value
store that provides high-performance transactional storage.

### Publications

- **Building Consistent Transactions with Inconsistent Replication.**   
Irene Zhang, Naveen Kr. Sharma, Adriana Szekeres, Arvind Krishnamurthy, Dan R. K. Ports.   
In submission.