<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile MINSALPrestadorProfesional
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Practitioner</sch:title>
    <sch:rule context="f:Practitioner">
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdentidadDeGenero']) &lt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/IdentidadDeGenero': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SexoBiologico']) &lt;= 0">extension with URL = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SexoBiologico': maximum cardinality of 'extension' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:name/f:family</sch:title>
    <sch:rule context="f:Practitioner/f:name/f:family">
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido']) &lt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:address</sch:title>
    <sch:rule context="f:Practitioner/f:address">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/geolocation|5.2.0']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/geolocation|5.2.0': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:address/f:city</sch:title>
    <sch:rule context="f:Practitioner/f:address/f:city">
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl']) &lt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:address/f:district</sch:title>
    <sch:rule context="f:Practitioner/f:address/f:district">
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl']) &lt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:address/f:state</sch:title>
    <sch:rule context="f:Practitioner/f:address/f:state">
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl']) &lt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:address/f:country</sch:title>
    <sch:rule context="f:Practitioner/f:address/f:country">
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises']) &lt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Practitioner/f:qualification</sch:title>
    <sch:rule context="f:Practitioner/f:qualification">
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/Mencion']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition/Mencion': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 1">identifier: maximum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 1">identifier: maximum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 1">identifier: maximum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 1">identifier: maximum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 1">identifier: maximum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 1">identifier: maximum cardinality of 'identifier' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
