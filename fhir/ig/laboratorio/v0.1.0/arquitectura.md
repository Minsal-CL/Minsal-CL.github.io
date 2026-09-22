# Arquitectura - Guía de Implementación FHIR - Laboratorio Clínico v0.5.1

* [**Table of Contents**](toc.md)
* **Arquitectura**

## Arquitectura

# Arquitectura de interoperabilidad

## Jerarquía normativa de esta guía

Las guías de implementación FHIR de Chile siguen una jerarquía de herencia, donde cada nivel restringe o especializa al nivel superior:

1. **HL7 Internacional**: especificación base FHIR R4.
1. **CL-Core**(`hl7.fhir.cl.clcore`, mantenida por HL7 Chile): guía transversal para Chile. Es agnóstica de dominio y no es normativa: hereda terminología de la guía ACE del DEIS pero solo la sugiere, sin obligarla.
1. **NID**(Núcleo de Interoperabilidad de Datos, mantenida por la Unidad de Interoperabilidad de MINSAL): núcleo normativo de MINSAL. Es más restrictiva que CL-Core, porque obliga elementos que en CL-Core son opcionales (por ejemplo, el identificador del paciente y el uso de la terminología de la ACE para el sexo registral) y define los perfiles transversales de paciente, prestador individual y organización que usan los proyectos MINSAL.
1. **Esta guía (Laboratorio)**: guía de dominio específico. Declara dependencia formal con CL-Core 1.9.3 y se alinea conceptualmente con los perfiles de identidad de NID para paciente, prestador y organización (ver "Resolución de identidad mediante MPI" más abajo). La dependencia formal de paquete con NID queda pendiente de definición técnica.

## Flujo de integración con el Bus de Interoperabilidad

flowchart LR SOL["Solicitud de Laboratorio"] --> API SOL --> REC["Recepción"] REC --> PDF["PDF Resultado"] PDF --> TRANS subgraph BUS["BUS"] API --> TRANS["Transforma"] TRANS --> FHIR end TRANS --> CT["Consulta terminológico"] FHIR --> PORTAL["PORTAL CIUDADANO"]

El flujo cubre dos caminos independientes que convergen en el mismo Bus de Interoperabilidad y en el mismo Portal Ciudadano:

1. Solicitud de Laboratorio: ingresa al Bus por la API, el paso "Transforma" homologa el código de la prestación (`ServiceRequest.code`) consultando el servicio terminológico y arma el recurso FHIR (`MinsalServiceRequestLab`), que queda disponible en el Portal Ciudadano.
1. Resultado de Laboratorio: la Recepción del resultado produce un PDF (`PDF Resultado`), que entra al mismo paso "Transforma" del Bus. Lo que se homologa contra el servicio terminológico es el código del examen o resultado (`DiagnosticReport.code`y, cuando existe resultado atomizado,`Observation.code`), no el contenido del PDF: el binario se conserva sin alteración en`presentedForm.data`y se publica junto al recurso FHIR (`ResultadoDiagnosticoLaboratorio`) hacia el Portal Ciudadano.

Este flujo confirma, a nivel de arquitectura de integración, el diseño ya adoptado por esta guía: solicitud y resultado son dos flujos independientes (ver [Inicio](index.md)) cuyos códigos (`ServiceRequest.code`, `DiagnosticReport.code`, `Observation.code`) pasan por el mismo mecanismo de homologación terminológica (FONASA/LOINC) antes de transformarse a FHIR; el documento PDF en sí no se homologa ni se transforma, solo se transporta.

## Visión general

La Guía de Implementación utiliza un Bus de Interoperabilidad para recibir mensajes HL7 v2, validar su contenido, resolver identidades, transformar los datos a FHIR R4 y entregar solicitudes o resultados a los sistemas consumidores.

flowchart TD A[Establecimiento] -->|"ORM^O01 / OML^O21"| B[Bus de Interoperabilidad] B --> B1[Validación HL7 v2] B1 --> B2[Normalización de identificadores] B2 --> B3[Consulta y conciliación con el MPI] B3 --> B4[Homologación terminológica] B4 --> B5[Transformación a FHIR R4] B5 --> B6[Validación contra esta guía] B6 --> C[Servidor FHIR / Laboratorio]

## Resolución de identidad mediante MPI

El Índice Maestro de Pacientes (MPI) opera sobre los perfiles de paciente, prestador y organización definidos por NID, el núcleo normativo de MINSAL (ver "Jerarquía normativa de esta guía" más arriba). La consulta al MPI debe realizarse centralmente desde el Bus de Interoperabilidad. No se exige que cada establecimiento implemente directamente la integración con el MPI.

El establecimiento es responsable de enviar en `PID` los identificadores y datos demográficos disponibles y confiables. El Bus normaliza estos datos, consulta al MPI y utiliza la identidad resuelta para construir `PacienteLaboratorio`.

### Cuando el establecimiento conoce el identificador MPI

El mensaje puede incluir el identificador maestro, además del RUN, pasaporte, NIP FONASA, número de historia clínica u otros identificadores locales. El Bus debe validar que los identificadores correspondan a la misma persona antes de continuar.

### Cuando el establecimiento no conoce el identificador MPI

El Bus debe buscar primero mediante un identificador oficial. Cuando la búsqueda exacta no sea suficiente, puede utilizar la operación `$match` con los datos demográficos permitidos por el acuerdo de integración.

Los datos mínimos recomendados son:

* identificador y autoridad asignadora;
* nombres y apellidos;
* fecha de nacimiento;
* sexo administrativo;
* identificador local de ficha clínica, cuando exista.

## Decisiones según la respuesta del MPI

| | |
| :--- | :--- |
| Coincidencia única | Continuar la transformación y utilizar el paciente maestro |
| Múltiples coincidencias | Detener el procesamiento automático y enviar a conciliación |
| Sin coincidencias | Aplicar la política de revisión o creación autorizada por el gobierno del MPI |
| Identificadores contradictorios | Rechazar o dejar pendiente hasta resolver la identidad |
| MPI no disponible | Reintentar o aplicar una contingencia controlada y auditable |

Una respuesta sin coincidencias no autoriza por sí sola la creación automática de un paciente. La creación o actualización de identidades debe cumplir las reglas de gobierno del MPI.

## Uso de la identidad resuelta

Una vez resuelto el paciente, todos los recursos clínicos deben referenciar la misma identidad:

flowchart LR A[MinsalServiceRequestLab.subject] --> P[PacienteLaboratorio] B[ResultadoDiagnosticoLaboratorio.subject] --> P C[Observation.subject] --> P

`PacienteLaboratorio.identifier` puede conservar simultáneamente el identificador maestro, el documento oficial y los identificadores locales, indicando siempre un `system` diferente para cada dominio.

Ejemplo conceptual:

```
{
  "identifier": [
    {
      "system": "URI_IDENTIFICADOR_MPI",
      "value": "MPI-000012345"
    },
    {
      "system": "URI_RUN_ACORDADO",
      "value": "12345678-9"
    },
    {
      "system": "https://hospital.example.cl/ficha-clinica",
      "value": "HC-998877"
    }
  ]
}

```

Los URI de los dominios nacionales deben ser los publicados o confirmados por MINSAL. Los valores ilustrativos no deben utilizarse como URI productivos.

> **Nota: el RUN no tiene un único `system`, depende del rol de la persona.** Esta guía usa dos URI distintos para el mismo tipo de documento (RUN), según a quién identifique: para el paciente, `identifier[RUN].system = "https://interoperabilidad.minsal.cl/fhir/ig/nid/paciente/identificador/run"` (dominio de identidad de NID/MPI, ver `MinsalPacienteLaboratorio`); para el prestador individual (`MinsalPractitionerLaboratorio`), `identifier[run].system = "https://api.cl/system/run"` (mismo valor usado por el repositorio real `IG_hpd`, MPI de MINSAL, en sus ejemplos de prestador). No son intercambiables: el RUN de un paciente y el RUN de un prestador son gestionados por registros/dominios distintos (NID para pacientes, HPD para profesionales), aunque el número de RUN como tal sea el mismo documento nacional. Una integración que reciba un RUN debe resolver primero si corresponde a un paciente o a un prestador antes de fijar el `system`; no debe asumirse un único URI de RUN válido para toda la guía.

## Responsabilidades

| | |
| :--- | :--- |
| Establecimiento | Entregar identificadores y datos demográficos confiables |
| Bus de Interoperabilidad | Normalizar, consultar el MPI, conciliar y auditar la resolución |
| MPI | Mantener la identidad maestra y las referencias cruzadas entre dominios |
| Servicio terminológico | Validar o traducir códigos LOINC, FONASA y otros catálogos |
| Laboratorio | Consumir la identidad resuelta y evitar crear duplicados |

## Organizaciones participantes

Los establecimientos de origen y los laboratorios ejecutores se representan con el perfil `OrganizacionParticipanteLaboratorio`, basado en `Organization`.

El perfil exige identificador, estado activo, tipo y nombre. También permite dirección, telecomunicaciones, jerarquía mediante `partOf` y referencias a `Endpoint`.

El rol se determina por el lugar donde se referencia:

| | |
| :--- | :--- |
| Establecimiento emisor del mensaje | `MessageHeader.sender` |
| Establecimiento receptor | `MessageHeader.destination.receiver` |
| Organización que solicita directamente | `ServiceRequest.requester` |
| Laboratorio que ejecuta la prestación | `ServiceRequest.performer` |

Una organización que cumple más de un rol se representa una sola vez y puede ser referenciada desde varios elementos. No deben crearse duplicados solo por cambiar su función dentro del flujo.

## Seguridad y trazabilidad

Cada consulta o conciliación debe registrar como mínimo el sistema solicitante, fecha, identificadores utilizados, resultado de la operación y regla aplicada. Los registros de auditoría no deben exponer información clínica o demográfica más allá de lo necesario.

Referencias MINSAL:

* [Índice Maestro de Pacientes](https://interoperabilidad.minsal.cl/docs/componentes-de-la-arquitectura/empi.html)
* [Transacciones MPI](https://interoperabilidad.minsal.cl/fhir/ig/mpi/transacciones.html)
* [CapabilityStatement del administrador MPI](https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.7/CapabilityStatement-MPI.IHE.PIXm.PDQm.Manager.html)

