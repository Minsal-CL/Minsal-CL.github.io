# Perfil de conformidad HL7 v2 - Guía de Implementación FHIR - Imagenología v0.5.0

* [**Table of Contents**](toc.md)
* **Perfil de conformidad HL7 v2**

## Perfil de conformidad HL7 v2

# Perfil de conformidad HL7 v2

Esta página es el **anexo normativo** de mensajería HL7 v2 de la guía (decisión D-002, adoptada el 2026-10-19). Fija lo que un establecimiento debe cumplir para tributar al Bus de Interoperabilidad por HL7 v2, y se verifica en la certificación antes de habilitar producción. El principio es que **el MINSAL norma la entrada al Bus, no la interfaz de un producto**: lo que un emisor transporte de otra forma se declara en su perfil de emisor y se aprueba en su acuerdo de integración.

El detalle campo a campo de la transformación a FHIR está en [Mapeo HL7 v2 a FHIR](mapeo-v2-fhir.md).

## Base normativa

* Semántica de campos y estructura de tipos de datos: **HL7 v2.5.1**. Un emisor con otra versión declara en su perfil de emisor qué campos usa; la versión de `MSH-12` no se usa para inferir nada.
* Codificación de caracteres: `MSH-18 = UNICODE UTF-8`.
* Transporte: MLLP, con `\r` como separador de segmentos.
* Fechas y horas: con offset horario; las fracciones de segundo, si vienen, tras un punto decimal.

## Mensajes admitidos

| | | |
| :--- | :--- | :--- |
| Solicitud de examen | `ORM^O01`y`OMG^O19`, equivalentes para todos los efectos de esta guía | `MinsalServiceRequestImagen` |
| Informe radiológico | `ORU^R01` | `InformeRadiologicoMinsal` |

## Uso de los campos

**R** requerido · **RE** requerido si el emisor dispone del dato · **C** condicional · **X** no debe enviarse. Un campo **R** que falta hace fallar la certificación. En producción, un informe al que le falta un campo **R** no se rechaza: queda en conciliación, porque el emisor no reintenta (D-007, D-026).

### Solicitud (ORM^O01 / OMG^O19)

| | | |
| :--- | :--- | :--- |
| `MSH-4` | R | Código DEIS del establecimiento |
| `MSH-7` | R | Fecha y hora del mensaje, con offset |
| `MSH-9` | R | `ORM^O01`u`OMG^O19` |
| `MSH-10` | R | Identificador único del mensaje |
| `MSH-18` | R | `UNICODE UTF-8` |
| `PID-3` | R | RUN con dígito verificador válido, una sola vez |
| `PID-2` | X | Retirado en v2.5; no duplicar el RUN |
| `ORC-1` | R | Control de la orden |
| `ORC-2` | R | Número de orden del examen (`PLAC`) |
| `ORC-4` | RE | Número de solicitud que agrupa los exámenes |
| `ORC-7.6` | RE | Prioridad, tabla HL7 0485 (en`OMG^O19`v2.5 puede venir en`TQ1-9`, según el perfil de emisor) |
| `ORC-9` | R | Fecha y hora de la solicitud |
| `ORC-12` | R | Profesional solicitante con RUN (D-006) |
| `OBR-4` | R | Código del examen, con el catálogo en el componente 3 |
| `OBR-18` | RE | Accession Number, cuando el solicitante lo asigna |

### Informe (ORU^R01)

| | | |
| :--- | :--- | :--- |
| `MSH-4` | R | Código DEIS del establecimiento |
| `MSH-7` | R | Fecha y hora del mensaje, con offset |
| `MSH-9` | R | `ORU^R01` |
| `MSH-10` | R | Identificador único del mensaje. Sin él, el mensaje no se puede trazar y se responde`AE` |
| `MSH-18` | R | `UNICODE UTF-8` |
| `PID-3` | R | RUN con dígito verificador válido, una sola vez |
| `PID-2` | X | Retirado en v2.5 |
| `ORC-2` | RE | Número de orden del solicitante, para enlazar la solicitud |
| `ORC-3`/`OBR-3` | RE | Número de orden del ejecutante; clave de actualización cuando falta el Accession Number (D-025) |
| `ORC-7.4`/`ORC-7.5` | C | Inicio y término del examen, cuando el perfil de emisor los declara como fuente de la fecha (D-024) |
| `OBR-7`/`OBR-8` | C | Ídem, cuando el perfil de emisor los declara como fuente |
| `OBR-4` | R | Código del examen, con el catálogo en el componente 3 |
| `OBR-18` | R | Accession Number (D-007) |
| `OBR-22` | R | Fecha y hora de firma del informe (D-011) |
| `OBR-25` | RE | Estado, consistente con`OBX-11` |
| `OBR-32` | R | Radiólogo informante: RUN, apellido y nombre en el componente 1, separados por`&`(D-011) |
| `OBX-2` | R | `ED` |
| `OBX-5` | R | PDF en el componente 5, con`Base64`en el componente 4 |
| `OBX-11` | R | Estado del informe:`P`,`F`,`C`,`A`o`D` |
| `OBX-14` | RE | Fecha y hora de creación del informe |

La fecha del examen debe venir en la fuente que declare el perfil de emisor: si no viene, el informe va a conciliación y el Bus nunca la reemplaza por la hora del mensaje ni la de proceso (D-024). `PV1-44` (admisión del episodio) sólo se admite de forma transitoria, con acuerdo escrito, en episodios ambulatorios de una sola atención.

La estructura de los tipos compuestos (`MSH-4`, fechas, `PID-3`, `OBR-4`, `OBR-32`, `OBX-5`) y los errores observados están en [Mapeo HL7 v2 a FHIR](mapeo-v2-fhir.md), **Estructura de los tipos de datos compuestos**.

## Perfil de emisor

Cada establecimiento declara en su acuerdo de integración, y se verifica en la certificación:

* tipo de mensaje y versión del estándar que emite;
* catálogo de códigos de examen (`OBR-4.3`) y su `system` (ver [Arquitectura](arquitectura.md), **Sistemas de identificadores por establecimiento**);
* fuente de la fecha de realización del examen (D-024);
* dónde transporta el Accession Number y el número de orden del ejecutante;
* toda desviación de la tabla de uso de campos, con su plazo de corrección.

Lo que no está declarado no se infiere del mensaje.

## Acuse

| | | |
| :--- | :--- | :--- |
| El mensaje se puede leer y trazar | `AA`, en cuanto queda guardado | El Bus procesa; lo que falla va a conciliación auditada |
| El mensaje no se puede leer, no es un tipo admitido o no trae`MSH-10` | `AE`/`AR` | No se guarda; el emisor debe corregir y reenviar |

Detalle en [Arquitectura](arquitectura.md), **Transporte y acuse de recibo** (D-026).

## Set de certificación

Los mensajes están en la carpeta `certificacion/` del repositorio de la guía, junto con el script que los genera y la tabla `casos.csv`. Son sintéticos: pacientes, profesionales y PDF son ficticios, y los pacientes `12345678-5` y `15432876-9` deben existir en el MPI del ambiente de certificación. El establecimiento usa los mismos casos con su propia mensajería; el set del Bus verifica que el resultado sea el esperado.

### Informe

| | | | |
| :--- | :--- | :--- | :--- |
| `INF-01` | Informe final de TC, completo | `AA` | Publicado en final |
| `INF-02` | Informe final de RM de otro paciente | `AA` | Publicado en final |
| `INF-03` | Ciclo 1: preliminar | `AA` | Publicado en preliminary (versión 1) |
| `INF-04` | Ciclo 2: final del mismo Accession Number | `AA` | Mismo recurso en final (versión 2) |
| `INF-05` | Ciclo 3: corrección | `AA` | Mismo recurso en corrected (versión 3); el PDF reemplaza al anterior |
| `INF-06` | Ciclo 4: addendum | `AA` | Mismo recurso en amended (versión 4); dos PDF en presentedForm |
| `INF-07` | Preliminar que llega después del final | `AA` | No se aplica: un informe firmado no vuelve a preliminar |
| `INF-08` | Sin Accession Number, con número de orden del ejecutante | `AA` | Publicado; clave de actualización = número de orden del ejecutante |
| `INF-09` | Sin Accession Number ni número de orden | `AA` | Conciliación: sin clave de actualización |
| `INF-10` | RUN con dígito verificador inválido | `AA` | Conciliación, gestión manual; no da origen a alta |
| `INF-11` | RUN válido ausente del MPI | `AA` | Conciliación; alta centralizada en MINSAL y reproceso |
| `INF-12` | Sin fecha de realización del examen | `AA` | Conciliación; nunca la hora del mensaje |
| `INF-13` | Radiólogo con identificador interno del RIS | `AA` | Conciliación: radiólogo sin RUN |
| `INF-14` | PDF sin estructura ED (Base64 en el componente 1) | `AA` | Conciliación: OBX-5 no procesable |
| `INF-15` | Código sin homologación a FONASA | `AA` | Conciliación: sin prestación FONASA |
| `INF-16` | Eliminación sin informe previo | `AA` | Conciliación |
| `INF-17` | Mensaje sin MSH-10 | `AE` | No se guarda: el mensaje no se puede trazar |

### Solicitud

| | | | |
| :--- | :--- | :--- | :--- |
| `SOL-01` | ORM^O01 completo | `AA` | Publicado |
| `SOL-02` | OMG^O19 equivalente | `AA` | Publicado con el mismo resultado que SOL-01 |
| `SOL-03` | Reenvío de SOL-01 | `AA` | Mismo ServiceRequest, sin duplicar |
| `SOL-04` | Sin solicitante en ORC-12 | `AA` | No se publica (R2); el flujo HIS → RIS sigue |
| `SOL-05` | Sin MSH-18 | `AA` | Publicado con el charset del acuerdo y advertencia; no aprueba la certificación (D-002) |

