# CapabilityStatement del nodo central (índice nacional) MHD - Guía de Implementación FHIR - Perfil MHD Nacional MINSAL v0.3.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CapabilityStatement del nodo central (índice nacional) MHD**

## CapabilityStatement: CapabilityStatement del nodo central (índice nacional) MHD (Experimental) 

| | |
| :--- | :--- |
| *URL oficial*:https://interoperabilidad.minsal.cl/fhir/ig/mhd/CapabilityStatement/CapabilityStatementNodoCentralMhd | *Versión*:0.3.0 |
| Borrador al 2026-11-09 | *Nombre computable*:CapabilityStatementNodoCentralMhd |

 
Describe las capacidades del nodo central de MINSAL para las transacciones IHE MHD de la fase 1 (modelo mediado, ver Arquitectura y flujos): responde búsquedas y recuperaciones de documentos (actuando como Document Responder) y recibe publicaciones de los nodos custodios (actuando como Document Recipient). Verifica el paciente de cada publicación contra el MPI nacional (actuando como consumidor PIXm, ITI-83). No declara interacciones propias: importa los CapabilityStatement oficiales de IHE MHD y PIXm que ya las definen, para no duplicar ni arriesgar que se desalineen de la especificación. 

 [Raw OpenAPI-Swagger Definition file](CapabilityStatementNodoCentralMhd.openapi.json) | [Download](CapabilityStatementNodoCentralMhd.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "CapabilityStatementNodoCentralMhd",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/mhd/CapabilityStatement/CapabilityStatementNodoCentralMhd",
  "version" : "0.3.0",
  "name" : "CapabilityStatementNodoCentralMhd",
  "title" : "Nodo central MHD de MINSAL (índice nacional)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-11-09",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Describe las capacidades del nodo central de MINSAL para las transacciones IHE MHD de la fase 1 (modelo mediado, ver Arquitectura y flujos): responde búsquedas y recuperaciones de documentos (actuando como Document Responder) y recibe publicaciones de los nodos custodios (actuando como Document Recipient). Verifica el paciente de cada publicación contra el MPI nacional (actuando como consumidor PIXm, ITI-83). No declara interacciones propias: importa los CapabilityStatement oficiales de IHE MHD y PIXm que ya las definen, para no duplicar ni arriesgar que se desalineen de la especificación.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "kind" : "instance",
  "imports" : ["https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentResponder",
  "https://profiles.ihe.net/ITI/MHD/CapabilityStatement/IHE.MHD.DocumentRecipient",
  "https://profiles.ihe.net/ITI/PIXm/CapabilityStatement/IHE.PIXm.Consumer"],
  "implementation" : {
    "description" : "Nodo central (índice nacional) del Bus de Interoperabilidad de MINSAL, en su rol de intermediario para la recuperación de documentos (modelo mediado, fase 1): recibe publicaciones de los nodos custodios y responde búsquedas/recuperaciones de los consumidores, reescribiendo `content.attachment.url` hacia su propio endpoint de recuperación."
  },
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+json"],
  "rest" : [{
    "mode" : "server"
  }]
}

```
