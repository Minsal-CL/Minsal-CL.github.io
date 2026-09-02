# Leyes Relacionadas a la Atención en Salud - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Leyes Relacionadas a la Atención en Salud**

## CodeSystem: Leyes Relacionadas a la Atención en Salud 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/LeyesAtencionSaludCS | *Version*:0.2.0 |
| Active as of 2026-03-01 | *Computable Name*:LeyesAtencionSaludCS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.16.1 | |

 
Leyes que otorgan beneficio de salud por causas específicas y se relacionan con el seguro de salud general de la persona ya sea FONASA o ISAPRE. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [LeyesAtencionSaludVS](ValueSet-LeyesAtencionSaludVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "LeyesAtencionSaludCS",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/LeyesAtencionSaludCS",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.1"
  }],
  "version" : "0.2.0",
  "name" : "LeyesAtencionSaludCS",
  "title" : "Leyes Relacionadas a la Atención en Salud",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-01T00:00:00-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  },
  {
    "name" : "Jorge Mansilla",
    "telecom" : [{
      "system" : "email",
      "value" : "jorge.mansilla@minsal.cl",
      "use" : "work"
    }]
  }],
  "description" : "Leyes que otorgan beneficio de salud por causas específicas y se relacionan con el seguro de salud general de la persona ya sea FONASA o ISAPRE.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "version" : "20210120",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "1",
    "display" : "Ley Nº18.490:  Accidentes de Transporte",
    "definition" : "Ley Nº18.490:  Accidentes de Transporte"
  },
  {
    "code" : "2",
    "display" : "Ley Nº 16.744: Accidentes del Trabajo y Enfermedades Profesionales",
    "definition" : "Ley Nº 16.744: Accidentes del Trabajo y Enfermedades Profesionales"
  },
  {
    "code" : "3",
    "display" : "Ley Nº 16.744: Accidente Escolar",
    "definition" : "Ley Nº 16.744: Accidente Escolar"
  },
  {
    "code" : "4",
    "display" : "Ley Nº 19.650/99: de Urgencia",
    "definition" : "Ley Nº 19.650/99: de Urgencia"
  },
  {
    "code" : "5",
    "display" : "Ley 19.992: PRAIS",
    "definition" : "Ley 19.992: PRAIS"
  },
  {
    "code" : "7",
    "display" : "Ley Nº20.850  Ricarte Soto",
    "definition" : "Ley Nº20.850  Ricarte Soto"
  },
  {
    "code" : "8",
    "display" : "Ley N° 21.030 de Despenalización de la Interrupción Voluntaria del Embarazo en Tres Causales.",
    "definition" : "Ley N° 21.030 de Despenalización de la Interrupción Voluntaria del Embarazo en Tres Causales."
  }]
}

```
