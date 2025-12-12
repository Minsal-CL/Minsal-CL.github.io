<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Specimen
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Specimen</sch:title>
    <sch:rule context="f:Specimen">
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:receivedTime) &gt;= 1">receivedTime: minimum cardinality of 'receivedTime' is 1</sch:assert>
      <sch:assert test="count(f:collection) &gt;= 1">collection: minimum cardinality of 'collection' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Specimen/f:collection</sch:title>
    <sch:rule context="f:Specimen/f:collection">
      <sch:assert test="count(f:collected[x]) &gt;= 1">collected[x]: minimum cardinality of 'collected[x]' is 1</sch:assert>
      <sch:assert test="count(f:method) &gt;= 1">method: minimum cardinality of 'method' is 1</sch:assert>
      <sch:assert test="count(f:bodySite) &gt;= 1">bodySite: minimum cardinality of 'bodySite' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Specimen/f:collection/f:method</sch:title>
    <sch:rule context="f:Specimen/f:collection/f:method">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-extension-tipo-procedimientos-biopsias']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-extension-tipo-procedimientos-biopsias': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-extension-tipo-procedimientos-biopsias']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition/r2bo-extension-tipo-procedimientos-biopsias': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Specimen/f:collection/f:bodySite</sch:title>
    <sch:rule context="f:Specimen/f:collection/f:bodySite">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-laterality-qualifier']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-laterality-qualifier': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
