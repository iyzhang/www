---
layout: post
shortnews: false
title: Why Researchers Are So Inconsistent About Consistency
---

> **TL;DR** A consistency model only makes sense in the context of a
> particular system model. Each research area assumes a different system
> model, so they all ended up with different consistency models that
> can't be compared. Doh!

For my generals exam, I did a literature review of models for
operation ordering from architecture, systems and database
communities. I read a cross-section of papers that most people
probably do not look at together, which gave me some interesting
insights into these models.

What do I mean by models for operation ordering? In particular, I am
talking about models that define guarantees to programmers about how
operations to their data will be executed (or appear to be executed).
These are usually termed consistency models but also coherence models
and isolation models.  Due to the sheer number of blog posts about
these models, there is obviously a lot of interest as well as
confusion on this topic.

In this post, I will attempt to clear up some of this confusion by
explaining *why it is so hard to compare consistency models from
different research areas* and why there is so much different and
confusing terminology.

### Why do we use consistency models?

Systems like processor cache coherence mechanisms, database management
systems and distributed storage systems hide a very complex set of
moving parts from application programmers. Consistency models detail
exactly which parts are hidden and which parts are not.

More specifically, consistency models detail the execution of
operations on application data. We can define an *anomoly* as a
sequence of operations that is not possible from a single-threaded,
unreplicated system. Given this definition, the system model dictates
which anomolies are *possible* (due to the various replicas and
concurrently executing operations), while the consistency model
dictates which (of the possible) anomolies the system hides from the
application. This allows the application programmer to reason about
how to use the system to handle their data.

### Why can't researchers agree?

Without a system model, consistency models are
*underspecified*. Basically, you need to know all of the parts of the
system before talking about which ones are hidden and which ones are
not. Worse, because system models from different research areas are
different, consistency models from each research area are
underspecified in different ways, making them impossible to compare.
It doesn't help that research techniques are constantly crossing over
to other communities that re-purpose them (i.e., linearizability for
transactions?).

To give an example, processor consistency models assume that each
processor always reads from its own cache (of course!). In contrast,
eventual consistency models were designed for distributed systems
where application clients might read at different replicas (because a
replica is not available due to a network partition). As a result,
models like eventual consistency's session ordering are completely
meaningless in an architecture system model.

### What can I do about this?

It helps when trying to understand a new consistency model to
understand the system model first. For example, are operations in the
system assumed to be atomic?  Are there replicas in the system? Is
there concurrency? Do clients always access the same replica?

The nice thing is that strong consistency models are basically the
same for all system models because they hide all of the moving parts
from the application and make the system appear as if it is running
just one operation at a time on one replica. Unfortunately, this means
that weak consistency models tend to be confusing no matter what we do
because they reveal parts of the inner workings of the system to the
application programmer and force him or her to deal with it.

### Conclusion

At first glance, it might seems like researchers are just trying to
make things hard for anyone that hasn't spent years learning their
language (like the cool kids on the playground that you could hang out
with if you could only learn their lingo). But really, researchers in
each area just get so accustomed to their system model that they
couldn't imagine why anyone would talk about something else! And maybe
we should all use strong consistency because that's the only thing
that researchers can agree on.
