# Profesional de Salud de Ejemplo - Núcleo de Interoperabilidad de Datos (NID) - MINSAL v0.5.0

* [**Table of Contents**](toc.md)
* [**Artefactos Generados**](artifacts.md)
* **Profesional de Salud de Ejemplo**

## Example Practitioner: Profesional de Salud de Ejemplo

Perfil: [Prestador Profesional](StructureDefinition-MINSALPrestadorProfesional.md)

María Gonzalez (Rol Único Nacional: 19949350-7 (use: official))

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Gender: | Female |
| Date of Birth: | 1991-04-01 | | |
| Other Id: | Registro Nacional de Prestadores Individuales/1234543 (use: secondary) | | |
| Qualification: | MÉDICO CIRUJANO* Identifier: cert
* Valid Period: 2007-11-01 --> (ongoing)
* Issued By: Universidad de Chile
 | | |
| Qualification: | MEDICINA INTERNA* Identifier: esp
* Valid Period: 2010-11-01 --> (ongoing)
* Issued By: Pontificia Universidad Católica de Chile
 | | |
| Qualification: | HEMATOLOGÍA* Identifier: subesp
* Valid Period: 2014-11-01 --> (ongoing)
* Issued By: Universidad de Valparaíso
 | | |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "EjemploPractiProf",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional"]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
        "code" : "01",
        "display" : "RUN"
      }],
      "text" : "Rol Único Nacional"
    },
    "value" : "19949350-7",
    "assigner" : {
      "display" : "Republica de Chile"
    }
  },
  {
    "use" : "secondary",
    "type" : {
      "coding" : [{
        "system" : "https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador",
        "code" : "13",
        "display" : "RNPI"
      }],
      "text" : "Registro Nacional de Prestadores Individuales"
    },
    "value" : "1234543",
    "assigner" : {
      "display" : "Intendencia de prestadores individuales - Superintendencia de Salud"
    }
  }],
  "active" : true,
  "name" : [{
    "family" : "Gonzalez",
    "_family" : {
      "extension" : [{
        "url" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido",
        "valueString" : "Gutierrez"
      }]
    },
    "given" : ["María"],
    "prefix" : ["Dra"]
  }],
  "gender" : "female",
  "birthDate" : "1991-04-01",
  "qualification" : [{
    "identifier" : [{
      "value" : "cert"
    }],
    "code" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-titulo-profesional-cs",
        "code" : "1",
        "display" : "Médico/as Cirujano/as"
      }],
      "text" : "MÉDICO CIRUJANO"
    },
    "period" : {
      "start" : "2007-11-01"
    },
    "issuer" : {
      "display" : "Universidad de Chile"
    }
  },
  {
    "identifier" : [{
      "value" : "esp"
    }],
    "code" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-EspecialidadesySubespecialidadesMedicas-CS",
        "code" : "30",
        "display" : "Medicina Interna"
      }],
      "text" : "MEDICINA INTERNA"
    },
    "period" : {
      "start" : "2010-11-01"
    },
    "issuer" : {
      "display" : "Pontificia Universidad Católica de Chile"
    }
  },
  {
    "extension" : [{
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/Mencion",
      "valueString" : "Linfoma"
    }],
    "identifier" : [{
      "value" : "subesp"
    }],
    "code" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-EspecialidadesySubespecialidadesMedicas-CS",
        "code" : "23",
        "display" : "Hematología"
      }],
      "text" : "HEMATOLOGÍA"
    },
    "period" : {
      "start" : "2014-11-01"
    },
    "issuer" : {
      "display" : "Universidad de Valparaíso"
    }
  }]
}

```
