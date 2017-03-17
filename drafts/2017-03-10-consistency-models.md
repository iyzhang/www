---
layout: post
shortnews: false
photo: img/consistency-key.jpg
title: Making Consistency More Consistent
link: papers/consistency-models.pdf
---

While talking to people from different areas during my interview
trips, I discovered that there is almost universal confusion about
consistency (and coherence and isolation) models across research areas
(i.e., systems, architecture, databases). As a result, *many* people
have asked me whether there is a unified model for consistency.
Conveniently, I developed such a model for my generals exam, which I
summarize in this blog post and link at the bottom as a tech report.

> **TL;DR:** Consistency models constrain how the order of operations
> can deviate from the *ideal system model* (i.e., a single threaded
> and unreplicated system).  The potential ways that a system can
> deviate from the ideal model depend on the *system model.* Existing
> consistency models are under-specified because they assume a given
> system model and then constrain the possible deviations from that
> system model.  A uniform consistency model must take into account
> the system model and where the system's guarantees lie between that
> system model and the ideal system.

### Background

Previously, I have written about how
[consistency should be more consistent]({{ site.base
}}/blog/2015/02/01/consistency.html) and why
[consistency is so inconsistent]({{ site.base
}}/blog/2016/01/11/consistency.html).  To sum up these posts,
coherence, consistency and isolation all relate storage
systems/memory/databases to an ideal system:

> **Ideal System Model:** a system that executes operations one at a
> time in the order in which they arrive on a single copy of the
> stored data.

An ideal database model includes a further assumption that operations
grouped together in a single transaction appear as if they arrived and
executed together when the transaction commits.

In the past, coherence, consistency and isolation models were largely
described by *anomalies* that are forbidden in the model:

> **Anomaly:** an execution of storage operations that is not possible
> in the ideal system model

Given this ideal system model, coherence, consistency and isolation
models govern the types of anomolies that a storage system can expose:

> **Coherence:** Anomalies caused by operations on a single item, where
>  every operation accesses/modifies the entire item.

> **Consistency:** Anomalies caused by operations on a set of items,
>  where every operation accesses/modifies a subset of the item set.

> **Isolation:** Anomalies cause by operations on a set of items, where
>  every transactions group accesses/modifies a subset of the item set.

However, not every system model can produce every type of anomaly.
Coherence, consistency and isolation models are specified *with
respect to the system model.* As a result, these models are
*under-specified* without their system models and cannot be compared.

> { All potential orderings } - { Potential orderings in the system
> model} - { Potential ordering allowed by the consistency model } = {
> Potential orderings from system }

### A Consistent Consistency Model
