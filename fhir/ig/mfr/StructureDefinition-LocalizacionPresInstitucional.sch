<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile LocalizacionCL
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Location</sch:title>
    <sch:rule context="f:Location">
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/CaracterizacionPrestador']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/CaracterizacionPrestador': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/CaracterizacionPrestador']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/CaracterizacionPrestador': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:operationalStatus) &gt;= 1">operationalStatus: minimum cardinality of 'operationalStatus' is 1</sch:assert>
      <sch:assert test="count(f:telecom) &lt;= 1">telecom: maximum cardinality of 'telecom' is 1</sch:assert>
      <sch:assert test="count(f:address) &gt;= 1">address: minimum cardinality of 'address' is 1</sch:assert>
      <sch:assert test="count(f:position) &gt;= 1">position: minimum cardinality of 'position' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Location/f:telecom</sch:title>
    <sch:rule context="f:Location/f:telecom">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:rank) &lt;= 1">rank: maximum cardinality of 'rank' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Location/f:address</sch:title>
    <sch:rule context="f:Location/f:address">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/geolocation']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/geolocation': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/NombreVia']) &gt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/NombreVia': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/NombreVia']) &lt;= 1">extension with URL = 'https://interoperabilidad.minsal.cl/fhir/ig/mfr/StructureDefinition/NombreVia': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:line) &gt;= 1">line: minimum cardinality of 'line' is 1</sch:assert>
      <sch:assert test="count(f:line) &lt;= 1">line: maximum cardinality of 'line' is 1</sch:assert>
      <sch:assert test="count(f:city) &gt;= 1">city: minimum cardinality of 'city' is 1</sch:assert>
      <sch:assert test="count(f:city) &lt;= 1">city: maximum cardinality of 'city' is 1</sch:assert>
      <sch:assert test="count(f:district) &gt;= 1">district: minimum cardinality of 'district' is 1</sch:assert>
      <sch:assert test="count(f:district) &lt;= 1">district: maximum cardinality of 'district' is 1</sch:assert>
      <sch:assert test="count(f:state) &gt;= 1">state: minimum cardinality of 'state' is 1</sch:assert>
      <sch:assert test="count(f:state) &lt;= 1">state: maximum cardinality of 'state' is 1</sch:assert>
      <sch:assert test="count(f:postalCode) &lt;= 1">postalCode: maximum cardinality of 'postalCode' is 1</sch:assert>
      <sch:assert test="count(f:country) &gt;= 1">country: minimum cardinality of 'country' is 1</sch:assert>
      <sch:assert test="count(f:country) &lt;= 1">country: maximum cardinality of 'country' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Location/f:address/f:city</sch:title>
    <sch:rule context="f:Location/f:address/f:city">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl']) &gt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl']) &lt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ComunasCl': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Location/f:address/f:district</sch:title>
    <sch:rule context="f:Location/f:address/f:district">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl']) &gt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl']) &lt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/ProvinciasCl': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Location/f:address/f:state</sch:title>
    <sch:rule context="f:Location/f:address/f:state">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl']) &gt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl']) &lt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/RegionesCl': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Location/f:address/f:country</sch:title>
    <sch:rule context="f:Location/f:address/f:country">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises']) &gt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises']) &lt;= 1">extension with URL = 'https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
