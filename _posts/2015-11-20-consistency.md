---
layout: post
shortnews: false
title: Why Researchers Are So Inconsistent About Consistency
---

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
explaining why it is so hard to compare consistency models from
different research areas.

### Why can't researchers agree?

> All consistency models are *underspecified.*
Different consistency
models from different research areas are underspecified in different
ways, making them impossible to compare.


Consistency models constrain the ordering of operations executed
concurrently and/or the ordering operations at a set of replicas.  We
can define an *anomoly* as a sequence of operations that is not
possible from a single-threaded, unreplicated system. The system model
dictates which anomolies are possible, while the consistency model
dictates which (of the possible) anomolies the system can reveal to
the application. As a result, all consistency models are
*underspecified* because they implicitly assume a system model.
Different research areas assume different system models; thus, their
consistency models are underspecified in different ways, making them
impossible to compare.


# Architecture assumes a single cache per client 

some very old architectures don't even have concurrency because they h
basically like binding a client to a replica in a distributed system
no need to enforce ordering from one client
no things like read your own writes

# distributed systems assume clients can access different replicas

need coordination to get things like read your own writes

# Database isolation assumes no copies but interleaving
no copies, so clients never see different orderings. the only concern
is interleaving

# Replicated Databases like Spanner can have both inconsistent ordering and interleaving
this is super confusing because both interleaving and multiple orders
are possible

