---
layout: default
title: Neuigkeiten
---

<h1 class="orange-blink">Neuigkeiten!</h1>

---

<div class="posts">
  {% for post in site.posts %}
    <article class="post">
      <h3>{{ post.title }}</h3>
      <div class="date">
        <p>Veröffentlicht am {{ post.date | date: "%d.%m.%Y" }}. <a href="{{ site.baseurl }}{{ post.url }}" class="read-more">Hier Lesen.</a></p>
      </div>
    </article>
    <hr>
  {% endfor %}
</div>

{% if site.posts.size == 0 %}
  <p>Zurzeit gibt es keine Neuigkeiten. Bitte schauen Sie später wieder vorbei.</p>
{% endif %}
