# Servicios de Salud (DEIS) - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Servicios de Salud (DEIS)**

## CodeSystem: Servicios de Salud (DEIS) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/servicio-salud-deis | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:CSServicioSaludDEIS |
| **Copyright/Legal**: Catálogo SIGGES 2.0 — FONASA. Generado con tools/catalogo2fsh.py. | |

 
Servicios de Salud según catálogo UNIDADES de SIGGES 2.0. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "servicio-salud-deis",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/servicio-salud-deis",
  "version" : "0.4.0",
  "name" : "CSServicioSaludDEIS",
  "title" : "Servicios de Salud (DEIS)",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-08T15:37:06-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Servicios de Salud según catálogo UNIDADES de SIGGES 2.0.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "copyright" : "Catálogo SIGGES 2.0 — FONASA. Generado con tools/catalogo2fsh.py.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 30,
  "concept" : [{
    "code" : "1",
    "display" : "Servicio de Salud Arica y Parinacota"
  },
  {
    "code" : "2",
    "display" : "Servicio de Salud Tarapacá"
  },
  {
    "code" : "3",
    "display" : "Servicio de Salud Antofagasta"
  },
  {
    "code" : "4",
    "display" : "Servicio de Salud Atacama"
  },
  {
    "code" : "5",
    "display" : "Servicio de Salud Coquimbo"
  },
  {
    "code" : "6",
    "display" : "Servicio de Salud Valparaíso San Antonio"
  },
  {
    "code" : "7",
    "display" : "Servicio de Salud Vina del Mar Quillota"
  },
  {
    "code" : "8",
    "display" : "Servicio de Salud Aconcagua"
  },
  {
    "code" : "9",
    "display" : "Servicio de Salud Metropolitano Norte"
  },
  {
    "code" : "10",
    "display" : "Servicio de Salud Metropolitano Occidente"
  },
  {
    "code" : "11",
    "display" : "Servicio de Salud Metropolitano Central"
  },
  {
    "code" : "12",
    "display" : "Servicio de Salud Metropolitano Oriente"
  },
  {
    "code" : "13",
    "display" : "Servicio de Salud Metropolitano Sur"
  },
  {
    "code" : "14",
    "display" : "Servicio de Salud Metropolitano Sur Oriente"
  },
  {
    "code" : "15",
    "display" : "Servicio de Salud O'Higgins"
  },
  {
    "code" : "16",
    "display" : "Servicio de Salud Maule"
  },
  {
    "code" : "17",
    "display" : "Servicio de Salud Nuble"
  },
  {
    "code" : "18",
    "display" : "Servicio de Salud Concepcion"
  },
  {
    "code" : "19",
    "display" : "Servicio de Salud Talcahuano"
  },
  {
    "code" : "20",
    "display" : "Servicio de Salud BioBío"
  },
  {
    "code" : "21",
    "display" : "Servicio de Salud Araucania Sur"
  },
  {
    "code" : "22",
    "display" : "Servicio de Salud Los Ríos"
  },
  {
    "code" : "23",
    "display" : "Servicio de Salud Osorno"
  },
  {
    "code" : "24",
    "display" : "Servicio de Salud Reloncaví"
  },
  {
    "code" : "25",
    "display" : "Servicio de Salud Aysén"
  },
  {
    "code" : "26",
    "display" : "Servicio de Salud Magallanes"
  },
  {
    "code" : "28",
    "display" : "Servicio de Salud Arauco"
  },
  {
    "code" : "29",
    "display" : "Servicio de Salud Araucania Norte"
  },
  {
    "code" : "33",
    "display" : "Servicio de Salud Chiloe"
  },
  {
    "code" : "95",
    "display" : "Servicio de Salud Servicio de Salud N/A"
  }]
}

```
