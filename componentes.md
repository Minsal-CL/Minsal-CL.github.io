---
layout: portal
title: Componentes
nav_exclude: true
description: >-
  Catálogo de los componentes comunes de la Arquitectura Nacional de
  Interoperabilidad: qué resuelven, su estado y los proyectos que los usan.
---

<section class="hero">
  <div class="wrap">
    <p class="hero__eyebrow">Componentes</p>
    <h2>Los servicios comunes de la interoperabilidad</h2>
    <p class="page">
      Piezas reutilizables sobre las que se construye cada proyecto. Cada una
      resuelve un problema concreto y se conecta con estándares y proyectos.
    </p>
  </div>
</section>

<section class="band">
  <div class="wrap">
    <div class="ccard-grid">
      {%- for c in site.data.components -%}
        {% include portal/component_card.html c=c %}
      {%- endfor -%}
    </div>
    <p class="disclaimer">
      El estado de cada componente se infiere de los artefactos publicados
      (Guías de Implementación, servicios en línea) y está sujeto a validación
      del Ministerio de Salud.
    </p>
  </div>
</section>

<section class="band band--tint">
  <div class="wrap wrap--narrow">
    <h2>Cómo se relacionan</h2>
    <p>
      Un mismo componente sirve a varios proyectos. Por ejemplo, el
      <strong>Índice Maestro de Pacientes</strong> es la base para identificar a
      la persona en la Receta Electrónica, en Tiempos de Espera y en cualquier
      proceso clínico interoperable. Por eso los cambios en un componente se
      coordinan a nivel nacional y no proyecto por proyecto.
    </p>
    <a class="lnk" href="{{ '/proyectos.html' | relative_url }}">Ver los proyectos →</a>
  </div>
</section>
