# Artefactos - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* **Artefactos**

## Artefactos

Esta página lista los artefactos FHIR definidos en esta guía, agrupados según su función.

### Bundles por evento 

Un `Bundle` de tipo `transaction` por cada evento de la atención de urgencia (admisión, alta y abandono) y su estructura común.

| | |
| :--- | :--- |
| [Bundle de admisión de urgencia](StructureDefinition-bundle-admision-urgencia.md) | Evento admisión: el paciente es admitido en urgencia. Abre el episodio (Encounter en in-progress) y avisa a la red que el paciente se encuentra en atención. |
| [Bundle de alta de urgencia](StructureDefinition-bundle-alta-urgencia.md) | Evento alta: el profesional da el alta de urgencia. Cierra el episodio (Encounter en finished) e informa diagnóstico de egreso, destino, medicamentos indicados y el documento clínico en PDF. |
| [Bundle de abandono de urgencia](StructureDefinition-bundle-abandono-urgencia.md) | Evento abandono: el paciente se retira voluntariamente sin alta médica (fuga o NEA). Cierra el episodio (Encounter en finished). Si alcanzó a ser evaluado, puede incluir la hipótesis diagnóstica y el documento clínico. |
| [Bundle de urgencia (base)](StructureDefinition-bundle-urgencia.md) | Estructura común de los tres Bundle de urgencia. No se usa directamente: se usa el perfil del evento correspondiente. |

### Encuentro de urgencia 

El episodio de urgencia (`Encounter`) y las reglas que debe cumplir en cada evento. Es un solo recurso que se actualiza en la admisión, el alta o el abandono.

| | |
| :--- | :--- |
| [Encuentro de urgencia](StructureDefinition-encuentro-urgencia.md) | Episodio de atención en una unidad de urgencia, desde la admisión hasta el alta o el abandono. Basado en EncounterCL de CL-Core. Es el recurso que la red usa para saber que el paciente estuvo en urgencia, cuándo y cómo terminó. |
| [Encuentro de urgencia - estado en la admisión](StructureDefinition-encuentro-urgencia-admision.md) | Reglas del episodio de urgencia al momento de la admisión: abierto (in-progress), sin fecha de término ni destino. No es un recurso distinto: es el mismo Encounter que después se actualiza con el alta o el abandono. |
| [Encuentro de urgencia - estado en el alta](StructureDefinition-encuentro-urgencia-alta.md) | Reglas del episodio de urgencia al momento del alta: cerrado (finished), con fecha de alta, destino y diagnóstico de egreso. No es un recurso distinto: es el mismo Encounter creado en la admisión (mismo ID DAU), actualizado. |
| [Encuentro de urgencia - estado en el abandono](StructureDefinition-encuentro-urgencia-abandono.md) | Reglas del episodio de urgencia cuando el paciente se retira voluntariamente sin alta médica (fuga o NEA): cerrado (finished), con la fecha y hora en que se constató el abandono y el tipo de abandono. No es un recurso distinto: es el mismo Encounter creado en la admisión (mismo ID DAU), actualizado. |

### Contenido clínico 

Diagnóstico, indicación de medicamentos al alta y referencia al documento clínico en PDF. Paciente, profesional y establecimiento usan directamente los perfiles del NID.

| | |
| :--- | :--- |
| [Diagnóstico de urgencia](StructureDefinition-diagnostico-urgencia.md) | Hipótesis o diagnóstico de egreso de la atención de urgencia. Basado en CoreDiagnosticoCl de CL-Core. El tipo de diagnóstico del CMBD (hipótesis, confirmado, descartado) se expresa con `verificationStatus`. |
| [Indicación de medicamento al alta](StructureDefinition-indicacion-medicamento-urgencia.md) | Medicamento indicado al alta de urgencia para que el paciente continúe su tratamiento. Acepta nombre genérico y posología en texto libre (CMBD: INDICACIÓN DE FÁRMACOS e ID RECETA). |
| [Documento de la atención de urgencia](StructureDefinition-documento-urgencia.md) | Referencia al documento clínico de la atención (DAU o epicrisis de urgencia) en PDF. Permite a cualquier establecimiento de la red descubrir y descargar el detalle clínico completo. |

### Extensiones 

Datos del CMBD de Urgencia sin elemento FHIR equivalente. Todas son opcionales.

| | |
| :--- | :--- |
| [Medio de llegada](StructureDefinition-medio-llegada.md) | Medio de transporte con que el paciente llega a la unidad de urgencia. |
| [Previsión de salud](StructureDefinition-prevision.md) | Previsión de salud del paciente al momento de la atención y, si es FONASA, su tramo. |
| [Ley previsional o programa](StructureDefinition-ley-previsional.md) | Ley social o programa que cubre la atención de urgencia. Usa la terminología del NID; el binding es extensible porque el NID aún no incluye PRAIS (código 05 del CMBD). |
| [Clasificación de la consulta](StructureDefinition-clasificacion-consulta.md) | Clasificación médico-legal de la consulta registrada en la admisión. |
| [Pronóstico médico-legal](StructureDefinition-pronostico-medico-legal.md) | Pronóstico médico-legal registrado al cierre de la atención. |
| [Pertinencia de la atención](StructureDefinition-pertinencia.md) | Indica si la consulta fue pertinente para una unidad de urgencia. |
| [Diagnóstico GES](StructureDefinition-diagnostico-ges.md) | Indica si el diagnóstico corresponde a un problema de salud con Garantías Explícitas en Salud (GES). |

### Conjuntos de valores 

Códigos permitidos en cada elemento codificado de la guía.

| | |
| :--- | :--- |
| [Estado del encuentro de urgencia](ValueSet-vs-estado-encuentro-urgencia.md) | Subconjunto de estados de Encounter usados en urgencia. |
| [Procedencia del paciente](ValueSet-vs-procedencia.md) | Procedencia del paciente al consultar en urgencia. |
| [Medio de llegada](ValueSet-vs-medio-llegada.md) | Medio de llegada del paciente a urgencia. |
| [Unidad de atención de urgencia](ValueSet-vs-unidad-atencion.md) | Tipo de atención de urgencia asignada en la admisión. |
| [Clasificación de la consulta](ValueSet-vs-clasificacion-consulta.md) | Clasificación médico-legal de la consulta de urgencia. |
| [Destino de egreso de urgencia](ValueSet-vs-destino-egreso.md) | Todos los desenlaces con que puede cerrarse un episodio de urgencia: destinos de alta y tipos de abandono. |
| [Destino al alta de urgencia](ValueSet-vs-destino-alta.md) | Destinos válidos para el evento de alta. |
| [Tipo de abandono de la atención](ValueSet-vs-tipo-abandono.md) | Tipos de abandono válidos para el evento de abandono. |
| [Pronóstico médico-legal](ValueSet-vs-pronostico-medico-legal.md) | Pronóstico médico-legal registrado al cierre de la atención. |
| [Diagnósticos de urgencia](ValueSet-vs-diagnostico-urgencia.md) | Diagnósticos codificados en CIE-10 (preferente) o SNOMED CT. Se acepta texto libre cuando el diagnóstico no está codificado. |
| [Uso del diagnóstico en el episodio](ValueSet-vs-uso-diagnostico.md) | Indica si el diagnóstico corresponde a la hipótesis inicial o al diagnóstico de egreso. |

### Sistemas de códigos 

Códigos locales de la guía, tomados del CMBD de Urgencia del DEIS. Se mantienen experimentales hasta su publicación en el Servidor Terminológico Nacional.

| | |
| :--- | :--- |
| [Procedencia del paciente](CodeSystem-procedencia.md) | Origen del paciente al consultar en urgencia (CMBD Urgencia: PROCEDENCIA DEL PACIENTE). |
| [Medio de llegada](CodeSystem-medio-llegada.md) | Medio de transporte con que el paciente llega a urgencia (CMBD Urgencia: LLEGADA). |
| [Unidad de atención de urgencia](CodeSystem-unidad-atencion.md) | Tipo de atención asignada en la admisión (CMBD Urgencia: UNIDAD DE ATENCIÓN). |
| [Clasificación de la consulta](CodeSystem-clasificacion-consulta.md) | Clasificación médico-legal de la consulta (CMBD Urgencia: CLASIFICACIÓN DE LA CONSULTA). |
| [Destino al alta de urgencia](CodeSystem-destino-alta.md) | Destino indicado por el profesional al dar el alta de urgencia (CMBD Urgencia: DESTINO_ALTA; NT 149 con ajustes DGTIC). |
| [Tipo de abandono de la atención](CodeSystem-tipo-abandono.md) | Momento en que el paciente abandona voluntariamente la atención de urgencia. Códigos alineados con CodeSystem abandono de la guía de Urgencia publicada (hl7.fhir.cl.minsal.urgencia 0.1.2-ballot). |
| [Pronóstico médico-legal](CodeSystem-pronostico-medico-legal.md) | Pronóstico médico-legal registrado al cierre (CMBD Urgencia: PRONÓSTICO MÉDICO LEGAL). |

### Ejemplos 

Un episodio con admisión y alta, otro cerrado por abandono (fuga), y los actores que participan.

| | |
| :--- | :--- |
| [Bundle de admisión](Bundle-BundleAdmisionEj.md) | Admisión de la paciente a urgencia: abre el episodio DAU-2026-000123. |
| [Bundle de alta](Bundle-BundleAltaEj.md) | Alta a domicilio del episodio DAU-2026-000123 con diagnóstico, indicación de medicamento y PDF. |
| [Bundle de abandono (fuga)](Bundle-BundleAbandonoEj.md) | Cierre del episodio DAU-2026-000456 porque la paciente se retiró sin alta médica. |
| [Paciente de urgencia](Patient-PacienteUrgenciaEj.md) | Paciente chilena identificada por RUN, conforme a MINSALPaciente del NID. |
| [Médica de urgencia](Practitioner-ProfesionalUrgenciaEj.md) | Médica cirujana que da el alta, conforme a MINSALPrestadorProfesional del NID. |
| [Hospital de ejemplo](Organization-EstablecimientoUrgenciaEj.md) | Establecimiento emisor identificado por su código DEIS, conforme a MINSALPrestadorOrganizacional del NID. |
| [CESFAM de ejemplo](Organization-EstablecimientoDestinoEj.md) | Establecimiento de atención primaria al que se deriva a la paciente para control. |

