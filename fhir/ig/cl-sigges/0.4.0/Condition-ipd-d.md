# Caso D · 2 — IPD descarta - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Caso D · 2 — IPD descarta**

## Example Condition: Caso D · 2 — IPD descarta

Perfil: [IPD — Informe de proceso diagnóstico](StructureDefinition-ipd-ges.md)

**Caso GES**: [EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812410,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#CLF-2026-001044; status = finished; type = Cáncer gástrico,Cáncer gástrico (decreto nº 228); period = 2026-04-02 --> 2026-04-24](EpisodeOfCare-caso-d.md)

**Establecimiento de destino**: [Centro de Salud Familiar La Florida (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-331)](Organization-cesfam-la-florida.md)

**Tratamiento e indicaciones**: Erradicación de H. pylori; control en APS.

**identifier**: [NSFolioDocumento](NamingSystem-NSFolioDocumento.md)/IPD-HLF-2026-001240

**verificationStatus**: Refuted

**category**: Encounter Diagnosis

**code**: Gastritis crónica atrófica sin displasia; se descarta cáncer gástrico

**subject**: [Rosa Elena Tapia (official) Female, DoB: 1970-01-30 ( RUN: 10987654-2 (use: official))](Patient-pac-d.md)

**recordedDate**: 2026-04-24 10:00:00-0300

**recorder**: [Andrés Fuentes (official) (RUN: 13478215-3 (use: official)) at Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)](PractitionerRole-rol-fuentes-hlf.md)

**note**: 

> 

Endoscopía con biopsias múltiples (protocolo Sydney) negativas para neoplasia.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ipd-d",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ipd-ges"]
  },
  "extension" : [{
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-caso-ges",
    "valueReference" : {
      "reference" : "EpisodeOfCare/caso-d"
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-establecimiento-destino",
    "valueReference" : {
      "reference" : "Organization/cesfam-la-florida"
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-indicaciones-clinicas",
    "valueString" : "Erradicación de H. pylori; control en APS."
  }],
  "identifier" : [{
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/folio-documento",
    "value" : "IPD-HLF-2026-001240",
    "assigner" : {
      "reference" : "Organization/hosp-la-florida"
    }
  }],
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "refuted"
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
    }],
    "text" : "Gastritis crónica atrófica sin displasia; se descarta cáncer gástrico"
  },
  "subject" : {
    "reference" : "Patient/pac-d"
  },
  "recordedDate" : "2026-04-24T10:00:00-03:00",
  "recorder" : {
    "reference" : "PractitionerRole/rol-fuentes-hlf"
  },
  "note" : [{
    "text" : "Endoscopía con biopsias múltiples (protocolo Sydney) negativas para neoplasia."
  }]
}

```
