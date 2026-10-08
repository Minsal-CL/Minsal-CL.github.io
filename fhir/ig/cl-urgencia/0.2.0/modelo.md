# Modelo de eventos - Guía de Implementación FHIR - Urgencia (Admisión, Alta y Abandono) v0.2.0

* [**Table of Contents**](toc.md)
* **Modelo de eventos**

## Modelo de eventos

## Un episodio, un Encounter

Cada atención de urgencia es **un solo `Encounter`** durante toda su vida. Los Bundle de admisión, alta o abandono **no crean encuentros nuevos**: envían el mismo `Encounter`, identificado por el mismo **ID DAU**, con su estado actualizado.

```
10:00  Bundle de admisión
       PUT Encounter?identifier=[sistema DAU]|DAU-2026-000123
       No existe → el servidor lo CREA ......... Encounter/abc  v1  status = arrived

12:30  Bundle de alta
       PUT Encounter?identifier=[sistema DAU]|DAU-2026-000123
       Ya existe → el servidor lo ACTUALIZA .... Encounter/abc  v2  status = finished
                                                               + period.end, destino, diagnóstico

```

En el repositorio queda **un solo recurso** con dos versiones. El historial (`GET Encounter/abc/_history`) muestra cómo cambió.

sequenceDiagram participant HIS as HIS/RCE participant REP as Repositorio FHIR HIS->>REP: Admisión: PUT Encounter?identifier=…|DAU-2026-000123 (arrived) REP-->>HIS: 201 Created → Encounter/abc v1 HIS->>REP: Alta: PUT Encounter?identifier=…|DAU-2026-000123 (finished) REP-->>HIS: 200 OK → Encounter/abc v2

Por eso la guía tiene tres perfiles de `Encounter` y dos ejemplos del mismo episodio:

* **Perfiles** [estado en la admisión](StructureDefinition-encuentro-urgencia-admision.md), [estado en el alta](StructureDefinition-encuentro-urgencia-alta.md) y [estado en el abandono](StructureDefinition-encuentro-urgencia-abandono.md): son las **reglas** que debe cumplir el mismo `Encounter` en cada momento. Por ejemplo, un alta sin fecha de término o un abandono con destino "domicilio" se rechazan.
* **Ejemplos** `EpisodioDAU123EstadoAdmision` y `EpisodioDAU123EstadoAlta`: son **dos fotos del mismo recurso**, tal como lo envía el HIS a las 10:00 y a las 12:30. Tienen el mismo ID DAU.

## Estructura de una transacción

Los tres eventos usan la misma estructura: un `Bundle` de tipo `transaction` con **dos formas de envío** según el tipo de recurso.

```
Bundle (type = transaction)
│
├── Recursos maestros compartidos: SOLO CREAR (POST + ifNoneExist)
│   ├── Patient ........... POST Patient       ifNoneExist: identifier=[sistema]|[RUN u otro]
│   ├── Organization ...... POST Organization  ifNoneExist: identifier=[sistema DEIS]|[código]
│   └── Practitioner ...... POST Practitioner  ifNoneExist: identifier=[sistema]|[RUN]   (opcional)
│
└── Recursos del episodio: CREAR O ACTUALIZAR (PUT condicional)
    ├── Encounter ......... PUT Encounter?identifier=[sistema DAU]|[ID DAU]
    ├── Condition ......... PUT Condition?identifier=...
    ├── MedicationRequest . PUT MedicationRequest?identifier=...
    └── DocumentReference . PUT DocumentReference?identifier=...

```

**Recursos maestros (paciente, establecimiento, profesional): solo crear.** Son compartidos por toda la red y su fuente de verdad es nacional (MPI, registros DEIS y de prestadores). Con `POST` + `ifNoneExist` el servidor los crea si no existen y, si ya existen, usa el existente **sin modificarlo**. Así ningún establecimiento sobrescribe los datos que envió otro ni los del MPI.

**Recursos del episodio: crear o actualizar.** Pertenecen al establecimiento que atiende. El `PUT` condicional los crea si no existen y los actualiza si ya existen:

* **Correlación sin lógica adicional:** la admisión crea el `Encounter`; el alta o el abandono actualizan ese mismo `Encounter`, porque comparten el ID DAU (ver [Un episodio, un Encounter](#un-episodio-un-encounter)).
* **Reenvío seguro:** si el HIS/RCE reintenta una transacción, no se duplican episodios, diagnósticos ni documentos.
* **Transacción autocontenida:** trae siempre paciente, establecimiento y encuentro. Un alta sin admisión previa crea el episodio igual.

Dentro de la transacción los recursos se referencian entre sí por su `fullUrl` (`urn:uuid:...`). El servidor reemplaza esas referencias por los ids reales al procesarla.

Reglas de construcción del Bundle:

* **El `Encounter` se envía siempre completo.** El `PUT` reemplaza el recurso entero: el alta y el abandono deben repetir todos los datos informados en la admisión (previsión, procedencia, medio de llegada, motivo de consulta, etc.). Un dato omitido se borra del repositorio.
* **Sin `Resource.id` en los recursos con `PUT`.** El id lo determina el servidor al encontrar o crear el recurso por su identificador. Un id en el cuerpo que no coincida con el recurso existente hace fallar la operación.
* **El identificador de la operación es el del recurso.** El `system|value` de `request.url` (o de `ifNoneExist`) debe ser el mismo que trae el recurso.
* **Un solo paciente por Bundle.** El `subject` de encuentro, diagnósticos, indicaciones y documento apunta a la entrada del paciente.

flowchart LR E["Encounter

episodio urgencia"] -->|subject| P["Patient

MINSALPaciente"] E -->|serviceProvider| O["Organization

MINSALPrestadorOrganizacional"] E -->|participant| PR["Practitioner

MINSALPrestadorProfesional"] E -->|diagnosis| C["Condition

diagnóstico"] MR["MedicationRequest

indicación al alta"] -->|encounter| E DR["DocumentReference"] -->|context.encounter| E DR -->|attachment.url| PDF["PDF DAU"]

## Cómo se reconoce el evento

No hay un recurso que diga "esto es un alta". El evento se deduce del estado del `Encounter`, que cada perfil de transacción obliga:

| | | | |
| :--- | :--- | :--- | :--- |
| Admisión | [Bundle de admisión](StructureDefinition-bundle-admision-urgencia.md) | `arrived` | No se envía |
| Alta | [Bundle de alta](StructureDefinition-bundle-alta-urgencia.md) | `finished` | [Destino de alta](ValueSet-vs-destino-alta.md) |
| Abandono | [Bundle de abandono](StructureDefinition-bundle-abandono-urgencia.md) | `finished` | [Tipo de abandono](ValueSet-vs-tipo-abandono.md) |

Quien necesite reaccionar a un evento (por ejemplo, avisar al CESFAM de un alta o de una fuga) lo hace suscribiéndose a los cambios de `Encounter` en el repositorio.

## Estados y tiempos

Esta versión informa **dos momentos** del episodio: la admisión y el cierre (alta o abandono). Los estados intermedios del flujo de urgencia (categorizado, en atención médica) no se informan.

| | | | |
| :--- | :--- | :--- | :--- |
| Admisión | `arrived` | El paciente llegó y está en la unidad de urgencia | `period.start`= fecha y hora de admisión |
| Alta | `finished` | El episodio terminó con alta médica | `period.end`= fecha y hora en que el paciente**sale físicamente**de urgencia |
| Abandono | `finished` | El episodio terminó porque el paciente se retiró sin alta | `period.end`= fecha y hora en que se**constata**el abandono |
| Corrección | `entered-in-error` | El episodio se envió por error | — |

Se usa `arrived` y no `in-progress` en la admisión porque, en FHIR R4, `in-progress` indica que el paciente ya se encuentra con el profesional, y al admitirlo eso todavía no ocurre.

Otros tiempos de la guía:

| | |
| :--- | :--- |
| Inicio de la atención médica | `Encounter.participant`con`type = ATND`,`period.start` |
| Registro del diagnóstico | `Condition.recordedDate` |
| Indicación del medicamento | `MedicationRequest.authoredOn` |
| Emisión del documento DAU | `DocumentReference.date` |

Todas las fechas del episodio van en ISO 8601 **con hora y zona horaria** (por ejemplo, `2026-09-09T10:00:00-03:00`); una fecha sin hora se rechaza (invariante `urg-enc-5`). `period.end` no puede ser anterior a `period.start` (invariante `urg-enc-3`).

## Diagnósticos

Cada concepto se expresa **en un solo lugar**, para que no haya combinaciones contradictorias:

| | | |
| :--- | :--- | :--- |
| ¿Es una hipótesis o un diagnóstico confirmado? | `Condition.verificationStatus` | `provisional`(hipótesis) o`confirmed`(confirmado) |
| ¿Es el diagnóstico de egreso? | `Encounter.diagnosis.use` | `DD`(diagnóstico de egreso). Solo en el alta |

* **Alta:** al menos un diagnóstico, referenciado en `Encounter.diagnosis` con `use = DD` y **codificado en CIE-10** (invariante `urg-alta-cie10`). Puede ser `confirmed` o `provisional` (el profesional egresa con una hipótesis).
* **Abandono:** la hipótesis diagnóstica, si alcanzó a registrarse, va con `verificationStatus = provisional` y **sin** `use`. Puede ir solo en texto si no fue codificada.
* **Diagnósticos descartados:** no se informan. Un diagnóstico descartado no aporta a la continuidad de la atención.
* **TAPSA:** no se acepta mientras el DEIS no publique su sistema de códigos. 

## Contenido por evento

 

**Obligatorio** = la transacción se rechaza si falta. **Si existe** = se envía cuando el HIS/RCE tiene el dato.

| | | | |
| :--- | :--- | :--- | :--- |
| `Patient` | Obligatorio | Obligatorio | Obligatorio |
| `Organization`(emisor) | Obligatorio | Obligatorio | Obligatorio |
| `Encounter.status` | `arrived` | `finished` | `finished` |
| `Encounter.period.start`(admisión) | Obligatorio | Obligatorio | Obligatorio |
| `Encounter.period.end` | No se envía | Obligatorio (alta) | Obligatorio (abandono) |
| `Encounter.reasonCode`(motivo de consulta) | Si existe | Si existe | Si existe |
| `Encounter.hospitalization.admitSource`(procedencia) | Si existe | Si existe | Si existe |
| `Encounter.hospitalization.dischargeDisposition` | No se envía | Obligatorio | Obligatorio |
| `Encounter.hospitalization.destination` | — | Obligatorio con destino hospitalización (01), traslado (02) o derivación (04) | — |
| `Condition`(diagnóstico) | — | Obligatorio, al menos uno (`DD`, CIE-10) | Si existe (hipótesis,`provisional`) |
| `MedicationRequest` | — | Si existe | — |
| `DocumentReference`(PDF) | — | Si existe (resumen de alta, LOINC 59258-4). Si el PDF aún no está listo, se reenvía el Bundle de alta completo cuando exista | Si existe (nota de urgencia, LOINC 34111-5) |
| `Practitioner` | Si existe | Si existe: médico tratante (`ATND`) y quien da el alta (`DIS`) | Si existe (`ATND`si alcanzó a ser atendido) |

## Identificadores

Cada recurso de la transacción debe traer un identificador estable, que es la llave de la operación condicional:

| | | |
| :--- | :--- | :--- |
| `Patient` | RUN (o pasaporte, RUN madre, identificador local) | `POST Patient`con`ifNoneExist: identifier=urn:oid:2.16.840.1.113883.2.22.1.152.787300\|11111111-1` |
| `Organization` | Código DEIS | `POST Organization`con`ifNoneExist: identifier=https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEstablecimientoDestino\|112100` |
| `Practitioner` | RUN | `POST Practitioner`con`ifNoneExist: identifier=urn:oid:2.16.840.1.113883.2.22.1.152.787300\|22222222-2` |
| `Encounter` | ID DAU, con sistema`https://interoperabilidad.minsal.cl/fhir/sid/dau/[código DEIS]` | `PUT Encounter?identifier=https://interoperabilidad.minsal.cl/fhir/sid/dau/112100\|DAU-2026-000123` |
| `Condition` | Id del diagnóstico en el HIS/RCE | `PUT Condition?identifier=https://hospital.cl/sid/diagnosticos\|DG-88001` |
| `MedicationRequest` | Id de la indicación en el HIS/RCE | `PUT MedicationRequest?identifier=https://hospital.cl/sid/indicaciones\|IND-5501-1` |
| `DocumentReference` | `masterIdentifier`del documento | `PUT DocumentReference?identifier=https://hospital.cl/sid/documentos\|DOC-000123` |

El ID DAU debe ser **único** en el establecimiento, **no reutilizarse** nunca y ser **el mismo** en las tres transacciones del episodio. Su `system` sigue el patrón `https://interoperabilidad.minsal.cl/fhir/sid/dau/[código DEIS del establecimiento]`, de modo que el par `system|value` es único a nivel nacional. Cada episodio tiene exactamente un ID DAU (invariante `urg-enc-6`).

## Reglas de negocio

| | |
| :--- | :--- |
| Paciente, establecimiento y profesional se envían solo con creación condicional (`POST`+`ifNoneExist`). | Invariante`urg-tx-maestros` |
| Encuentro, diagnóstico, indicación y documento se envían con`PUT`condicional por identificador. | Invariante`urg-tx-put-condicional` |
| Un episodio`finished`debe tener`period.end`. | Invariante`urg-enc-1` |
| Un episodio`finished`debe tener destino o tipo de abandono. | Invariante`urg-enc-2` |
| Con destino hospitalización, traslado o derivación se informa el establecimiento de destino. | Invariante`urg-enc-8` |
| `period.end`no puede ser anterior a`period.start`. | Invariante`urg-enc-3` |
| Las fechas del episodio incluyen hora y zona horaria. | Invariante`urg-enc-5` |
| Exactamente un ID DAU con el sistema nacional. | Invariante`urg-enc-6` |
| Consultas por abuso sexual, violencia o constatación de lesiones se marcan como restringidas. | Invariantes`urg-enc-7`y`urg-tx-restringido` |
| Los recursos con`PUT`no llevan`Resource.id`. | Invariante`urg-tx-sin-id` |
| El identificador de la operación coincide con el del recurso. | Invariante`urg-tx-identificador` |
| Todo el Bundle se refiere al mismo paciente. | Invariante`urg-tx-mismo-paciente` |
| El documento es resumen de alta (59258-4) en el alta y nota de urgencia (34111-5) en el abandono. | Invariantes`urg-alta-documento`y`urg-abandono-documento` |
| Solo se informa`Encounter.diagnosis.use = DD`, y solo en el alta. | Invariante`urg-enc-4`y perfiles del encuentro |
| En el alta todo diagnóstico viene codificado en CIE-10. | Invariante`urg-alta-cie10` |
| Los diagnósticos son`provisional`o`confirmed`; los descartados no se informan. | Perfil`DiagnosticoUrgencia` |
| El alta usa solo destinos de alta; el abandono usa solo tipos de abandono. | Perfiles`EncuentroUrgenciaAlta`y`EncuentroUrgenciaAbandono` |
| La transacción se aplica completa o no se aplica. | Servidor FHIR (semántica de`transaction`) |
| El HIS/RCE no debe enviar una admisión de un episodio ya cerrado: el`PUT`lo reabriría. | HIS/RCE; el Bus puede rechazarla |
| Para anular un episodio enviado por error se reenvía el`Encounter`con`status = entered-in-error`. | HIS/RCE |

## De urgencia a hospitalización

Si el paciente queda hospitalizado, son **dos atenciones distintas**, cada una con su propio `Encounter`. El de urgencia no se reabre ni se extiende.

```
Encounter URGENCIA (esta guía)                  Encounter HOSPITALIZACIÓN (otra guía)
  class = EMER, ID DAU                             class = IMP, ID propio
  status = finished                 ◄──────────    extension encounter-associatedEncounter
  dischargeDisposition = 01 Hospitalización            → urgencia, por ID DAU (Reference.identifier)
  destination → establecimiento donde se hospitaliza
  period.end = salida física de urgencia           period.start = ingreso a la cama
  diagnosis DD = diagnóstico de egreso de urgencia

```

1. **La urgencia se cierra con el Bundle de alta**, destino`01 Hospitalización`. Si el paciente se hospitaliza en el mismo establecimiento,`hospitalization.destination`es ese mismo establecimiento (invariante`urg-enc-8`).
1. **`period.end` es la salida física de urgencia**, no la indicación de hospitalización. Mientras espera cama, el paciente sigue ocupando un box de urgencia; esa espera queda medida entre el inicio de la atención médica y`period.end`.
1. **El diagnóstico de egreso de urgencia**puede ser`provisional`: es la hipótesis con que ingresa a hospitalización.
1. **La hospitalización es otro `Encounter`**, definido por la guía que corresponda. Se recomienda que se enlace a la urgencia con la extensión estándar de FHIR R4[`encounter-associatedEncounter`](http://hl7.org/fhir/R4/extension-encounter-associatedencounter.html), apuntando al episodio de urgencia por su ID DAU. Así no se modifica el`Encounter`de urgencia ya cerrado.

Lo mismo aplica a traslado (`02`) y derivación (`04`): el destino es obligatorio y la atención en el establecimiento de destino es un `Encounter` propio.

## Pacientes NN

Un paciente que llega sin identificación (inconsciente, sin documentos) se envía con el **número de ficha clínica local** que le asigna el establecimiento:

| | |
| :--- | :--- |
| `identifier.type` | CL-Core`CSTipoIdentificador`**`12`**(Número de Ficha Clínica Sistema Local) |
| `identifier.system` | Sistema de fichas clínicas del establecimiento |
| `identifier.value` | Número de ficha asignado al NN |
| `identifier.use` | `temp`(identificador temporal hasta conocer la identidad) |
| `gender` | `unknown` |
| Identidad de género | `7`No revelado |
| Fecha de nacimiento, teléfono | Ausentes, con la extensión`data-absent-reason`=`unknown` |
| Nacionalidad, país de origen | **Valor provisorio**`152`Chile, con`text`= "Valor provisorio NN: nacionalidad desconocida" (ver nota) |
| `deceased[x]` | `false` |

**Nota sobre nacionalidad y país de origen:** `MINSALPaciente` exige un código de la lista de países `CodPais` y esa lista no tiene "desconocido", por lo que no se pueden informar como ausentes. Mientras el NID lo resuelve se usa `152` Chile como valor provisorio, identificable por el `text`. **Los receptores no deben interpretar ese valor como nacionalidad real** en pacientes con identificador tipo `12` y `use = temp`.

Ver el ejemplo [Bundle de admisión de un paciente NN](Bundle-BundleAdmisionNNEj.md). Cuando se conoce la identidad, la vinculación con el MPI queda pendiente de definir con el NID.

## Información sensible

Si la consulta se clasifica como **abuso sexual (01)**, **maltrato o violencia de género (02)** o **constatación de lesiones (03)**, el episodio y todos sus recursos (diagnósticos, indicaciones y documento) se marcan como restringidos:

```
meta.security = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#R

```

El repositorio entrega los recursos restringidos solo a los equipos autorizados, y **HCC (Portal Ciudadano) no los muestra**: en casos de violencia, el agresor podría tener acceso a la cuenta del paciente.

## Fuga y NEA

Ambos son **abandono voluntario** y se informan con el Bundle de abandono. Se distinguen por el [tipo de abandono](CodeSystem-tipo-abandono.md):

| | | |
| :--- | :--- | :--- |
| `1` | Abandono antes de la atención médica (NEA, No Espera Atención) | El paciente se va antes de ser evaluado por el profesional. |
| `2` | Abandono durante la atención médica (fuga) | El paciente se va después de iniciada la atención, sin alta. |

`period.end` corresponde a la fecha y hora en que el equipo **constata** el abandono.

## Qué no incluye este modelo

Para mantener el modelo mínimo, los siguientes datos **no** se envían como recursos estructurados. Siguen disponibles en el PDF:

* Categorización de triage (C1 a C5) y su hora. Se evaluará para una versión posterior.
* Estados intermedios del episodio (categorizado, en atención médica) y sus tiempos.
* Signos vitales, anamnesis, examen físico y evolución.
* Solicitudes y resultados de exámenes (tienen sus propias guías de laboratorio e imagenología).
* Procedimientos y medicamentos administrados durante la atención.

El modelo puede crecer agregando recursos a las transacciones sin cambiar su núcleo (paciente, establecimiento, encuentro, documento).

