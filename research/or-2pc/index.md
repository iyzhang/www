---
layout: default
title: Optimistic Two-Phase Commit
---

Conventional distributed transactional storage systems layer several
protocols, including two-phase commit, a replication protocol like
Paxos and a concurrency control mechanism, with each protocol
providing a subset of the system guarantees. Optimistic Replicated
Two-Phase Commit (OR-2PC) is a new protocol for distributed
transactions that *integrates* these separate protocols to take
advantage of cross-layer optimizations to improve performance and
simplify the protocol.

Rather than relying on Paxos to provide ordering of transactions,
OR-2PC optimistically orders transactions at the client using
client-proposed timestamps based on loosely synchronized
clocks. OR-2PC uses a new optimistic concurrency control (OCC)
mechanism to verify proposed timestamps, ensuring consistency for
every transaction both across replicas in a shard, as well as across
shards, at the same time.  These new, co-designed protocols allow
OR-2PC to commit transactions in a single round-trip and eliminate
bottlenecks caused by serialization through a single server, while
providing the same consistency guarantees and transaction model as
previous protocols.

### Publications

- **Optimistic Replicated Two-Phase Commit.**   
Irene Zhang, Naveen Kr. Sharma, Adriana Szekeres, Arvind Krishnamurthy, Dan R. K. Ports.   
In submission.