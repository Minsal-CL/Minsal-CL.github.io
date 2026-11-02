# Decisiones de diseño - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* **Decisiones de diseño**

## Decisiones de diseño

# Decisiones de diseño

Esta página resume el registro de decisiones de diseño de la guía. Una decisión **adoptada** ya está aplicada en los perfiles o en la documentación. Una decisión **abierta** con propuesta no es normativa: describe la opción que se recomienda y que se someterá a aprobación. Las páginas de la guía citan las decisiones por su número (`D-nnn`).

## Decisiones adoptadas

| | | |
| :--- | :--- | :--- |
| D-001 | El recurso`Patient`del modelo canónico es una proyección del maestro del MPI, no una construcción desde el mensaje | 2026-09-22 |
| D-002 | Perfil nacional de conformidad de mensajería HL7 v2, anexo normativo para la solicitud y el informe: semántica y tipos de datos de HL7 v2.5.1, uso por campo, perfiles de emisor declarados en el acuerdo de integración y set de certificación. El MINSAL norma la entrada al Bus, no la interfaz de un producto | 2026-10-19 |
| D-006 | `ServiceRequest.requester`se mantiene`1..1`;`ORC-12`es requisito de conformidad del emisor | 2026-09-22 |
| D-007 | El Accession Number se exige en la certificación del establecimiento, no por cardinalidad del perfil, porque el RIS no reintenta | 2026-09-22 |
| D-008 | `EstudioImagenologicoMinsal`se crea sólo cuando existe dato DICOM real; sin él, el informe se publica igual | 2026-09-22 |
| D-009 | Los perfiles de identidad siguen las mismas reglas que la Guía de Laboratorio Clínico | 2026-09-22 |
| D-010 | Verificación de`id`y`canonical`contra el portafolio | 2026-09-22 |
| D-012 | El canal FHIR directo envía el`Patient`completo, conforme al perfil de paciente de NID | 2026-09-24 |
| D-014 | Toda solicitud e informe lleva la prestación FONASA homologada, incluso cuando el emisor entrega FHIR | 2026-09-24 |
| D-016 | Dependencia formal de NID 0.4.9; los perfiles de identidad derivan de NID | 2026-09-24 |
| D-017 | La disponibilidad de las imágenes y la del informe tienen ciclos de vida independientes | 2026-10-21 |
| D-018 | La posibilidad de visualizar se expresa con`ImagingStudy.endpoint`y`Endpoint.status`, sin extensiones | 2026-10-21 |
| D-019 | El evento de disponibilidad es un`Bundle`transaccional con actualización condicional del estudio | 2026-10-21 |
| D-020 | Tres modalidades de acceso al visor del proveedor (IID, API, portal) y dos niveles de conformidad | 2026-10-21 |
| D-021 | Las imágenes permanecen en el PACS/VNA de origen | 2026-10-21 |
| D-022 | Autorización hacia los proveedores con aserción de corta duración o sesión de un solo uso | 2026-10-21 |
| D-023 | Política de publicación al paciente: retención configurable, sin informes preliminares, representación según el modelo nacional y aviso normado | 2026-10-21 |
| D-005 | El informe cuyo paciente no resuelve en el MPI se retiene en conciliación y no se publica; el Bus no crea pacientes y el alta de pacientes nuevos queda centralizada en MINSAL; resuelta la identidad, el informe se reprocesa | 2026-10-27 |
| D-011 | `resultsInterpreter`e`issued`obligatorios; en producción, el informe que no los trae va a conciliación, no se rechaza | 2026-10-27 |
| D-015 | La corrección (`C`) reemplaza el PDF; el addendum (`A`) agrega uno y conserva el original; un informe firmado no vuelve a preliminar | 2026-10-27 |
| D-024 | La fuente de la fecha del examen se declara por emisor en el acuerdo de integración; nunca la hora del mensaje ni la de proceso | 2026-10-27 |
| D-025 | El informe y la solicitud se crean o actualizan con`PUT`condicional por identificador (Accession Number o, si falta, número de orden del ejecutante) | 2026-10-27 |
| D-026 | El Bus acusa`AA`cuando el mensaje queda persistido;`AE`sólo si no se puede leer ni trazar; lo que falla después va a conciliación | 2026-10-27 |
| D-027 | Un profesional que llega por HL7 v2 se representa con referencia lógica por RUN, sin recurso`Practitioner` | 2026-10-27 |
| D-028 | Los identificadores locales (Accession Number, número de orden, catálogo local) usan un`system`con patrón por código DEIS, común con Laboratorio Clínico | 2026-10-27 |

Las decisiones D-005, D-011, D-015 y D-024 a D-028 se aplican en los perfiles y páginas desde la versión 0.5.0, que publica también el [perfil de conformidad HL7 v2](conformidad-hl7v2.md) de D-002. El esquema de los `system` con base `deis.minsal.cl` es `http`.

## Decisiones abiertas

Ninguna condiciona el inicio del piloto, que comienza por el informe (Caso de uso 2). D-003, D-004 y D-013 se retoman cuando la solicitud entre al piloto; D-030 a D-033 están propuestas al comité FHIR.

| | | |
| :--- | :--- | :--- |
| D-003 | ¿El evento de ejecución del estudio (RIS → Bus) entra al modelo nacional? | No en el piloto; se retoma después. El estudio ya tiene el evento de disponibilidad |
| D-004 | ¿Estados de la orden con tablas HL7 publicadas o con un sistema propio? | Tablas HL7`v2-0119`y`v2-0038` |
| D-013 | ¿Órdenes creadas en la ventanilla del RIS? | No en el piloto; los informes sin orden previa ya se aceptan |
| D-030 | ¿Se publican`CapabilityStatement`del repositorio, del emisor FHIR y del consumidor? | Sí, empezando por el del repositorio (transacción, actualización condicional y búsquedas) |
| D-031 | ¿Qué debe hacer cada actor con un elemento**Must Support**? | Emisor: enviarlo si dispone del dato; Bus: poblarlo si viene en el origen y nunca descartarlo; consumidor: procesarlo sin exigirlo cuando es opcional |
| D-032 | ¿Cómo se limita el`Patient`publicado a lo que declara D-001? | Un perfil para el paciente publicado distinto del de entrada; mientras tanto, el subconjunto se declara en Arquitectura |
| D-033 | ¿Cómo queda la traza del mensaje de origen en los recursos publicados? | `meta.source`con el identificador del mensaje en el piloto;`Provenance`y auditoría IHE BALP después |

