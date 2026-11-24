# Comunas - Guía de Estandares de Información de Salud v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Comunas**

## ValueSet: Comunas 

| | |
| :--- | :--- |
| *URL oficial*:https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/eis-comunas-vs | *Versión*:0.2.1 |
| Active al 2023-01-15 | *Nombre computable*:ComunasVS |
| *Otros identificadores:*OID:2.16.840.1.113883.2.22.48.16 | |

 
Comunas 

 **Referencias** 

* [Códigos para Comunas en Chile](StructureDefinition-eis-comunas.md)

### Logical Definition (CLD)

 

### Expansión

-------

 Explicación de las columnas que pueden aparecer en esta página: 

| | |
| :--- | :--- |
| Nivel | Algunas listas de códigos definidas por FHIR son jerárquicas: cada código tiene asignado un nivel. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| Sistema | El origen de la definición del código (cuando el conjunto de valores incluye códigos definidos en otro lugar) |
| Código | El código (el que se usa en la instancia del recurso) |
| Despliegue | El texto de despliegue (usado en el elemento*display*de un[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). Si no hay texto de despliegue, los implementadores no deben mostrar solo el código, sino asociar el concepto en su aplicación |
| Definición | Una explicación del significado del concepto |
| Comentarios | Notas adicionales sobre cómo usar el código |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "eis-comunas-vs",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/eis-comunas-vs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.48.16"
  }],
  "version" : "0.2.1",
  "name" : "ComunasVS",
  "title" : "Comunas",
  "status" : "active",
  "experimental" : false,
  "date" : "2023-01-15",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  },
  {
    "name" : "Jorge Mansilla",
    "telecom" : [{
      "system" : "email",
      "value" : "jorge.mansilla@minsal.cl",
      "use" : "work"
    }]
  }],
  "description" : "Comunas",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-comunas-cs"
    }]
  }
}

```
