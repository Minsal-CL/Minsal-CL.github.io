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
    <h2>Interoperabilidad para conectar la salud de Chile</h2>
    <p class="page">
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
      <h2>Proyectos Priorizados 2026</h2>
    </header>
    <div class="doc-grid">
      <div class="doc-card">
        <span class="doc-card__label">Receta electrónica</span>
        <strong>Prescripción digital, segura y verificable</strong>
        <span>Permite emitir y validar recetas en formato estándar, reduciendo errores de transcripción y facilitando su dispensación en cualquier punto de la red.</span>
      </div>
      <div class="doc-card">
        <span class="doc-card__label">Historia clínica compartida</span>
        <strong>Información clínica disponible donde se atiende la persona</strong>
        <span>Da acceso a un resumen clínico interoperable entre establecimientos, favoreciendo la continuidad del cuidado y decisiones basadas en información completa.</span>
      </div>
      <div class="doc-card">
        <span class="doc-card__label">Trazabilidad de medicamentos</span>
        <strong>Seguimiento de la receta a la dispensación</strong>
        <span>Vincula prescripción, dispensación y lote con terminología estandarizada, fortaleciendo la seguridad del paciente y la gestión farmacéutica.</span>
      </div>
    </div>
  </div>
</section>



<section class="band fb-band">
  <div class="wrap fb-band__inner">
    <div>
      <p class="kicker">Tu experiencia cuenta</p>
      <h2>¿Implementaste una Guía? Cuéntanos qué funciona y qué no</h2>
      <p>Errores, ambigüedades, sugerencias o lo que funcionó bien: cada comentario lo revisa el equipo responsable de la guía.</p>
    </div>
    <a class="btn btn--primary" href="{{ '/comentarios.html' | relative_url }}">Comentar una guía</a>
  </div>
</section>

<section class="band">
  <div class="wrap">
    <header class="sec-head">
      <p class="kicker">¿Vas a implementar?</p>
      <h2>Las Guías de Implementación FHIR, los estándares y los accesos están en Recursos.</h2>
    </header>
    <a class="btn btn--primary" href="{{ '/recursos.html' | relative_url }}">Ir a Recursos</a>
    
  </div>
</section>
