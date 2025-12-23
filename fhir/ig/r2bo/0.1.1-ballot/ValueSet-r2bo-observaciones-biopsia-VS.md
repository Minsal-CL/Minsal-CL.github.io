# Set de Valores para Observaciones Biopsia - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Set de Valores para Observaciones Biopsia**

## ValueSet: Set de Valores para Observaciones Biopsia (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-observaciones-biopsia-VS | *Version*:0.1.1-ballot |
| Draft as of 2025-12-23 | *Computable Name*:ObservacionesBiopsiaVS |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreementThe SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the Creative Commons Attribution 4.0 International Public License. For more information, see SNOMED IPS TerminologyThe HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review usage terms or directly contact SNOMED International: info@snomed.orgThis material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc | |

 
Observaciones realizadas durante el informe de biopsia 

 **References** 

* [Perfil de Observación Margen Quirúrgico](StructureDefinition-r2bo-observacion-margen-quirurgico.md)
* [Perfil de Origen de Todos Los Resultados](StructureDefinition-r2bo-resultados-reporte-biopsia.md)

### Logical Definition (CLD)

 

### Expansion

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
  "id" : "r2bo-observaciones-biopsia-VS",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet/r2bo-observaciones-biopsia-VS",
  "version" : "0.1.1-ballot",
  "name" : "ObservacionesBiopsiaVS",
  "title" : "Set de Valores para Observaciones Biopsia",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-12-23T17:10:55-03:00",
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
  "description" : "Observaciones realizadas durante el informe de biopsia",
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
  "copyright" : "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement\n\nThe SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the Creative Commons Attribution 4.0 International Public License. For more information, see SNOMED IPS Terminology\n\nThe HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review usage terms or directly contact SNOMED International: info@snomed.org\n\nThis material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "version" : "http://snomed.info/sct/900000000000207008/version/20251101",
        "concept" : [
          {
            "code" : "399588009",
            "display" : "Pathologic TNM stage grouping"
          },
          {
            "code" : "371513001",
            "display" : "Presence of direct invasion by primary malignant neoplasm to nerve"
          },
          {
            "code" : "405921002",
            "display" : "Percentage of neoplasm involved by necrosis"
          },
          {
            "code" : "371509008",
            "display" : "Status of peritumoral lymphocyte response"
          },
          {
            "code" : "444696007",
            "display" : "Status of specimen involvement by multifocal invasion"
          },
          {
            "code" : "396631001",
            "display" : "Surgical margin observable"
          },
          {
            "code" : "396324006",
            "display" : "Surgical margin involved by neoplasm in excised tissue specimen"
          },
          {
            "code" : "370052007",
            "display" : "Tumor invasion"
          }
        ]
      },
      {
        "system" : "http://loinc.org",
        "version" : "2.81",
        "concept" : [
          {
            "code" : "102034-6",
            "display" : "Pathology report microscopic observation in Specimen"
          },
          {
            "code" : "74574-5",
            "display" : "Macroscopic observation [Interpretation] in Specimen Narrative"
          },
          {
            "code" : "33739-4",
            "display" : "Lymphatic.small vessel.invasion [Identifier] in Specimen by CAP cancer protocols"
          },
          {
            "code" : "33740-2",
            "display" : "Venous.large vessel.invasion [Identifier] in Specimen by CAP cancer protocols"
          },
          {
            "code" : "21889-1",
            "display" : "Size Tumor"
          },
          {
            "code" : "42030-7",
            "display" : "Multiple tumors reported as single primary Cancer"
          },
          {
            "code" : "92831-7",
            "display" : "Lymph nodes with metastasis [#] in Cancer specimen"
          },
          {
            "code" : "81168-7",
            "display" : "Site of adjacent organ or tissue involvement Cancer specimen"
          },
          {
            "code" : "84891-1",
            "display" : "Pathology report post neoadjuvant therapy assessment in Specimen"
          },
          {
            "code" : "33737-8",
            "display" : "Distance of tumor from closest margin"
          }
        ]
      }
    ]
  }
}

```
