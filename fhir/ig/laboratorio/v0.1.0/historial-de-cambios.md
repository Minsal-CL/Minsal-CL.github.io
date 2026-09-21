# Historial de cambios - Guía de Implementación FHIR - Laboratorio Clínico v0.3.0

* [**Table of Contents**](toc.md)
* **Historial de cambios**

## Historial de cambios

# Historial de cambios

## Versión 0.3.0

### Reenfoque de alcance

* Se prioriza la recepción del resultado de laboratorio por sobre la profundización del proceso interno de solicitud y toma de muestra. El Caso de uso 3 (resultado atomizado por prestación) pasa de "Fase 2, a futuro" a tener la misma prioridad que el Caso de uso 2 (informe PDF) en esta fase; los perfiles de `Observation` para el resultado atómico quedan en diseño.
* El Caso de uso 1 (creación de solicitud) se mantiene en sus dos modalidades ya publicadas (FHIR nativo, HL7 v2), sin agregar actos intermedios de aceptación de la muestra en el laboratorio ni escenarios de derivación entre establecimientos distintos. Se aclara que el mismo `Bundle` de la solicitud puede incluir el o los `MinsalEspecimenLaboratorio` cuando el emisor ya conoce los datos de la muestra al momento de generarla.
* La profundización del proceso de solicitud y toma de muestra (actos intermedios, derivación entre establecimientos) queda documentada como Fase 2, a futuro, fuera del alcance de esta versión.

### Perfiles

#### MinsalEspecimenLaboratorio

* Se retira la extensión `motivoRechazo` (`specimen-reject-reason`) y el `ValueSet` `VSMotivoRechazoMuestraLaboratorio`: dependen de modelar la recepción y evaluación de la muestra por parte del laboratorio, que queda para la Fase 2. El motivo de cancelación por no presentación del paciente (`MinsalServiceRequestLab.motivoCancelacion`) no depende de eso y se mantiene.
* Se retira el ejemplo `EspecimenRechazadoEjemplo`, ligado a la extensión retirada.

#### ResultadoDiagnosticoLaboratorio

* `basedOn` pasa de `1..* MS` a `0..* MS`: un laboratorio puede emitir un resultado (PDF y/o dato atómico) sin una `ServiceRequest` previa registrada en el Bus, cuando el examen se originó y procesó íntegramente en su propio sistema. Cuando exista una solicitud registrada, se recomienda referenciarla siempre mediante `basedOn` (ver `^comment` del elemento y "Definición de alcance" en Casos de uso, Caso de uso 2).

### Ejemplos

* Nuevo `ResultadoMultipleEjemplo` (`ResultadoDiagnosticoLaboratorio`): primer ejemplo de informe de resultado de la guía. Responde con un único informe (PDF embebido) a las cinco prestaciones de `BundleSolicitudMultipleEjemplo`, reflejando el patrón de informe único por orden agrupada.
* Nuevo `ResultadoIndependienteEjemplo` (`ResultadoDiagnosticoLaboratorio`): informe sin `basedOn`, para el caso de un laboratorio que envía su resultado sin solicitud previa registrada en el Bus.
* Se corrige una corrupción de doble codificación UTF-8 en `CancelacionEjemplo.fsh` (afectaba tildes y "ó"/"í" en varios campos de texto).

### Documentación

* **Casos de uso**: se actualiza la tabla "Alcance por fases" y la introducción de UC3 para reflejar el reenfoque. Caso de uso 4 queda con un solo flujo (no presentación del paciente); se retira el flujo de rechazo de muestra y se reduce la tabla de terminología de cancelación a un solo motivo. Se reemplaza el "Punto abierto" sobre `basedOn` por "Definición de alcance": el resultado puede recibirse sin solicitud previa registrada en el Bus. **Inicio**: se agrega una referencia a la recepción del resultado atómico junto al informe PDF.

## Versión 0.2.1

### Perfiles

#### MinsalBundleSolicitudLaboratorio (nuevo)

* Perfil propio de `Bundle`, tipo `transaction`, con slicing cerrado de `entry` por perfil de recurso: `solicitud` (`MinsalServiceRequestLab`, 1..*), y `paciente`, `profesional`, `organizacion` (0..1 cada uno, opcionales, para el establecimiento que decida enviarlos junto con la transacción en vez de asumir su preexistencia).
* Invariante `solicitud-requisition-compartido`: cuando hay más de una entrada de solicitud, todas deben compartir el mismo `requisition.system` y `requisition.value`.
* El ejemplo `BundleSolicitudMultipleEjemplo` ahora usa este perfil en vez del `Bundle` genérico de FHIR R4.

#### MinsalServiceRequestLab

* `requisition` pasa a must-support (`MS`), junto con `requisition.system` y `requisition.value`, para exigir que el identificador agrupador viaje siempre completo. `system` se construye a partir del Código de Establecimiento DEIS del establecimiento asignador; `value` conserva el número local sin modificar. Este patrón evita colisiones cuando distintos establecimientos reutilizan el mismo valor local a escala nacional.
* Nueva extensión `motivoCancelacion` (`http://hl7.org/fhir/StructureDefinition/request-statusReason`, 0..1 MS), para documentar el motivo cuando `status = #revoked` sin toma de muestra (por ejemplo, el paciente no se presenta). Ligada a `VSMotivoCancelacionSolicitudLaboratorio` (extensible).
* Los ejemplos de la solicitud múltiple y de cancelación actualizan `requisition.system` al patrón de namespace por establecimiento, usando el código DEIS real y vigente `116105` (Hospital Dr. César Garavagno Burotto, Talca), en vez de un valor genérico. El mismo establecimiento se usa como organización de origen y como laboratorio ejecutor (`EstablecimientoOrigenEjemplo`, `LaboratorioEjecutorEjemplo`) en vez de organizaciones ficticias.
* `OrganizacionParticipanteLaboratorio.identifier.system` adopta `http://deis.minsal.cl/establecimientos`, el mismo URI que ya usan las guías de Tiempos de Espera Quirúrgico e IG_Urgencia para el Código DEIS del establecimiento, en vez de un URI propio de esta guía. CoreOrganizacionCl no fija aún un `system` oficial para este dato.

#### MinsalEspecimenLaboratorio

* Nueva extensión `motivoRechazo` (`http://hl7.org/fhir/StructureDefinition/specimen-reject-reason`, 0..1 MS), para documentar el motivo cuando `status = #unsatisfactory`. Ligada a `VSMotivoRechazoMuestraLaboratorio` (extensible).

### Terminología

* Nuevo `VSMotivoRechazoMuestraLaboratorio`: subconjunto de tres códigos (`QS`, `RC`, `RM`) del catálogo oficial HL7 v2 Tabla 0490 (Specimen Reject Reason), sin definir códigos propios.
* Nuevo `VSMotivoCancelacionSolicitudLaboratorio`: referencia el código SNOMED CT `270426007` ("Did not attend"), sin definir códigos propios.

### Documentación

* **Casos de uso**: nuevo Caso de uso 4 (cancelación o anulación de solicitud), con los dos flujos de rechazo de muestra y no presentación del paciente, y su terminología.
* **Inicio**: se aclara que `requisition` es obligatorio en `MinsalServiceRequestLab`, se documenta el patrón de namespace por establecimiento, y se explicita que el Bundle de ejemplo asume preexistentes al paciente, al profesional y al establecimiento.
* **Mapeo HL7 v2 a FHIR**: se agrega `ORC-4` (Placer Group Number) como el campo que se transforma a `requisition`, aclarando que no debe confundirse con `OBR-4` (examen solicitado).

### Corrección de mapeo

* Se corrige la referencia al campo agrupador de HL7 v2: es `ORC-4` (Placer Group Number), no `OBR-4` (Universal Service Identifier, usado para el código del examen).

## Versión 0.2.0

### Perfiles

#### PacienteLaboratorio

* Ahora extiende `CorePacienteCl` (CL-Core) en lugar de `Patient` base.
* `identifier` incluye una slice `RUN` (0..1, opcional), con `type` fijo al código `01 "Run"` del CodeSystem `CSTipoIdentificador` de CL-Core y `system` apuntando al identificador de RUN publicado por NID (`.../fhir/ig/nid/paciente/identificador/run`). El ejemplo `PacienteEjemplo` usa esta slice con un RUN de formato válido (`12345678-5`), en vez de un identificador genérico sin tipo ni sistema reconocible.

#### OrganizacionParticipanteLaboratorio

* Ahora extiende `CoreOrganizacionCl` (CL-Core) en lugar de `Organization` base.
* Los ejemplos `EstablecimientoOrigenEjemplo` y `LaboratorioEjecutorEjemplo` usan un identificador con formato de Código de Establecimiento DEIS (numérico, según el catálogo público de [establecimientos de salud vigentes](https://datos.gob.cl/dataset/establecimientos-de-salud-vigentes)), en vez de un código de marcador de posición. `CoreOrganizacionCl` no fija aún un `system` oficial para este identificador, por lo que el URI usado es provisional, igual que el definido para el catálogo FONASA en esta misma guía.

#### MinsalPractitionerLaboratorio (nuevo)

* Extiende `CorePrestadorCl` (CL-Core).
* Se usa de forma consistente en `requester`, `performer` y `resultsInterpreter` de `MinsalServiceRequestLab` y `ResultadoDiagnosticoLaboratorio`, en lugar de referenciar directamente el recurso base `Practitioner`.
* El ejemplo `ProfesionalSolicitanteEjemplo` usa la slice `identifier[run]` ya definida por `CorePrestadorCl` (tipo `1 "RUN"` del CodeSystem `CSIdentificadores` de CL-Core) con un RUN de formato válido (`9876543-3`) y el mismo `system` de referencia que usa la guía MPI/HPD de MINSAL para el RUN de prestadores, en vez de un identificador genérico.

#### MinsalEspecimenLaboratorio (nuevo)

* Perfil de `Specimen` con identificador, estado, tipo, sujeto, referencia a la solicitud de origen, datos de recolección (recolector, fecha, sitio anatómico, método) y datos de contenedor.
* Referenciado desde `SolicitudLaboratorio.specimen` y `ResultadoLaboratorio.specimen`.

### Identificación de la guía

* `id` cambia de `cl.ejemplo.fhir.laboratorio` a `hl7.fhir.cl.minsal.laboratorio`.
* `publisher` cambia a `Unidad de Interoperabilidad - MINSAL`.
* Se agrega `jurisdiction`: Chile.

### Dependencias

* Se agrega dependencia con `hl7.fhir.cl.clcore` versión 1.8.5.

### Documentación

* Nueva página **Casos de uso**: actores del flujo, los dos puntos de integración (FHIR directo y HL7 v2 homologado), alcance por fases, y tres casos de uso con diagramas de secuencia (creación de solicitud con variantes FHIR y HL7 v2, recepción de resultado con informe PDF, y resultado atomizado por prestación documentado como fase futura).
* **Mapeo HL7 v2 a FHIR** ampliado: se agrega `OML^O21` como mensaje equivalente a `ORM^O01` para la solicitud, y una sección conceptual sobre el resultado atomizado por prestación (fase futura), incluyendo los puntos de diseño pendientes (homologación de unidades UCUM, valores críticos, convivencia con el PDF).
* **Arquitectura** ampliada: jerarquía normativa de la guía (HL7 Internacional, CL-Core, NID), diagrama de flujo de integración con el Bus, reglas de resolución de identidad mediante MPI y diagrama de uso de la identidad resuelta.
* Todos los diagramas de la guía se representan con Mermaid (antes en texto plano).
* Se adopta la plantilla de publicación `hl7chile-ig-template`, con la identidad visual de MINSAL y HL7 Chile.

## Versión 0.1.0

Versión inicial de la guía. Incluye los perfiles base de solicitud (`MinsalServiceRequestLab`) y resultado (`ResultadoDiagnosticoLaboratorio`) de laboratorio clínico, sin dependencia declarada de CL-Core, y las páginas Inicio y Mapeo HL7 v2 a FHIR.

