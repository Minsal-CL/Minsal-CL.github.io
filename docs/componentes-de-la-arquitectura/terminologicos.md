---
layout: portal
title: Servicios Terminológicos
description: Recursos y operaciones FHIR para consultar, validar y relacionar conceptos clínicos.
---

<section class="page-hero">
  <div class="wrap">
    <p class="hero__eyebrow">Componentes de la arquitectura</p>
    <h1>Servicios Terminológicos</h1>
    <p class="page-hero__lead">
      Los Servicios Terminológicos son una capacidad compartida de la Arquitectura Nacional de Interoperabilidad. Permiten que diagnósticos, exámenes, medicamentos y otros conceptos clínicos se interpreten de la misma forma entre sistemas.
    </p>
  </div>
</section>

<section class="band">
  <div class="wrap">
    <header class="sec-head">
      <p class="kicker">Servicio FHIR</p>
      <h2>Consultar, validar y relacionar conceptos clínicos</h2>
      <p class="sec-intro">
        El servicio de terminología FHIR-MINSAL entrega recursos y
        operaciones para consultar, validar y relacionar conceptos clínicos.
        Su acceso se habilita mediante solicitud formal.
      </p>
    </header>
  </div>
</section>

<section class="band band--tint">
  <div class="wrap">
    <header class="sec-head">
      <p class="kicker">Alcance del servicio</p>
      <h2>Recursos y operaciones disponibles</h2>
      <p class="sec-intro">
        El servicio de terminología FHIR-MINSAL permite consumir recursos en
        formato FHIR. Se implementa sobre el perfil compartido
        <em>ValueSets, CodeSystems and ConceptMaps</em> (mSVCM) de IHE y
        permite recuperar artefactos terminológicos junto con las
        operaciones FHIR asociadas.
      </p>
    </header>
    <div class="main-content" markdown="1">

| Recurso | Uso principal |
| --- | --- |
| `CodeSystem` | Publica los códigos y conceptos disponibles en una terminología. |
| `ValueSet` | Define conjuntos de códigos utilizables para un contexto clínico o administrativo. |
| `ConceptMap` | Expresa relaciones o equivalencias entre códigos de distintos sistemas. |

</div>
  </div>
</section>

<section class="band">
  <div class="wrap">
    <header class="sec-head">
      <p class="kicker">Capacidades</p>
      <h2>Qué se puede hacer con el servicio</h2>
      <p class="sec-intro">
        Las operaciones disponibles dependen del recurso y de los permisos
        otorgados al consumidor. Entre las capacidades esperadas se
        encuentran:
      </p>
    </header>
    <div class="main-content" markdown="1">

- Consulta de `CodeSystem`, `ValueSet` y `ConceptMap` en formato FHIR.
- Expansión de conjuntos de valores para obtener códigos utilizables en una transacción.
- Validación de códigos frente a un sistema de códigos o conjunto de valores.
- Consulta de relaciones y equivalencias entre terminologías mediante mapas de conceptos.

</div>
  </div>
</section>

<section class="band band--tint">
  <div class="wrap">
    <header class="sec-head">
      <p class="kicker">Terminologías de referencia</p>
      <h2>Clasificaciones priorizadas por la arquitectura</h2>
      <p class="sec-intro">
        El servicio respalda la adopción de terminologías y clasificaciones
        priorizadas por la arquitectura, entre ellas SNOMED CT, LOINC y
        CIE-10, junto con los artefactos definidos en las guías de
        implementación vigentes.
      </p>
    </header>
    <div class="main-content" markdown="1">

{: .importante }
> La disponibilidad de una terminología, versión o conjunto de valores debe confirmarse durante la integración. No todos los artefactos son necesariamente públicos ni aplican a todos los procesos clínicos.

</div>
  </div>
</section>

<section class="band next-band">
  <div class="wrap">
    <h2>En esta sección</h2>
    <div class="next-links">
      <a class="btn btn--ghost" href="{{ '/docs/componentes-de-la-arquitectura/codesystem.html' | relative_url }}">CodeSystem</a>
      <a class="btn btn--ghost" href="{{ '/docs/componentes-de-la-arquitectura/valueset.html' | relative_url }}">ValueSet</a>
      <a class="btn btn--ghost" href="{{ '/docs/componentes-de-la-arquitectura/conceptmap.html' | relative_url }}">ConceptMap</a>
    </div>
  </div>
</section>

