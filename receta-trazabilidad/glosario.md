---
layout: portal
title: Glosario
nav_exclude: true
description: >-
  Siglas y términos del dominio de Receta Nacional y Trazabilidad de
  Medicamentos.
breadcrumbs:
  - title: "Receta y Trazabilidad"
    url: "/receta-trazabilidad/"
---

<section class="page-hero">
  <div class="wrap">
    {% include portal/breadcrumbs.html %}
    <p class="hero__eyebrow">Receta Nacional y Trazabilidad de Medicamentos</p>
    <h1>Glosario</h1>
    <p class="page-hero__lead">
      Siglas y términos usados en esta sección, explicados en lenguaje
      simple.
    </p>
  </div>
</section>

<section class="band prose-band">
  <div class="wrap wrap--narrow">
    <dl class="glossary">
      <dt>ISP</dt>
      <dd>Instituto de Salud Pública de Chile. Autoridad sanitaria que registra y regula los productos farmacéuticos que pueden comercializarse en el país.</dd>

      <dt>CENABAST</dt>
      <dd>Central Nacional de Abastecimiento. Gestiona la adquisición y distribución de medicamentos e insumos para la red de salud pública.</dd>

      <dt>OCL (Open Concept Lab)</dt>
      <dd>Herramienta de gestión de terminología donde se definen y mantienen los conceptos clínicos, incluyendo el dominio farmacéutico.</dd>

      <dt>Semántikos</dt>
      <dd>Terminología clínica nacional. Su versión 2.0 aporta el dominio farmacéutico usado por la Receta Nacional y la Trazabilidad de Medicamentos.</dd>

      <dt>SNOMED CT</dt>
      <dd>Terminología clínica internacional de referencia, adoptada como parte del marco de estandarización nacional.</dd>

      <dt>Snowstorm</dt>
      <dd>Servidor de terminología que expone los conceptos clínicos (incluida Semántikos) para que los sistemas los consulten en tiempo de ejecución.</dd>

      <dt>MedicationRequest</dt>
      <dd>Recurso FHIR que representa una prescripción: qué medicamento se recetó, para quién y quién lo prescribió.</dd>

      <dt>MedicationDispense</dt>
      <dd>Recurso FHIR que representa una dispensación: qué medicamento se entregó, a quién y en qué farmacia, enlazado a la receta que la autoriza.</dd>

      <dt>Lote</dt>
      <dd>Unidad logística de producción de un medicamento. Permite identificar de qué proceso de fabricación proviene una unidad específica entregada a un paciente. No es un concepto clínico y no se define en OCL.</dd>

      <dt>Registro sanitario</dt>
      <dd>Autorización que otorga el ISP a un producto farmacéutico para poder comercializarse en Chile.</dd>

      <dt>HCC (Historia Clínica Compartida)</dt>
      <dd>Componente que permite que el equipo tratante autorizado acceda al historial clínico de una persona, sin importar en qué establecimiento se generó cada registro.</dd>
    </dl>
  </div>
</section>

<section class="band next-band">
  <div class="wrap">
    <h2>Contenido relacionado</h2>
    <p>Vuelve al inicio de la sección o revisa cada proyecto en detalle.</p>
    <div class="routes">
      <a class="route" href="{{ '/receta-trazabilidad/' | relative_url }}">
        <b>Receta y Trazabilidad</b>
        <span>Volver al inicio de la sección →</span>
      </a>
      <a class="route" href="{{ '/receta-trazabilidad/receta-nacional.html' | relative_url }}">
        <b>Receta Nacional</b>
        <span>El modelo de prescripción y dispensación →</span>
      </a>
      <a class="route" href="{{ '/receta-trazabilidad/trazabilidad.html' | relative_url }}">
        <b>Trazabilidad de Medicamentos</b>
        <span>Origen, lote y cadena de custodia →</span>
      </a>
    </div>
  </div>
</section>
