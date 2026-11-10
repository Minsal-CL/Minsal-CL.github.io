# Artifacts Summary - Guía de Implementación FHIR - Perfil MHD Nacional MINSAL v0.3.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [CapabilityStatement del nodo central (índice nacional) MHD](CapabilityStatement-CapabilityStatementNodoCentralMhd.md) | Describe las capacidades del nodo central de MINSAL para las transacciones IHE MHD de la fase 1 (modelo mediado, ver Arquitectura y flujos): responde búsquedas y recuperaciones de documentos (actuando como Document Responder) y recibe publicaciones de los nodos custodios (actuando como Document Recipient). Verifica el paciente de cada publicación contra el MPI nacional (actuando como consumidor PIXm, ITI-83). No declara interacciones propias: importa los CapabilityStatement oficiales de IHE MHD y PIXm que ya las definen, para no duplicar ni arriesgar que se desalineen de la especificación. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Bundle de publicación de documentos MINSAL (ITI-65, IHE MHD Minimal)](StructureDefinition-MinsalProvideBundleMhd.md) | Bundle de ITI-65. Hereda IHE.MHD.Minimal.ProvideBundle: una entrada SubmissionSet 1..1 (perfil `MinsalSubmissionSetMhd`) y entradas DocumentReference 0..* (perfil `MinsalDocumentReferenceMhd`). El documento nuevo de un reemplazo y el PATCH del documento anterior viajan en este mismo Bundle. |
| [Lista SubmissionSet MINSAL (ITI-65, IHE MHD Minimal)](StructureDefinition-MinsalSubmissionSetMhd.md) | Lista de tipo SubmissionSet que viaja en un ITI-65. Hereda IHE.MHD.Minimal.SubmissionSet. En un retiro o un reemplazo, List.note lleva quién lo pide (authorString) y el motivo (text). |
| [Referencia documental MINSAL (IHE MHD, forma almacenada)](StructureDefinition-MinsalDocumentReferenceMhd.md) | Perfil transversal de DocumentReference (IHE MHD, perfil Minimal) para la forma almacenada y consultable de un documento clínico publicado en el Bus de Interoperabilidad: contiene los metadatos y la URL (`content.attachment.url`) desde la cual se recupera el contenido (transacciones ITI-67 y ITI-68). El contenido no va inline (`content.attachment.data` 0..0, heredado de IHE MHD Minimal). Las guías de dominio del portafolio (laboratorio, imagenología, etc.) heredan de este perfil y fijan lo específico de su documento; no reemplaza el perfil de dominio, lo complementa con la parte común a todas las guías. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Centro de imagenología de ejemplo (transversal, sin perfilar)](Organization-CentroImagenologiaEjemploMhd.md) | Organización base FHIR R4, sin perfil, usada como `custodian` (nodo custodio) en el ejemplo de imagenología. |
| [Laboratorio de ejemplo (transversal, sin perfilar)](Organization-LaboratorioEjemploMhd.md) | Organización base FHIR R4, sin perfil, usada como `custodian` (nodo custodio) en los ejemplos de laboratorio. |
| [Paciente de ejemplo (transversal, sin perfilar)](Patient-PacienteEjemploMhd.md) | Paciente base FHIR R4, sin perfil CL-Core/NID, usado solo para ilustrar los ejemplos de este repo transversal. Las guías de dominio deben usar su propio perfil de paciente. |
| [Profesional de ejemplo (transversal, sin perfilar)](Practitioner-ProfesionalEjemploMhd.md) | Profesional base FHIR R4, sin perfil, usado como `author` en los ejemplos de este repo transversal. Las guías de dominio deben usar su propio perfil de prestador. |
| [Reemplazo de un informe de laboratorio (depreca la versión anterior)](DocumentReference-InformeLaboratorioReemplazoEjemploMhd.md) | Ejemplo de la nueva versión de un documento que reemplaza a `InformeLaboratorioEjemploMhd`. `status` sigue en `current` porque este documento es el vigente; la deprecación del anterior se expresa con `relatesTo.code = replaces` apuntando a su `id`. En la transacción real (ver sección Reemplazo y deprecación de un documento), este `DocumentReference` viaja junto con un `PATCH` que cambia el `status` del documento anterior a `superseded`. |
| [Referencia documental de un informe de imagenología (forma almacenada)](DocumentReference-InformeImagenologiaEjemploMhd.md) | Ejemplo orientado a imagenología: mismo perfil transversal que el ejemplo de laboratorio, cambiando `type`/`category` y el custodio. `type` usa LOINC 18748-4 'Diagnostic imaging study' (verificado como el código vigente para el tipo de documento de un informe de imágenes diagnósticas) y `category` usa v2-0074#RAD 'Radiology' (confirmado vigente; el código IMG del mismo CodeSystem está obsoleto). |
| [Referencia documental de un informe de laboratorio (forma almacenada)](DocumentReference-InformeLaboratorioEjemploMhd.md) | Ejemplo orientado a laboratorio: mismo perfil transversal que el ejemplo de imagenología, cambiando `type`/`category` y el custodio. Representa la forma almacenada (ITI-67/68): el contenido se recupera por `content.attachment.url`, no viaja inline. Incluye `context.related` apuntando a `SolicitudEjemploMhd`, para ilustrar la trazabilidad hacia la solicitud de origen cuando esta viene codificada en un sistema distinto (ej. FONASA) del que usa el resultado (LOINC). |
| [Referencia documental de un informe de laboratorio atomizado (Bundle documento FHIR)](DocumentReference-InformeLaboratorioAtomizadoEjemploMhd.md) | Ejemplo del modelo de contenido atomizado: `content.attachment.contentType` es `application/fhir+json` y la URL apunta a un Bundle documento FHIR (Composition + DiagnosticReport + Observation por resultado). Por regla de ITI-65, `hash` y `size` no se informan. |
| [Solicitud de examen de ejemplo (transversal, sin perfilar)](ServiceRequest-SolicitudEjemploMhd.md) | Solicitud de origen del informe de laboratorio de ejemplo, codificada con el código de prestación FONASA del hemograma (no LOINC: la solicitud y el resultado no siempre comparten sistema de codificación). Existe para demostrar `context.related` en `InformeLaboratorioEjemploMhd`: el resultado atomizado puede traer varios códigos LOINC (uno por cada componente del hemograma) y aun así trazarse hacia esta única solicitud de origen. |

