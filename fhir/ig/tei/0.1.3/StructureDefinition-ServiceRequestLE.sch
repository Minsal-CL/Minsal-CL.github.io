<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile ServiceRequest
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ServiceRequest</sch:title>
    <sch:rule context="f:ServiceRequest">
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/MotivoCierreInterconsulta']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/MotivoCierreInterconsulta': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolRequiereExamen']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolRequiereExamen': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolAtencionPreferente']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolAtencionPreferente': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/SospechaPatologiaGes']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/SospechaPatologiaGes': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolResolutividadAPS']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolResolutividadAPS': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolAlergia']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolAlergia': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolCuidador']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolCuidador': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolPresentaDiscapacidad']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/ExtBoolPresentaDiscapacidad': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/OrigenInterconsulta']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/OrigenInterconsulta': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/ExtStringFundamentoPriorizacion']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/ExtStringFundamentoPriorizacion': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/EstadoInterconsultaCodigoLE']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/EstadoInterconsultaCodigoLE': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/DocAcreditacionCuidadorCodigoLE']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/DocAcreditacionCuidadorCodigoLE': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/EspecialidadMedicaDestinoCodigo']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/EspecialidadMedicaDestinoCodigo': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/SubEspecialidadMedicaDestinoCodigo']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/SubEspecialidadMedicaDestinoCodigo': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/DestinoAtencionCodigo']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/DestinoAtencionCodigo': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/PrevisionCodigoLE']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/PrevisionCodigoLE': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/PertinenciaInterconsulta']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/PertinenciaInterconsulta': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 1">identifier: maximum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:category) &lt;= 1">category: maximum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:performer) &lt;= 1">performer: maximum cardinality of 'performer' is 1</sch:assert>
      <sch:assert test="count(f:locationCode) &lt;= 1">locationCode: maximum cardinality of 'locationCode' is 1</sch:assert>
      <sch:assert test="count(f:reasonCode) &lt;= 1">reasonCode: maximum cardinality of 'reasonCode' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:identifier</sch:title>
    <sch:rule context="f:ServiceRequest/f:identifier">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 1">assigner: maximum cardinality of 'assigner' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:identifier/f:type</sch:title>
    <sch:rule context="f:ServiceRequest/f:identifier/f:type">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:coding) &gt;= 1">coding: minimum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:coding) &lt;= 1">coding: maximum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:identifier/f:type/f:coding</sch:title>
    <sch:rule context="f:ServiceRequest/f:identifier/f:type/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:category</sch:title>
    <sch:rule context="f:ServiceRequest/f:category">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:coding) &gt;= 1">coding: minimum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:coding) &lt;= 1">coding: maximum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:category/f:coding</sch:title>
    <sch:rule context="f:ServiceRequest/f:category/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:doNotPerform</sch:title>
    <sch:rule context="f:ServiceRequest/f:doNotPerform">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://minsal.cl/listaespera/StructureDefinition/MotivoNoPertinenciaCodigo']) &lt;= 1">extension with URL = 'http://minsal.cl/listaespera/StructureDefinition/MotivoNoPertinenciaCodigo': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:code</sch:title>
    <sch:rule context="f:ServiceRequest/f:code">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:locationCode</sch:title>
    <sch:rule context="f:ServiceRequest/f:locationCode">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:coding) &gt;= 1">coding: minimum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:coding) &lt;= 1">coding: maximum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:locationCode/f:coding</sch:title>
    <sch:rule context="f:ServiceRequest/f:locationCode/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
