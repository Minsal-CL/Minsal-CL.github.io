<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Address
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Address</sch:title>
    <sch:rule context="f:Address">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/geolocation|5.3.0']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/geolocation|5.3.0': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-tipo-de-via']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-tipo-de-via': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:line) &gt;= 1">line: minimum cardinality of 'line' is 1</sch:assert>
      <sch:assert test="count(f:city) &gt;= 1">city: minimum cardinality of 'city' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Address/f:city</sch:title>
    <sch:rule context="f:Address/f:city">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-comunas']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-comunas': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-comunas']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-comunas': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Address/f:district</sch:title>
    <sch:rule context="f:Address/f:district">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-provincias']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-provincias': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-provincias']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-provincias': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Address/f:state</sch:title>
    <sch:rule context="f:Address/f:state">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-regiones']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-regiones': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-regiones']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-regiones': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Address/f:country</sch:title>
    <sch:rule context="f:Address/f:country">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-paises']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-paises': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-paises']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition/eis-paises': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
