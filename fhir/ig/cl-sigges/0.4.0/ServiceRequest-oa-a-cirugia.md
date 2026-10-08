# Caso A · 5 — OA de gastrectomía - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Caso A · 5 — OA de gastrectomía**

## Example ServiceRequest: Caso A · 5 — OA de gastrectomía

Perfil: [OA — Orden de atención](StructureDefinition-oa-ges.md)

**Caso GES**: [EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812345,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#CLF-2026-000871; status = active; type = Cáncer gástrico,Cáncer gástrico (decreto nº 228); period = 2026-03-02 --> (ongoing)](EpisodeOfCare-caso-a.md)

**Garantía GES**: Intervención Quirúrgica

**identifier**: [NSFolioDocumento](NamingSystem-NSFolioDocumento.md)/OA-HLF-2026-003577

**status**: Active

**intent**: Order

**category**: Tratamiento

**code**: GASTRECTOMIA SUBTOTAL CON DISECCION GANGLIONAR

**subject**: [Juan Carlos Pérez (official) Male, DoB: 1961-03-14 ( RUN: 9876543-3 (use: official))](Patient-pac-a.md)

**authoredOn**: 2026-03-30 16:20:00-0300

**requester**: [Ignacio Paredes (official) (RUN: 12661903-0 (use: official)) at Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)](PractitionerRole-rol-paredes-hlf.md)

**performerType**: Cirugía Abdominal Adulto

**performer**: [Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)](Organization-hosp-la-florida.md)

**reasonCode**: Adenocarcinoma gástrico de antro, etapa clínica cT2N0M0



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "oa-a-cirugia",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/oa-ges"]
  },
  "extension" : [{
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-caso-ges",
    "valueReference" : {
      "reference" : "EpisodeOfCare/caso-a"
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-garantia-ges",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/garantia-ges",
        "code" : "702",
        "display" : "Intervención Quirúrgica"
      }]
    }
  }],
  "identifier" : [{
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/folio-documento",
    "value" : "OA-HLF-2026-003577",
    "assigner" : {
      "reference" : "Organization/hosp-la-florida"
    }
  }],
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/derivada-para-ges",
      "code" : "7",
      "display" : "Tratamiento"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/prestacion-fonasa",
      "code" : "1802017",
      "display" : "GASTRECTOMIA SUBTOTAL CON DISECCION GANGLIONAR"
    }],
    "text" : "GASTRECTOMIA SUBTOTAL CON DISECCION GANGLIONAR"
  },
  "subject" : {
    "reference" : "Patient/pac-a"
  },
  "authoredOn" : "2026-03-30T16:20:00-03:00",
  "requester" : {
    "reference" : "PractitionerRole/rol-paredes-hlf"
  },
  "performerType" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/especialidad-sigges",
      "code" : "07-201-2",
      "display" : "Cirugía Abdominal Adulto"
    }]
  },
  "performer" : [{
    "reference" : "Organization/hosp-la-florida"
  }],
  "reasonCode" : [{
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/problema-salud-ges",
      "code" : "27",
      "display" : "Cáncer gástrico"
    }],
    "text" : "Adenocarcinoma gástrico de antro, etapa clínica cT2N0M0"
  }]
}

```
