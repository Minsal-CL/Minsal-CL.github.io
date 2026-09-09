---
layout: portal
title: Portal de Interoperabilidad en Salud
nav_exclude: true
description: >-
  Hacemos posible que la información de salud acompañe a las personas, sin
  importar dónde se atiendan. Portal de Interoperabilidad del Ministerio de
  Salud de Chile.
---

<section class="hero">
  <div class="wrap">
    <p class="hero__eyebrow">Ministerio de Salud · Chile</p>
    <h1>Interoperabilidad para conectar la salud de Chile</h1>
    <p class="hero__lead">
      Hacemos posible que la información de salud pueda acompañar a las
      personas, sin importar dónde se atiendan.
    </p>
    <div class="hero__actions">
      <a class="btn btn--primary" href="{{ '/que-hacemos.html' | relative_url }}">Conocer qué hacemos</a>
      <a class="btn btn--ghost" href="{{ '/arquitectura.html' | relative_url }}">Explorar la arquitectura</a>
    </div>
  </div>
</section>

<section class="band">
  <div class="wrap">
    <p class="kicker">Según tu interés</p>
    <div class="routes">
      <a class="route" href="{{ '/que-hacemos.html' | relative_url }}">
        <b>Autoridades y equipos de salud</b>
        <span>Qué resolvemos y por qué importa →</span>
      </a>
      <a class="route" href="{{ '/arquitectura.html' | relative_url }}">
        <b>Arquitectos y equipos técnicos</b>
        <span>Cómo funciona la arquitectura nacional →</span>
      </a>
      <a class="route" href="{{ '/recursos.html' | relative_url }}">
        <b>Desarrolladores e implementadores</b>
        <span>Guías FHIR, estándares y accesos →</span>
      </a>
    </div>
  </div>
</section>

<section class="band band--tint">
  <div class="wrap">
    <header class="sec-head">
      <p class="kicker">Qué hacemos</p>
      <h2>Cuatro capacidades para un sistema de salud conectado</h2>
    </header>
    <div class="cap-grid">
      {%- for cap in site.data.capabilities -%}
      <div class="cap">
        <h3>{{ cap.title }}</h3>
        <p>{{ cap.plain }}</p>
      </div>
      {%- endfor -%}
    </div>
    <p class="sec-more"><a class="lnk" href="{{ '/que-hacemos.html' | relative_url }}">Ver en detalle →</a></p>
  </div>
</section>

<section class="band">
  <div class="wrap">
    <header class="sec-head">
      <p class="kicker">Cómo lo hacemos</p>
      <h2>El ecosistema de interoperabilidad</h2>
      <p class="sec-intro">
        Las personas se atienden en muchos sistemas distintos. Una arquitectura
        nacional —con componentes comunes y estándares compartidos— los conecta,
        y sobre ella se construyen los proyectos por proceso clínico.
      </p>
    </header>
    {% include portal/ecosystem.html %}
  </div>
</section>

<section class="band band--tint">
  <div class="wrap">
    <header class="sec-head">
      <p class="kicker">Proyectos</p>
      <h2>Procesos clínicos interoperables en marcha</h2>
    </header>
    <div class="mini-grid">
      {%- for p in site.data.projects -%}
      <a class="mini" href="{{ '/proyectos.html' | relative_url }}#{{ p.id }}">
        {% include portal/badge.html status=p.estado %}
        <b>{{ p.title }}</b>
        <span>{{ p.description }}</span>
      </a>
      {%- endfor -%}
    </div>
    <p class="sec-more"><a class="lnk" href="{{ '/proyectos.html' | relative_url }}">Ver el portafolio completo →</a></p>
  </div>
</section>

<section class="band cta-band">
  <div class="wrap">
    <h2>¿Vas a implementar?</h2>
    <p>Las Guías de Implementación FHIR, los estándares y los accesos están en Recursos.</p>
    <a class="btn btn--primary" href="{{ '/recursos.html' | relative_url }}">Ir a Recursos</a>
  </div>
</section>
