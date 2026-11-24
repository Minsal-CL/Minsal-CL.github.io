# Agrupacion Marcas - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Agrupacion Marcas**

## Example Group: Agrupacion Marcas

Perfil: [MINSAL Agrupación por marcas](StructureDefinition-MINSALAgrupacionPorMarcas.md)

Unnamed Group (Person, enumerated, 1 member)

-------

| | |
| :--- | :--- |
| Type: | Person |
| Membership: | enumerated |
| Kind: | TEA |

**Members**

* Member: [Javiera Castilla (official) Female, DoB: 1995-12-12 ( RUN: 16182522-0 (use: official))](Patient-MinsalPacienteEjemplo.md)



## Resource Content

```json
{
  "resourceType" : "Group",
  "id" : "AgrupacionMarcas",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALAgrupacionPorMarcas"]
  },
  "type" : "person",
  "actual" : true,
  "code" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSGrupoMarcas",
      "code" : "03",
      "display" : "TEA"
    }]
  },
  "member" : [{
    "entity" : {
      "reference" : "Patient/MinsalPacienteEjemplo"
    }
  }]
}

```
