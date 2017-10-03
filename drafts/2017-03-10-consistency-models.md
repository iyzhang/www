---
layout: post
shortnews: false
photo: img/consistency-key.jpg
title: Making Consistency More Consistent (Part 1): How to talk to
friends and family members in other areas of computer science
about consistency.
link: papers/consistency-models.pdf
---

I have written in the past about how
[consistency should be more consistent](blog/2015/02/01/consistency.html)
and
[why researchers are so inconsistent about consistency](blog/2016/01/11/consistency.html).
During my interview trips, I have discovered that everyone is just as
confused as I was! In an effort to clear up this confusion (and avoid
writing my thesis), I will be presenting a series of blog posts on the
unified consistency models that I developed for my generals exam to
help me understand memory models, weak consistency models and
isolation models.

To begin with, I will explain how to compare models across different
areas of computer science.  All of these models begin with an ideal
system model, which is very easy to understand:

> **Ideal System Model:** a system that executes operations in the
> order in which they arrive to a single copy of the data.

This ideal system model applies to memory operations on memory
locations, storage operations in a key/value store or database queries
on database tuples.

As a result, we developed coherence, consistency and isolation
models.  These 
were largely described by *anomolies* that are forbidden in the model:

> **Anomoly:** a sequence of storage operations that the system
> executes in a way that deviates from the ideal system model

Given this ideal system model, coherence, consistency and isolation
models govern what anomolies a storage system can expose:

**Coherence:** Rules governing operations on copies of a single item,
where every operation reads/writes the entire item.

**Consistency:** Rules governing operations on copies of a set of
items, where every operation accesses/modifies a subset of the item
set.

**Isolation:** Rules governing transactional groups of operations on a
set of items, where every group accesses/modifies a subset of the
item set.

The problem with all of these models though is that the model is not
the only thing that governs what anomolies a system can expose.  The
system model is also an important factor is what kind of anomolies are
*possible* in the system. For example, do copies exist in the system?
Does each copy belong to a single client or are they concurrently
accessed by many clients at the same time?

Unfortunately, this means that all of our
models are *under-specified* without also knowing the system. This is
the underlying mismatch in comparing models across the architecture,
systems and database fields.
