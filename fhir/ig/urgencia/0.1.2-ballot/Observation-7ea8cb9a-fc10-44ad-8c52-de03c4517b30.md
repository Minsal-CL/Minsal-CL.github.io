# Anamnesis de paciente con dolor abdominal - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Anamnesis de paciente con dolor abdominal**

## Example Observation: Anamnesis de paciente con dolor abdominal

Profile: [Observación Anamnesis](StructureDefinition-ObservacionAnamnesis.md)

**status**: Registered

**code**: Anamnesis

**subject**: [Maria Josefína Perez Gonzalez(official) Female, DoB: 1974-12-25 ( Rol Único Nacional: 90000000-6 (use: official, ))](Patient-6ec6dc25-4b65-4165-a545-9b796f60b997.md)

**encounter**: [Encounter: extension = false; identifier = 126402-0025; status = in-progress; class = emergency (ActCode#EMER); priority = Atención Prioritaria; period = 2024-10-25 13:18:00-0400 --> (ongoing); reasonCode =](Encounter-d1391b7b-302a-49f8-a908-8116599e137e.md)

**effective**: 2024-10-25 14:18:00-0400

**performer**: [Practitioner Luis Gonzalez (official)](Practitioner-190cd208-48b1-4920-a283-6bc37cbde13a.md)

**value**: MOTIVO DE CONSULTA: Dolor abdominal de 24 horas de evolución. HISTORIA ACTUAL: Inicio en región periumbilical hace 24 horas, posteriormente migra a fosa iliaca derecha. Intensidad progresiva, EVA actual 8/10. Asociado a: - Anorexia desde inicio de síntomas - Náuseas y dos episodios de vómitos - Sensación febril no cuantificada Dolor aumenta al caminar y con movimientos bruscos. No reporta diarrea ni síntomas urinarios. Automedicación con Paracetamol sin alivio. ANTECEDENTES: Mórbidos: No Quirúrgicos: No Alergias: No Medicamentos habituales: No Última ingesta: >12 horas (anorexia)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "7ea8cb9a-fc10-44ad-8c52-de03c4517b30",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ObservacionAnamnesis"
    ]
  },
  "status" : "registered",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "84100007"
      }
    ],
    "text" : "Anamnesis"
  },
  "subject" : {
    "reference" : "Patient/6ec6dc25-4b65-4165-a545-9b796f60b997"
  },
  "encounter" : {
    "reference" : "Encounter/d1391b7b-302a-49f8-a908-8116599e137e"
  },
  "effectiveDateTime" : "2024-10-25T14:18:00-04:00",
  "performer" : [
    {
      "reference" : "Practitioner/190cd208-48b1-4920-a283-6bc37cbde13a"
    }
  ],
  "valueString" : "MOTIVO DE CONSULTA:\nDolor abdominal de 24 horas de evolución.\n\nHISTORIA ACTUAL:\nInicio en región periumbilical hace 24 horas, posteriormente migra a fosa iliaca derecha.\nIntensidad progresiva, EVA actual 8/10.\nAsociado a:\n- Anorexia desde inicio de síntomas\n- Náuseas y dos episodios de vómitos\n- Sensación febril no cuantificada\nDolor aumenta al caminar y con movimientos bruscos.\nNo reporta diarrea ni síntomas urinarios.\nAutomedicación con Paracetamol sin alivio.\n\nANTECEDENTES:\nMórbidos: No\nQuirúrgicos: No\nAlergias: No\nMedicamentos habituales: No\nÚltima ingesta: >12 horas (anorexia)"
}

```
