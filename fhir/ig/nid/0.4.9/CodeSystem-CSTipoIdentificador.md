# Tipo Identificador - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.4.9

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Tipo Identificador**

## CodeSystem: Tipo Identificador 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTipoIdentificador | *Version*:0.4.9 |
| Active as of 2023-07-03 | *Computable Name*:CSTipoIdentificador |

 
Tipo Identificador 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSTipoIdentificador](ValueSet-VSTipoIdentificador.md)
* [VSTiposIdentificadorPaciente](ValueSet-VSTiposIdentificadorPaciente.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSTipoIdentificador",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem/CSTipoIdentificador",
  "version" : "0.4.9",
  "name" : "CSTipoIdentificador",
  "title" : "Tipo Identificador",
  "status" : "active",
  "experimental" : false,
  "date" : "2023-07-03T00:00:00-03:00",
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
  "description" : "Tipo Identificador",
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
  "count" : 14,
  "concept" : [
    {
      "code" : "1",
      "display" : "RUN",
      "definition" : "Rol Único Nacional"
    },
    {
      "code" : "2",
      "display" : "RUN Provisorio",
      "definition" : "RUN provisorio (Artículo 44)"
    },
    {
      "code" : "3",
      "display" : "RUN Madre",
      "definition" : "RUN Madre (para recién nacido)"
    },
    {
      "code" : "4",
      "display" : "Número Folio",
      "definition" : "Número Folio Comprobante de Parto chileno"
    },
    {
      "code" : "5",
      "display" : "PPN",
      "definition" : "Pasaporte"
    },
    {
      "code" : "6",
      "display" : "Documento de identificación del país de origen",
      "definition" : "Documento de identificación del país de origen"
    },
    {
      "code" : "7",
      "display" : "Acta de nacimiento del país de origen",
      "definition" : "Acta de nacimiento del país de origen"
    },
    {
      "code" : "8",
      "display" : "NIP",
      "definition" : "Número de Identificación Provisorio (NIP)"
    },
    {
      "code" : "9",
      "display" : "NIC",
      "definition" : "Número Identificatorio para cotizar (NIC)"
    },
    {
      "code" : "10",
      "display" : "IPA",
      "definition" : "Identificación Provisoria del Apoderado (IPA)"
    },
    {
      "code" : "11",
      "display" : "IPE",
      "definition" : "Identificación Provisoria del Escolar (IPE)"
    },
    {
      "code" : "12",
      "display" : "Número de Ficha Clínica Sistema Local",
      "definition" : "Número de Ficha Clínica Sistema Local"
    },
    {
      "code" : "13",
      "display" : "RNPI",
      "definition" : "Registro Nacional de Prestadores Individuales"
    },
    {
      "code" : "14",
      "display" : "OTRO",
      "definition" : "Otro tipo de identificador"
    }
  ]
}

```
