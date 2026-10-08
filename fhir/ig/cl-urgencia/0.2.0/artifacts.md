# Artefactos - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* **Artefactos**

## Artefactos

Esta página lista los artefactos FHIR definidos en esta guía, agrupados según su función.

### Bundles por evento 

Un `Bundle` de tipo `transaction` por cada evento de la atención de urgencia (admisión, alta y abandono) y su estructura común.

| | |
| :--- | :--- |
| [Bundle de abandono de urgencia](StructureDefinition-bundle-abandono-urgencia.md) | Evento abandono: el paciente se retira voluntariamente sin alta médica (fuga o NEA). Cierra el episodio (Encounter en finished). Si alcanzó a ser evaluado, puede incluir la hipótesis diagnóstica y el documento clínico. |
| [Bundle de admisión de urgencia](StructureDefinition-bundle-admision-urgencia.md) | Evento admisión: el paciente es admitido en urgencia. Abre el episodio (Encounter en arrived) y avisa a la red que el paciente está en la unidad de urgencia. |
| [Bundle de alta de urgencia](StructureDefinition-bundle-alta-urgencia.md) | Evento alta: el profesional da el alta de urgencia. Cierra el episodio (Encounter en finished) e informa diagnóstico de egreso codificado en CIE-10, destino, medicamentos indicados y el documento clínico en PDF. Si el PDF aún no está disponible, el Bundle de alta se envía sin él y se reenvía completo cuando el PDF exista (el PUT condicional no duplica nada). |
| [Bundle de urgencia (base)](StructureDefinition-bundle-urgencia.md) | Estructura común de los tres Bundle de urgencia. No se usa directamente: se usa el perfil del evento correspondiente. |

### Encuentro de urgencia 

El episodio de urgencia (`Encounter`) y las reglas que debe cumplir en cada evento. Es un solo recurso que se actualiza en la admisión, el alta o el abandono.

| | |
| :--- | :--- |
| [Encuentro de urgencia](StructureDefinition-encuentro-urgencia.md) | Episodio de atención en una unidad de urgencia, desde la admisión hasta el alta o el abandono. Basado en EncounterCL de CL-Core. Es el recurso que la red usa para saber que el paciente estuvo en urgencia, cuándo y cómo terminó. |
| [Encuentro de urgencia - estado en el abandono](StructureDefinition-encuentro-urgencia-abandono.md) | Reglas del episodio de urgencia cuando el paciente se retira voluntariamente sin alta médica (fuga o NEA): cerrado (finished), con la fecha y hora en que se constató el abandono y el tipo de abandono. No es un recurso distinto: es el mismo Encounter creado en la admisión (mismo ID DAU), actualizado. Debe enviarse completo, repitiendo todos los datos de la admisión. |
| [Encuentro de urgencia - estado en el alta](StructureDefinition-encuentro-urgencia-alta.md) | Reglas del episodio de urgencia al momento del alta: cerrado (finished), con fecha de alta, destino y diagnóstico de egreso. No es un recurso distinto: es el mismo Encounter creado en la admisión (mismo ID DAU), actualizado. Debe enviarse completo, repitiendo todos los datos de la admisión. |
| [Encuentro de urgencia - estado en la admisión](StructureDefinition-encuentro-urgencia-admision.md) | Reglas del episodio de urgencia al momento de la admisión: abierto (arrived: el paciente llegó a la unidad), sin fecha de término ni destino. No es un recurso distinto: es el mismo Encounter que después se actualiza con el alta o el abandono. |

### Contenido clínico 

Diagnóstico, indicación de medicamentos al alta y referencia al documento clínico en PDF. Paciente, profesional y establecimiento usan directamente los perfiles del NID.

| | |
| :--- | :--- |
| [Diagnóstico de urgencia](StructureDefinition-diagnostico-urgencia.md) | Hipótesis o diagnóstico de egreso de la atención de urgencia. Basado en CoreDiagnosticoCl de CL-Core. El tipo de diagnóstico del CMBD se expresa solo con `verificationStatus`: hipótesis = provisional, confirmado = confirmed. Los diagnósticos descartados no se informan. En el alta el diagnóstico debe venir codificado en CIE-10. |
| [Documento de la atención de urgencia](StructureDefinition-documento-urgencia.md) | Referencia al documento clínico de la atención (DAU o epicrisis de urgencia) en PDF. Permite a cualquier establecimiento de la red descubrir y descargar el detalle clínico completo. |
| [Indicación de medicamento al alta](StructureDefinition-indicacion-medicamento-urgencia.md) | Medicamento indicado al alta de urgencia para que el paciente continúe su tratamiento. Acepta nombre genérico y posología en texto libre (CMBD: INDICACIÓN DE FÁRMACOS e ID RECETA). |

### Extensiones 

Datos del CMBD de Urgencia sin elemento FHIR equivalente. Todas son opcionales.

| | |
| :--- | :--- |
| [Clasificación de la consulta](StructureDefinition-clasificacion-consulta.md) | Clasificación médico-legal de la consulta registrada en la admisión. |
| [Diagnóstico GES](StructureDefinition-diagnostico-ges.md) | Indica si el diagnóstico corresponde a un problema de salud con Garantías Explícitas en Salud (GES). |
| [Ley previsional o programa](StructureDefinition-ley-previsional.md) | Ley social o programa que cubre la atención de urgencia. Usa la terminología del NID; el binding es extensible porque el NID aún no incluye PRAIS (código 05 del CMBD). |
| [Medio de llegada](StructureDefinition-medio-llegada.md) | Medio de transporte con que el paciente llega a la unidad de urgencia. |
| [Pertinencia de la atención](StructureDefinition-pertinencia.md) | Indica si la consulta fue pertinente para una unidad de urgencia. |
| [Previsión de salud](StructureDefinition-prevision.md) | Previsión de salud del paciente al momento de la atención y, si es FONASA, su tramo. |
| [Pronóstico médico-legal](StructureDefinition-pronostico-medico-legal.md) | Pronóstico médico-legal registrado al cierre de la atención. |

### Conjuntos de valores 

Códigos permitidos en cada elemento codificado de la guía.

| | |
| :--- | :--- |
| [Clasificación de la consulta](ValueSet-vs-clasificacion-consulta.md) | Clasificación médico-legal de la consulta de urgencia. |
| [Destino al alta de urgencia](ValueSet-vs-destino-alta.md) | Destinos válidos para el evento de alta. |
| [Destino de egreso de urgencia](ValueSet-vs-destino-egreso.md) | Todos los desenlaces con que puede cerrarse un episodio de urgencia: destinos de alta y tipos de abandono. |
| [Diagnósticos de urgencia](ValueSet-vs-diagnostico-urgencia.md) | Diagnósticos codificados en CIE-10 (preferente) o SNOMED CT. Se acepta texto libre cuando el diagnóstico no está codificado. |
| [Estado del encuentro de urgencia](ValueSet-vs-estado-encuentro-urgencia.md) | Subconjunto de estados de Encounter usados en urgencia. |
| [Medio de llegada](ValueSet-vs-medio-llegada.md) | Medio de llegada del paciente a urgencia. |
| [Procedencia del paciente](ValueSet-vs-procedencia.md) | Procedencia del paciente al consultar en urgencia. |
| [Pronóstico médico-legal](ValueSet-vs-pronostico-medico-legal.md) | Pronóstico médico-legal registrado al cierre de la atención. |
| [Tipo de abandono de la atención](ValueSet-vs-tipo-abandono.md) | Tipos de abandono válidos para el evento de abandono. |
| [Unidad de atención de urgencia](ValueSet-vs-unidad-atencion.md) | Tipo de atención de urgencia asignada en la admisión. |
| [Uso del diagnóstico en el episodio](ValueSet-vs-uso-diagnostico.md) | Uso del diagnóstico en el episodio de urgencia. Solo se informa el diagnóstico de egreso (DD); la hipótesis diagnóstica se expresa con Condition.verificationStatus = provisional, no con un uso. |

### Sistemas de códigos 

Códigos locales de la guía, tomados del CMBD de Urgencia del DEIS. Se mantienen experimentales hasta su publicación en el Servidor Terminológico Nacional.

| | |
| :--- | :--- |
| [Clasificación de la consulta](CodeSystem-clasificacion-consulta.md) | Clasificación médico-legal de la consulta (CMBD Urgencia: CLASIFICACIÓN DE LA CONSULTA). |
| [Destino al alta de urgencia](CodeSystem-destino-alta.md) | Destino indicado por el profesional al dar el alta de urgencia (CMBD Urgencia: DESTINO_ALTA; NT 149 con ajustes DGTIC). |
| [Medio de llegada](CodeSystem-medio-llegada.md) | Medio de transporte con que el paciente llega a urgencia (CMBD Urgencia: LLEGADA). |
| [Procedencia del paciente](CodeSystem-procedencia.md) | Origen del paciente al consultar en urgencia (CMBD Urgencia: PROCEDENCIA DEL PACIENTE). |
| [Pronóstico médico-legal](CodeSystem-pronostico-medico-legal.md) | Pronóstico médico-legal registrado al cierre (CMBD Urgencia: PRONÓSTICO MÉDICO LEGAL). |
| [Tipo de abandono de la atención](CodeSystem-tipo-abandono.md) | Momento en que el paciente abandona voluntariamente la atención de urgencia. Códigos alineados con CodeSystem abandono de la guía de Urgencia publicada (hl7.fhir.cl.minsal.urgencia 0.1.2-ballot). |
| [Unidad de atención de urgencia](CodeSystem-unidad-atencion.md) | Tipo de atención asignada en la admisión (CMBD Urgencia: UNIDAD DE ATENCIÓN). |

### Ejemplos 

Un episodio con admisión y alta, otro cerrado por abandono (fuga), y los actores que participan.

| | |
| :--- | :--- |
| [Bundle de abandono (fuga)](Bundle-BundleAbandonoEj.md) | Cierre del episodio DAU-2026-000456 porque la paciente se retiró sin alta médica. |
| [Bundle de admisión](Bundle-BundleAdmisionEj.md) | Admisión de la paciente a urgencia: abre el episodio DAU-2026-000123. |
| [Bundle de admisión de un paciente NN](Bundle-BundleAdmisionNNEj.md) | Admisión de un paciente sin identificar, identificado por su número de ficha clínica local (tipo 12). |
| [Bundle de alta](Bundle-BundleAltaEj.md) | Alta a domicilio del episodio DAU-2026-000123 con diagnóstico, indicación de medicamento y PDF. |
| [CESFAM de ejemplo](Organization-EstablecimientoDestinoEj.md) | Establecimiento de atención primaria al que se deriva a la paciente para control. |
| [Hospital de ejemplo](Organization-EstablecimientoUrgenciaEj.md) | Establecimiento emisor identificado por su código DEIS, conforme a MINSALPrestadorOrganizacional del NID. |
| [Médica de urgencia](Practitioner-ProfesionalUrgenciaEj.md) | Médica cirujana que da el alta, conforme a MINSALPrestadorProfesional del NID. |
| [Paciente de urgencia](Patient-PacienteUrgenciaEj.md) | Paciente chilena identificada por RUN, conforme a MINSALPaciente del NID. |
| [Paciente NN](Patient-PacienteNNEj.md) | Paciente sin identificar, identificado por su número de ficha clínica local (CL-Core CSTipoIdentificador 12). Los datos desconocidos se informan con data-absent-reason; nacionalidad y país de origen usan 152 Chile como valor provisorio. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Tipo de documento de urgencia](ValueSet-vs-tipo-documento-urgencia.md) | Tipo del documento clínico de la atención: resumen de alta de urgencia (alta) o nota de urgencia (abandono, en que no hay alta). |
| [Verificación del diagnóstico de urgencia](ValueSet-vs-verificacion-diagnostico.md) | Hipótesis (provisional) o diagnóstico confirmado (confirmed). Los diagnósticos descartados no se informan a la red. |

