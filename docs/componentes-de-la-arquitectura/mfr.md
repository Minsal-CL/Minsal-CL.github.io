---
layout: portal
title: Maestro Prestadores Institucionales
description: Directorio de establecimientos de salud, con identificación única y datos de ubicación de las instituciones de la red.
---

<section class="page-hero">
  <div class="wrap">
    <p class="hero__eyebrow">Componentes de la arquitectura</p>
    <h1>Maestro Prestadores Institucionales</h1>
    <p class="page-hero__lead">
      El MFR (<em>Master Facility Registry</em>) es el directorio de establecimientos de salud: identifica de forma única a las instituciones y organizaciones que participan en la red asistencial, junto con su dirección y datos de ubicación necesarios para el intercambio de información.
    </p>
  </div>
</section>

<section class="band">
  <div class="wrap">
    <header class="sec-head">
      <p class="kicker">Directorio de establecimientos</p>
      <h2>Una identidad única para cada institución</h2>
      <p class="sec-intro">
        Una fuente común de establecimientos evita que la misma institución
        quede identificada de forma distinta en cada sistema, y permite
        enrutar correctamente la información hacia el lugar correcto.
      </p>
    </header>
  </div>
</section>

<section class="band band--tint">
  <div class="wrap">
    <header class="sec-head">
      <p class="kicker">Información que organiza</p>
      <h2>Qué datos mantiene el maestro</h2>
    </header>
    <div class="cap-grid">
      <div class="cap">
        <h3>Instituciones</h3>
        <p>Identificador único para organizaciones y establecimientos de la red asistencial.</p>
      </div>
      <div class="cap">
        <h3>Ubicación</h3>
        <p>Datos de dirección y ubicación de cada establecimiento, mediante un perfil de dirección específico.</p>
      </div>
    </div>
    <p class="disclaimer">
      El MFR complementa al <a href="{{ '/docs/componentes-de-la-arquitectura/hpd.html' | relative_url }}">Directorio de Prestadores de Salud</a>: mientras ese registro identifica a las personas que prestan atención, el MFR identifica a las instituciones y establecimientos donde se presta.
    </p>
  </div>
</section>

<section class="band next-band">
  <div class="wrap">
    <h2>Guía de implementación</h2>
    <p>
      La Guía de Implementación del Maestro Prestadores Institucionales
      describe los perfiles y reglas técnicas para integrar esta capacidad,
      incluyendo el perfil de prestador institucional y la extensión de
      dirección para establecimientos.
    </p>
    <div class="next-links">
      <a class="btn btn--primary" href="https://interoperabilidad.minsal.cl/fhir/ig/mfr/">Ver la guía de implementación</a>
    </div>
  </div>
</section>
