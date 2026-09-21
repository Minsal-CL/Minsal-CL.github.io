---
layout: portal
title: Qué hacemos
nav_exclude: true
description: >-
  Conectamos sistemas, ponemos a la persona al centro, construimos capacidades
  nacionales y definimos estándares para la salud de Chile.
---

<section class="page">
  <div class="wrap">
    <p class="kicker">Qué hacemos</p>
    <h1>Que la información de salud llegue donde se necesita, en el momento que se necesista y a quien lo necesita</h1>
    <p class="page">
      El Ministerio de Salud impulsa una estrategia de interoperabilidad para todo el sector: un sistema más integrado, donde el flujo de información a la persona como eje central de la atención.
    </p>
  </div>
</section>

<section class="band">
  <div class="wrap">
    <header class="sec-head">
      <p class="kicker">Propósito y función</p>
      <h2>Por qué existe la Unidad de Interoperabilidad</h2>
    </header>
    <div class="cap-grid">
      <div class="cap">
        <h3>Propósito</h3>
        <p>
          Mejorar el acceso a la información de los pacientes instalando una
          capacidad técnica habilitante nacional para reglas, estándares,
          servicios comunes e intercambio seguro de información clínica y
          farmacológica.
        </p>
      </div>
      <div class="cap">
        <h3>Función</h3>
        <p>
          Dirigir, diseñar y supervisar el modelo de interoperabilidad del
          sector salud, garantizando el intercambio seguro, estandarizado y
          oportuno de información entre los establecimientos de la red
          asistencial, los organismos del sector y los sistemas
          ministeriales. Lideramos los proyectos estratégicos de
          interoperabilidad, definimos los estándares técnicos aplicables a
          los sistemas de información en salud, coordinamos la integración de
          los flujos de información entre los organismos del sector, y
          supervisamos la implementación de plataformas y repositorios
          nacionales de información clínica, asegurando la calidad,
          integridad, disponibilidad y protección de los datos de salud.
        </p>
      </div>
    </div>
  </div>
</section>

<section class="band band--tint">
  <div class="wrap">
    <header class="sec-head">
      <p class="kicker">Alcance</p>
      <h2>Lo que hacemos, y lo que no</h2>
      <p class="sec-intro">
        La Unidad define y opera el intercambio de información entre
        sistemas. No reemplaza las responsabilidades clínicas, farmacéuticas
        ni ciudadanas: cada área conserva su rol.
      </p>
    </header>
    <div class="cap-grid">
      <div class="cap">
        <h3>Definimos</h3>
        <p>
          Arquitectura, estándares, guías técnicas, APIs, terminologías,
          seguridad, validación y monitoreo del intercambio de información en
          salud.
        </p>
      </div>
      <div class="cap">
        <h3>No reemplazamos</h3>
        <p>
          Las reglas de negocio y decisiones clínicas, que definen las áreas
          funcionales; ni la experiencia y atención ciudadana, que opera el
          Portal Ciudadano.
        </p>
      </div>
    </div>
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

<section class="band">
  <div class="wrap">
    <header class="sec-head">
      <p class="kicker">Las personas primero</p>
      <h2>Lo técnico es un habilitante; el cambio ocurre cuando las personas adoptan, confían y usan</h2>
      <p class="sec-intro">
        En estos proyectos, el objetivo no es mover datos: es que las personas
        adopten, confíen y usen las capacidades construidas para un cuidado
        más continuo, seguro y centrado en ellas.
      </p>
    </header>
    <div class="cap-grid">
      <div class="cap">
        <h3>1 · Adopción y cambio</h3>
        <p>Sin uso real, la tecnología no genera valor.</p>
      </div>
      <div class="cap">
        <h3>2 · Liderazgo clínico y funcional</h3>
        <p>Las decisiones deben responder a necesidades reales del cuidado.</p>
      </div>
      <div class="cap">
        <h3>3 · Capacitación y acompañamiento</h3>
        <p>Las capacidades se instalan en la red, no solo en la plataforma.</p>
      </div>
      <div class="cap">
        <h3>4 · Confianza y colaboración</h3>
        <p>La interoperabilidad requiere acuerdos entre personas, instituciones y equipos.</p>
      </div>
      <div class="cap">
        <h3>5 · Impacto en la atención</h3>
        <p>El objetivo no es mover datos, sino mejorar continuidad, seguridad y oportunidad.</p>
      </div>
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
