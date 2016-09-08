---
layout: default
title: Code
---

I publish all of my code to [github](https://github.com/iyzhang) but
currently develop on UW's
[gitlab](https://gitlab.cs.washington.edu/u/iyzhang) instance. I keep
the two synchronized, so feel free to download and fork from whichever
you prefer.

#### TAPIR
The implementation of TAPIR along with a few conventional protocols,
including two-phase commit with optimistic concurrency control and
strict two phase locking atop viewstamp replication and an
implementation of the Spanner protocol.  This repo also includes
bindings for YCSB-t and an implementation of the Retwis Twitter
benchmark from our SOSP paper.

* [TAPIR@github](https://github.com/UWSysLab/tapir)
* [TAPIR@gitlab](https://github.com/UWSysLab/tapir)

#### Diamond

The implementation of Diamond along with language-bindings for C++,
Java and Python and many example applications including a simple
terminal-based multi-player game, a multi-player Scrabble game, a
note-taking app and a Twitter clone.

* [Diamond@github](https://github.com/UWSysLab/diamond)
* [Diamond@gitlab](https://gitlab.cs.washington.edu/syslab/diamond-src)

#### Sapphire

The implementation of Sapphire along with deployment managers for
client-side caching, code offloading, state machine replication and
more. Also, includes three Sapphire applications: a multi-player word
game, a to-do list app and a Twitter clone.

* [Sapphire@github](https://github.com/UWSysLab/Sapphire)
