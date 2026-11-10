# Arquitectura y flujos - Guía de Implementación FHIR - Perfil MHD Nacional MINSAL v0.3.0

* [**Table of Contents**](toc.md)
* **Arquitectura y flujos**

## Arquitectura y flujos

### Arquitectura y flujos

Esta página describe el modelo de federación, los escenarios de origen del documento y las transacciones IHE sobre las que se apoya el perfil transversal de esta guía. No introduce restricciones nuevas al `DocumentReference`; documenta el comportamiento esperado de las transacciones de documentos (ITI-65/67/68, IHE MHD) y de identificación del paciente (ITI-83, IHE PIXm; ITI-78, IHE PDQm) para que las guías de dominio y los nodos consumidores lo implementen de forma consistente.

#### Actores y transacciones

Antes de entrar en el detalle de cada transacción, esta tabla resume quién hace qué. Los nombres de actor son los que definen IHE MHD (`ihe.iti.mhd#4.2.5`), IHE PIXm (`ihe.iti.pixm#3.1.0`) e IHE PDQm (`ihe.iti.pdqm#3.2.0`); en la segunda columna, el rol que cumple cada uno en nuestro modelo.

| | | |
| :--- | :--- | :--- |
| Document Source | Nodo custodio (Servicio de Salud, holding o proveedor con plataforma certificada) | ITI-65 (publica) |
| Document Recipient | Nodo central (índice nacional) | ITI-65 (recibe) |
| Document Responder | Nodo central (índice nacional) | ITI-67 (responde búsquedas) / ITI-68 (responde recuperación) |
| Document Consumer | Sistema consumidor (portal, EHR, aplicación clínica) | ITI-67 (busca) / ITI-68 (recupera) |
| Patient Identifier Cross-reference Consumer (PIXm) | Nodo custodio, nodo central y sistema consumidor | ITI-83 (consulta el identificador nacional a partir de uno local) |
| Patient Demographics Consumer (PDQm) | Nodo custodio (o el nodo central en el escenario C) y sistema consumidor | ITI-78 (busca al paciente y valida sus datos demográficos) |
| Patient Identifier Cross-reference Manager (PIXm) / Patient Demographics Supplier (PDQm) | Índice maestro de pacientes (MPI) nacional | ITI-83 / ITI-78 (responde) |

El nodo central cumple dos roles IHE a la vez (Document Recipient y Document Responder), porque media tanto la publicación como la búsqueda/recuperación en la fase 1. Además, actúa como consumidor PIXm para verificar el paciente de cada publicación. Su `CapabilityStatement` es `CapabilityStatementNodoCentralMhd` (ver [Perfiles](artifacts.md)), que importa los `CapabilityStatement` oficiales de esos roles en vez de redeclararlos.

Cada sistema que publica o busca documentos se agrupa con un consumidor PIXm o PDQm, como prevé IHE MHD, para usar siempre el identificador del paciente en el dominio nacional. El sistema de identificación nacional del paciente (`system` del identificador) está pendiente de definición.

#### El nodo como rol

Un nodo MHD no es necesariamente un establecimiento de salud individual. Son nodos los Servicios de Salud, los holdings y los proveedores con plataforma certificada para transformar y custodiar documentos FHIR. Un hospital o un centro de salud individual publica sus documentos a través del nodo de su Servicio, no directamente.

El nodo aloja y publica el documento; la organización responsable es el establecimiento. Por eso `DocumentReference.custodian` identifica al establecimiento y no al nodo, como define FHIR para ese elemento. Un establecimiento puede cambiar de nodo (por ejemplo, de publicar a través del nodo central a operar con el nodo de su Servicio) sin que cambie el `custodian` de sus documentos.

#### Escenarios de origen del documento

Un documento clínico puede llegar al índice nacional por tres vías distintas, según la capacidad técnica del establecimiento de origen. Las tres conviven desde el inicio: ningún nodo queda obligado a elegir una sola.

* **Escenario A**: quien origina el documento ya es un nodo (Servicio de Salud, holding o proveedor con plataforma certificada). Transforma a FHIR, custodia el documento y publica por sí mismo.
* **Escenario B**: el Servicio de Salud opera un kit de nodo que recibe HL7 v2 de sus establecimientos, transforma a FHIR y custodia.
* **Escenario C**: el establecimiento no es un nodo ni tiene uno disponible. Envía HL7 v2 directo al nodo central, que transforma y custodia en su nombre.

En el escenario C, el `custodian` es el establecimiento y el nodo central opera por delegación. Cómo una corrección en HL7 v2 (por ejemplo, un ORU con resultado corregido) se convierte en un reemplazo con `relatesTo.code = replaces` está pendiente del perfil HL7 v2 de entrada, que esta guía no define.

El nodo central es operado por MINSAL, aunque su infraestructura la provea un tercero bajo contrato. En el escenario C se separan dos roles que no deben confundirse:

| | | |
| :--- | :--- | :--- |
| Organización responsable del documento | El establecimiento que lo originó | `DocumentReference.custodian` |
| Nodo que lo aloja y publica por delegación | MINSAL, a través del nodo central | Registro nacional de nodos y establecimientos (MINSAL es el nodo con autoridad sobre el establecimiento) y`SubmissionSet.sourceId` |

Por eso, cuando un establecimiento del escenario C corrige un resultado, quien arma y envía el reemplazo es el nodo central, y la [regla de autorización](#regla-de-autorización) lo acepta porque, según el registro, MINSAL tiene la autoridad vigente sobre ese establecimiento. El `custodian` no cambia a MINSAL en ningún caso: si el establecimiento pasa luego al escenario A o B, se actualiza el registro y sus documentos históricos conservan el mismo `custodian`.

En este escenario MINSAL cumple dos funciones a la vez: opera el índice que autoriza los reemplazos y es el nodo que los solicita. La auditoría debe distinguir cuándo el nodo central actúa como nodo delegado de un establecimiento y cuándo como índice nacional.

%%{init: {"theme":"base", "themeVariables": {"primaryColor":"#eaf2fb","primaryBorderColor":"#2b6cb0","primaryTextColor":"#1a202c","lineColor":"#5b7a99","fontFamily":"Segoe UI, Arial, sans-serif","fontSize":"15px"},"flowchart":{"useMaxWidth":true}}}%% flowchart LR classDef origen fill:#eaf2fb,stroke:#2b6cb0,stroke-width:1px,color:#1a202c; classDef central fill:#fff3e0,stroke:#c2720c,stroke-width:1px,color:#1a202c; subgraph A["Escenario A: capacidad propia del nodo"] A1[Plataforma propia del nodo] -->|Transforma y custodia| A2[(Índice nacional)] end subgraph B["Escenario B: kit de nodo en el Servicio"] B1[Sistema de origen] -->|"HL7 v2"| B2[Kit de transformación en el Servicio] B2 -->|Transforma a FHIR, el Servicio custodia| B3[(Índice nacional)] end subgraph C["Escenario C: envío directo al nodo central"] C1[Sistema de origen] -->|"HL7 v2"| C2[Nodo central] C2 -->|Transforma a FHIR y custodia| C3[(Índice nacional)] end A ~~~ B B ~~~ C class A1,B1,B2,C1 origen class A2,B3,C2,C3 central

**Figura: tres vías de origen posibles hacia el mismo índice nacional, según la capacidad técnica del establecimiento (celeste: lado del establecimiento o nodo custodio; naranjo: nodo central e índice nacional).**

En los tres escenarios, el paso final hacia el índice nacional es siempre la misma transacción IHE MHD: un ITI-65 (Provide Document Bundle). En el escenario C lo arma el nodo central en nombre del establecimiento. Esto es lo que permite que el perfil transversal de esta guía sea uno solo, independiente del escenario de origen.

#### Modelo de contenido: PDF embebido y Bundle atomizado

El documento publicado puede tomar dos formas de contenido, según la capacidad del nodo de origen para estructurar el resultado. Ambas conviven desde el inicio con el mismo perfil, que solo las distingue en `hash` y `size` (ver más abajo): `content.attachment.contentType` no está fijado a un único valor.

%%{init: {"theme":"base", "themeVariables": {"primaryColor":"#eaf2fb","primaryBorderColor":"#2b6cb0","primaryTextColor":"#1a202c","lineColor":"#5b7a99","fontFamily":"Segoe UI, Arial, sans-serif","fontSize":"15px"},"flowchart":{"useMaxWidth":true}}}%% flowchart TD classDef doc fill:#eaf2fb,stroke:#2b6cb0,stroke-width:1px,color:#1a202c; classDef decision fill:#fff3e0,stroke:#c2720c,stroke-width:1px,color:#1a202c; classDef resultado fill:#eafaf1,stroke:#1b8a5a,stroke-width:1px,color:#1a202c; DR["DocumentReference"] --> CT{"content.attachment.contentType"} CT -->|"application/pdf"| PDF["PDF embebido o referenciado por URL"] CT -->|"application/fhir+json"| ATOM["Bundle FHIR de tipo document, atomizado (Composition + DiagnosticReport + Observation por resultado)"] class DR doc class CT decision class PDF,ATOM resultado

**Figura: el tipo de contenido del documento define si viaja como PDF opaco o como Bundle FHIR atomizado; el perfil usa el mismo `DocumentReference` para ambos, y solo cambia la regla de `hash` y `size`.**

ITI-65 (sección 2:3.65.4.1.2.1) fija qué pasa con `content.attachment.hash` y `size` en cada forma: con un PDF, el nodo que publica informa ambos, calculados sobre el contenido que se recupera con ese `contentType`; con un Bundle documento FHIR, ambos deben faltar. El perfil lo valida con dos invariantes.

El PDF embebido es la vía más simple para nodos que hoy solo producen un informe no estructurado. El Bundle atomizado permite, por ejemplo, que cada componente de un hemograma quede como un `Observation` con su propio código LOINC, unidad UCUM y rango de referencia, en vez de un único bloque de texto o imagen.

#### Trazabilidad hacia la solicitud de origen

Un documento de resultado puede vincularse con el recurso que dio origen a su creación mediante `DocumentReference.context.related`. Esto es relevante, por ejemplo, cuando la solicitud llega codificada en un sistema distinto (como el arancel de prestaciones) del que usa el resultado (LOINC): varios códigos de resultado pueden trazarse hacia una única solicitud de origen.

%%{init: {"theme":"base", "themeVariables": {"primaryColor":"#eaf2fb","primaryBorderColor":"#2b6cb0","primaryTextColor":"#1a202c","lineColor":"#5b7a99","fontFamily":"Segoe UI, Arial, sans-serif","fontSize":"15px"},"flowchart":{"useMaxWidth":true}}}%% flowchart LR classDef solicitud fill:#fff3e0,stroke:#c2720c,stroke-width:1px,color:#1a202c; classDef resultado fill:#eaf2fb,stroke:#2b6cb0,stroke-width:1px,color:#1a202c; SR["Solicitud de origen (ServiceRequest, código de prestación)"] -. "context.related" .-> DR["DocumentReference del resultado (uno o varios códigos LOINC)"] class SR solicitud class DR resultado

**Figura: vínculo opcional entre la solicitud de origen y el documento de resultado, vía `context.related`.**

Cada guía de dominio debe restringir `context.related` al perfil de `ServiceRequest` que corresponda a su dominio (por ejemplo, el de Laboratorio), en vez de dejarlo abierto a cualquier tipo de recurso, para que la trazabilidad sea consultable de forma confiable. El primer caso real es `MinsalDocumentReferenceLaboratorio` (`laboratorio-fhir`), que restringe `context.related` a `MinsalServiceRequestLab`.

#### Transacciones IHE en esta guía

Cada transacción se describe con la misma estructura (Alcance, Actores, Mensaje), para que todas se lean igual independiente del orden en que se consulten. ITI-83 e ITI-78 no son transacciones de documentos, pero se describen aquí porque preceden a ITI-65 e ITI-67.

##### ITI-83 Mobile Patient Identifier Cross-reference Query (PIXm)

* **Alcance**: obtener el identificador del paciente en el dominio nacional a partir de un identificador conocido (local del establecimiento, o el RUN).
* **Actores**: Patient Identifier Cross-reference Consumer (nodo custodio, nodo central o sistema consumidor) → Patient Identifier Cross-reference Manager (MPI nacional).
* **Mensaje**: `GET [base]/Patient/$ihe-pix?sourceIdentifier={system}|{valor}&targetSystem={system nacional}`. La respuesta es un `Parameters` con `targetIdentifier` (el identificador nacional) y `targetId` (la referencia al `Patient` del MPI). Si el identificador de origen no existe en el MPI, la respuesta es 404. Si existe pero no tiene identificador en el dominio pedido, la respuesta es un `Parameters` vacío. Se registra con `IHE.PIXm.Query.Audit.Consumer`.
* **Uso en esta guía**: antes de ITI-65, el nodo custodio traduce el identificador local del paciente al nacional, y con él arma `DocumentReference.subject`. Al recibir el ITI-65, el nodo central consulta ITI-83 para verificar que el paciente existe en el MPI. ITI-83 confirma que el MPI conoce el identificador, pero no compara datos demográficos: para eso se usa ITI-78. Antes de ITI-67, el consumidor que conoce un identificador local lo traduce al nacional.

##### ITI-78 Mobile Patient Demographics Query (PDQm)

* **Alcance**: encontrar al paciente en el MPI cuando no se conoce un identificador que ITI-83 pueda traducir, y obtener sus datos demográficos para compararlos con los del sistema de origen.
* **Actores**: Patient Demographics Consumer (nodo custodio o sistema consumidor) → Patient Demographics Supplier (MPI nacional).
* **Mensaje**: búsqueda sobre `Patient` con `identifier`, o con datos demográficos (`family`, `given`, `birthdate`, `gender`). Igual que en ITI-67, el consumidor usa `POST [base]/Patient/_search`, para que los datos del paciente no queden en la URL. La respuesta es un `Bundle` de tipo `searchset` con los `Patient` que coinciden. Si hay más de un candidato, el sistema no elige por su cuenta: se resuelve con el usuario o se descarta. Se registra con `IHE.PDQm.Query.Audit.Consumer`.
* **Uso en esta guía**: 
* **Validación demográfica antes de ITI-65**: el nodo custodio busca al paciente por su identificador nacional (`identifier`) y compara apellidos, nombres y fecha de nacimiento del `Patient` del MPI con los del sistema de origen. Si no coinciden, no publica y deriva el caso a revisión. Así se detecta un resultado asociado al paciente equivocado (identificador válido, pero datos de otra persona).
* **Alternativa a ITI-83**: antes de ITI-65 o ITI-67, cuando solo se tienen datos demográficos.
 

##### ITI-65 Provide Document Bundle

* **Alcance**: el nodo custodio publica en una sola operación transaccional (`Bundle` tipo `transaction`, perfil `MinsalProvideBundleMhd`).
* **Actores**: Document Source (nodo custodio) → Document Recipient (nodo central).
* **Antes de publicar**: el nodo custodio obtiene el identificador nacional del paciente con ITI-83 (o ITI-78 si solo tiene datos demográficos) y valida la demografía con ITI-78: no basta con que el identificador exista. Al recibir el Bundle, el nodo central verifica el paciente con ITI-83; si el MPI no lo conoce, rechaza la publicación con un `OperationOutcome`.
* **Mensaje**: el Bundle lleva una `List` de tipo SubmissionSet (`MinsalSubmissionSetMhd`, cardinalidad 1..1, heredada de IHE) y cero o más `DocumentReference` (`MinsalDocumentReferenceMhd`). El contenido va en un `Binary` dentro del Bundle, o queda fuera y `content.attachment.url` apunta al nodo que lo custodia. Si quien origina el documento no puede armar el Bundle, envía HL7 v2 al nodo central (escenario C), y el central hace las consultas ITI-83 e ITI-78 y arma el ITI-65. La forma del envío simple está en el ejemplo oficial `ex-minimalProvideDocumentBundleSimple` de `ihe.iti.mhd` 4.2.5. La del reemplazo, en `ex-comprehensiveProvideDocumentBundleReplace`.

##### ITI-67 Find Document References

* **Alcance**: el consumidor busca documentos publicados que coincidan con criterios como paciente, tipo de documento o fecha.
* **Actores**: Document Consumer (sistema consumidor) → Document Responder (nodo central).
* **Antes de buscar**: el consumidor obtiene el identificador nacional del paciente con ITI-83 (si tiene un identificador local) o con ITI-78 (si solo tiene datos demográficos).
* **Mensaje**: búsqueda con `patient` o `patient.identifier` (identificador nacional), y con `status`. Para la atención, `status=current`. El índice no oculta los `superseded` si la búsqueda no los excluye. ITI-67 obliga al responder a aceptar GET y POST. El consumidor de esta red usa POST, para que el identificador del paciente no quede en la URL. La respuesta es un `Bundle` de `DocumentReference` de perfil `MinsalDocumentReferenceMhd`. En la fase 1, `content.attachment.url` apunta al endpoint de recuperación del nodo central.

##### ITI-68 Retrieve Document

* **Alcance**: el consumidor recupera el contenido de un documento ya identificado por un ITI-67 previo.
* **Actores**: Document Consumer (sistema consumidor) → Document Responder (nodo central).
* **Mensaje**: `GET` sobre la URL entregada en `content.attachment.url`. En la fase 1 esa URL apunta al nodo central, que recupera el contenido desde quien lo custodia y lo entrega tras verificar `hash` y `size` (un Bundle documento FHIR no los lleva, por regla de ITI-65). Un documento `superseded`, o no disponible, se responde con 410 Gone. Si la política de privacidad del nodo central hace inaceptable el 410, responde 404. El consumidor debe tratar ambos códigos como "contenido no disponible". El documento deprecado sigue en el índice. ITI-68 no devuelve su contenido.
* **Restricción nacional**: la tabla 2:3.68.4.2.2-1 de ITI-68 sugiere 410 (o 404) para un documento deprecado, pero no lo exige. Esta guía lo hace obligatorio, para que una versión corregida no se lea como vigente. El acceso a versiones anteriores con fines médico-legales queda fuera de ITI-68.

#### Recuperación del contenido: modelo mediado (fase 1)

Para la fase 1, la recuperación del contenido de un documento está mediada por el nodo central: el consumidor siempre consulta y recupera a través del índice nacional, nunca directamente contra el nodo custodio. El índice reescribe `content.attachment.url` hacia su propio endpoint de recuperación al responder una búsqueda ITI-67, aunque el nodo custodio haya publicado originalmente su propia URL en el ITI-65.

%%{init: {"theme":"base", "themeVariables": {"primaryColor":"#eaf2fb","primaryBorderColor":"#2b6cb0","primaryTextColor":"#1a202c","lineColor":"#5b7a99","fontFamily":"Segoe UI, Arial, sans-serif","fontSize":"14px","actorBkg":"#eaf2fb","actorBorder":"#2b6cb0","actorTextColor":"#1a202c","signalColor":"#5b7a99","signalTextColor":"#1a202c","noteBkgColor":"#fff3e0","noteBorderColor":"#c2720c"},"sequence":{"useMaxWidth":true}}}%% sequenceDiagram participant Consumidor participant Central as Nodo central (índice) participant Custodio as Nodo custodio participant MPI as MPI nacional Custodio->>MPI: ITI-83 PIXm (identificador local del paciente) MPI-->>Custodio: Identificador nacional Custodio->>Central: ITI-65 Provide Document Bundle (DocumentReference con su URL real) Central->>MPI: ITI-83 PIXm (verifica el paciente) MPI-->>Central: Paciente conocido Central->>Central: Registra metadatos, conserva la URL real internamente Consumidor->>MPI: ITI-83 PIXm o ITI-78 PDQm MPI-->>Consumidor: Identificador nacional Consumidor->>Central: ITI-67 POST /DocumentReference/_search Central-->>Consumidor: DocumentReference (URL reescrita al endpoint del central) Consumidor->>Central: ITI-68 GET (recuperación) Central->>Custodio: Recupera el documento con credencial propia del central Custodio-->>Central: Documento + hash/size Central->>Central: Verifica hash/size, registra auditoría Central-->>Consumidor: Documento

**Figura: el nodo central media toda publicación, búsqueda y recuperación en la fase 1; el consumidor nunca contacta al nodo custodio directamente. El custodio y el consumidor resuelven antes el identificador nacional del paciente en el MPI.**

El detalle de mensaje de cada transacción (ITI-83, ITI-78, ITI-65, ITI-67 e ITI-68) está en la sección "Transacciones IHE en esta guía", más arriba.

#### Reemplazo y deprecación de un documento

Un documento publicado nunca se borra del índice nacional: si hay que corregirlo, se publica una versión nueva y la anterior pasa a `status = superseded`. IHE MHD no admite `entered-in-error` en `DocumentReference.status` (su `ValueSet` `DocumentReferenceStats` solo tiene `current` y `superseded`). El documento deprecado sigue en el índice. ITI-68 responde 410. Una búsqueda de atención pide `status=current`, así que el deprecado no sale como vigente.

El documento nuevo, el reemplazado y sus adendas son del mismo paciente (`subject`). Si el paciente no coincide, el índice rechaza la asociación. Un cambio de paciente se hace con un retiro y una publicación nueva, no con un reemplazo.

Si el documento reemplazado tiene adendas (`relatesTo.code = appends`) o transformaciones, esas también pasan a `superseded` en la misma transacción. Es la regla XDS de la asociación RPLC (ITI TF-3 §4.2.2.2.3), que MHD mapea a `relatesTo`.

Deprecar un documento sin publicar otro es una operación distinta. XDS la define en el suplemento Metadata Update (ITI-57), en estado Trial Implementation, no en el texto final de MHD. Esta guía no la adopta. El caso de un informe del paciente equivocado queda pendiente de una regla nacional explícita.

El patrón oficial de IHE para esto (ver ejemplo `Bundle-ex-comprehensiveProvideDocumentBundleReplace` de `ihe.iti.mhd#4.2.5`) junta todo en una sola transacción atómica: el nodo custodio publica el `DocumentReference` nuevo con `relatesTo.code = replaces` apuntando al anterior, y en la misma transacción envía un `PATCH` (perfil `IHE.MHD.Patch.Parameters`) que cambia el `status` del anterior a `superseded`.

##### Regla de autorización

Es una regla nacional; IHE MHD no define quién puede reemplazar. El nodo central solo acepta deprecar un documento si el nodo que lo solicita tiene la autoridad vigente sobre el `custodian` del documento, según un registro nacional de nodos y establecimientos:

1. Al recibir un`PATCH DocumentReference/{id}`(o una publicación nueva con`relatesTo.code = replaces`apuntando a`{id}`), el nodo central lee el`custodian`del documento ya indexado.
1. Consulta en el registro nacional qué nodo tiene hoy la autoridad sobre ese establecimiento, y lo compara con la identidad del emisor (la misma credencial de nodo con la que se autentican las publicaciones ITI-65).
1. Si no coinciden, rechaza la operación con`403`y registra igual el intento (ver Auditoría del reemplazo, más abajo): un nodo no puede deprecar documentos de un establecimiento sobre el que no tiene autoridad.
1. El`PATCH`solo se acepta con exactamente esta forma (`path: DocumentReference.status`,`value: superseded`); cualquier otra ruta u operación se rechaza, para no abrir una superficie de modificación genérica sobre el índice.

Cuando un establecimiento cambia de nodo, se actualiza el registro, no los documentos. Los documentos históricos conservan su `custodian`, su `masterIdentifier` y su URL, y el nuevo nodo puede reemplazarlos desde que el registro le asigna la autoridad. Las validaciones de identificador y de URL contra el nodo que publica se aplican solo al documento nuevo.

El registro nacional de nodos y establecimientos no existe todavía: es un elemento nuevo que MINSAL debe gobernar. Cada transferencia de autoridad debe quedar trazada: quién la autorizó, cuándo y por qué.

##### Publicación del reemplazo

El nodo custodio arma el Bundle ITI-65 completo y sigue el patrón oficial de IHE al pie de la letra: en la misma transacción viajan el `PATCH` sobre el documento anterior y el `POST` del documento nuevo con `relatesTo`. En el escenario C, quien arma ese Bundle es el nodo central.

%%{init: {"theme":"base", "themeVariables": {"primaryColor":"#eaf2fb","primaryBorderColor":"#2b6cb0","primaryTextColor":"#1a202c","lineColor":"#5b7a99","fontFamily":"Segoe UI, Arial, sans-serif","fontSize":"14px","actorBkg":"#eaf2fb","actorBorder":"#2b6cb0","actorTextColor":"#1a202c","signalColor":"#5b7a99","signalTextColor":"#1a202c","noteBkgColor":"#fff3e0","noteBorderColor":"#c2720c"},"sequence":{"useMaxWidth":true}}}%% sequenceDiagram participant Custodio as Nodo custodio participant Central as Nodo central (índice) Custodio->>Central: PATCH DocumentReference/{id} (status: superseded) + POST nuevo DocumentReference (relatesTo replaces) Central->>Central: Consulta en el registro nacional qué nodo tiene autoridad sobre el custodian alt emisor autorizado Central->>Central: Aplica el PATCH y registra el documento nuevo Central-->>Custodio: 200 OK else emisor sin autoridad sobre el custodian Central-->>Custodio: 403 Forbidden end Central->>Central: Registra AuditEvent (IHE.BasicAudit.Update) del intento, exitoso o rechazado

**Figura: el nodo central solo acepta deprecar un documento si quien lo solicita tiene la autoridad vigente sobre su `custodian`, y registra el intento en cualquier caso.**

##### Auditoría del reemplazo

El reemplazo que viaja dentro de ITI-65 se registra con el evento de esa transacción: `IHE.MHD.ProvideBundle.Audit.Recipient` (BALP, agrupado con ATNA). `IHE.BasicAudit.Update` queda para un PATCH que no forma parte de un Provide Bundle. En ambos, el resultado aceptado y el rechazado se distinguen por `AuditEvent.outcome`. El evento identifica al nodo que pidió el reemplazo, el documento que quedó `superseded` y el documento nuevo.

#### Auditoría

En ambos modelos de recuperación, cada acceso queda registrado como un evento de auditoría conforme al patrón IHE BALP (Basic Audit Log Patterns), con el propósito de uso de la consulta y el nivel de confidencialidad del documento accedido. Las consultas al MPI también se registran: ITI-83 con `IHE.PIXm.Query.Audit.Consumer` e ITI-78 con `IHE.PDQm.Query.Audit.Consumer`, ambos basados en BALP.

