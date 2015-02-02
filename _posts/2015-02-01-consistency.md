---
layout: post
shortnews: false
title: Consistency should be more consistent!
---

I hadn't thought that I would blog, but since Jekyll makes it so easy,
I'm feeling like I need to give it a whirl. No promises about how
often this will happen, of course, because the virtual world is
littered with dead blogs of the well-intentioned.

I thought I would try to clear up, if only for myself, the terminology
surrounding consistency and isolation, or, more specifically,
*operation and transaction ordering*. Of course, there have been a large
number of discussions and blog posts that are a rabbit-hole of the
illuminating and horrifying.

I've been thinking and talking about this stuff a lot lately because I
am TA'ing UW's [undergraduate distributed systems
class](http://courses.cs.washington.edu/courses/cse452/) and working on [TAPIR]({{ site.base }}/research/tapir/), where we are
grappling with how to explain providing consistency with inconsistency
(with any consistency). Of course, this also serves as dinner
conversation for me and [Dan](http://drkp.net), so it is good that we
have the right words to use, at least until we have a few glasses of
wine.

### Consistency vs. Isolation

Before we dive into the different guarantees provided by distributed
systems and databases, I will try to define the guarantees themselves.

**Consistency**, as in the CAP theorem, defines how copies of a single
data item relate to each other. Do they appear as if they are a single
copy (to an application or an external observer)? Or do they have some
other apparent behavior (i.e., after some period of time they converge
to a single copy)?

**Isolation**, in ACID, defines the how transactions on multiple items
relate to each other. Do transactions appear as if they each ran
sequentially on a single copy of the database?  Or some other behavior
(i.e., each transaction ran on its own snapshot of the database)?

Essentially, a storage system's consistency level dictates how
operations for single data items have to be ordered, and its isolation
level dictates how transactions over many items have to be ordered.

### What about the C in ACID?

Unlike isolation and CAP consistency, the ACID type of consistency is
more of an application-specific invariant (e.g., bank account balance
must be greater than 0) than a system property. Enforcing this type of
consistency requires that the application, assuming some A, I & D
guarantees from the database, does not violate its own invariants
(e.g., the application checks the bank account balance before
withdrawing too much).

I've been reading some great old database papers recommended by Phil
Bernstein, and Thomas defines, in [1], *internal consistency* as the C
in ACID and *mutual consistency* as the C in CAP (both of which should
not be confused with external consistency!), which I think is a great
way to differentiate the two.

As Thomas says,
> The notion of internal consistency is somewhat more difficult to
define precisely. It concerns the preservation of invariant relations
that exist among items within a database. As such, internal
consistency is related to the interpretation or semantics of items in
the database. Therefore, most of the responsibility for the internal
consistency of a database must rest with the application processes
which update it.

Support for this kind of consistency is available in modern database
systems, but rarely discussed.  When people are talking about the
consistency of transactional storage systems like Spanner, **they are
almost always talking about isolation.**

### Linearizability, Serializability and Others

OK, now back to how we order operations and transactions in a
transactional storage system.  There are so many different types of
ordering guarantees, so it is a huge topic. I will primarily talk
about the strongest variants because these are the best defined.

**Sequential (or serializable) consistency** ensures that the same
operations are applied in the same order to every copy of the data
item.

**Serializable isolation** ensures that transactions execute as if
they were executing one at a time on a single copy of the database.

**Linearizable consistency** ensures that the same operations are
applied in the same order to every copy of the data item and that the
order reflects the order in which the operations *appear* to execute
to an external observer (like the application).

**Strict serializable isolation** ensures that transactions execute as
if they were executing one at a time on a single copy of the database
and that the order matches the order in which the transactions
*appear* to execute to an external observer (like the application).

There has been much discussion of externally consistent (or
linearizable) transactions since the publication of Google's Spanner
system [2]. Traditionally, the guarantees provided by Spanner and
applied to transactions would be called strict serializability.
Practically, it doesn't matter; linearizability is just strict
serializability for single items.

As many people have observed, we just ended up with different words
for the same thing because two research communities separately
developed the terminology. Now the two communities have collided (not
literally but that would be fun!), as distributed transactional
storage systems require both consistency and isolation guarantees, and
everyone is thoroughly confused.

### Strong isolation without strong consistency

It might seem that, despite the database and systems communities
inability to coordinate, consistency and isolation are tied
together. If a storage system has one level of isolation (e.g., strict
serializability) for transactions, then it typically replicates single
data items with a matching level of consistency (e.g.,
linearizability).  Or put another way, if you want a strict serial
ordering of transactions, you need to start with a strict serial
ordering of operations, right? (See why this is confusing?)

Interestingly (to me anyway), this is not necessary. In the [TAPIR
project]({{ site.base }}/research/tapir/), we are designing a new
protocol to provide strong isolation guarantees without any
consistency guarantees. Our observation is that there is no need to
enforce a strict serial ordering of transactions *and* operations in a
transactional storage system that uses replication. And this has all
kinds of benefits, like letting us get away without using an expensive
protocol like Paxos.

### Summary

Explaining consistency is hard and it doesn't help that we don't have
consistent terminology! Trying to convince people that they might want
strong isolation but not need consistency (in CAP) and probably don't
care about that other kind of consistency (in ACID) is really hard.

### References

[1] R. H. Thomas. [A majority consensus approach to concurrency
control for multiple copy
databases](http://dl.acm.org/citation.cfm?id=320076). *ACM Transactions
on Database Systems*, 4(2):180–209, June 1979.

[2] J. C. Corbett et al. [Spanner: Google’s globally-distributed
database](http://research.google.com/archive/spanner.html). In
*Proceedings of OSDI*, 2012.
