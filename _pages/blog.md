---
layout: page
title: Blog
permalink: /blog/index.html
---

<ul class="news list-unstyled">
{% for post in site.posts %}
    {% if post.shortnews == false %}
        <li class="bloglink">
            <span class="date"><b>{{ post.date | date_to_long_string }}</b></span>
            <a href="{{ post.url }}">{{ post.title }}</a><br />
        </li>
    {% endif %}
{% endfor %}
</ul>
