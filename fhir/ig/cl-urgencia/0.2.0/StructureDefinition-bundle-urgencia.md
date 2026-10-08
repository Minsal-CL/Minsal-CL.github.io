# Bundle de urgencia (base) - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* [**Artefactos**](artifacts.md)
* **Bundle de urgencia (base)**

## Resource Profile: Bundle de urgencia (base) ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/bundle-urgencia | *Version*:0.2.0 |
| Draft as of 2026-10-08 | *Computable Name*:BundleUrgencia |

 
Estructura común de los tres Bundle de urgencia. No se usa directamente: se usa el perfil del evento correspondiente. 

**Usages:**

* Derived from this Profile: [Bundle de abandono de urgencia](StructureDefinition-bundle-abandono-urgencia.md), [Bundle de admisión de urgencia](StructureDefinition-bundle-admision-urgencia.md) and [Bundle de alta de urgencia](StructureDefinition-bundle-alta-urgencia.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.cl.minsal.urgencia.eventos|current/StructureDefinition/StructureDefinition-bundle-urgencia.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bundle-urgencia.csv), [Excel](StructureDefinition-bundle-urgencia.xlsx), [Schematron](StructureDefinition-bundle-urgencia.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bundle-urgencia",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/bundle-urgencia",
  "version" : "0.2.0",
  "name" : "BundleUrgencia",
  "title" : "Bundle de urgencia (base)",
  "status" : "draft",
  "date" : "2026-10-08T00:02:21-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Estructura común de los tres Bundle de urgencia. No se usa directamente: se usa el perfil del evento correspondiente.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : true,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle",
      "short" : "Bundle transaction de un evento de urgencia",
      "constraint" : [{
        "key" : "urg-tx-maestros",
        "severity" : "error",
        "human" : "Patient, Organization y Practitioner se envían solo con creación condicional: request.method = POST, request.url = [Tipo] y request.ifNoneExist = identifier=[system]|[value]. Nunca se actualizan.",
        "expression" : "entry.where(resource is Patient or resource is Organization or resource is Practitioner).all(request.method = 'POST' and request.ifNoneExist.startsWith('identifier=') and request.ifNoneExist.contains('|'))",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/bundle-urgencia"
      },
      {
        "key" : "urg-tx-put-condicional",
        "severity" : "error",
        "human" : "Los recursos del episodio (Encounter, Condition, MedicationRequest, DocumentReference) se envían con PUT condicional: request.method = PUT y request.url = [Tipo]?identifier=[system]|[value].",
        "expression" : "entry.where((resource is Patient or resource is Organization or resource is Practitioner).not()).all(request.method = 'PUT' and request.url.contains('?identifier=') and request.url.contains('|'))",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/bundle-urgencia"
      },
      {
        "key" : "urg-tx-sin-id",
        "severity" : "error",
        "human" : "Los recursos enviados con PUT condicional no llevan Resource.id: el id lo determina el servidor al encontrar (o crear) el recurso por su identificador.",
        "expression" : "entry.where(request.method = 'PUT').all(resource.id.empty())",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/bundle-urgencia"
      },
      {
        "key" : "urg-tx-identificador",
        "severity" : "error",
        "human" : "El identificador de la operación condicional (request.url o request.ifNoneExist) debe ser el mismo que trae el recurso (identifier o masterIdentifier).",
        "expression" : "entry.where(request.method = 'PUT').select(request.url.substring(request.url.indexOf('|') + 1) in (resource.identifier.value | resource.masterIdentifier.value)).allTrue() and entry.where(request.method = 'POST').select(request.ifNoneExist.substring(request.ifNoneExist.indexOf('|') + 1) in resource.identifier.value).allTrue()",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/bundle-urgencia"
      },
      {
        "key" : "urg-tx-mismo-paciente",
        "severity" : "error",
        "human" : "Todos los recursos del Bundle se refieren al mismo paciente: su subject apunta a la entrada del paciente.",
        "expression" : "(entry.resource.ofType(Encounter) | entry.resource.ofType(Condition) | entry.resource.ofType(MedicationRequest) | entry.resource.ofType(DocumentReference)).all(subject.reference = %resource.entry.where(resource is Patient).fullUrl.first())",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/bundle-urgencia"
      },
      {
        "key" : "urg-tx-restringido",
        "severity" : "error",
        "human" : "Si el episodio está marcado como restringido (meta.security = R), también deben estarlo sus diagnósticos, indicaciones y documento.",
        "expression" : "entry.resource.ofType(Encounter).meta.security.where(code = 'R').exists() implies (entry.resource.ofType(Condition) | entry.resource.ofType(MedicationRequest) | entry.resource.ofType(DocumentReference)).all(meta.security.where(system = 'http://terminology.hl7.org/CodeSystem/v3-Confidentiality' and code = 'R').exists())",
        "source" : "https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/bundle-urgencia"
      }]
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "short" : "transaction",
      "patternCode" : "transaction"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resource"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Entrada: recurso más su operación condicional",
      "min" : 3,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "urn:uuid: usado por las referencias internas de la transacción",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Recurso de la entrada",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.request",
      "path" : "Bundle.entry.request",
      "short" : "POST con ifNoneExist (maestros) o PUT condicional (episodio)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.request.method",
      "path" : "Bundle.entry.request.method",
      "short" : "POST (maestros) | PUT (episodio)"
    },
    {
      "id" : "Bundle.entry.request.url",
      "path" : "Bundle.entry.request.url",
      "short" : "[Tipo] (maestros) o [Tipo]?identifier=[sistema]|[valor] (episodio)"
    },
    {
      "id" : "Bundle.entry.request.ifNoneExist",
      "path" : "Bundle.entry.request.ifNoneExist",
      "short" : "identifier=[sistema]|[valor] (solo maestros)"
    },
    {
      "id" : "Bundle.entry:paciente",
      "path" : "Bundle.entry",
      "sliceName" : "paciente",
      "short" : "Paciente",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:paciente.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Paciente (MINSALPaciente del NID)",
      "type" : [{
        "code" : "Patient",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPaciente"]
      }]
    },
    {
      "id" : "Bundle.entry:paciente.request",
      "path" : "Bundle.entry.request",
      "short" : "POST Patient, ifNoneExist identifier=[sistema]|[valor]"
    },
    {
      "id" : "Bundle.entry:paciente.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:paciente.request.ifNoneExist",
      "path" : "Bundle.entry.request.ifNoneExist",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:establecimiento",
      "path" : "Bundle.entry",
      "sliceName" : "establecimiento",
      "short" : "Establecimiento emisor y, si corresponde, establecimiento de destino",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:establecimiento.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Establecimiento (MINSALPrestadorOrganizacional del NID)",
      "type" : [{
        "code" : "Organization",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorOrganizacional"]
      }]
    },
    {
      "id" : "Bundle.entry:establecimiento.request",
      "path" : "Bundle.entry.request",
      "short" : "POST Organization, ifNoneExist identifier=[sistema DEIS]|[código]"
    },
    {
      "id" : "Bundle.entry:establecimiento.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:establecimiento.request.ifNoneExist",
      "path" : "Bundle.entry.request.ifNoneExist",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:profesional",
      "path" : "Bundle.entry",
      "sliceName" : "profesional",
      "short" : "Profesional (opcional)",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:profesional.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Profesional (MINSALPrestadorProfesional del NID)",
      "type" : [{
        "code" : "Practitioner",
        "profile" : ["https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/MINSALPrestadorProfesional"]
      }]
    },
    {
      "id" : "Bundle.entry:profesional.request",
      "path" : "Bundle.entry.request",
      "short" : "POST Practitioner, ifNoneExist identifier=[sistema]|[RUN]"
    },
    {
      "id" : "Bundle.entry:profesional.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:profesional.request.ifNoneExist",
      "path" : "Bundle.entry.request.ifNoneExist",
      "min" : 1
    }]
  }
}

```
