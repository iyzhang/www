---
layout: post
shortnews: false
title: The Post-Software Datacenter Era
---

The death of Moore's law and the attendant growth in hardware speeds
has long been a trend in datacenters.  Researchers, including myself,
have been working on new datacenter systems for this world for almost
a decade [1, 2].  With Demikernel, we have built the first
fully-featured nanosecond-scale OS: 100ns to get a packet from the NIC
to the app in Demikernel's DPDK TCP stack, processing 1 million
packets per second per core, etc [3].  We achieve these low latencies
by rebuilding everything from scratch and carefully engineering for
cycle counts at every step.

While we can continue to carefully design systems using the least
number of cycles, there will be some lower bound to how far we can
take it. Thus, we must start thinking of the world beyond software
that consumes CPU cycles and start looking to hardware for solutions.
In the next decade, datacenter developers cannot continue to focus on
software running on general-purpose CPUs but must re-orient themselves
towards specialized hardware.  Due to its scale, any datacenter
workload can be considered general-purpose enough to deserve its own
specialized hardware.  We are already seeing this for our most
compute-intensive tasks, like machine learning, but in the future, we
must consider hardware offload for all.

### Demikernel and Kernel-bypass For All
Kernel-bypass is the classic example of offloading a common workload
to hardware.  Every application goes through the OS kernel, therefore
it makes an excellent target for encoding into hardware.  While
kernel-bypass has been around for a long time, it has never been as
urgently needed as now.  Unfortunately, as a research community, we've
put very little thought into how to make kernel-bypass actually usable
for most applications.  RDMA, DPDK and previous hardware were all
largely designed for specialized, high-performance applications,
making them difficult to use and deploy.  With Demikernel, our aim was
to bring the principles of the OS kernel to kernel-bypass, including
high-level APIs and portability, to make kernel-bypass accessible to
all datacenter applications and developers.

### What's next? Hardware Offload for Datacenter OSes
Demikernel is a software solution to a hardware problem: the hardware
is difficult to use, so we use some software to raise the level of
abstraction to the point where most applications can actually leverage
the hardware -- in the minimal number of CPU cycles.  While this
solution works, it does not address the more general problem which is:
what should a hardware OS kernel look like?

Fortunately, the path of software design to hardware support is a
well-trodden one: we had software MMUs before hardware ones and
software virtualization before hardware virtualization.  Software
gives systems designers the ability to flexibly design abstractions
and architectures until they are satisfied enough to bake it into
hardware.  Here are some open research questions that need to be
explored before we get to a Demikernel hardware layer:

* Networking: What protocol should we support in the datacenter? RDMA
  and TCP are not the answers but there as been recent work on better
  alternatives, like Homa. We likely need different protocols for
  datacenter internal and external workloads.
  
* Scheduling: How do we mediate between application demands on the
  CPU, memory and I/O bandwidth in hardware. Existing hardware
  resource isolation is primitive and there are no hardware mechanisms
  for scheduling CPU cycles (interrupts are too clunky) or memory.
  
* Security and isolation: Existing hardware isolation mechanisms --
  page tables, processes -- are far to coarse-grained to be useful.
  Demikernel uses fine-grained co-routines for context switches but
  it's not clear that is the right hardware solution (and we might
  have to go back to segments for memory isolation).
  
### Hardware Offload for All
The datacenter operating system is simply a starting point for
hardware offload of common workloads.  For example, we've written
recently about how to achieve zero-copy serialization using existing
hardware features [4], but the hardware could be much better designed
for serialization and deserialization. From there, it is simply a
matter of going up the stack to JSON parsing, the REST API and other
common frameworks for datacenter workloads.  Eventually, the CPU may
only serve to direct and schedule offload devices or become an
unnecessary vestige of an earlier time in datacenter history.  For
resource management and scheduling, datacenters will still need to
dynamically shift hardware to serving workloads but that could be done
with programmable hardware or minimal CPU usage.  When every
datacenter workload runs on thousands of machines, using a
general-purpose processing unit to run software just no longer makes
sense.

### Citations
1. Peter, Simon, Jialin Li, Irene Zhang, Dan RK Ports, Doug Woos,
   Arvind Krishnamurthy, Thomas Anderson, and Timothy
   Roscoe. "Arrakis: The Operating System is the Control Plane." ACM
   Transactions on Computer Systems (TOCS). Nov 2015.

2. Belay, Adam, George Prekas, Ana Klimovic, Samuel Grossman, Christos
   Kozyrakis, and Edouard Bugnion. "IX: A Protected Dataplane
   Operating System for High Throughput and Low Latency." In
   Proceedings of the 11th USENIX Symposium on Operating Systems
   Design and Implementation (OSDI 14). Oct 2014.
   
3. Zhang, Irene, Amanda Raybuck, Pratyush Patel, Kirk Olynyk, Jacob
   Nelson, Omar S. Navarro Leija, Ashlie Martinez et al. "The
   Demikernel Datapath OS Architecture for Microsecond-scale
   Datacenter Systems." In Proceedings of the ACM SIGOPS 28th
   Symposium on Operating Systems Principles. Oct 2021.
   
4. Raghavan, Deepti, Philip Levis, Matei Zaharia, and Irene
   Zhang. "Breakfast of Champions: Towards Zero-Copy Serialization
   with NIC Scatter-gather." In Proceedings of the Workshop on Hot
   Topics in Operating Systems. June 2021.