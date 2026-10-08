# Mensajería y respuesta - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* **Mensajería y respuesta**

## Mensajería y respuesta

### El sobre

Cada documento se envía como un [BundleNotificacionGES](StructureDefinition-bundle-notificacion-ges.md) (`type = message`) a la operación estándar **`POST [base]/$process-message`**.

| | | | |
| :--- | :--- | :--- | :--- |
| 1 | `MessageHeader`([MensajeNotificacionGES](StructureDefinition-mh-notificacion-ges.md)) | Sí | Siempre primero (invariante`ges-msg-1`) |
| 2 | Recurso foco | Sí | ServiceRequest, Condition, Procedure o Task, según el evento (`ges-msg-4`) |
| 3 | Recursos de apoyo del foco | Según el documento | Condition de sospecha (SIC), Observation (datos especiales) |
| 4 | `EpisodeOfCare`(caso) | Sí, exactamente uno | `ges-msg-2` |
| 5 | `Patient` | Sí, exactamente uno | `ges-msg-2` |
| 6 | `PractitionerRole`,`Practitioner` | Sí (Practitioner opcional en PO) |   |
| 7 | `Organization` | Sí | Todos los establecimientos referenciados |

Todas las entradas llevan `fullUrl` (`ges-msg-3`). Las referencias internas son relativas (`Patient/pac-a`) y se resuelven dentro del Bundle.

**`MessageHeader.focus`** lleva dos referencias:

* `focus[0]`: el documento que se notifica.
* `focus[1]`: el caso.

Así, quien procesa el mensaje sabe de inmediato qué hacer y con qué caso.

### Tres identificadores distintos

Hoy la API v1.5 los mezcla o no los tiene. En esta guía cada uno cumple una función:

| | | | |
| :--- | :--- | :--- | :--- |
| Id del mensaje | `Bundle.identifier` | Sistema de origen | Trazabilidad del transporte. Un reintento del**mismo**envío usa el mismo id |
| Folio del documento | `identifier[folio]`del foco +`assigner` | Establecimiento | **Idempotencia de negocio.**Mismo folio = mismo documento, aunque el mensaje sea nuevo |
| Número de caso | `EpisodeOfCare.identifier[casoSIGGES]` | SIGGES | Une todos los documentos del caso. Mientras no exista, se usa`identifier[casoLocal]` |

### Respuesta

SIGGES (o la capa de interoperabilidad, en la etapa 1) responde con un [BundleRespuestaGES](StructureDefinition-bundle-respuesta-ges.md):

| | | |
| :--- | :--- | :--- |
| `ok` | Aceptado.`focus`devuelve el caso con su número SIGGES | Guardar el número SIGGES |
| `ok`+ OperationOutcome`warning`/`information` | Aceptado con observaciones (p.ej. dato derivado del catálogo,[folio duplicado](Bundle-resp-duplicado.md)) | Revisar y no reenviar |
| `transient-error` | Falla temporal (SIGGES no disponible, timeout) | Reintentar con el**mismo**`Bundle.identifier` |
| `fatal-error`+ OperationOutcome`error` | Rechazado por validación o por regla de negocio | Corregir y reenviar con**nuevo**`Bundle.identifier`y el**mismo**folio |

Ejemplos:

* [Respuesta OK con número de caso](Bundle-resp-a1-ok.md)
* [OK con información](Bundle-resp-b2-aviso.md)
* [Error de validación](Bundle-resp-error.md)
* [Reenvío idempotente](Bundle-resp-duplicado.md)

`OperationOutcome.issue.expression` apunta a la ruta FHIRPath exacta del problema, por ejemplo `Bundle.entry[3].resource.type[1]`. Esto evita los mensajes de error genéricos.

### Validaciones de negocio que corresponden a SIGGES

Las reglas que requieren estado o catálogo no se pueden expresar en el perfil. Las aplica el receptor:

* La rama pertenece al problema de salud (propiedad `problemaSalud` de [CSRamaProblemaSaludGES](CodeSystem-rama-problema-salud-ges.md)).
* La garantía pertenece a la rama del caso (propiedad `rama` de [CSGarantiaGES](CodeSystem-garantia-ges.md)).
* `derivadaPara` corresponde al documento (SIC u OA), lo que ya está resuelto con ValueSets separados.
* El estado de HD corresponde a la rama (propiedad `rama` de [CSEstadoHojaDiariaGES](CodeSystem-estado-hoja-diaria-ges.md)).
* La causal está vigente a la fecha del documento (propiedades `status`, `effectiveDate` y `retirementDate` de [CSCausalSIGGES](CodeSystem-causal-sigges.md)).
* El estado de una HD es coherente con su `verificationStatus` (propiedad `verificacion` de [CSEstadoHojaDiariaGES](CodeSystem-estado-hoja-diaria-ges.md)). Hasta la 0.2.0 lo intentaba una invariante que leía el texto del estado; se retiró porque un texto no es una regla estable.
* El dígito verificador del RUN es correcto (módulo 11). El perfil valida solo el formato (`ges-run`).

### Contrato de interfaz

Lo que esta página describe está declarado en dos `CapabilityStatement`:

* [CSReceptorSIGGES](CapabilityStatement-CSReceptorSIGGES.md): lo que expone el receptor (la capa de interoperabilidad en la etapa 1, SIGGES en la etapa 2).
* [CSEmisorEstablecimiento](CapabilityStatement-CSEmisorEstablecimiento.md): lo que hace el sistema del establecimiento.

### Seguridad

* **OAuth 2.0 `client_credentials`** para comunicación entre sistemas. La API v1.5 usa hoy `grant_type=password`, que no corresponde para este caso: ver [Observaciones](hallazgos.md).
* **TLS 1.2 o superior.** El `client_id` se asocia a uno o más códigos DEIS: SIGGES debe rechazar un `MessageHeader.sender` que no corresponda al cliente autenticado.
* **Sin datos personales en URLs.** La consulta por RUN usa `POST [base]/EpisodeOfCare/_search`.

