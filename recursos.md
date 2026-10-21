---
layout: portal
title: Recursos
nav_exclude: true
description: >-
  Guías de Implementación FHIR, especificaciones, estándares y documentación
  técnica para implementar la interoperabilidad en salud.
---

<section class="hero">
  <div class="wrap">
    <p class="hero__eyebrow">Recursos</p>
    <h2>Todo lo técnico, en un solo lugar</h2>
    <p class="page">
      Guías de Implementación, especificación de la arquitectura, estándares y
      accesos para equipos técnicos e implementadores.
    </p>
  </div>
</section>

<section class="band">
  <div class="wrap">
    <div class="res-grid">
      {%- for r in site.data.resources -%}
      <article class="res">
        <h2>{{ r.title }}</h2>
        <p>{{ r.desc }}</p>
        <ul>
          {%- for l in r.links -%}
          <li>
            <a href="{% if l.ext %}{{ l.url }}{% else %}{{ l.url | relative_url }}{% endif %}"
               {% if l.ext %}target="_blank" rel="noopener"{% endif %}>{{ l.label }}{% if l.ext %} ↗{% endif %}</a>
          </li>
          {%- endfor -%}
        </ul>
      </article>
      {%- endfor -%}
    </div>
  </div>
</section>

<section class="band next-band">
  <div class="wrap wrap--narrow">
    <p class="kicker">Retroalimentación</p>
    <h2>¿Implementaste una guía? Cuéntanos cómo te fue</h2>
    <p>
      Reporta lo que funciona, errores, ambigüedades o sugerencias de cada Guía
      de Implementación. Los comentarios quedan registrados y los revisa el
      equipo responsable.
    </p>
    <a class="btn btn--primary" href="{{ '/comentarios.html' | relative_url }}">Comentar una guía</a>
  </div>
</section>

<section class="band band--tint">
  <div class="wrap wrap--narrow">
    <h2>Documentación técnica navegable</h2>
    <p>
      La especificación completa —con su índice lateral y buscador— vive en la
      sección de documentación técnica.
    </p>
    <a class="btn btn--primary" href="{{ '/docs/especificacion-de-la-arquitectura' | relative_url }}">Abrir la documentación</a>
  </div>
</section>
