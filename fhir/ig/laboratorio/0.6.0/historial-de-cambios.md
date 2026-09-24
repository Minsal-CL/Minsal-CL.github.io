# Historial de cambios - Guía de Implementación FHIR - Laboratorio Clínico v0.6.0

* [**Table of Contents**](toc.md)
* **Historial de cambios**

## Historial de cambios

# Historial de cambios

## Versión 0.6.0

### Alineación de Paciente, Profesional y Organización con NID

* Nueva dependencia `hl7.fhir.cl.minsal.nid` 0.4.9, agregada junto a `hl7.fhir.cl.clcore` 1.9.3.
* `PacienteLaboratorio` cambia su `Parent` de `CorePacienteCl` a `MINSALPaciente`. Se actualiza `PacienteEjemplo` con los datos obligatorios del nuevo perfil: identificador con `type`, nombre oficial, sexo registral, fecha de nacimiento, medio de contacto y las extensiones de identidad (`IdentidadDeGenero`, `nacionalidad`, `PaisOrigen`).
* `MinsalPractitionerLaboratorio` cambia su `Parent` de `CorePrestadorCl` a `MINSALPrestadorProfesional`. Se actualiza `ProfesionalSolicitanteEjemplo` agregando `birthDate` y la calificación `qualification[TituloProfesional]`, ambos ahora obligatorios.
* `OrganizacionParticipanteLaboratorio` cambia su `Parent` de `CoreOrganizacionCl` a `MINSALPrestadorOrganizacional`. Sin cambios en los ejemplos.

### ServiceRequest.category

* Se agrega el código SNOMED CT `108252007` "Laboratory procedure (procedure)" como entrada obligatoria de `category`, mediante slicing abierto. El código `http://terminology.hl7.org/CodeSystem/v2-0074#LAB` se mantiene como entrada adicional en los ejemplos existentes.

## Versión 0.5.1

### Correcciones post-publicación (v0.1.0 en interoperabilidad.minsal.cl)

* Dependencia CL-Core actualizada de `1.8.5` a `1.9.3`.
* Corregido `identifier[run].type.coding.code` en `ProfesionalSolicitanteEjemplo` (ahora `01`, con `system` fijado), por incompatibilidad con la nueva versión de CL-Core.
* `OML^O21` declarado como mensaje objetivo de esta guía para la solicitud de laboratorio; `ORM^O01` pasa a legacy. Se agrega a `mapeo-v2-fhir.md` el mapeo `SPM`/`SAC` → `MinsalEspecimenLaboratorio`, y se corrige la descripción de `MinsalEspecimenLaboratorio`, que mencionaba `SPM` como parte de `ORM^O01`.
* Corregida contradicción de alcance en `mapeo-v2-fhir.md`: la sección de mapeo del resultado atomizado (Caso de uso 3) aún la describía como fuera de alcance.
* Corregida imprecisión en `arquitectura.md`: la homologación terminológica del resultado aplica solo a los códigos (`DiagnosticReport.code`, `Observation.code`), no al contenido del PDF.
* Documentada en `arquitectura.md` la dualidad de `system` del RUN: el de paciente (`identifier[RUN]` de `PacienteLaboratorio`, dominio NID) y el de prestador (`identifier[run]` de `MinsalPractitionerLaboratorio`, dominio HPD/MPI) usan URI distintos.
* Reemplazado el código SNOMED CT inactivo `270426007` ("Did not attend - no reason") en `VSMotivoCancelacionSolicitudLaboratorio` por el CodeSystem local `CSMotivoAdministrativoCancelacionLaboratorio` (código `no-presentacion`), junto con `410543007` "Did not attend" como código aproximado adicional. Se actualiza el ejemplo `SolicitudCanceladaNoPresentacionEjemplo`.
* Fijada la edición SNOMED CT (Internacional) usada para expansión y validación de códigos.
* Declarados 4 recursos `NamingSystem` para los dominios de identificador usados en los ejemplos: `http://deis.minsal.cl/establecimientos`, `https://api.cl/system/run`, el RUN de paciente (dominio NID) y la orden agrupadora propia de esta guía.
* Validación end-to-end del flujo completo (solicitud, resultado atomizado y Bundle de resultado) contra un servidor de conformidad FHIR.

## Versión 0.5.0

### Perfil Bundle para el resultado (UC2/UC3)

* Nuevo perfil `MinsalBundleResultadoLaboratorio` (`Bundle`, tipo `transaction`), simétrico a `MinsalBundleSolicitudLaboratorio`. Slicing cerrado de `entry` por perfil de recurso: `informe` (1..1), `observacion` (0..*), y `paciente`, `organizacion`, `especimen` (opcionales).
* Invariante `resultado-observaciones-referenciadas`: si el Bundle incluye entradas de `Observation`, el informe debe referenciarlas todas mediante `result`.
* `ResultadoMultipleEjemplo` ahora usa este perfil y referencia sus tres observaciones atomizadas (`ObservacionHemoglobinaEjemplo`, `ObservacionGlicemiaCriticaEjemplo`, `ObservacionColesterolFonasaEjemplo`).
* Nuevo ejemplo `BundleResultadoMultipleEjemplo`.
* Nuevo ejemplo `ObservacionColesterolFonasaEjemplo`: resultado atomizado codificado con código FONASA puro (sin LOINC), para prestaciones de un solo resultado.

## Versión 0.4.0

### Perfil Observation para resultado atomizado (UC3)

* Nuevo perfil `MinsalObservacionLaboratorio` (`Observation`).
* Un panel de exámenes con varios analitos se representa con varias instancias de `Observation`, todas enlazadas mediante `basedOn` a la misma `ServiceRequest` de la prestación.
* `interpretation` reutiliza el CodeSystem internacional `v3-ObservationInterpretation` (HH/LL/H/L) para valores críticos.
* `valueQuantity` exige UCUM directo desde el LIS.
* `ResultadoDiagnosticoLaboratorio.result` ahora referencia explícitamente `MinsalObservacionLaboratorio`.
* Dos ejemplos nuevos: `ObservacionHemoglobinaEjemplo` (resultado numérico dentro de rango) y `ObservacionGlicemiaCriticaEjemplo` (valor crítico, `interpretation` = HH).

## Versión 0.3.1

### Repriorización de UC3 respecto a UC2

* El Caso de uso 2 (informe PDF) pasa a ser la única prioridad de entrega de esta fase. El Caso de uso 3 (resultado atomizado por prestación) pasa a prioridad de entrega secundaria, sin salir del alcance de la guía.
* Cambio de alcance y documentación únicamente; no se modifica ningún perfil FSH en esta versión.

## Versión 0.3.0

### Reenfoque de alcance

* Se prioriza la recepción del resultado de laboratorio por sobre la profundización del proceso interno de solicitud y toma de muestra. El Caso de uso 3 (resultado atomizado por prestación) pasa a tener la misma prioridad que el Caso de uso 2 (informe PDF).
* El Caso de uso 1 (creación de solicitud) se mantiene en sus dos modalidades ya publicadas (FHIR nativo, HL7 v2). Se aclara que el mismo `Bundle` de la solicitud puede incluir el o los `MinsalEspecimenLaboratorio` cuando el emisor ya conoce los datos de la muestra al momento de generarla.
* La profundización del proceso de solicitud y toma de muestra (actos intermedios, derivación entre establecimientos) queda documentada como fase futura, fuera del alcance de esta versión.

### Perfiles

* **`MinsalEspecimenLaboratorio`**: se retira la extensión `motivoRechazo` y el `ValueSet` `VSMotivoRechazoMuestraLaboratorio` (dependen de modelar la recepción y evaluación de la muestra, que queda para una fase futura). Se retira el ejemplo `EspecimenRechazadoEjemplo`.
* **`ResultadoDiagnosticoLaboratorio`**: `basedOn` pasa de `1..* MS` a `0..* MS`, para permitir un resultado sin una `ServiceRequest` previa registrada en el Bus.

### Ejemplos

* Nuevo `ResultadoMultipleEjemplo` (`ResultadoDiagnosticoLaboratorio`): un único informe (PDF embebido) para las cinco prestaciones de `BundleSolicitudMultipleEjemplo`.
* Nuevo `ResultadoIndependienteEjemplo` (`ResultadoDiagnosticoLaboratorio`): informe sin `basedOn`.
* Corrección de codificación de texto en `CancelacionEjemplo.fsh`.

### Documentación

* **Casos de uso**: se actualiza la tabla de alcance por fases. El Caso de uso 4 queda con un solo flujo (no presentación del paciente); se retira el flujo de rechazo de muestra. **Inicio**: se agrega referencia a la recepción del resultado atómico junto al informe PDF.

## Versión 0.2.1

### Perfiles

* **`MinsalBundleSolicitudLaboratorio` (nuevo)**: perfil de `Bundle`, tipo `transaction`, con slicing cerrado de `entry` por perfil de recurso: `solicitud` (1..*), y `paciente`, `profesional`, `organizacion` (0..1 cada uno, opcionales). Invariante `solicitud-requisition-compartido`: cuando hay más de una entrada de solicitud, todas deben compartir el mismo `requisition.system` y `requisition.value`. El ejemplo `BundleSolicitudMultipleEjemplo` ahora usa este perfil.
* **`MinsalServiceRequestLab`**: `requisition` pasa a must-support, junto con `requisition.system` y `requisition.value`. `system` se construye a partir del Código de Establecimiento DEIS del establecimiento asignador. Nueva extensión `motivoCancelacion`, para documentar el motivo cuando `status = #revoked` sin toma de muestra. Ligada a `VSMotivoCancelacionSolicitudLaboratorio`. Los ejemplos actualizan `requisition.system` usando el código DEIS real `116105`. `OrganizacionParticipanteLaboratorio.identifier.system` adopta `http://deis.minsal.cl/establecimientos`.
* **`MinsalEspecimenLaboratorio`**: nueva extensión `motivoRechazo`, para documentar el motivo cuando `status = #unsatisfactory`. Ligada a `VSMotivoRechazoMuestraLaboratorio`.

### Terminología

* Nuevo `VSMotivoRechazoMuestraLaboratorio`: subconjunto de tres códigos (`QS`, `RC`, `RM`) del catálogo HL7 v2 Tabla 0490.
* Nuevo `VSMotivoCancelacionSolicitudLaboratorio`: referencia el código SNOMED CT `270426007` ("Did not attend").

### Documentación

* **Casos de uso**: nuevo Caso de uso 4 (cancelación o anulación de solicitud), con los flujos de rechazo de muestra y no presentación del paciente.
* **Inicio**: se documenta el patrón de namespace por establecimiento para `requisition`.
* **Mapeo HL7 v2 a FHIR**: se agrega `ORC-4` (Placer Group Number) como el campo que se transforma a `requisition`.

### Corrección de mapeo

* Se corrige la referencia al campo agrupador de HL7 v2: es `ORC-4`, no `OBR-4`.

## Versión 0.2.0

### Perfiles

* **`PacienteLaboratorio`**: ahora extiende `CorePacienteCl` en lugar de `Patient` base. `identifier` incluye una slice `RUN` (0..1, opcional), con `type` fijo al código `01 "Run"` y `system` apuntando al identificador de RUN publicado por NID.
* **`OrganizacionParticipanteLaboratorio`**: ahora extiende `CoreOrganizacionCl` en lugar de `Organization` base. Los ejemplos usan un identificador con formato de Código de Establecimiento DEIS.
* **`MinsalPractitionerLaboratorio` (nuevo)**: extiende `CorePrestadorCl`. Se usa en `requester`, `performer` y `resultsInterpreter` de `MinsalServiceRequestLab` y `ResultadoDiagnosticoLaboratorio`.
* **`MinsalEspecimenLaboratorio` (nuevo)**: perfil de `Specimen` con identificador, estado, tipo, sujeto, referencia a la solicitud de origen, datos de recolección y datos de contenedor.

### Identificación de la guía

* `id` cambia de `cl.ejemplo.fhir.laboratorio` a `hl7.fhir.cl.minsal.laboratorio`.
* `publisher` cambia a `Unidad de Interoperabilidad - MINSAL`.
* Se agrega `jurisdiction`: Chile.

### Dependencias

* Se agrega dependencia con `hl7.fhir.cl.clcore` versión 1.8.5.

### Documentación

* Nueva página **Casos de uso**: actores del flujo, los dos puntos de integración (FHIR directo y HL7 v2 homologado), alcance por fases, y tres casos de uso con diagramas de secuencia.
* **Mapeo HL7 v2 a FHIR** ampliado: se agrega `OML^O21` como mensaje equivalente a `ORM^O01`, y una sección conceptual sobre el resultado atomizado por prestación.
* **Arquitectura** ampliada: jerarquía normativa de la guía, diagrama de flujo de integración con el Bus, reglas de resolución de identidad mediante MPI.
* Se adopta la plantilla de publicación `hl7chile-ig-template`, con la identidad visual de MINSAL y HL7 Chile.

## Versión 0.1.0

Versión inicial de la guía. Incluye los perfiles base de solicitud (`MinsalServiceRequestLab`) y resultado (`ResultadoDiagnosticoLaboratorio`) de laboratorio clínico, sin dependencia declarada de CL-Core, y las páginas Inicio y Mapeo HL7 v2 a FHIR.

