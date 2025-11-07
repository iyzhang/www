---
layout: page
title: Publications
years: [2025,2024,2023,2022,2021, 2020, 2019, 2018, 2017, 2016, 2015, 2014, 2013, 2011, 2010, 2009]
---


{% for y in page.years %}
<h2 class="year">{{y}}</h2>
  {% bibliography -f pubs -q @*[year={{y}}]* %}
{% endfor %}

