# Programas GES (SNOMED CT, extensión chilena) - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Programas GES (SNOMED CT, extensión chilena)**

## ValueSet: Programas GES (SNOMED CT, extensión chilena) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/ValueSet/vs-programa-ges-snomed | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:VSProgramaGESSnomed |

 
Conceptos de programa GES de la extensión chilena de SNOMED CT: descendientes de 1741000325106 (programa de Garantías Explícitas en Salud). Es el mismo criterio de vs-problema-ges-tei de la guía TEI 0.2.3. Clasifican el caso (EpisodeOfCare.type), no el diagnóstico: son conceptos de programa, no hallazgos clínicos. 

 **References** 

* [Caso GES](StructureDefinition-caso-ges.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-programa-ges-snomed",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/ValueSet/vs-programa-ges-snomed",
  "version" : "0.4.0",
  "name" : "VSProgramaGESSnomed",
  "title" : "Programas GES (SNOMED CT, extensión chilena)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-08T15:37:06-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Conceptos de programa GES de la extensión chilena de SNOMED CT: descendientes de 1741000325106 (programa de Garantías Explícitas en Salud). Es el mismo criterio de vs-problema-ges-tei de la guía TEI 0.2.3. Clasifican el caso (EpisodeOfCare.type), no el diagnóstico: son conceptos de programa, no hallazgos clínicos.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "1741000325106"
      }]
    }]
  }
}

```
