# Historial de cambios - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* **Historial de cambios**

## Historial de cambios

# Historial de cambios

## Versión 0.5.0

Versión menor, **candidata a piloto**. Aplica las decisiones adoptadas por el comité FHIR el 2026-10-27 (D-005, D-011, D-015, D-024 a D-028) y publica el perfil de conformidad HL7 v2 (D-002). **Cambia cardinalidades, valores fijos y el sistema del catálogo local**: una instancia conforme a 0.4.x puede no serlo en 0.5.0 (ver **Compatibilidad**).

### Perfiles

* `InformeRadiologicoMinsal`: `resultsInterpreter` pasa de `0..*` a `1..*` e `issued` de `0..1` a `1..1` (D-011). Se retira la invariante `informe-final-con-issued`, que queda cubierta por la cardinalidad. `resultsInterpreter` documenta la referencia lógica por RUN para los informes que llegan por HL7 v2 (D-027); `effective[x]` documenta que la fuente la declara el perfil de emisor y nunca es la hora del mensaje (D-024).
* `MinsalBundleInformeImagenologia`: `entry[informe]` y `entry[estudio]` pasan de `POST` a `PUT` condicional por identificador (D-025). Nuevas invariantes `bundle-informe-put-condicional` y, para el estudio, `bundle-estudio-put-condicional`.
* `MinsalBundleSolicitudImagenologia`: `entry[solicitud]` pasa de `POST` a `PUT` condicional por identificador (D-025). Nueva invariante `bundle-solicitud-put-condicional`.
* `MinsalServiceRequestImagen` e `InformeRadiologicoMinsal` (`code`): se retira el slice `local`, que fijaba un único `system` nacional para catálogos que son de cada establecimiento. El código local viaja como `Coding` adicional con el `system` de su establecimiento, `http://deis.minsal.cl/establecimientos/{DEIS}/imagenologia/procedimientos`, verificado por la nueva invariante `codigo-local-por-establecimiento` (D-028).

### Terminología

* Se retira el `CodeSystem` `CodigoProcedimientoImagenologia`: el catálogo local tiene un `system` por establecimiento, que es la URL canónica de la fuente en el servidor terminológico (D-028).

### Páginas

* Nueva página **Perfil de conformidad HL7 v2** (D-002), bajo el nuevo submenú **Mensajería HL7 v2**: base HL7 v2.5.1, mensajes admitidos, uso de campos de la solicitud y del informe, perfil de emisor, acuse y set de certificación (22 casos).
* Arquitectura: acuse al guardar el mensaje y conciliación en vez de `AE` (D-026); nueva tabla **Sistemas de identificadores por establecimiento** (D-028, esquema `http`); respuesta del MPI con retención en conciliación y alta centralizada en MINSAL (D-005); profesionales desde HL7 v2 por referencia lógica (D-027); responsabilidades del equipo central y del servicio terminológico.
* Casos de uso: el acuse se envía al guardar el mensaje; "rechazo" significa no publicar; tabla de transiciones del informe con corrección, addendum y no regresión (D-015); operaciones con `PUT` condicional (D-025).
* Mapeo HL7 v2 a FHIR: Accession Number y número de orden con el `system` del establecimiento; `OBR-22` y `OBR-32` obligatorios; profesionales por referencia lógica; fecha del examen sin respaldo en la hora del mensaje.
* Inicio: **Camino al piloto** con las condiciones de inicio que no dependen de la guía. Decisiones de diseño: D-005, D-011, D-015 y D-024 a D-028 adoptadas; nuevas propuestas D-030 a D-033.

### Ejemplos

* Bundles de informe y de solicitud con `PUT` condicional por Accession Number o por número de orden.
* `system` de Accession Number, número de orden y solicitud con el patrón por código DEIS del establecimiento de ejemplo (`116105`); catálogo local con su `system` por establecimiento.
* Informes con el radiólogo como referencia lógica por RUN. `MedicoRadiologoEjemplo` queda como ejemplo del recurso completo para el canal FHIR directo.

### Set de certificación

* Nueva carpeta `certificacion/` del repositorio, fuera del sitio publicado: 17 mensajes `ORU^R01` y 5 `ORM^O01`/`OMG^O19` sintéticos, con `casos.csv` (acuse y resultado esperados) y el script que los genera.

### Compatibilidad

* Un `Bundle` de informe o de solicitud con `POST` deja de ser conforme.
* Un informe sin `resultsInterpreter` o sin `issued` deja de ser conforme; en producción va a conciliación, no se rechaza.
* Un código local con el `system` `.../CodeSystem/CodigoProcedimientoImagenologia` deja de validarse: debe usar el `system` de su establecimiento.

## Versión 0.4.1

Versión de parche: **no introduce perfiles nuevos, no modifica cardinalidades ni valores fijos y no invalida ninguna instancia conforme a 0.4.0**. Incorpora lo aprendido de la mensajería `ORU^R01` real de un segundo emisor de informes, distinto del perfil de emisor de referencia, probada contra la prueba de concepto del Bus. Esa mensajería difiere del perfil de referencia en trece atributos, seis de los cuales impiden publicar el informe.

### Mapeo HL7 v2 a FHIR

* Nueva sección **Estructura de los tipos de datos compuestos**: `MSH-4` (HD, código DEIS), fechas (TS/DTM con offset y punto decimal en las fracciones de segundo), `PID-3` (CX), `OBR-4` (CE, catálogo en el componente 3), `OBR-32` (NDL/CNN, con subcomponentes separados por `&`) y `OBX-5` (ED, contenido en el componente 5 y `Base64` en el 4).
* Nueva lista de **requisitos del emisor del informe** (`ORU^R01`), que se verifica en la certificación: Accession Number, código DEIS, fecha del examen, fechas de firma y creación distintas de la hora de generación del mensaje, RUN del radiólogo, estructura `ED` del PDF, estado en `OBX-11` y RUN del paciente válido y no repetido.
* Se retira `MessageHeader` del mapeo: los `Bundle` de esta guía son de tipo `transaction` y no lo admiten. `MSH-3`, `MSH-6` y `MSH-9` pasan a la auditoría del Bus; `MSH-4` resuelve el establecimiento por código DEIS y alimenta `DiagnosticReport.performer`.
* Las filas del `PID` se alinean con D-001: `PID-3` es clave de resolución contra el MPI y los datos demográficos no se transforman.
* `OBR-25` pasa a validación cruzada: `OBX-11` gobierna el estado, como ya decía el perfil.
* `OBR-7` / `OBR-8` se documentan como fuente de la fecha del examen sólo cuando el perfil de emisor lo declara; `PV1-44` es la admisión del episodio y no la sustituye. Ninguna fecha del informe se toma de la hora de generación del mensaje.
* Valores de ejemplo del mapeo con RUN de dígito verificador válido y fechas con offset horario.

### Neutralidad y narrativa

* Se retiran los nombres de productos de las páginas y de las descripciones de los perfiles; la interfaz ORM-In v2.04 / ORU-Out v1.3 se nombra como **perfil de emisor de referencia**.
* Nueva página **Decisiones de diseño**: decisiones adoptadas y abiertas, con la propuesta de cada una y si condiciona el piloto.
* Se registra la adopción de D-002 (perfil nacional de conformidad de mensajería HL7 v2, aprobado el 2026-10-19, para la solicitud y el informe): `MSH-18` pasa a exigirse en UTF-8 en los requisitos de todo emisor. El anexo normativo se publica en la 0.5.0.
* Inicio: nueva sección **Camino al piloto**. La candidata a piloto es la 0.5.0, porque lo pendiente (actualización condicional del informe en el `Bundle`, radiólogo y fecha de firma obligatorios, entre otros) cambia valores fijos y cardinalidades.

### Perfiles

* Sólo textos descriptivos (`short`, `comment`, `description`) de `InformeRadiologicoMinsal`, `MinsalBundleInformeImagenologia` y un ejemplo. Sin cambios de cardinalidad, tipos, **bindings** ni valores fijos.

## Versión 0.4.0

Versión menor: incorpora el **acceso a imágenes sin informe radiológico** (decisiones D-017 a D-023, aprobadas por MINSAL el 2026-10-21). **Agrega perfiles y restringe `EstudioImagenologicoMinsal`** (`basedOn` sólo admite `MinsalServiceRequestImagen` y una invariante nueva exige un identificador inequívoco), por eso es una versión menor y no un parche.

### Decisiones

* Adoptadas D-017 (ciclos de vida independientes de imágenes e informe), D-018 (visualización mediante `endpoint` y `Endpoint.status`), D-019 (evento de disponibilidad con actualización condicional), D-020 (modalidades IID, API y portal, y niveles de conformidad), D-021 (las imágenes permanecen en el origen), D-022 (aserción del servicio nacional o sesión de un solo uso de la API; federación OpenID Connect cuando el proveedor la soporte) y D-023 (política de publicación: retención configurable, sin informes preliminares, representación según el modelo nacional y aviso normado al paciente).

### Perfiles nuevos

* `EndpointAccesoImagenesMinsal` (`Endpoint`): declaración del mecanismo de acceso del paciente a las imágenes del proveedor. `connectionType` obligatorio desde `TipoConexionAccesoImagenes` (**binding** requerido), `managingOrganization` y `contact` obligatorios, `header` prohibido, invariante `endpoint-acceso-https-sin-parametros` (HTTPS y sin parámetros de consulta).
* `MinsalBundleEstudioImagenologia` (`Bundle` `transaction`): evento de disponibilidad del estudio. Estudio en `PUT` condicional por identificador (invariante `bundle-estudio-put-condicional`), paciente obligatorio, `identifier` y `timestamp` obligatorios para deduplicación y orden.

### Perfiles modificados

* `EstudioImagenologicoMinsal`: se documenta la semántica R4 de `status` (`registered` / `available`), independiente del informe y de la posibilidad de visualizar; `endpoint` es el mecanismo de acceso. Pasan a **Must Support** `basedOn` (sólo `MinsalServiceRequestImagen`), `procedureCode`, `description`, `numberOfSeries` y `numberOfInstances`, que en 0.2.0 se habían retirado por duplicar datos del informe: sin informe, son la única fuente para mostrar el examen. Nueva invariante `estudio-identificador-inequivoco` (Study Instance UID o Accession Number con `system`). Una instancia conforme a 0.3.0 que identifica el estudio con UID o con Accession Number tipado, como indica el perfil, sigue siendo conforme.
* `basedOn` restringido a `MinsalServiceRequestImagen`: en 0.3.0 el elemento no estaba perfilado y no lo usa ningún ejemplo.

### Terminología

* Nuevo `CodeSystem` `MecanismoAccesoImagenes` (`api-proveedor`, `portal-proveedor`) y `ValueSet` `TipoConexionAccesoImagenes` (`ihe-iid`, `dicom-wado-rs`, `dicom-qido-rs` de la terminología HL7 más los dos códigos locales).
* **Advertencia sobre `ihe-iid`.** En HL7 Terminology 2.1.1 (paquete `hl7.terminology.r4#7.4.0`), el código `ihe-iid` del sistema `endpoint-connection-type` está marcado como `deprecated`, igual que el resto de los códigos IHE de ese sistema (`ihe-xcpd`, `ihe-xca`, `ihe-xdr`, `ihe-xds`); HL7 no publica un código de reemplazo. La guía lo conserva por ser el único identificador publicado de IHE Invoke Image Display, y la validación lo acepta emitiendo una advertencia. Queda como punto abierto revisar la codificación de la modalidad A si HL7 o IHE publican un sucesor.

### Páginas

* Nuevas: **Acceso a imágenes sin informe** (escenarios A a F, estados independientes, modelado FHIR, evento de disponibilidad, arquitectura y flujos) e **Integración de proveedores de imágenes** (modalidades IID, API y portal, reglas comunes, contrato, seguridad, niveles y matriz de conformidad, escenarios de prueba, referencias). Nuevo submenú "Acceso a imágenes".
* Casos de uso: nuevo caso de uso 3; actores y tabla de fases actualizados; la recuperación DICOMweb queda como trabajo futuro, separada del acceso del paciente.
* Inicio y Arquitectura: alcance, recursos de contexto, sistemas participantes y responsabilidades.

### Ejemplos

* Mecanismos de acceso: `EndpointIidVisorEjemplo`, `EndpointApiProveedorEjemplo`, `EndpointPortalProveedorEjemplo`.
* Estudios: `EstudioMamografiaDisponibleSinInformeEjemplo` (A), `EstudioRmRegistradoSinImagenesEjemplo` (C), `EstudioTcTemporalmenteNoDisponibleEjemplo` (D); `EstudioTcCerebroEjemplo` incorpora `endpoint` y recuentos para ilustrar el escenario B.
* Evento: `BundleDisponibilidadEstudioEjemplo`.
* Errores: `ResultadoPacienteNoResueltoEjemplo` (E), `ResultadoAccesoDenegadoEjemplo` y `ResultadoSesionExpiradaEjemplo` (F), `ResultadoImagenesNoDisponiblesEjemplo` (D).

**Estado del build:** `err = 0, warn = 49, info = 52`, sin enlaces rotos. Construida con SUSHI 3.20.1 e IG Publisher 2.3.5 sobre FHIR R4 (4.0.1), con las dependencias NID 0.4.9 y CL-Core 1.9.4. Las advertencias se agrupan en: 26 por sistemas de códigos sin definición resoluble (catálogo local de procedimientos y prestación FONASA, ambos de contenido administrado externamente, A-05); 8 por URI de identificadores sin definición resoluble (dominio RUN de NID, RUN de prestadores y código DEIS, heredadas de NID y del portafolio); 6 por OID no asignado a los sistemas de códigos y al conjunto de valores propios; 6 por referencias externas no resolubles (RadLex Playbook y la tabla B.5-1 de DICOM PS3.4); 2 por el uso de `ihe-iid` (ver Terminología); y 1 por el **binding** de `ImagingStudy.series.performer.function` a un conjunto de valores experimental de FHIR R4. Ninguna afecta la conformidad de las instancias de ejemplo, que validan sin errores contra los perfiles de esta guía.

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
* `code.coding` de la solicitud y del informe se perfila por `system`: `fonasa 1..1`, `local 0..1`, `snomed 0..*` y `loinc 0..*`. La prestación FONASA la agrega o verifica el Bus en ambos canales. El `system` de FONASA reutiliza, de forma provisional, el `CodigoPrestacionFonasa` de Laboratorio Clínico (acción A-05).

### Bundles

* `entry[paciente]` pasa de `0..1` a `1..1` en los Bundles de solicitud e informe: en el canal FHIR directo lo envía el establecimiento conforme al perfil de NID, y en el canal HL7 v2 lo reconstruye el Bus desde el MPI.
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

