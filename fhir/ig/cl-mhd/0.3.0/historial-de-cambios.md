# Historial de cambios - Guía de Implementación FHIR - Perfil MHD Nacional MINSAL v0.3.0

* [**Table of Contents**](toc.md)
* **Historial de cambios**

## Historial de cambios

### Historial de cambios

#### Versión 0.3.0

##### Cambios que rompen compatibilidad

* Se elimina ITI-105 (Simplified Publish). La publicación se hace solo por ITI-65; en el escenario C el nodo central arma el Bundle en nombre del establecimiento. Se retiran el perfil `MinsalPublicacionDocumentoMhd`, el ejemplo `PublicacionInformeLaboratorioEjemploMhd` y la sección de ITI-105 en "Arquitectura y flujos". Las guías de dominio que heredaban de ese perfil deben dejar de hacerlo.
* `MinsalProvideBundleMhd` restringe sus entradas a los perfiles MINSAL: `SubmissionSet` a `MinsalSubmissionSetMhd` y `DocumentRefs` a `MinsalDocumentReferenceMhd`. Antes heredaba los perfiles de IHE, y un ITI-65 no se validaba contra las reglas nacionales.
* `custodian` pasa de 0..1 a 1..1 e identifica a la organización responsable del documento (el establecimiento), no al nodo que lo aloja, como define FHIR para ese elemento. Retoma #8.
* `content.attachment.hash` y `size` son obligatorios salvo que el contenido sea un Bundle documento FHIR, donde deben faltar (ITI-65, sección 2:3.65.4.1.2.1). Se validan con los invariantes `minsal-mhd-hash-size-1` y `minsal-mhd-hash-size-2`. Retoma #14.
* La regla de autorización del reemplazo pasa a ser: el nodo central acepta el reemplazo solo del nodo que, según un registro nacional de nodos y establecimientos, tiene la autoridad vigente sobre el `custodian` del documento. Cuando un establecimiento cambia de nodo, se actualiza el registro y los documentos históricos conservan su `custodian`, su `masterIdentifier` y su URL. El registro no existe todavía y lo debe gobernar MINSAL.

##### Arquitectura y flujos

* Se agregan las consultas de identificación del paciente al MPI nacional: ITI-83 (PIXm) traduce un identificador local al nacional e ITI-78 (PDQm) busca por datos demográficos. El nodo custodio las usa antes de ITI-65 y el consumidor antes de ITI-67. Antes de ITI-65, el nodo custodio valida la demografía del paciente con ITI-78, porque ITI-83 solo confirma que el identificador existe. El nodo central verifica el paciente de cada ITI-65 con ITI-83 y rechaza la publicación si el MPI no lo conoce. Se actualizan la tabla de actores, el diagrama del modelo mediado y la sección de auditoría.
* Se agregan las dependencias `ihe.iti.pixm` 3.1.0 e `ihe.iti.pdqm` 3.2.0. `CapabilityStatementNodoCentralMhd` importa `IHE.PIXm.Consumer`.
* Los escenarios de origen se reordenan: A es quien ya es nodo y publica por sí mismo, B el kit de nodo en el Servicio y C el envío HL7 v2 directo al nodo central. Cada escenario lleva una descripción y el nodo central se pinta del lado central en el diagrama.
* Escenario C: el `custodian` es el establecimiento y el nodo central opera por delegación. Queda pendiente cómo una corrección HL7 v2 se convierte en un reemplazo; lo define el perfil HL7 v2 de entrada.
* Escenario C: se explicita que el nodo central es operado por MINSAL y se separan sus dos roles (organización responsable = establecimiento, `custodian`; nodo que aloja y publica por delegación = MINSAL, en el registro nacional y en `SubmissionSet.sourceId`). El reemplazo de un documento del escenario C lo solicita el nodo central y se autoriza porque MINSAL tiene la autoridad sobre el establecimiento. La auditoría debe distinguir al central como nodo delegado y como índice. Se agregan al README los pendientes de identidad de MINSAL como nodo, separación de funciones y figura legal.
* ITI-68: la tabla 2:3.68.4.2.2-1 sugiere 410 (o 404) para un documento deprecado; esta guía lo hace obligatorio como restricción nacional. El consumidor trata 410 y 404 como contenido no disponible. Retoma #1.

##### Idioma

* La guía declara `language: es`.
* Los elementos Must Support del perfil `MinsalDocumentReferenceMhd` tienen descripción corta en español.
* `MinsalProvideBundleMhd` y `MinsalSubmissionSetMhd` llevan título en español.
* Los diagramas llevan tildes.
* La plantilla traduce las etiquetas de las fichas de cada artefacto (URL oficial, versión, estado, nombre computable), las pestañas, la navegación y el pie de página.

##### Correcciones

* `CapabilityStatementNodoCentralMhd` pasa a la versión 0.3.0 (seguía en 0.2.3).
* Se corrigen textos desactualizados sobre la cantidad de perfiles: la guía tiene tres.
* Los ejemplos de profesional y organizaciones llevan descripción.
* Los ejemplos con PDF informan `hash` y `size`, calculados sobre un contenido de muestra. Se agrega `InformeLaboratorioAtomizadoEjemploMhd`, con contenido Bundle documento FHIR y sin `hash` ni `size`.
* La plantilla cerraba dos veces el enlace "Historial de versiones" del pie de página, lo que dejaba HTML mal formado en todas las páginas.

#### Versión 0.2.5

* `category` 1..1 queda como restricción de esta guía. En IHE MHD Minimal ese elemento es 0..1. El comentario del perfil lo decía al revés.
* `content.format` cita el ValueSet `formatcode` de IHE, binding `preferred`. El perfil transversal no aprieta esa fuerza.
* ITI-68 responde 410 a un documento `superseded` (404 si la política de privacidad hace inaceptable el 410). El documento sigue en el índice.
* ITI-67 exige `status` junto con el paciente. Para la atención se usa `status=current`. El índice acepta GET y POST. El consumidor usa POST.
* El reemplazo dentro de ITI-65 se registra con `IHE.MHD.ProvideBundle.Audit.Recipient`. `IHE.BasicAudit.Update` queda para un PATCH fuera de ese Bundle.
* Se agregan `MinsalProvideBundleMhd` y `MinsalSubmissionSetMhd`. ITI-65 lleva una lista SubmissionSet 1..1. La forma del envío es la del ejemplo oficial `ex-minimalProvideDocumentBundleSimple`.
* En un reemplazo, el documento nuevo, el reemplazado y sus adendas son del mismo paciente. Las adendas y transformaciones del original pasan a `superseded` en la misma transacción.
* ITI-105 queda para el origen que no custodia el PDF. Si el nodo ya lo custodia, ITI-65 publica la URL y el índice no guarda el contenido.
* El retiro sin documento sucesor no se adopta. ITI-57, que lo define en XDS, está en Trial Implementation.

#### Versión 0.2.4

* Se agrega la sección "Reemplazo y deprecación de un documento" en "Arquitectura y flujos": un documento publicado nunca se borra del índice, se publica una versión nueva con `relatesTo.code = replaces` y la anterior pasa a `status = superseded` mediante un `PATCH` (`IHE.MHD.Patch.Parameters`), siguiendo el patrón oficial de IHE MHD.
* Se documenta la regla de autorización del reemplazo: el nodo central solo acepta deprecar un documento si el nodo que lo solicita es el mismo `custodian` del documento objetivo; cualquier otro caso se rechaza con `403`.
* Se documenta la diferencia entre un nodo que publica con ITI-65 (arma el `PATCH` y el documento nuevo en la misma transacción) y uno que publica con ITI-105 (el nodo central aplica el `PATCH` por él cuando la publicación trae `relatesTo`).
* Se agrega el registro del reemplazo, exitoso o rechazado, con el perfil `IHE.BasicAudit.Update` de IHE BALP.
* Se agrega el ejemplo `InformeLaboratorioReemplazoEjemploMhd`, con `relatesTo.code = replaces` hacia el informe anterior. El cuerpo del `PATCH` no se republica como instancia propia: es el mismo que el ejemplo oficial `ex-patchParameters` de IHE MHD.
* Se elimina la sección "Evolución futura: recuperación directa nodo a nodo".
* Se declara la dependencia `hl7.fhir.uv.tools.r4` 1.3.0, que define la extensión de snapshot heredada en los identificadores de IHE MHD.
* La página de inicio deja de usar la sección de pendientes y pasa a hablar de la guía, no de su repositorio de desarrollo.
* La página de inicio incorpora las secciones de dependencias, análisis de versiones cruzadas, perfiles globales y declaración de propiedad intelectual.

#### Versión 0.2.3

* Se agrega a "Arquitectura y flujos" la tabla "Actores y transacciones", que resume por cada actor IHE MHD (Document Source, Document Recipient, Document Responder, Document Consumer) quién lo cumple en este modelo y qué transacciones le corresponden.
* Se agrega la sección "Transacciones IHE MHD en esta guía", con una sub-sección por transacción (ITI-65, ITI-105, ITI-67, ITI-68), cada una descrita con la misma estructura fija (Alcance, Actores, Mensaje) para que todas se lean de forma consistente.
* Se elimina la descripción duplicada de ITI-67 que quedaba repetida dentro de "Recuperación del contenido: modelo mediado (fase 1)", remitiendo a la nueva sección de transacciones.

#### Versión 0.2.2

* Se agrega `CapabilityStatementNodoCentralMhd`, el `CapabilityStatement` del nodo central (índice nacional) para las transacciones IHE MHD de la fase 1. Importa (`imports`) los dos `CapabilityStatement` oficiales de IHE MHD (`DocumentResponder`, `DocumentRecipient`) en vez de redefinir sus interacciones desde cero.
* Se corrige la redacción de `index.md` para dejar explícito que los perfiles no tienen ninguna restricción de dominio (sin bindings ni tipos de referencia fijados a laboratorio/imagenología): laboratorio es el primer adoptante real, no el límite del alcance.
* Laboratorio adopta formalmente estos perfiles (`MinsalDocumentReferenceLaboratorio`/`MinsalPublicacionDocumentoLaboratorio`, en `laboratorio-fhir` 0.7.0), confirmando en la práctica que el diseño transversal no requirió ningún cambio para el primer dominio real.

#### Versión 0.2.1

* Se agrega la página "Arquitectura y flujos", con diagramas que documentan: los tres escenarios de origen del documento (envío directo al nodo central, kit de transformación en el Servicio, capacidad propia del nodo), el modelo de contenido (PDF embebido y Bundle FHIR atomizado, ambos soportados desde el inicio sin requerir cambios de perfil), el flujo de publicación y recuperación mediada por el nodo central (fase 1) con reescritura de `content.attachment.url`, la evolución futura hacia recuperación directa nodo a nodo, y la trazabilidad hacia la solicitud de origen mediante `context.related`.
* Se agrega el ejemplo `SolicitudEjemploMhd` (`ServiceRequest` base, sin perfilar) y se enlaza desde `InformeLaboratorioEjemploMhd` mediante `context.related`, para ilustrar la trazabilidad de un resultado de laboratorio (codificado en LOINC) hacia su solicitud de origen (codificada con un código de prestación distinto).
* Sin cambios de cardinalidad ni de perfil respecto de la versión 0.2.0.

#### Versión 0.2.0

* Se agregan los dos primeros perfiles transversales de `DocumentReference` (IHE MHD): 
* `MinsalDocumentReferenceMhd` (padre `IHE.MHD.Minimal.DocumentReference`): forma almacenada y consultable del documento, recuperable por `content.attachment.url` (transacciones ITI-67/ITI-68).
* `MinsalPublicacionDocumentoMhd` (padre `IHE.MHD.SimplifiedPublish.DocumentReference`): forma de publicación simplificada (ITI-105), con el contenido inline en `content.attachment.data` más `hash` y `size`.
 
* Se agregan ejemplos orientados a los dos dominios objetivo del portafolio (laboratorio e imagenología), no a IPS: `InformeLaboratorioEjemploMhd`, `InformeImagenologiaEjemploMhd` (forma almacenada) y `PublicacionInformeLaboratorioEjemploMhd` (publicación simplificada).
* Códigos de `type`/`category` verificados antes de fijarlos: LOINC `11502-2` (Laboratory report) + `v2-0074#LAB` para laboratorio; LOINC `18748-4` (Diagnostic imaging study) + `v2-0074#RAD` para imagenología.
* `content.format` documentado con el código IHE `urn:ihe:iti:xds:2017:mimeTypeSufficient` (formato genérico cuando el `mimeType` basta para identificar el contenido, ej. un PDF simple), fijado por valor en los ejemplos; no se declara un binding de ValueSet en el perfil porque el CodeSystem de formatCode de IHE no tiene, en el paquete disponible, un ValueSet publicado que lo envuelva.

#### Versión 0.1.0

* Esqueleto inicial del repositorio. Sin perfiles aún.

