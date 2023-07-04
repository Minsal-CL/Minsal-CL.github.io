---
layout: default
title: CodeSystem
parent: Servicios Terminológicos
nav_order: 1
grand_parent: Componentes de la Arquitectura
---

# CodeSystem

## Introducción

El servicio terminológico FHIR MINSAL convierte las fuentes terminológicas en recursos CodeSystem y provee la posibilidad de interactuar con estos en el formato FHIR. 

Los Codesystem pueden ser recuperados usando su Namespace Global (url canónica).

Vínculos:
* [Especificación FHIR CodeSystem](https://www.hl7.org/fhir/codesystem.html#resource)
* [Especificación FHIR de $lookup CodeSystem](https://www.hl7.org/fhir/codesystem-operation-lookup.html)
* [Especificación FHIR de $validate-code CodeSystem](https://www.hl7.org/fhir/codesystem-operation-validate-code.html)


## Obtener un único CodeSystem

La solicitud de un CodeSystem sin versiones devuelve la `versión liberada más reciente`. Si no existe una versión liberada, entonces se devolverá una respuesta vacía.


#### URL de Solicitud

`GET /fhir/CodeSystem?url=:url&version=:version`

#### Parámetros de Solicitud

|  Parámetro   |            Descripción     |
|-----|-------------------------------------|
| url | La URL canónica del codesystem      |


#### Solicitud de ejemplo


`GET /fhir/CodeSystem?url=http://snomed.info/sct`


#### Respuesta de Ejemplo

```json
{
    "resourceType": "Bundle",
    "id": "e9a91ae0-5adb-4611-9c58-07370ab28439",
    "meta": {
        "lastUpdated": "2023-07-04T02:38:19.125+00:00"
    },
    "type": "searchset",
    "total": 7,
    "link": [
        {
            "relation": "self",
            "url": "http://192.168.10.187:8080/fhir/CodeSystem?url=http%3A%2F%2Fsnomed.info%2Fsct"
        }
    ],
    "entry": [
        {
            "fullUrl": "http://192.168.10.187:8080/fhir/CodeSystem/sct_900000000000207008_20220131",
            "resource": {
                "resourceType": "CodeSystem",
                "id": "sct_900000000000207008_20220131",
                "url": "http://snomed.info/sct",
                "version": "http://snomed.info/sct/900000000000207008/version/20220131",
                "name": "SNOMED_CT",
                "title": "SNOMED CT release 2022-01-31",
                "status": "active",
                "date": "2022-01-31T00:00:00+00:00",
                "publisher": "SNOMED International",
                "hierarchyMeaning": "is-a",
                "compositional": true,
                "content": "complete"
            }
        },
        {
            "fullUrl": "http://192.168.10.187:8080/fhir/CodeSystem/sct_900000000000207008_20220731",
            "resource": {
                "resourceType": "CodeSystem",
                "id": "sct_900000000000207008_20220731",
                "url": "http://snomed.info/sct",
                "version": "http://snomed.info/sct/900000000000207008/version/20220731",
                "name": "SNOMED_CT",
                "title": "SNOMED CT release 2022-07-31",
                "status": "active",
                "date": "2022-07-31T00:00:00+00:00",
                "publisher": "SNOMED International",
                "hierarchyMeaning": "is-a",
                "compositional": true,
                "content": "complete"
            }
        },
        {
            "fullUrl": "http://192.168.10.187:8080/fhir/CodeSystem/sct_449081005_20221031",
            "resource": {
                "resourceType": "CodeSystem",
                "id": "sct_449081005_20221031",
                "url": "http://snomed.info/sct",
                "version": "http://snomed.info/sct/449081005/version/20221031",
                "name": "SNOMED_CT",
                "title": "SNOMED CT release 2022-10-31",
                "status": "active",
                "date": "2022-10-31T00:00:00+00:00",
                "publisher": "SNOMED International",
                "hierarchyMeaning": "is-a",
                "compositional": true,
                "content": "complete"
            }
        },
        {
            "fullUrl": "http://192.168.10.187:8080/fhir/CodeSystem/sct_900000000000207008_20221031",
            "resource": {
                "resourceType": "CodeSystem",
                "id": "sct_900000000000207008_20221031",
                "url": "http://snomed.info/sct",
                "version": "http://snomed.info/sct/900000000000207008/version/20221031",
                "name": "SNOMED_CT",
                "title": "SNOMED CT release 2022-10-31",
                "status": "active",
                "date": "2022-10-31T00:00:00+00:00",
                "publisher": "SNOMED International",
                "hierarchyMeaning": "is-a",
                "compositional": true,
                "content": "complete"
            }
        },
        {
            "fullUrl": "http://192.168.10.187:8080/fhir/CodeSystem/sct_900000000000207008_20230331",
            "resource": {
                "resourceType": "CodeSystem",
                "id": "sct_900000000000207008_20230331",
                "url": "http://snomed.info/sct",
                "version": "http://snomed.info/sct/900000000000207008/version/20230331",
                "name": "SNOMED_CT",
                "title": "SNOMED CT release 2023-03-31",
                "status": "active",
                "date": "2023-03-31T00:00:00+00:00",
                "publisher": "SNOMED International",
                "hierarchyMeaning": "is-a",
                "compositional": true,
                "content": "complete"
            }
        },
        {
            "fullUrl": "http://192.168.10.187:8080/fhir/CodeSystem/sct_449081005_20230430",
            "resource": {
                "resourceType": "CodeSystem",
                "id": "sct_449081005_20230430",
                "url": "http://snomed.info/sct",
                "version": "http://snomed.info/sct/449081005/version/20230430",
                "name": "SNOMED_CT",
                "title": "SNOMED CT release 2023-04-30",
                "status": "active",
                "date": "2023-04-30T00:00:00+00:00",
                "publisher": "SNOMED International",
                "hierarchyMeaning": "is-a",
                "compositional": true,
                "content": "complete"
            }
        },
        {
            "fullUrl": "http://192.168.10.187:8080/fhir/CodeSystem/sct_900000000000207008_20230430",
            "resource": {
                "resourceType": "CodeSystem",
                "id": "sct_900000000000207008_20230430",
                "url": "http://snomed.info/sct",
                "version": "http://snomed.info/sct/900000000000207008/version/20230430",
                "name": "SNOMED_CT",
                "title": "SNOMED CT release 2023-04-30",
                "status": "active",
                "date": "2023-04-30T00:00:00+00:00",
                "publisher": "SNOMED International",
                "hierarchyMeaning": "is-a",
                "compositional": true,
                "content": "complete"
            }
        }
    ]
}
```


## Obtener versión de un CodeSystem 
#### URL de Solicitud

`GET /fhir/CodeSystem/?url=:url&version=:version`


#### Parámetros de Solicitud

|  Parámetro   |            Descripción     |
|-----|-------------------------------------|
| url | La URL canónica del codesystem      |
| version | La versión del codesystem       |


#### Solicitud de ejemplo

`GET /fhir/CodeSystem?url=http://snomed.info/sct&version=http://snomed.info/sct/449081005/version/20230430`

#### Respuesta de Ejemplo

```json
{
    "resourceType": "Bundle",
    "id": "d5b1c5f1-a8eb-492e-a41d-b30b4996538c",
    "meta": {
        "lastUpdated": "2023-07-04T02:29:34.237+00:00"
    },
    "type": "searchset",
    "total": 1,
    "link": [
        {
            "relation": "self",
            "url": "http://192.168.10.187:8080/fhir/CodeSystem?url=http%3A%2F%2Fsnomed.info%2Fsct&version=http%3A%2F%2Fsnomed.info%2Fsct%2F449081005%2Fversion%2F20230430"
        }
    ],
    "entry": [
        {
            "fullUrl": "http://192.168.10.187:8080/fhir/CodeSystem/sct_449081005_20230430",
            "resource": {
                "resourceType": "CodeSystem",
                "id": "sct_449081005_20230430",
                "url": "http://snomed.info/sct",
                "version": "http://snomed.info/sct/449081005/version/20230430",
                "name": "SNOMED_CT",
                "title": "SNOMED CT release 2023-04-30",
                "status": "active",
                "date": "2023-04-30T00:00:00+00:00",
                "publisher": "SNOMED International",
                "hierarchyMeaning": "is-a",
                "compositional": true,
                "content": "complete"
            }
        }
    ]
}
```

<!-- ## Obtener una lista de las versiones de un CodeSystem

This request returns all `released` versions for a given code system. Note that this request only returns code system definitions and does not populate concepts.

#### URL de Solicitud

`GET /fhir/CodeSystem/?url=:url&version=*`

`GET /orgs/:org/CodeSystem/:id/version`

`GET /orgs/:org/CodeSystem/:id/version/*`

#### Parámetros de Solicitud

|  Parameter   |            Description     |
|-----|-------------------------------------|
|url | The canonical url of the codesystem |
|org | The id of OCL organization |
|id | The id of OCL Source |
|version | '*' value indicates all versions |

#### Solicitud de ejemplo

`GET /fhir/CodeSystem/?url=https://datim.org/CodeSystem/MER&version=*`

`GET /orgs/PEPFAR/CodeSystem/MER/version`

`GET /orgs/PEPFAR/CodeSystem/MER/version/*`

#### Respuesta de Ejemplo

```json
{
    "resourceType": "Bundle",
    "id": "52939e86-ad18-4287-bf14-573a446adff9",
    "meta": {
        "lastUpdated": "2020-12-14T14:27:00.868-05:00"
    },
    "type": "searchset",
    "total": 2,
    "link": [
        {
            "relation": "self",
            "url": "http://localhost:8080/fhir/CodeSystem/?_format=json&url=https%3A%2F%2Fwww.state.gov%2Fpepfar&version=*"
        }
    ],
    "entry": [
        {
            "resource": {
                "resourceType": "CodeSystem",
                "id": "MER",
                "language": "en",
                "url": "https://datim.org/CodeSystem/MER",
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
                        "value": "/orgs/PEPFAR-Test8/CodeSystem/MER/version/v2.0/"
                    }
                ],
                "version": "v2.0",
                "name": "MER Source",
                "title": "DATIM Monitoring, Evaluation & Results Metadata",
                "status": "active",
                "date": "2020-12-01T00:00:00-05:00",
                "publisher": "PEPFAR",
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
                "purpose": "Test code system",
                "copyright": "This is the test source and copyright protected.",
                "content": "example",
                "count": 20751,
                "property": [
                    {
                        "code": "conceptclass",
                        "uri": "https://api.openconceptlab.org/orgs/OCL/sources/Classes/concepts",
                        "description": "Standard list of concept classes.",
                        "type": "string"
                    },
                    {
                        "code": "datatype",
                        "uri": "https://api.openconceptlab.org/orgs/OCL/sources/Datatypes/concepts",
                        "description": "Standard list of concept datatypes.",
                        "type": "string"
                    },
                    {
                        "code": "inactive",
                        "uri": "http://hl7.org/fhir/concept-properties",
                        "description": "True if the concept is not considered active.",
                        "type": "Coding"
                    }
                ]
            }
        },
        {
            "resource": {
                "resourceType": "CodeSystem",
                "id": "MER",
                "language": "en",
                "url": "https://datim.org/CodeSystem/MER",
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
                        "value": "/orgs/PEPFAR-Test8/CodeSystem/MER/version/v1.0/"
                    }
                ],
                "version": "v1.0",
                "name": "MER Source",
                "title": "DATIM Monitoring, Evaluation & Results Metadata",
                "status": "active",
                "content": "example",
                "count": 20751,
                "property": [
                    {
                        "code": "conceptclass",
                        "uri": "https://api.openconceptlab.org/orgs/OCL/sources/Classes/concepts",
                        "description": "Standard list of concept classes.",
                        "type": "string"
                    },
                    {
                        "code": "datatype",
                        "uri": "https://api.openconceptlab.org/orgs/OCL/sources/Datatypes/concepts",
                        "description": "Standard list of concept datatypes.",
                        "type": "string"
                    },
                    {
                        "code": "inactive",
                        "uri": "http://hl7.org/fhir/concept-properties",
                        "description": "True if the concept is not considered active.",
                        "type": "Coding"
                    }
                ]
            }
        }
    ]
}
``` -->



## Obtener una lista de los CodeSystem

Esta solicitud devuelve las versiones más recientes de todos los Code System.

#### URL de Solicitud

`GET /fhir/CodeSystem/`


#### Parámetros de Solicitud

|  Parámetro   |            Descripción     |
|-----|-------------------------------------|
|_count | Conteo de las respuestas  |

#### Solicitud de ejemplo

`GET /fhir/CodeSystem/`

`GET /fhir/CodeSystem?_count=10`

#### Respuesta de Ejemplo

```json
{
    "resourceType": "Bundle",
    "id": "6577a2f5-dcea-4fc0-9159-761c3929b4ed",
    "meta": {
        "lastUpdated": "2023-07-04T02:42:30.095+00:00"
    },
    "type": "searchset",
    "total": 7,
    "link": [
        {
            "relation": "self",
            "url": "http://192.168.10.187:8080/fhir/CodeSystem?_count=10"
        }
    ],
    "entry": [
        {
            "fullUrl": "http://192.168.10.187:8080/fhir/CodeSystem/sct_900000000000207008_20220131",
            "resource": {
                "resourceType": "CodeSystem",
                "id": "sct_900000000000207008_20220131",
                "url": "http://snomed.info/sct",
                "version": "http://snomed.info/sct/900000000000207008/version/20220131",
                "name": "SNOMED_CT",
                "title": "SNOMED CT release 2022-01-31",
                "status": "active",
                "date": "2022-01-31T00:00:00+00:00",
                "publisher": "SNOMED International",
                "hierarchyMeaning": "is-a",
                "compositional": true,
                "content": "complete"
            }
        },
        {
            "fullUrl": "http://192.168.10.187:8080/fhir/CodeSystem/sct_900000000000207008_20220731",
            "resource": {
                "resourceType": "CodeSystem",
                "id": "sct_900000000000207008_20220731",
                "url": "http://snomed.info/sct",
                "version": "http://snomed.info/sct/900000000000207008/version/20220731",
                "name": "SNOMED_CT",
                "title": "SNOMED CT release 2022-07-31",
                "status": "active",
                "date": "2022-07-31T00:00:00+00:00",
                "publisher": "SNOMED International",
                "hierarchyMeaning": "is-a",
                "compositional": true,
                "content": "complete"
            }
        },
        {
            "fullUrl": "http://192.168.10.187:8080/fhir/CodeSystem/sct_900000000000207008_20221031",
            "resource": {
                "resourceType": "CodeSystem",
                "id": "sct_900000000000207008_20221031",
                "url": "http://snomed.info/sct",
                "version": "http://snomed.info/sct/900000000000207008/version/20221031",
                "name": "SNOMED_CT",
                "title": "SNOMED CT release 2022-10-31",
                "status": "active",
                "date": "2022-10-31T00:00:00+00:00",
                "publisher": "SNOMED International",
                "hierarchyMeaning": "is-a",
                "compositional": true,
                "content": "complete"
            }
        },
        {
            "fullUrl": "http://192.168.10.187:8080/fhir/CodeSystem/sct_449081005_20221031",
            "resource": {
                "resourceType": "CodeSystem",
                "id": "sct_449081005_20221031",
                "url": "http://snomed.info/sct",
                "version": "http://snomed.info/sct/449081005/version/20221031",
                "name": "SNOMED_CT",
                "title": "SNOMED CT release 2022-10-31",
                "status": "active",
                "date": "2022-10-31T00:00:00+00:00",
                "publisher": "SNOMED International",
                "hierarchyMeaning": "is-a",
                "compositional": true,
                "content": "complete"
            }
        },
        {
            "fullUrl": "http://192.168.10.187:8080/fhir/CodeSystem/sct_900000000000207008_20230331",
            "resource": {
                "resourceType": "CodeSystem",
                "id": "sct_900000000000207008_20230331",
                "url": "http://snomed.info/sct",
                "version": "http://snomed.info/sct/900000000000207008/version/20230331",
                "name": "SNOMED_CT",
                "title": "SNOMED CT release 2023-03-31",
                "status": "active",
                "date": "2023-03-31T00:00:00+00:00",
                "publisher": "SNOMED International",
                "hierarchyMeaning": "is-a",
                "compositional": true,
                "content": "complete"
            }
        },
        {
            "fullUrl": "http://192.168.10.187:8080/fhir/CodeSystem/sct_900000000000207008_20230430",
            "resource": {
                "resourceType": "CodeSystem",
                "id": "sct_900000000000207008_20230430",
                "url": "http://snomed.info/sct",
                "version": "http://snomed.info/sct/900000000000207008/version/20230430",
                "name": "SNOMED_CT",
                "title": "SNOMED CT release 2023-04-30",
                "status": "active",
                "date": "2023-04-30T00:00:00+00:00",
                "publisher": "SNOMED International",
                "hierarchyMeaning": "is-a",
                "compositional": true,
                "content": "complete"
            }
        },
        {
            "fullUrl": "http://192.168.10.187:8080/fhir/CodeSystem/sct_449081005_20230430",
            "resource": {
                "resourceType": "CodeSystem",
                "id": "sct_449081005_20230430",
                "url": "http://snomed.info/sct",
                "version": "http://snomed.info/sct/449081005/version/20230430",
                "name": "SNOMED_CT",
                "title": "SNOMED CT release 2023-04-30",
                "status": "active",
                "date": "2023-04-30T00:00:00+00:00",
                "publisher": "SNOMED International",
                "hierarchyMeaning": "is-a",
                "compositional": true,
                "content": "complete"
            }
        }
    ]
}
```

<!-- ## Create CodeSystem

The CodeSystem can be created in two ways either using global namespace or owner namespace. The server returns HTTP `201 Created` on succussful operation. 

#### Crear identificador de sesión

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
1. The `CodeSystem.url` is mandatory field.
2. If version is not provided either in `accession identifier` or in `version` field, then CodeSystem of `default version 0.1` will be created.
3. The version value in `accession identifier` takes precedence in case version is provided in both `accession identifier` and `version` field.
4. If `CodeSystem.language` is empty then `en` languages is assumed.
5. If `CodeSystem.status` is empty then `draft` status is assumed.
6. In Global namespace, the CodeSystem.identifier (accession) is required and the CodeSystem.Id is ignored.
7. In Owner namespace, either CodeSystem.identifier (accession) or CodeSystem.Id is required. Both can not be empty.

#### Using global namespace

#### URL de Solicitud

`POST /fhir/CodeSystem/`

#### Solicitud de ejemplo

```json
{
    "resourceType": "CodeSystem",
    "id": "Test1",
    "date": "2021-02-12",
    "language": "en",
    "url": "https://ocl.org/test1",
    "identifier": [
        {
            "use": "usual",
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
            "value": "/users/testuser/CodeSystem/Test1/"
        }
    ],
    "version": "2.0",
    "name": "Test Code System",
    "status": "draft",
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
    "content": "example",
    "concept": [
        {
            "code": "0ssVrvKblz1",
            "designation": [
                {
                    "language": "en",
                    "use": {
                        "code": "Fully Specified"
                    },
                    "value": "PMTCT_STAT (D, CS): New ANC clients"
                }
            ],
            "property": [
                {
                    "code": "conceptclass",
                    "valueString": "Data Element"
                },
                {
                    "code": "datatype",
                    "valueString": "Numeric"
                },
                {
                    "code": "inactive",
                    "valueBoolean": false
                }
            ]
        }
    ]
}

```


#### Using owner namespace

#### URL de Solicitud

`POST /orgs/:org/CodeSystem/`

`POST /users/:user/CodeSystem/`

#### Solicitud de ejemplo

```json
{
    "resourceType": "CodeSystem",
    "id": "Test1",
    "date": "2021-02-12",
    "language": "en",
    "url": "https://ocl.org/test1",
    "version": "2.0",
    "name": "Test Code System",
    "status": "draft",
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
    "content": "example",
    "concept": [
        {
            "code": "0ssVrvKblz1",
            "designation": [
                {
                    "language": "en",
                    "use": {
                        "code": "Fully Specified"
                    },
                    "value": "PMTCT_STAT (D, CS): New ANC clients"
                }
            ],
            "property": [
                {
                    "code": "conceptclass",
                    "valueString": "Data Element"
                },
                {
                    "code": "datatype",
                    "valueString": "Numeric"
                },
                {
                    "code": "inactive",
                    "valueBoolean": false
                }
            ]
        }
    ]
}

```

## Update CodeSystem
The CodeSystem can only be updated using Gloabl Namespace. The server returns HTTP `200 Ok` on succussful operation.

**NOTE:**
1. In order to add `new` concept in CodeSystem, user needs to populate the `CodeSystem.concept.*`. If the concept included is already exist in CodeSystem then it will be ignored. In order to update existing concept, user should delete the concept first and then add new concept with updated information.
2. The Both CodeSystem.id and CodeSystem.version is required to successfully update CodeSystem.
#### URL de Solicitud

`PUT /orgs/:org/CodeSystem/:id/version/:version`

`PUT /users/:user/CodeSystem/:id/version/:version`

#### Solicitud de ejemplo

```json
{
    "resourceType": "CodeSystem",
    "language": "es",
    "name": "updated name",
    "status": "active",
    "content": "example",
    "concept": [
        {
            "code": "zuM0sUhtxTn",
            "display": "HTS_TST (N, DSD, IndexMod, Yield)",
            "designation": [
                {
                    "language": "en",
                    "use": {
                        "code": "Short"
                    },
                    "value": "HTS_TST (N, DSD, IndexMod, Yield)"
                },
                {
                    "language": "en",
                    "use": {
                        "code": "Fully Specified"
                    },
                    "value": "HTS_TST (N, DSD, IndexMod, Yield)"
                }
            ],
            "property": [
                {
                    "code": "conceptclass",
                    "valueString": "Indicator"
                },
                {
                    "code": "datatype",
                    "valueString": "Percentage"
                },
                {
                    "code": "inactive",
                    "valueBoolean": false
                }
            ]
        }
    ]
}


```


## Delete CodeSystem
The CodeSystem can only be deleted using Gloabl Namespace. The server returns HTTP `204 No Content` on succussful operation.

#### URL de Solicitud

`DELETE /orgs/:org/CodeSystem/:id/version/:version`

`DELETE /users/:user/CodeSystem/:id/version/:version`

## Delete Concept from CodeSystem
The CodeSystem's concept can only be deleted using Global Namespace. The server returns HTTP `204 No Content` on succussful operation.

#### URL de Solicitud

`DELETE /orgs/:org/CodeSystem/:id/version/:version/concepts/:concept-code`

`DELETE /users/:user/CodeSystem/:id/version/:version/concepts/:concept-code` -->

## Operaciones FHIR 

Según el perfil mSVCM, las siguientes operaciones FHIR deben ser soportadas para un CodeSystem:
1. $lookup
2. $validate-code

### $lookup

#### URL de Solicitud

`GET /fhir/CodeSystem/$lookup/?system=:system&code=:code`


`POST /fhir/CodeSystem/$lookup`


#### Parámetros de Solicitud (GET)

|  Parameter   |            Description     |
|-----|-------------------------------------|
|system | (M) La URL canónica del codesystem|
|code | (M) El código del concepto|
|version | (O) La version del codesystem|
|displayLanguage | (O) El idioma solicitado para mostrar|

#### Request body (POST)

```json
{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "coding",
      "valueCoding": {
        "system": "http://snomed.info/sct",
        "version": "http://snomed.info/sct/449081005/version/20230430",
        "displayLanguage": "es",
        "code": "425615007"

      }
    },
    {
      "name": "property",
      "valueString": "inactive"
    }
  ]
}
```

#### Solicitud de ejemplo

`GET /fhir/CodeSystem/$lookup?system=http://snomed.info/sct&code=74400008&displayLanguage=es`

`GET /fhir/CodeSystem/$lookup?system=http://snomed.info/sct&code=74400008&version=http://snomed.info/sct/449081005/version/20230430&displayLanguage=es`

#### Respuesta de Ejemplo

```json
{
    "resourceType": "Parameters",
    "parameter": [
        {
            "name": "code",
            "valueString": "74400008"
        },
        {
            "name": "display",
            "valueString": "apendicitis"
        },
        {
            "name": "name",
            "valueString": "SNOMED CT release 2023-04-30"
        },
        {
            "name": "system",
            "valueString": "http://snomed.info/sct"
        },
        {
            "name": "version",
            "valueString": "http://snomed.info/sct/449081005/version/20230430"
        },
        {
            "name": "active",
            "valueBoolean": true
        },
        {
            "name": "property",
            "part": [
                {
                    "name": "code",
                    "valueString": "effectiveTime"
                },
                {
                    "name": "valueString",
                    "valueString": "20020131"
                }
            ]
        },
        {
            "name": "property",
            "part": [
                {
                    "name": "code",
                    "valueString": "moduleId"
                },
                {
                    "name": "value",
                    "valueCode": "900000000000207008"
                }
            ]
        },
        {
            "extension": [
                {
                    "url": "http://snomed.info/fhir/StructureDefinition/designation-use-context",
                    "extension": [
                        {
                            "url": "context",
                            "valueCoding": {
                                "system": "http://snomed.info/sct",
                                "code": "450828004"
                            }
                        },
                        {
                            "url": "role",
                            "valueCoding": {
                                "system": "http://snomed.info/sct",
                                "code": "900000000000548007",
                                "display": "PREFERRED"
                            }
                        },
                        {
                            "url": "type",
                            "valueCoding": {
                                "system": "http://snomed.info/sct",
                                "code": "900000000000013009",
                                "display": "Synonym"
                            }
                        }
                    ]
                }
            ],
            "name": "designation",
            "part": [
                {
                    "name": "language",
                    "valueCode": "es"
                },
                {
                    "name": "use",
                    "valueCoding": {
                        "system": "http://snomed.info/sct",
                        "code": "900000000000013009",
                        "display": "Synonym"
                    }
                },
                {
                    "name": "value",
                    "valueString": "apendicitis"
                }
            ]
        },
        {
            "extension": [
                {
                    "url": "http://snomed.info/fhir/StructureDefinition/designation-use-context",
                    "extension": [
                        {
                            "url": "context",
                            "valueCoding": {
                                "system": "http://snomed.info/sct",
                                "code": "450828004"
                            }
                        },
                        {
                            "url": "role",
                            "valueCoding": {
                                "system": "http://snomed.info/sct",
                                "code": "900000000000549004",
                                "display": "ACCEPTABLE"
                            }
                        },
                        {
                            "url": "type",
                            "valueCoding": {
                                "system": "http://snomed.info/sct",
                                "code": "900000000000013009",
                                "display": "Synonym"
                            }
                        }
                    ]
                }
            ],
            "name": "designation",
            "part": [
                {
                    "name": "language",
                    "valueCode": "es"
                },
                {
                    "name": "use",
                    "valueCoding": {
                        "system": "http://snomed.info/sct",
                        "code": "900000000000013009",
                        "display": "Synonym"
                    }
                },
                {
                    "name": "value",
                    "valueString": "inflamación aguda del apéndice"
                }
            ]
        },
        {
            "extension": [
                {
                    "url": "http://snomed.info/fhir/StructureDefinition/designation-use-context",
                    "extension": [
                        {
                            "url": "context",
                            "valueCoding": {
                                "system": "http://snomed.info/sct",
                                "code": "900000000000509007"
                            }
                        },
                        {
                            "url": "role",
                            "valueCoding": {
                                "system": "http://snomed.info/sct",
                                "code": "900000000000548007",
                                "display": "PREFERRED"
                            }
                        },
                        {
                            "url": "type",
                            "valueCoding": {
                                "system": "http://snomed.info/sct",
                                "code": "900000000000013009",
                                "display": "Synonym"
                            }
                        }
                    ]
                },
                {
                    "url": "http://snomed.info/fhir/StructureDefinition/designation-use-context",
                    "extension": [
                        {
                            "url": "context",
                            "valueCoding": {
                                "system": "http://snomed.info/sct",
                                "code": "900000000000508004"
                            }
                        },
                        {
                            "url": "role",
                            "valueCoding": {
                                "system": "http://snomed.info/sct",
                                "code": "900000000000548007",
                                "display": "PREFERRED"
                            }
                        },
                        {
                            "url": "type",
                            "valueCoding": {
                                "system": "http://snomed.info/sct",
                                "code": "900000000000013009",
                                "display": "Synonym"
                            }
                        }
                    ]
                }
            ],
            "name": "designation",
            "part": [
                {
                    "name": "language",
                    "valueCode": "en"
                },
                {
                    "name": "use",
                    "valueCoding": {
                        "system": "http://snomed.info/sct",
                        "code": "900000000000013009",
                        "display": "Synonym"
                    }
                },
                {
                    "name": "value",
                    "valueString": "Appendicitis"
                }
            ]
        },
        {
            "extension": [
                {
                    "url": "http://snomed.info/fhir/StructureDefinition/designation-use-context",
                    "extension": [
                        {
                            "url": "context",
                            "valueCoding": {
                                "system": "http://snomed.info/sct",
                                "code": "900000000000509007"
                            }
                        },
                        {
                            "url": "role",
                            "valueCoding": {
                                "system": "http://snomed.info/sct",
                                "code": "900000000000548007",
                                "display": "PREFERRED"
                            }
                        },
                        {
                            "url": "type",
                            "valueCoding": {
                                "system": "http://snomed.info/sct",
                                "code": "900000000000003001",
                                "display": "Fully specified name"
                            }
                        }
                    ]
                },
                {
                    "url": "http://snomed.info/fhir/StructureDefinition/designation-use-context",
                    "extension": [
                        {
                            "url": "context",
                            "valueCoding": {
                                "system": "http://snomed.info/sct",
                                "code": "900000000000508004"
                            }
                        },
                        {
                            "url": "role",
                            "valueCoding": {
                                "system": "http://snomed.info/sct",
                                "code": "900000000000548007",
                                "display": "PREFERRED"
                            }
                        },
                        {
                            "url": "type",
                            "valueCoding": {
                                "system": "http://snomed.info/sct",
                                "code": "900000000000003001",
                                "display": "Fully specified name"
                            }
                        }
                    ]
                }
            ],
            "name": "designation",
            "part": [
                {
                    "name": "language",
                    "valueCode": "en"
                },
                {
                    "name": "use",
                    "valueCoding": {
                        "system": "http://snomed.info/sct",
                        "code": "900000000000003001",
                        "display": "Fully specified name"
                    }
                },
                {
                    "name": "value",
                    "valueString": "Appendicitis (disorder)"
                }
            ]
        },
        {
            "extension": [
                {
                    "url": "http://snomed.info/fhir/StructureDefinition/designation-use-context",
                    "extension": [
                        {
                            "url": "context",
                            "valueCoding": {
                                "system": "http://snomed.info/sct",
                                "code": "450828004"
                            }
                        },
                        {
                            "url": "role",
                            "valueCoding": {
                                "system": "http://snomed.info/sct",
                                "code": "900000000000548007",
                                "display": "PREFERRED"
                            }
                        },
                        {
                            "url": "type",
                            "valueCoding": {
                                "system": "http://snomed.info/sct",
                                "code": "900000000000003001",
                                "display": "Fully specified name"
                            }
                        }
                    ]
                }
            ],
            "name": "designation",
            "part": [
                {
                    "name": "language",
                    "valueCode": "es"
                },
                {
                    "name": "use",
                    "valueCoding": {
                        "system": "http://snomed.info/sct",
                        "code": "900000000000003001",
                        "display": "Fully specified name"
                    }
                },
                {
                    "name": "value",
                    "valueString": "apendicitis (trastorno)"
                }
            ]
        },
        {
            "name": "property",
            "part": [
                {
                    "name": "code",
                    "valueString": "parent"
                },
                {
                    "name": "value",
                    "valueCode": "302168000"
                }
            ]
        },
        {
            "name": "property",
            "part": [
                {
                    "name": "code",
                    "valueString": "parent"
                },
                {
                    "name": "value",
                    "valueCode": "18526009"
                }
            ]
        },
        {
            "name": "property",
            "part": [
                {
                    "name": "code",
                    "valueString": "child"
                },
                {
                    "name": "value",
                    "valueCode": "67365005"
                }
            ]
        },
        {
            "name": "property",
            "part": [
                {
                    "name": "code",
                    "valueString": "child"
                },
                {
                    "name": "value",
                    "valueCode": "85189001"
                }
            ]
        },
        {
            "name": "property",
            "part": [
                {
                    "name": "code",
                    "valueString": "child"
                },
                {
                    "name": "value",
                    "valueCode": "9124008"
                }
            ]
        },
        {
            "name": "property",
            "part": [
                {
                    "name": "code",
                    "valueString": "child"
                },
                {
                    "name": "value",
                    "valueCode": "418171008"
                }
            ]
        },
        {
            "name": "property",
            "part": [
                {
                    "name": "code",
                    "valueString": "child"
                },
                {
                    "name": "value",
                    "valueCode": "25598004"
                }
            ]
        },
        {
            "name": "property",
            "part": [
                {
                    "name": "code",
                    "valueString": "child"
                },
                {
                    "name": "value",
                    "valueCode": "26826005"
                }
            ]
        },
        {
            "name": "property",
            "part": [
                {
                    "name": "code",
                    "valueString": "child"
                },
                {
                    "name": "value",
                    "valueCode": "42640003"
                }
            ]
        },
        {
            "name": "property",
            "part": [
                {
                    "name": "code",
                    "valueString": "child"
                },
                {
                    "name": "value",
                    "valueCode": "91313006"
                }
            ]
        },
        {
            "name": "property",
            "part": [
                {
                    "name": "code",
                    "valueString": "child"
                },
                {
                    "name": "value",
                    "valueCode": "58997001"
                }
            ]
        },
        {
            "name": "property",
            "part": [
                {
                    "name": "code",
                    "valueString": "child"
                },
                {
                    "name": "value",
                    "valueCode": "32084004"
                }
            ]
        },
        {
            "name": "property",
            "part": [
                {
                    "name": "code",
                    "valueString": "child"
                },
                {
                    "name": "value",
                    "valueCode": "8744003"
                }
            ]
        },
        {
            "name": "property",
            "part": [
                {
                    "name": "code",
                    "valueString": "child"
                },
                {
                    "name": "value",
                    "valueCode": "123601005"
                }
            ]
        },
        {
            "name": "property",
            "part": [
                {
                    "name": "code",
                    "valueString": "child"
                },
                {
                    "name": "value",
                    "valueCode": "1145117000"
                }
            ]
        },
        {
            "name": "property",
            "part": [
                {
                    "name": "code",
                    "valueString": "child"
                },
                {
                    "name": "value",
                    "valueCode": "733157003"
                }
            ]
        },
        {
            "name": "property",
            "part": [
                {
                    "name": "code",
                    "valueString": "child"
                },
                {
                    "name": "value",
                    "valueCode": "5596004"
                }
            ]
        }
    ]
}
```


### $validate-code

### URL de Solicitud

`GET /fhir/CodeSystem/$validate-code/?url=:url&code=:code`

#### Parámetros de Solicitud (GET)

|  Parámetros   |            Descripción     |
|-----|-------------------------------------|
|url | (M) La URL canónica del codesystem|
|code | (M) El código del concepto|
|version | (O) La version del codesystem|
|displayLanguage | (O) El idioma solicitado para mostrar |
|display | (O) El texto asociado al código|


**NOTA:**
1. displayLanguage actualmente no es soportado para la operación $validate-code


#### Solicitud de ejemplo

`GET /fhir/CodeSystem/$validate-code?url=http://snomed.info/sct&version=http://snomed.info/sct/449081005/version/20230430&code=181216001`

#### Respuesta de Ejemplo

```json
{
    "resourceType": "Parameters",
    "parameter": [
        {
            "name": "result",
            "valueBoolean": true
        },
        {
            "name": "display",
            "valueString": "Entire lung"
        },
        {
            "name": "system",
            "valueString": "http://snomed.info/sct"
        },
        {
            "name": "version",
            "valueString": "http://snomed.info/sct/449081005/version/20230430"
        }
    ]
}
```