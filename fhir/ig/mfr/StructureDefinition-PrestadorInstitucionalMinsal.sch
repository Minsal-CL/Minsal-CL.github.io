<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile OrganizacionCL
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Organization</sch:title>
    <sch:rule context="f:Organization">
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/PeriodoFuncionamiento']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/PeriodoFuncionamiento': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/PeriodoFuncionamiento']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/PeriodoFuncionamiento': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/PertenenciaSNSS']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/PertenenciaSNSS': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/PertenenciaSNSS']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/PertenenciaSNSS': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/TipoEstablecimiento']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/TipoEstablecimiento': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/TipoEstablecimiento']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/TipoEstablecimiento': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/TipoPrestador']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/TipoPrestador': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/Certificacion']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/Certificacion': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/Certificacion']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/Certificacion': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/TipoUrgencia']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/TipoUrgencia': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/TieneServicioUrgencia']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/TieneServicioUrgencia': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/TieneServicioUrgencia']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/TieneServicioUrgencia': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/NivelAtencion']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/NivelAtencion': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/ClasificacionSAPU']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/ClasificacionSAPU': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/EstadoFuncionamiento']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/EstadoFuncionamiento': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/EstadoFuncionamiento']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/EstadoFuncionamiento': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/DependenciaAdministrativa']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/DependenciaAdministrativa': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/DependenciaAdministrativa']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/DependenciaAdministrativa': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/ModalidadAtencion']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/ModalidadAtencion': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/ModalidadAtencion']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/ModalidadAtencion': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/NivelComplejidadEstablecimiento']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/NivelComplejidadEstablecimiento': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/NivelComplejidadEstablecimiento']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/NivelComplejidadEstablecimiento': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/AmbitoFuncionamiento']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/AmbitoFuncionamiento': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/AmbitoFuncionamiento']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/AmbitoFuncionamiento': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/Dependencia']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/Dependencia': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/Dependencia']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/Dependencia': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:name) &gt;= 1">name: minimum cardinality of 'name' is 1</sch:assert>
      <sch:assert test="count(f:telecom) &lt;= 1">telecom: maximum cardinality of 'telecom' is 1</sch:assert>
      <sch:assert test="count(f:address) &lt;= 1">address: maximum cardinality of 'address' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Organization/f:identifier</sch:title>
    <sch:rule context="f:Organization/f:identifier">
      <sch:assert test="count(f:use) &gt;= 1">use: minimum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:use) &gt;= 1">use: minimum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Organization/f:telecom</sch:title>
    <sch:rule context="f:Organization/f:telecom">
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Organization/f:partOf</sch:title>
    <sch:rule context="f:Organization/f:partOf">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 1">identifier: maximum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:display) &gt;= 1">display: minimum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
