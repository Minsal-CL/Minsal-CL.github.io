# Set de Valores para Topografía - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Set de Valores para Topografía**

## ValueSet: Set de Valores para Topografía (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-topografica-cieo-VS | *Version*:0.1.1-ballot |
| Draft as of 2026-01-07 | *Computable Name*:TopograficaSnomedCIEOVS |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreementThe SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the Creative Commons Attribution 4.0 International Public License. For more information, see SNOMED IPS TerminologyThe HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review usage terms or directly contact SNOMED International: info@snomed.org | |

 
Set de valores utilizados para la topografía, estos pueden ser mapeados de Snomed CT a la CIE-O 3 Tográfico o ser usado directamente en CIE-O 3 Tográfico 

 **References** 

* [Perfil del Reporte de Anatomía Patológica](StructureDefinition-r2bo-informe-biopsia.md)
* [Perfil de la Morfología y Topología del Tumor](StructureDefinition-r2bo-tumor.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (not supported by Publication Tooling)

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
  "id" : "r2bo-topografica-cieo-VS",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-topografica-cieo-VS",
  "version" : "0.1.1-ballot",
  "name" : "TopograficaSnomedCIEOVS",
  "title" : "Set de Valores para Topografía",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-01-07T10:16:22-03:00",
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
    },
    {
      "name" : "Franco Ulloa",
      "telecom" : [
        {
          "system" : "email",
          "value" : "franco.ulloa@minsal.cl",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Set de valores utilizados para la topografía, estos pueden ser mapeados de Snomed CT a la CIE-O 3 Tográfico o ser usado directamente en CIE-O 3 Tográfico",
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
  "copyright" : "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement\n\nThe SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the Creative Commons Attribution 4.0 International Public License. For more information, see SNOMED IPS Terminology\n\nThe HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review usage terms or directly contact SNOMED International: info@snomed.org",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20251101",
        "filter" : [
          {
            "property" : "constraint",
            "op" : "=",
            "value" : "^446608001,<91723000"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20251101",
        "concept" : [
          {
            "code" : "87100004"
          },
          {
            "code" : "21229009"
          }
        ]
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
        "filter" : [
          {
            "property" : "concept",
            "op" : "descendent-of",
            "value" : "T"
          }
        ]
      }
    ]
  }
}

```
