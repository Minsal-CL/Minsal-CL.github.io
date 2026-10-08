# Caso B · 3 — PO hemodiálisis mensual - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Caso B · 3 — PO hemodiálisis mensual**

## Example Procedure: Caso B · 3 — PO hemodiálisis mensual

Perfil: [PO — Prestación otorgada](StructureDefinition-po-ges.md)

**Caso GES**: [EpisodeOfCare: identifier = https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-sigges#NSCasoSIGGES#8812399,https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/caso-local#NSCasoLocal#SR-2026-004410; status = active; type = Enfermedad renal crónica etapa 4 y 5,Enfermedad renal crónica etapa 4 y 5 (decreto nº 228); period = 2026-05-04 --> (ongoing)](EpisodeOfCare-caso-b.md)

**Garantía GES**: Tratamiento Hemodiálisis

**identifier**: [NSFolioDocumento](NamingSystem-NSFolioDocumento.md)/PO-SR-2026-040551

**basedOn**: [ServiceRequest HEMODIALISIS CON BICARBONATO CON INSUMOS(TRATAMIENTO MENSUAL)](ServiceRequest-oa-b-hemodialisis.md)

**status**: Completed

**code**: HEMODIALISIS CON BICARBONATO CON INSUMOS(TRATAMIENTO MENSUAL)

**subject**: [María Isabel González (official) Female, DoB: 1958-07-02 ( RUN: 7654321-6 (use: official))](Patient-pac-b.md)

**performed**: 2026-05-12 --> 2026-06-11

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Valentina Soto (official) (RUN: 14209771-0 (use: official)) at Complejo Hospitalario Dr. Sótero del Río (Público) (https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/deis#NSDeis#14-101)](PractitionerRole-rol-soto-sotero.md) |



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "po-b-hemodialisis",
  "meta" : {
    "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/po-ges"]
  },
  "extension" : [{
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-caso-ges",
    "valueReference" : {
      "reference" : "EpisodeOfCare/caso-b"
    }
  },
  {
    "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-garantia-ges",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/garantia-ges",
        "code" : "4037",
        "display" : "Tratamiento Hemodiálisis"
      }]
    }
  }],
  "identifier" : [{
    "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/folio-documento",
    "value" : "PO-SR-2026-040551",
    "assigner" : {
      "reference" : "Organization/sotero-del-rio"
    }
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/oa-b-hemodialisis"
  }],
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/prestacion-fonasa",
      "code" : "1901029",
      "display" : "HEMODIALISIS CON BICARBONATO CON INSUMOS(TRATAMIENTO MENSUAL)"
    }],
    "text" : "HEMODIALISIS CON BICARBONATO CON INSUMOS(TRATAMIENTO MENSUAL)"
  },
  "subject" : {
    "reference" : "Patient/pac-b"
  },
  "performedPeriod" : {
    "start" : "2026-05-12",
    "end" : "2026-06-11"
  },
  "performer" : [{
    "actor" : {
      "reference" : "PractitionerRole/rol-soto-sotero"
    }
  }]
}

```
