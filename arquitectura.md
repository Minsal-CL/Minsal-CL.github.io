---
layout: portal
title: Arquitectura
nav_exclude: true
description: >-
  La Arquitectura Nacional de Interoperabilidad: qué es, por qué existe, cómo
  funciona y qué componentes la conforman.
---

<section class="hero">
  <div class="wrap">
    <p class="hero__eyebrow">Arquitectura</p>
    <h2>La Arquitectura Nacional de Interoperabilidad</h2>
    <p class="page">
      Un marco de acuerdo mínimo para que la información de salud pueda
      intercambiarse de forma segura entre instituciones, con la persona como
      eje central.
    </p>
  </div>
</section>

<section class="band prose-band">
  <div class="wrap wrap--narrow">
    <header class="sec-head">
      <p class="kicker">1 · Marco general</p>
      <h2>Qué es, por qué existe y cómo funciona</h2>
    </header>
    <div class="step">
      <p class="step__n">¿Qué es?</p>
      <p>
        Es el conjunto de decisiones, componentes y estándares que permiten que
        sistemas de salud distintos se entiendan entre sí. Define una
        arquitectura orientada a servicios, basada en estándares sintácticos y
        semánticos de amplio uso mundial.
      </p>
    </div>

    <div class="step" id="por-que-existe">
      <p class="step__n">¿Por qué existe?</p>
      <p>
        Porque cada vez que una persona se atiende en cualquier lugar de Chile,
        el equipo tratante y la propia persona deberían tener acceso a la
        información relevante de su historial, sin importar dónde se registró:
        otros establecimientos, aseguradores, laboratorios, imágenes o
        dispositivos clínicos.
      </p>
    </div>

    <div class="step">
      <p class="step__n">¿Cómo funciona?</p>
      <p>
        Con un modelo de gobernanza transversal y un modelo híbrido
        —centralizado y distribuido— para el manejo de la información, que
        permite su movilidad dentro de la red asistencial de forma coherente y
        sustentable en el tiempo.
      </p>
    </div>
  </div>

  <div class="wrap">
    <div class="cap-grid">
      <div class="cap">
        <h3>Paciente como eje</h3>
        <p>La identidad unívoca de la persona y su derecho de acceso a su propia información ordenan todo el diseño.</p>
      </div>
      <div class="cap">
        <h3>Información en el punto de atención</h3>
        <p>Que la información clínica correcta esté disponible cuando y donde se necesita.</p>
      </div>
      <div class="cap">
        <h3>Decisiones con datos confiables</h3>
        <p>Habilitar decisiones clínicas y de gestión sustentadas en información oportuna y confiable.</p>
      </div>
      <div class="cap">
        <h3>Estandarización nacional</h3>
        <p>Adopción de estándares nacionales (FHIR R4, Core-CL, terminología normalizada) y transición técnica ordenada desde HL7 v2 hacia FHIR R4.</p>
      </div>
      <div class="cap">
        <h3>Seguridad y ciberseguridad</h3>
        <p>Protección de la información y resguardo de datos sensibles desde el diseño, conforme a la Ley N.° 21.663 (Ciberseguridad) y la Ley N.° 21.719 (Protección de Datos Personales).</p>
      </div>
    </div>
  </div>

  <div class="wrap">
    {% include portal/ecosystem.html %}
    <details class="fig-details">
      <summary>Ver el diagrama técnico detallado del modelo de arquitectura</summary>
      <figure class="fig">
        <img src="{{ '/assets/images/diagramaArquitectura.jpg' | relative_url }}" alt="Diagrama técnico del modelo de arquitectura de interoperabilidad">
        <figcaption>Vista técnica del modelo, con aplicaciones funcionales, infraestructura pública digital, servicios de negocio y de registro, y los estándares asociados a cada capa.</figcaption>
      </figure>
    </details>
  </div>
</section>

<section class="band band--tint">
  <div class="wrap">
    <header class="sec-head">
      <p class="kicker">2 · Componentes</p>
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
      <p class="kicker">3 · Información técnica</p>
      <h2>Especificación de la arquitectura</h2>
      <p class="sec-intro">
        El marco de acuerdo, los principios rectores y los estándares
        adoptados, en detalle. Pensado para equipos de arquitectura,
        desarrollo e implementación.
      </p>
    </header>
    <ul class="doc-links">
      <li><a href="{{ '/docs/especificacion-de-la-arquitectura/principios-arquitectura.html' | relative_url }}">Principios arquitecturales</a><span>Los 11 principios rectores</span></li>
      <li><a href="{{ '/docs/especificacion-de-la-arquitectura/estandares-perfiles.html' | relative_url }}">Estándares y perfiles</a><span>HL7 FHIR, DICOM, SNOMED CT, LOINC, CIE</span></li>
    </ul>
  </div>
</section>

<section class="band band--tint">
  <div class="wrap">
    <header class="sec-head">
      <p class="kicker">4 · Trayectoria</p>
      <h2>Evolución de la interoperabilidad en salud en Chile</h2>
      <p class="sec-intro">
        De lineamientos y digitalización de la red hacia servicios nacionales,
        identidad común y continuidad del cuidado.
      </p>
    </header>
    <ol class="cap-list cap-list--timeline">
      <li class="cap-row">
        <div class="cap-row__mark">1</div>
        <div class="cap-row__body">
          <h3>2005–2006 · Libro Azul</h3>
          <p class="cap-row__detail">Primera visión sectorial de transformación digital e interoperabilidad en salud.</p>
        </div>
      </li>
      <li class="cap-row">
        <div class="cap-row__mark">2</div>
        <div class="cap-row__body">
          <h3>2008 en adelante · Estrategia SIDRA</h3>
          <p class="cap-row__detail">Informatización progresiva de la Red Asistencial e integración de procesos clínicos y administrativos.</p>
        </div>
      </li>
      <li class="cap-row">
        <div class="cap-row__mark">3</div>
        <div class="cap-row__body">
          <h3>2013 · Mapa de Ruta e-Salud 2011–2020</h3>
          <p class="cap-row__detail">La interoperabilidad, la arquitectura sectorial y los estándares se incorporan como capacidades estratégicas.</p>
        </div>
      </li>
      <li class="cap-row">
        <div class="cap-row__mark">4</div>
        <div class="cap-row__body">
          <h3>2013 en adelante · Terminologías y estándares clínicos</h3>
          <p class="cap-row__detail">Fortalecimiento progresivo de estándares comunes para compartir información con significado común.</p>
        </div>
      </li>
      <li class="cap-row">
        <div class="cap-row__mark">5</div>
        <div class="cap-row__body">
          <h3>2022–2023 · Arquitectura nacional de interoperabilidad</h3>
          <p class="cap-row__detail">Impulso de FHIR, guías de implementación, servicios comunes y componentes habilitantes.</p>
        </div>
      </li>
      <li class="cap-row">
        <div class="cap-row__mark">6</div>
        <div class="cap-row__body">
          <h3>2023 · MPI / Maestro de Pacientes</h3>
          <p class="cap-row__detail">Base para la identificación unívoca y la correlación de personas entre distintos sistemas y establecimientos.</p>
        </div>
      </li>
      <li class="cap-row">
        <div class="cap-row__mark">7</div>
        <div class="cap-row__body">
          <h3>2023–2024 · Tiempos de Espera Interoperable</h3>
          <p class="cap-row__detail">La interoperabilidad comienza a aplicarse a procesos ministeriales y asistenciales concretos.</p>
        </div>
      </li>
      <li class="cap-row">
        <div class="cap-row__mark">8</div>
        <div class="cap-row__body">
          <h3>2024 · Ley N.° 21.668</h3>
          <p class="cap-row__detail">La interoperabilidad de fichas clínicas adquiere respaldo legal y refuerza la continuidad del cuidado.</p>
        </div>
      </li>
      <li class="cap-row">
        <div class="cap-row__mark">9</div>
        <div class="cap-row__body">
          <h3>2025 · Sistema Nacional de Receta Electrónica</h3>
          <p class="cap-row__detail">La interoperabilidad se traduce en un servicio nacional visible para personas, prescriptores y dispensadores.</p>
        </div>
      </li>
      <li class="cap-row" id="hcc">
        <div class="cap-row__mark">10</div>
        <div class="cap-row__body">
          <h3>2026+ · HCC + Receta + Trazabilidad</h3>
          <p class="cap-row__detail">Consolidación de una capacidad nacional para compartir información clínica y farmacológica, centrada en las personas. Ver <a href="{{ '/receta-trazabilidad/' | relative_url }}">Receta Nacional y Trazabilidad de Medicamentos →</a></p>
        </div>
      </li>
    </ol>
  </div>
</section>

<section class="band band--tint next-band">
  <div class="wrap">
    <h2>¿Y ahora?</h2>
    <p>Elige según lo que necesitas hacer.</p>
    <div class="routes">
      <a class="route" href="{{ '/recursos.html' | relative_url }}">
        <b>Quiero integrarme</b>
        <span>Servicios de salud y proveedores: guías FHIR, estándares y accesos →</span>
      </a>
      <a class="route" href="{{ '/que-hacemos.html' | relative_url }}">
        <b>Quiero entender el marco</b>
        <span>Autoridades y equipos: qué resolvemos y por qué importa →</span>
      </a>
    </div>
  </div>
</section>
