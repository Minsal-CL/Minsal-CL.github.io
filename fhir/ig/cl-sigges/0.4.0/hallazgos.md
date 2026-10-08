# Observaciones a API v1.5 y catálogo - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* **Observaciones a API v1.5 y catálogo**

## Observaciones a API v1.5 y catálogo

Observaciones detectadas al contrastar el **Documento de Interoperabilidad SIGGES 2.0 v1.5**, el **Conjunto mínimo de datos** y el `Catalogo.xls`. Se entregan como insumo para la mesa técnica con FONASA. Todas tienen solución en esta guía o en el traductor, pero conviene corregirlas en su origen.

### API v1.5

| | | | |
| :--- | :--- | :--- | :--- |
| 1 | Formato de fecha: la especificación dice`DD/MM/AAAA`, pero el ejemplo de CC usa`2026-06-25` | Rechazos ambiguos | ISO 8601 en todos los campos |
| 2 | DEIS en tres formatos en los ejemplos:`01-304`,`111100`y`1` | No se sabe cuál validar | Un formato único (`NN-NNN`propuesto) |
| 3 | `tipoDeisOrigen`aparece como`PUBLICO`y como`1` | Ídem | Catálogo explícito ([CSTipoOrigenGES](CodeSystem-tipo-origen-ges.md)) |
| 4 | Especialidad aparece como`07-301-04`,`07-301-4`y`301` | Ídem | Validar contra el catálogo ESPECIALIDADES |
| 5 | `nombrePaciente`(SIC) vs`nombresPaciente`(resto);`pscCasoPaci`(EXGO) vs`problemaSalud` | Mapeos especiales por endpoint | Nombres uniformes |
| 6 | La descripción de`garantia`en OA y EXGO está rota ("Si Exceptúa (34) o Cierra Garantía (34)") | Semántica incierta | Definir: garantía GES del catálogo GARANTIAS |
| 7 | Campos ad hoc por PS:`enfermedadRenalVfg1..3`,`parametroEspecial`,`cuartoTurnoEspecial` | Cada PS nuevo cambia la API | Lista clave-valor codificada (en FHIR, Observation) |
| 8 | `comunaEspecial`,`regionEspecial`,`fono/emailBeneficiarioEspecial`en OA | Duplican datos del paciente | Tomarlos del paciente |
| 9 | `estado`de HD documentado como "se almacena en VC_PARAMETROESPECIAL" | Se filtra un detalle interno | Documentar solo el contrato |
| 10 | Ningún documento lleva el número de caso ni referencia al documento previo | Casos concurrentes o reabiertos son ambiguos | Número de caso en la respuesta y en los mensajes siguientes |
| 11 | No se documenta la respuesta: N° de caso, códigos de error, idempotencia por folio, anulación o corrección | Integraciones frágiles | Contrato de respuesta ([Mensajería](mensajeria.md)) |
| 12 | OAuth`grant_type=password`con client_id/secret | Flujo inadecuado para sistema a sistema | `client_credentials` |
| 13 | `ramaProblemaSalud`obligatoria en SIC, IPD y HD, pero ausente en OA, PO y CC | La rama se infiere | Rama siempre presente (en FHIR viaja en el caso) |
| 14 | `confirmaSospechaDescarta`descrito como "checkbox", sin valores | Valores desconocidos | Publicar dominio (propuesto: C/S/D) |
| 15 | La consulta SIGGES no documenta su respuesta | No se pueden gestionar plazos | Casos + garantías con plazo ([Consulta](consulta.md)) |

### Catálogo

Informe generado automáticamente por `tools/catalogo2fsh.py`:

* **Ramas**: la rama `11300` aparece en ESTADOS HD pero no en GARANTIAS (no se puede asociar a un problema de salud).
* **Ramas**: 98 de 174 ramas tienen descripción vacía (". {decreto…}"); el display se compone con el nombre del PS + decreto.
* **Garantías**: sólo 6 de 707 garantías informan el par documento inicio–término, y lo hacen dentro del texto (p.ej. "(SIC-PO)"). No hay plazo en días. Se propone agregar columnas `docInicio`, `docTermino`, `plazoDias`.
* **Servicios de salud**: códigos con más de un nombre: `5` → Coquimbo, O'Higgins
* **Establecimientos**: 86 establecimientos tienen DEIS de 6 dígitos = `0` (sólo tienen formato `NN-NNN`). La API mezcla ambos formatos en sus ejemplos.
* **UNIDADES**: 4 códigos con espacios al inicio/final en `DEIS2` (generan duplicados aparentes).
* **Establecimientos (DEIS2)**: 19 códigos duplicados en `DEIS2` (01-901, 05-455, 06-409, 13-911, 15-320, 15-460, 15-462, 15-464, 16-709, 16-829…). Se conserva la primera fila.
* **Causales**: descripciones repetidas con códigos distintos: "Criterios de Inclusión/Exclusión (según protocolos)" (Cierre de Caso) → 102, 7; "Inasistencia" (Cierre de Caso) → 24, 2; "Rechazo del Prestador Designado o Rechazo del Tratamiento" (Cierre de Caso) → 3, 14; "Término del Tratamiento Garantizado" (Cierre de Caso) → 101, 5; "Postergación de la Prestación" (Excepción de Garantías) → 201, 209, 200; "Rechazo del Prestador Designado o Rechazo del Tratamiento" (Excepción de Garantías) → 203, 204.
* **Estados Hoja Diaria**: 1 códigos duplicados en `NODOHD_COD_NODOHD` (6012). Se conserva la primera fila.
* **PRESTACIONES**: 1 códigos con espacios al inicio/final en `c` (generan duplicados aparentes).
* **Prestaciones**: 1 códigos duplicados en `c` (2508132). Se conserva la primera fila.
* **Prestaciones**: largos de código heterogéneos {7: 4772, 9: 149, 6: 57, 8: 8, 13: 1, 11: 1}. Los de 6 dígitos probablemente perdieron el cero inicial al pasar por Excel.

