---
layout: default
title: Servicios Terminológicos
parent: Componentes de la Arquitectura
nav_order: 3
has_children: true
description: Recursos y operaciones FHIR para consultar, validar y relacionar conceptos clínicos.
---


# Servicios Terminológicos

Los Servicios Terminológicos son una capacidad compartida de la Arquitectura Nacional de Interoperabilidad. Permiten que diagnósticos, exámenes, medicamentos y otros conceptos clínicos se interpreten de la misma forma entre sistemas.

<div class="doc-summary">
	<p class="doc-summary__eyebrow">Servicio FHIR</p>
	<p>El servicio de terminología FHIR-MINSAL entrega recursos y operaciones para consultar, validar y relacionar conceptos clínicos. Su acceso se habilita mediante solicitud formal.</p>
</div>

## Alcance del servicio

El servicio de terminología FHIR-MINSAL permite consumir recursos en formato FHIR. Se implementa sobre el perfil compartido <em>ValueSets, CodeSystems and ConceptMaps</em> (mSVCM) de IHE y permite recuperar artefactos terminológicos junto con las operaciones FHIR asociadas.

| Recurso | Uso principal |
| --- | --- |
| `CodeSystem` | Publica los códigos y conceptos disponibles en una terminología. |
| `ValueSet` | Define conjuntos de códigos utilizables para un contexto clínico o administrativo. |
| `ConceptMap` | Expresa relaciones o equivalencias entre códigos de distintos sistemas. |

## Capacidades

Las operaciones disponibles dependen del recurso y de los permisos otorgados al consumidor. Entre las capacidades esperadas se encuentran:

- Consulta de `CodeSystem`, `ValueSet` y `ConceptMap` en formato FHIR.
- Expansión de conjuntos de valores para obtener códigos utilizables en una transacción.
- Validación de códigos frente a un sistema de códigos o conjunto de valores.
- Consulta de relaciones y equivalencias entre terminologías mediante mapas de conceptos.

## Terminologías de referencia

El servicio respalda la adopción de terminologías y clasificaciones priorizadas por la arquitectura, entre ellas SNOMED CT, LOINC y CIE-10, junto con los artefactos definidos en las guías de implementación vigentes.

{: .importante }
> La disponibilidad de una terminología, versión o conjunto de valores debe confirmarse durante la integración. No todos los artefactos son necesariamente públicos ni aplican a todos los procesos clínicos.

