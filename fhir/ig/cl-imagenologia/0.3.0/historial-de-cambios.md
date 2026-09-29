# Historial de cambios - Guía de Implementación FHIR - Imagenología v0.3.0

* [**Table of Contents**](toc.md)
* **Historial de cambios**

## Historial de cambios

# Historial de cambios

## Versión 0.3.0

Versión menor: **cambia dependencias, cardinalidades y valores fijos**, así que una instancia conforme a 0.2.1 puede no serlo en 0.3.0. Incorpora las observaciones de revisión de la 0.2.1 que no dependían de decisiones abiertas, y las decisiones D-012, D-014 y D-016.

### Dependencias

* Nueva dependencia de **NID 0.4.9** (`hl7.fhir.cl.minsal.nid`), según la jerarquía normativa nacional (D-016).
* **CL-Core** sube de 1.8.5 a **1.9.4**, la versión de la que depende NID 0.4.9 según su manifiesto.

### Perfiles de identidad

* `PacienteImagenologia` deriva de `MINSALPaciente` (NID). Se retira el slice `identifier[RUN]`: NID exige el tipo de identificador de su propio `CodeSystem` (RUN = `1`), no el de CL-Core. Se retira `link`, que solo servía a la fusión de registros `ADT`, fuera de alcance desde la 0.2.1.
* `MinsalPractitionerImagenologia` deriva de `MINSALPrestadorProfesional` (NID): RUN, nombre, fecha de nacimiento y título profesional pasan a ser obligatorios por el perfil padre.
* `OrganizacionParticipanteImagenologia` deriva de `MINSALPrestadorOrganizacional` (NID), con las mismas reglas propias.

### Solicitud e informe

* `MinsalServiceRequestImagen.category`: de `0..1` a `1..*`, con slice abierto `sctImaging` obligatorio (SNOMED CT `363679005`), el mismo patrón de Laboratorio Clínico 0.6.0.
* `InformeRadiologicoMinsal.category`: slice abierto `radiologia` obligatorio (`v2-0074#RAD`), que sostiene la consulta `?category=RAD`.
* `code.coding` de la solicitud y del informe se perfila por `system` (D-014): `fonasa 1..1`, `local 0..1`, `snomed 0..*` y `loinc 0..*`. La prestación FONASA la agrega o verifica el Bus en ambos canales. El `system` de FONASA reutiliza, de forma provisional, el `CodigoPrestacionFonasa` de Laboratorio Clínico (acción A-05).

### Bundles

* `entry[paciente]` pasa de `0..1` a `1..1` en los Bundles de solicitud e informe (D-012): en el canal FHIR directo lo envía el establecimiento conforme al perfil de NID, y en el canal HL7 v2 lo reconstruye el Bus desde el MPI.
* `entry[profesional]` del Bundle de solicitud admite solo `MinsalPractitionerImagenologia` y pasa a `0..*`; se retira `PractitionerRole` de la entrada, porque el slicing discrimina por perfil y `PractitionerRole` no tiene perfil propio. Un `PractitionerRole` referenciado desde `requester` se asume preexistente. `entry[organizacion]` pasa a `0..*` en ambos Bundles.
* Las solicitudes del Bundle de ejemplo pasan a URL absolutas, igual que el Bundle del informe, para que las referencias al paciente resuelvan dentro de la transacción.
* El enlace al `CapabilityStatement` del administrador MPI apunta a NID 0.4.9.

### Páginas

* Casos de uso: reglas R1 a R5 que verifica el Bus en la solicitud; el informe que no cumple una regla va a cuarentena auditada, porque el RIS no reintenta. UC1-a incluye el paciente de NID y la resolución contra el MPI.
* Mapeo: regla de homologación obligatoria a FONASA, `system` de FONASA, derivación de la modalidad vía `ConceptMap` a DICOM CID 29 y requisitos del **emisor FHIR nativo**.
* Arquitectura e Inicio: jerarquía normativa con la dependencia formal de NID.

### Ejemplos

* Paciente y profesionales cumplen el set obligatorio de los perfiles de NID.
* Los Bundles incluyen el paciente; solicitudes e informes llevan la prestación FONASA. Los códigos FONASA de los ejemplos son ilustrativos.
* Nuevo `BundleSolicitudImagenFhirDirectoEjemplo`: envío de un RCE en FHIR, con el paciente completo de NID.

**Estado del build:** `err = 0, warn = 36, info = 46`, sin enlaces rotos. Las advertencias se distribuyen en cuatro grupos de 9: `CodeSystem` FONASA no disponible para validar (canónico provisional con contenido externo, A-05); catálogo local no disponible para validar (contenido administrado por el servicio terminológico, igual que en 0.2.1); URI de identificadores sin definición resoluble (dominio RUN de NID, RUN de prestadores y código DEIS, heredados de NID y del portafolio); y advertencias de plantilla, OID y **binding** ya presentes en 0.2.1.

## Versión 0.2.1

Versión de parche: **no introduce perfiles nuevos, no modifica cardinalidades y no invalida ninguna instancia conforme a 0.2.0**. Incorpora al mapeo lo aprendido del contraste con mensajería HL7 v2 de producción de dos emisores distintos.

### Mapeo HL7 v2 a FHIR

* Nueva sección **Perfiles de emisor y versiones del estándar**. Declara `OMG^O19` estructuralmente equivalente a `ORM^O01`, fija que el perfil de emisor se establece en el acuerdo de integración y **no se infiere de `MSH-12`** —se observó un emisor que declara `2.4` y puebla campos que no existen en esa versión—, y agrega la tabla de equivalencia de fuentes por versión.
* Nueva sección **Reglas de normalización** (N1 a N8): RUT como clave de búsqueda con validación de dígito verificador, codificación de caracteres, autorreferencia del paciente en `ORC-10`/`ORC-11`, catálogo del código, modalidad, precedencia de `ORC-5` sobre `ORC-1`, notas de `OBR-13` y `NTE`, y campos retirados.
* Nueva sección **Requisitos por emisor**, que acompaña al acuerdo de integración y se verifica en la certificación.
* Se reordena la **derivación de la modalidad DICOM**: el objeto DICOM tiene precedencia, y `OBR-24` sólo alimenta la modalidad a través de un `ConceptMap` explícito de la tabla HL7 v2-0074 a DICOM. `OBR-24` es **Diagnostic Service Section ID**: que `CT` coincida en ambos sistemas es una coincidencia y no una equivalencia.
* Se explicita que los atributos demográficos del `PID` no se transforman, porque el recurso `Patient` se reconstruye desde el MPI.

### Registro de decisiones

* Se incorpora el **registro de decisiones de diseño** de la guía (`decisiones.md` en el repositorio), con la plantilla del Anexo C. D-001 establece que el `Patient` es una proyección del maestro del MPI y que el `PID` sólo resuelve identidad; D-006 mantiene `requester 1..1` y traslada `ORC-12` a requisito de conformidad del emisor; D-007 traslada la exigencia del Accession Number a la certificación; D-008 condiciona el `ImagingStudy` a dato DICOM.

### Gobernanza

* `comparacion-guias-referencia.md` cierra la **regla 1**, que esta guía no había cumplido: contraste contra HL7 Europe Imaging Report e IHE RAD Imaging Diagnostic Report.
* `revision-qa-0.2.0.md` deja las advertencias del build revisadas una por una, como pide el paso 4 del Anexo D.

### Correcciones

* Se elimina el enlace a un `CodeSystem` retirado en la fila de `OBR-31.2`; se verificaron todos los enlaces internos contra el build.
* Se retira el parámetro `sct-edition`, que el IG Publisher 2.3.4 no reconoce.
* Las entradas del `Bundle` del informe pasan a URL absolutas, para que la referencia al estudio resuelva dentro de la transacción.

### Arquitectura y redacción

* Se simplifica el **diagrama de flujo de integración con el Bus** al patrón de la Guía de Laboratorio Clínico: la solicitud entra por la recepción HL7 v2, el informe PDF llega desde el RIS y ambos convergen en la transformación a FHIR, con consulta al servicio terminológico y al MPI. La sincronización `ADT` sale del diagrama, porque la resuelve el servicio común de identidad.
* Se retiran de la guía las menciones a la institución emisora de las especificaciones funcionales de integración, por tratarse de una referencia interna y no nacional. El valor de ejemplo de `PID-3.4` pasa a `HIS`.
* La sincronización de pacientes (`ADT`) sale del alcance de la guía: el antiguo Caso de uso 3 pasa a ser una nota de fuera de alcance, y `ADT` se retira de la introducción, de los puntos de integración, de la tabla de acuses y de la descripción del paquete. La identidad la gestiona el servicio común (MPI / NID).
* El Caso de uso 2 incorpora el **repositorio FHIR**: el Bus persiste el `Bundle` del informe antes de responder `ACK`, y el Portal Ciudadano consulta el repositorio, no el Bus. El diagrama de arquitectura nombra el nodo como "Repositorio FHIR".
* La orden médica escaneada deja de figurar como flujo de Fase 2: no es un caso habitual y queda sin incorporación prevista, evaluable como anexo opcional si un establecimiento la requiere.
* Las observaciones de revisión que requieren cambios de perfil, dependencias o decisiones se registran en `pendientes-0.3.0.md`.

**Estado del build:** `err = 0, warn = 25, info = 40`, sin enlaces rotos.

## Versión 0.2.0

Alineación con el modelo de la Guía de Implementación de Laboratorio Clínico y reducción al núcleo mínimo de datos. El criterio de la versión es doble: **no se exige en el modelo canónico lo que la interfaz de origen declara opcional**, y **lo que no es una regla nacional no se publica como artefacto nacional**.

### Perfiles nuevos

#### MinsalBundleSolicitudImagenologia (nuevo)

* Perfil de `Bundle` `transaction` para el envío de los exámenes de una misma orden, con el mismo patrón de slicing que `MinsalBundleSolicitudLaboratorio`.
* Invariante `solicitud-imagen-requisition-compartido`: todas las entradas de solicitud comparten el par `system`+`value` de `requisition`.
* `identifier` y `timestamp` obligatorios: conservan `MSH-10.1` y `MSH-7.1` del mensaje de origen.

#### MinsalBundleInformeImagenologia (nuevo)

* Perfil de `Bundle` `transaction` para el informe radiológico y el estudio asociado, con el patrón de `MinsalBundleResultadoLaboratorio`.
* Invariante `informe-estudio-referenciado`: si el Bundle trae el estudio, el informe debe referenciarlo.
* Resuelve la trazabilidad del mensaje sin necesidad de perfilar `MessageHeader`: el Bus no recibe mensajería FHIR, recibe HL7 v2 y escribe una transacción.

### Perfiles modificados

#### InformeRadiologicoMinsal

* `performer` baja de `1..*` a `0..*`. En ORU-Out v1.3 el único profesional del mensaje es `OBR-32` y está declarado **Opcional**: exigirlo rechazaría informes clínicos válidos que el emisor no reintenta.
* `status` declara `OBX-11` como fuente única, por ser el campo **Requerido**; `OBR-25` es opcional y queda sólo como validación cruzada.
* Se retiran `result` (no existe perfil de `Observation` en esta guía) y `conclusion` (no viaja en la interfaz: el informe completo está en el PDF).
* Nueva invariante `informe-final-con-issued`: un informe `final`, `corrected` o `amended` debe declarar `issued` (`OBR-22`, campo Requerido).
* Se documenta por qué no se fuerza el Accession Number por cardinalidad: `OBR-18.1` es **Opcional** en ORU-Out. La exigencia se traslada al acuerdo de integración y a la certificación del establecimiento.

#### MinsalServiceRequestImagen

* `requisition` adopta el tratamiento de `MinsalServiceRequestLab`: `system` y `value` marcados `Must Support`, con el establecimiento asignador en `system`.
* `category` baja a `0..1`: es un valor constante que fija el Bus, no un dato del emisor.
* Se retiran `bodySite` (la lateralidad viaja embebida en el código y el `ConceptMap` que la separaría no existe) y `locationCode` (`ServiceDeliveryLocationRoleType` describe el tipo de lugar, no una sala identificada).

#### EstudioImagenologicoMinsal

* Deja de formar parte del conjunto obligatorio: el Bus crea el recurso sólo cuando dispone de dato DICOM real (Study Instance UID o endpoint). Cuando no se crea, la trazabilidad la sostiene el Accession Number del informe y el informe se publica igual.
* Se retiran `series`, `numberOfSeries`, `numberOfInstances`, `procedureCode`, `reasonCode`, `description`, `location`, `referrer`, `interpreter`, `encounter` y `basedOn`: ninguno llega por HL7 v2 y todos duplican información de la solicitud o del informe.
* `modality` deja de redeclarar el `min = 1` que ya trae el recurso base.

#### PacienteImagenologia, MinsalPractitionerImagenologia y OrganizacionParticipanteImagenologia

* Se alinean regla por regla con `PacienteLaboratorio`, `MinsalPractitionerLaboratorio` y `OrganizacionParticipanteLaboratorio`, para que el portafolio MINSAL tenga una sola definición de facto de paciente, prestador y organización mientras NID no fije la dependencia formal.
* `PacienteImagenologia` incorpora la slice `identifier[RUN]` con el `system` de NID.
* `OrganizacionParticipanteImagenologia` adopta `http://deis.minsal.cl/establecimientos` como `system` del código DEIS, el mismo de Laboratorio Clínico, Tiempos de Espera Quirúrgico y Urgencia.

### Perfiles retirados

* `OrdenEscaneadaImagenologia` y `RespuestaCuestionarioMamografia`, con el `Questionnaire CuestionarioMamografia` y su terminología. Ver Casos de uso, Fase 2.

### Terminología

* `CodigoProcedimientoImagenologia` pasa a `content = #not-present`: la guía declara el URI que identifica el catálogo y su contenido lo administra el servicio terminológico, con el mismo patrón que `CodigoPrestacionFonasa` en Laboratorio Clínico.
* Se retiran los `ValueSet` por modalidad (`ProcedimientosTomografiaComputada`, `ProcedimientosResonanciaMagnetica`, `ProcedimientosMamografia`) y el `ValueSet` del catálogo completo: enumeraban los mismos 110 códigos en dos lugares y su consumidor desaparece.
* Se conservan los tres `CodeSystem` de estados y prioridad y los tres `ConceptMap` de `v2` a FHIR: son acuerdos cerrados con el RIS y sí constituyen regla nacional.

### Páginas

* La guía queda con las cinco páginas del modelo de Laboratorio Clínico: Inicio, Arquitectura, Casos de uso, Mapeo HL7 v2 a FHIR e Historial de cambios.
* Se retiran las páginas de Sincronización de pacientes (ADT) —responsabilidad del servicio común de identidad—, Cuestionario de mamografía y Terminología.

### Higiene de publicación

* Se declara el idioma de la guía (`es-CL`) y la edición de SNOMED CT en los parámetros de expansión.
* Los ejemplos usan identificadores verificables: código DEIS real (116105), `system` de RUN de NID y RUN con dígito verificador válido. Los `system` de ejemplo usan el dominio reservado `example.org`.

## Versión 0.1.0

Versión inicial de la Guía de Implementación FHIR de Imagenología.

### Perfiles

#### MinsalServiceRequestImagen (nuevo)

* Perfil de `ServiceRequest` para la solicitud de examen imagenológico.
* Obliga `identifier`, `status`, `intent`, `category`, `code`, `subject`, `authoredOn` y `requester`.
* Incorpora `requisition` para agrupar los exámenes de una misma orden, `locationCode` para la sala o modalidad informada en `OBR-34.5`, y `supportingInfo` para la orden escaneada y el cuestionario de mamografía.

#### InformeRadiologicoMinsal (nuevo)

* Perfil de `DiagnosticReport` para el informe radiológico recibido en `ORU^R01`, con el PDF en `presentedForm`.
* `basedOn` es **opcional**, porque el RIS envía todos los informes generados y no solo los que corresponden a una orden creada en el HIS.
* Distingue las tres fechas del informe: realización (`effective[x]`), creación (`presentedForm.creation`, desde `OBX-14`) y validación (`issued`, desde `OBR-22`).

#### EstudioImagenologicoMinsal (nuevo)

* Perfil de `ImagingStudy` que transporta el Accession Number (tipo `ACSN`), el Study Instance UID DICOM, la modalidad y el endpoint DICOMweb de recuperación.
* Es el eslabón de trazabilidad entre la solicitud, las imágenes del PACS y el informe.

#### PacienteImagenologia, MinsalPractitionerImagenologia, OrganizacionParticipanteImagenologia (nuevos)

* Extienden `CorePacienteCl`, `CorePrestadorCl` y `CoreOrganizacionCl` de CL-Core, en lugar de los recursos base de FHIR R4, para alinearse con el portafolio de guías MINSAL.

#### OrdenEscaneadaImagenologia (nuevo)

* Perfil de `DocumentReference` para la orden médica escaneada que llega en el `OBX` de la solicitud con `OBX-3.1 = SCANNED_REQUEST`.

#### RespuestaCuestionarioMamografia (nuevo)

* Perfil de `QuestionnaireResponse` para el formulario clínico de mamografía que llega en los segmentos `OBX` con códigos `STDAT`.

### Terminología

* `CodigoProcedimientoImagenologia`: catálogo local del RIS con 110 procedimientos (57 TC, 48 RM, 5 mamografía), con conjuntos de valores por modalidad.
* `PreguntaCuestionarioMamografia`, `RespuestaCuestionarioMamografia` y `MotivoMamografiaDiagnostica`: terminología del formulario de mamografía, con el texto literal exigido por el RIS conservado en `display`.
* `EstadoInformeRadiologicoHl7v2`, `EstadoSolicitudImagenHl7v2` y `PrioridadSolicitudImagenHl7v2`, con sus `ConceptMap` hacia `DiagnosticReport.status`, `ServiceRequest.status` y `ServiceRequest.priority`.
* Instancia `Questionnaire` `CuestionarioMamografia`, con las diez preguntas del formulario y sus reglas `enableWhen`.

### Documentación

* **Inicio**: alcance, principio de diseño, los tres recursos focales, solicitud con múltiples exámenes y ciclo del informe radiológico.
* **Arquitectura**: jerarquía normativa (HL7 Internacional, CL-Core, NID), sistemas participantes (HIS, RIS, PACS), transporte MLLP y modelo asimétrico de acuse, el Accession Number como eje de trazabilidad, y resolución de identidad mediante MPI.
* **Casos de uso**: actores, dos puntos de integración (FHIR directo y HL7 v2 homologado), cuatro casos de uso con diagramas de secuencia y el ciclo de vida del informe como máquina de estados.
* **Mapeo HL7 v2 a FHIR**: mapeo campo a campo de `ORM^O01` y `ORU^R01`, tratamiento de los segmentos `OBX` polimórficos, identificación del sistema terminológico y derivación de la modalidad DICOM.
* **Sincronización de pacientes (ADT)**: eventos `A04`, `A08`, `A40` y `A47`, mapeo campo a campo, y reglas de fusión y de cambio de identificador.
* **Cuestionario de mamografía**: estructura del formulario, reglas de habilitación y la regla del texto literal.
* **Terminología**: catálogo de procedimientos, estados y prioridades, terminología externa y puntos abiertos.

### Identificación de la guía

* `id`: `hl7.fhir.cl.minsal.imagenologia`.
* Canonical: `https://interoperabilidad.minsal.cl/fhir/ig/imagenologia`.
* `publisher`: Unidad de Interoperabilidad - MINSAL.
* `jurisdiction`: Chile.

### Dependencias

* `hl7.fhir.cl.clcore` 1.8.5.

### Fuentes

Esta versión se construyó a partir de las especificaciones funcionales de integración del RIS — **ORM Inbound v2.04** (13-03-2026), **ORU Outbound v1.3** (10-07-2026) y **ADT Inbound v1.0** (15-10-2024) —, del catálogo de códigos de procedimientos y del formulario de mamografía del RIS, y de la presentación **Optimización del flujo de información en Imagenología mediante Integración HL7 entre RIS** de la Subsecretaría de Redes Asistenciales.

