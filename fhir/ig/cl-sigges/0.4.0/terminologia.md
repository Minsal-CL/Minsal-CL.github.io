# Terminología - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* **Terminología**

## Terminología

### Del Excel al CodeSystem

El catálogo de FONASA (`Catalogo.xls`, 10 hojas) se convierte **automáticamente** en CodeSystems FHIR con `tools/catalogo2fsh.py`. Cuando FONASA publique un catálogo nuevo, basta con reemplazar el archivo y volver a ejecutar el script. Esto elimina la copia manual de códigos, que fue el origen de varias inconsistencias de la v0.1.0.

| | | | |
| :--- | :--- | :--- | :--- |
| [Problemas de salud GES](CodeSystem-problema-salud-ges.md) | PROBLEMAS DE SALUD | 90 | — |
| [Ramas](CodeSystem-rama-problema-salud-ges.md) | GARANTIAS + ESTADOS HD | 175 | `problemaSalud`,`decreto` |
| [Garantías](CodeSystem-garantia-ges.md) | GARANTIAS | 707 | `rama`,`problemaSalud`,`documentoInicio`,`documentoTermino` |
| [Derivada para](CodeSystem-derivada-para-ges.md) | DERIVAPARA | 11 | `documento`(SIC u OA) |
| [Especialidades](CodeSystem-especialidad-sigges.md) | ESPECIALIDADES | 248 | `tipo` |
| [Establecimientos DEIS](CodeSystem-establecimiento-deis.md) | UNIDADES | 2.973 | `deis6`,`servicioSalud` |
| [Servicios de Salud](CodeSystem-servicio-salud-deis.md) | UNIDADES | 30 | — |
| [Causales](CodeSystem-causal-sigges.md) | CAUSALES | 64 | `tipo`,`status`,`effectiveDate`,`retirementDate` |
| [Estados hoja diaria](CodeSystem-estado-hoja-diaria-ges.md) | ESTADOS HD - RAMAS | 99 | `rama`,`verificacion` |
| [Sexo](CodeSystem-sexo-sigges.md) | SEXO | 3 | — |
| [Prestaciones](CodeSystem-prestacion-fonasa.md) | PRESTACIONES | 4.988 | — |

Además, la guía define CodeSystems propios, que no provienen del catálogo:

* [Tipos de documento SIGGES](CodeSystem-tipo-documento-sigges.md), con el código numérico SIGGES y el endpoint v1.5.
* [Tipo de origen](CodeSystem-tipo-origen-ges.md).
* [Datos específicos por PS](CodeSystem-dato-especial-ges.md).
* [Tipos de tarea](CodeSystem-tipo-tarea-ges.md).
* [Estado de garantía](CodeSystem-estado-garantia-ges.md).

### ValueSets por contexto

Las propiedades permiten construir ValueSets por filtro, sin listas manuales:

* [VSDerivadaParaSIC](ValueSet-vs-derivada-para-sic.md) y [VSDerivadaParaOA](ValueSet-vs-derivada-para-oa.md): filtro `documento`.
* [VSCausalCierreCaso](ValueSet-vs-causal-cierre-caso.md) y [VSCausalExcepcionGarantia](ValueSet-vs-causal-excepcion-garantia.md): filtro `tipo`.

### ConceptMaps

* [Sexo FHIR → SIGGES](ConceptMap-sexo-fhir-a-sigges.md).
* [verificationStatus → confirmaSospechaDescarta](ConceptMap-verificacion-a-csd.md). Los valores destino están **pendientes de confirmar** con FONASA.
* TEI → SIGGES (D-019, `experimental`, generados con `tools/tei2sigges.py`): [problema de salud](ConceptMap-tei-a-sigges-problema-salud.md), [derivado para](ConceptMap-tei-a-sigges-derivado-para.md), [especialidad](ConceptMap-tei-a-sigges-especialidad.md) y [motivo de cierre](ConceptMap-tei-a-sigges-motivo-cierre.md). Ver [Relación con TEI](relacion-tei.md).

El caso puede clasificarse además con el concepto SNOMED CT del programa GES ([VSProgramaGESSnomed](ValueSet-vs-programa-ges-snomed.md), mismo criterio que TEI 0.2.3). Es adicional al código FONASA, que sigue obligatorio, y va en el caso y no en el diagnóstico porque es un concepto de programa (D-020).

### Decisiones

Las decisiones de terminología están en el [registro de decisiones del repositorio](https://github.com/CL-GI-MINSAL/CL-SIGGES/blob/main/decisiones.md), con sus alternativas:

* **D-004 y D-013 · Código DEIS.** El portafolio usa el DEIS de 6 dígitos (`http://deis.minsal.cl/establecimientos`). SIGGES usa el DEIS2 `NN-NNN`, el único presente en todas las filas del catálogo: 86 establecimientos tienen DEIS de 6 dígitos igual a `0`. La guía acepta ambos mientras dure la transición. **Pendiente de acuerdo con FONASA.**
* **D-006 · Propiedades de los CodeSystems.** Las propiedades que apuntan a otro catálogo (`rama`, `problemaSalud`, `servicioSalud`) o que son literales (`tipo`, `documento`, `verificacion`) son de tipo `string`. Declararlas `code` hacía que el validador las buscara dentro del mismo CodeSystem.
* **D-014 · El Servicio de Salud no viaja en el mensaje**: se deriva del establecimiento. La API v1.5 lo pide en todos los documentos, y el traductor lo completa.
* **D-015 · Causales con vigencia.** Las causales vencidas se marcan `status = retired`. Así se pueden rechazar documentos nuevos con causales antiguas sin perder la historia.
* **D-016 · Publicación.** Los CodeSystems deben quedar en el servidor terminológico nacional para validar en línea (`$validate-code`) y para que los sistemas de origen construyan sus listas desde ahí.

### Calidad del catálogo

El script genera un informe con cada problema que encuentra. El detalle está en [Observaciones](hallazgos.md#catalogo).

