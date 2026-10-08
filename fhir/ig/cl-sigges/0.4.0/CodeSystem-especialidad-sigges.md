# Especialidades SIGGES - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Especialidades SIGGES**

## CodeSystem: Especialidades SIGGES 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/especialidad-sigges | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:CSEspecialidadSIGGES |
| **Copyright/Legal**: Catálogo SIGGES 2.0 — FONASA. Generado con tools/catalogo2fsh.py. | |

 
Especialidades según catálogo SIGGES 2.0 (formato DEIS NN-NNN-N). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Especialidades SIGGES](ValueSet-vs-especialidad-sigges.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "especialidad-sigges",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/especialidad-sigges",
  "version" : "0.4.0",
  "name" : "CSEspecialidadSIGGES",
  "title" : "Especialidades SIGGES",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-08T15:37:06-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Especialidades según catálogo SIGGES 2.0 (formato DEIS NN-NNN-N).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "copyright" : "Catálogo SIGGES 2.0 — FONASA. Generado con tools/catalogo2fsh.py.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 248,
  "property" : [{
    "code" : "tipo",
    "description" : "Tipo de especialidad (Ambulatoria, Cerrada, Apoyo diagnóstico)",
    "type" : "string"
  }],
  "concept" : [{
    "code" : "99-999",
    "display" : "IGNORADO",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "999-999",
    "display" : "FALTACODIGO",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "20-161",
    "display" : "Obstetricia",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-300-1",
    "display" : "Obstetricia",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-160",
    "display" : "Obstetricia y Ginecología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "09-100-0",
    "display" : "Odontopediatría",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-400-9",
    "display" : "Oftalmología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-230",
    "display" : "Oncología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-116-2",
    "display" : "Oncología Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-116-1",
    "display" : "Oncología Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "09-002-0",
    "display" : "Operatoria",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "09-003-0",
    "display" : "Ortodoncia",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-500-9",
    "display" : "Otorrinolaringología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-240",
    "display" : "Otorrinolaringología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-301-3",
    "display" : "Patología Cervical",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-301-4",
    "display" : "Patología mamaria",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-150",
    "display" : "Pediatría",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-330",
    "display" : "Pensionado",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-108-3",
    "display" : "Perineodiálisis, Centro de",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "09-004-0",
    "display" : "Periodoncia",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-112-3",
    "display" : "Programa VIH",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-210",
    "display" : "Psiquiatría",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-117-2",
    "display" : "Psiquiatría Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-211",
    "display" : "Psiquiatría Corta Estadía",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-212",
    "display" : "Psiquiatría Crónico",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-215",
    "display" : "Psiquiatría Forense Alta Complejidad",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-214",
    "display" : "Psiquiatría Forense Mediana Complejidad",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-117-1",
    "display" : "Psiquiatría Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-216",
    "display" : "Psiquiatría Mediana Estadía",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "09-005-0",
    "display" : "Rehabilitación: Prótesis Fija",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "09-006-0",
    "display" : "Rehabilitación: Prótesis Removible",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-110-2",
    "display" : "Reumatología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-600-9",
    "display" : "Salud Ocupacional",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-154",
    "display" : "Segunda Infancia",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-280",
    "display" : "Tisiología Crónicos",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-113",
    "display" : "Tratamiento Antialcohólico",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-700-2",
    "display" : "Traumatología Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-700-1",
    "display" : "Traumatología Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-130",
    "display" : "Traumatología y Ortopedia",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-143",
    "display" : "Traumatología y Ortopedia Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-312",
    "display" : "Unidad Cuidados Intensivos Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-311",
    "display" : "Unidad Cuidados Intensivos Neonatología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-313",
    "display" : "Unidad Cuidados Intensivos Pediatría",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-310",
    "display" : "Unidad Cuidados Intensivos (UCI) (Indiferenciado)",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-322",
    "display" : "Unidad de Tratamiento Intermedio Cirugía Intermedia",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-321",
    "display" : "Unidad de Tratamiento Intermedio Medicina Intermedia",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-324",
    "display" : "Unidad de Tratamiento Intermedio Neonatología Intermedia",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-323",
    "display" : "Unidad de Tratamiento Intermedio Pediatría Intermedia",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-325",
    "display" : "Unidad de Tratamiento Intermedio Quemados",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-320",
    "display" : "Unidad de Tratamiento Intermedio (UTI) (Indiferenciado)",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-301",
    "display" : "Unidad Emergencia Adultos",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-300",
    "display" : "Unidad Emergencia (Indiferenciado)",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-302",
    "display" : "Unidad Emergencia Niños",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-250",
    "display" : "Urología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-800-2",
    "display" : "Urología Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-800-1",
    "display" : "Urología Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-100-1",
    "display" : "Pediatría",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-208-2",
    "display" : "Neurocirugía Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-208-1",
    "display" : "Neurocirugía Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-220",
    "display" : "Oftalmología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-116-3",
    "display" : "Alivio del dolor y Cuidados Paliativos, Unidad de",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-300-3",
    "display" : "Alto riesgo obstétrico",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-210-2",
    "display" : "Anestesiología Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-210-1",
    "display" : "Anestesiología Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-102-2",
    "display" : "Broncopulmonar Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-102-1",
    "display" : "Broncopulmonar Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-209-2",
    "display" : "Cardiocirugía Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-144",
    "display" : "Cardiocirugía (Infantil)",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-209-1",
    "display" : "Cardiocirugía Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-103-2",
    "display" : "Cardiología Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-103-1",
    "display" : "Cardiología Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-120",
    "display" : "Cirugía",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-201-2",
    "display" : "Cirugía Abdominal Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-201-1",
    "display" : "Cirugía Abdominal Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-200-2",
    "display" : "Cirugía Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-122",
    "display" : "Cirugía Cardiovascular",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-202-2",
    "display" : "Cirugía de mama",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-141",
    "display" : "Cirugía de Partes Blandas Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-200-1",
    "display" : "Cirugía Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-140",
    "display" : "Cirugía Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-124",
    "display" : "Cirugía Máxilo Facial",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-203-2",
    "display" : "Cirugía maxilo Facial Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-203-1",
    "display" : "Cirugía máxilo Facial Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-204-2",
    "display" : "Cirugía Plástica Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-204-1",
    "display" : "Cirugía Plástica Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-123",
    "display" : "Cirugía Plástica-Quemados Adultos",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-142",
    "display" : "Cirugía Plástica-Quemados Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-205-2",
    "display" : "Cirugía Proctológica",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-121",
    "display" : "Cirugía Tórax",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-206-2",
    "display" : "Cirugía Tórax Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-206-1",
    "display" : "Cirugía Tórax Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-207-2",
    "display" : "Cirugía Vascular Periférica",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-270",
    "display" : "Derivación Médico Quirúrgico",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-170",
    "display" : "Dermatología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-111-2",
    "display" : "Dermatología Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-111-1",
    "display" : "Dermatología Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-213",
    "display" : "Desintoxicación Alcohol y Drogas",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-100-3",
    "display" : "Diabetes",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-104-2",
    "display" : "Endocrinología Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-104-1",
    "display" : "Endocrinología Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "09-001-0",
    "display" : "Endodoncia",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-112-2",
    "display" : "Enf. Trasmisión Sexual Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-112-1",
    "display" : "Enf. Trasmisión Sexual Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-105-2",
    "display" : "Gastroenterología Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-105-1",
    "display" : "Gastroenterología Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-106-2",
    "display" : "Genética Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-106-1",
    "display" : "Genética Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-290",
    "display" : "Geriatría",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-113-2",
    "display" : "Geriatría",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-162",
    "display" : "Ginecología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-301-2",
    "display" : "Ginecología Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-301-1",
    "display" : "Ginecología Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-107-2",
    "display" : "Hematología Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-107-1",
    "display" : "Hematología Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-108-4",
    "display" : "Hemodiálisis, Centro de",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-999",
    "display" : "Indiferenciado",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-112",
    "display" : "Infecciosos Adultos",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-155",
    "display" : "Infecciosos Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-118-2",
    "display" : "Infectología Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-118-1",
    "display" : "Infectología Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-153",
    "display" : "Lactantes",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-114-2",
    "display" : "Med.Física y Rehabilit. Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-114-1",
    "display" : "Med.Física y Rehabilit. Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-110",
    "display" : "Medicina",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-900-1",
    "display" : "Medicina Familiar",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-260",
    "display" : "Medicina Física y Rehabilitación",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-100-2",
    "display" : "Med.Interna",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-108-2",
    "display" : "Nefrología Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-108-1",
    "display" : "Nefrología Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-101-1",
    "display" : "Neonatología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-152",
    "display" : "Neonatología Cunas",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-151",
    "display" : "Neonatología Incubadoras",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-111",
    "display" : "Neumología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-201",
    "display" : "Neurocirugía Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-200",
    "display" : "Neurocirugía (Indiferenciado)",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-202",
    "display" : "Neurocirugía Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-115-2",
    "display" : "Neurología Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-190",
    "display" : "Neurología Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-115-1",
    "display" : "Neurología Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "20-180",
    "display" : "Neuropsiquiatría Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "20-114",
    "display" : "Nutrición",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Cerrada"
    }]
  },
  {
    "code" : "07-109-2",
    "display" : "Nutrición Adulto",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-109-1",
    "display" : "Nutrición Infantil",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "99-999-9",
    "display" : "IGNORADO",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "13-15-09",
    "display" : "Pabellón de Yeso",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-16-00",
    "display" : "Sala Infecciones Respiratoria Agudas(I.R.A)",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-16-01",
    "display" : "Sala Enfermedades Respiratorias Agudas(E.R.A)",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-17-00",
    "display" : "Cámara Hiperbárica",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-19-00",
    "display" : "Salud Ocupacional",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-20-00",
    "display" : "Movilización General",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-20-01",
    "display" : "Coordinación de Ambulancias",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-21-00",
    "display" : "S.A.M.U",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-22-00",
    "display" : "Servicios Generales",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-23-00",
    "display" : "Vacunatorio",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-24-00",
    "display" : "Sala Curación y Tratamientos",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-25-00",
    "display" : "Esterilización",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-26-00",
    "display" : "Entrega de Leche",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-26-01",
    "display" : "Bodega de Leche",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-27-00",
    "display" : "Sala de Educación",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-28-00",
    "display" : "Sala de Psicoterapia",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-01-00",
    "display" : "Alimentación",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-01-01",
    "display" : "Sedile",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-02-00",
    "display" : "Laboratorio Clínico",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-02-01",
    "display" : "Microbiología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-02-02",
    "display" : "Histología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-03-03",
    "display" : "Banco de Sangre",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-04-00",
    "display" : "Anatomía Patológica",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-04-01",
    "display" : "Depósito de Cadáveres(Necropsia)",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-04-02",
    "display" : "Citología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-05-00",
    "display" : "Imagenología y Ultrasonografía",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-05-01",
    "display" : "Radiografías Simples",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-05-02",
    "display" : "Radiografías Complejas",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-05-03",
    "display" : "Radiografías Dentales",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-05-04",
    "display" : "Tomografía Axial Computarizada",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-05-05",
    "display" : "Angiografía",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-05-06",
    "display" : "Ecografía",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-05-07",
    "display" : "Eco Dopler",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-05-08",
    "display" : "Ecotomografía",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-05-09",
    "display" : "Ecocardiografía",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-06-01",
    "display" : "Resonancia Nuclear Magnética",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-06-02",
    "display" : "Braquiterapia",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-07-00",
    "display" : "Radioterapia",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-07-01",
    "display" : "Radioterapia con Acelerador Lineal",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-07-02",
    "display" : "Radioterapia con Telecobaltoterapia",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-08-00",
    "display" : "Quimioterapia",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-09-00",
    "display" : "Diálisis",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-09-01",
    "display" : "Peritoneodiálisis",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-10-00",
    "display" : "Kinesiología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-11-00",
    "display" : "Terapia Ocupacional",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-12-01",
    "display" : "Fonoaudiología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-13-01",
    "display" : "Farmacia",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-14-01",
    "display" : "Procedimientos de Cardiología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-14-02",
    "display" : "Electrocardiograma(E.C.G)",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-14-03",
    "display" : "Endoscopía",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-14-05",
    "display" : "Procedimientos Ortopédicos",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-14-06",
    "display" : "Procedimientos Gastroenterológicos",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-14-07",
    "display" : "Electroencéfalograma(E.E.G)",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-14-08",
    "display" : "Espirometría",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-14-09",
    "display" : "Audiometría",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-14-10",
    "display" : "Test de Esfuerzo",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-14-11",
    "display" : "Procedimientos Ginecológicos",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-14-12",
    "display" : "Procedimientos Neurológicos",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-15-03",
    "display" : "Pabellón Oftalmológico",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-15-04",
    "display" : "Pabellón Obstétrico Electivo",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-15-05",
    "display" : "Pabellón Obstétrico de Urgencia",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-15-06",
    "display" : "Sala de Partos",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-15-07",
    "display" : "Sala de Recuperación",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-18_00",
    "display" : "Medicina Preventiva",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-06-00",
    "display" : "Medicina Nuclear",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-14-00",
    "display" : "Sala de Procedimientos Indiferenciados",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-15-00",
    "display" : "Pabellón Quirúrgico Indiferenciado",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-15-01",
    "display" : "Pabellón Quirúrgico de Cirugía Electiva",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-15-02",
    "display" : "Pabellón Quirúrgico de Cirugía de Urgencia",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-15-08",
    "display" : "Pabellón de Cirugía Menor",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "10-200-0",
    "display" : "Unidad de Emergencia(Indiferenciado)",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "10-200-1",
    "display" : "Unidad Emergencia Adultos",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "10-200-2",
    "display" : "Unidad Emergencia Niños",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "13-05-10",
    "display" : "Mamografía",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "13-28-01",
    "display" : "Psicología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "de Apoyo Diagnóstico"
    }]
  },
  {
    "code" : "09-007-0",
    "display" : "Cirugía Bucal",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "09-008-0",
    "display" : "Cirugía y Traumatología Máxilo Facial",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "09-009-0",
    "display" : "Trastornos Temporomandibulares y Dolor Orofacial",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-105-0",
    "display" : "Gastroenterología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-210-0",
    "display" : "Anestesiología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-102-0",
    "display" : "Broncopulmonar",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-209-0",
    "display" : "Cardiocirugía",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-103-0",
    "display" : "Cardiología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-201-0",
    "display" : "Cirugía Abdominal",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-203-0",
    "display" : "Cirugía Máxilo Facial",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-204-0",
    "display" : "Cirugía Plástica",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-206-0",
    "display" : "Cirugía Tórax",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-111-0",
    "display" : "Dermatología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-104-0",
    "display" : "Endocrinología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-112-0",
    "display" : "Enf. Trasmisión Sexual",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-106-0",
    "display" : "Genética",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-107-0",
    "display" : "Hematología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-118-0",
    "display" : "Infectología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-114-0",
    "display" : "Med.Física y Rehabilitación",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-108-0",
    "display" : "Nefrología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-208-0",
    "display" : "Neurocirugía",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-115-0",
    "display" : "Neurología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-109-0",
    "display" : "Nutrición",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "09-200-0",
    "display" : "Odontología indiferenciado",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-116-0",
    "display" : "Oncología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-117-0",
    "display" : "Psiquiatría",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-700-0",
    "display" : "Traumatología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-800-0",
    "display" : "Urología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  },
  {
    "code" : "07-301-0",
    "display" : "Ginecología",
    "property" : [{
      "code" : "tipo",
      "valueString" : "Atención Ambulatoria"
    }]
  }]
}

```
