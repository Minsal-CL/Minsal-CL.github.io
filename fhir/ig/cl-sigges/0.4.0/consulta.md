# Consulta de casos - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* **Consulta de casos**

## Consulta de casos

### Reemplazo de /consultar-sigges

La API v1.5 consulta las garantías de un beneficiario con `POST /consultar-sigges {Rut, DV}`. En FHIR se resuelve con una **búsqueda estándar**, sin operación a medida:

```
POST [base]/EpisodeOfCare/_search
Content-Type: application/x-www-form-urlencoded

patient.identifier=https://interoperabilidad.minsal.cl/fhir/ig/sigges/sid/run|9876543-3
&status=active
&_revinclude=Task:focus

```

La respuesta es un `Bundle` de tipo `searchset` con:

* Los casos (`EpisodeOfCare`) del beneficiario, con problema de salud, rama y número SIGGES.
* Las garantías de cada caso como [GarantiaOportunidadGES](StructureDefinition-garantia-oportunidad-ges.md), con su estado (`businessStatus`) y su plazo (`restriction.period`).

Ejemplo: [consulta de casos del paciente A](Bundle-consulta-casos-pac-a.md).

* [Garantía 701 — confirmación diagnóstica (cumplida)](Task-gar-a-701.md)
* [Garantía 702 — intervención quirúrgica (cumplida)](Task-gar-a-702.md)
* [Garantía 703 — seguimiento (vigente, vence el 19/07/2026)](Task-gar-a-703.md)

### Parámetros sugeridos

| | |
| :--- | :--- |
| `patient.identifier` | RUN del beneficiario (obligatorio) |
| `status` | `active`para casos abiertos |
| `type` | Filtrar por problema de salud, p.ej.`type=…/problema-salud-ges|27` |
| `_revinclude=Task:focus` | Incluir garantías, cierres y excepciones del caso |
| `_include=EpisodeOfCare:condition` | Incluir el diagnóstico vigente |

> La consulta es la puerta para que el establecimiento vea **plazos** y actúe antes del vencimiento. Esto no es posible con la respuesta actual de `/consultar-sigges`.

