---
layout: portal
title: Qué hacemos
nav_exclude: true
description: >-
  Conectamos sistemas, ponemos a la persona al centro, construimos capacidades
  nacionales y definimos estándares para la salud de Chile.
---

<section class="page-hero">
  <div class="wrap">
    <p class="kicker">Qué hacemos</p>
    <h1>Que la información de salud llegue donde se necesita</h1>
    <p class="page-hero__lead">
      El Ministerio de Salud impulsa una estrategia de interoperabilidad para
      todo el sector: un sistema más integrado, donde el flujo de información
      mantiene a la persona como eje central de la atención.
    </p>
  </div>
</section>

<section class="band">
  <div class="wrap">
    <div class="cap-list">
      {%- for cap in site.data.capabilities -%}
      <article class="cap-row" id="{{ cap.id }}">
        <div class="cap-row__mark">{{ forloop.index }}</div>
        <div class="cap-row__body">
          <h2>{{ cap.title }}</h2>
          <p class="cap-row__plain">{{ cap.plain }}</p>
          <p class="cap-row__detail">{{ cap.detail }}</p>
        </div>
      </article>
      {%- endfor -%}
    </div>
  </div>
</section>

<section class="band band--tint next-band">
  <div class="wrap">
    <h2>¿Cómo se sostiene esto?</h2>
    <p>
      Con una arquitectura nacional que define el marco de acuerdo mínimo para
      el intercambio de información, y con componentes comunes que todo el
      sistema de salud puede reutilizar.
    </p>
    <div class="next-links">
      <a class="btn btn--primary" href="{{ '/arquitectura.html' | relative_url }}">Ver la arquitectura</a>
      <a class="btn btn--ghost" href="{{ '/componentes.html' | relative_url }}">Ver los componentes</a>
    </div>
  </div>
</section>
