# Recurso Guía de Implementación del Repositorio Interoperable de Anatomías - Repositorio de Reportes de Biopsias Oncológicas v0.3.1-draft

* [**Table of Contents**](toc.md)
* **Recurso Guía de Implementación del Repositorio Interoperable de Anatomías**

## Recurso Guía de Implementación del Repositorio Interoperable de Anatomías

| |
| :--- |
| *Page standards status:*[Informative](http://hl7.org/fhir/R4/versions.html#std-process) |

| | |
| :--- | :--- |
| **Official URL**: https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ImplementationGuide/hl7.fhir.cl.minsal.r2bo | **Version**: 0.1.0 |
| **NPM package name**: hl7.fhir.cl.minsal.r2bo | **ComputableName**: RepositorioInteroperableAnatomiaPatologicaMinsal |
| **Copyright/Legal**: Used by permission of HL7 International, all rights reserved Creative Commons License |   |

* [XML](ImplementationGuide-hl7.fhir.cl.minsal.r2bo.xml)
* [JSON](ImplementationGuide-hl7.fhir.cl.minsal.r2bo.json)

### Perfiles Globales

*There are no Global profiles defined*

### Dependencias


















### Analisis de versiones cruzadas

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (hl7.fhir.cl.minsal.r2bo.r4)](package.r4.tgz) and [R4B (hl7.fhir.cl.minsal.r2bo.r4b)](package.r4b.tgz) are available.

### Declaracion de propiedad intelectual

This publication includes IP covered under the following statements.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.5.0/CodeSystem-ISO3166Part1.html): [Bundle/r2bo-generar-informe-bundle-ejemplo](Bundle-r2bo-generar-informe-bundle-ejemplo.md), [BundleGenerarNotificacion](StructureDefinition-r2bo-bundle-generar-notificacion.md)... Show 43 more, [CategoriaReporteBiopsiaVS](ValueSet-r2bo-categoria-reporte-biopsia-vs.md), [CategoriaTNM](StructureDefinition-r2bo-categoria-tnm.md), [CategoriaspTNMVS](ValueSet-r2bo-categorias-pTNM-VS.md), [EspecialistasAutorizadosR2BO](ValueSet-r2bo-especialistas-autorizado-VS.md), [EstadificacionPatologicoVS](ValueSet-r2bo-Estadificacion-patologico-vs.md), [EstadificacionTNM](StructureDefinition-r2bo-estadificacion-tnm.md), [EstructuraAnatomicaVS](ValueSet-r2bo-estructuras-anatomicas-VS.md), [ExtensionAddendum](StructureDefinition-r2bo-Addenda-Reportebiopsia.md), [ExtensionGradoDiferenciacion](StructureDefinition-r2bo-extension-grado-diferenciacion.md), [GradoDiferenciacionCS](CodeSystem-r2bo-grado-diferenciacion-CS.md), [GradoDiferenciacionVS](ValueSet-r2bo-grado-diferenciacion-vs.md), [HallazgosClinicosCIE10VS](ValueSet-r2bo-hallazgos-clinicos-cie10-VS.md), [HallazgosClinicosCIE11VS](ValueSet-r2bo-hallazgos-clinicos-cie11-VS.md), [InformePatologicoR2BOLogico](StructureDefinition-ModeloLogicoInformePatologicoR2BO.md), [MorfologicoCIE11VS](ValueSet-r2bo-morfologicos-cie11-VS.md), [MorfologicoCIEOVS](ValueSet-r2bo-morfologicosct-cieo-VS.md), [MuestraR2BO](StructureDefinition-r2bo-muestra-biopsia.md), [ObservacionNeoAdyuvanciaVS](ValueSet-r2bo-observaciones-NeoAdyuvancia-VS.md), [ObservacionesBiopsiaVS](ValueSet-r2bo-observaciones-biopsia-VS.md), [PacienteR2BOLogico](StructureDefinition-ModeloLogicoPacienteR2BO.md), [Patient/paciente-requiere-examen](Patient-paciente-requiere-examen.md), [ProcedimientosBiopsiaVS](ValueSet-r2bo-procedimientos-biopsias-VS.md), [ProfesionalesAutorizadosR2BO](ValueSet-r2bo-profesional-autorizado-VS.md), [R2BOInformeBiopsia](StructureDefinition-r2bo-informe-biopsia.md), [R2BOMinsalAnalistaCapabilityStatement](CapabilityStatement-r2bo-minsal-analisis.md), [R2BOMinsalConsumidorCapabilityStatement](CapabilityStatement-r2bo-minsal-consumidor.md), [R2BOMinsalServerCapabilityStatement](CapabilityStatement-r2bo-minsal-server.md), [R2BOMinsalSourceInformeCapabilityStatement](CapabilityStatement-r2bo-minsal-cliente-informe.md), [R2BOServicioSolicitante](StructureDefinition-r2bo-servicio-solicitante.md), [ReporteBiopsiaVS](ValueSet-r2bo-reporte-biopsia-vs.md), [RepositorioReportesBiopsiasOncologicas](index.md), [ResultadosReporteBiopsia](StructureDefinition-r2bo-resultados-reporte-biopsia.md), [RolProfesionalR2BO](StructureDefinition-r2bo-rol-profesional-minsal.md), [SolicitudInformeAPA](StructureDefinition-r2bo-solicitud-informe-apa.md), [TNMCategoriaMetastasisDistante](StructureDefinition-r2bo-tnm-categoria-metastasis-distante.md), [TNMCategoriaMetastasisDistantePatologicoVS](ValueSet-r2bo-tnm-categoria-metastasis-distante-patologico-vs.md), [TNMCategoriaNodoRegional](StructureDefinition-r2bo-tnm-categoria-nodo-regional.md), [TNMCategoriaPatologicoNodosRegionalVS](ValueSet-r2bo-tnm-categoria-nodo-regional-patologico-vs.md), [TNMCategoriaTumorPrimario](StructureDefinition-r2bo-tnm-categoria-tumor-primario.md), [TNMCategoriaTumorPrimarioPatologicoVS](ValueSet-r2bo-tnm-categoria-tumor-primario-patologico-vs.md), [TipoEspecimenVS](ValueSet-r2bo-tipo-especimen-vs.md), [TopograficaCIE11VS](ValueSet-r2bo-topografica-cie11-VS.md) and [TopograficaCIEOVS](ValueSet-r2bo-topografica-cieo-VS.md)


* The WHO grants a license for "commercial and non-commercial use" of ICD-11CC BY-ND 3.0 IGODetailed information can be found here: [[https://icd.who.int/en/docs/icd11-license.pdf](https://icd.who.int/en/docs/icd11-license.pdf)](https://icd.who.int/en/docs/icd11-license.pdf) Contact licensing@who.int to obtain further information.

* [International Classification of Diseases, 11th Revision Mortality and Morbidity Statistics (MMS)](http://terminology.hl7.org/6.5.0/CodeSystem-ICD11MMS.html): [HallazgosClinicosCIE11VS](ValueSet-r2bo-hallazgos-clinicos-cie11-VS.md), [MorfologicoCIE11VS](ValueSet-r2bo-morfologicos-cie11-VS.md) and [TopograficaCIE11VS](ValueSet-r2bo-topografica-cie11-VS.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.5.0/CodeSystem-v3-loinc.html): [Bundle/r2bo-generar-informe-bundle-ejemplo](Bundle-r2bo-generar-informe-bundle-ejemplo.md), [DiagnosticReport/r2bo-informe-biopsia-ex](DiagnosticReport-r2bo-informe-biopsia-ex.md)... Show 9 more, [ObservacionNeoAdyuvanciaVS](ValueSet-r2bo-observaciones-NeoAdyuvancia-VS.md), [ObservacionesBiopsiaVS](ValueSet-r2bo-observaciones-biopsia-VS.md), [Observation/r2bo-estadificacion-tnm-ex](Observation-r2bo-estadificacion-tnm-ex.md), [Observation/r2bo-tnm-categoria-metastasis-distantel-ex](Observation-r2bo-tnm-categoria-metastasis-distantel-ex.md), [Observation/r2bo-tnm-categoria-nodo-regional-ex](Observation-r2bo-tnm-categoria-nodo-regional-ex.md), [Observation/r2bo-tnm-categoria-tumor-primario-ex](Observation-r2bo-tnm-categoria-tumor-primario-ex.md), [R2BOInformeBiopsia](StructureDefinition-r2bo-informe-biopsia.md), [ReporteBiopsiaVS](ValueSet-r2bo-reporte-biopsia-vs.md) and [ResultadosReporteBiopsia](StructureDefinition-r2bo-resultados-reporte-biopsia.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [Bundle/r2bo-generar-informe-bundle-ejemplo](Bundle-r2bo-generar-informe-bundle-ejemplo.md), [CategoriaTNM](StructureDefinition-r2bo-categoria-tnm.md)... Show 20 more, [CategoriaspTNMVS](ValueSet-r2bo-categorias-pTNM-VS.md), [EstadificacionTNM](StructureDefinition-r2bo-estadificacion-tnm.md), [EstructuraAnatomicaVS](ValueSet-r2bo-estructuras-anatomicas-VS.md), [MuestraR2BO](StructureDefinition-r2bo-muestra-biopsia.md), [ObservacionesBiopsiaVS](ValueSet-r2bo-observaciones-biopsia-VS.md), [Observation/r2bo-estadificacion-tnm-ex](Observation-r2bo-estadificacion-tnm-ex.md), [Observation/r2bo-tnm-categoria-metastasis-distantel-ex](Observation-r2bo-tnm-categoria-metastasis-distantel-ex.md), [Observation/r2bo-tnm-categoria-nodo-regional-ex](Observation-r2bo-tnm-categoria-nodo-regional-ex.md), [Observation/r2bo-tnm-categoria-tumor-primario-ex](Observation-r2bo-tnm-categoria-tumor-primario-ex.md), [ProcedimientosBiopsiaVS](ValueSet-r2bo-procedimientos-biopsias-VS.md), [R2BOInformeBiopsia](StructureDefinition-r2bo-informe-biopsia.md), [ReporteBiopsiaVS](ValueSet-r2bo-reporte-biopsia-vs.md), [ResultadosReporteBiopsia](StructureDefinition-r2bo-resultados-reporte-biopsia.md), [ServiceRequest/r2bo-solicitud-informe-apa-ej](ServiceRequest-r2bo-solicitud-informe-apa-ej.md), [SolicitudInformeAPA](StructureDefinition-r2bo-solicitud-informe-apa.md), [Specimen/r2bo-specimen-example](Specimen-r2bo-specimen-example.md), [TNMCategoriaMetastasisDistante](StructureDefinition-r2bo-tnm-categoria-metastasis-distante.md), [TNMCategoriaNodoRegional](StructureDefinition-r2bo-tnm-categoria-nodo-regional.md), [TNMCategoriaTumorPrimario](StructureDefinition-r2bo-tnm-categoria-tumor-primario.md) and [TipoEspecimenVS](ValueSet-r2bo-tipo-especimen-vs.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [Observation Category Codes](http://terminology.hl7.org/7.3.0/CodeSystem-observation-category.html): [Bundle/r2bo-generar-informe-bundle-ejemplo](Bundle-r2bo-generar-informe-bundle-ejemplo.md), [EstadificacionTNM](StructureDefinition-r2bo-estadificacion-tnm.md)... Show 5 more, [Observation/r2bo-estadificacion-tnm-ex](Observation-r2bo-estadificacion-tnm-ex.md), [Observation/r2bo-tnm-categoria-metastasis-distantel-ex](Observation-r2bo-tnm-categoria-metastasis-distantel-ex.md), [Observation/r2bo-tnm-categoria-nodo-regional-ex](Observation-r2bo-tnm-categoria-nodo-regional-ex.md), [Observation/r2bo-tnm-categoria-tumor-primario-ex](Observation-r2bo-tnm-categoria-tumor-primario-ex.md) and [ResultadosReporteBiopsia](StructureDefinition-r2bo-resultados-reporte-biopsia.md)
* [diagnosticServiceSectionId](http://terminology.hl7.org/7.3.0/CodeSystem-v2-0074.html): [Bundle/r2bo-generar-informe-bundle-ejemplo](Bundle-r2bo-generar-informe-bundle-ejemplo.md), [CategoriaReporteBiopsiaVS](ValueSet-r2bo-categoria-reporte-biopsia-vs.md), [DiagnosticReport/r2bo-informe-biopsia-ex](DiagnosticReport-r2bo-informe-biopsia-ex.md) and [R2BOInformeBiopsia](StructureDefinition-r2bo-informe-biopsia.md)
* [specimenType](http://terminology.hl7.org/7.3.0/CodeSystem-v2-0487.html): [Bundle/r2bo-generar-informe-bundle-ejemplo](Bundle-r2bo-generar-informe-bundle-ejemplo.md) and [Specimen/r2bo-specimen-example](Specimen-r2bo-specimen-example.md)
* [relevantClincialInformation](http://terminology.hl7.org/7.3.0/CodeSystem-v2-0916.html): [MuestraR2BO](StructureDefinition-r2bo-muestra-biopsia.md)
* [RoleCode](http://terminology.hl7.org/7.3.0/CodeSystem-v3-RoleCode.html): [Bundle/r2bo-generar-informe-bundle-ejemplo](Bundle-r2bo-generar-informe-bundle-ejemplo.md) and [ServiceRequest/r2bo-solicitud-informe-apa-ej](ServiceRequest-r2bo-solicitud-informe-apa-ej.md)


* Usado con el permiso de HL7 International, todos los derechos resevados en los Licencias de HL7 Internacional.

* [Códigos de Comunas en Chile](https://hl7chile.cl/fhir/ig/clcore/1.9.4/CodeSystem-CSCodComunasCL.html): [Bundle/r2bo-generar-informe-bundle-ejemplo](Bundle-r2bo-generar-informe-bundle-ejemplo.md) and [Patient/paciente-requiere-examen](Patient-paciente-requiere-examen.md)
* [Códigos de Provincias en Chile](https://hl7chile.cl/fhir/ig/clcore/1.9.4/CodeSystem-CSCodProvinciasCL.html): [Bundle/r2bo-generar-informe-bundle-ejemplo](Bundle-r2bo-generar-informe-bundle-ejemplo.md) and [Patient/paciente-requiere-examen](Patient-paciente-requiere-examen.md)
* [Códigos de Regiones en Chile](https://hl7chile.cl/fhir/ig/clcore/1.9.4/CodeSystem-CSCodRegionCL.html): [Bundle/r2bo-generar-informe-bundle-ejemplo](Bundle-r2bo-generar-informe-bundle-ejemplo.md) and [Patient/paciente-requiere-examen](Patient-paciente-requiere-examen.md)
* [Identidad de Genero](https://hl7chile.cl/fhir/ig/clcore/1.9.4/CodeSystem-CSIdentidaddeGenero.html): [Bundle/r2bo-generar-informe-bundle-ejemplo](Bundle-r2bo-generar-informe-bundle-ejemplo.md) and [Patient/paciente-requiere-examen](Patient-paciente-requiere-examen.md)
* [Tipo Identificador](https://hl7chile.cl/fhir/ig/clcore/1.9.4/CodeSystem-CSTipoIdentificador.html): [Bundle/r2bo-generar-informe-bundle-ejemplo](Bundle-r2bo-generar-informe-bundle-ejemplo.md), [Practitioner/profesional-hospital-anatopatologo](Practitioner-profesional-hospital-anatopatologo.md) and [Practitioner/profesional-hospital-collector](Practitioner-profesional-hospital-collector.md)


### Parametros de Expansión

* Parameter: system-version
  * Value: SNOMED CT[CH rel. null 0325]

### Parametros de Configuración

* code: copyrightyear 
value: 2025+
* code: releaselabel 
value: ci-build
* code: path-tx-cache 
value: input/txcache
* code: path-expansion-params 
value: ../../input/_resources/exp-params.json

