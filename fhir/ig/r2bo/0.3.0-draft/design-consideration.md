# Consideraciones de Diseño - Repositorio de Reportes de Biopsias Oncológicas v0.3.0-draft

* [**Table of Contents**](toc.md)
* **Consideraciones de Diseño**

## Consideraciones de Diseño

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

Las secciones en este capítulo tratan sobre las consideraciones de diseño que dirigieron partes importantes en el modelamiento de esta guía.

### Representación FHIR de la Notificación Obligatoria de Cancer

En esta guía de implementación se sigue el enfoque de un estudio de anatomía patológica representado por un recurso `DiagnosticReport`, el cual contiene los datos mínimos para cumplir con la notificación obligatoria, más un pdf con el informe completo.

El siguiente diagrama representa una vista general de los perfiles especificados en esta guía.

La relación más importante inicia desde el recurso DiagnosticReport [R2BOInformeBiopsia](StructureDefinition-r2bo-informe-biopsia.md) desde la perspectiva REST.


Figura 1 - Vista general de la Relación de los Perfiles

