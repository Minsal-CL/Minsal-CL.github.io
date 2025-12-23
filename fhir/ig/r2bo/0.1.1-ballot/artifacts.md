# Artifacts Summary - Repositorio de Reportes de Biopsias Oncológicas v0.1.1-ballot

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [CapabilityStatement Cliente de Origen de Informes del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-cliente-informe.md) | CapabilityStatement para definir las caracteristicas mínimas del cliente que realiza la creación de informes de anatomía patológica y sus resultados. |
| [CapabilityStatement Consumidor del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-consumidor.md) | CapabilityStatement para definir las caracteristicas mínimas del para ver las interacciones posibles para buscar informes de anatomía patológica y sus resultados. |
| [CapabilityStatement Servidor del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-server.md) | CapabilityStatement para definir las caracteristicas mínimas del servidor para ver las interacciones posibles |
| [CapabilityStatement del Cliente Analista del Repositorio de Biopsia del Ministerio de Salud](CapabilityStatement-r2bo-minsal-analisis.md) | CapabilityStatement para definir las caracteristicas mínimas del "Cliente Analista" que realiza analisis secundario de informes de anatomía patológica y sus resultados, para tomar decisiones de salud pública. |

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Modelo Logico De un Paciente del R2BO](StructureDefinition-ModeloLogicoPacienteR2BO.md) | Modelo lógico para el conjunto de datos mínimo de un paciente del R2BO. |
| [Modelo Lógico de Informe Patológico del R2BO](StructureDefinition-ModeloLogicoInformePatologicoR2BO.md) | Modelo lógico para el conjunto de datos mínimo de un informe patológico del R2BO |

### Structures: Abstract Profiles 

These are profiles on resources or data types that describe patterns used by other profiles, but cannot be instantiated directly. I.e. instances can conform to profiles **based** on these abstract profiles but do not declare conformance to the abstract profiles themselves.

| | |
| :--- | :--- |
| [Perfil de Origen de Todos Los Resultados](StructureDefinition-r2bo-resultados-reporte-biopsia.md) | Perfil para todas las observaciones de los resultados de biopsias |
| [Perfil de Origen para las Categorías T, N, M (Abstracto)](StructureDefinition-r2bo-categoria-tnm.md) | Perfil para originar las Categorías T, N, M |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Perfil de Bundle: Documento de Anatomía Patológica](StructureDefinition-r2bo-bundle-documento.md) | Perfil de Bundle que contiene los recursos necesarios para el documento de anatomía patológica. |
| [Perfil de Bundle: Generar Notificación Obligatoria](StructureDefinition-r2bo-bundle-generar-notificacion.md) | Perfil de Bundle que contiene los recursos necesarios para generar la notificación patología y cargarlos en el repositorio. |
| [Perfil de Categoria TNM Nodos Regional](StructureDefinition-r2bo-tnm-categoria-nodo-regional.md) | Categoría de la presencia o ausencia de metástasis en los ganglios linfáticos regionales, basada en evidencia como exámenes físicos, imágenes y/o biopsias. |
| [Perfil de Categoria TNM Tumor Primario](StructureDefinition-r2bo-tnm-categoria-tumor-primario.md) | Categoría del tumor primario, basada en su tamaño y extensión, basada en evidencia como exámenes físicos, imágenes y/o biopsias. |
| [Perfil de Categoria TNM de Metástasis Distante](StructureDefinition-r2bo-tnm-categoria-metastasis-distante.md) | Categoría que describe la extensión de la metástasis de un tumor en ubicaciones anatómicas remotas, basada en evidencia como exámenes físicos, imágenes y/o biopsias. |
| [Perfil de Grupo Estadificación TNM](StructureDefinition-r2bo-estadificacion-tnm.md) | Perfil grupo de estadificación TNM |
| [Perfil de Muestra](StructureDefinition-r2bo-muestra-biopsia.md) | Muestra de tejido o fluido biológico para análisis de antomía patologica. |
| [Perfil de Observacion Tejido No Tumoral Adyacente](StructureDefinition-r2bo-observacion-tejido-no-tumor-adyacente.md) | Registro de la presencia de tejido tumoral en tejido adyacente en un reporte de biopsia |
| [Perfil de Observación Evaluación Post Neoadyuvancia](StructureDefinition-r2bo-observacion-post-tratamiento-neoadjuvancia.md) | Evaluación post neadyudancia del reporte de biopsia |
| [Perfil de Observación Focalidad](StructureDefinition-r2bo-observacion-focalidad.md) | Registro de la focalidad de un tumor en reporte de biopsia |
| [Perfil de Observación Ganglios Linfáticos](StructureDefinition-r2bo-observacion-ganglios-linfaticos.md) | Registro de cantidad de ganglios linfáticos afectados por metastasis en reporte de biopsia |
| [Perfil de Observación Infiltración Perineural](StructureDefinition-r2bo-observacion-infiltracion-perineural.md) | Registro de la infiltración perineural de un tumor en reporte de biopsia |
| [Perfil de Observación Infiltración Peritumoral](StructureDefinition-r2bo-observacion-infiltracion-peritumoral.md) | Registro de la infiltración perineural de un tumor en reporte de biopsia |
| [Perfil de Observación Invasión Linfatica](StructureDefinition-r2bo-observacion-invasion-linfatica.md) | Registro de la invasión linfatica de un tumor en reporte de biopsia |
| [Perfil de Observación Invasión Tumoral](StructureDefinition-r2bo-observacion-invasion-tumoral.md) | Registro de la invasión tumoral en reporte de biopsia |
| [Perfil de Observación Invasión Vascular](StructureDefinition-r2bo-observacion-invasion-vascular.md) | Registro de la invasión vascular de un tumor en reporte de biopsia |
| [Perfil de Observación Macroscópica](StructureDefinition-r2bo-observacion-macroscopica.md) | Registro de las observaciones macroscópicas de un reporte de biopsia |
| [Perfil de Observación Margen Quirúrgico](StructureDefinition-r2bo-observacion-margen-quirurgico.md) | Observaciones del margen quirúrgico en reporte de biopsia |
| [Perfil de Observación Microscópica](StructureDefinition-r2bo-observacion-microscopica.md) | Registro de las observaciones microscópicas de un reporte de biopsia |
| [Perfil de Observación Multicentricidad](StructureDefinition-r2bo-observacion-multicentricidad.md) | Registro de la multicentricidad de un tumor en reporte de biopsia |
| [Perfil de Observación Porcentaje Necrosis](StructureDefinition-r2bo-observacion-porcentaje-necrosis.md) | Registro del porcentaje de necrosis de una muestra un reporte de biopsia |
| [Perfil de Rol Profesional](StructureDefinition-r2bo-rol-profesional-minsal.md) | Rol que cumple un profesional en un establecimiento de salud. Este puede ser un profesional solicitante, el medico intervencionista o un anatomopatólogo que realiza un informe. |
| [Perfil de Solicitud de Informe de Anatomía Patológica](StructureDefinition-r2bo-solicitud-informe-apa.md) | Solicitud generada por el médico para la realización de un informe de anatomía patológica |
| [Perfil de Tamaño del Tumor](StructureDefinition-r2bo-tamano-tumor.md) | Registro de las dimensiones de un tumor |
| [Perfil de la Cabecera del Documento de Biopsía](StructureDefinition-r2bo-composition-biopsia.md) | Este recurso representa la cabecera del documento de un reporte de analisis de anatomía patológica |
| [Perfil de la Morfología y Topología del Tumor](StructureDefinition-r2bo-tumor.md) | Este recurso permite entregar la morfología y la topología resultante de un informe de anatomía patológica |
| [Perfil del Reporte de Anatomía Patológica](StructureDefinition-r2bo-informe-biopsia.md) | Reporte de anatomía patológica |
| [Servicio Solicitante del Informe](StructureDefinition-r2bo-servicio-solicitante.md) | Servicio con el cual es solicitado el informe de Anatomía Patológica. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Extensión De Referencia al Composition](StructureDefinition-r2bo-extension-referencia-composition.md) | Extensión que genera la referencia al composition el cual permite generar un documento en FHIR |
| [Extensión De Referencia al Reporte](StructureDefinition-r2bo-extension-referencia-diagnosticReport.md) | Extensión que genera la referencia al reporte el cual permite generar un documento en FHIR |
| [Extensión Tipo de Procedimiento de Biopsia](StructureDefinition-r2bo-extension-tipo-procedimientos-biopsias.md) | Extensión que define los tipos de procedimientos al momento de extraer muestras de tejido |
| [Extensión del Grado de Diferenciación](StructureDefinition-r2bo-extension-grado-diferenciacion.md) | Extensión que registra el grado de diferenciación tumoral en un reporte de biopsia |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Especialistas Autorizados](ValueSet-r2bo-especialistas-autorizado-VS.md) | Estos son los especialistas autorizados para realizar informes anatomías patológicas |
| [Profesionales Autorizados](ValueSet-r2bo-profesional-autorizado-VS.md) | Estos son los profesionales autorizados para realizar informes o solicitudes de anatomías patológicas |
| [Set de Valores Categoría TNM Patológico Metastásico Distante](ValueSet-r2bo-tnm-categoria-metastasis-distante-patologico-vs.md) | Set de valores utilizados para la categoría TNM patológico metastásico distante |
| [Set de Valores Categoría TNM Patológico Nodos Regional](ValueSet-r2bo-tnm-categoria-nodo-regional-patologico-vs.md) | Set de valores utilizados para la categoría TNM patológico Nodos Regional |
| [Set de Valores Categoría TNM Patológico Tumor Primario](ValueSet-r2bo-tnm-categoria-tumor-primario-patologico-vs.md) | Set de valores utilizados para la categoría TNM patológico tumor primaro |
| [Set de Valores Morfología](ValueSet-r2bo-morfologicosct-cieo-VS.md) | Set de valores utilizados para morfologías, estos pueden ser mapeados de Snomed CT a la CIE-O 3 Morfológico o ser usado directamente en CIE-O 3 Morfológico |
| [Set de Valores Para Grado de Diferenciación](ValueSet-r2bo-grado-diferenciacion-vs.md) | Grado de diferenciación tumoral según clasificación de la OMS |
| [Set de Valores Para Hallazgos de Infiltración Perineural](ValueSet-r2bo-respuestas-infiltracion-perineural-vs.md) | Posibles hallazgos de infiltración perineural en un reporte de biopsia. Este conjunto de valores decienden del concepto: 396394004 hallazgo relacionado con invasión perineural |
| [Set de Valores Para Hallazgos de Infiltración Peritumoral](ValueSet-r2bo-respuestas-infiltracion-peritumoral-vs.md) | Posibles hallazgos de infiltración peritumoral en un reporte de biopsia. Este conjunto de valores decienden del concepto: 373376008 respuesta linfocítica peritumoral - hallazgo |
| [Set de Valores Para Procedimientos](ValueSet-r2bo-procedimientos-biopsias-VS.md) | Set de valores utilizados para los procedimientos al momento de extraer muestras de tejido |
| [Set de Valores Para Tipo de Procedimientos](ValueSet-r2bo-tipo-procedimientos-biopsias-VS.md) | Set de valores utilizados para los tipos de procedimientos al momento de extraer muestras de tejido |
| [Set de Valores Para los Sitios del Cuerpo](ValueSet-r2bo-estructuras-anatomicas-VS.md) | Set de valores para las distintas estructuras corporales de donde se obtienen las muestras |
| [Set de Valores de Caracteristicas del Margen Quirurgico](ValueSet-r2bo-caracteristicas-margen-quirurgico-VS.md) | Set de valores del nivel de compromiso del margen quiurgico en un reporte de biopsia |
| [Set de Valores de Resultados de Observación Post Neoadyuvancia](ValueSet-r2bo-observaciones-NeoAdyuvancia-VS.md) | Posibles valores para las observaciones realizadas en la evaluación post neoadyuvancia de un reporte de biopsia |
| [Set de Valores de la Categoría Reportes de Biopsia](ValueSet-r2bo-categoria-reporte-biopsia-vs.md) | Códigos de tipos de categoría de reportes de biopsias en HL7 |
| [Set de Valores de la Medida de Margen Quirúrgico](ValueSet-r2bo-medida-margen-quirurgico-VS.md) | Valores aceptados para la medida del margen quirúrgico en un reporte de biopsia |
| [Set de Valores de los Metodos de Medición del Tumor](ValueSet-r2bo-metodos-medicion-VS.md) | Set de valores utilizados para los metodos de medición de los tamaños de tumores |
| [Set de Valores de los Reportes de Biopsia](ValueSet-r2bo-reporte-biopsia-vs.md) | Códigos de tipos de reportes de biopsias en Snomed y LOINC |
| [Set de Valores de los Tipos de Especimen](ValueSet-r2bo-tipo-especimen-vs.md) | Códigos de tipos de especimen en Snomed |
| [Set de Valores para Categorias pTNM](ValueSet-r2bo-categorias-pTNM-VS.md) | Set de valores para las categorias para el TNM patológico |
| [Set de Valores para Invasión Linfática, Vascular, Tumoral](ValueSet-r2bo-invasion-linfatica-VS.md) | Posibles resultados de invasión linfática, vascular y tumoral en un reporte de biopsia |
| [Set de Valores para Observaciones Biopsia](ValueSet-r2bo-observaciones-biopsia-VS.md) | Observaciones realizadas durante el informe de biopsia |
| [Set de Valores para Topografía](ValueSet-r2bo-topografica-cieo-VS.md) | Set de valores utilizados para la topografía, estos pueden ser mapeados de Snomed CT a la CIE-O 3 Tográfico o ser usado directamente en CIE-O 3 Tográfico |
| [ValueSet Para Hallazgos Clínicos](ValueSet-r2bo-snomed-hallazgos-clinicos-cie10-VS.md) | Este ValueSet contiene los códigos de Snomed CT que representan hallazgos clínicos más la CIE 10 |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Sistema de Codificación del Grado de Diferenciación](CodeSystem-r2bo-grado-diferenciacion-CS.md) | Grado de diferenciación tumoral según clasificación de la OMS |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Documento del Informe de Anatomía Patológica de Biopsia de Mama](Composition-r2bo-documento-biopsia-ex.md) | Documento de un informe de anatomía patológica de biopsia de mama |
| [Ejemplo de Enviar un Informe de Anatomía Patológica](Bundle-r2bo-generar-informe-bundle-ejemplo.md) | Ejemplo de Bundle que contiene los recursos necesarios para solicitar un informe de anatomía patológica de una biopsia de un tejido mamario. |
| [Ejemplo de una Solicitud de Biopsia](ServiceRequest-r2bo-solicitud-informe-apa-ej.md) | Solicitud de biopsia de tejido mamario |
| [Ejemplo del Documento un Informe de Anatomía Patológica](Bundle-r2bo-documento-informe-bundle-ejemplo.md) | Ejemplo de Bundle que contiene los recursos de un documento de informe de anatomía patológica de una biopsia de un tejido mamario. |
| [Hospital Dr Hernan Henriquez Aravena](Organization-hospital-collector.md) | Hospital de la comuna de Temuco |
| [Informe de Anatomía Patológica de Biopsia de Mama](DiagnosticReport-r2bo-informe-biopsia-ex.md) | Ejecución de un informe de anatomía patológica de biopsia de mama |
| [Morfología y topografía del Tumor](BodyStructure-r2bo-tumor-ex.md) | Ejemplo de un recurso BodyStructure que representa la morfología y topografía del tumor en un paciente. |
| [Muestra de Mama](Specimen-r2bo-specimen-example.md) | Muestra de tejido de mamario |
| [Observacion de Ejemplo: Categoria TNM Metástasis Distante](Observation-r2bo-tnm-categoria-metastasis-distantel-ex.md) | Ejemplo de una observación de categoría TNM de metástasis distante de un reporte de biopsia |
| [Observacion de Ejemplo: Categoria TNM Nodos Regional](Observation-r2bo-tnm-categoria-nodo-regional-ex.md) | Ejemplo de una observación de categoría TNM de nodos regionales de un reporte de biopsia |
| [Observacion de Ejemplo: Categoria TNM Tumor Primario](Observation-r2bo-tnm-categoria-tumor-primario-ex.md) | Ejemplo de una observación de categoría TNM de un tumor primario de un reporte de biopsia |
| [Observacion de Ejemplo: Evaluación Post Neoadyuvancia](Observation-r2bo-observacion-post-tratamiento-neoadjuvancia-ex.md) | Ejemplo de una observación realizada en un reporte de biopsia, posterioa a una neoadyuvancia |
| [Observacion de Ejemplo: Ganglios Linfáticos](Observation-r2bo-observacion-ganglios-linfaticos-ex.md) | Ejemplo de una observación de los ganglios afectados de un reporte de biopsia |
| [Observacion de Ejemplo: Grupo Estadificación TNM](Observation-r2bo-estadificacion-tnm-ex.md) | Ejemplo de una observación del grupo de estadificacion TNM de un reporte de biopsia |
| [Observacion de Ejemplo: Infiltración Perineural](Observation-r2bo-observacion-infiltracion-perineural-ex.md) | Ejemplo de una observación de infiltración perineural de un reporte de biopsia |
| [Observacion de Ejemplo: Infiltración Peritumoral](Observation-r2bo-observacion-infiltracion-peritumoral-ex.md) | Ejemplo de una observación de infiltración peritumoral de un reporte de biopsia |
| [Observacion de Ejemplo: Invasión Linfatica](Observation-r2bo-observacion-invasion-linfatica-ex.md) | Ejemplo de una observación de invasión linfatica de un reporte de biopsia |
| [Observacion de Ejemplo: Invasión Vascular](Observation-r2bo-observacion-invasion-vascular-ex.md) | Ejemplo de una observación de invasión vascular de un reporte de biopsia |
| [Observacion de Ejemplo: Macroscopía](Observation-r2bo-observacion-macroscopica-ex.md) | Ejemplo de una observación macrosópica de un reporte de biopsia |
| [Observacion de Ejemplo: Margen Quirúrgico](Observation-r2bo-observacion-margen-quirurgico-ex.md) | Ejemplo de observación de margen quirúrgico en reporte de biopsia |
| [Observacion de Ejemplo: Microscopía](Observation-r2bo-observacion-microscopica-ex.md) | Ejemplo de una observación microsópica de un reporte de biopsia |
| [Observacion de Ejemplo: Multicentricidad](Observation-r2bo-observacion-centricidad-ex.md) | Ejemplo de una observación de multicentricidad de un reporte de biopsia |
| [Observacion de Ejemplo: Multifocalidad](Observation-r2bo-observacion-multifocalidad-ex.md) | Ejemplo de una observación de multifocalidad de un reporte de biopsia |
| [Observacion de Ejemplo: Porcentaje de Necrosis](Observation-r2bo-observacion-porcentaje-necrosis-ex.md) | Ejemplo de una observación de porcentaje de necrosis de un reporte de biopsia |
| [Observacion de Ejemplo: Tamaño del Tumor](Observation-r2bo-tamano-tumor-ex.md) | Ejemplo de una observación de tamaño del tumor de un reporte de biopsia |
| [Observacion de Ejemplo: Tejido Tumoral Adjacente](Observation-r2bo-observacion-tejido-tumor-adjacente-ex.md) | Ejemplo de la presencia de tejido tumoral en tejido adyacente de un reporte de biopsia |
| [Paciente Que Requiere un Examen](Patient-paciente-requiere-examen.md) | Ejemplo de un paciente dentro del Indice Maestro del Paciente. |
| [Profesional Anatopatologó](Practitioner-profesional-hospital-anatopatologo.md) | Profesional que realiza el informe de anatomía patológica |
| [Profesional de Anatomía Patológica del Hospital](PractitionerRole-r2bo-anatopatologo-hospital.md) | Profesional que realiza el informe de anatomía patológica en un hospital |
| [Profesional del Hospital](PractitionerRole-ProfesionalHospital.md) | Profesional que trabaja en un hospital |
| [Profesional recolector de muestra](Practitioner-profesional-hospital-collector.md) | Profesional que recolecta muestras en un hospital |
| [Servicio de Medicina General](Location-r2bo-localizacion-MedicinaGeneral.md) | Servicio de Medicina General de un establecimiento de salud |

