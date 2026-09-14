# Interacciones con el Repositorio Interoperable de Anatomías Patológicas - Repositorio de Reportes de Biopsias Oncológicas v0.3.2

* [**Table of Contents**](toc.md)
* **Interacciones con el Repositorio Interoperable de Anatomías Patológicas**

## Interacciones con el Repositorio Interoperable de Anatomías Patológicas

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

El repositorio de biopsia permitirá recibir solicitudes e informes de anatomías patológicas, cumpliendo con lo establecido en los CapabilityStatement:

* [Generación de Informes](CapabilityStatement-r2bo-minsal-cliente-informe.md)
* [Consultor del Repositorio](CapabilityStatement-r2bo-minsal-consumidor.md)
* [Analista del Repositorio](CapabilityStatement-r2bo-minsal-analisis.md)

### Generar Informes

Este permiso permite actualizar solicitudes y en caso de que no existan crearlas, pero va enfocado principalmente a la publicación de informes de anatomía patológica dentro del repositorio. Para cumplir con el envío de información debe utilizar un bundle que cumpla con el perfil ["Generar Notificación"](StructureDefinition-r2bo-bundle-generar-notificacion.md) realizando una operación **POST** a la raíz del servidor.

```
Bundle
|
|-->Type: transaction
|
|-->Entry:
      |
      |--> ServiceRequest 
      |--> Patient
      |--> PractitionerRole
      |--> Practitioner
      |--> Organization
      |--> Specimen
      |--> DiagnosticReport
      |--> Observation

```

El diagrama a continuación explica cómo debería ser la interacción entre el usuario, el sistema informático y el repositorio:


Figura 1 - Secuencia de Almacenamiento de Informes

### Consultar Informes

Para consultar un informe, solo deberá realizar la consulta al recurso **DiagnosticReport**. Las consultas permitirán concatenar para buscar mediante el identificador del paciente para traer la información como medio estándar de búsqueda.

**Traer Resumen Informe**

```
GET DiagnosticReport?patient.identifier=9999999-9

```

El diagrama a continuación explica cómo debería ser la interacción entre el usuario, la plataforma SIGO y el repositorio:


Figura 2 - Recuperación de Reporte

### Analista del Repositorio

Para realizar análisis secundario se recomienda nunca utilizar el repositorio productivo para hacer este tipo de trabajos. Por lo que, se debe realizar un bolcado de la información del repositorio y llevarlo a un datawarehouse o un repositorio FHIR para análisis u otro mecanismo. Para realizar esta función debe realizar una operación **$export** en la raíz del servidor, la cual será realizada únicamente por plataformas del Ministerio de Salud de Chile.

```
POST $export

```

#### Interacción esperada

El diagrama a continuación explica cómo debería ser la interacción entre el usuario, el sistema informático, el sistema de análisis y el repositorio:

Figura 3 - Exportación de la información para Análisis

