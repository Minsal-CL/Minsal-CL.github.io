# Casos de uso - Guía de Implementación FHIR - Laboratorio Clínico v0.6.0

* [**Table of Contents**](toc.md)
* **Casos de uso**

## Casos de uso

# Casos de uso

## Objetivo

Ejemplificar los flujos de mensajería asociados al intercambio de solicitudes y resultados de laboratorio clínico, mostrando para cada actor qué mensaje debe enviar y qué respuesta debe recibir.

## Actores

| | |
| :--- | :--- |
| Establecimiento de origen (HIS / RCE / CPOE) | Genera la solicitud de laboratorio y, según el acuerdo de integración, recibe el resultado |
| Bus de Interoperabilidad MINSAL | Valida el mensaje, homologa estructura (HL7 v2 a FHIR) y terminología (FONASA a LOINC), y transforma a los recursos de esta guía |
| Servicio terminológico | Valida o traduce los códigos de prestación (FONASA, LOINC, SNOMED cuando corresponda) |
| MPI (Índice Maestro de Pacientes) | Resuelve la identidad del paciente; ver el detalle en[Arquitectura](arquitectura.md) |
| Laboratorio ejecutor (LIS) | Procesa la muestra y genera el resultado, incluyendo el informe PDF |
| Portal Ciudadano | Consume el resultado final publicado en FHIR |

## Puntos de integración

Esta guía define dos puntos de integración independientes hacia el mismo Bus:

1. Punto FHIR directo. Sistemas que ya generan recursos FHIR nativos entregan directamente`MinsalServiceRequestLab`o`ResultadoDiagnosticoLaboratorio`mediante`POST`a la API del Bus.
1. Punto HL7 v2 homologado. Sistemas que solo generan mensajes HL7 v2 (`ORM^O01`,`OML^O21`,`ORU^R01`) se conectan a un gateway del Bus que homologa la estructura y los códigos antes de transformar a FHIR. El detalle campo a campo está en[Mapeo HL7 v2 a FHIR](mapeo-v2-fhir.md).

Ambos puntos convergen en el mismo modelo canónico definido por esta guía. Un establecimiento no necesita saber si otro participante se integra por el camino FHIR o por el camino HL7 v2.

## Alcance por fases

Esta guía prioriza la estandarización del **resultado** de laboratorio, que es el punto donde el Bus de Interoperabilidad aporta mayor valor con menor dependencia de la madurez de integración de cada establecimiento. El proceso interno de solicitud y toma de muestra se cubre en su forma más simple (dos modalidades de envío, sin distinguir actos intermedios de aceptación en bandeja ni escenarios de derivación entre establecimientos), y se profundizará en una fase posterior, cuando existan acuerdos de integración más maduros con los sistemas HIS y LIS.

| | | |
| :--- | :--- | :--- |
| Fase 1 (alcance de esta versión) | Creación de solicitud (UC1, en sus dos modalidades) y recepción del resultado, con prioridad de entrega en el informe PDF (UC2); el resultado atómico por prestación (UC3) se diseña en paralelo | UC1 y UC2 en desarrollo, con perfiles y ejemplos publicados; UC3 en diseño, con prioridad de entrega secundaria respecto a UC2, como desarrollo propio de esta guía |
| Fase 2 (a futuro) | Profundización del proceso de solicitud y toma de muestra: actos intermedios de aceptación de la muestra en el laboratorio, y escenarios de derivación entre establecimientos distintos | Fuera del alcance de esta versión |

> Definición de alcance: `ResultadoDiagnosticoLaboratorio.basedOn` no es obligatorio. La implementación no exige siempre solicitud y resultado en conjunto: un laboratorio puede enviar su resultado (PDF y/o dato atómico) sin una solicitud previa registrada en el Bus, cuando el examen se originó y se procesó íntegramente en su propio sistema. Cuando el establecimiento sí genera y registra la solicitud en el Bus, se recomienda referenciarla siempre mediante `basedOn`, ya que permite trazabilidad y saber que un paciente está en lista de espera de un examen. MINSAL levantará vía oficio a los establecimientos la información sobre cómo cada uno genera sus solicitudes (en origen, integrada, o directo en el laboratorio), lo que podrá afinar esta recomendación a futuro sin cambiar la cardinalidad ya definida.

## Caso de uso 1: Creación de solicitud de laboratorio

Un establecimiento genera una o más prestaciones de laboratorio para un paciente y las envía al Bus de Interoperabilidad, donde quedan disponibles para el laboratorio ejecutor y para consulta posterior (por ejemplo, al recibir el resultado).

Recurso focal: `MinsalServiceRequestLab` (perfil de `ServiceRequest`). Cuando la orden agrupa varias prestaciones, se crea un `ServiceRequest` por cada una, compartiendo el mismo `requisition` (ver "Solicitud con múltiples prestaciones" en [Inicio](index.md)). Cuando el emisor ya conoce los datos de la muestra al momento de generar la solicitud, el mismo `Bundle` puede incluir también el o los recursos `MinsalEspecimenLaboratorio` correspondientes; esta guía no exige un acto separado para asociar la muestra.

### UC1-a: Establecimiento con integración FHIR nativa

1. El establecimiento resuelve la identidad del paciente contra el MPI (directamente o a través del Bus, según el acuerdo de integración) y obtiene o confirma`PacienteLaboratorio`.
1. El establecimiento construye uno o más recursos`MinsalServiceRequestLab`, referenciando al paciente, al profesional solicitante (`MinsalPractitionerLaboratorio`) y a la organización de origen (`OrganizacionParticipanteLaboratorio`), junto con el o los`MinsalEspecimenLaboratorio`cuando ya se conocen.
1. El establecimiento envía un`Bundle`de tipo`transaction`con`POST`a la raíz del servidor del Bus.
1. El Bus valida los recursos contra los perfiles de esta guía y, si son correctos, los registra y responde con el estado de cada entrada.

sequenceDiagram participant Est as Establecimiento (FHIR) participant Bus as Bus de Interoperabilidad Est->>Bus: POST Bundle(transaction) [MinsalServiceRequestLab] Bus->>Bus: valida contra perfiles de esta guía Bus-->>Est: 200 OK / OperationOutcome

### UC1-b: Establecimiento con integración HL7 v2

1. El establecimiento genera un mensaje`ORM^O01`u`OML^O21`con la solicitud, indicando en`OBR-4`el código de cada prestación y su sistema de origen (FONASA, LOINC o local).
1. El mensaje llega al gateway HL7 v2 del Bus, que valida su estructura.
1. El Bus consulta al servicio terminológico para validar u homologar el código de la prestación, y consulta al MPI para resolver la identidad del paciente (ver[Arquitectura](arquitectura.md)).
1. El Bus transforma el mensaje a uno o más recursos`MinsalServiceRequestLab`, según las reglas de[Mapeo HL7 v2 a FHIR](mapeo-v2-fhir.md), y los deja disponibles en el mismo modelo canónico que UC1-a.
1. El Bus responde al establecimiento con un`ACK`HL7 v2 indicando la recepción, sin o con errores.

sequenceDiagram participant Est as Establecimiento (v2) participant Bus as Bus de Interoperabilidad participant Term as Servicio Terminológico participant MPI as MPI Est->>Bus: ORM^O01 / OML^O21 Bus->>Term: valida código FONASA Term-->>Bus: código homologado Bus->>MPI: resuelve identidad MPI-->>Bus: identidad confirmada Bus->>Bus: transforma a MinsalServiceRequestLab Bus-->>Est: ACK

### Operaciones

```
POST [URL_Base]/ServiceRequest

```

Para una solicitud con múltiples prestaciones, se recomienda `Bundle` de tipo `transaction` conteniendo un `ServiceRequest` por prestación, todos con el mismo `requisition`:

```
POST [URL_Base]/

```

Consulta de una solicitud existente, por ejemplo para que el laboratorio recupere las prestaciones pendientes:

```
GET [URL_Base]/ServiceRequest?requisition=[valor_requisition]

```

## Caso de uso 2: Recepción de resultado con informe PDF

El laboratorio ejecutor procesa la muestra y genera un resultado, que incluye al menos el informe en PDF. Este caso de uso corresponde a la Fase 1 de esta guía: solicitud y resultado con PDF, sin resultado atomizado por prestación.

Recurso focal: `ResultadoDiagnosticoLaboratorio` (perfil de `DiagnosticReport`), con el PDF codificado en `presentedForm.data`. Ver el ejemplo `ResultadoMultipleEjemplo`: un informe único que responde a las cinco prestaciones agrupadas de `BundleSolicitudMultipleEjemplo` mediante `basedOn`. Ver también el ejemplo `ResultadoIndependienteEjemplo`: un informe que llega sin ninguna solicitud previa registrada en el Bus (`basedOn` ausente), caso de un laboratorio cuyo examen se originó y procesó íntegramente en su propio sistema.

Cuando el laboratorio informa el resultado atómico junto con el PDF (Caso de uso 3), ambos se envían en un único `Bundle` de tipo `transaction`, perfil `MinsalBundleResultadoLaboratorio`, simétrico al de la solicitud (`MinsalBundleSolicitudLaboratorio`): una entrada `informe` (`ResultadoDiagnosticoLaboratorio`) y una o más entradas `observacion` (`MinsalObservacionLaboratorio`). Un invariante propio del Bundle (`resultado-observaciones-referenciadas`) exige que el informe referencie, mediante `result`, a todas las observaciones incluidas en el mismo Bundle, para que no queden resultados atomizados sueltos sin vínculo desde el informe. Ver el ejemplo `BundleResultadoMultipleEjemplo`: agrupa `ResultadoMultipleEjemplo` con dos de sus cinco resultados atomizados (Hemoglobina y Glucosa), reflejando que un establecimiento puede adoptar el dato atómico de forma parcial, analito por analito, sin que eso afecte la entrega del PDF completo.

1. El laboratorio genera el resultado. Si existe una solicitud registrada en el Bus (`MinsalServiceRequestLab`), la referencia en`basedOn`; si el examen se originó y procesó íntegramente en el propio laboratorio, sin solicitud previa registrada en el Bus,`basedOn`se omite (ver "Definición de alcance" más arriba).
1. Si el origen es HL7 v2, el mensaje`ORU^R01`incluye el PDF en Base64 en`OBX-5`(tipo`ED`); el Bus lo transforma a`DiagnosticReport.presentedForm`según[Mapeo HL7 v2 a FHIR](mapeo-v2-fhir.md).
1. Si el origen es FHIR nativo, el laboratorio construye directamente`ResultadoDiagnosticoLaboratorio`con`presentedForm`.
1. Si`basedOn`está presente, el Bus valida que resuelva contra una solicitud existente; publica el resultado en el modelo canónico en ambos casos.
1. El Portal Ciudadano y otros consumidores autorizados consultan el resultado por paciente o, cuando exista, por solicitud.

sequenceDiagram participant LIS as Laboratorio (LIS) participant Bus as Bus de Interoperabilidad participant Portal as Portal Ciudadano LIS->>Bus: ORU^R01 (PDF Base64) / POST DiagnosticReport Bus->>Bus: valida basedOn -> ServiceRequest (si viene informado) Bus->>Bus: transforma a ResultadoDiagnosticoLaboratorio Bus-->>LIS: ACK / 200 Portal->>Bus: GET DiagnosticReport Bus-->>Portal: resultado + PDF

### Operaciones

```
POST [URL_Base]/DiagnosticReport

```

Cuando el establecimiento informa también el resultado atómico (Caso de uso 3), se recomienda `Bundle` de tipo `transaction`, perfil `MinsalBundleResultadoLaboratorio`, con el informe y sus observaciones asociadas:

```
POST [URL_Base]/

```

Consulta del resultado por paciente, para el Portal Ciudadano u otro consumidor autorizado:

```
GET [URL_Base]/DiagnosticReport?patient.identifier=[identificador_paciente]

```

Consulta del resultado asociado a una solicitud específica:

```
GET [URL_Base]/DiagnosticReport?based-on=[id_ServiceRequest]

```

## Caso de uso 3: Resultado atomizado por prestación

La prioridad de entrega de esta fase es el Caso de uso 2 (informe PDF): es el mecanismo que todo laboratorio debe soportar como mínimo para publicar su resultado. Este caso de uso sigue dentro del alcance de la guía, con prioridad de entrega secundaria respecto a UC2, y se define como desarrollo propio de Laboratorio, sin depender de la sincronización con la propuesta de otra guía de dominio. Un establecimiento puede optar por PDF, por resultado atómico, o por ambos según su capacidad de integración.

A diferencia de UC2, donde el PDF se transporta como documento opaco, el resultado atomizado representa cada resultado individual como un recurso `Observation` (perfil `MinsalObservacionLaboratorio`), referenciado desde `DiagnosticReport.result`. Un panel de exámenes con varios analitos (por ejemplo, Hemograma) se representa con varias instancias de `Observation`, una por analito, todas enlazadas mediante `Observation.basedOn` a la misma `ServiceRequest` de la prestación; el agrupamiento del panel se resuelve por esa referencia compartida, sin usar `Observation.hasMember` ni `Observation.component`.

1. El laboratorio genera el informe y, para las prestaciones que decide informar de forma atómica, sus resultados individuales (`Observation`, uno por analito).
1. Ambos se envían juntos en un único`Bundle`de tipo`transaction`, perfil`MinsalBundleResultadoLaboratorio`(ver ejemplo`BundleResultadoMultipleEjemplo`).
1. El Bus valida el Bundle contra los perfiles de esta guía, incluido el invariante`resultado-observaciones-referenciadas`: el informe debe referenciar, mediante`result`, a todas las`Observation`incluidas en el mismo Bundle.
1. El Bus transforma y publica ambos recursos en el modelo canónico; responde con el estado de cada entrada.
1. El Portal Ciudadano u otro consumidor autorizado puede consultar el resultado atomizado de forma independiente del PDF, por ejemplo por paciente y código LOINC.

sequenceDiagram participant LIS as Laboratorio (LIS) participant Bus as Bus de Interoperabilidad participant Portal as Portal Ciudadano LIS->>Bus: ORU^R01 (múltiples OBX) / POST Bundle(transaction) [informe + observaciones] Bus->>Bus: valida informe.result referencia todas las Observation (resultado-observaciones-referenciadas) Bus->>Bus: transforma a ResultadoDiagnosticoLaboratorio + MinsalObservacionLaboratorio Bus-->>LIS: ACK / 200 Portal->>Bus: GET Observation?patient=[id_paciente]&code=[codigo_LOINC] Bus-->>Portal: resultado atomizado por analito

El perfil resuelve los siguientes puntos de diseño:

* Homologación de cada resultado individual a un código LOINC o FONASA en `Observation.code`, según el tipo de prestación (ver ejemplos `ObservacionHemoglobinaEjemplo` y `ObservacionColesterolFonasaEjemplo`): 
* Prestaciones multianalito (paneles, por ejemplo Hemograma): un código FONASA identifica la prestación completa, pero no cada analito que produce (hemoglobina, hematocrito, leucocitos, etc.); usar ese mismo código FONASA como `Observation.code` en cada analito los dejaría indistinguibles entre sí. Estos casos requieren código LOINC por analito.
* Prestaciones de un solo resultado (por ejemplo Glucosa, Bilirrubina total, Nitrógeno ureico, Colesterol total): el código FONASA de la prestación identifica sin ambigüedad ese único valor, por lo que puede usarse directamente como `Observation.code`, sin necesidad de homologar a LOINC.
 
* Unidades de medida en UCUM, exigidas directamente desde el LIS (`Observation.valueQuantity.system` fijo a `unitsofmeasure.org`), sin tabla de homologación intermedia en esta fase.
* Valores críticos mediante `Observation.interpretation`, reutilizando el CodeSystem internacional `v3-ObservationInterpretation` (`HH`/`LL`/`H`/`L`), sin crear código propio MINSAL.
* Rango de referencia (`Observation.referenceRange`), con `low`, `high` o `text`.
* Empaquetamiento junto al informe en un único `Bundle` transaccional (`MinsalBundleResultadoLaboratorio`, ver Caso de uso 2), en vez de un envío separado del informe y de cada resultado atomizado.

Queda pendiente de diseño, para una fase posterior: la trazabilidad entre el resultado atomizado y el PDF firmado cuando ambos coexistan (para evitar que difieran entre sí), y el filtrado de resultados por área del laboratorio (`category:studyType`/`category:specialty`, deferidos a Fase 2).

Los mensajes HL7 v2 de origen para este caso siguen siendo `ORU^R01`, pero con múltiples segmentos `OBX` por resultado individual en lugar de un único `OBX` con el PDF. El mapeo campo a campo de `OBX` ya está definido en [Mapeo HL7 v2 a FHIR](mapeo-v2-fhir.md) y aplica también a este caso.

## Caso de uso 4: Cancelación o anulación de una solicitud

Una solicitud puede cancelarse antes de que el laboratorio emita un resultado. En esta fase, la guía cubre la causa que depende únicamente del `ServiceRequest`, sin requerir modelar la recepción o evaluación de la muestra por parte del laboratorio: el paciente no concurre a la toma de muestra.

1. El paciente no concurre a la toma de muestra. No existe ningún`Specimen`asociado a la solicitud.
1. El establecimiento o el laboratorio actualiza`MinsalServiceRequestLab.status = #revoked`y documenta el motivo mediante la extensión`request-statusReason`, con el código administrativo MINSAL correspondiente a "no presentación".

sequenceDiagram participant Est as Establecimiento / LIS participant Bus as Bus de Interoperabilidad Est->>Bus: PUT ServiceRequest (status=revoked, motivo=no-presentacion) Bus->>Bus: valida contra MinsalServiceRequestLab Bus-->>Est: 200 OK

### Terminología de cancelación

| | | | |
| :--- | :--- | :--- | :--- |
| Paciente no se presenta | `MinsalServiceRequestLab` | `request-statusReason` | `no-presentacion`"Paciente no se presenta (sin motivo informado)" (CodeSystem MINSAL`CSMotivoAdministrativoCancelacionLaboratorio`), acompañado de SNOMED CT`410543007`"Did not attend" como codificación aproximada |

Este motivo usa un código administrativo propio de MINSAL, no un código clínico inventado: se creó porque el concepto SNOMED CT originalmente usado para este propósito (`270426007` "Did not attend - no reason") fue inactivado por SNOMED International sin reemplazo directo, al tratarse de un concepto que SNOMED International considera administrativo y fuera del foco de la jerarquía de hallazgos clínicos. El concepto SNOMED CT activo más cercano (`410543007` "Did not attend") no cubre por sí solo la ausencia de motivo, por lo que se agrega como segunda codificación aproximada, no como reemplazo exacto. La extensión `request-statusReason` es una extensión oficial publicada por HL7, no una definición propia de MINSAL; lo propio de MINSAL es solo el código del motivo. El binding del ValueSet `VSMotivoCancelacionSolicitudLaboratorio` es extensible: sugiere este código como el motivo esperado, sin impedir usar otro código si se identifica un motivo no cubierto.

El rechazo de una muestra ya recibida por el laboratorio (por ejemplo, por cantidad insuficiente, coagulación o etiquetado defectuoso) no se cubre en esta fase, porque depende de modelar la recepción y evaluación de la muestra por parte del laboratorio, que queda para una fase posterior (ver "Alcance por fases").

