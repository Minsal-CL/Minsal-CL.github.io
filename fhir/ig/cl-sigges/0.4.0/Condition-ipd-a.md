# Caso A · 4 — IPD confirma cáncer gástrico - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Caso A · 4 — IPD confirma cáncer gástrico**

## Example Condition: Caso A · 4 — IPD confirma cáncer gástrico

Perfil: [IPD — Informe de proceso diagnóstico](StructureDefinition-ipd-ges.md)

**Caso GES**: [EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812345,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#CLF-2026-000871; status = active; type = Cáncer gástrico,Cáncer gástrico (decreto nº 228); period = 2026-03-02 --> (ongoing)](EpisodeOfCare-caso-a.md)

**Establecimiento de destino**: [Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)](Organization-hosp-la-florida.md)

**Tratamiento e indicaciones**: Evaluación por cirugía digestiva para gastrectomía con disección ganglionar.

**identifier**: [NSFolioDocumento](NamingSystem-NSFolioDocumento.md)/IPD-HLF-2026-001102

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Encounter Diagnosis

**code**: Adenocarcinoma gástrico tubular moderadamente diferenciado, antro

**subject**: [Juan Carlos Pérez (official) Male, DoB: 1961-03-14 ( RUN: 9876543-3 (use: official))](Patient-pac-a.md)

**recordedDate**: 2026-03-27 12:00:00-0300

**recorder**: [Andrés Fuentes (official) (RUN: 13478215-3 (use: official)) at Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)](PractitionerRole-rol-fuentes-hlf.md)

**note**: 

> 

Biopsia endoscópica 16/03: adenocarcinoma. TAC de tórax, abdomen y pelvis sin metástasis a distancia.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ipd-a",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ipd-ges"]
  },
  "extension" : [{
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-caso-ges",
    "valueReference" : {
      "reference" : "EpisodeOfCare/caso-a"
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-establecimiento-destino",
    "valueReference" : {
      "reference" : "Organization/hosp-la-florida"
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-indicaciones-clinicas",
    "valueString" : "Evaluación por cirugía digestiva para gastrectomía con disección ganglionar."
  }],
  "identifier" : [{
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/folio-documento",
    "value" : "IPD-HLF-2026-001102",
    "assigner" : {
      "reference" : "Organization/hosp-la-florida"
    }
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "encounter-diagnosis"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/problema-salud-ges",
      "code" : "27",
      "display" : "Cáncer gástrico"
    },
    {
      "system" : "http://hl7.org/fhir/sid/icd-10",
      "code" : "C16.3"
    }],
    "text" : "Adenocarcinoma gástrico tubular moderadamente diferenciado, antro"
  },
  "subject" : {
    "reference" : "Patient/pac-a"
  },
  "recordedDate" : "2026-03-27T12:00:00-03:00",
  "recorder" : {
    "reference" : "PractitionerRole/rol-fuentes-hlf"
  },
  "note" : [{
    "text" : "Biopsia endoscópica 16/03: adenocarcinoma. TAC de tórax, abdomen y pelvis sin metástasis a distancia."
  }]
}

```
