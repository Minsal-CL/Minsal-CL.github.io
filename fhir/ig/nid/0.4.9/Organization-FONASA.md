# FONASA - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **FONASA**

## Example Organization: FONASA

Profile: [CL Organización](https://hl7chile.cl/fhir/ig/clcore/1.9.4/StructureDefinition-CoreOrganizacionCl.html)

**identifier**: 61603000-0

**name**: Fondo Nacional De Salud

**alias**: FONASA

**telecom**: ph: 600 360 3000



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "FONASA",
  "meta" : {
    "profile" : [
      "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreOrganizacionCl"
    ]
  },
  "identifier" : [
    {
      "value" : "61603000-0"
    }
  ],
  "name" : "Fondo Nacional De Salud",
  "alias" : ["FONASA"],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "600 360 3000"
    }
  ]
}

```
