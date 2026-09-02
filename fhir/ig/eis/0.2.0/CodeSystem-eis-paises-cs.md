# Códigos de Países - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Códigos de Países**

## CodeSystem: Códigos de Países 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-paises-cs | *Version*:0.2.0 |
| Active as of 2026-03-01 | *Computable Name*:PaisesCS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.16.29 | |

 
Códigos de Países 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NacionalidadVS](ValueSet-eis-nacionalidad-vs.md)
* [PaisEmisionVS](ValueSet-eis-pais-emision-vs.md)
* [PaisNacimientoVS](ValueSet-eis-pais-nacimiento-vs.md)
* [PaisesVS](ValueSet-eis-paises-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-paises-cs",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-paises-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.29"
  }],
  "version" : "0.2.0",
  "name" : "PaisesCS",
  "title" : "Códigos de Países",
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
  "description" : "Códigos de Países",
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
  "count" : 249,
  "concept" : [{
    "code" : "4",
    "display" : "Afganistán",
    "definition" : "Afganistán"
  },
  {
    "code" : "8",
    "display" : "Albania",
    "definition" : "Albania"
  },
  {
    "code" : "10",
    "display" : "Antártida",
    "definition" : "Antártida"
  },
  {
    "code" : "12",
    "display" : "Argelia",
    "definition" : "Argelia"
  },
  {
    "code" : "16",
    "display" : "Samoa Americana",
    "definition" : "Samoa Americana"
  },
  {
    "code" : "20",
    "display" : "Andorra",
    "definition" : "Andorra"
  },
  {
    "code" : "24",
    "display" : "Angola",
    "definition" : "Angola"
  },
  {
    "code" : "28",
    "display" : "Antigua y Barbuda",
    "definition" : "Antigua y Barbuda"
  },
  {
    "code" : "31",
    "display" : "Azerbaiyán",
    "definition" : "Azerbaiyán"
  },
  {
    "code" : "32",
    "display" : "Argentina",
    "definition" : "Argentina"
  },
  {
    "code" : "36",
    "display" : "Australia",
    "definition" : "Australia"
  },
  {
    "code" : "40",
    "display" : "Austria",
    "definition" : "Austria"
  },
  {
    "code" : "44",
    "display" : "Bahamas",
    "definition" : "Bahamas"
  },
  {
    "code" : "48",
    "display" : "Baréin",
    "definition" : "Baréin"
  },
  {
    "code" : "50",
    "display" : "Bangladés",
    "definition" : "Bangladés"
  },
  {
    "code" : "51",
    "display" : "Armenia",
    "definition" : "Armenia"
  },
  {
    "code" : "52",
    "display" : "Barbados",
    "definition" : "Barbados"
  },
  {
    "code" : "56",
    "display" : "Bélgica",
    "definition" : "Bélgica"
  },
  {
    "code" : "60",
    "display" : "Bermudas",
    "definition" : "Bermudas"
  },
  {
    "code" : "64",
    "display" : "Bután",
    "definition" : "Bután"
  },
  {
    "code" : "68",
    "display" : "Bolivia",
    "definition" : "Bolivia"
  },
  {
    "code" : "70",
    "display" : "Bosnia y Herzegovina",
    "definition" : "Bosnia y Herzegovina"
  },
  {
    "code" : "72",
    "display" : "Botsuana",
    "definition" : "Botsuana"
  },
  {
    "code" : "74",
    "display" : "Isla Bouvet",
    "definition" : "Isla Bouvet"
  },
  {
    "code" : "76",
    "display" : "Brasil",
    "definition" : "Brasil"
  },
  {
    "code" : "84",
    "display" : "Belice",
    "definition" : "Belice"
  },
  {
    "code" : "86",
    "display" : "Territorio Británico del Océano Índico",
    "definition" : "Territorio Británico del Océano Índico"
  },
  {
    "code" : "90",
    "display" : "Islas Salomón",
    "definition" : "Islas Salomón"
  },
  {
    "code" : "92",
    "display" : "Islas Vírgenes Británicas",
    "definition" : "Islas Vírgenes Británicas"
  },
  {
    "code" : "96",
    "display" : "Brunéi Darussalam",
    "definition" : "Brunéi Darussalam"
  },
  {
    "code" : "100",
    "display" : "Bulgaria",
    "definition" : "Bulgaria"
  },
  {
    "code" : "104",
    "display" : "Myanmar",
    "definition" : "Myanmar"
  },
  {
    "code" : "108",
    "display" : "Burundi",
    "definition" : "Burundi"
  },
  {
    "code" : "112",
    "display" : "Bielorrusia",
    "definition" : "Bielorrusia"
  },
  {
    "code" : "116",
    "display" : "Camboya",
    "definition" : "Camboya"
  },
  {
    "code" : "120",
    "display" : "Camerún",
    "definition" : "Camerún"
  },
  {
    "code" : "124",
    "display" : "Canadá",
    "definition" : "Canadá"
  },
  {
    "code" : "132",
    "display" : "Cabo Verde",
    "definition" : "Cabo Verde"
  },
  {
    "code" : "136",
    "display" : "Islas Caimán",
    "definition" : "Islas Caimán"
  },
  {
    "code" : "140",
    "display" : "República Centroafricana",
    "definition" : "República Centroafricana"
  },
  {
    "code" : "144",
    "display" : "Sri Lanka",
    "definition" : "Sri Lanka"
  },
  {
    "code" : "148",
    "display" : "Chad",
    "definition" : "Chad"
  },
  {
    "code" : "152",
    "display" : "Chile",
    "definition" : "Chile"
  },
  {
    "code" : "156",
    "display" : "China",
    "definition" : "China"
  },
  {
    "code" : "158",
    "display" : "Taiwán",
    "definition" : "Taiwán"
  },
  {
    "code" : "162",
    "display" : "Isla de Navidad",
    "definition" : "Isla de Navidad"
  },
  {
    "code" : "166",
    "display" : "Islas Cocos",
    "definition" : "Islas Cocos"
  },
  {
    "code" : "170",
    "display" : "Colombia",
    "definition" : "Colombia"
  },
  {
    "code" : "174",
    "display" : "Comoras",
    "definition" : "Comoras"
  },
  {
    "code" : "175",
    "display" : "Mayotte",
    "definition" : "Mayotte"
  },
  {
    "code" : "178",
    "display" : "Congo",
    "definition" : "Congo"
  },
  {
    "code" : "180",
    "display" : "Congo (República Democrática)",
    "definition" : "Congo (República Democrática)"
  },
  {
    "code" : "184",
    "display" : "Islas Cook",
    "definition" : "Islas Cook"
  },
  {
    "code" : "188",
    "display" : "Costa Rica",
    "definition" : "Costa Rica"
  },
  {
    "code" : "191",
    "display" : "Croacia",
    "definition" : "Croacia"
  },
  {
    "code" : "192",
    "display" : "Cuba",
    "definition" : "Cuba"
  },
  {
    "code" : "196",
    "display" : "Chipre",
    "definition" : "Chipre"
  },
  {
    "code" : "203",
    "display" : "Chequia",
    "definition" : "Chequia"
  },
  {
    "code" : "204",
    "display" : "Benín",
    "definition" : "Benín"
  },
  {
    "code" : "208",
    "display" : "Dinamarca",
    "definition" : "Dinamarca"
  },
  {
    "code" : "212",
    "display" : "Dominica",
    "definition" : "Dominica"
  },
  {
    "code" : "214",
    "display" : "República Dominicana",
    "definition" : "República Dominicana"
  },
  {
    "code" : "218",
    "display" : "Ecuador",
    "definition" : "Ecuador"
  },
  {
    "code" : "222",
    "display" : "El Salvador",
    "definition" : "El Salvador"
  },
  {
    "code" : "226",
    "display" : "Guinea Ecuatorial",
    "definition" : "Guinea Ecuatorial"
  },
  {
    "code" : "231",
    "display" : "Etiopía",
    "definition" : "Etiopía"
  },
  {
    "code" : "232",
    "display" : "Eritrea",
    "definition" : "Eritrea"
  },
  {
    "code" : "233",
    "display" : "Estonia",
    "definition" : "Estonia"
  },
  {
    "code" : "234",
    "display" : "Islas Feroe",
    "definition" : "Islas Feroe"
  },
  {
    "code" : "238",
    "display" : "Islas Malvinas",
    "definition" : "Islas Malvinas"
  },
  {
    "code" : "239",
    "display" : "Islas Georgias del Sur y Sandwich del Sur",
    "definition" : "Islas Georgias del Sur y Sandwich del Sur"
  },
  {
    "code" : "242",
    "display" : "Fiyi",
    "definition" : "Fiyi"
  },
  {
    "code" : "246",
    "display" : "Finlandia",
    "definition" : "Finlandia"
  },
  {
    "code" : "248",
    "display" : "Islas Åland",
    "definition" : "Islas Åland"
  },
  {
    "code" : "250",
    "display" : "Francia",
    "definition" : "Francia"
  },
  {
    "code" : "254",
    "display" : "Guayana Francesa",
    "definition" : "Guayana Francesa"
  },
  {
    "code" : "258",
    "display" : "Polinesia Francesa",
    "definition" : "Polinesia Francesa"
  },
  {
    "code" : "260",
    "display" : "Territorios Australes Franceses",
    "definition" : "Territorios Australes Franceses"
  },
  {
    "code" : "262",
    "display" : "Yibuti",
    "definition" : "Yibuti"
  },
  {
    "code" : "266",
    "display" : "Gabón",
    "definition" : "Gabón"
  },
  {
    "code" : "268",
    "display" : "Georgia",
    "definition" : "Georgia"
  },
  {
    "code" : "270",
    "display" : "Gambia",
    "definition" : "Gambia"
  },
  {
    "code" : "275",
    "display" : "Palestina",
    "definition" : "Palestina"
  },
  {
    "code" : "276",
    "display" : "Alemania",
    "definition" : "Alemania"
  },
  {
    "code" : "288",
    "display" : "Ghana",
    "definition" : "Ghana"
  },
  {
    "code" : "292",
    "display" : "Gibraltar",
    "definition" : "Gibraltar"
  },
  {
    "code" : "296",
    "display" : "Kiribati",
    "definition" : "Kiribati"
  },
  {
    "code" : "300",
    "display" : "Grecia",
    "definition" : "Grecia"
  },
  {
    "code" : "304",
    "display" : "Groenlandia",
    "definition" : "Groenlandia"
  },
  {
    "code" : "308",
    "display" : "Granada",
    "definition" : "Granada"
  },
  {
    "code" : "312",
    "display" : "Guadalupe",
    "definition" : "Guadalupe"
  },
  {
    "code" : "316",
    "display" : "Guam",
    "definition" : "Guam"
  },
  {
    "code" : "320",
    "display" : "Guatemala",
    "definition" : "Guatemala"
  },
  {
    "code" : "324",
    "display" : "Guinea",
    "definition" : "Guinea"
  },
  {
    "code" : "328",
    "display" : "Guyana",
    "definition" : "Guyana"
  },
  {
    "code" : "332",
    "display" : "Haití",
    "definition" : "Haití"
  },
  {
    "code" : "334",
    "display" : "Islas Heard y McDonald",
    "definition" : "Islas Heard y McDonald"
  },
  {
    "code" : "336",
    "display" : "Santa Sede",
    "definition" : "Santa Sede"
  },
  {
    "code" : "340",
    "display" : "Honduras",
    "definition" : "Honduras"
  },
  {
    "code" : "344",
    "display" : "Hong Kong",
    "definition" : "Hong Kong"
  },
  {
    "code" : "348",
    "display" : "Hungría",
    "definition" : "Hungría"
  },
  {
    "code" : "352",
    "display" : "Islandia",
    "definition" : "Islandia"
  },
  {
    "code" : "356",
    "display" : "India",
    "definition" : "India"
  },
  {
    "code" : "360",
    "display" : "Indonesia",
    "definition" : "Indonesia"
  },
  {
    "code" : "364",
    "display" : "Irán",
    "definition" : "Irán"
  },
  {
    "code" : "368",
    "display" : "Irak",
    "definition" : "Irak"
  },
  {
    "code" : "372",
    "display" : "Irlanda",
    "definition" : "Irlanda"
  },
  {
    "code" : "376",
    "display" : "Israel",
    "definition" : "Israel"
  },
  {
    "code" : "380",
    "display" : "Italia",
    "definition" : "Italia"
  },
  {
    "code" : "384",
    "display" : "Costa de Marfil",
    "definition" : "Costa de Marfil"
  },
  {
    "code" : "388",
    "display" : "Jamaica",
    "definition" : "Jamaica"
  },
  {
    "code" : "392",
    "display" : "Japón",
    "definition" : "Japón"
  },
  {
    "code" : "398",
    "display" : "Kazajistán",
    "definition" : "Kazajistán"
  },
  {
    "code" : "400",
    "display" : "Jordania",
    "definition" : "Jordania"
  },
  {
    "code" : "404",
    "display" : "Kenia",
    "definition" : "Kenia"
  },
  {
    "code" : "408",
    "display" : "Corea (República Democrática)",
    "definition" : "Corea (República Democrática)"
  },
  {
    "code" : "410",
    "display" : "Corea",
    "definition" : "Corea"
  },
  {
    "code" : "414",
    "display" : "Kuwait",
    "definition" : "Kuwait"
  },
  {
    "code" : "417",
    "display" : "Kirguistán",
    "definition" : "Kirguistán"
  },
  {
    "code" : "418",
    "display" : "Laos",
    "definition" : "Laos"
  },
  {
    "code" : "422",
    "display" : "Líbano",
    "definition" : "Líbano"
  },
  {
    "code" : "426",
    "display" : "Lesoto",
    "definition" : "Lesoto"
  },
  {
    "code" : "428",
    "display" : "Letonia",
    "definition" : "Letonia"
  },
  {
    "code" : "430",
    "display" : "Liberia",
    "definition" : "Liberia"
  },
  {
    "code" : "434",
    "display" : "Libia",
    "definition" : "Libia"
  },
  {
    "code" : "438",
    "display" : "Liechtenstein",
    "definition" : "Liechtenstein"
  },
  {
    "code" : "440",
    "display" : "Lituania",
    "definition" : "Lituania"
  },
  {
    "code" : "442",
    "display" : "Luxemburgo",
    "definition" : "Luxemburgo"
  },
  {
    "code" : "446",
    "display" : "Macao",
    "definition" : "Macao"
  },
  {
    "code" : "450",
    "display" : "Madagascar",
    "definition" : "Madagascar"
  },
  {
    "code" : "454",
    "display" : "Malaui",
    "definition" : "Malaui"
  },
  {
    "code" : "458",
    "display" : "Malasia",
    "definition" : "Malasia"
  },
  {
    "code" : "462",
    "display" : "Maldivas",
    "definition" : "Maldivas"
  },
  {
    "code" : "466",
    "display" : "Malí",
    "definition" : "Malí"
  },
  {
    "code" : "470",
    "display" : "Malta",
    "definition" : "Malta"
  },
  {
    "code" : "474",
    "display" : "Martinica",
    "definition" : "Martinica"
  },
  {
    "code" : "478",
    "display" : "Mauritania",
    "definition" : "Mauritania"
  },
  {
    "code" : "480",
    "display" : "Mauricio",
    "definition" : "Mauricio"
  },
  {
    "code" : "484",
    "display" : "México",
    "definition" : "México"
  },
  {
    "code" : "492",
    "display" : "Mónaco",
    "definition" : "Mónaco"
  },
  {
    "code" : "496",
    "display" : "Mongolia",
    "definition" : "Mongolia"
  },
  {
    "code" : "498",
    "display" : "Moldavia",
    "definition" : "Moldavia"
  },
  {
    "code" : "499",
    "display" : "Montenegro",
    "definition" : "Montenegro"
  },
  {
    "code" : "500",
    "display" : "Montserrat",
    "definition" : "Montserrat"
  },
  {
    "code" : "504",
    "display" : "Marruecos",
    "definition" : "Marruecos"
  },
  {
    "code" : "508",
    "display" : "Mozambique",
    "definition" : "Mozambique"
  },
  {
    "code" : "512",
    "display" : "Omán",
    "definition" : "Omán"
  },
  {
    "code" : "516",
    "display" : "Namibia",
    "definition" : "Namibia"
  },
  {
    "code" : "520",
    "display" : "Nauru",
    "definition" : "Nauru"
  },
  {
    "code" : "524",
    "display" : "Nepal",
    "definition" : "Nepal"
  },
  {
    "code" : "528",
    "display" : "Países Bajos",
    "definition" : "Países Bajos"
  },
  {
    "code" : "532",
    "display" : "Curazao",
    "definition" : "Curazao"
  },
  {
    "code" : "533",
    "display" : "Aruba",
    "definition" : "Aruba"
  },
  {
    "code" : "534",
    "display" : "San Martín (Territorio Neerlandés)",
    "definition" : "San Martín (Territorio Neerlandés)"
  },
  {
    "code" : "535",
    "display" : "Bonaire, San Eustaquio y Saba",
    "definition" : "Bonaire, San Eustaquio y Saba"
  },
  {
    "code" : "540",
    "display" : "Nueva Caledonia",
    "definition" : "Nueva Caledonia"
  },
  {
    "code" : "548",
    "display" : "Vanuatu",
    "definition" : "Vanuatu"
  },
  {
    "code" : "554",
    "display" : "Nueva Zelanda",
    "definition" : "Nueva Zelanda"
  },
  {
    "code" : "558",
    "display" : "Nicaragua",
    "definition" : "Nicaragua"
  },
  {
    "code" : "562",
    "display" : "Níger",
    "definition" : "Níger"
  },
  {
    "code" : "566",
    "display" : "Nigeria",
    "definition" : "Nigeria"
  },
  {
    "code" : "570",
    "display" : "Niue",
    "definition" : "Niue"
  },
  {
    "code" : "574",
    "display" : "Isla Norfolk",
    "definition" : "Isla Norfolk"
  },
  {
    "code" : "578",
    "display" : "Noruega",
    "definition" : "Noruega"
  },
  {
    "code" : "580",
    "display" : "Islas Marianas del Norte",
    "definition" : "Islas Marianas del Norte"
  },
  {
    "code" : "581",
    "display" : "Islas Ultramarinas Menores de Estados Unidos",
    "definition" : "Islas Ultramarinas Menores de Estados Unidos"
  },
  {
    "code" : "583",
    "display" : "Micronesia",
    "definition" : "Micronesia"
  },
  {
    "code" : "584",
    "display" : "Islas Marshall",
    "definition" : "Islas Marshall"
  },
  {
    "code" : "585",
    "display" : "Palaos",
    "definition" : "Palaos"
  },
  {
    "code" : "586",
    "display" : "Pakistán",
    "definition" : "Pakistán"
  },
  {
    "code" : "591",
    "display" : "Panamá",
    "definition" : "Panamá"
  },
  {
    "code" : "598",
    "display" : "Papúa Nueva Guinea",
    "definition" : "Papúa Nueva Guinea"
  },
  {
    "code" : "600",
    "display" : "Paraguay",
    "definition" : "Paraguay"
  },
  {
    "code" : "604",
    "display" : "Perú",
    "definition" : "Perú"
  },
  {
    "code" : "608",
    "display" : "Filipinas",
    "definition" : "Filipinas"
  },
  {
    "code" : "612",
    "display" : "Islas Pitcairn",
    "definition" : "Islas Pitcairn"
  },
  {
    "code" : "616",
    "display" : "Polonia",
    "definition" : "Polonia"
  },
  {
    "code" : "620",
    "display" : "Portugal",
    "definition" : "Portugal"
  },
  {
    "code" : "624",
    "display" : "Guinea-Bisáu",
    "definition" : "Guinea-Bisáu"
  },
  {
    "code" : "626",
    "display" : "Timor-Leste",
    "definition" : "Timor-Leste"
  },
  {
    "code" : "630",
    "display" : "Puerto Rico",
    "definition" : "Puerto Rico"
  },
  {
    "code" : "634",
    "display" : "Catar",
    "definition" : "Catar"
  },
  {
    "code" : "638",
    "display" : "Reunión",
    "definition" : "Reunión"
  },
  {
    "code" : "642",
    "display" : "Rumania",
    "definition" : "Rumania"
  },
  {
    "code" : "643",
    "display" : "Federación Rusa",
    "definition" : "Federación Rusa"
  },
  {
    "code" : "646",
    "display" : "Ruanda",
    "definition" : "Ruanda"
  },
  {
    "code" : "652",
    "display" : "San Bartolomé",
    "definition" : "San Bartolomé"
  },
  {
    "code" : "654",
    "display" : "Santa Elena, Ascensión y Tristán de Acuña",
    "definition" : "Santa Elena, Ascensión y Tristán de Acuña"
  },
  {
    "code" : "659",
    "display" : "San Cristóbal y Nieves",
    "definition" : "San Cristóbal y Nieves"
  },
  {
    "code" : "660",
    "display" : "Anguila",
    "definition" : "Anguila"
  },
  {
    "code" : "662",
    "display" : "Santa Lucía",
    "definition" : "Santa Lucía"
  },
  {
    "code" : "663",
    "display" : "San Martín (Territorio Francés)",
    "definition" : "San Martín (Territorio Francés)"
  },
  {
    "code" : "666",
    "display" : "San Pedro y Miquelón",
    "definition" : "San Pedro y Miquelón"
  },
  {
    "code" : "670",
    "display" : "San Vicente y las Granadinas",
    "definition" : "San Vicente y las Granadinas"
  },
  {
    "code" : "674",
    "display" : "San Marino",
    "definition" : "San Marino"
  },
  {
    "code" : "678",
    "display" : "Santo Tomé y Príncipe",
    "definition" : "Santo Tomé y Príncipe"
  },
  {
    "code" : "682",
    "display" : "Arabia Saudita",
    "definition" : "Arabia Saudita"
  },
  {
    "code" : "686",
    "display" : "Senegal",
    "definition" : "Senegal"
  },
  {
    "code" : "688",
    "display" : "Serbia",
    "definition" : "Serbia"
  },
  {
    "code" : "690",
    "display" : "Seychelles",
    "definition" : "Seychelles"
  },
  {
    "code" : "694",
    "display" : "Sierra Leona",
    "definition" : "Sierra Leona"
  },
  {
    "code" : "702",
    "display" : "Singapur",
    "definition" : "Singapur"
  },
  {
    "code" : "703",
    "display" : "Eslovaquia",
    "definition" : "Eslovaquia"
  },
  {
    "code" : "704",
    "display" : "Vietnam",
    "definition" : "Vietnam"
  },
  {
    "code" : "705",
    "display" : "Eslovenia",
    "definition" : "Eslovenia"
  },
  {
    "code" : "706",
    "display" : "Somalia",
    "definition" : "Somalia"
  },
  {
    "code" : "710",
    "display" : "Sudáfrica",
    "definition" : "Sudáfrica"
  },
  {
    "code" : "716",
    "display" : "Zimbabue",
    "definition" : "Zimbabue"
  },
  {
    "code" : "724",
    "display" : "España",
    "definition" : "España"
  },
  {
    "code" : "728",
    "display" : "Sudán del Sur",
    "definition" : "Sudán del Sur"
  },
  {
    "code" : "729",
    "display" : "Sudán",
    "definition" : "Sudán"
  },
  {
    "code" : "732",
    "display" : "Sahara Occidental",
    "definition" : "Sahara Occidental"
  },
  {
    "code" : "740",
    "display" : "Surinam",
    "definition" : "Surinam"
  },
  {
    "code" : "744",
    "display" : "Svalbard y Jan Mayen",
    "definition" : "Svalbard y Jan Mayen"
  },
  {
    "code" : "748",
    "display" : "Eswatini",
    "definition" : "Eswatini"
  },
  {
    "code" : "752",
    "display" : "Suecia",
    "definition" : "Suecia"
  },
  {
    "code" : "756",
    "display" : "Suiza",
    "definition" : "Suiza"
  },
  {
    "code" : "760",
    "display" : "Siria",
    "definition" : "Siria"
  },
  {
    "code" : "762",
    "display" : "Tayikistán",
    "definition" : "Tayikistán"
  },
  {
    "code" : "764",
    "display" : "Tailandia",
    "definition" : "Tailandia"
  },
  {
    "code" : "768",
    "display" : "Togo",
    "definition" : "Togo"
  },
  {
    "code" : "772",
    "display" : "Tokelau",
    "definition" : "Tokelau"
  },
  {
    "code" : "776",
    "display" : "Tonga",
    "definition" : "Tonga"
  },
  {
    "code" : "780",
    "display" : "Trinidad y Tobago",
    "definition" : "Trinidad y Tobago"
  },
  {
    "code" : "784",
    "display" : "Emiratos Árabes Unidos",
    "definition" : "Emiratos Árabes Unidos"
  },
  {
    "code" : "788",
    "display" : "Túnez",
    "definition" : "Túnez"
  },
  {
    "code" : "792",
    "display" : "Turquía",
    "definition" : "Turquía"
  },
  {
    "code" : "795",
    "display" : "Turkmenistán",
    "definition" : "Turkmenistán"
  },
  {
    "code" : "796",
    "display" : "Islas Turcas y Caicos",
    "definition" : "Islas Turcas y Caicos"
  },
  {
    "code" : "798",
    "display" : "Tuvalu",
    "definition" : "Tuvalu"
  },
  {
    "code" : "800",
    "display" : "Uganda",
    "definition" : "Uganda"
  },
  {
    "code" : "804",
    "display" : "Ucrania",
    "definition" : "Ucrania"
  },
  {
    "code" : "807",
    "display" : "Macedonia del Norte",
    "definition" : "Macedonia del Norte"
  },
  {
    "code" : "818",
    "display" : "Egipto",
    "definition" : "Egipto"
  },
  {
    "code" : "826",
    "display" : "Reino Unido de Gran Bretaña e Irlanda del Norte",
    "definition" : "Reino Unido de Gran Bretaña e Irlanda del Norte"
  },
  {
    "code" : "831",
    "display" : "Guernsey",
    "definition" : "Guernsey"
  },
  {
    "code" : "832",
    "display" : "Jersey",
    "definition" : "Jersey"
  },
  {
    "code" : "833",
    "display" : "Isla de Man",
    "definition" : "Isla de Man"
  },
  {
    "code" : "834",
    "display" : "Tanzania",
    "definition" : "Tanzania"
  },
  {
    "code" : "840",
    "display" : "Estados Unidos de América",
    "definition" : "Estados Unidos de América"
  },
  {
    "code" : "850",
    "display" : "Islas Vírgenes de los Estados Unidos",
    "definition" : "Islas Vírgenes de los Estados Unidos"
  },
  {
    "code" : "854",
    "display" : "Burkina Faso",
    "definition" : "Burkina Faso"
  },
  {
    "code" : "858",
    "display" : "Uruguay",
    "definition" : "Uruguay"
  },
  {
    "code" : "860",
    "display" : "Uzbekistán",
    "definition" : "Uzbekistán"
  },
  {
    "code" : "862",
    "display" : "Venezuela",
    "definition" : "Venezuela"
  },
  {
    "code" : "876",
    "display" : "Wallis y Futuna",
    "definition" : "Wallis y Futuna"
  },
  {
    "code" : "882",
    "display" : "Samoa",
    "definition" : "Samoa"
  },
  {
    "code" : "887",
    "display" : "Yemen",
    "definition" : "Yemen"
  },
  {
    "code" : "894",
    "display" : "Zambia",
    "definition" : "Zambia"
  }]
}

```
