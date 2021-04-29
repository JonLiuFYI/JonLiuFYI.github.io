---
layout: page
title: Work Experience
---

{% assign jobs = site.experience | reverse %}
{% for job in jobs %}
<div class="grid experience-entry">
  <div class="cell cell--12 cell--md-9"><strong>
    {{ job.position }}
  </strong></div>
  <div class="cell cell--12 cell--md-3"><strong>
    {{ job.daterange }}
  </strong></div>
  <div class="cell cell--12 employer">
    {{ job.employer }}
  </div>
  <div class="cell cell--12">
    {{ job.content }}
  </div>
</div>
{% endfor %}
