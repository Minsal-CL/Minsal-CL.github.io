# Grupo Marcas - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.8

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Grupo Marcas**

## CodeSystem: Grupo Marcas 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSGrupoMarcas | *Version*:0.4.8 |
| Active as of 2023-01-15 | *Computable Name*:CSGrupoMarcas |

 
Diferenciación entre los posibles grupos dentro del MPI 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSGrupoMarcas](ValueSet-VSGrupoMarcas.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSGrupoMarcas",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSGrupoMarcas",
  "version" : "0.4.8",
  "name" : "CSGrupoMarcas",
  "title" : "Grupo Marcas",
  "status" : "active",
  "experimental" : false,
  "date" : "2023-01-15",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [
    {
      "name" : "Unidad de Interoperabilidad - MINSAL",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://interoperabilidad.minsal.cl"
        }
      ]
    }
  ],
  "description" : "Diferenciación entre los posibles grupos dentro del MPI",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "CL",
          "display" : "Chile"
        }
      ]
    }
  ],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "01",
      "display" : "Condición de Cuidador(a)",
      "definition" : "Ley N°21.380 Ley preferente personas cuidadoras. Prioriza atención exámenes/procedimientos e Interconsultas*."
    },
    {
      "code" : "02",
      "display" : "Fibromialgia",
      "definition" : "Ley N°21.531 Ley Fibromialgia y dolores crónicos no oncológicos.  no especifica tipo de prestaciones."
    },
    {
      "code" : "03",
      "display" : "TEA",
      "definition" : "Ley N°21.545 Ley TEA. Atención en concepto salud mental. no especifica tipo de prestaciones."
    },
    {
      "code" : "04",
      "display" : "EII",
      "definition" : "Ley N°21.559 Ley de Enfermedades inflamatorias intestinales. Atención preferente no especifica tipo de prestaciones."
    }
  ]
}

```
