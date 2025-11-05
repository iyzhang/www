---
layout: page
title: About
---

  <div class="col-xs-3">
    <img src="img/me-2023.jpeg" alt="Photo of me"
         class="img-circle img-responsive">
  </div>
  <div class="col-xs-9">
    <h2>I am a researcher
      at <a href="https://www.microsoft.com/en-us/research/">Microsoft
      Research</a>. 
    </h2>
  </div>

## My research focuses on datacenter operating systems and distributed systems.

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

## Contact

<ul class="fa-ul">
  <li><i class="fa-li fa fa-envelope"></i>irene.zhang
    @microsoft.com</li>
  <li><i class="fa-li fa fa-building"></i>Building 99</li>
  <li><i class="fa-li fa fa-location-arrow"></i>14820 NE
    36th St.
    <br class="hidden-xs"> Redmond, WA 98052</li>
  <li><i class="fa-li fa
	        fa-github-alt"></i><a href="https://github.com/iyzhang/">iyzhang@github</a></li>
  <li><i class="fa-li fa-brands fa-mastodon"></i><a href="https://discuss.systems/@irene">irene@discuss.systems</a></li>
</ul>
