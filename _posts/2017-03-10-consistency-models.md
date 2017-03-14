---
layout: post
shortnews: false
photo: img/consistency-key.jpg
title: Making Consistency Consistent
link: papers/consistency-models.pdf
---

During my interview trips, I have discovered that there is almost
universal confusion from researchers about consistency models in
different areas. As a result, *many* people have asked whether there
is a unified model, which, conveniently, is what I developed for my
generals exam. I decided to release my generals write-up as a
technical report and summarize my unified consistency model as a blog
post.

Previously, I have written about how
[consistency should be more consistent](blog/2015/02/01/consistency.html)
and
[why researchers are so inconsistent about consistency](blog/2016/01/11/consistency.html).
To sum up these posts, coherence, consistency and isolation all model
an ideal system:

> **Ideal System Model:** a system that executes storage operations in
> the order in which they arrive to a single copy of the stored data.

An ideal database model includes a further assumption that operations
grouped together in a single transaction appear as if they arrived and
executed together when the transaction commits.

In the past, coherence, consistency and isolation models were largely
described by *anomolies* that are forbidden in the model:

> **Anomoly:** a sequence of storage operations that the system
> executes in a way that deviates from the ideal system model

Given this ideal system model, coherence, consistency and isolation
models govern what anomolies a storage system can expose:

**Coherence:** Rules governing operations on a single item, where
  every operation accesses/modifies the entire item.

**Consistency:** Rules governing operations on a set of items, where
  every operation accesses/modifies a subset of the item set.

**Isolation:** Rules governing transactional groups of operations on a
  set of items, where every group accesses/modifies a subset of the
  item set.

