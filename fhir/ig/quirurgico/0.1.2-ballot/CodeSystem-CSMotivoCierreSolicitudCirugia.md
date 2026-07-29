# Motivo Cierre Solicitud Cirugía - Lista de Espera Quirúrgica Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Motivo Cierre Solicitud Cirugía**

## CodeSystem: Motivo Cierre Solicitud Cirugía 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSMotivoCierreSolicitudCirugia | *Version*:0.1.2-ballot |
| Active as of 2023-01-15 | *Computable Name*:CSMotivoCierreSolicitudCirugia |

 
Motivo Cierre Solicitud Cirugía 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSMotivoCierreSolicitudCirugia](ValueSet-VSMotivoCierreSolicitudCirugia.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSMotivoCierreSolicitudCirugia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/quirurgico/CodeSystem/CSMotivoCierreSolicitudCirugia",
  "version" : "0.1.2-ballot",
  "name" : "CSMotivoCierreSolicitudCirugia",
  "title" : "Motivo Cierre Solicitud Cirugía",
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
    },
    {
      "name" : "Roberto Araneda",
      "telecom" : [
        {
          "system" : "email",
          "value" : "roberto.araneda@chiledata.cl",
          "use" : "work"
        }
      ]
    },
    {
      "name" : "John Díaz",
      "telecom" : [
        {
          "system" : "email",
          "value" : "john.diaz@chiledata.cl",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Motivo Cierre Solicitud Cirugía",
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
  "count" : 18,
  "concept" : [
    {
      "code" : "1",
      "display" : "GES (0)"
    },
    {
      "code" : "2",
      "display" : "Atención Realizada (1)"
    },
    {
      "code" : "3",
      "display" : "Corresponde a la realización del examen procedimiento ejecutado (2)"
    },
    {
      "code" : "4",
      "display" : "Atención Otorgada en el Extra sistema (4)"
    },
    {
      "code" : "5",
      "display" : "No beneficiario (5)"
    },
    {
      "code" : "6",
      "display" : "Renuncia o rechazo voluntario (6)"
    },
    {
      "code" : "7",
      "display" : "Recuperación espontánea (7)"
    },
    {
      "code" : "8",
      "display" : "Inasistencia (2 NSP) (8)"
    },
    {
      "code" : "9",
      "display" : "Fallecimiento (9)"
    },
    {
      "code" : "10",
      "display" : "Solicitud de indicación duplicada (10)"
    },
    {
      "code" : "11",
      "display" : "Contacto no corresponde (11)"
    },
    {
      "code" : "12",
      "display" : "Traslado coordinado (12)"
    },
    {
      "code" : "13",
      "display" : "No pertinencia (13)"
    },
    {
      "code" : "14",
      "display" : "Error de digitación(15)"
    },
    {
      "code" : "15",
      "display" : "Atención por resolutividad (16)"
    },
    {
      "code" : "16",
      "display" : "Atención por telemedicina (17)"
    },
    {
      "code" : "17",
      "display" : "Modificación de condicion clínica del paciente (18)"
    },
    {
      "code" : "18",
      "display" : "Atención hospital digital (19)"
    }
  ]
}

```
