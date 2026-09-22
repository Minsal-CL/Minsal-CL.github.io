---
layout: portal
title: Trazabilidad de Medicamentos
nav_exclude: true
mermaid: true
description: >-
  Reconstrucción del recorrido de cada medicamento: qué lote recibió cada
  paciente, de dónde proviene y por qué manos pasó antes de llegar a él.
breadcrumbs:
  - title: "Receta y Trazabilidad"
    url: "/receta-trazabilidad/"
---

<section class="hero">
  <div class="wrap">
    <p class="hero__eyebrow">Receta Nacional y Trazabilidad de Medicamentos</p>
    <h2>Trazabilidad de Medicamentos</h2>
    <p class="page">
      Reconstruir, en la mayor medida posible, la traza completa de un
      medicamento: desde su registro sanitario hasta la persona que lo
      recibió, pasando por cada lote y cada tramo de la cadena de
      abastecimiento.
    </p>
  </div>
</section>

<section class="band prose-band">
  <div class="wrap wrap--narrow">
    <header class="sec-head">
      <p class="kicker">Objetivo</p>
      <h2>Enlazar receta y dispensación con el origen del medicamento</h2>
    </header>
    <div class="step">
      <p class="step__n">Qué busca resolver</p>
      <p>
        La Receta Nacional enlaza qué se prescribió con qué se dispensó. La
        Trazabilidad extiende esa traza hacia atrás: qué lote específico
        recibió el paciente y de dónde proviene ese lote, reconstruyendo la
        cadena de custodia hasta donde la información disponible lo permita.
      </p>
    </div>
  </div>
</section>

<section class="band band--tint">
  <div class="wrap">
    <header class="sec-head">
      <p class="kicker">Eje logístico</p>
      <h2>Del origen del lote al paciente</h2>
      <p class="sec-intro">
        Qué lote recibió cada paciente y de dónde proviene: origen y cadena
        de custodia desde el ISP y el abastecimiento hasta la farmacia y la
        persona.
      </p>
    </header>
    <div class="diagram">
      <p class="diagram__lead">
        Se lee de izquierda a derecha: cada recuadro es un punto por el que
        pasa el medicamento antes de llegar al paciente. El registro
        sanitario del ISP autoriza el producto; CENABAST y el abastecimiento
        lo distribuyen; la farmacia lo dispensa; el paciente lo recibe.
      </p>
      <div class="diagram__canvas" role="img" aria-label="Cadena de custodia del lote, de izquierda a derecha: registro sanitario ISP, Abastecimiento/CENABAST, farmacia, paciente.">
        <pre class="mermaid">
flowchart LR
    ISP["Registro sanitario<br/>ISP"] --> CEN["Abastecimiento<br/>CENABAST"]
    CEN --> FAR["Farmacia"]
    FAR --> PAC["Paciente"]
        </pre>
      </div>
    </div>
  </div>
</section>

<section class="band prose-band">
  <div class="wrap">
    <header class="sec-head">
      <p class="kicker">Modelo conceptual</p>
      <h2>Del principio activo al lote</h2>
      <p class="sec-intro">
        La jerarquía del medicamento tiene un límite claro: hasta el producto
        farmacéutico regulado, el significado clínico se define en OCL. El
        lote —una unidad logística, no clínica— queda fuera de OCL y vive en
        los sistemas transaccionales que gestionan la distribución.
      </p>
    </header>
    <div class="diagram">
      <p class="diagram__lead">
        Se lee de arriba hacia abajo, de lo más general a lo más específico.
        La línea punteada marca el límite: todo lo que está sobre ella se
        define en la terminología (OCL); el lote, bajo ella, se gestiona en
        sistemas transaccionales de abastecimiento y farmacia.
      </p>
      <div class="diagram__canvas" role="img" aria-label="Jerarquía del medicamento: principio activo, luego medicamento clínico, luego producto farmacéutico regulado (registro ISP) —estos tres niveles definidos en OCL—, y por último el lote, fuera de OCL, en sistemas transaccionales.">
        <pre class="mermaid">
flowchart TB
    PA["Principio activo"] --> MC["Medicamento clínico"]
    MC --> PR["Producto farmacéutico<br/>regulado (registro ISP)"]
    PR -.límite OCL.-> LOTE["Lote<br/>(sistemas transaccionales)"]

    subgraph OCL["Terminología (OCL / Semántikos)"]
        PA
        MC
        PR
    end

    subgraph TRX["Sistemas transaccionales"]
        LOTE
    end
        </pre>
      </div>
    </div>
  </div>
</section>

<section class="band band--tint">
  <div class="wrap">
    <header class="sec-head">
      <p class="kicker">Qué dato vive dónde</p>
      <h2>Sistemas y enlaces</h2>
    </header>
    <div class="cap-grid">
      <div class="cap">
        <h3>ISP</h3>
        <p>Registro sanitario del producto farmacéutico: autoriza qué puede comercializarse.</p>
      </div>
      <div class="cap">
        <h3>OCL / Semántikos</h3>
        <p>Significado clínico común: principio activo, medicamento clínico y producto regulado.</p>
      </div>
      <div class="cap">
        <h3>CENABAST / Abastecimiento</h3>
        <p>Gestión logística de lotes: adquisición, distribución y entrega a farmacias.</p>
      </div>
      <div class="cap">
        <h3>Farmacia</h3>
        <p>Registra qué lote específico se entregó a cada paciente al dispensar.</p>
      </div>
    </div>
  </div>
</section>

<section class="band prose-band">
  <div class="wrap wrap--narrow">
    <header class="sec-head">
      <p class="kicker">Estado</p>
      <h2>Estado, brechas y próximos pasos</h2>
    </header>
    <p>
      [POR COMPLETAR: estado actual del proyecto, alcance de la
      implementación vigente y sistemas ya integrados].
    </p>
    <p>
      <strong>Brechas conocidas:</strong>
      [POR COMPLETAR: brechas de datos o de cobertura que impiden hoy
      reconstruir la traza completa en todos los casos].
    </p>
    <p>
      <strong>Próximos pasos:</strong>
      [POR COMPLETAR: hitos y fechas].
    </p>
  </div>
</section>

<section class="band next-band">
  <div class="wrap">
    <h2>Contenido relacionado</h2>
    <p>La trazabilidad se apoya en el mismo enlace receta–dispensación de la Receta Nacional.</p>
    <div class="routes">
      <a class="route" href="{{ '/receta-trazabilidad/' | relative_url }}">
        <b>Receta y Trazabilidad</b>
        <span>Volver al inicio de la sección →</span>
      </a>
      <a class="route" href="{{ '/receta-trazabilidad/receta-nacional.html' | relative_url }}">
        <b>Receta Nacional</b>
        <span>El modelo de prescripción y dispensación →</span>
      </a>
      <a class="route" href="{{ '/receta-trazabilidad/glosario.html' | relative_url }}">
        <b>Glosario</b>
        <span>Siglas y términos de este dominio →</span>
      </a>
    </div>
  </div>
</section>
