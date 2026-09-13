---
layout: portal
title: Arquitectura
nav_exclude: true
description: >-
  La Arquitectura Nacional de Interoperabilidad: qué es, por qué existe, cómo
  funciona y qué componentes la conforman.
---

<section class="page-hero">
  <div class="wrap">
    <p class="kicker">Arquitectura</p>
    <h1>La Arquitectura Nacional de Interoperabilidad</h1>
    <p class="page-hero__lead">
      Un marco de acuerdo mínimo para que la información de salud pueda
      intercambiarse de forma segura entre instituciones, con la persona como
      eje central.
    </p>
  </div>
</section>

<section class="band prose-band">
  <div class="wrap wrap--narrow">
    <div class="step">
      <p class="step__n">1 · ¿Qué es?</p>
      <p>
        Es el conjunto de decisiones, componentes y estándares que permiten que
        sistemas de salud distintos se entiendan entre sí. Define una
        arquitectura orientada a servicios, basada en estándares sintácticos y
        semánticos de amplio uso mundial.
      </p>
    </div>

    <div class="step">
      <p class="step__n">2 · ¿Por qué existe?</p>
      <p>
        Porque cada vez que una persona se atiende en cualquier lugar de Chile,
        el equipo tratante y la propia persona deberían tener acceso a la
        información relevante de su historial, sin importar dónde se registró:
        otros establecimientos, aseguradores, laboratorios, imágenes o
        dispositivos clínicos.
      </p>
    </div>

    <div class="step">
      <p class="step__n">3 · ¿Cómo funciona?</p>
      <p>
        Con un modelo de gobernanza transversal y un modelo híbrido
        —centralizado y distribuido— para el manejo de la información, que
        permite su movilidad dentro de la red asistencial de forma coherente y
        sustentable en el tiempo.
      </p>
    </div>
  </div>

  <div class="wrap">
    {% include portal/ecosystem.html %}
    <details class="fig-details">
      <summary>Ver el diagrama técnico detallado del modelo de arquitectura</summary>
      <figure class="fig">
        <img src="{{ '/assets/images/diagramaArquitectura.jpg' | relative_url }}" alt="Diagrama del modelo de arquitectura de interoperabilidad, con aplicaciones funcionales, infraestructura pública digital, servicios de negocio y de registro, y estándares asociados">
        <figcaption>Modelo de arquitectura — vista técnica</figcaption>
      </figure>
    </details>
  </div>
</section>

<section class="band band--tint">
  <div class="wrap">
    <header class="sec-head">
      <p class="step__n">4 · ¿Qué componentes la conforman?</p>
      <h2>Servicios comunes reutilizables</h2>
    </header>
    <div class="mini-grid">
      {%- for c in site.data.components -%}
      <a class="mini" href="{{ '/componentes.html' | relative_url }}#{{ c.id }}">
        {% include portal/badge.html status=c.estado %}
        <b>{{ c.title }}</b>
        <span>{{ c.plain }}</span>
      </a>
      {%- endfor -%}
    </div>
    <p class="sec-more"><a class="lnk" href="{{ '/componentes.html' | relative_url }}">Ver el catálogo de componentes →</a></p>
  </div>
</section>

<section class="band prose-band">
  <div class="wrap wrap--narrow">
    <header class="sec-head">
      <p class="step__n">5 · Información técnica detallada</p>
      <h2>Especificación de la arquitectura</h2>
      <p class="sec-intro">
        El marco de acuerdo, los principios rectores y los estándares adoptados,
        en detalle.
      </p>
    </header>
    <ul class="doc-links">
      <li><a href="{{ '/docs/especificacion-de-la-arquitectura/principios-arquitectura.html' | relative_url }}">Principios arquitecturales</a><span>Los 11 principios rectores</span></li>
      <li><a href="{{ '/docs/especificacion-de-la-arquitectura/estandares-perfiles.html' | relative_url }}">Estándares y perfiles</a><span>HL7 FHIR, DICOM, SNOMED CT, LOINC, CIE</span></li>
    </ul>
  </div>
</section>
