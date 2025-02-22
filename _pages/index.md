---
layout: page
title: Home
id: home
permalink: /
---

{% assign readme_note = site.notes | where: "title", "Readme" | first %}
{% if readme_note %}
  <div>
    {{ readme_note.content }}
  </div>
{% else %}
  <p><strong>README note not found.</strong></p>
{% endif %}

<style>
  .wrapper {
    max-width: 46em;
  }
</style>
