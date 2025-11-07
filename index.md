---
layout: page
title: About
notitle: true
---
<div class="row">
  <div class="col-sm-3">
    <img src="img/me-2023.jpeg" alt="Photo of me"
         class="rounded-circle img-responsive">
  </div>
  <div class="col">
    <h1>I am a researcher
      at <a href="https://www.microsoft.com/en-us/research/">Microsoft
      Research</a>.</h1>
  </div>
  </div>


   <h2> My research focuses on datacenter operating systems and distributed systems.</h2>

I am especially interested in making it easier to build
microsecond-scale datacenter systems by leveraging new datacenter
hardware technologies, like kernel-bypass, RDMA and programmable
devices.  My most recent work has been on
the <a href="//github.com/microsoft/demikernel">Demikernel datapath
OS</a> and related projects.  A <a href="bio.txt">bio</a> and
<a href="abstract.txt">talk abstract</a> for my most recent work is
      available.

I completed my PhD in 2017 at
the <a href="//www.cs.washington.edu">University of Washington</a>,
where my research focused on distributed systems that span mobile
devices and cloud servers.  My thesis work received the ACM SIGOPS
Dennis Ritchie doctoral dissertation award and the UW Allen School
William Chan doctoral dissertion award.  Before my PhD, I received my
S.B. and M.Eng.  from <a href="http://www.mit.edu">MIT</a> and worked
for 3 years in the virtual machine monitor group
at <a href="https://www.vmware.com">VMware</a>.
  
I was born in <a href="http://www.ebeijing.gov.cn/">Beijing, China</a>
but spent most of my time growing up
in <a href="http://en.wikipedia.org/wiki/Columbus,_Indiana">Columbus,
Indiana</a>. <a href="http://www.drkp.net">My husband</a> and I like
to cook, travel and occasionally do computer science together.
 
## News
<ul class="news list">
{% assign posts_list = site.posts %}
{% for post in posts_list limit: 5%}
<li class="bloglink">
  <span class="date">{{ post.date | date_to_long_string }}</span>
  {% if post.shortnews == true %}
  {{ post.content | markdownify }}
  {% else %}
  <p><b>Blog Post: </b><a href="{{ post.url}}">{{ post.title }}</a></p>
  {% endif %}
</li>
{% endfor %}
</ul>
