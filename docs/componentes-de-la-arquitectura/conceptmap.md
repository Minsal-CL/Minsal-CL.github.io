---
layout: default
title: Conceptmap
parent: Servicios Terminológicos
nav_order: 3
grand_parent: Componentes de la Arquitectura
---

# ConceptMap

## Introducción

El servicio terminológico FHIR MINSAL convierte las fuentes terminológicas en recursos Conceptmap y provee la posibilidad de interactuar con estos en el formato FHIR. 


Los ConceptMap pueden ser recuperados usando su Namespace Global (url canónica).

Links:
* [Especificación FHIR ConceptMap](https://www.hl7.org/fhir/conceptmap.html#resource)
* [Especificación FHIR ConceptMap $translate](https://www.hl7.org/fhir/conceptmap-operation-translate.html)


## Obtener un único ConceptMap

La solicitud de un conceptmap sin versiones devuelve la `versión liberada más reciente`. Si no existe una versión liberada, entonces se devolverá una respuesta vacía.

<!-- 
**NOTA**

- El valor ConceptMap.group.element.target.equivalence se devuelve como una extensión del objetivo con URL de extensión

  `http://fhir.openconceptlab.org/ConceptMap/equivalence` .
  
-->
#### URL de Solicitud

`GET /fhir/ConceptMap/?url=:url`

#### Parámetros de Solicitud

|  Parameter   |            Description     |
|-----|-------------------------------------|
| url | La URL canónica del conceptmap      |
| id  | El  id del  conceptmap              |

#### Solicitud de ejemplo

Solicitar todos los concept map disponibles.

`GET /fhir/ConceptMap?url=http://hl7.org/fhir/sid/meddra`

#### Respuesta de Ejemplo

```json
{
    "resourceType": "Bundle",
    "id": "3e7e9ba7-ab8e-4026-9436-90c14c74560c",
    "meta": {
        "lastUpdated": "2023-07-04T22:02:31.814+00:00"
    },
    "type": "searchset",
    "total": 0,
    "link": [
        {
            "relation": "self",
            "url": "http://192.168.70.139:8080/fhir/ConceptMap?url=http%3A%2F%2Fhl7.org%2Ffhir%2Fsid%2Fmeddra"
        }
    ]
}

```

Por defecto, se devuelven los primeros `100` mapeos para un conceptmap. Si el usuario desea obtener más mapeos, el servicio FHIR proporciona soporte de paginación para un recurso. El valor de página por defecto es `page=1` y este número puede incrementarse para recuperar más mapeos.

<!--
## Obtener versión de un ConceptMap
#### URL de Solicitud

`GET /fhir/ConceptMap/?url=:url&version=:version`

#### Parámetros de Solicitud

|  Parameter   |            Description     |
|-----|-------------------------------------|
|url | La URL canónica del conceptmap  |
|id | El id del  conceptmap        |
|version | La version del conceptmap|

#### Solicitud de ejemplo

`GET /fhir/ConceptMap/?url=http://snomed.info/sct&version=http://snomed.info/sct/449081005/version/20230430`


#### Respuesta de Ejemplo


```json
{
    "resourceType": "Bundle",
    "id": "60b6b267-531e-4d9d-b857-77c43055c2f4",
    "meta": {
        "lastUpdated": "2021-02-25T18:28:04.514+00:00"
    },
    "type": "searchset",
    "total": 1,
    "link": [
        {
            "relation": "self",
            "url": "http://fhir.qa.aws.openconceptlab.org/orgs/PEPFAR-Test10/ConceptMap/MER/"
        },
        {
            "relation": "prev",
            "url": "null"
        },
        {
            "relation": "next",
            "url": "http://fhir.qa.aws.openconceptlab.org/orgs/PEPFAR-Test10/ConceptMap/MER/?page=2"
        }
    ],
    "entry": [
        {
            "resource": {
                "resourceType": "ConceptMap",
                "id": "MER",
                "url": "https://datim.org/ConceptMap/MER",
                "identifier": {
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
                    "value": "/orgs/PEPFAR-Test10/ConceptMap/MER/version/v1.0/"
                },
                "version": "v2.0",
                "name": "MER Source",
                "title": "DATIM Monitoring, Evaluation & Results Metadata",
                "status": "active",
                "description": "Auto-generated release",
                "group": [
                    {
                        "source": "/orgs/PEPFAR-Test10/sources/MER/",
                        "target": "/orgs/PEPFAR-Test10/sources/MER/",
                        "element": [
                            {
                                "code": "025M3T2Hsh2",
                                "target": [
                                    {
                                        "extension": [
                                            {
                                                "url": "http://fhir.openconceptlab.org/ConceptMap/equivalence",
                                                "valueString": "Has Option"
                                            }
                                        ],
                                        "code": "GNrMxECWqDp"
                                    },
                                    {
                                        "extension": [
                                            {
                                                "url": "http://fhir.openconceptlab.org/ConceptMap/equivalence",
                                                "valueString": "Has Option"
                                            }
                                        ],
                                        "code": "XqbMOMJhdoo"
                                    }
                                ]
                            },
                            {
                                "code": "0W99fNHD5Dz",
                                "target": [
                                    {
                                        "extension": [
                                            {
                                                "url": "http://fhir.openconceptlab.org/ConceptMap/equivalence",
                                                "valueString": "Derived From"
                                            }
                                        ],
                                        "code": "q4YD3KInPoX"
                                    },
                                    {
                                        "extension": [
                                            {
                                                "url": "http://fhir.openconceptlab.org/ConceptMap/equivalence",
                                                "valueString": "Derived From"
                                            }
                                        ],
                                        "code": "WPkzUQaVO7k"
                                    }
                                ]
                            }
                        ]
                    }
                ]
            }
        }
    ]
}
```
-->

<!-- ## 
## Get list of ConceptMap versions

This request returns all `released` versions for a given conceptmap. Note that this request only returns conceptmap definitions and does not populate mappings.
#### Request url

`GET /fhir/ConceptMap/?url=:url&version=*`

`GET /orgs/:org/ConceptMap/:id/version`

`GET /orgs/:org/ConceptMap/:id/version/*`

#### Request Parameters

|  Parameter   |            Description     |
|-----|-------------------------------------|
|url | The canonical url of the conceptmap |
|org | The id of the OCL organization |
|id | The id of the conceptmap |
|version | '*' value indicates all versions |

#### Example Request

`GET /fhir/ConceptMap/?url=https://datim.org/ConceptMap/MER&version=*`

`GET /orgs/PEPFAR-Test10/ConceptMap/MER/version`

`GET /orgs/PEPFAR-Test10/ConceptMap/MER/version/*`

#### Example Response

```json
{
    "resourceType": "Bundle",
    "id": "33e60b00-93c8-407a-bd35-2ce93924abb9",
    "meta": {
        "lastUpdated": "2021-02-25T18:40:40.704+00:00"
    },
    "type": "searchset",
    "total": 1,
    "link": [
        {
            "relation": "self",
            "url": "http://fhir.qa.aws.openconceptlab.org/orgs/PEPFAR-Test10/ConceptMap/MER/version/"
        },
        {
            "relation": "prev",
            "url": "null"
        },
        {
            "relation": "next",
            "url": "null"
        }
    ],
    "entry": [
        {
            "resource": {
                "resourceType": "ConceptMap",
                "id": "MER",
                "url": "https://datim.org/ConceptMap/MER",
                "identifier": {
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
                    "value": "/orgs/PEPFAR-Test10/ConceptMap/MER/version/v1.0/"
                },
                "version": "v2.0",
                "name": "MER Source",
                "title": "DATIM Monitoring, Evaluation & Results Metadata",
                "status": "active",
                "description": "Auto-generated release"
            }
        },
        {
            "resource": {
                "resourceType": "ConceptMap",
                "id": "MER",
                "url": "https://datim.org/ConceptMap/MER",
                "identifier": {
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
                    "value": "/orgs/PEPFAR-Test10/ConceptMap/MER/version/v2.0/"
                },
                "version": "v2.0",
                "name": "MER Source",
                "title": "DATIM Monitoring, Evaluation & Results Metadata",
                "status": "active",
                "description": "Auto-generated release"
            }
        }
    ]
}
```
``` -->

## Obtener una lista de los conceptmaps
Esta solicitud devuelve las versiones más recientes de todos los conceptmaps.


#### URL de Solicitud

`GET /fhir/ConceptMap/`


#### Parámetros de Solicitud

|  Parameter   |            Description     |
|-----|-------------------------------------|
|     |                     |

#### Example Request

`GET /fhir/ConceptMap/`

#### Example Response

```json
{
    "resourceType": "Bundle",
    "id": "27e8285f-7b96-44a0-8545-3234ad7d14cb",
    "meta": {
        "lastUpdated": "2023-07-04T21:38:33.235+00:00"
    },
    "type": "searchset",
    "total": 10,
    "link": [
        {
            "relation": "self",
            "url": "http://192.168.70.139:8080/fhir/ConceptMap/"
        }
    ],
    "entry": [
        {
            "fullUrl": "http://192.168.70.139:8080/fhir/ConceptMap/snomed_implicit_map_900000000000527005",
            "resource": {
                "resourceType": "ConceptMap",
                "id": "snomed_implicit_map_900000000000527005",
                "text": {
                    "status": "generated",
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">This SNOMED CT Implicit Concept Map from http://snomed.info/sct?fhir_vs to http://snomed.info/sct?fhir_vs is generated using Reference Set 900000000000527005.</div>"
                },
                "url": "http://snomed.info/sct?fhir_cm=900000000000527005",
                "name": "SAME AS",
                "sourceUri": "http://snomed.info/sct?fhir_vs",
                "targetUri": "http://snomed.info/sct?fhir_vs"
            }
        },
        {
            "fullUrl": "http://192.168.70.139:8080/fhir/ConceptMap/snomed_implicit_map_446608001",
            "resource": {
                "resourceType": "ConceptMap",
                "id": "snomed_implicit_map_446608001",
                "text": {
                    "status": "generated",
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">This SNOMED CT Implicit Concept Map from http://snomed.info/sct?fhir_vs to http://hl7.org/fhir/sid/icd-o?fhir_vs is generated using Reference Set 446608001.</div>"
                },
                "url": "http://snomed.info/sct?fhir_cm=446608001",
                "name": "SNOMED CT to ICD-O simple map",
                "sourceUri": "http://snomed.info/sct?fhir_vs",
                "targetUri": "http://hl7.org/fhir/sid/icd-o?fhir_vs"
            }
        },
        {
            "fullUrl": "http://192.168.70.139:8080/fhir/ConceptMap/snomed_implicit_map_447562003",
            "resource": {
                "resourceType": "ConceptMap",
                "id": "snomed_implicit_map_447562003",
                "text": {
                    "status": "generated",
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">This SNOMED CT Implicit Concept Map from http://snomed.info/sct?fhir_vs to http://hl7.org/fhir/sid/icd-10?fhir_vs is generated using Reference Set 447562003.</div>"
                },
                "url": "http://snomed.info/sct?fhir_cm=447562003",
                "name": "SNOMED CT to ICD-10 extended map",
                "sourceUri": "http://snomed.info/sct?fhir_vs",
                "targetUri": "http://hl7.org/fhir/sid/icd-10?fhir_vs"
            }
        },
        {
            "fullUrl": "http://192.168.70.139:8080/fhir/ConceptMap/snomed_implicit_map_784008009",
            "resource": {
                "resourceType": "ConceptMap",
                "id": "snomed_implicit_map_784008009",
                "text": {
                    "status": "generated",
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">This SNOMED CT Implicit Concept Map from http://snomed.info/sct?fhir_vs to http://hl7.org/fhir/sid/orphanet?fhir_vs is generated using Reference Set 784008009.</div>"
                },
                "url": "http://snomed.info/sct?fhir_cm=784008009",
                "name": "SNOMED CT to Orphanet simple map",
                "sourceUri": "http://snomed.info/sct?fhir_vs",
                "targetUri": "http://hl7.org/fhir/sid/orphanet?fhir_vs"
            }
        },
        {
            "fullUrl": "http://192.168.70.139:8080/fhir/ConceptMap/snomed_implicit_map_900000000000530003",
            "resource": {
                "resourceType": "ConceptMap",
                "id": "snomed_implicit_map_900000000000530003",
                "text": {
                    "status": "generated",
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">This SNOMED CT Implicit Concept Map from http://snomed.info/sct?fhir_vs to http://snomed.info/sct?fhir_vs is generated using Reference Set 900000000000530003.</div>"
                },
                "url": "http://snomed.info/sct?fhir_cm=900000000000530003",
                "name": "ALTERNATIVE",
                "sourceUri": "http://snomed.info/sct?fhir_vs",
                "targetUri": "http://snomed.info/sct?fhir_vs"
            }
        },
        {
            "fullUrl": "http://192.168.70.139:8080/fhir/ConceptMap/snomed_implicit_map_900000000000497000",
            "resource": {
                "resourceType": "ConceptMap",
                "id": "snomed_implicit_map_900000000000497000",
                "text": {
                    "status": "generated",
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">This SNOMED CT Implicit Concept Map from CTV-3?fhir_vs to http://snomed.info/sct?fhir_vs is generated using Reference Set 900000000000497000.</div>"
                },
                "url": "http://snomed.info/sct?fhir_cm=900000000000497000",
                "name": "CTV3 to SNOMED CT simple map",
                "sourceUri": "CTV-3?fhir_vs",
                "targetUri": "http://snomed.info/sct?fhir_vs"
            }
        },
        {
            "fullUrl": "http://192.168.70.139:8080/fhir/ConceptMap/snomed_implicit_map_900000000000523009",
            "resource": {
                "resourceType": "ConceptMap",
                "id": "snomed_implicit_map_900000000000523009",
                "text": {
                    "status": "generated",
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">This SNOMED CT Implicit Concept Map from http://snomed.info/sct?fhir_vs to http://snomed.info/sct?fhir_vs is generated using Reference Set 900000000000523009.</div>"
                },
                "url": "http://snomed.info/sct?fhir_cm=900000000000523009",
                "name": "POSSIBLY EQUIVALENT TO",
                "sourceUri": "http://snomed.info/sct?fhir_vs",
                "targetUri": "http://snomed.info/sct?fhir_vs"
            }
        },
        {
            "fullUrl": "http://192.168.70.139:8080/fhir/ConceptMap/snomed_implicit_map_6011000124106",
            "resource": {
                "resourceType": "ConceptMap",
                "id": "snomed_implicit_map_6011000124106",
                "text": {
                    "status": "generated",
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">This SNOMED CT Implicit Concept Map from http://snomed.info/sct?fhir_vs to http://hl7.org/fhir/sid/icd-10-cm?fhir_vs is generated using Reference Set 6011000124106.</div>"
                },
                "url": "http://snomed.info/sct?fhir_cm=6011000124106",
                "name": "SNOMED CT to ICD-10-CM complex map",
                "sourceUri": "http://snomed.info/sct?fhir_vs",
                "targetUri": "http://hl7.org/fhir/sid/icd-10-cm?fhir_vs"
            }
        },
        {
            "fullUrl": "http://192.168.70.139:8080/fhir/ConceptMap/snomed_implicit_map_900000000000526001",
            "resource": {
                "resourceType": "ConceptMap",
                "id": "snomed_implicit_map_900000000000526001",
                "text": {
                    "status": "generated",
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">This SNOMED CT Implicit Concept Map from http://snomed.info/sct?fhir_vs to http://snomed.info/sct?fhir_vs is generated using Reference Set 900000000000526001.</div>"
                },
                "url": "http://snomed.info/sct?fhir_cm=900000000000526001",
                "name": "REPLACED BY",
                "sourceUri": "http://snomed.info/sct?fhir_vs",
                "targetUri": "http://snomed.info/sct?fhir_vs"
            }
        },
        {
            "fullUrl": "http://192.168.70.139:8080/fhir/ConceptMap/snomed_implicit_map_816210007",
            "resource": {
                "resourceType": "ConceptMap",
                "id": "snomed_implicit_map_816210007",
                "text": {
                    "status": "generated",
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">This SNOMED CT Implicit Concept Map from http://snomed.info/sct?fhir_vs to http://hl7.org/fhir/sid/meddra?fhir_vs is generated using Reference Set 816210007.</div>"
                },
                "url": "http://snomed.info/sct?fhir_cm=816210007",
                "name": "SNOMED CT to MedDra simple map",
                "sourceUri": "http://snomed.info/sct?fhir_vs",
                "targetUri": "http://hl7.org/fhir/sid/meddra?fhir_vs"
            }
        }
    ]
}
```


## Operaciones FHIR 

Según el perfil mSVCM, las siguientes operaciones FHIR deben ser soportadas para un conceptmap:

1. $translate

### $translate

#### URL de Solicitud

`GET /fhir/ConceptMap/$translate/?url=:url&system=:systam&code=:code`

#### Parámetros de Solicitud (GET)

|  Parameter   |            Description     |
|-----|-------------------------------------|
|system | (M) La URL canónica del conceptmap|
|code | (M) El código del concepto que será traducido|
<!--
|conceptMapVersion| (O) The version of the conceptmap|
|version | (O) La version del codesystem|
-->
|targetSystem | (O) La url canónica del codesystem objetivo |

<!--
#### Request body (POST)

```json
{
    "resourceType":"Parameters",
    "parameter": [
        {
            "name":"url",
            "valueUri":"<conceptmap_url>"
        },
        {
            "name":"system",
            "valueUri":"<codesystem_url>"
        },
        {
            "name":"code",
            "valueCode":"<concept_code>"
        },
        {
            "name":"conceptMapVersion",
            "valueString":"<conceptmap_version>"
        },
        {
            "name":"version",
            "valueString":"<codesystem_version>"
        },
        {
            "name":"targetSystem",
            "valueCode":"<target_codesystem_url>"
        }
    ]
}

```

**NOTA:**

- Si se proporciona coding, los valores codesystem_url, concept_code y codesystem_version se sustituyen por los valores de
  coding.system, coding.code y coding.version , respectivamente.

-->

#### Solicitud de ejemplo


`GET /fhir/ConceptMap/$translate?code=35037009&system=http://snomed.info/sct&targetsystem=http://hl7.org/fhir/sid/icd-10`

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
            "name": "message",
            "valueString": "Please observe the following map advice. Group:1, Priority:1, Rule:TRUE, Advice:'ALWAYS J84.9', Map Category:'null'."
        },
        {
            "name": "match",
            "part": [
                {
                    "name": "equivalence",
                    "valueCode": "unmatched"
                },
                {
                    "name": "concept",
                    "valueCoding": {
                        "system": "http://hl7.org/fhir/sid/icd-10",
                        "code": "J84.9"
                    }
                },
                {
                    "name": "source",
                    "valueString": "http://snomed.info/sct/900000000000207008/version/20230430?fhir_cm=447562003"
                }
            ]
        }
    ]
}
```