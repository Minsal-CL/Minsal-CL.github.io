<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile EncounterCL
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Encounter</sch:title>
    <sch:rule context="f:Encounter">
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Prevision']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Prevision': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Acompanante']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Acompanante': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Acompanante']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/Acompanante': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/LeyPrevisional']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/LeyPrevisional': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 1">identifier: maximum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:period) &gt;= 1">period: minimum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:reasonCode) &lt;= 1">reasonCode: maximum cardinality of 'reasonCode' is 1</sch:assert>
      <sch:assert test="count(f:serviceProvider) &gt;= 1">serviceProvider: minimum cardinality of 'serviceProvider' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:identifier</sch:title>
    <sch:rule context="f:Encounter/f:identifier">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 1">assigner: maximum cardinality of 'assigner' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:participant</sch:title>
    <sch:rule context="f:Encounter/f:participant">
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:period) &gt;= 1">period: minimum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:period) &gt;= 1">period: minimum cardinality of 'period' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:participant/f:period</sch:title>
    <sch:rule context="f:Encounter/f:participant/f:period">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:start) &gt;= 1">start: minimum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:start) &lt;= 1">start: maximum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:end) &lt;= 1">end: maximum cardinality of 'end' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:start) &gt;= 1">start: minimum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:start) &lt;= 1">start: maximum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:end) &lt;= 1">end: maximum cardinality of 'end' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:period</sch:title>
    <sch:rule context="f:Encounter/f:period">
      <sch:assert test="count(f:start) &gt;= 1">start: minimum cardinality of 'start' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:reasonCode</sch:title>
    <sch:rule context="f:Encounter/f:reasonCode">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:hospitalization</sch:title>
    <sch:rule context="f:Encounter/f:hospitalization">
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/MedioDeLlegada']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/MedioDeLlegada': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/MedioDeLlegada']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/MedioDeLlegada': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ConsultaPorAccidente']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ConsultaPorAccidente': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ConsultaPorAccidente']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia/StructureDefinition/ConsultaPorAccidente': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:admitSource) &gt;= 1">admitSource: minimum cardinality of 'admitSource' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
