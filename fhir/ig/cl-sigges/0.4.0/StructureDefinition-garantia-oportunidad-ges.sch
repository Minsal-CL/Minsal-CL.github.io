<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Task
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Task</sch:title>
    <sch:rule context="f:Task">
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-garantia-ges']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-garantia-ges': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-garantia-ges']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/sigges/StructureDefinition/ext-garantia-ges': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:businessStatus) &gt;= 1">businessStatus: minimum cardinality of 'businessStatus' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:focus) &gt;= 1">focus: minimum cardinality of 'focus' is 1</sch:assert>
      <sch:assert test="count(f:for) &gt;= 1">for: minimum cardinality of 'for' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Task/f:restriction</sch:title>
    <sch:rule context="f:Task/f:restriction">
      <sch:assert test="count(f:period) &gt;= 1">period: minimum cardinality of 'period' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
