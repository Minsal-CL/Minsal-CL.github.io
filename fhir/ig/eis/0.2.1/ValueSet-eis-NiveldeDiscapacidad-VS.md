# Nivel de Discapacidad - Guía de Estandares de Información de Salud v0.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nivel de Discapacidad**

## ValueSet: Nivel de Discapacidad 

| | |
| :--- | :--- |
| *URL oficial*:https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/eis-NiveldeDiscapacidad-VS | *Versión*:0.2.1 |
| Active al 2026-03-01 | *Nombre computable*:NiveldeDiscapacidadVS |
| *Otros identificadores:*OID:2.16.840.1.113883.2.22.48.9 | |

 
Las personas en situación de discapacidad son aquellas que, en relación con condiciones de salud de carácter físico, psíquico, intelectual, sensorial u otras, y al interactuar con diversas barreras contextuales, actitudinales y ambientales, presentan restricciones en su participación plena y efectiva en la sociedad, en igualdad de condiciones con las demás personas. 

 **Referencias** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "eis-NiveldeDiscapacidad-VS",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet/eis-NiveldeDiscapacidad-VS",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.48.9"
  }],
  "version" : "0.2.1",
  "name" : "NiveldeDiscapacidadVS",
  "title" : "Nivel de Discapacidad",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-01T00:00:00-03:00",
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
  "description" : "Las personas en situación de discapacidad son aquellas que, en relación con condiciones de salud de carácter físico, psíquico, intelectual, sensorial u otras, y al interactuar con diversas barreras contextuales, actitudinales y ambientales, presentan restricciones en su participación plena y efectiva en la sociedad, en igualdad de condiciones con las demás personas.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-NiveldeDiscapacidad-CS"
    }]
  }
}

```
