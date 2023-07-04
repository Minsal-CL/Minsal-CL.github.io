---
title: ValueSet
layout: default
parent: Servicios Terminológicos
grand_parent: Componentes de la Arquitectura
nav_order: 2
---

# Valueset

## Introducción

El servicio FHIR MINSAL convierte conjuntos de valores en recursos ValueSet de FHIR y provee la posibilidad de interactuar con ellos en formato FHIR.

Los ValueSet pueden ser recuperados usando sus url canónicas.

Links:
* [Especificación FHIR ValueSet](https://www.hl7.org/fhir/valueset.html#resource)
* [Especificación FHIR ValueSet $validate-code](https://www.hl7.org/fhir/valueset-operation-validate-code.html)
* [Especificación FHIR ValueSet $expand](https://www.hl7.org/fhir/valueset-operation-expand.html)

## Obtener un único ValueSet

La solicitud sin versión de un ValueSet devuelve `la versión más reciente liberada`. 

#### URL de Solicitud

`GET /fhir/ValueSet/?url=:url`


#### Parámetros de la Solicitud

|  Parámetro   |            Descripción     |
|-----|-------------------------------------|
|url  |URL canónica del Valueset |

#### Solicitud de ejemplo

`GET /fhir/ValueSet/?url=http://minsal.com/fhir/vs/sexo_biologico`

#### Respuesta de ejemplo

```json
{
    "resourceType": "Bundle",
    "id": "d9ad7aa5-42b8-496a-937a-17bfa19d7df7",
    "meta": {
        "lastUpdated": "2023-07-04T14:19:23.688+00:00"
    },
    "type": "searchset",
    "total": 1,
    "link": [
        {
            "relation": "self",
            "url": "http://192.168.10.187:8080/fhir/ValueSet/?url=http%3A%2F%2Fminsal.com%2Ffhir%2Fvs%2Fsexo_biologico"
        }
    ],
    "entry": [
        {
            "fullUrl": "http://192.168.10.187:8080/fhir/ValueSet/7b6217e8-42e8-461a-ae29-53b2b0352805",
            "resource": {
                "resourceType": "ValueSet",
                "id": "7b6217e8-42e8-461a-ae29-53b2b0352805",
                "url": "http://minsal.com/fhir/vs/sexo_biologico",
                "version": "0.1",
                "name": "Sexo biologico",
                "status": "draft",
                "experimental": true,
                "description": "Lista de los posibles sexos para captura de detalle de pacicentes.",
                "copyright": "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (SNOMED International), and distributed by agreement between SNOMED International and HL7. Implementer use of SNOMED CT is not covered by this agreement."
            }
        }
    ]
}
```

## Obtener versión de un ValueSet

#### URL de Solicitud

`GET /fhir/ValueSet/?url=:url&version=:version`

#### Parámetros de Solicitud

|  Parámetro   |            Descripción     |
|-----|-------------------------------------|
|url | URL canónica del ValueSet|
|version | La versión del ValueSet|

#### Solicitud de ejemplo

`GET /fhir/ValueSet/?url=http://minsal.com/fhir/vs/sexo_biologico&version=0.1`

#### Respuesta de ejemplo

```json
{
    "resourceType": "Bundle",
    "id": "87cb3db8-bea0-4ba0-b2d1-fb9e4e9c9ccd",
    "meta": {
        "lastUpdated": "2023-07-04T14:22:56.674+00:00"
    },
    "type": "searchset",
    "total": 1,
    "link": [
        {
            "relation": "self",
            "url": "http://192.168.10.187:8080/fhir/ValueSet/?url=http%3A%2F%2Fminsal.com%2Ffhir%2Fvs%2Fsexo_biologico&version=0.1"
        }
    ],
    "entry": [
        {
            "fullUrl": "http://192.168.10.187:8080/fhir/ValueSet/7b6217e8-42e8-461a-ae29-53b2b0352805",
            "resource": {
                "resourceType": "ValueSet",
                "id": "7b6217e8-42e8-461a-ae29-53b2b0352805",
                "url": "http://minsal.com/fhir/vs/sexo_biologico",
                "version": "0.1",
                "name": "Sexo biologico",
                "status": "draft",
                "experimental": true,
                "description": "Lista de los posibles sexos para captura de detalle de pacicentes.",
                "copyright": "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (SNOMED International), and distributed by agreement between SNOMED International and HL7. Implementer use of SNOMED CT is not covered by this agreement."
            }
        }
    ]
}
```


## Obtener una lista de ValueSets

Esta solicitud devuelve las versiones más recientes de todos los ValueSets.


#### URL de Solicitud

`GET /fhir/ValueSet/`


#### Parámetros de Solicitud

|  Parámetro   |            Descripción     |
|-----|-------------------------------------|
|_count | Conteo de respuestas|

#### Solicitud de ejemplo

`GET /fhir/ValueSet/`

#### Respuesta de ejemplo

```json
{
    "resourceType": "Bundle",
    "id": "c25c2819-0607-4f8f-917c-20239e0ce6c5",
    "meta": {
        "lastUpdated": "2023-07-04T15:15:26.493+00:00"
    },
    "type": "searchset",
    "total": 3,
    "link": [
        {
            "relation": "self",
            "url": "http://192.168.10.187:8080/fhir/ValueSet/"
        }
    ],
    "entry": [
        {
            "fullUrl": "http://192.168.10.187:8080/fhir/ValueSet/122f0f73-812f-455d-91ca-8f842251ed0a",
            "resource": {
                "resourceType": "ValueSet",
                "id": "122f0f73-812f-455d-91ca-8f842251ed0a",
                "url": "http://example.com/fhir/vs/sex_es",
                "version": "0.1",
                "name": "Sexo",
                "status": "draft",
                "experimental": true,
                "description": "Lista de los posibles sexos para captura de detalle de pacicentes.",
                "copyright": "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (SNOMED International), and distributed by agreement between SNOMED International and HL7. Implementer use of SNOMED CT is not covered by this agreement."
            }
        },
        {
            "fullUrl": "http://192.168.10.187:8080/fhir/ValueSet/7b6217e8-42e8-461a-ae29-53b2b0352805",
            "resource": {
                "resourceType": "ValueSet",
                "id": "7b6217e8-42e8-461a-ae29-53b2b0352805",
                "url": "http://minsal.com/fhir/vs/sexo_biologico",
                "version": "0.1",
                "name": "Sexo biologico",
                "status": "draft",
                "experimental": true,
                "description": "Lista de los posibles sexos para captura de detalle de pacicentes.",
                "copyright": "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (SNOMED International), and distributed by agreement between SNOMED International and HL7. Implementer use of SNOMED CT is not covered by this agreement."
            }
        },
        {
            "fullUrl": "http://192.168.10.187:8080/fhir/ValueSet/bc4b4694-2021-4179-997b-c31556679a18",
            "resource": {
                "resourceType": "ValueSet",
                "id": "bc4b4694-2021-4179-997b-c31556679a18",
                "url": "http://minsal.com/fhir/vs/servicios_de_referencia",
                "version": "0.1",
                "name": "Servicios de Referencia",
                "status": "draft",
                "experimental": true,
                "description": "Lista de los posibles Servicios de Destino de una Interconsulta.",
                "copyright": "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (SNOMED International), and distributed by agreement between SNOMED International and HL7. Implementer use of SNOMED CT is not covered by this agreement."
            }
        }
    ]
}
```

<!-- ## Create ValueSet

The ValueSet can be created in two ways either using global namespace or owner namespace. The server returns HTTP `201 Created` on succussful operation. 

<b>Create Accession identifier</b>

```
{
    "type": {
        "coding": [
            {
                "system": "http://hl7.org/fhir/v2/0203",
                "code": "ACSN",
                "display": "Accession ID"
            }
        ],
        "text": "Accession ID"
    },
    "system": "<HOSTED FHIR SERVER ADDRESS>",
    "value": "<RESOURCE URI>"
}

# Accepted values for system based on environment:
- https://fhir.aws.openconceptlab.org
- https://fhir.qa.aws.openconceptlab.org
- https://fhir.staging.aws.openconceptlab.org
- https://fhir.demo.aws.openconceptlab.org

```

**NOTE:**
1. The `ValueSet.url` is mandatory field.
2. If version is not provided either in `accession identifier` or in `version` field, then ValueSet of `default version 0.1` will be created.
3. The version value in `accession identifier` takes precedence in case version is provided in both `accession identifier` and `version` field.
4. If `ValueSet.language` is empty then `en` languages is assumed.
5. If `ValueSet.status` is empty then `draft` status is assumed.
6. In Global namespace, the ValueSet.identifier (accession) is required and the ValueSet.Id is ignored.
7. In Owner namespace, either ValueSet.identifier (accession) or ValueSet.Id is required. Both can not be empty.
8. The ValueSet.compose.include.system is mandatory field.
9. All of the CodeSystems included in ValueSet.compose.include.system should be canonical url of CodeSystem and known to OCL.
10. The concept codes provided in ValueSet.compose.include.concept.code should exist in respective CodeSystem and only valid codes will be added in ValueSet.

#### Using global namespace

#### URL de Solicitud

`POST /fhir/ValueSet/`

<details>
<summary><b>Example request</summary>

```json
{
    "resourceType": "ValueSet",
    "id": "Test1",
    "url": "https://ocl.org/ValueSet/test1",
    "identifier": [
        {
            "type": {
                "coding": [
                    {
                        "system": "http://hl7.org/fhir/v2/0203",
                        "code": "ACSN",
                        "display": "Accession ID"
                    }
                ],
                "text": "Accession ID"
            },
            "system": "https://fhir.qa.aws.openconceptlab.org",
            "value": "/users/testuser/ValueSet/Test1/"
        }
    ],
    "version": "v5.0",
    "contact": [
        {
            "name": "Jon Doe 1",
            "telecom": [
                {
                    "system": "email",
                    "value": "jondoe1@gmail.com",
                    "use": "work",
                    "rank": 1,
                    "period": {
                        "start": "2020-10-29T10:26:15-04:00",
                        "end": "2025-10-29T10:26:15-04:00"
                    }
                }
            ]
        }
    ],
    "jurisdiction": [
        {
            "coding": [
                {
                    "system": "http://unstats.un.org/unsd/methods/m49/m49.htm",
                    "code": "USA",
                    "display": "United States of America"
                }
            ]
        }
    ],
    "compose": {
        "include": [
            {
                "system": "https://ocl.org/CodeSystem/test1",
                "version": "v2.0",
                "concept": [
                    {
                        "code": "AGYW_PREV"
                    },
                    {
                        "code": "CXCA_SCRN"
                    }
                ]
            }
        ]
    }
}

```


#### Using owner namespace

#### URL de Solicitud


`POST /users/:user/ValueSet/`

<details>
<summary><b>Example request</summary>

```json
{
    "resourceType": "ValueSet",
    "id": "Test1",
    "url": "https://ocl.org/ValueSet/test1",
    "version": "v5.0",
    "contact": [
        {
            "name": "Jon Doe 1",
            "telecom": [
                {
                    "system": "email",
                    "value": "jondoe1@gmail.com",
                    "use": "work",
                    "rank": 1,
                    "period": {
                        "start": "2020-10-29T10:26:15-04:00",
                        "end": "2025-10-29T10:26:15-04:00"
                    }
                }
            ]
        }
    ],
    "jurisdiction": [
        {
            "coding": [
                {
                    "system": "http://unstats.un.org/unsd/methods/m49/m49.htm",
                    "code": "USA",
                    "display": "United States of America"
                }
            ]
        }
    ],
    "compose": {
        "include": [
            {
                "system": "https://ocl.org/CodeSystem/test1",
                "version": "v2.0",
                "concept": [
                    {
                        "code": "AGYW_PREV"
                    },
                    {
                        "code": "CXCA_SCRN"
                    }
                ]
            }
        ]
    }
}

```


## Delete ValueSet
The ValueSet can only be deleted using Gloabl Namespace. The server returns HTTP `204 No Content` on succussful operation.

#### URL de Solicitud

`DELETE /users/:user/ValueSet/:id/version/:version`

## FHIR Operations

As per mSVCM profile, following FHIR operations are supported for a valueset:
1. $validate-code
2. $expand

### $validate-code

### Request url

`GET /fhir/ValueSet/$validate-code/?url=:url&system=:system&code=:code`

`POST /fhir/ValueSet/$validate-code`

#### Parámetros de Solicitud (GET)

|  Parámetro   |            Descripción     |
|-----|-------------------------------------|
|url | (M) The canonical url of the valueset|
|code | (M) The concept code, the code that is to be validated|
|system | (M) The system canonical url for the code that is to be validated|
|valueSetVersion | (O) The version of the valueset|
|systemVersion | (O) The version of the codesystem|
|display | (O) The display associated with the code|
|displayLanguage | (O) Specifies the language to be used for description when validating the display property|
|coding | (O) A coding to validate (Alternate way to provide system, code, systemVersion and display) (only valid in POST request)|
|org | The id of OCL organization|


#### Request body (POST)

```
{
    "resourceType":"Parameters",
    "parameter": [
        {
            "name":"url",
            "valueUri":"<valueset_url>"
        },
        {
            "name":"code",
            "valueCode":"<code>"
        },
        {
            "name":"system",
            "valueUri":"<system_url>"
        },
        {
            "name":"valueSetVersion",
            "valueString":"<valueset_version>"
        },
        {
            "name":"systemVersion",
            "valueString":"<system_version>"
        },
        {
            "name":"display",
            "valueString":"<display>"
        },
        {
            "name":"displayLanguage",
            "valueCode":"<display_language>"
        }
    ]
}


{
    "resourceType":"Parameters",
    "parameter": [
        {
            "name":"coding",
            "valueCoding": {
                "system" : "<system_url>",
                "code" : "<code>",
                "version": "<system_version>",
                "display":"<display>"
            }
        },
        {
            "name":"url",
            "valueUri":"<valueset_url>"
        },
        {
            "name":"valueSetVersion",
            "valueString":"<valueset_version>"
        },
        {
            "name":"displayLanguage",
            "valueCode":"<display_language>"
        }
    ]
}

```

**NOTE:**
1. displayLanguage is ignored when display is not provided or empty
2. If coding is provided then system_url, code, system_version and display values are overridden with the values of
  coding.system, coding.code, coding.version and coding.display respectively.


### Example Request

`GET /fhir/ValueSet/$validate-code/?url=https://www.state.gov/pepfar/mer_reference_indicators_fy19&system=https://www.state.gov/pepfar&code=DIAGNOSED_NAT `



#### Respuesta de ejemplo

```json
{
    "resourceType": "Parameters",
    "parameter": [
        {
            "name": "result",
            "valueBoolean": true
        }
    ]
}
``` -->

### $expand

### URL de solicitud

`GET /fhir/ValueSet/$expand/?url=:url`

`POST /fhir/ValueSet/$expand`

#### Parámetros de Solicitud (GET)

|  Parámetro   |            Descripción     |
|-----|-------------------------------------|
|url | (M) URL canonica del ValueSet|
|displayLanguage | (O) El idioma que será usado para los ValueSet.expansion.contains.display|
|valueSetVersion | (O) La versión del valueset|
|offset | (O) Punto de inicio para el subconjunto deseado (defecto 0)|
|count | (O) Número deseado de códigos a ser devueltos (defecto 100)|
|filter | (O) 
La cadena de caracteres que actúa de filtro puede ser usado para controlar los códigos incluidos en la expansión del ValueSet. Para usar múltiples filtros, cada cadena debe ser separada por espacios y el servicio lo reconocerá como filtros combinados de intersección.


#### Solicitud de ejemplo

`GET /fhir/ValueSet/$expand?url=http://snomed.info/sct/449081005/version/20230430?fhir_vs=ecl/<<74400008&count=10&displayLanguage=es`

`GET /fhir/ValueSet/$expand?url=http://snomed.info/sct/449081005/version/20230430?fhir_vs=ecl/<<74400008&filter=perforada&count=10&displayLanguage=es`

#### Respuesta de ejemplo

```json
{
    "resourceType": "ValueSet",
    "id": "abbc2197-9e84-42ec-95a9-55015390f1ae",
    "url": "http://snomed.info/sct/449081005/version/20230430?fhir_vs=ecl/<<74400008",
    "status": "active",
    "copyright": "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (SNOMED International), and distributed by agreement between SNOMED International and HL7. Implementer use of SNOMED CT is not covered by this agreement.",
    "expansion": {
        "id": "2a6a472e-dfd8-44d7-8b33-6381ff9e859a",
        "timestamp": "2023-07-04T16:22:24+00:00",
        "total": 3,
        "offset": 0,
        "parameter": [
            {
                "name": "version",
                "valueUri": "http://snomed.info/sct|http://snomed.info/sct/449081005/version/20230430"
            },
            {
                "name": "displayLanguage",
                "valueString": "es"
            }
        ],
        "contains": [
            {
                "system": "http://snomed.info/sct",
                "code": "286967008",
                "display": "apendicitis aguda perforada"
            },
            {
                "system": "http://snomed.info/sct",
                "code": "1255222000",
                "display": "apendicitis crónica perforada"
            },
            {
                "system": "http://snomed.info/sct",
                "code": "95547004",
                "display": "apendicitis supurativa perforada"
            }
        ]
    }
}
```