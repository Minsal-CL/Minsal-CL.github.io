<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile EncuentroUrgencia
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Encounter</sch:title>
    <sch:rule context="f:Encounter">
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/prevision']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/prevision': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/clasificacion-consulta']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/clasificacion-consulta': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/pronostico-medico-legal']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/pronostico-medico-legal': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/pertinencia']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/pertinencia': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:hospitalization) &gt;= 1">hospitalization: minimum cardinality of 'hospitalization' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:period</sch:title>
    <sch:rule context="f:Encounter/f:period">
      <sch:assert test="count(f:end) &gt;= 1">end: minimum cardinality of 'end' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:hospitalization</sch:title>
    <sch:rule context="f:Encounter/f:hospitalization">
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/medio-llegada']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/urgencia-eventos/StructureDefinition/medio-llegada': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:dischargeDisposition) &gt;= 1">dischargeDisposition: minimum cardinality of 'dischargeDisposition' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
