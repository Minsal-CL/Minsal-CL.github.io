---
layout: portal
title: Receta Nacional y Trazabilidad de Medicamentos
nav_exclude: true
mermaid: true
description: >-
  Segunda línea estratégica de la Estrategia Nacional de Interoperabilidad:
  enlazar de forma confiable lo recetado con lo dispensado y conocer el
  origen de cada medicamento que recibe una persona.
---

<section class="hero">
  <div class="wrap">
    <p class="hero__eyebrow">Receta Nacional y Trazabilidad de Medicamentos</p>
    <h2>Saber qué se recetó, qué se entregó y de dónde vino</h2>
    <p class="page">
      La segunda línea estratégica de la Estrategia Nacional de
      Interoperabilidad. Conecta la prescripción y la dispensación de
      medicamentos, y reconstruye el origen de cada lote que llega a una
      persona.
    </p>
  </div>
</section>

<section class="band prose-band">
  <div class="wrap wrap--narrow">
    <header class="sec-head">
      <p class="kicker">Por qué existe</p>
      <h2>Hacia un medicamento trazable de extremo a extremo</h2>
    </header>
    <div class="step">
      <p class="step__n">El problema</p>
      <p>
        Hoy existen brechas para conectar el ciclo completo del medicamento: desde que un profesional lo prescribe hasta que es dispensado al paciente.<br>
        No es posible relacionar de forma confiable qué se prescribió con qué se dispensó, ni reconstruir sistemáticamente qué medicamento recibió cada paciente, de qué lote provino y cuál fue su recorrido a través de la cadena de abastecimiento.
      </p>
    </div>
    <div class="step">
      <p class="step__n">La respuesta</p>
      <p>
        Dos proyectos complementarios permiten abordar este desafío: <br><strong>Receta Nacional</strong><br>
        Estandariza e interoperabiliza la prescripción y dispensación, permitiendo conectar lo indicado por el profesional con lo efectivamente dispensado.<br><strong>Trazabilidad de Medicamentos</strong><br>Permite reconstruir la traza logística del medicamento, desde su origen y lote hasta su entrega al paciente, fortaleciendo la identificación y seguimiento a lo largo de la cadena de abastecimiento.
      </p>
    </div>
    <div class="step">
      <p class="step__n">El objetivo</p>
      <p>
        Construir una visión continua y trazable del medicamento, conectando la dimensión clínica de la prescripción con la dimensión logística de su dispensación y abastecimiento.</p>
    </div>
  </div>
</section>

<section class="band band--tint">
  <div class="wrap">
    <header class="sec-head">
      <p class="kicker">Proyectos</p>
      <h2>Dos proyectos, un mismo objetivo</h2>
    </header>
    <div class="doc-grid">
      <a class="doc-card" href="{{ '/receta-trazabilidad/receta-nacional.html' | relative_url }}">
        <span class="doc-card__label">01</span>
        <strong>Receta Nacional</strong>
        <span>
          Enlaza la prescripción con la dispensación entre prescriptor,
          farmacia y paciente, usando un modelo común basado en FHIR.
        </span>
      </a>
      <a class="doc-card" href="{{ '/receta-trazabilidad/trazabilidad.html' | relative_url }}">
        <span class="doc-card__label">02</span>
        <strong>Trazabilidad de Medicamentos</strong>
        <span>
          Reconstruye qué lote recibió cada paciente y de dónde proviene,
          desde el registro sanitario hasta la entrega.
        </span>
      </a>
    </div>
  </div>
</section>

<section class="band prose-band">
  <div class="wrap">
    <header class="sec-head">
      <p class="kicker">Cómo encajan las piezas</p>
      <h2>El ecosistema del medicamento</h2>
    </header>
    <div class="diagram">
      <p class="diagram__lead">
        Este diagrama muestra, de forma simplificada, cómo se relacionan los
        componentes que participan en la vida de un medicamento: quién lo
        regula, dónde se define su significado clínico, cómo llega a la
        farmacia, cómo se receta y se dispensa, y dónde queda registrada esa
        información para el paciente.
      </p>
      <div class="diagram__canvas" role="img" aria-label="Diagrama del ecosistema del medicamento: el ISP regula los productos farmacéuticos; la terminología (OCL/Semántikos) define su significado clínico; Abastecimiento/CENABAST gestiona la distribución hacia las farmacias; la Receta Electrónica conecta prescripción y dispensación; la farmacia dispensa al paciente; la Historia Clínica Compartida y la Trazabilidad registran lo ocurrido.">
        <pre class="mermaid">
flowchart TB
    ISP["ISP<br/>Registro sanitario"] --> OCL["Terminología<br/>OCL / Semántikos"]
    ISP --> CENABAST["Abastecimiento<br/>CENABAST"]
    OCL --> RECETA["Receta Electrónica<br/>Nacional"]
    CENABAST --> FARMACIA["Farmacia"]
    RECETA --> FARMACIA
    FARMACIA --> PACIENTE["Paciente"]
    RECETA --> HCC["Historia Clínica<br/>Compartida (HCC)"]
    FARMACIA --> TRAZA["Trazabilidad de<br/>Medicamentos"]
    CENABAST --> TRAZA
        </pre>
      </div>
    </div>
  </div>
</section>

<section class="band band--tint next-band">
  <div class="wrap">
    <h2>Contenido relacionado</h2>
    <p>Esta línea se apoya en la arquitectura común y alimenta la continuidad del cuidado.</p>
    <div class="routes">
      <a class="route" href="{{ '/arquitectura.html' | relative_url }}">
        <b>Arquitectura Nacional de Interoperabilidad</b>
        <span>El marco común de componentes y estándares →</span>
      </a>
      <a class="route" href="{{ '/receta-trazabilidad/glosario.html' | relative_url }}">
        <b>Glosario</b>
        <span>Siglas y términos de este dominio →</span>
      </a>
    </div>
    <p class="disclaimer">
      Esta línea se coordina con la <a href="{{ '/arquitectura.html#hcc' | relative_url }}">Historia Clínica Compartida (HCC)</a>, la tercera capacidad de la consolidación 2026+.
    </p>
  </div>
</section>
