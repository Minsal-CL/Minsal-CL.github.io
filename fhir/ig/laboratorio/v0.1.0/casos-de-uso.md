# Casos de uso - Guía de Implementación FHIR - Laboratorio Clínico v0.2.1

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

La guía define una entrada gradual de mensajes:

| | | |
| :--- | :--- | :--- |
| Fase 1 (alcance de esta versión) | Creación de solicitud (UC1) y resultado con informe PDF (UC2) | En desarrollo, con perfiles y ejemplos publicados |
| Fase 2 (a futuro) | Resultado atomizado por prestación (UC3) | Pendiente de diseño, descrito de forma conceptual en esta página |

> Punto abierto: aún no está definido si la implementación exigirá siempre solicitud y resultado en conjunto, o si el resultado podrá recibirse sin una solicitud previa registrada en el Bus. Recibir solo resultados simplifica la integración inicial, pero sin la solicitud no es posible saber que un paciente está en lista de espera de un examen. MINSAL levantará esta información formalmente vía oficio a los establecimientos (para saber si generan solicitud en origen, si la tienen integrada, o si la ingresan directamente en el laboratorio) antes de definir el flujo con mayor precisión. Mientras no se resuelva, esta guía documenta UC1 y UC2 como flujos que pueden operar de forma independiente (ver "Resultados de laboratorio" en [Inicio](index.md)), pero recomienda registrar siempre la solicitud cuando el establecimiento la genere.

## Caso de uso 1: Creación de solicitud de laboratorio

Un establecimiento genera una o más prestaciones de laboratorio para un paciente y las envía al Bus de Interoperabilidad, donde quedan disponibles para el laboratorio ejecutor y para consulta posterior (por ejemplo, al recibir el resultado).

Recurso focal: `MinsalServiceRequestLab` (perfil de `ServiceRequest`). Cuando la orden agrupa varias prestaciones, se crea un `ServiceRequest` por cada una, compartiendo el mismo `requisition` (ver "Solicitud con múltiples prestaciones" en [Inicio](index.md)).

### UC1-a: Establecimiento con integración FHIR nativa

1. El establecimiento resuelve la identidad del paciente contra el MPI (directamente o a través del Bus, según el acuerdo de integración) y obtiene o confirma`PacienteLaboratorio`.
1. El establecimiento construye uno o más recursos`MinsalServiceRequestLab`, referenciando al paciente, al profesional solicitante (`MinsalPractitionerLaboratorio`) y a la organización de origen (`OrganizacionParticipanteLaboratorio`).
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

Recurso focal: `ResultadoDiagnosticoLaboratorio` (perfil de `DiagnosticReport`), con el PDF codificado en `presentedForm.data`.

1. El laboratorio genera el resultado, referenciando en`basedOn`la solicitud original (`MinsalServiceRequestLab`).
1. Si el origen es HL7 v2, el mensaje`ORU^R01`incluye el PDF en Base64 en`OBX-5`(tipo`ED`); el Bus lo transforma a`DiagnosticReport.presentedForm`según[Mapeo HL7 v2 a FHIR](mapeo-v2-fhir.md).
1. Si el origen es FHIR nativo, el laboratorio construye directamente`ResultadoDiagnosticoLaboratorio`con`presentedForm`.
1. El Bus valida que`basedOn`resuelva contra una solicitud existente y publica el resultado en el modelo canónico.
1. El Portal Ciudadano y otros consumidores autorizados consultan el resultado por paciente o por solicitud.

sequenceDiagram participant LIS as Laboratorio (LIS) participant Bus as Bus de Interoperabilidad participant Portal as Portal Ciudadano LIS->>Bus: ORU^R01 (PDF Base64) / POST DiagnosticReport Bus->>Bus: valida basedOn -> ServiceRequest Bus->>Bus: transforma a ResultadoDiagnosticoLaboratorio Bus-->>LIS: ACK / 200 Portal->>Bus: GET DiagnosticReport Bus-->>Portal: resultado + PDF

### Operaciones

```
POST [URL_Base]/DiagnosticReport

```

Consulta del resultado por paciente, para el Portal Ciudadano u otro consumidor autorizado:

```
GET [URL_Base]/DiagnosticReport?patient.identifier=[identificador_paciente]

```

Consulta del resultado asociado a una solicitud específica:

```
GET [URL_Base]/DiagnosticReport?based-on=[id_ServiceRequest]

```

## Caso de uso 3 (Fase 2, a futuro): Resultado atomizado por prestación

Este caso de uso está fuera del alcance de la versión actual de la guía. Se documenta aquí de forma conceptual porque corresponde al siguiente paso natural después de consolidar UC1 y UC2, y porque condiciona decisiones de perfilamiento que conviene anticipar (por ejemplo, la estructura de `DiagnosticReport.result`).

A diferencia de UC2, donde el PDF se transporta como documento opaco, el resultado atomizado exige representar cada resultado individual como un recurso `Observation` estructurado, referenciado desde `DiagnosticReport.result`. Esto requiere resolver, además de la identidad del paciente y la homologación de la prestación:

* Homologación de cada resultado individual (por ejemplo, hemoglobina, hematocrito) a un código LOINC u otro catálogo acordado, cuando el sistema de origen solo informe el nombre local del analito.
* Homologación de unidades de medida a UCUM, cuando el sistema de origen use notación local o abreviada.
* Representación de valores críticos y su interpretación (`Observation.interpretation`), incluyendo la política de notificación cuando corresponda.
* Trazabilidad entre el resultado atomizado y el PDF firmado, cuando ambos coexistan, para evitar que difieran entre sí.

Los mensajes HL7 v2 de origen para este caso siguen siendo `ORU^R01`, pero con múltiples segmentos `OBX` por resultado individual en lugar de un único `OBX` con el PDF. El mapeo campo a campo de `OBX` ya está definido en [Mapeo HL7 v2 a FHIR](mapeo-v2-fhir.md) y aplica también a este caso; lo pendiente de diseño es la política de homologación de unidades y valores críticos, no la transformación estructural.

## Caso de uso 4: Cancelación o anulación de una solicitud

Una solicitud puede cancelarse antes de que el laboratorio emita un resultado, por dos causas distintas: la muestra fue rechazada después de recibida, o el paciente no concurrió a la toma de muestra. Ambas causas se representan de forma distinta en esta guía, porque una involucra un `Specimen` y la otra no.

### UC4-a: Rechazo de la muestra

1. El laboratorio recibe la muestra y determina que no es apta para el análisis.
1. El laboratorio registra`MinsalEspecimenLaboratorio.status = #unsatisfactory`y documenta el motivo mediante la extensión`specimen-reject-reason`, con un código del catálogo oficial HL7 v2 Tabla 0490 (ver "Terminología de cancelación" más abajo).
1. La solicitud rechazada no se reutiliza: el establecimiento genera una nueva`MinsalServiceRequestLab`con nuevo identificador y nueva etiqueta, evitando el riesgo de reimprimir la etiqueta original. La solicitud original conserva su estado sin modificarse; la trazabilidad hacia la nueva solicitud queda documentada en`note`, a formalizar en una etapa posterior si se requiere una referencia estructurada.

sequenceDiagram participant LIS as Laboratorio (LIS) participant Bus as Bus de Interoperabilidad LIS->>Bus: PUT Specimen (status=unsatisfactory, motivo=v2-0490) Bus->>Bus: valida contra MinsalEspecimenLaboratorio Bus-->>LIS: 200 OK Note over LIS,Bus: Se genera una nueva ServiceRequest con nuevo identificador y nueva etiqueta

### UC4-b: Paciente no se presenta a la toma de muestra

1. El paciente no concurre a la toma de muestra. No existe ningún`Specimen`asociado a la solicitud.
1. El establecimiento o el laboratorio actualiza`MinsalServiceRequestLab.status = #revoked`y documenta el motivo mediante la extensión`request-statusReason`, con el código SNOMED CT correspondiente a "no presentación".

sequenceDiagram participant Est as Establecimiento / LIS participant Bus as Bus de Interoperabilidad Est->>Bus: PUT ServiceRequest (status=revoked, motivo=SNOMED CT) Bus->>Bus: valida contra MinsalServiceRequestLab Bus-->>Est: 200 OK

### Terminología de cancelación

| | | | |
| :--- | :--- | :--- | :--- |
| Muestra insuficiente | `MinsalEspecimenLaboratorio` | `specimen-reject-reason` | `v2-0490#QS`"Quantity not sufficient" |
| Muestra coagulada | `MinsalEspecimenLaboratorio` | `specimen-reject-reason` | `v2-0490#RC`"Clotting" |
| Muestra mal etiquetada | `MinsalEspecimenLaboratorio` | `specimen-reject-reason` | `v2-0490#RM`"Labeling" |
| Paciente no se presenta | `MinsalServiceRequestLab` | `request-statusReason` | SNOMED CT`270426007`"Did not attend" |

Ninguno de estos cuatro motivos define un código propio de esta guía. Los tres primeros reutilizan el catálogo oficial HL7 v2 Tabla 0490 (`http://terminology.hl7.org/CodeSystem/v2-0490`), el mismo que usa el segmento `SPM` de HL7 v2; el cuarto reutiliza SNOMED CT. Las dos extensiones (`specimen-reject-reason` y `request-statusReason`) son extensiones oficiales publicadas por HL7, no definiciones propias de MINSAL. El binding de ambos ValueSets de esta guía (`VSMotivoRechazoMuestraLaboratorio` y `VSMotivoCancelacionSolicitudLaboratorio`) es extensible: sugiere estos códigos como los motivos esperados, sin impedir usar otro código válido del mismo catálogo externo si se identifica un motivo no cubierto.

