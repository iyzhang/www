---
layout: page
title: Blog
---

<dl class="row">
{% for post in site.posts %}
    {% if post.shortnews == false %}
        <dt class="col-sm-3">
            {{ post.date | date_to_long_string }}</dt>
        <dd class="col-sm-9">
            <a href="{{ post.url }}">{{ post.title }}</a>
        </dd>
    {% endif %}
{% endfor %}
</dl>
