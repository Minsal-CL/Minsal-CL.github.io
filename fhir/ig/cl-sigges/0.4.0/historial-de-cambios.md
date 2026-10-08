# Historial de cambios - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* **Historial de cambios**

## Historial de cambios

### 0.4.0 — alineación con TEI (en preparación, rama feat/alineacion-tei)

Contrasta la guía con **Tiempos de Espera Interoperable** (TEI 0.2.3) y con el plan TEI-GES. No cambia el mensaje ni la respuesta; ordena qué emite cada guía y cierra la brecha de datos GES que hoy tiene TEI. Ver [Relación con TEI](relacion-tei.md).

| | | |
| :--- | :--- | :--- |
| Flujo | La SIC y la PO de consulta se derivan de los eventos TEI`iniciar`y`atender`; el establecimiento emite por esta guía sólo lo que TEI no tiene | D-017 |
| Perfiles TEI | No se heredan (TEI fija`status = draft`y códigos propios): se mapean | D-018 |
| Terminología | 4 ConceptMaps TEI → SIGGES generados con`tools/tei2sigges.py`(problema de salud, derivado para, especialidad, motivo de cierre) | D-019 |
| Caso | `CasoGES.type[rama]`pasa a`1..1`; nuevo`type[programaGES]`con SNOMED CT (`VSProgramaGESSnomed`) | D-020 |
| Modelo TEI-GES | Se mantiene un solo`EpisodeOfCare`; el estado programático, si se publica, lo calcula SIGGES | D-021 |
| Herramientas | Se reincorporan`tools/catalogo2fsh.py`(reproduce los 11 CodeSystems;`--check`),`tools/fhir2sigges.py`(DEIS de 6 dígitos y RUN de la 0.4.0) y`Catalogo.xls` | P-18 |
| Pruebas | Caso negativo`EpisodeOfCare-neg08-sin-rama` | D-020 |

**Qué tiene que ajustar quien ya genera mensajes 0.4.0:** informar siempre la rama del caso.

### 0.4.0 — alineación con el portafolio HCC (propuesta)

La 0.4.0 no cambia lo que la guía hace: los mismos siete documentos, el mismo mensaje y la misma respuesta. Cambia cómo encaja con el resto del portafolio de Historia Clínica Compartida y corrige los errores que impedían compilarla limpiamente: el build de la 0.2.0 terminaba con 38 errores y 420 advertencias.

| | | |
| :--- | :--- | :--- |
| Dependencias | Se agrega NID 0.4.9 (`hl7.fhir.cl.minsal.nid`) junto a CL Core 1.9.4 | D-002 |
| Paciente | `PacienteGES`deriva de`MINSALPaciente`. El RUN usa el tipo de NID (`CSTipoIdentificador#1`); el de la 0.2.0 (`CSCodigoDNI#NNCHL`) no pertenece al ValueSet de NID.`deceased[x]`pasa a ser obligatorio (lo exige NID) | D-002 |
| Profesional | `PrestadorGES`se mantiene en CL Core, pero el RUN es`official`, con su tipo y con`system`obligatorio | D-003 |
| Establecimiento | `EstablecimientoGES`deriva de`MINSALPrestadorOrganizacional`. DEIS de 6 dígitos con el`system`del portafolio y DEIS2`NN-NNN`en transición; al menos uno de los dos (`ges-est-deis`) | D-004 |
| RUN | El URI del RUN queda en un solo alias (`$RUN`), provisional hasta que exista el nacional | D-005 |
| Catálogos | Las propiedades que no son códigos del propio CodeSystem pasan a`string`. Elimina 326 advertencias y 4 errores de filtro en ValueSets | D-006 |
| Invariantes | `ges-msg-4`reescrita: usaba`eventCoding`(nombre JSON) en vez de`event`y aceptaba cualquier mensaje.`ges-hd-verif`se retira: la regla la aplica el receptor con el catálogo | D-007 |
| Ejemplos | Los 5 casos se publican como ejemplos (había 20 referencias rotas). CIE-10 sin display traducido. Dominios`example.org`y ningún RUN en URLs | D-008, D-011 |
| Terminología | `Id`de los ConceptMap igual al final de su`url`. ConceptMap de confirma/sospecha/descarta marcado`experimental`. Nuevo NamingSystem`NSCasoLocal` | — |
| Contrato | `CapabilityStatement`del receptor y del emisor | D-012 |

**Qué tiene que ajustar quien ya genera mensajes 0.2.0:** el tipo del RUN del paciente y `deceasedBoolean`; el RUN del profesional como identificador oficial con `system`; y el DEIS de 6 dígitos del establecimiento.

### 0.2.0 — diferencias con v0.1.0 (sigescg)

| | | |
| :--- | :--- | :--- |
| Enfoque | Emula formularios (`Questionnaire`/`QuestionnaireResponse`) | Modela el caso y los hechos clínicos (recursos FHIR estándar) |
| Alcance | 5 formularios, piloto cáncer gástrico | 7 documentos de la API v1.5, todos los PS |
| Paciente | Ítems repetidos en cada formulario | `Patient`(CL Core) una vez por mensaje |
| Caso | `QuestionnaireResponse.identifier`= "número de caso" (mezclado con el documento) | `EpisodeOfCare`con número SIGGES / local; folio aparte por documento |
| Establecimientos | Texto libre | Código DEIS + CodeSystem con Servicio de Salud |
| Especialidades | CS numérico de CL Core | Catálogo SIGGES (`07-105-2`…) |
| Terminología | Copia manual | Generada desde`Catalogo.xls`con script e informe de calidad |
| Datos por PS | Nuevos ítems de formulario | Observation con código |
| Transporte | No definido | `$process-message`, respuesta, idempotencia y errores |
| Transición | — | Traductor a API v1.5 probado con 15 mensajes |

### ¿Qué pasa con los Questionnaire?

No se descartan. Para establecimientos **sin ficha clínica** que registran manualmente, un `Questionnaire` con extracción SDC (`$extract`) puede generar los mismos recursos de esta guía. El formulario pasa a ser una **forma de captura**, no el formato de intercambio.

