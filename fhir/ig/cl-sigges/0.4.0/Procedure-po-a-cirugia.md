# Caso A · 6 — PO gastrectomía realizada - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Caso A · 6 — PO gastrectomía realizada**

## Example Procedure: Caso A · 6 — PO gastrectomía realizada

Perfil: [PO — Prestación otorgada](StructureDefinition-po-ges.md)

**Caso GES**: [EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812345,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#CLF-2026-000871; status = active; type = Cáncer gástrico,Cáncer gástrico (decreto nº 228); period = 2026-03-02 --> (ongoing)](EpisodeOfCare-caso-a.md)

**Garantía GES**: Intervención Quirúrgica

**identifier**: [NSFolioDocumento](NamingSystem-NSFolioDocumento.md)/PO-HLF-2026-021904

**basedOn**: [ServiceRequest GASTRECTOMIA SUBTOTAL CON DISECCION GANGLIONAR](ServiceRequest-oa-a-cirugia.md)

**status**: Completed

**code**: GASTRECTOMIA SUBTOTAL CON DISECCION GANGLIONAR

**subject**: [Juan Carlos Pérez (official) Male, DoB: 1961-03-14 ( RUN: 9876543-3 (use: official))](Patient-pac-a.md)

**performed**: 2026-04-20 08:30:00-0300 --> 2026-04-20 12:10:00-0300

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Ignacio Paredes (official) (RUN: 12661903-0 (use: official)) at Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-105)](PractitionerRole-rol-paredes-hlf.md) |



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "po-a-cirugia",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/po-ges"]
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
    "value" : "PO-HLF-2026-021904",
    "assigner" : {
      "reference" : "Organization/hosp-la-florida"
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/oa-a-cirugia"
  }],
  "status" : "completed",
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
  "performedPeriod" : {
    "start" : "2026-04-20T08:30:00-03:00",
    "end" : "2026-04-20T12:10:00-03:00"
  },
  "performer" : [{
    "actor" : {
      "reference" : "PractitionerRole/rol-paredes-hlf"
    }
  }]
}

```
