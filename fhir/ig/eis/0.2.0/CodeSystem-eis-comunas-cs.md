# Comunas - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Comunas**

## CodeSystem: Comunas 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-comunas-cs | *Version*:0.2.0 |
| Active as of 2023-01-15 | *Computable Name*:ComunasCS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.16.16 | |

 
Código de comunas 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ComunasVS](ValueSet-eis-comunas-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-comunas-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-comunas-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.16"
  }],
  "version" : "0.2.0",
  "name" : "ComunasCS",
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
  "description" : "Código de comunas",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "version" : "20210120",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 346,
  "concept" : [{
    "code" : "1101",
    "display" : "Iquique",
    "definition" : "Iquique"
  },
  {
    "code" : "1107",
    "display" : "Alto Hospicio",
    "definition" : "Alto Hospicio"
  },
  {
    "code" : "1401",
    "display" : "Pozo Almonte",
    "definition" : "Pozo Almonte"
  },
  {
    "code" : "1402",
    "display" : "Camiña",
    "definition" : "Camiña"
  },
  {
    "code" : "1403",
    "display" : "Colchane",
    "definition" : "Colchane"
  },
  {
    "code" : "1404",
    "display" : "Huara",
    "definition" : "Huara"
  },
  {
    "code" : "1405",
    "display" : "Pica",
    "definition" : "Pica"
  },
  {
    "code" : "2101",
    "display" : "Antofagasta",
    "definition" : "Antofagasta"
  },
  {
    "code" : "2102",
    "display" : "Mejillones",
    "definition" : "Mejillones"
  },
  {
    "code" : "2103",
    "display" : "Sierra Gorda",
    "definition" : "Sierra Gorda"
  },
  {
    "code" : "2104",
    "display" : "Taltal",
    "definition" : "Taltal"
  },
  {
    "code" : "2201",
    "display" : "Calama",
    "definition" : "Calama"
  },
  {
    "code" : "2202",
    "display" : "Ollagüe",
    "definition" : "Ollagüe"
  },
  {
    "code" : "2203",
    "display" : "San Pedro de Atacama",
    "definition" : "San Pedro de Atacama"
  },
  {
    "code" : "2301",
    "display" : "Tocopilla",
    "definition" : "Tocopilla"
  },
  {
    "code" : "2302",
    "display" : "María Elena",
    "definition" : "María Elena"
  },
  {
    "code" : "3101",
    "display" : "Copiapó",
    "definition" : "Copiapó"
  },
  {
    "code" : "3102",
    "display" : "Caldera",
    "definition" : "Caldera"
  },
  {
    "code" : "3103",
    "display" : "Tierra Amarilla",
    "definition" : "Tierra Amarilla"
  },
  {
    "code" : "3201",
    "display" : "Chañaral",
    "definition" : "Chañaral"
  },
  {
    "code" : "3202",
    "display" : "Diego de Almagro",
    "definition" : "Diego de Almagro"
  },
  {
    "code" : "3301",
    "display" : "Vallenar",
    "definition" : "Vallenar"
  },
  {
    "code" : "3302",
    "display" : "Alto del Carmen",
    "definition" : "Alto del Carmen"
  },
  {
    "code" : "3303",
    "display" : "Freirina",
    "definition" : "Freirina"
  },
  {
    "code" : "3304",
    "display" : "Huasco",
    "definition" : "Huasco"
  },
  {
    "code" : "4101",
    "display" : "La Serena",
    "definition" : "La Serena"
  },
  {
    "code" : "4102",
    "display" : "Coquimbo",
    "definition" : "Coquimbo"
  },
  {
    "code" : "4103",
    "display" : "Andacollo",
    "definition" : "Andacollo"
  },
  {
    "code" : "4104",
    "display" : "La Higuera",
    "definition" : "La Higuera"
  },
  {
    "code" : "4105",
    "display" : "Paiguano",
    "definition" : "Paiguano"
  },
  {
    "code" : "4106",
    "display" : "Vicuña",
    "definition" : "Vicuña"
  },
  {
    "code" : "4201",
    "display" : "Illapel",
    "definition" : "Illapel"
  },
  {
    "code" : "4202",
    "display" : "Canela",
    "definition" : "Canela"
  },
  {
    "code" : "4203",
    "display" : "Los Vilos",
    "definition" : "Los Vilos"
  },
  {
    "code" : "4204",
    "display" : "Salamanca",
    "definition" : "Salamanca"
  },
  {
    "code" : "4301",
    "display" : "Ovalle",
    "definition" : "Ovalle"
  },
  {
    "code" : "4302",
    "display" : "Combarbalá",
    "definition" : "Combarbalá"
  },
  {
    "code" : "4303",
    "display" : "Monte Patria",
    "definition" : "Monte Patria"
  },
  {
    "code" : "4304",
    "display" : "Punitaqui",
    "definition" : "Punitaqui"
  },
  {
    "code" : "4305",
    "display" : "Río Hurtado",
    "definition" : "Río Hurtado"
  },
  {
    "code" : "5101",
    "display" : "Valparaíso",
    "definition" : "Valparaíso"
  },
  {
    "code" : "5102",
    "display" : "Casablanca",
    "definition" : "Casablanca"
  },
  {
    "code" : "5103",
    "display" : "Concón",
    "definition" : "Concón"
  },
  {
    "code" : "5104",
    "display" : "Juan Fernández",
    "definition" : "Juan Fernández"
  },
  {
    "code" : "5105",
    "display" : "Puchuncaví",
    "definition" : "Puchuncaví"
  },
  {
    "code" : "5107",
    "display" : "Quintero",
    "definition" : "Quintero"
  },
  {
    "code" : "5109",
    "display" : "Viña del Mar",
    "definition" : "Viña del Mar"
  },
  {
    "code" : "5201",
    "display" : "Isla de Pascua",
    "definition" : "Isla de Pascua"
  },
  {
    "code" : "5301",
    "display" : "Los Andes",
    "definition" : "Los Andes"
  },
  {
    "code" : "5302",
    "display" : "Calle Larga",
    "definition" : "Calle Larga"
  },
  {
    "code" : "5303",
    "display" : "Rinconada",
    "definition" : "Rinconada"
  },
  {
    "code" : "5304",
    "display" : "San Esteban",
    "definition" : "San Esteban"
  },
  {
    "code" : "5401",
    "display" : "La Ligua",
    "definition" : "La Ligua"
  },
  {
    "code" : "5402",
    "display" : "Cabildo",
    "definition" : "Cabildo"
  },
  {
    "code" : "5403",
    "display" : "Papudo",
    "definition" : "Papudo"
  },
  {
    "code" : "5404",
    "display" : "Petorca",
    "definition" : "Petorca"
  },
  {
    "code" : "5405",
    "display" : "Zapallar",
    "definition" : "Zapallar"
  },
  {
    "code" : "5501",
    "display" : "Quillota",
    "definition" : "Quillota"
  },
  {
    "code" : "5502",
    "display" : "Calera",
    "definition" : "Calera"
  },
  {
    "code" : "5503",
    "display" : "Hijuelas",
    "definition" : "Hijuelas"
  },
  {
    "code" : "5504",
    "display" : "La Cruz",
    "definition" : "La Cruz"
  },
  {
    "code" : "5506",
    "display" : "Nogales",
    "definition" : "Nogales"
  },
  {
    "code" : "5601",
    "display" : "San Antonio",
    "definition" : "San Antonio"
  },
  {
    "code" : "5602",
    "display" : "Algarrobo",
    "definition" : "Algarrobo"
  },
  {
    "code" : "5603",
    "display" : "Cartagena",
    "definition" : "Cartagena"
  },
  {
    "code" : "5604",
    "display" : "El Quisco",
    "definition" : "El Quisco"
  },
  {
    "code" : "5605",
    "display" : "El Tabo",
    "definition" : "El Tabo"
  },
  {
    "code" : "5606",
    "display" : "Santo Domingo",
    "definition" : "Santo Domingo"
  },
  {
    "code" : "5701",
    "display" : "San Felipe",
    "definition" : "San Felipe"
  },
  {
    "code" : "5702",
    "display" : "Catemu",
    "definition" : "Catemu"
  },
  {
    "code" : "5703",
    "display" : "Llaillay",
    "definition" : "Llaillay"
  },
  {
    "code" : "5704",
    "display" : "Panquehue",
    "definition" : "Panquehue"
  },
  {
    "code" : "5705",
    "display" : "Putaendo",
    "definition" : "Putaendo"
  },
  {
    "code" : "5706",
    "display" : "Santa María",
    "definition" : "Santa María"
  },
  {
    "code" : "5801",
    "display" : "Quilpué",
    "definition" : "Quilpué"
  },
  {
    "code" : "5802",
    "display" : "Limache",
    "definition" : "Limache"
  },
  {
    "code" : "5803",
    "display" : "Olmué",
    "definition" : "Olmué"
  },
  {
    "code" : "5804",
    "display" : "Villa Alemana",
    "definition" : "Villa Alemana"
  },
  {
    "code" : "6101",
    "display" : "Rancagua",
    "definition" : "Rancagua"
  },
  {
    "code" : "6102",
    "display" : "Codegua",
    "definition" : "Codegua"
  },
  {
    "code" : "6103",
    "display" : "Coinco",
    "definition" : "Coinco"
  },
  {
    "code" : "6104",
    "display" : "Coltauco",
    "definition" : "Coltauco"
  },
  {
    "code" : "6105",
    "display" : "Doñihue",
    "definition" : "Doñihue"
  },
  {
    "code" : "6106",
    "display" : "Graneros",
    "definition" : "Graneros"
  },
  {
    "code" : "6107",
    "display" : "Las Cabras",
    "definition" : "Las Cabras"
  },
  {
    "code" : "6108",
    "display" : "Machalí",
    "definition" : "Machalí"
  },
  {
    "code" : "6109",
    "display" : "Malloa",
    "definition" : "Malloa"
  },
  {
    "code" : "6110",
    "display" : "Mostazal",
    "definition" : "Mostazal"
  },
  {
    "code" : "6111",
    "display" : "Olivar",
    "definition" : "Olivar"
  },
  {
    "code" : "6112",
    "display" : "Peumo",
    "definition" : "Peumo"
  },
  {
    "code" : "6113",
    "display" : "Pichidegua",
    "definition" : "Pichidegua"
  },
  {
    "code" : "6114",
    "display" : "Quinta de Tilcoco",
    "definition" : "Quinta de Tilcoco"
  },
  {
    "code" : "6115",
    "display" : "Rengo",
    "definition" : "Rengo"
  },
  {
    "code" : "6116",
    "display" : "Requínoa",
    "definition" : "Requínoa"
  },
  {
    "code" : "6117",
    "display" : "San Vicente",
    "definition" : "San Vicente"
  },
  {
    "code" : "6201",
    "display" : "Pichilemu",
    "definition" : "Pichilemu"
  },
  {
    "code" : "6202",
    "display" : "La Estrella",
    "definition" : "La Estrella"
  },
  {
    "code" : "6203",
    "display" : "Litueche",
    "definition" : "Litueche"
  },
  {
    "code" : "6204",
    "display" : "Marchihue",
    "definition" : "Marchihue"
  },
  {
    "code" : "6205",
    "display" : "Navidad",
    "definition" : "Navidad"
  },
  {
    "code" : "6206",
    "display" : "Paredones",
    "definition" : "Paredones"
  },
  {
    "code" : "6301",
    "display" : "San Fernando",
    "definition" : "San Fernando"
  },
  {
    "code" : "6302",
    "display" : "Chépica",
    "definition" : "Chépica"
  },
  {
    "code" : "6303",
    "display" : "Chimbarongo",
    "definition" : "Chimbarongo"
  },
  {
    "code" : "6304",
    "display" : "Lolol",
    "definition" : "Lolol"
  },
  {
    "code" : "6305",
    "display" : "Nancagua",
    "definition" : "Nancagua"
  },
  {
    "code" : "6306",
    "display" : "Palmilla",
    "definition" : "Palmilla"
  },
  {
    "code" : "6307",
    "display" : "Peralillo",
    "definition" : "Peralillo"
  },
  {
    "code" : "6308",
    "display" : "Placilla",
    "definition" : "Placilla"
  },
  {
    "code" : "6309",
    "display" : "Pumanque",
    "definition" : "Pumanque"
  },
  {
    "code" : "6310",
    "display" : "Santa Cruz",
    "definition" : "Santa Cruz"
  },
  {
    "code" : "7101",
    "display" : "Talca",
    "definition" : "Talca"
  },
  {
    "code" : "7102",
    "display" : "Constitución",
    "definition" : "Constitución"
  },
  {
    "code" : "7103",
    "display" : "Curepto",
    "definition" : "Curepto"
  },
  {
    "code" : "7104",
    "display" : "Empedrado",
    "definition" : "Empedrado"
  },
  {
    "code" : "7105",
    "display" : "Maule",
    "definition" : "Maule"
  },
  {
    "code" : "7106",
    "display" : "Pelarco",
    "definition" : "Pelarco"
  },
  {
    "code" : "7107",
    "display" : "Pencahue",
    "definition" : "Pencahue"
  },
  {
    "code" : "7108",
    "display" : "Río Claro",
    "definition" : "Río Claro"
  },
  {
    "code" : "7109",
    "display" : "San Clemente",
    "definition" : "San Clemente"
  },
  {
    "code" : "7110",
    "display" : "San Rafael",
    "definition" : "San Rafael"
  },
  {
    "code" : "7201",
    "display" : "Cauquenes",
    "definition" : "Cauquenes"
  },
  {
    "code" : "7202",
    "display" : "Chanco",
    "definition" : "Chanco"
  },
  {
    "code" : "7203",
    "display" : "Pelluhue",
    "definition" : "Pelluhue"
  },
  {
    "code" : "7301",
    "display" : "Curicó",
    "definition" : "Curicó"
  },
  {
    "code" : "7302",
    "display" : "Hualañé",
    "definition" : "Hualañé"
  },
  {
    "code" : "7303",
    "display" : "Licantén",
    "definition" : "Licantén"
  },
  {
    "code" : "7304",
    "display" : "Molina",
    "definition" : "Molina"
  },
  {
    "code" : "7305",
    "display" : "Rauco",
    "definition" : "Rauco"
  },
  {
    "code" : "7306",
    "display" : "Romeral",
    "definition" : "Romeral"
  },
  {
    "code" : "7307",
    "display" : "Sagrada Familia",
    "definition" : "Sagrada Familia"
  },
  {
    "code" : "7308",
    "display" : "Teno",
    "definition" : "Teno"
  },
  {
    "code" : "7309",
    "display" : "Vichuquén",
    "definition" : "Vichuquén"
  },
  {
    "code" : "7401",
    "display" : "Linares",
    "definition" : "Linares"
  },
  {
    "code" : "7402",
    "display" : "Colbún",
    "definition" : "Colbún"
  },
  {
    "code" : "7403",
    "display" : "Longaví",
    "definition" : "Longaví"
  },
  {
    "code" : "7404",
    "display" : "Parral",
    "definition" : "Parral"
  },
  {
    "code" : "7405",
    "display" : "Retiro",
    "definition" : "Retiro"
  },
  {
    "code" : "7406",
    "display" : "San Javier",
    "definition" : "San Javier"
  },
  {
    "code" : "7407",
    "display" : "Villa Alegre",
    "definition" : "Villa Alegre"
  },
  {
    "code" : "7408",
    "display" : "Yerbas Buenas",
    "definition" : "Yerbas Buenas"
  },
  {
    "code" : "8101",
    "display" : "Concepción",
    "definition" : "Concepción"
  },
  {
    "code" : "8102",
    "display" : "Coronel",
    "definition" : "Coronel"
  },
  {
    "code" : "8103",
    "display" : "Chiguayante",
    "definition" : "Chiguayante"
  },
  {
    "code" : "8104",
    "display" : "Florida",
    "definition" : "Florida"
  },
  {
    "code" : "8105",
    "display" : "Hualqui",
    "definition" : "Hualqui"
  },
  {
    "code" : "8106",
    "display" : "Lota",
    "definition" : "Lota"
  },
  {
    "code" : "8107",
    "display" : "Penco",
    "definition" : "Penco"
  },
  {
    "code" : "8108",
    "display" : "San Pedro de la Paz",
    "definition" : "San Pedro de la Paz"
  },
  {
    "code" : "8109",
    "display" : "Santa Juana",
    "definition" : "Santa Juana"
  },
  {
    "code" : "8110",
    "display" : "Talcahuano",
    "definition" : "Talcahuano"
  },
  {
    "code" : "8111",
    "display" : "Tomé",
    "definition" : "Tomé"
  },
  {
    "code" : "8112",
    "display" : "Hualpén",
    "definition" : "Hualpén"
  },
  {
    "code" : "8201",
    "display" : "Lebu",
    "definition" : "Lebu"
  },
  {
    "code" : "8202",
    "display" : "Arauco",
    "definition" : "Arauco"
  },
  {
    "code" : "8203",
    "display" : "Cañete",
    "definition" : "Cañete"
  },
  {
    "code" : "8204",
    "display" : "Contulmo",
    "definition" : "Contulmo"
  },
  {
    "code" : "8205",
    "display" : "Curanilahue",
    "definition" : "Curanilahue"
  },
  {
    "code" : "8206",
    "display" : "Los Alamos",
    "definition" : "Los Alamos"
  },
  {
    "code" : "8207",
    "display" : "Tirúa",
    "definition" : "Tirúa"
  },
  {
    "code" : "8301",
    "display" : "Los Angeles",
    "definition" : "Los Angeles"
  },
  {
    "code" : "8302",
    "display" : "Antuco",
    "definition" : "Antuco"
  },
  {
    "code" : "8303",
    "display" : "Cabrero",
    "definition" : "Cabrero"
  },
  {
    "code" : "8304",
    "display" : "Laja",
    "definition" : "Laja"
  },
  {
    "code" : "8305",
    "display" : "Mulchén",
    "definition" : "Mulchén"
  },
  {
    "code" : "8306",
    "display" : "Nacimiento",
    "definition" : "Nacimiento"
  },
  {
    "code" : "8307",
    "display" : "Negrete",
    "definition" : "Negrete"
  },
  {
    "code" : "8308",
    "display" : "Quilaco",
    "definition" : "Quilaco"
  },
  {
    "code" : "8309",
    "display" : "Quilleco",
    "definition" : "Quilleco"
  },
  {
    "code" : "8310",
    "display" : "San Rosendo",
    "definition" : "San Rosendo"
  },
  {
    "code" : "8311",
    "display" : "Santa Bárbara",
    "definition" : "Santa Bárbara"
  },
  {
    "code" : "8312",
    "display" : "Tucapel",
    "definition" : "Tucapel"
  },
  {
    "code" : "8313",
    "display" : "Yumbel",
    "definition" : "Yumbel"
  },
  {
    "code" : "8314",
    "display" : "Alto Biobío",
    "definition" : "Alto Biobío"
  },
  {
    "code" : "9101",
    "display" : "Temuco",
    "definition" : "Temuco"
  },
  {
    "code" : "9102",
    "display" : "Carahue",
    "definition" : "Carahue"
  },
  {
    "code" : "9103",
    "display" : "Cunco",
    "definition" : "Cunco"
  },
  {
    "code" : "9104",
    "display" : "Curarrehue",
    "definition" : "Curarrehue"
  },
  {
    "code" : "9105",
    "display" : "Freire",
    "definition" : "Freire"
  },
  {
    "code" : "9106",
    "display" : "Galvarino",
    "definition" : "Galvarino"
  },
  {
    "code" : "9107",
    "display" : "Gorbea",
    "definition" : "Gorbea"
  },
  {
    "code" : "9108",
    "display" : "Lautaro",
    "definition" : "Lautaro"
  },
  {
    "code" : "9109",
    "display" : "Loncoche",
    "definition" : "Loncoche"
  },
  {
    "code" : "9110",
    "display" : "Melipeuco",
    "definition" : "Melipeuco"
  },
  {
    "code" : "9111",
    "display" : "Nueva Imperial",
    "definition" : "Nueva Imperial"
  },
  {
    "code" : "9112",
    "display" : "Padre Las Casas",
    "definition" : "Padre Las Casas"
  },
  {
    "code" : "9113",
    "display" : "Perquenco",
    "definition" : "Perquenco"
  },
  {
    "code" : "9114",
    "display" : "Pitrufquén",
    "definition" : "Pitrufquén"
  },
  {
    "code" : "9115",
    "display" : "Pucón",
    "definition" : "Pucón"
  },
  {
    "code" : "9116",
    "display" : "Saavedra",
    "definition" : "Saavedra"
  },
  {
    "code" : "9117",
    "display" : "Teodoro Schmidt",
    "definition" : "Teodoro Schmidt"
  },
  {
    "code" : "9118",
    "display" : "Toltén",
    "definition" : "Toltén"
  },
  {
    "code" : "9119",
    "display" : "Vilcún",
    "definition" : "Vilcún"
  },
  {
    "code" : "9120",
    "display" : "Villarrica",
    "definition" : "Villarrica"
  },
  {
    "code" : "9121",
    "display" : "Cholchol",
    "definition" : "Cholchol"
  },
  {
    "code" : "9201",
    "display" : "Angol",
    "definition" : "Angol"
  },
  {
    "code" : "9202",
    "display" : "Collipulli",
    "definition" : "Collipulli"
  },
  {
    "code" : "9203",
    "display" : "Curacautín",
    "definition" : "Curacautín"
  },
  {
    "code" : "9204",
    "display" : "Ercilla",
    "definition" : "Ercilla"
  },
  {
    "code" : "9205",
    "display" : "Lonquimay",
    "definition" : "Lonquimay"
  },
  {
    "code" : "9206",
    "display" : "Los Sauces",
    "definition" : "Los Sauces"
  },
  {
    "code" : "9207",
    "display" : "Lumaco",
    "definition" : "Lumaco"
  },
  {
    "code" : "9208",
    "display" : "Purén",
    "definition" : "Purén"
  },
  {
    "code" : "9209",
    "display" : "Renaico",
    "definition" : "Renaico"
  },
  {
    "code" : "9210",
    "display" : "Traiguén",
    "definition" : "Traiguén"
  },
  {
    "code" : "9211",
    "display" : "Victoria",
    "definition" : "Victoria"
  },
  {
    "code" : "10101",
    "display" : "Puerto Montt",
    "definition" : "Puerto Montt"
  },
  {
    "code" : "10102",
    "display" : "Calbuco",
    "definition" : "Calbuco"
  },
  {
    "code" : "10103",
    "display" : "Cochamó",
    "definition" : "Cochamó"
  },
  {
    "code" : "10104",
    "display" : "Fresia",
    "definition" : "Fresia"
  },
  {
    "code" : "10105",
    "display" : "Frutillar",
    "definition" : "Frutillar"
  },
  {
    "code" : "10106",
    "display" : "Los Muermos",
    "definition" : "Los Muermos"
  },
  {
    "code" : "10107",
    "display" : "Llanquihue",
    "definition" : "Llanquihue"
  },
  {
    "code" : "10108",
    "display" : "Maullín",
    "definition" : "Maullín"
  },
  {
    "code" : "10109",
    "display" : "Puerto Varas",
    "definition" : "Puerto Varas"
  },
  {
    "code" : "10201",
    "display" : "Castro",
    "definition" : "Castro"
  },
  {
    "code" : "10202",
    "display" : "Ancud",
    "definition" : "Ancud"
  },
  {
    "code" : "10203",
    "display" : "Chonchi",
    "definition" : "Chonchi"
  },
  {
    "code" : "10204",
    "display" : "Curaco de Vélez",
    "definition" : "Curaco de Vélez"
  },
  {
    "code" : "10205",
    "display" : "Dalcahue",
    "definition" : "Dalcahue"
  },
  {
    "code" : "10206",
    "display" : "Puqueldón",
    "definition" : "Puqueldón"
  },
  {
    "code" : "10207",
    "display" : "Queilén",
    "definition" : "Queilén"
  },
  {
    "code" : "10208",
    "display" : "Quellón",
    "definition" : "Quellón"
  },
  {
    "code" : "10209",
    "display" : "Quemchi",
    "definition" : "Quemchi"
  },
  {
    "code" : "10210",
    "display" : "Quinchao",
    "definition" : "Quinchao"
  },
  {
    "code" : "10301",
    "display" : "Osorno",
    "definition" : "Osorno"
  },
  {
    "code" : "10302",
    "display" : "Puerto Octay",
    "definition" : "Puerto Octay"
  },
  {
    "code" : "10303",
    "display" : "Purranque",
    "definition" : "Purranque"
  },
  {
    "code" : "10304",
    "display" : "Puyehue",
    "definition" : "Puyehue"
  },
  {
    "code" : "10305",
    "display" : "Río Negro",
    "definition" : "Río Negro"
  },
  {
    "code" : "10306",
    "display" : "San Juan de la Costa",
    "definition" : "San Juan de la Costa"
  },
  {
    "code" : "10307",
    "display" : "San Pablo",
    "definition" : "San Pablo"
  },
  {
    "code" : "10401",
    "display" : "Chaitén",
    "definition" : "Chaitén"
  },
  {
    "code" : "10402",
    "display" : "Futaleufú",
    "definition" : "Futaleufú"
  },
  {
    "code" : "10403",
    "display" : "Hualaihué",
    "definition" : "Hualaihué"
  },
  {
    "code" : "10404",
    "display" : "Palena",
    "definition" : "Palena"
  },
  {
    "code" : "11101",
    "display" : "Coyhaique",
    "definition" : "Coyhaique"
  },
  {
    "code" : "11102",
    "display" : "Lago Verde",
    "definition" : "Lago Verde"
  },
  {
    "code" : "11201",
    "display" : "Aysén",
    "definition" : "Aysén"
  },
  {
    "code" : "11202",
    "display" : "Cisnes",
    "definition" : "Cisnes"
  },
  {
    "code" : "11203",
    "display" : "Guaitecas",
    "definition" : "Guaitecas"
  },
  {
    "code" : "11301",
    "display" : "Cochrane",
    "definition" : "Cochrane"
  },
  {
    "code" : "11302",
    "display" : "O'Higgins",
    "definition" : "O'Higgins"
  },
  {
    "code" : "11303",
    "display" : "Tortel",
    "definition" : "Tortel"
  },
  {
    "code" : "11401",
    "display" : "Chile Chico",
    "definition" : "Chile Chico"
  },
  {
    "code" : "11402",
    "display" : "Río Ibáñez",
    "definition" : "Río Ibáñez"
  },
  {
    "code" : "12101",
    "display" : "Punta Arenas",
    "definition" : "Punta Arenas"
  },
  {
    "code" : "12102",
    "display" : "Laguna Blanca",
    "definition" : "Laguna Blanca"
  },
  {
    "code" : "12103",
    "display" : "Río Verde",
    "definition" : "Río Verde"
  },
  {
    "code" : "12104",
    "display" : "San Gregorio",
    "definition" : "San Gregorio"
  },
  {
    "code" : "12201",
    "display" : "Cabo de Hornos",
    "definition" : "Cabo de Hornos"
  },
  {
    "code" : "12202",
    "display" : "Antártica",
    "definition" : "Antártica"
  },
  {
    "code" : "12301",
    "display" : "Porvenir",
    "definition" : "Porvenir"
  },
  {
    "code" : "12302",
    "display" : "Primavera",
    "definition" : "Primavera"
  },
  {
    "code" : "12303",
    "display" : "Timaukel",
    "definition" : "Timaukel"
  },
  {
    "code" : "12401",
    "display" : "Natales",
    "definition" : "Natales"
  },
  {
    "code" : "12402",
    "display" : "Torres del Paine",
    "definition" : "Torres del Paine"
  },
  {
    "code" : "13101",
    "display" : "Santiago",
    "definition" : "Santiago"
  },
  {
    "code" : "13102",
    "display" : "Cerrillos",
    "definition" : "Cerrillos"
  },
  {
    "code" : "13103",
    "display" : "Cerro Navia",
    "definition" : "Cerro Navia"
  },
  {
    "code" : "13104",
    "display" : "Conchalí",
    "definition" : "Conchalí"
  },
  {
    "code" : "13105",
    "display" : "El Bosque",
    "definition" : "El Bosque"
  },
  {
    "code" : "13106",
    "display" : "Estación Central",
    "definition" : "Estación Central"
  },
  {
    "code" : "13107",
    "display" : "Huechuraba",
    "definition" : "Huechuraba"
  },
  {
    "code" : "13108",
    "display" : "Independencia",
    "definition" : "Independencia"
  },
  {
    "code" : "13109",
    "display" : "La Cisterna",
    "definition" : "La Cisterna"
  },
  {
    "code" : "13110",
    "display" : "La Florida",
    "definition" : "La Florida"
  },
  {
    "code" : "13111",
    "display" : "La Granja",
    "definition" : "La Granja"
  },
  {
    "code" : "13112",
    "display" : "La Pintana",
    "definition" : "La Pintana"
  },
  {
    "code" : "13113",
    "display" : "La Reina",
    "definition" : "La Reina"
  },
  {
    "code" : "13114",
    "display" : "Las Condes",
    "definition" : "Las Condes"
  },
  {
    "code" : "13115",
    "display" : "Lo Barnechea",
    "definition" : "Lo Barnechea"
  },
  {
    "code" : "13116",
    "display" : "Lo Espejo",
    "definition" : "Lo Espejo"
  },
  {
    "code" : "13117",
    "display" : "Lo Prado",
    "definition" : "Lo Prado"
  },
  {
    "code" : "13118",
    "display" : "Macul",
    "definition" : "Macul"
  },
  {
    "code" : "13119",
    "display" : "Maipú",
    "definition" : "Maipú"
  },
  {
    "code" : "13120",
    "display" : "Ñuñoa",
    "definition" : "Ñuñoa"
  },
  {
    "code" : "13121",
    "display" : "Pedro Aguirre Cerda",
    "definition" : "Pedro Aguirre Cerda"
  },
  {
    "code" : "13122",
    "display" : "Peñalolén",
    "definition" : "Peñalolén"
  },
  {
    "code" : "13123",
    "display" : "Providencia",
    "definition" : "Providencia"
  },
  {
    "code" : "13124",
    "display" : "Pudahuel",
    "definition" : "Pudahuel"
  },
  {
    "code" : "13125",
    "display" : "Quilicura",
    "definition" : "Quilicura"
  },
  {
    "code" : "13126",
    "display" : "Quinta Normal",
    "definition" : "Quinta Normal"
  },
  {
    "code" : "13127",
    "display" : "Recoleta",
    "definition" : "Recoleta"
  },
  {
    "code" : "13128",
    "display" : "Renca",
    "definition" : "Renca"
  },
  {
    "code" : "13129",
    "display" : "San Joaquín",
    "definition" : "San Joaquín"
  },
  {
    "code" : "13130",
    "display" : "San Miguel",
    "definition" : "San Miguel"
  },
  {
    "code" : "13131",
    "display" : "San Ramón",
    "definition" : "San Ramón"
  },
  {
    "code" : "13132",
    "display" : "Vitacura",
    "definition" : "Vitacura"
  },
  {
    "code" : "13201",
    "display" : "Puente Alto",
    "definition" : "Puente Alto"
  },
  {
    "code" : "13202",
    "display" : "Pirque",
    "definition" : "Pirque"
  },
  {
    "code" : "13203",
    "display" : "San José de Maipo",
    "definition" : "San José de Maipo"
  },
  {
    "code" : "13301",
    "display" : "Colina",
    "definition" : "Colina"
  },
  {
    "code" : "13302",
    "display" : "Lampa",
    "definition" : "Lampa"
  },
  {
    "code" : "13303",
    "display" : "Tiltil",
    "definition" : "Tiltil"
  },
  {
    "code" : "13401",
    "display" : "San Bernardo",
    "definition" : "San Bernardo"
  },
  {
    "code" : "13402",
    "display" : "Buin",
    "definition" : "Buin"
  },
  {
    "code" : "13403",
    "display" : "Calera de Tango",
    "definition" : "Calera de Tango"
  },
  {
    "code" : "13404",
    "display" : "Paine",
    "definition" : "Paine"
  },
  {
    "code" : "13501",
    "display" : "Melipilla",
    "definition" : "Melipilla"
  },
  {
    "code" : "13502",
    "display" : "Alhué",
    "definition" : "Alhué"
  },
  {
    "code" : "13503",
    "display" : "Curacaví",
    "definition" : "Curacaví"
  },
  {
    "code" : "13504",
    "display" : "María Pinto",
    "definition" : "María Pinto"
  },
  {
    "code" : "13505",
    "display" : "San Pedro",
    "definition" : "San Pedro"
  },
  {
    "code" : "13601",
    "display" : "Talagante",
    "definition" : "Talagante"
  },
  {
    "code" : "13602",
    "display" : "El Monte",
    "definition" : "El Monte"
  },
  {
    "code" : "13603",
    "display" : "Isla de Maipo",
    "definition" : "Isla de Maipo"
  },
  {
    "code" : "13604",
    "display" : "Padre Hurtado",
    "definition" : "Padre Hurtado"
  },
  {
    "code" : "13605",
    "display" : "Peñaflor",
    "definition" : "Peñaflor"
  },
  {
    "code" : "14101",
    "display" : "Valdivia",
    "definition" : "Valdivia"
  },
  {
    "code" : "14102",
    "display" : "Corral",
    "definition" : "Corral"
  },
  {
    "code" : "14103",
    "display" : "Lanco",
    "definition" : "Lanco"
  },
  {
    "code" : "14104",
    "display" : "Los Lagos",
    "definition" : "Los Lagos"
  },
  {
    "code" : "14105",
    "display" : "Máfil",
    "definition" : "Máfil"
  },
  {
    "code" : "14106",
    "display" : "Mariquina",
    "definition" : "Mariquina"
  },
  {
    "code" : "14107",
    "display" : "Paillaco",
    "definition" : "Paillaco"
  },
  {
    "code" : "14108",
    "display" : "Panguipulli",
    "definition" : "Panguipulli"
  },
  {
    "code" : "14201",
    "display" : "La Unión",
    "definition" : "La Unión"
  },
  {
    "code" : "14202",
    "display" : "Futrono",
    "definition" : "Futrono"
  },
  {
    "code" : "14203",
    "display" : "Lago Ranco",
    "definition" : "Lago Ranco"
  },
  {
    "code" : "14204",
    "display" : "Río Bueno",
    "definition" : "Río Bueno"
  },
  {
    "code" : "15101",
    "display" : "Arica",
    "definition" : "Arica"
  },
  {
    "code" : "15102",
    "display" : "Camarones",
    "definition" : "Camarones"
  },
  {
    "code" : "15201",
    "display" : "Putre",
    "definition" : "Putre"
  },
  {
    "code" : "15202",
    "display" : "General Lagos",
    "definition" : "General Lagos"
  },
  {
    "code" : "16101",
    "display" : "Chillán",
    "definition" : "Chillán"
  },
  {
    "code" : "16102",
    "display" : "Bulnes",
    "definition" : "Bulnes"
  },
  {
    "code" : "16103",
    "display" : "Chillán Viejo",
    "definition" : "Chillán Viejo"
  },
  {
    "code" : "16104",
    "display" : "El Carmen",
    "definition" : "El Carmen"
  },
  {
    "code" : "16105",
    "display" : "Pemuco",
    "definition" : "Pemuco"
  },
  {
    "code" : "16106",
    "display" : "Pinto",
    "definition" : "Pinto"
  },
  {
    "code" : "16107",
    "display" : "Quillón",
    "definition" : "Quillón"
  },
  {
    "code" : "16108",
    "display" : "San Ignacio",
    "definition" : "San Ignacio"
  },
  {
    "code" : "16109",
    "display" : "Yungay",
    "definition" : "Yungay"
  },
  {
    "code" : "16201",
    "display" : "Quirihue",
    "definition" : "Quirihue"
  },
  {
    "code" : "16202",
    "display" : "Cobquecura",
    "definition" : "Cobquecura"
  },
  {
    "code" : "16203",
    "display" : "Coelemu",
    "definition" : "Coelemu"
  },
  {
    "code" : "16204",
    "display" : "Ninhue",
    "definition" : "Ninhue"
  },
  {
    "code" : "16205",
    "display" : "Portezuelo",
    "definition" : "Portezuelo"
  },
  {
    "code" : "16206",
    "display" : "Ranquil",
    "definition" : "Ranquil"
  },
  {
    "code" : "16207",
    "display" : "Treguaco",
    "definition" : "Treguaco"
  },
  {
    "code" : "16301",
    "display" : "San Carlos",
    "definition" : "San Carlos"
  },
  {
    "code" : "16302",
    "display" : "Coihueco",
    "definition" : "Coihueco"
  },
  {
    "code" : "16303",
    "display" : "Ñiquén",
    "definition" : "Ñiquén"
  },
  {
    "code" : "16304",
    "display" : "San Fabián",
    "definition" : "San Fabián"
  },
  {
    "code" : "16305",
    "display" : "San Nicolás",
    "definition" : "San Nicolás"
  }]
}

```
