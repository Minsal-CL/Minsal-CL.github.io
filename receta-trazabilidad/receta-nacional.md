---
layout: portal
title: Receta Nacional
nav_exclude: true
mermaid: true
description: >-
  Estandarización de la prescripción y la dispensación de medicamentos entre
  prescriptores, farmacias y pacientes, sobre un modelo común basado en FHIR.
breadcrumbs:
  - title: "Receta y Trazabilidad"
    url: "/receta-trazabilidad/"
---

<section class="hero">
  <div class="wrap">
    <p class="hero__eyebrow">Receta Nacional y Trazabilidad de Medicamentos</p>
    <h2>Receta Nacional</h2>
    <p class="page">
      Un modelo común para que la prescripción de un medicamento y su
      dispensación en cualquier farmacia del país puedan enlazarse de forma
      confiable, sin importar dónde ocurra cada evento.
    </p>
  </div>
</section>

<section class="band prose-band">
  <div class="wrap wrap--narrow">
    <header class="sec-head">
      <p class="kicker">Contexto y objetivo</p>
      <h2>Qué resuelve</h2>
    </header>
    <div class="step">
      <p class="step__n">Contexto</p>
      <p>
        Un mismo tratamiento puede involucrar a un prescriptor, una o más
        farmacias y, muchas veces, más de un establecimiento de salud. Sin un
        estándar común para representar la receta y su dispensación, cada
        sistema registra esta información de forma distinta y es difícil
        saber si lo entregado corresponde a lo recetado.
      </p>
    </div>
    <div class="step">
      <p class="step__n">Objetivo</p>
      <p>
        Que cualquier sistema de prescripción y cualquier sistema de
        dispensación puedan intercambiar información de receta electrónica
        usando el mismo modelo de datos y el mismo significado clínico,
        habilitando su enlace confiable de extremo a extremo.
      </p>
    </div>
    <div class="step">
      <p class="step__n">Alcance</p>
      <p>
        Cubre la emisión de la receta, su transporte hacia la farmacia y el
        registro de la dispensación. [POR COMPLETAR: alcance detallado —
        tipos de receta cubiertos, establecimientos y modalidades de
        dispensación incluidas en el alcance actual].
      </p>
    </div>
  </div>

  <div class="wrap">
    <header class="sec-head">
      <p class="kicker">Actores</p>
      <h2>Quiénes participan</h2>
    </header>
    <div class="cap-grid">
      <div class="cap">
        <h3>Prescriptor</h3>
        <p>Profesional de salud habilitado que emite la receta electrónica.</p>
      </div>
      <div class="cap">
        <h3>Farmacia</h3>
        <p>Recibe la receta y registra la dispensación del medicamento.</p>
      </div>
      <div class="cap">
        <h3>Paciente</h3>
        <p>Persona para quien se prescribe y a quien se entrega el medicamento.</p>
      </div>
      <div class="cap">
        <h3>MINSAL / ISP</h3>
        <p>Definen el marco regulatorio, la terminología y la autoridad sanitaria sobre los productos farmacéuticos.</p>
      </div>
    </div>
  </div>
</section>

<section class="band band--tint">
  <div class="wrap">
    <header class="sec-head">
      <p class="kicker">Flujo</p>
      <h2>De la prescripción a la dispensación</h2>
    </header>
    <div class="diagram">
      <p class="diagram__lead">
        Se lee de arriba hacia abajo: el prescriptor emite la receta, esta
        queda disponible en la plataforma nacional, la farmacia la consulta y
        registra la entrega, y ese registro vuelve a quedar disponible tanto
        para el paciente como para la historia clínica compartida.
      </p>
      <div class="diagram__canvas" role="img" aria-label="Diagrama de secuencia: el prescriptor emite una receta hacia el sistema de receta electrónica; este la registra en la plataforma nacional; la farmacia consulta la receta, dispensa el medicamento y registra la dispensación en la plataforma nacional; la plataforma notifica el resultado a la Historia Clínica Compartida.">
        <pre class="mermaid">
sequenceDiagram
    participant P as Prescriptor
    participant SR as Sistema de receta
    participant PN as Plataforma nacional
    participant F as Farmacia
    participant HCC as Historia Clínica Compartida

    P->>SR: Emite receta
    SR->>PN: Registra receta (MedicationRequest)
    F->>PN: Consulta receta del paciente
    PN-->>F: Entrega receta disponible
    F->>PN: Registra dispensación (MedicationDispense)
    PN-->>HCC: Notifica dispensación
        </pre>
      </div>
    </div>
  </div>
</section>

<section class="band prose-band">
  <div class="wrap wrap--narrow">
    <header class="sec-head">
      <p class="kicker">Relación con la Historia Clínica Compartida</p>
      <h2>Un mismo hilo de información</h2>
    </header>
    <p>
      La receta y su dispensación forman parte del historial de la persona.
      Al quedar registradas con el mismo modelo que usa la Historia Clínica
      Compartida (HCC), cualquier equipo tratante autorizado puede ver qué se
      recetó y qué se dispensó, sin depender del establecimiento donde
      ocurrió cada evento. <a href="{{ '/arquitectura.html#hcc' | relative_url }}">Ver Historia Clínica Compartida (HCC) →</a>
    </p>
  </div>
</section>

<section class="band prose-band">
  <div class="wrap wrap--narrow">
    <details class="tech-details">
      <summary>Para equipos técnicos: modelo FHIR, terminología y perfiles</summary>
      <div class="tech-details__body">

    <h3>Modelo FHIR</h3>
    <p>
      La receta y la dispensación se representan con recursos FHIR R4
      enlazados entre sí:
    </p>
    <ul>
      <li><code>MedicationRequest</code>: la prescripción emitida por el profesional.</li>
      <li><code>MedicationDispense</code>: la dispensación registrada por la farmacia, enlazada a la prescripción mediante el elemento <code>authorizingPrescription</code>.</li>
      <li><code>Medication</code>: el producto farmacéutico prescrito o dispensado.</li>
      <li><code>Patient</code>: la persona para quien se prescribe.</li>
      <li><code>Practitioner</code>: el profesional que prescribe o dispensa.</li>
      <li><code>Organization</code>: el establecimiento o farmacia que interviene.</li>
    </ul>

    <div class="diagram">
      <p class="diagram__lead">
        Cada recuadro es un recurso FHIR. Las flechas indican qué recurso
        hace referencia a cuál; el enlace entre lo recetado y lo dispensado
        se hace explícito a través de <code>authorizingPrescription</code>.
      </p>
      <div class="diagram__canvas" role="img" aria-label="Diagrama de clases: MedicationRequest referencia a Medication, Patient y Practitioner; MedicationDispense referencia a Medication, Patient, Practitioner, Organization y, mediante authorizingPrescription, al MedicationRequest correspondiente.">
        <pre class="mermaid">
classDiagram
    class MedicationRequest {
      +medicationReference
      +subject
      +requester
    }
    class MedicationDispense {
      +medicationReference
      +subject
      +performer
      +authorizingPrescription
    }
    class Medication
    class Patient
    class Practitioner
    class Organization

    MedicationRequest --> Medication : medicationReference
    MedicationRequest --> Patient : subject
    MedicationRequest --> Practitioner : requester
    MedicationDispense --> Medication : medicationReference
    MedicationDispense --> Patient : subject
    MedicationDispense --> Organization : performer
    MedicationDispense --> MedicationRequest : authorizingPrescription
        </pre>
      </div>
    </div>

    <h3>Terminología</h3>
    <p>
      El dominio farmacéutico se codifica con <strong>Semántikos 2.0</strong>
      sobre <strong>OCL</strong> (Open Concept Lab), servido en tiempo de
      ejecución a través de <strong>Snowstorm</strong>.
      [POR COMPLETAR: value sets y binding strength por elemento].
    </p>

    <h3>Guía de implementación</h3>
    <p>
      [POR COMPLETAR: enlace a la Guía de Implementación (IG) de Receta
      Nacional, endpoints del ambiente de pruebas y de producción, y
      perfiles publicados].
    </p>
      </div>
    </details>
  </div>
</section>

<section class="band next-band">
  <div class="wrap">
    <h2>Contenido relacionado</h2>
    <p>La Receta Nacional es una de las dos líneas de esta sección.</p>
    <div class="routes">
      <a class="route" href="{{ '/receta-trazabilidad/' | relative_url }}">
        <b>Receta y Trazabilidad</b>
        <span>Volver al inicio de la sección →</span>
      </a>
      <a class="route" href="{{ '/receta-trazabilidad/trazabilidad.html' | relative_url }}">
        <b>Trazabilidad de Medicamentos</b>
        <span>Origen, lote y cadena de custodia →</span>
      </a>
      <a class="route" href="{{ '/receta-trazabilidad/glosario.html' | relative_url }}">
        <b>Glosario</b>
        <span>Siglas y términos de este dominio →</span>
      </a>
    </div>
  </div>
</section>
