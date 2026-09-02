# Codigo DEIS - Guía de Estandares de Información de Salud v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Codigo DEIS**

## CodeSystem: Codigo DEIS 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-establecimientoscodigodeis-CS | *Version*:0.2.0 |
| Active as of 2026-03-01 | *Computable Name*:EstablecimientosCodigoDeisCS |
| *Other Identifiers:*OID:2.16.840.1.113883.2.22.16.23 | |

 
Código único el cual permite reconocer de forma inequívoca a cada prestador institucional. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EstablecimientosCodigoDeisVS](ValueSet-eis-establecimientoscodigodeis-VS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "eis-establecimientoscodigodeis-CS",
  "language" : "es",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem/eis-establecimientoscodigodeis-CS",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113883.2.22.16.23"
  }],
  "version" : "0.2.0",
  "name" : "EstablecimientosCodigoDeisCS",
  "title" : "Codigo DEIS",
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
  "description" : "Código único el cual permite reconocer de forma inequívoca a cada prestador institucional.",
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
  "count" : 1059,
  "concept" : [{
    "code" : "101100",
    "display" : "Hospital Regional Dr. Juan Noé Crevani (Arica)",
    "definition" : "Hospital Regional Dr. Juan Noé Crevani (Arica)"
  },
  {
    "code" : "101213",
    "display" : "Clínica San José",
    "definition" : "Clínica San José"
  },
  {
    "code" : "101215",
    "display" : "Complejo Penitenciario",
    "definition" : "Complejo Penitenciario"
  },
  {
    "code" : "101216",
    "display" : "Servicio Médico Estudiantil U. de Tarapacá",
    "definition" : "Servicio Médico Estudiantil U. de Tarapacá"
  },
  {
    "code" : "101217",
    "display" : "Centro Clínico Militar Arica",
    "definition" : "Centro Clínico Militar Arica"
  },
  {
    "code" : "101219",
    "display" : "Policlínico del Trabajador AChS Arica",
    "definition" : "Policlínico del Trabajador AChS Arica"
  },
  {
    "code" : "101222",
    "display" : "Instituto Teletón Arica",
    "definition" : "Instituto Teletón Arica"
  },
  {
    "code" : "101223",
    "display" : "Centro Médico Monte Sinaí",
    "definition" : "Centro Médico Monte Sinaí"
  },
  {
    "code" : "101225",
    "display" : "Centro Integral de Salud",
    "definition" : "Centro Integral de Salud"
  },
  {
    "code" : "101227",
    "display" : "Policlínico Institucional de Gendarmería de Chile",
    "definition" : "Policlínico Institucional de Gendarmería de Chile"
  },
  {
    "code" : "101228",
    "display" : "Policlínico del Agricultor",
    "definition" : "Policlínico del Agricultor"
  },
  {
    "code" : "101234",
    "display" : "Centro de Salud Mutual CChC Arica",
    "definition" : "Centro de Salud Mutual CChC Arica"
  },
  {
    "code" : "101237",
    "display" : "Clínica Dr. Héctor Sánchez",
    "definition" : "Clínica Dr. Héctor Sánchez"
  },
  {
    "code" : "101239",
    "display" : "Policlínico Médico Dental de Carabineros",
    "definition" : "Policlínico Médico Dental de Carabineros"
  },
  {
    "code" : "101607",
    "display" : "COSAM Norte",
    "definition" : "COSAM Norte"
  },
  {
    "code" : "101608",
    "display" : "COSAM Sur de Arica",
    "definition" : "COSAM Sur de Arica"
  },
  {
    "code" : "102100",
    "display" : "Hospital Dr. Ernesto Torres Galdames (Iquique)",
    "definition" : "Hospital Dr. Ernesto Torres Galdames (Iquique)"
  },
  {
    "code" : "102200",
    "display" : "Clínica Iquique",
    "definition" : "Clínica Iquique"
  },
  {
    "code" : "102201",
    "display" : "Clínica Tarapacá",
    "definition" : "Clínica Tarapacá"
  },
  {
    "code" : "102209",
    "display" : "Centro Clínico Militar Iquique",
    "definition" : "Centro Clínico Militar Iquique"
  },
  {
    "code" : "102213",
    "display" : "Centro Médico y Dental Megasalud Iquique",
    "definition" : "Centro Médico y Dental Megasalud Iquique"
  },
  {
    "code" : "102216",
    "display" : "Centro de Salud Mutual CChC Iquique",
    "definition" : "Centro de Salud Mutual CChC Iquique"
  },
  {
    "code" : "102217",
    "display" : "Policlínico Naval de Iquique",
    "definition" : "Policlínico Naval de Iquique"
  },
  {
    "code" : "102218",
    "display" : "Policlínico FACH de Iquique",
    "definition" : "Policlínico FACH de Iquique"
  },
  {
    "code" : "102219",
    "display" : "Policlínico Carabineros de Iquique",
    "definition" : "Policlínico Carabineros de Iquique"
  },
  {
    "code" : "102220",
    "display" : "Clínica Coposa Cía. Minera Doña Inés de Collahuasi",
    "definition" : "Clínica Coposa Cía. Minera Doña Inés de Collahuasi"
  },
  {
    "code" : "102221",
    "display" : "Clínica Establecimiento Penitenciario Alto Hospicio",
    "definition" : "Clínica Establecimiento Penitenciario Alto Hospicio"
  },
  {
    "code" : "102222",
    "display" : "Centro de Atención Instituto de Seguridad del Trabajador Iquique",
    "definition" : "Centro de Atención Instituto de Seguridad del Trabajador Iquique"
  },
  {
    "code" : "102223",
    "display" : "Policlínico del Trabajador AChS Iquique",
    "definition" : "Policlínico del Trabajador AChS Iquique"
  },
  {
    "code" : "102227",
    "display" : "Centro de Salud Universidad Arturo Prat",
    "definition" : "Centro de Salud Universidad Arturo Prat"
  },
  {
    "code" : "102600",
    "display" : "COSAM Dr. Jorge Seguel Cáceres",
    "definition" : "COSAM Dr. Jorge Seguel Cáceres"
  },
  {
    "code" : "102601",
    "display" : "COSAM Salvador Allende",
    "definition" : "COSAM Salvador Allende"
  },
  {
    "code" : "102602",
    "display" : "COSAM Enrique París",
    "definition" : "COSAM Enrique París"
  },
  {
    "code" : "103100",
    "display" : "Hospital Dr. Leonardo Guzmán (Antofagasta)",
    "definition" : "Hospital Dr. Leonardo Guzmán (Antofagasta)"
  },
  {
    "code" : "103101",
    "display" : "Hospital Dr. Carlos Cisternas (Calama)",
    "definition" : "Hospital Dr. Carlos Cisternas (Calama)"
  },
  {
    "code" : "103102",
    "display" : "Hospital Dr. Marcos Macuada (Tocopilla)",
    "definition" : "Hospital Dr. Marcos Macuada (Tocopilla)"
  },
  {
    "code" : "103103",
    "display" : "Hospital 21 de Mayo (Taltal)",
    "definition" : "Hospital 21 de Mayo (Taltal)"
  },
  {
    "code" : "103104",
    "display" : "Hospital de Mejillones",
    "definition" : "Hospital de Mejillones"
  },
  {
    "code" : "103203",
    "display" : "Clínica Bupa Antofagasta",
    "definition" : "Clínica Bupa Antofagasta"
  },
  {
    "code" : "103210",
    "display" : "Hospital Militar del Norte",
    "definition" : "Hospital Militar del Norte"
  },
  {
    "code" : "103211",
    "display" : "Clínica Mutual de Seguridad CChC de Calama",
    "definition" : "Clínica Mutual de Seguridad CChC de Calama"
  },
  {
    "code" : "103212",
    "display" : "Clínica Baquedano",
    "definition" : "Clínica Baquedano"
  },
  {
    "code" : "103215",
    "display" : "Clínica Oriente",
    "definition" : "Clínica Oriente"
  },
  {
    "code" : "103216",
    "display" : "Clínica Mutual de Seguridad CChC Tocopilla",
    "definition" : "Clínica Mutual de Seguridad CChC Tocopilla"
  },
  {
    "code" : "103218",
    "display" : "Clínica Andes Salud El Loa",
    "definition" : "Clínica Andes Salud El Loa"
  },
  {
    "code" : "103219",
    "display" : "Hospital del Cobre Salvador Allende",
    "definition" : "Hospital del Cobre Salvador Allende"
  },
  {
    "code" : "103220",
    "display" : "Clínica La Portada",
    "definition" : "Clínica La Portada"
  },
  {
    "code" : "103223",
    "display" : "Clínica Oftalmológica (Mas Visión)",
    "definition" : "Clínica Oftalmológica (Mas Visión)"
  },
  {
    "code" : "103224",
    "display" : "Clínica Cumbres del Norte S.A.",
    "definition" : "Clínica Cumbres del Norte S.A."
  },
  {
    "code" : "103226",
    "display" : "Centro Médico y Dental Megasalud Calama",
    "definition" : "Centro Médico y Dental Megasalud Calama"
  },
  {
    "code" : "103235",
    "display" : "Centro Médico y Dental Megasalud Antofagasta",
    "definition" : "Centro Médico y Dental Megasalud Antofagasta"
  },
  {
    "code" : "103241",
    "display" : "Centro de Salud Mutual CChC Antofagasta",
    "definition" : "Centro de Salud Mutual CChC Antofagasta"
  },
  {
    "code" : "103244",
    "display" : "Policlínico del Trabajador AChS Antofagasta",
    "definition" : "Policlínico del Trabajador AChS Antofagasta"
  },
  {
    "code" : "103245",
    "display" : "Centro Médico Norte",
    "definition" : "Centro Médico Norte"
  },
  {
    "code" : "103248",
    "display" : "Policlínico Mantos Blancos",
    "definition" : "Policlínico Mantos Blancos"
  },
  {
    "code" : "103249",
    "display" : "Centro de Salud Victoria Saravia Crespo",
    "definition" : "Centro de Salud Victoria Saravia Crespo"
  },
  {
    "code" : "103250",
    "display" : "Centro de Salud Aidoret Caro",
    "definition" : "Centro de Salud Aidoret Caro"
  },
  {
    "code" : "103251",
    "display" : "Centro de Salud Clinisan",
    "definition" : "Centro de Salud Clinisan"
  },
  {
    "code" : "103252",
    "display" : "Centro de Salud Sanymed",
    "definition" : "Centro de Salud Sanymed"
  },
  {
    "code" : "103255",
    "display" : "Centro Médico y Dental Carabineros Zona Antofagasta",
    "definition" : "Centro Médico y Dental Carabineros Zona Antofagasta"
  },
  {
    "code" : "103256",
    "display" : "Consultorio Prefectura de El Loa",
    "definition" : "Consultorio Prefectura de El Loa"
  },
  {
    "code" : "103257",
    "display" : "Policlínico Instituto de Seguridad del Trabajo de Antofagasta",
    "definition" : "Policlínico Instituto de Seguridad del Trabajo de Antofagasta"
  },
  {
    "code" : "103268",
    "display" : "Doctor Lab. Ltda.",
    "definition" : "Doctor Lab. Ltda."
  },
  {
    "code" : "103601",
    "display" : "COSAM Calama",
    "definition" : "COSAM Calama"
  },
  {
    "code" : "103602",
    "display" : "COSAM Sur",
    "definition" : "COSAM Sur"
  },
  {
    "code" : "103603",
    "display" : "COSAM Central",
    "definition" : "COSAM Central"
  },
  {
    "code" : "104100",
    "display" : "Hospital San José del Carmen (Copiapó)",
    "definition" : "Hospital San José del Carmen (Copiapó)"
  },
  {
    "code" : "104101",
    "display" : "Hospital Dr. Jerónimo Méndez Arancibia (Chañaral)",
    "definition" : "Hospital Dr. Jerónimo Méndez Arancibia (Chañaral)"
  },
  {
    "code" : "104102",
    "display" : "Hospital Dr. Florencio Vargas (Diego de Almagro)",
    "definition" : "Hospital Dr. Florencio Vargas (Diego de Almagro)"
  },
  {
    "code" : "104103",
    "display" : "Hospital Provincial del Huasco Monseñor Fernando Ariztía Ruiz (Vallenar)",
    "definition" : "Hospital Provincial del Huasco Monseñor Fernando Ariztía Ruiz (Vallenar)"
  },
  {
    "code" : "104104",
    "display" : "Hospital Dr. Manuel Magalhaes Medling (Huasco)",
    "definition" : "Hospital Dr. Manuel Magalhaes Medling (Huasco)"
  },
  {
    "code" : "104200",
    "display" : "Clínica San Lorenzo",
    "definition" : "Clínica San Lorenzo"
  },
  {
    "code" : "104202",
    "display" : "Centro de Salud del Trabajador AChS Copiapó",
    "definition" : "Centro de Salud del Trabajador AChS Copiapó"
  },
  {
    "code" : "104203",
    "display" : "Centro de Salud Mutual CChC Copiapó",
    "definition" : "Centro de Salud Mutual CChC Copiapó"
  },
  {
    "code" : "104214",
    "display" : "Clínica del Trabajador AChS Vallenar",
    "definition" : "Clínica del Trabajador AChS Vallenar"
  },
  {
    "code" : "104215",
    "display" : "Centro de Salud Universidad de Atacama",
    "definition" : "Centro de Salud Universidad de Atacama"
  },
  {
    "code" : "104216",
    "display" : "Centro de Salud Compañía Aceros del Pacífico",
    "definition" : "Centro de Salud Compañía Aceros del Pacífico"
  },
  {
    "code" : "104238",
    "display" : "Clínica Indire",
    "definition" : "Clínica Indire"
  },
  {
    "code" : "104239",
    "display" : "Centro de Salud CEDIMED",
    "definition" : "Centro de Salud CEDIMED"
  },
  {
    "code" : "104249",
    "display" : "Clínica RCR de Atacama",
    "definition" : "Clínica RCR de Atacama"
  },
  {
    "code" : "104251",
    "display" : "Centro Médico y Diagnóstico Atacama SpA",
    "definition" : "Centro Médico y Diagnóstico Atacama SpA"
  },
  {
    "code" : "104252",
    "display" : "Clínica Dial Vida",
    "definition" : "Clínica Dial Vida"
  },
  {
    "code" : "105100",
    "display" : "Hospital San Juan de Dios (La Serena)",
    "definition" : "Hospital San Juan de Dios (La Serena)"
  },
  {
    "code" : "105101",
    "display" : "Hospital San Pablo (Coquimbo)",
    "definition" : "Hospital San Pablo (Coquimbo)"
  },
  {
    "code" : "105102",
    "display" : "Hospital Dr. Antonio Tirado Lanas de Ovalle",
    "definition" : "Hospital Dr. Antonio Tirado Lanas de Ovalle"
  },
  {
    "code" : "105103",
    "display" : "Hospital Dr. Humberto Elorza Cortés (Illapel)",
    "definition" : "Hospital Dr. Humberto Elorza Cortés (Illapel)"
  },
  {
    "code" : "105104",
    "display" : "Hospital de Salamanca",
    "definition" : "Hospital de Salamanca"
  },
  {
    "code" : "105105",
    "display" : "Hospital San Juan de Dios (Combarbalá)",
    "definition" : "Hospital San Juan de Dios (Combarbalá)"
  },
  {
    "code" : "105106",
    "display" : "Hospital Dr. José Arraño (Andacollo)",
    "definition" : "Hospital Dr. José Arraño (Andacollo)"
  },
  {
    "code" : "105107",
    "display" : "Hospital San Juan de Dios (Vicuña)",
    "definition" : "Hospital San Juan de Dios (Vicuña)"
  },
  {
    "code" : "105108",
    "display" : "Hospital San Pedro (Los Vilos)",
    "definition" : "Hospital San Pedro (Los Vilos)"
  },
  {
    "code" : "105202",
    "display" : "Centro de Salud Mutual CChC La Serena",
    "definition" : "Centro de Salud Mutual CChC La Serena"
  },
  {
    "code" : "105203",
    "display" : "Policlínico del Trabajador AChS La Serena",
    "definition" : "Policlínico del Trabajador AChS La Serena"
  },
  {
    "code" : "105207",
    "display" : "Clínica del Trabajador de la AChS Ovalle",
    "definition" : "Clínica del Trabajador de la AChS Ovalle"
  },
  {
    "code" : "105208",
    "display" : "Clínica Regional Elqui",
    "definition" : "Clínica Regional Elqui"
  },
  {
    "code" : "105225",
    "display" : "Centro Médico Integramédica La Serena",
    "definition" : "Centro Médico Integramédica La Serena"
  },
  {
    "code" : "105230",
    "display" : "Centro Médico y Dental Megasalud La Serena",
    "definition" : "Centro Médico y Dental Megasalud La Serena"
  },
  {
    "code" : "105232",
    "display" : "Policlínico Cruz Roja de La Serena",
    "definition" : "Policlínico Cruz Roja de La Serena"
  },
  {
    "code" : "105233",
    "display" : "Centro de Salud Estudiantil - Universidad Católica del Norte",
    "definition" : "Centro de Salud Estudiantil - Universidad Católica del Norte"
  },
  {
    "code" : "105234",
    "display" : "Policlínico del Trabajador AChS Illapel",
    "definition" : "Policlínico del Trabajador AChS Illapel"
  },
  {
    "code" : "105235",
    "display" : "Centro Médico EMI",
    "definition" : "Centro Médico EMI"
  },
  {
    "code" : "105239",
    "display" : "Centro de Salud Compañía Minera del Pacífico S.A.",
    "definition" : "Centro de Salud Compañía Minera del Pacífico S.A."
  },
  {
    "code" : "105240",
    "display" : "Centro de Salud Mutual CChC Ovalle",
    "definition" : "Centro de Salud Mutual CChC Ovalle"
  },
  {
    "code" : "105241",
    "display" : "Cruz Roja de Coquimbo",
    "definition" : "Cruz Roja de Coquimbo"
  },
  {
    "code" : "105246",
    "display" : "Centro de especialidades Médicas (CEMCO)",
    "definition" : "Centro de especialidades Médicas (CEMCO)"
  },
  {
    "code" : "105600",
    "display" : "COSAM Tierras Blancas (CESAM)",
    "definition" : "COSAM Tierras Blancas (CESAM)"
  },
  {
    "code" : "106100",
    "display" : "Hospital Carlos Van Buren (Valparaíso)",
    "definition" : "Hospital Carlos Van Buren (Valparaíso)"
  },
  {
    "code" : "106102",
    "display" : "Hospital Dr. Eduardo Pereira Ramírez (Valparaíso)",
    "definition" : "Hospital Dr. Eduardo Pereira Ramírez (Valparaíso)"
  },
  {
    "code" : "106103",
    "display" : "Hospital Claudio Vicuña ( San Antonio)",
    "definition" : "Hospital Claudio Vicuña ( San Antonio)"
  },
  {
    "code" : "106104",
    "display" : "Hospital Del Salvador de Valparaíso",
    "definition" : "Hospital Del Salvador de Valparaíso"
  },
  {
    "code" : "106105",
    "display" : "Hospital San José (Casablanca)",
    "definition" : "Hospital San José (Casablanca)"
  },
  {
    "code" : "106150",
    "display" : "Centro de Sangre y Tejidos IV y V Región",
    "definition" : "Centro de Sangre y Tejidos IV y V Región"
  },
  {
    "code" : "106151",
    "display" : "Centro de Referencia de Salud Odontológica",
    "definition" : "Centro de Referencia de Salud Odontológica"
  },
  {
    "code" : "106204",
    "display" : "Clínica San Julián",
    "definition" : "Clínica San Julián"
  },
  {
    "code" : "106205",
    "display" : "Clínica San Antonio",
    "definition" : "Clínica San Antonio"
  },
  {
    "code" : "106213",
    "display" : "Complejo Penitenciario",
    "definition" : "Complejo Penitenciario"
  },
  {
    "code" : "106214",
    "display" : "Clínica Valparaíso",
    "definition" : "Clínica Valparaíso"
  },
  {
    "code" : "106234",
    "display" : "Centro de Salud Mutual CChC San Antonio",
    "definition" : "Centro de Salud Mutual CChC San Antonio"
  },
  {
    "code" : "106236",
    "display" : "Centro Médico y Dental Valparaíso Capredena",
    "definition" : "Centro Médico y Dental Valparaíso Capredena"
  },
  {
    "code" : "106237",
    "display" : "Clínica de la Agrupación Médica Americana",
    "definition" : "Clínica de la Agrupación Médica Americana"
  },
  {
    "code" : "106238",
    "display" : "Centro de Salud ASOMEL",
    "definition" : "Centro de Salud ASOMEL"
  },
  {
    "code" : "106242",
    "display" : "Policlínico (Dirección de Servicios Estudiantiles Universidad Católica)",
    "definition" : "Policlínico (Dirección de Servicios Estudiantiles Universidad Católica)"
  },
  {
    "code" : "106243",
    "display" : "Instituto Teletón Valparaíso",
    "definition" : "Instituto Teletón Valparaíso"
  },
  {
    "code" : "106244",
    "display" : "Policlínico Instituto de Seguridad del Trabajo de Valparaíso",
    "definition" : "Policlínico Instituto de Seguridad del Trabajo de Valparaíso"
  },
  {
    "code" : "106254",
    "display" : "Centro de Salud Compañía Chilena de Tabacos",
    "definition" : "Centro de Salud Compañía Chilena de Tabacos"
  },
  {
    "code" : "106255",
    "display" : "Centro de Salud ASAD",
    "definition" : "Centro de Salud ASAD"
  },
  {
    "code" : "106256",
    "display" : "Centro de Salud Asociación Triomar",
    "definition" : "Centro de Salud Asociación Triomar"
  },
  {
    "code" : "106257",
    "display" : "Centro de Atención CENCLIVAL",
    "definition" : "Centro de Atención CENCLIVAL"
  },
  {
    "code" : "106258",
    "display" : "Centro de Atención Primaria de Salud Naval (Valparaíso)",
    "definition" : "Centro de Atención Primaria de Salud Naval (Valparaíso)"
  },
  {
    "code" : "106259",
    "display" : "Centro Médico del Niño y Adolescente de Valparaíso",
    "definition" : "Centro Médico del Niño y Adolescente de Valparaíso"
  },
  {
    "code" : "106260",
    "display" : "Consultorio Prefectura de Carabineros San Antonio",
    "definition" : "Consultorio Prefectura de Carabineros San Antonio"
  },
  {
    "code" : "106261",
    "display" : "Policlínico de la Asociación Chilena de Seguridad AChS. Agencia San Antonio",
    "definition" : "Policlínico de la Asociación Chilena de Seguridad AChS. Agencia San Antonio"
  },
  {
    "code" : "106262",
    "display" : "Policlínico de la Asociación Chilena de Seguridad AChS. Agencia Valparaíso",
    "definition" : "Policlínico de la Asociación Chilena de Seguridad AChS. Agencia Valparaíso"
  },
  {
    "code" : "106263",
    "display" : "Centro Médico y Dental Megasalud Valparaíso",
    "definition" : "Centro Médico y Dental Megasalud Valparaíso"
  },
  {
    "code" : "107100",
    "display" : "Hospital Dr. Gustavo Fricke (Viña del Mar)",
    "definition" : "Hospital Dr. Gustavo Fricke (Viña del Mar)"
  },
  {
    "code" : "107101",
    "display" : "Hospital Biprovincial Quillota Petorca",
    "definition" : "Hospital Biprovincial Quillota Petorca"
  },
  {
    "code" : "107102",
    "display" : "Hospital de Quilpué",
    "definition" : "Hospital de Quilpué"
  },
  {
    "code" : "107103",
    "display" : "Hospital Dr. Mario Sánchez Vergara (La Calera)",
    "definition" : "Hospital Dr. Mario Sánchez Vergara (La Calera)"
  },
  {
    "code" : "107104",
    "display" : "Hospital Santo Tomás (Limache)",
    "definition" : "Hospital Santo Tomás (Limache)"
  },
  {
    "code" : "107105",
    "display" : "Hospital San Agustín (La Ligua)",
    "definition" : "Hospital San Agustín (La Ligua)"
  },
  {
    "code" : "107106",
    "display" : "Hospital Dr. Víctor Hugo Moll (Cabildo)",
    "definition" : "Hospital Dr. Víctor Hugo Moll (Cabildo)"
  },
  {
    "code" : "107107",
    "display" : "Hospital de Petorca",
    "definition" : "Hospital de Petorca"
  },
  {
    "code" : "107108",
    "display" : "Hospital Adriana Cousiño (Quintero)",
    "definition" : "Hospital Adriana Cousiño (Quintero)"
  },
  {
    "code" : "107109",
    "display" : "Hospital Juana Ross de Edwards (Peñablanca, Villa Alemana)",
    "definition" : "Hospital Juana Ross de Edwards (Peñablanca, Villa Alemana)"
  },
  {
    "code" : "107110",
    "display" : "Hospital Centro Geriátrico Paz de la Tarde (Limache)",
    "definition" : "Hospital Centro Geriátrico Paz de la Tarde (Limache)"
  },
  {
    "code" : "107200",
    "display" : "Clínica Miraflores",
    "definition" : "Clínica Miraflores"
  },
  {
    "code" : "107206",
    "display" : "Clínica Reñaca",
    "definition" : "Clínica Reñaca"
  },
  {
    "code" : "107208",
    "display" : "Clínica Los Carrera",
    "definition" : "Clínica Los Carrera"
  },
  {
    "code" : "107210",
    "display" : "Sanatorio Marítimo San Juan de Dios",
    "definition" : "Sanatorio Marítimo San Juan de Dios"
  },
  {
    "code" : "107211",
    "display" : "Instituto de Seguridad del Trabajo",
    "definition" : "Instituto de Seguridad del Trabajo"
  },
  {
    "code" : "107217",
    "display" : "Hospital Naval Almirante Neff",
    "definition" : "Hospital Naval Almirante Neff"
  },
  {
    "code" : "107222",
    "display" : "Clínica Los Leones",
    "definition" : "Clínica Los Leones"
  },
  {
    "code" : "107223",
    "display" : "Clínica Ciudad del Mar (ex Avansalud)",
    "definition" : "Clínica Ciudad del Mar (ex Avansalud)"
  },
  {
    "code" : "107224",
    "display" : "Hospital Clínico Viña del Mar",
    "definition" : "Hospital Clínico Viña del Mar"
  },
  {
    "code" : "107255",
    "display" : "Megasalud S.A. Centro Médico y Dental Viña del Mar",
    "definition" : "Megasalud S.A. Centro Médico y Dental Viña del Mar"
  },
  {
    "code" : "107256",
    "display" : "Centro de Salud Mutual CChC Viña del Mar",
    "definition" : "Centro de Salud Mutual CChC Viña del Mar"
  },
  {
    "code" : "107258",
    "display" : "Megasalud S.A. Centro Médico y Dental Quilpué",
    "definition" : "Megasalud S.A. Centro Médico y Dental Quilpué"
  },
  {
    "code" : "107261",
    "display" : "Centro Médico y Dental Carabineros V Zona de Valparaíso",
    "definition" : "Centro Médico y Dental Carabineros V Zona de Valparaíso"
  },
  {
    "code" : "107262",
    "display" : "Centro de Atención Primaria de Salud Naval (Viña del Mar)",
    "definition" : "Centro de Atención Primaria de Salud Naval (Viña del Mar)"
  },
  {
    "code" : "107263",
    "display" : "Centro de Atención Primaria de Salud Naval (Villa Alemana)",
    "definition" : "Centro de Atención Primaria de Salud Naval (Villa Alemana)"
  },
  {
    "code" : "107264",
    "display" : "MAS Salud Limitada",
    "definition" : "MAS Salud Limitada"
  },
  {
    "code" : "107266",
    "display" : "Policlínico de la Asociación Chilena de Seguridad AChS. Agencia Viña del Mar",
    "definition" : "Policlínico de la Asociación Chilena de Seguridad AChS. Agencia Viña del Mar"
  },
  {
    "code" : "107267",
    "display" : "Centro de Rehabilitación Limache Capredena",
    "definition" : "Centro de Rehabilitación Limache Capredena"
  },
  {
    "code" : "107268",
    "display" : "Policlínico de la Asociación Chilena de Seguridad AChS Agencia La Ligua",
    "definition" : "Policlínico de la Asociación Chilena de Seguridad AChS Agencia La Ligua"
  },
  {
    "code" : "107600",
    "display" : "COSAM Concón",
    "definition" : "COSAM Concón"
  },
  {
    "code" : "107601",
    "display" : "COSAM Limache",
    "definition" : "COSAM Limache"
  },
  {
    "code" : "108100",
    "display" : "Hospital San Camilo de San Felipe",
    "definition" : "Hospital San Camilo de San Felipe"
  },
  {
    "code" : "108101",
    "display" : "Hospital San Juan de Dios (Los Andes)",
    "definition" : "Hospital San Juan de Dios (Los Andes)"
  },
  {
    "code" : "108102",
    "display" : "Hospital San Francisco (Llaillay)",
    "definition" : "Hospital San Francisco (Llaillay)"
  },
  {
    "code" : "108104",
    "display" : "Hospital San Antonio (Putaendo)",
    "definition" : "Hospital San Antonio (Putaendo)"
  },
  {
    "code" : "108105",
    "display" : "Hospital Psiquiátrico Dr. Philippe Pinel (Putaendo)",
    "definition" : "Hospital Psiquiátrico Dr. Philippe Pinel (Putaendo)"
  },
  {
    "code" : "108204",
    "display" : "Clínica Río Blanco",
    "definition" : "Clínica Río Blanco"
  },
  {
    "code" : "108205",
    "display" : "ENFAS Limitada",
    "definition" : "ENFAS Limitada"
  },
  {
    "code" : "108206",
    "display" : "Centro Médico y Dental Zona V de Valparaíso",
    "definition" : "Centro Médico y Dental Zona V de Valparaíso"
  },
  {
    "code" : "108207",
    "display" : "Policlínico de la Asociación Chilena de Seguridad AChS Agencia San Felipe",
    "definition" : "Policlínico de la Asociación Chilena de Seguridad AChS Agencia San Felipe"
  },
  {
    "code" : "108208",
    "display" : "Policlínico de la Asociación Chilena de Seguridad AChS Agencia Los Andes",
    "definition" : "Policlínico de la Asociación Chilena de Seguridad AChS Agencia Los Andes"
  },
  {
    "code" : "109100",
    "display" : "Complejo Hospitalario San José (Santiago, Independencia)",
    "definition" : "Complejo Hospitalario San José (Santiago, Independencia)"
  },
  {
    "code" : "109101",
    "display" : "Hospital Clínico de Niños Dr. Roberto del Río (Santiago, Independencia)",
    "definition" : "Hospital Clínico de Niños Dr. Roberto del Río (Santiago, Independencia)"
  },
  {
    "code" : "109102",
    "display" : "Instituto Psiquiátrico Dr. José Horwitz Barak (Santiago, Recoleta)",
    "definition" : "Instituto Psiquiátrico Dr. José Horwitz Barak (Santiago, Recoleta)"
  },
  {
    "code" : "109103",
    "display" : "Instituto Nacional del Cáncer Dr. Caupolicán Pardo Correa (Santiago, Recoleta)",
    "definition" : "Instituto Nacional del Cáncer Dr. Caupolicán Pardo Correa (Santiago, Recoleta)"
  },
  {
    "code" : "109104",
    "display" : "Hospital de Til Til",
    "definition" : "Hospital de Til Til"
  },
  {
    "code" : "109200",
    "display" : "Hospital Clínico Universidad de Chile",
    "definition" : "Hospital Clínico Universidad de Chile"
  },
  {
    "code" : "109201",
    "display" : "Clínica Dávila",
    "definition" : "Clínica Dávila"
  },
  {
    "code" : "109202",
    "display" : "Centro Integramédica Norte",
    "definition" : "Centro Integramédica Norte"
  },
  {
    "code" : "109204",
    "display" : "Centro de Salud Mutual CChC Quilicura",
    "definition" : "Centro de Salud Mutual CChC Quilicura"
  },
  {
    "code" : "109205",
    "display" : "Centro Vida Integra Quilicura",
    "definition" : "Centro Vida Integra Quilicura"
  },
  {
    "code" : "109206",
    "display" : "Centro Asistencial AChS Colina",
    "definition" : "Centro Asistencial AChS Colina"
  },
  {
    "code" : "109207",
    "display" : "Policlínico del Trabajador AChS Parque Las Américas",
    "definition" : "Policlínico del Trabajador AChS Parque Las Américas"
  },
  {
    "code" : "109208",
    "display" : "Centro Asistencial AChS Quilicura",
    "definition" : "Centro Asistencial AChS Quilicura"
  },
  {
    "code" : "109209",
    "display" : "Centro Asistencial AChS Vespucio Oeste",
    "definition" : "Centro Asistencial AChS Vespucio Oeste"
  },
  {
    "code" : "109210",
    "display" : "Clínica Astra Independencia",
    "definition" : "Clínica Astra Independencia"
  },
  {
    "code" : "109211",
    "display" : "Centro Médico y Dental Megasalud Conchalí",
    "definition" : "Centro Médico y Dental Megasalud Conchalí"
  },
  {
    "code" : "109213",
    "display" : "Policlínico Instituto de Seguridad del Trabajo de Quilicura",
    "definition" : "Policlínico Instituto de Seguridad del Trabajo de Quilicura"
  },
  {
    "code" : "109606",
    "display" : "COSAM Independencia",
    "definition" : "COSAM Independencia"
  },
  {
    "code" : "109607",
    "display" : "COSAM Conchalí",
    "definition" : "COSAM Conchalí"
  },
  {
    "code" : "109608",
    "display" : "COSAM Huechuraba",
    "definition" : "COSAM Huechuraba"
  },
  {
    "code" : "109609",
    "display" : "COSAM Recoleta",
    "definition" : "COSAM Recoleta"
  },
  {
    "code" : "109636",
    "display" : "COSAM Quilicura",
    "definition" : "COSAM Quilicura"
  },
  {
    "code" : "109640",
    "display" : "COSAM Colina",
    "definition" : "COSAM Colina"
  },
  {
    "code" : "109641",
    "display" : "COSAM Lampa",
    "definition" : "COSAM Lampa"
  },
  {
    "code" : "109642",
    "display" : "COSAM Til Til",
    "definition" : "COSAM Til Til"
  },
  {
    "code" : "110100",
    "display" : "Hospital San Juan de Dios (Santiago)",
    "definition" : "Hospital San Juan de Dios (Santiago)"
  },
  {
    "code" : "110110",
    "display" : "Instituto Traumatológico Dr. Teodoro Gebauer",
    "definition" : "Instituto Traumatológico Dr. Teodoro Gebauer"
  },
  {
    "code" : "110120",
    "display" : "Hospital  Félix Bulnes Cerda",
    "definition" : "Hospital  Félix Bulnes Cerda"
  },
  {
    "code" : "110130",
    "display" : "Hospital Adalberto Steeger (Talagante)",
    "definition" : "Hospital Adalberto Steeger (Talagante)"
  },
  {
    "code" : "110140",
    "display" : "Hospital de Peñaflor",
    "definition" : "Hospital de Peñaflor"
  },
  {
    "code" : "110150",
    "display" : "Hospital San José (Melipilla)",
    "definition" : "Hospital San José (Melipilla)"
  },
  {
    "code" : "110160",
    "display" : "Hospital de Curacaví",
    "definition" : "Hospital de Curacaví"
  },
  {
    "code" : "110201",
    "display" : "Clínica Psiquiátrica Santa Cecilia",
    "definition" : "Clínica Psiquiátrica Santa Cecilia"
  },
  {
    "code" : "110219",
    "display" : "Centro de Salud Mutual CChC Talagante",
    "definition" : "Centro de Salud Mutual CChC Talagante"
  },
  {
    "code" : "110268",
    "display" : "Clínica del Trabajador AChS",
    "definition" : "Clínica del Trabajador AChS"
  },
  {
    "code" : "110270",
    "display" : "Clínica Los Maitenes",
    "definition" : "Clínica Los Maitenes"
  },
  {
    "code" : "110271",
    "display" : "Centro de Salud Mutual CChC Melipilla",
    "definition" : "Centro de Salud Mutual CChC Melipilla"
  },
  {
    "code" : "110272",
    "display" : "Clínica Fundación Gantz",
    "definition" : "Clínica Fundación Gantz"
  },
  {
    "code" : "110273",
    "display" : "Centro de Salud Mutual CChC Pudahuel",
    "definition" : "Centro de Salud Mutual CChC Pudahuel"
  },
  {
    "code" : "110276",
    "display" : "Fundación Vida Nueva (Clínica Psiquiátrica)",
    "definition" : "Fundación Vida Nueva (Clínica Psiquiátrica)"
  },
  {
    "code" : "110278",
    "display" : "Centro Asistencial AChS Peñaflor",
    "definition" : "Centro Asistencial AChS Peñaflor"
  },
  {
    "code" : "110279",
    "display" : "Centro Asistencial AChS Talagante",
    "definition" : "Centro Asistencial AChS Talagante"
  },
  {
    "code" : "110280",
    "display" : "Servicio Médico Dental (S) Armada de Chile",
    "definition" : "Servicio Médico Dental (S) Armada de Chile"
  },
  {
    "code" : "110281",
    "display" : "Centro de Oncología Preventiva de la Universidad de Chile",
    "definition" : "Centro de Oncología Preventiva de la Universidad de Chile"
  },
  {
    "code" : "110300",
    "display" : "Centro de Referencia de Salud Salvador Allende",
    "definition" : "Centro de Referencia de Salud Salvador Allende"
  },
  {
    "code" : "110619",
    "display" : "COSAM Cerro Navia",
    "definition" : "COSAM Cerro Navia"
  },
  {
    "code" : "110620",
    "display" : "COSAM Quinta Normal",
    "definition" : "COSAM Quinta Normal"
  },
  {
    "code" : "110621",
    "display" : "COSAM Lo Prado",
    "definition" : "COSAM Lo Prado"
  },
  {
    "code" : "110622",
    "display" : "COSAM Pudahuel",
    "definition" : "COSAM Pudahuel"
  },
  {
    "code" : "110623",
    "display" : "COSAM Talagante",
    "definition" : "COSAM Talagante"
  },
  {
    "code" : "110624",
    "display" : "COSAM Peñaflor",
    "definition" : "COSAM Peñaflor"
  },
  {
    "code" : "110625",
    "display" : "COSAM Melipilla",
    "definition" : "COSAM Melipilla"
  },
  {
    "code" : "110626",
    "display" : "COSAM Renca",
    "definition" : "COSAM Renca"
  },
  {
    "code" : "110627",
    "display" : "COSAM Municipal de Pudahuel",
    "definition" : "COSAM Municipal de Pudahuel"
  },
  {
    "code" : "111100",
    "display" : "Hospital Clínico San Borja Arriarán",
    "definition" : "Hospital Clínico San Borja Arriarán"
  },
  {
    "code" : "111101",
    "display" : "Hospital Clínico Metropolitano El Carmen Doctor Luis Valentín Ferrada",
    "definition" : "Hospital Clínico Metropolitano El Carmen Doctor Luis Valentín Ferrada"
  },
  {
    "code" : "111195",
    "display" : "Hospital de Urgencia Asistencia Pública Dr. Alejandro del Río",
    "definition" : "Hospital de Urgencia Asistencia Pública Dr. Alejandro del Río"
  },
  {
    "code" : "111200",
    "display" : "Hospital Clínico Red de Salud UC CHRISTUS",
    "definition" : "Hospital Clínico Red de Salud UC CHRISTUS"
  },
  {
    "code" : "111202",
    "display" : "Hospital Clínico Mutual de Seguridad C.CH.C.",
    "definition" : "Hospital Clínico Mutual de Seguridad C.CH.C."
  },
  {
    "code" : "111203",
    "display" : "Hospital Penitenciario",
    "definition" : "Hospital Penitenciario"
  },
  {
    "code" : "111204",
    "display" : "Instituto Teletón Santiago",
    "definition" : "Instituto Teletón Santiago"
  },
  {
    "code" : "111206",
    "display" : "Clínica Los Coihues",
    "definition" : "Clínica Los Coihues"
  },
  {
    "code" : "111210",
    "display" : "Hernández y Gutiérrez Ltda",
    "definition" : "Hernández y Gutiérrez Ltda"
  },
  {
    "code" : "111211",
    "display" : "Clínica San Isidoro Salud SpA",
    "definition" : "Clínica San Isidoro Salud SpA"
  },
  {
    "code" : "111217",
    "display" : "Centro de Salud Diagnostiko Ltda",
    "definition" : "Centro de Salud Diagnostiko Ltda"
  },
  {
    "code" : "111218",
    "display" : "Centro de Salud Omega",
    "definition" : "Centro de Salud Omega"
  },
  {
    "code" : "111219",
    "display" : "Clínica Santa Rosa ( ex Madre e Hijo)",
    "definition" : "Clínica Santa Rosa ( ex Madre e Hijo)"
  },
  {
    "code" : "111221",
    "display" : "Clínica Juan Pablo II",
    "definition" : "Clínica Juan Pablo II"
  },
  {
    "code" : "111224",
    "display" : "Centro de Salud Vival Ltda.",
    "definition" : "Centro de Salud Vival Ltda."
  },
  {
    "code" : "111230",
    "display" : "Clínica Hospital del Profesor",
    "definition" : "Clínica Hospital del Profesor"
  },
  {
    "code" : "111232",
    "display" : "Clínica Astra Maipú",
    "definition" : "Clínica Astra Maipú"
  },
  {
    "code" : "111263",
    "display" : "Centro Integramédica",
    "definition" : "Centro Integramédica"
  },
  {
    "code" : "111267",
    "display" : "Centro Médico Vida Integra Alameda",
    "definition" : "Centro Médico Vida Integra Alameda"
  },
  {
    "code" : "111269",
    "display" : "Centro de Salud Vida Integra Bandera",
    "definition" : "Centro de Salud Vida Integra Bandera"
  },
  {
    "code" : "111274",
    "display" : "Centro Integramédica Oeste",
    "definition" : "Centro Integramédica Oeste"
  },
  {
    "code" : "111276",
    "display" : "Clínica UC Red de Salud UC CHRISTUS",
    "definition" : "Clínica UC Red de Salud UC CHRISTUS"
  },
  {
    "code" : "111277",
    "display" : "Clínica Pedro Montt",
    "definition" : "Clínica Pedro Montt"
  },
  {
    "code" : "111278",
    "display" : "Centro Integramédica Forestal",
    "definition" : "Centro Integramédica Forestal"
  },
  {
    "code" : "111281",
    "display" : "Centro Asistencial AChS Alameda",
    "definition" : "Centro Asistencial AChS Alameda"
  },
  {
    "code" : "111282",
    "display" : "Centro Asistencial AChS Maipú",
    "definition" : "Centro Asistencial AChS Maipú"
  },
  {
    "code" : "111283",
    "display" : "Centro Asistencial AChS Santiago",
    "definition" : "Centro Asistencial AChS Santiago"
  },
  {
    "code" : "111284",
    "display" : "Centro Médico y Dental Megasalud Alameda",
    "definition" : "Centro Médico y Dental Megasalud Alameda"
  },
  {
    "code" : "111285",
    "display" : "Centro Médico y Dental MegaSalud Maipú",
    "definition" : "Centro Médico y Dental MegaSalud Maipú"
  },
  {
    "code" : "111286",
    "display" : "Centro Médico y Dental CAPREDENA",
    "definition" : "Centro Médico y Dental CAPREDENA"
  },
  {
    "code" : "111288",
    "display" : "Centro de Salud Mutual CChC Agustinas",
    "definition" : "Centro de Salud Mutual CChC Agustinas"
  },
  {
    "code" : "111290",
    "display" : "Centro Integramédica Estación Central",
    "definition" : "Centro Integramédica Estación Central"
  },
  {
    "code" : "111291",
    "display" : "Centro Médico y Dental Fundación Asistencial Trabajadores Del Banco del Estado de Chile",
    "definition" : "Centro Médico y Dental Fundación Asistencial Trabajadores Del Banco del Estado de Chile"
  },
  {
    "code" : "111293",
    "display" : "Policlínico Institucional de Gendarmería de Chile - Santiago",
    "definition" : "Policlínico Institucional de Gendarmería de Chile - Santiago"
  },
  {
    "code" : "111294",
    "display" : "Establecimiento Penitenciario Santiago 1",
    "definition" : "Establecimiento Penitenciario Santiago 1"
  },
  {
    "code" : "111295",
    "display" : "Red Salud Santiago ex Clínica Bicentenario",
    "definition" : "Red Salud Santiago ex Clínica Bicentenario"
  },
  {
    "code" : "111296",
    "display" : "Consultorio Escuela de formación policial de Carabineros de Chile",
    "definition" : "Consultorio Escuela de formación policial de Carabineros de Chile"
  },
  {
    "code" : "111297",
    "display" : "Clínica Bellolio",
    "definition" : "Clínica Bellolio"
  },
  {
    "code" : "111298",
    "display" : "Centro de Salud Familiar Santiago Occidente de Carabineros de Chile",
    "definition" : "Centro de Salud Familiar Santiago Occidente de Carabineros de Chile"
  },
  {
    "code" : "111299",
    "display" : "Integramédica Bandera",
    "definition" : "Integramédica Bandera"
  },
  {
    "code" : "111351",
    "display" : "Centro de Referencia de Salud de Maipú",
    "definition" : "Centro de Referencia de Salud de Maipú"
  },
  {
    "code" : "111606",
    "display" : "COSAM Estación Central",
    "definition" : "COSAM Estación Central"
  },
  {
    "code" : "111607",
    "display" : "COSAM Maipú",
    "definition" : "COSAM Maipú"
  },
  {
    "code" : "111608",
    "display" : "COSAM Cerrillos",
    "definition" : "COSAM Cerrillos"
  },
  {
    "code" : "111609",
    "display" : "COSAM Santiago",
    "definition" : "COSAM Santiago"
  },
  {
    "code" : "112100",
    "display" : "Hospital Del Salvador de Santiago",
    "definition" : "Hospital Del Salvador de Santiago"
  },
  {
    "code" : "112101",
    "display" : "Hospital Dr. Luis Tisné B. (Santiago, Peñalolén)",
    "definition" : "Hospital Dr. Luis Tisné B. (Santiago, Peñalolén)"
  },
  {
    "code" : "112102",
    "display" : "Hospital de Niños Dr. Luis Calvo Mackenna",
    "definition" : "Hospital de Niños Dr. Luis Calvo Mackenna"
  },
  {
    "code" : "112103",
    "display" : "Instituto Nacional de Enfermedades Respiratorias y Cirugía Torácica",
    "definition" : "Instituto Nacional de Enfermedades Respiratorias y Cirugía Torácica"
  },
  {
    "code" : "112104",
    "display" : "Instituto de Neurocirugía Dr. Alfonso Asenjo",
    "definition" : "Instituto de Neurocirugía Dr. Alfonso Asenjo"
  },
  {
    "code" : "112105",
    "display" : "Instituto Nacional de Rehabilitación Infantil Presidente Pedro Aguirre Cerda",
    "definition" : "Instituto Nacional de Rehabilitación Infantil Presidente Pedro Aguirre Cerda"
  },
  {
    "code" : "112106",
    "display" : "Instituto Nacional Geriátrico Presidente Eduardo Frei Montalva",
    "definition" : "Instituto Nacional Geriátrico Presidente Eduardo Frei Montalva"
  },
  {
    "code" : "112107",
    "display" : "Hospital Hanga Roa (Isla De Pascua)",
    "definition" : "Hospital Hanga Roa (Isla De Pascua)"
  },
  {
    "code" : "112200",
    "display" : "Clínica Alemana",
    "definition" : "Clínica Alemana"
  },
  {
    "code" : "112201",
    "display" : "Clínica RedSalud Vitacura",
    "definition" : "Clínica RedSalud Vitacura"
  },
  {
    "code" : "112204",
    "display" : "Nueva Clínica Cordillera",
    "definition" : "Nueva Clínica Cordillera"
  },
  {
    "code" : "112205",
    "display" : "Clínica Psiquiatrica Bretaña",
    "definition" : "Clínica Psiquiatrica Bretaña"
  },
  {
    "code" : "112207",
    "display" : "Clínica del Carmen",
    "definition" : "Clínica del Carmen"
  },
  {
    "code" : "112211",
    "display" : "Clínica Indisa",
    "definition" : "Clínica Indisa"
  },
  {
    "code" : "112212",
    "display" : "Clínica Las Condes",
    "definition" : "Clínica Las Condes"
  },
  {
    "code" : "112215",
    "display" : "Clínica Macul",
    "definition" : "Clínica Macul"
  },
  {
    "code" : "112217",
    "display" : "Clínica Recuperación Alcohol Alfa",
    "definition" : "Clínica Recuperación Alcohol Alfa"
  },
  {
    "code" : "112218",
    "display" : "Clínica Miguel Claro",
    "definition" : "Clínica Miguel Claro"
  },
  {
    "code" : "112220",
    "display" : "Clínica Oftalmológica Los Andes",
    "definition" : "Clínica Oftalmológica Los Andes"
  },
  {
    "code" : "112221",
    "display" : "Centro Médico y Dental Redsalud Pedro de Valdivia",
    "definition" : "Centro Médico y Dental Redsalud Pedro de Valdivia"
  },
  {
    "code" : "112224",
    "display" : "Clínica Psiquiatrica Pocuro",
    "definition" : "Clínica Psiquiatrica Pocuro"
  },
  {
    "code" : "112228",
    "display" : "Clínica San Andrés",
    "definition" : "Clínica San Andrés"
  },
  {
    "code" : "112229",
    "display" : "Clínica Mirandes Las Condes",
    "definition" : "Clínica Mirandes Las Condes"
  },
  {
    "code" : "112238",
    "display" : "Hospital FACH",
    "definition" : "Hospital FACH"
  },
  {
    "code" : "112240",
    "display" : "Hospital Carabineros",
    "definition" : "Hospital Carabineros"
  },
  {
    "code" : "112241",
    "display" : "Clínica Oriente",
    "definition" : "Clínica Oriente"
  },
  {
    "code" : "112242",
    "display" : "Clínica IST Vitacura",
    "definition" : "Clínica IST Vitacura"
  },
  {
    "code" : "112244",
    "display" : "Hospital del Trabajador Santiago",
    "definition" : "Hospital del Trabajador Santiago"
  },
  {
    "code" : "112246",
    "display" : "Clínica Europa",
    "definition" : "Clínica Europa"
  },
  {
    "code" : "112248",
    "display" : "Hospital Dipreca Teniente Hernán Merino",
    "definition" : "Hospital Dipreca Teniente Hernán Merino"
  },
  {
    "code" : "112249",
    "display" : "Clínica Santa María",
    "definition" : "Clínica Santa María"
  },
  {
    "code" : "112252",
    "display" : "Clínica Psiquiatrica Renacer",
    "definition" : "Clínica Psiquiatrica Renacer"
  },
  {
    "code" : "112254",
    "display" : "Instituto Clínico Oncológico Fundación Arturo López Pérez",
    "definition" : "Instituto Clínico Oncológico Fundación Arturo López Pérez"
  },
  {
    "code" : "112258",
    "display" : "Clínica Psicoterapia los Tiempos",
    "definition" : "Clínica Psicoterapia los Tiempos"
  },
  {
    "code" : "112259",
    "display" : "Clínica Colonial",
    "definition" : "Clínica Colonial"
  },
  {
    "code" : "112260",
    "display" : "Instituto Médico el Arrayán",
    "definition" : "Instituto Médico el Arrayán"
  },
  {
    "code" : "112261",
    "display" : "Clínica San Carlos de Apoquindo Red de Salud UC CHRISTUS",
    "definition" : "Clínica San Carlos de Apoquindo Red de Salud UC CHRISTUS"
  },
  {
    "code" : "112264",
    "display" : "Clínica Instituto El Cedro",
    "definition" : "Clínica Instituto El Cedro"
  },
  {
    "code" : "112265",
    "display" : "Centro Médico y Dental Megasalud Arauco",
    "definition" : "Centro Médico y Dental Megasalud Arauco"
  },
  {
    "code" : "112266",
    "display" : "Centro Médico y Dental Megasalud Padre Hurtado",
    "definition" : "Centro Médico y Dental Megasalud Padre Hurtado"
  },
  {
    "code" : "112267",
    "display" : "Departamento de Bienestar Social de la Dirección General de Aeronáutica Civil",
    "definition" : "Departamento de Bienestar Social de la Dirección General de Aeronáutica Civil"
  },
  {
    "code" : "112268",
    "display" : "Central Odontológica de la Fuerzas Armadas y de Orden",
    "definition" : "Central Odontológica de la Fuerzas Armadas y de Orden"
  },
  {
    "code" : "112269",
    "display" : "Instituto de Enfermedades Circulatorias",
    "definition" : "Instituto de Enfermedades Circulatorias"
  },
  {
    "code" : "112272",
    "display" : "Centro Médico Militar Rosa O'Higgins",
    "definition" : "Centro Médico Militar Rosa O'Higgins"
  },
  {
    "code" : "112274",
    "display" : "Procedimientos Clínicos Alto Tabancura",
    "definition" : "Procedimientos Clínicos Alto Tabancura"
  },
  {
    "code" : "112275",
    "display" : "Centro Médico Alto Tobalaba - Vacunatorio Vacci Protex",
    "definition" : "Centro Médico Alto Tobalaba - Vacunatorio Vacci Protex"
  },
  {
    "code" : "112276",
    "display" : "CLINICA ESTETICA LIFECHOICE SPA",
    "definition" : "CLINICA ESTETICA LIFECHOICE SPA"
  },
  {
    "code" : "112277",
    "display" : "Centro Médico Vida Integra Tobalaba",
    "definition" : "Centro Médico Vida Integra Tobalaba"
  },
  {
    "code" : "112278",
    "display" : "Clínica Monteblanco",
    "definition" : "Clínica Monteblanco"
  },
  {
    "code" : "112279",
    "display" : "Consultorio Escuela de Carabineros de Chile",
    "definition" : "Consultorio Escuela de Carabineros de Chile"
  },
  {
    "code" : "112280",
    "display" : "Consultorio Escuela de Suboficiales de Carabineros de Chile",
    "definition" : "Consultorio Escuela de Suboficiales de Carabineros de Chile"
  },
  {
    "code" : "112281",
    "display" : "Centro Médico Irarrázaval Red de Salud UC CHRISTUS",
    "definition" : "Centro Médico Irarrázaval Red de Salud UC CHRISTUS"
  },
  {
    "code" : "112282",
    "display" : "Centro Médico y Dental Antonio Varas del Banco del Estado de Chile",
    "definition" : "Centro Médico y Dental Antonio Varas del Banco del Estado de Chile"
  },
  {
    "code" : "112300",
    "display" : "Centro de Referencia de Salud Cordillera Oriente",
    "definition" : "Centro de Referencia de Salud Cordillera Oriente"
  },
  {
    "code" : "112500",
    "display" : "Centro Integramédica Barcelona",
    "definition" : "Centro Integramédica Barcelona"
  },
  {
    "code" : "112502",
    "display" : "Clínica Las Acacias",
    "definition" : "Clínica Las Acacias"
  },
  {
    "code" : "112505",
    "display" : "Centro Servicios Médicos Santa María",
    "definition" : "Centro Servicios Médicos Santa María"
  },
  {
    "code" : "112507",
    "display" : "Clínica Fundación Médica San Cristóbal",
    "definition" : "Clínica Fundación Médica San Cristóbal"
  },
  {
    "code" : "112509",
    "display" : "Centro Oftalmológico Luis Pasteur",
    "definition" : "Centro Oftalmológico Luis Pasteur"
  },
  {
    "code" : "112510",
    "display" : "Clínica Universidad de Chile Quilín",
    "definition" : "Clínica Universidad de Chile Quilín"
  },
  {
    "code" : "112512",
    "display" : "Centro Médico San Joaquín Red de Salud UC CHRISTUS",
    "definition" : "Centro Médico San Joaquín Red de Salud UC CHRISTUS"
  },
  {
    "code" : "112514",
    "display" : "Centro Asistencial AChS Egaña",
    "definition" : "Centro Asistencial AChS Egaña"
  },
  {
    "code" : "112515",
    "display" : "Centro Asistencial AChS La Reina",
    "definition" : "Centro Asistencial AChS La Reina"
  },
  {
    "code" : "112516",
    "display" : "Centro Asistencial AChS Las Condes",
    "definition" : "Centro Asistencial AChS Las Condes"
  },
  {
    "code" : "112517",
    "display" : "Centro Médico Macul",
    "definition" : "Centro Médico Macul"
  },
  {
    "code" : "112518",
    "display" : "Centro de Salud Mutual CChC las Tranqueras",
    "definition" : "Centro de Salud Mutual CChC las Tranqueras"
  },
  {
    "code" : "112519",
    "display" : "Centro Médico y Dental Mega Salud Ñuñoa",
    "definition" : "Centro Médico y Dental Mega Salud Ñuñoa"
  },
  {
    "code" : "112520",
    "display" : "Centro Médico y Dental Megasalud Kennedy",
    "definition" : "Centro Médico y Dental Megasalud Kennedy"
  },
  {
    "code" : "112522",
    "display" : "Centro Médico Clínica Santa María La Dehesa",
    "definition" : "Centro Médico Clínica Santa María La Dehesa"
  },
  {
    "code" : "112525",
    "display" : "Centro Vida Integra Providencia",
    "definition" : "Centro Vida Integra Providencia"
  },
  {
    "code" : "112526",
    "display" : "Centro Integra Médica Manquehue",
    "definition" : "Centro Integra Médica Manquehue"
  },
  {
    "code" : "112530",
    "display" : "Hospital Militar de Santiago",
    "definition" : "Hospital Militar de Santiago"
  },
  {
    "code" : "112606",
    "display" : "COSAM La Reina",
    "definition" : "COSAM La Reina"
  },
  {
    "code" : "112607",
    "display" : "COSAM Macul",
    "definition" : "COSAM Macul"
  },
  {
    "code" : "112608",
    "display" : "COSAM Ñuñoa",
    "definition" : "COSAM Ñuñoa"
  },
  {
    "code" : "112609",
    "display" : "COSAM Las Condes",
    "definition" : "COSAM Las Condes"
  },
  {
    "code" : "112610",
    "display" : "COSAM Peñalolén",
    "definition" : "COSAM Peñalolén"
  },
  {
    "code" : "112611",
    "display" : "COSAM Provisam",
    "definition" : "COSAM Provisam"
  },
  {
    "code" : "112612",
    "display" : "COSAM Lo Barnechea",
    "definition" : "COSAM Lo Barnechea"
  },
  {
    "code" : "112613",
    "display" : "COSAM Vitacura",
    "definition" : "COSAM Vitacura"
  },
  {
    "code" : "112954",
    "display" : "Red Salud Providencia ex Clínica Avansalud Providencia",
    "definition" : "Red Salud Providencia ex Clínica Avansalud Providencia"
  },
  {
    "code" : "112955",
    "display" : "Dirección Previsional de Carabineros de Chile",
    "definition" : "Dirección Previsional de Carabineros de Chile"
  },
  {
    "code" : "112960",
    "display" : "Dilab",
    "definition" : "Dilab"
  },
  {
    "code" : "112961",
    "display" : "Elsa",
    "definition" : "Elsa"
  },
  {
    "code" : "112976",
    "display" : "Instituto Oftalmológico Puerta del Sol",
    "definition" : "Instituto Oftalmológico Puerta del Sol"
  },
  {
    "code" : "112977",
    "display" : "Centro de Diagnóstico Integramédica Alto Las Condes",
    "definition" : "Centro de Diagnóstico Integramédica Alto Las Condes"
  },
  {
    "code" : "112980",
    "display" : "Centro Vida Integra de Las Condes",
    "definition" : "Centro Vida Integra de Las Condes"
  },
  {
    "code" : "112982",
    "display" : "Megasalud",
    "definition" : "Megasalud"
  },
  {
    "code" : "112983",
    "display" : "Centro Atencion Clínica Santa María La Reina",
    "definition" : "Centro Atencion Clínica Santa María La Reina"
  },
  {
    "code" : "112984",
    "display" : "Centro Médico Dávila Las Condes",
    "definition" : "Centro Médico Dávila Las Condes"
  },
  {
    "code" : "112985",
    "display" : "Integramédica Las Condes",
    "definition" : "Integramédica Las Condes"
  },
  {
    "code" : "112986",
    "display" : "Integramédica Maipú",
    "definition" : "Integramédica Maipú"
  },
  {
    "code" : "112987",
    "display" : "Clínica New Clinic",
    "definition" : "Clínica New Clinic"
  },
  {
    "code" : "112990",
    "display" : "Centro Vida Integra de Ñuñoa",
    "definition" : "Centro Vida Integra de Ñuñoa"
  },
  {
    "code" : "112999",
    "display" : "Clínica Corporación de Ayuda al Paciente Mental",
    "definition" : "Clínica Corporación de Ayuda al Paciente Mental"
  },
  {
    "code" : "113100",
    "display" : "Hospital Barros Luco Trudeau (Santiago, San Miguel)",
    "definition" : "Hospital Barros Luco Trudeau (Santiago, San Miguel)"
  },
  {
    "code" : "113130",
    "display" : "Hospital Dr. Exequiel González Cortés (Santiago, San Miguel)",
    "definition" : "Hospital Dr. Exequiel González Cortés (Santiago, San Miguel)"
  },
  {
    "code" : "113150",
    "display" : "Hospital San Luis (Buin)",
    "definition" : "Hospital San Luis (Buin)"
  },
  {
    "code" : "113160",
    "display" : "Hospital de Enfermedades Infecciosas Dr. Lucio Córdova (Santiago, San Miguel)",
    "definition" : "Hospital de Enfermedades Infecciosas Dr. Lucio Córdova (Santiago, San Miguel)"
  },
  {
    "code" : "113170",
    "display" : "Hospital Psiquiátrico El Peral (Santiago, Puente Alto)",
    "definition" : "Hospital Psiquiátrico El Peral (Santiago, Puente Alto)"
  },
  {
    "code" : "113180",
    "display" : "Hospital El Pino (Santiago, San Bernardo)",
    "definition" : "Hospital El Pino (Santiago, San Bernardo)"
  },
  {
    "code" : "113190",
    "display" : "Hospital Parroquial de San Bernardo (D)",
    "definition" : "Hospital Parroquial de San Bernardo (D)"
  },
  {
    "code" : "113213",
    "display" : "Clínica San Miguel",
    "definition" : "Clínica San Miguel"
  },
  {
    "code" : "113233",
    "display" : "Centro Integramédica San Miguel",
    "definition" : "Centro Integramédica San Miguel"
  },
  {
    "code" : "113234",
    "display" : "Centro Vida Integra de San Miguel",
    "definition" : "Centro Vida Integra de San Miguel"
  },
  {
    "code" : "113235",
    "display" : "Centro de Salud Mutual CChC San Bernardo",
    "definition" : "Centro de Salud Mutual CChC San Bernardo"
  },
  {
    "code" : "113238",
    "display" : "Clínica Santa Lucía",
    "definition" : "Clínica Santa Lucía"
  },
  {
    "code" : "113239",
    "display" : "Centro Vida Integra de San Bernardo",
    "definition" : "Centro Vida Integra de San Bernardo"
  },
  {
    "code" : "113241",
    "display" : "Centro de Salud Mutual CChC Lo Espejo",
    "definition" : "Centro de Salud Mutual CChC Lo Espejo"
  },
  {
    "code" : "113244",
    "display" : "Clínica de Cirugía Plástica",
    "definition" : "Clínica de Cirugía Plástica"
  },
  {
    "code" : "113246",
    "display" : "Centro Asistencial AChS Buin",
    "definition" : "Centro Asistencial AChS Buin"
  },
  {
    "code" : "113247",
    "display" : "Centro Asistencial AChS San Bernardo",
    "definition" : "Centro Asistencial AChS San Bernardo"
  },
  {
    "code" : "113248",
    "display" : "Centro Asistencial AChS San Miguel",
    "definition" : "Centro Asistencial AChS San Miguel"
  },
  {
    "code" : "113249",
    "display" : "Centro de Salud Mutual CChC Paine",
    "definition" : "Centro de Salud Mutual CChC Paine"
  },
  {
    "code" : "113250",
    "display" : "Clínica Astra San Miguel",
    "definition" : "Clínica Astra San Miguel"
  },
  {
    "code" : "113252",
    "display" : "Centro Médico y Dental RedSalud",
    "definition" : "Centro Médico y Dental RedSalud"
  },
  {
    "code" : "113253",
    "display" : "Centro Médico y Dental Megasalud San Bernardo",
    "definition" : "Centro Médico y Dental Megasalud San Bernardo"
  },
  {
    "code" : "113254",
    "display" : "Centro Asistencial AChS Paine",
    "definition" : "Centro Asistencial AChS Paine"
  },
  {
    "code" : "113255",
    "display" : "Consultorio Tantauco",
    "definition" : "Consultorio Tantauco"
  },
  {
    "code" : "113256",
    "display" : "Consultorio Prefectura Sur",
    "definition" : "Consultorio Prefectura Sur"
  },
  {
    "code" : "113257",
    "display" : "Multimédica Ltda.",
    "definition" : "Multimédica Ltda."
  },
  {
    "code" : "113260",
    "display" : "Nefrolab",
    "definition" : "Nefrolab"
  },
  {
    "code" : "113337",
    "display" : "COSAM El Bosque",
    "definition" : "COSAM El Bosque"
  },
  {
    "code" : "113338",
    "display" : "COSAM Pedro Aguirre Cerda",
    "definition" : "COSAM Pedro Aguirre Cerda"
  },
  {
    "code" : "113339",
    "display" : "COSAM San Bernardo",
    "definition" : "COSAM San Bernardo"
  },
  {
    "code" : "113341",
    "display" : "COSAM San Joaquín",
    "definition" : "COSAM San Joaquín"
  },
  {
    "code" : "113395",
    "display" : "Centro de Imagenología Mamaria Metropolitano",
    "definition" : "Centro de Imagenología Mamaria Metropolitano"
  },
  {
    "code" : "113642",
    "display" : "COSAM Lo Espejo",
    "definition" : "COSAM Lo Espejo"
  },
  {
    "code" : "114101",
    "display" : "Complejo Hospitalario Dr. Sótero del Río (Santiago, Puente Alto)",
    "definition" : "Complejo Hospitalario Dr. Sótero del Río (Santiago, Puente Alto)"
  },
  {
    "code" : "114102",
    "display" : "Hospital San José de Maipo",
    "definition" : "Hospital San José de Maipo"
  },
  {
    "code" : "114103",
    "display" : "Hospital Padre Alberto Hurtado (San Ramón)",
    "definition" : "Hospital Padre Alberto Hurtado (San Ramón)"
  },
  {
    "code" : "114104",
    "display" : "Hospital Metropolitano (Ex Militar)",
    "definition" : "Hospital Metropolitano (Ex Militar)"
  },
  {
    "code" : "114105",
    "display" : "Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza",
    "definition" : "Hospital Clínico Metropolitano La Florida Dra. Eloísa Díaz Insunza"
  },
  {
    "code" : "114161",
    "display" : "Centro  de Sangre y Tejidos Metropolitano",
    "definition" : "Centro  de Sangre y Tejidos Metropolitano"
  },
  {
    "code" : "114202",
    "display" : "Clínica Psiquiatrica Raquel Gaete",
    "definition" : "Clínica Psiquiatrica Raquel Gaete"
  },
  {
    "code" : "114204",
    "display" : "Centro de Enfermedades Respiratorias Infantiles Josefina Martínez (D)",
    "definition" : "Centro de Enfermedades Respiratorias Infantiles Josefina Martínez (D)"
  },
  {
    "code" : "114206",
    "display" : "Centro de Rehabilitación Capredena",
    "definition" : "Centro de Rehabilitación Capredena"
  },
  {
    "code" : "114209",
    "display" : "Clínica Santa Elena",
    "definition" : "Clínica Santa Elena"
  },
  {
    "code" : "114212",
    "display" : "Clínica Familia",
    "definition" : "Clínica Familia"
  },
  {
    "code" : "114215",
    "display" : "Centro Vida Integra de Puente Alto",
    "definition" : "Centro Vida Integra de Puente Alto"
  },
  {
    "code" : "114220",
    "display" : "Centro de Salud Mutual CChC La Florida",
    "definition" : "Centro de Salud Mutual CChC La Florida"
  },
  {
    "code" : "114221",
    "display" : "Centro Integramédica Tobalaba",
    "definition" : "Centro Integramédica Tobalaba"
  },
  {
    "code" : "114223",
    "display" : "Clínica Dávila Vespucio",
    "definition" : "Clínica Dávila Vespucio"
  },
  {
    "code" : "114224",
    "display" : "Centro Vida Integra de La Florida",
    "definition" : "Centro Vida Integra de La Florida"
  },
  {
    "code" : "114227",
    "display" : "Clínica Astra La Florida",
    "definition" : "Clínica Astra La Florida"
  },
  {
    "code" : "114228",
    "display" : "Centro Asistencial AChS La Florida",
    "definition" : "Centro Asistencial AChS La Florida"
  },
  {
    "code" : "114229",
    "display" : "Centro Asistencial AChS Puente Alto",
    "definition" : "Centro Asistencial AChS Puente Alto"
  },
  {
    "code" : "114231",
    "display" : "Centro Médico y Dental Megasalud La Florida",
    "definition" : "Centro Médico y Dental Megasalud La Florida"
  },
  {
    "code" : "114232",
    "display" : "Centro Médico y Dental Megasalud Puente Alto",
    "definition" : "Centro Médico y Dental Megasalud Puente Alto"
  },
  {
    "code" : "114234",
    "display" : "Centro de Salud Mutual CChC Puente Alto",
    "definition" : "Centro de Salud Mutual CChC Puente Alto"
  },
  {
    "code" : "114236",
    "display" : "Integramédica Puente Alto",
    "definition" : "Integramédica Puente Alto"
  },
  {
    "code" : "114301",
    "display" : "Centro de Salud Familiar Dr. Alejandro del Río",
    "definition" : "Centro de Salud Familiar Dr. Alejandro del Río"
  },
  {
    "code" : "114606",
    "display" : "COSAM La Bandera",
    "definition" : "COSAM La Bandera"
  },
  {
    "code" : "114607",
    "display" : "COSAM La Rinconada",
    "definition" : "COSAM La Rinconada"
  },
  {
    "code" : "114608",
    "display" : "COSAM La Granja",
    "definition" : "COSAM La Granja"
  },
  {
    "code" : "114609",
    "display" : "COSAM La Pintana",
    "definition" : "COSAM La Pintana"
  },
  {
    "code" : "114610",
    "display" : "COSAM La Florida",
    "definition" : "COSAM La Florida"
  },
  {
    "code" : "114611",
    "display" : "COSAM Puente Alto",
    "definition" : "COSAM Puente Alto"
  },
  {
    "code" : "114612",
    "display" : "COSAM Pirque",
    "definition" : "COSAM Pirque"
  },
  {
    "code" : "114613",
    "display" : "COSAM CEIF Centro",
    "definition" : "COSAM CEIF Centro"
  },
  {
    "code" : "115100",
    "display" : "Hospital Dr. Franco Ravera Zunino",
    "definition" : "Hospital Dr. Franco Ravera Zunino"
  },
  {
    "code" : "115101",
    "display" : "Hospital Santa Filomena de Graneros",
    "definition" : "Hospital Santa Filomena de Graneros"
  },
  {
    "code" : "115102",
    "display" : "Hospital de Coínco",
    "definition" : "Hospital de Coínco"
  },
  {
    "code" : "115103",
    "display" : "Hospital Del Salvador de Peumo",
    "definition" : "Hospital Del Salvador de Peumo"
  },
  {
    "code" : "115104",
    "display" : "Hospital Dr. Ricardo Valenzuela Sáez (Rengo)",
    "definition" : "Hospital Dr. Ricardo Valenzuela Sáez (Rengo)"
  },
  {
    "code" : "115105",
    "display" : "Hospital San Vicente de Tagua -Tagua",
    "definition" : "Hospital San Vicente de Tagua -Tagua"
  },
  {
    "code" : "115106",
    "display" : "Hospital de Pichidegua",
    "definition" : "Hospital de Pichidegua"
  },
  {
    "code" : "115107",
    "display" : "Hospital San Juan de Dios de San Fernando",
    "definition" : "Hospital San Juan de Dios de San Fernando"
  },
  {
    "code" : "115108",
    "display" : "Hospital Mercedes de Chimbarongo",
    "definition" : "Hospital Mercedes de Chimbarongo"
  },
  {
    "code" : "115109",
    "display" : "Hospital de Nancagua",
    "definition" : "Hospital de Nancagua"
  },
  {
    "code" : "115110",
    "display" : "Hospital de Santa Cruz",
    "definition" : "Hospital de Santa Cruz"
  },
  {
    "code" : "115111",
    "display" : "Hospital de Marchigüe",
    "definition" : "Hospital de Marchigüe"
  },
  {
    "code" : "115112",
    "display" : "Hospital de Pichilemu",
    "definition" : "Hospital de Pichilemu"
  },
  {
    "code" : "115113",
    "display" : "Hospital de Lolol",
    "definition" : "Hospital de Lolol"
  },
  {
    "code" : "115114",
    "display" : "Hospital de Litueche",
    "definition" : "Hospital de Litueche"
  },
  {
    "code" : "115202",
    "display" : "Hospital del Trabajador AChS",
    "definition" : "Hospital del Trabajador AChS"
  },
  {
    "code" : "115203",
    "display" : "Clínica Mutual de Seguridad CChC Rancagua",
    "definition" : "Clínica Mutual de Seguridad CChC Rancagua"
  },
  {
    "code" : "115204",
    "display" : "Clínica del Trabajador AChS San Fernando",
    "definition" : "Clínica del Trabajador AChS San Fernando"
  },
  {
    "code" : "115206",
    "display" : "Hospital Clínico Fusat Rancagua",
    "definition" : "Hospital Clínico Fusat Rancagua"
  },
  {
    "code" : "115221",
    "display" : "Clínica Isamedica",
    "definition" : "Clínica Isamedica"
  },
  {
    "code" : "115222",
    "display" : "Clínica de Salud Integral",
    "definition" : "Clínica de Salud Integral"
  },
  {
    "code" : "115235",
    "display" : "Centro Intersalud Rancagua",
    "definition" : "Centro Intersalud Rancagua"
  },
  {
    "code" : "115236",
    "display" : "Megasalud S.A. Centro Médico y Dental Rancagua",
    "definition" : "Megasalud S.A. Centro Médico y Dental Rancagua"
  },
  {
    "code" : "115241",
    "display" : "Hospital Penitenciario de Rancagua",
    "definition" : "Hospital Penitenciario de Rancagua"
  },
  {
    "code" : "115242",
    "display" : "Centro Médico y Dental Tipo B",
    "definition" : "Centro Médico y Dental Tipo B"
  },
  {
    "code" : "115243",
    "display" : "Centro Médico O'Carrol Salud",
    "definition" : "Centro Médico O'Carrol Salud"
  },
  {
    "code" : "115250",
    "display" : "Centro Médico Lantadilla",
    "definition" : "Centro Médico Lantadilla"
  },
  {
    "code" : "115261",
    "display" : "Centro Médico y Laboratorio Clínico Santa Cruz",
    "definition" : "Centro Médico y Laboratorio Clínico Santa Cruz"
  },
  {
    "code" : "115266",
    "display" : "Clínica San Francisco",
    "definition" : "Clínica San Francisco"
  },
  {
    "code" : "115271",
    "display" : "Centro de Salud y Prevención AChS San Vicente de Tagua Tagua",
    "definition" : "Centro de Salud y Prevención AChS San Vicente de Tagua Tagua"
  },
  {
    "code" : "115272",
    "display" : "Policlínico de la Asociación Chilena de Seguridad AChS Santa Cruz",
    "definition" : "Policlínico de la Asociación Chilena de Seguridad AChS Santa Cruz"
  },
  {
    "code" : "115273",
    "display" : "Policlínico de la Asociación Chilena de Seguridad AChS Rengo",
    "definition" : "Policlínico de la Asociación Chilena de Seguridad AChS Rengo"
  },
  {
    "code" : "115351",
    "display" : "Centro de Referencia de Salud CREF La Brújula",
    "definition" : "Centro de Referencia de Salud CREF La Brújula"
  },
  {
    "code" : "115600",
    "display" : "COSAM Centro 1 de Rancagua",
    "definition" : "COSAM Centro 1 de Rancagua"
  },
  {
    "code" : "115601",
    "display" : "COSAM Santa Cruz",
    "definition" : "COSAM Santa Cruz"
  },
  {
    "code" : "116056",
    "display" : "Hospital Italiano",
    "definition" : "Hospital Italiano"
  },
  {
    "code" : "116100",
    "display" : "Hospital San Juan de Dios (Curicó)",
    "definition" : "Hospital San Juan de Dios (Curicó)"
  },
  {
    "code" : "116101",
    "display" : "Hospital de Teno",
    "definition" : "Hospital de Teno"
  },
  {
    "code" : "116102",
    "display" : "Hospital de Molina",
    "definition" : "Hospital de Molina"
  },
  {
    "code" : "116103",
    "display" : "Hospital de Hualañé",
    "definition" : "Hospital de Hualañé"
  },
  {
    "code" : "116104",
    "display" : "Hospital de Licantén",
    "definition" : "Hospital de Licantén"
  },
  {
    "code" : "116105",
    "display" : "Hospital Dr. César Garavagno Burotto (Talca)",
    "definition" : "Hospital Dr. César Garavagno Burotto (Talca)"
  },
  {
    "code" : "116106",
    "display" : "Hospital de Curepto",
    "definition" : "Hospital de Curepto"
  },
  {
    "code" : "116107",
    "display" : "Hospital de Constitución",
    "definition" : "Hospital de Constitución"
  },
  {
    "code" : "116108",
    "display" : "Hospital Presidente Carlos Ibáñez del Campo (Linares)",
    "definition" : "Hospital Presidente Carlos Ibáñez del Campo (Linares)"
  },
  {
    "code" : "116109",
    "display" : "Hospital Dr. Abel Fuentealba Lagos de San Javier",
    "definition" : "Hospital Dr. Abel Fuentealba Lagos de San Javier"
  },
  {
    "code" : "116110",
    "display" : "Hospital San José (Parral)",
    "definition" : "Hospital San José (Parral)"
  },
  {
    "code" : "116111",
    "display" : "Hospital San Juan de Dios (Cauquenes)",
    "definition" : "Hospital San Juan de Dios (Cauquenes)"
  },
  {
    "code" : "116112",
    "display" : "Hospital Dr. Benjamín Pedreros (Chanco)",
    "definition" : "Hospital Dr. Benjamín Pedreros (Chanco)"
  },
  {
    "code" : "116150",
    "display" : "Centro Reproductivo Regional de Sangre",
    "definition" : "Centro Reproductivo Regional de Sangre"
  },
  {
    "code" : "116205",
    "display" : "Asociación Chilena de Seguridad AChS Talca",
    "definition" : "Asociación Chilena de Seguridad AChS Talca"
  },
  {
    "code" : "116209",
    "display" : "Centro de Salud Mutual CChC Talca",
    "definition" : "Centro de Salud Mutual CChC Talca"
  },
  {
    "code" : "116210",
    "display" : "Asociación Chilena de Seguridad AChS Curicó",
    "definition" : "Asociación Chilena de Seguridad AChS Curicó"
  },
  {
    "code" : "116213",
    "display" : "Centro de Salud Mutual CChC Curicó",
    "definition" : "Centro de Salud Mutual CChC Curicó"
  },
  {
    "code" : "116215",
    "display" : "Centro de Salud Mutual CChC Linares",
    "definition" : "Centro de Salud Mutual CChC Linares"
  },
  {
    "code" : "116216",
    "display" : "Centro de Salud Mutual CChC Constitución",
    "definition" : "Centro de Salud Mutual CChC Constitución"
  },
  {
    "code" : "116217",
    "display" : "Clínica Enferdial",
    "definition" : "Clínica Enferdial"
  },
  {
    "code" : "116218",
    "display" : "Clínica Infantil",
    "definition" : "Clínica Infantil"
  },
  {
    "code" : "116219",
    "display" : "Centro Médico Cordillera",
    "definition" : "Centro Médico Cordillera"
  },
  {
    "code" : "116261",
    "display" : "Megasalud S.A Centro Médico y Dental Talca",
    "definition" : "Megasalud S.A Centro Médico y Dental Talca"
  },
  {
    "code" : "116262",
    "display" : "Clínica Regional Lircay",
    "definition" : "Clínica Regional Lircay"
  },
  {
    "code" : "116265",
    "display" : "Centro La Escalera",
    "definition" : "Centro La Escalera"
  },
  {
    "code" : "116266",
    "display" : "CREA Chile",
    "definition" : "CREA Chile"
  },
  {
    "code" : "116267",
    "display" : "Nexos Ltda.",
    "definition" : "Nexos Ltda."
  },
  {
    "code" : "116268",
    "display" : "Asociación Chilena de Seguridad AChS Cauquenes",
    "definition" : "Asociación Chilena de Seguridad AChS Cauquenes"
  },
  {
    "code" : "116269",
    "display" : "Asociación Chilena de Seguridad AChS Parral",
    "definition" : "Asociación Chilena de Seguridad AChS Parral"
  },
  {
    "code" : "116275",
    "display" : "Centro Médico y Dental de Carabineros de Chile VII Zona Maule",
    "definition" : "Centro Médico y Dental de Carabineros de Chile VII Zona Maule"
  },
  {
    "code" : "116276",
    "display" : "Clínica Universidad Católica Del Maule",
    "definition" : "Clínica Universidad Católica Del Maule"
  },
  {
    "code" : "116277",
    "display" : "Consultorio Prefectura Carabineros Curicó",
    "definition" : "Consultorio Prefectura Carabineros Curicó"
  },
  {
    "code" : "116278",
    "display" : "Consultorio Prefectura Carabineros Linares",
    "definition" : "Consultorio Prefectura Carabineros Linares"
  },
  {
    "code" : "116279",
    "display" : "Centro de Salud Mutual CChC Cauquenes",
    "definition" : "Centro de Salud Mutual CChC Cauquenes"
  },
  {
    "code" : "116601",
    "display" : "COSAM de Linares",
    "definition" : "COSAM de Linares"
  },
  {
    "code" : "116602",
    "display" : "COSAM Sin Fronteras Talca",
    "definition" : "COSAM Sin Fronteras Talca"
  },
  {
    "code" : "117101",
    "display" : "Hospital Clínico Herminda Martín (Chillán)",
    "definition" : "Hospital Clínico Herminda Martín (Chillán)"
  },
  {
    "code" : "117102",
    "display" : "Hospital de San Carlos",
    "definition" : "Hospital de San Carlos"
  },
  {
    "code" : "117103",
    "display" : "Hospital Comunitario de Salud Familiar de Bulnes",
    "definition" : "Hospital Comunitario de Salud Familiar de Bulnes"
  },
  {
    "code" : "117104",
    "display" : "Hospital Comunitario de Salud Familiar Pedro Morales Campos (Yungay)",
    "definition" : "Hospital Comunitario de Salud Familiar Pedro Morales Campos (Yungay)"
  },
  {
    "code" : "117106",
    "display" : "Hospital Comunitario de Salud Familiar de Quirihue",
    "definition" : "Hospital Comunitario de Salud Familiar de Quirihue"
  },
  {
    "code" : "117107",
    "display" : "Hospital Comunitario de Salud Familiar de El Carmen",
    "definition" : "Hospital Comunitario de Salud Familiar de El Carmen"
  },
  {
    "code" : "117108",
    "display" : "Hospital Comunitario de Salud Familiar Dr. Eduardo Contreras Trabucco de Coelemu",
    "definition" : "Hospital Comunitario de Salud Familiar Dr. Eduardo Contreras Trabucco de Coelemu"
  },
  {
    "code" : "117202",
    "display" : "Consultorio de Salud AChS (Chillán)",
    "definition" : "Consultorio de Salud AChS (Chillán)"
  },
  {
    "code" : "117205",
    "display" : "Clínica Las Amapolas",
    "definition" : "Clínica Las Amapolas"
  },
  {
    "code" : "117207",
    "display" : "Centro de Salud Mutual CChC Chillán",
    "definition" : "Centro de Salud Mutual CChC Chillán"
  },
  {
    "code" : "117224",
    "display" : "Policlínico San Martín de Porres",
    "definition" : "Policlínico San Martín de Porres"
  },
  {
    "code" : "117225",
    "display" : "Clinica Andes Salud Chillan",
    "definition" : "Clinica Andes Salud Chillan"
  },
  {
    "code" : "117226",
    "display" : "Departamento de Salud Estudiantil Universidad del Biobío Sede Chillán",
    "definition" : "Departamento de Salud Estudiantil Universidad del Biobío Sede Chillán"
  },
  {
    "code" : "117227",
    "display" : "Consultorio de Salud Universidad de Concepción",
    "definition" : "Consultorio de Salud Universidad de Concepción"
  },
  {
    "code" : "117601",
    "display" : "COSAM Chillán",
    "definition" : "COSAM Chillán"
  },
  {
    "code" : "117602",
    "display" : "COSAM San Carlos",
    "definition" : "COSAM San Carlos"
  },
  {
    "code" : "118100",
    "display" : "Hospital Clínico Regional Dr. Guillermo Grant Benavente (Concepción)",
    "definition" : "Hospital Clínico Regional Dr. Guillermo Grant Benavente (Concepción)"
  },
  {
    "code" : "118103",
    "display" : "Hospital Traumatológico (Concepción)",
    "definition" : "Hospital Traumatológico (Concepción)"
  },
  {
    "code" : "118105",
    "display" : "Hospital San José (Coronel)",
    "definition" : "Hospital San José (Coronel)"
  },
  {
    "code" : "118106",
    "display" : "Hospital de Lota",
    "definition" : "Hospital de Lota"
  },
  {
    "code" : "118107",
    "display" : "Hospital Clorinda Avello (Santa Juana)",
    "definition" : "Hospital Clorinda Avello (Santa Juana)"
  },
  {
    "code" : "118108",
    "display" : "Hospital San Agustín de Florida",
    "definition" : "Hospital San Agustín de Florida"
  },
  {
    "code" : "118109",
    "display" : "Centro de Especialidades de Medicina Transfusional",
    "definition" : "Centro de Especialidades de Medicina Transfusional"
  },
  {
    "code" : "118200",
    "display" : "Hospital Clínico del Sur S.A.",
    "definition" : "Hospital Clínico del Sur S.A."
  },
  {
    "code" : "118202",
    "display" : "Clínica de la Mujer Sanatorio Alemán",
    "definition" : "Clínica de la Mujer Sanatorio Alemán"
  },
  {
    "code" : "118206",
    "display" : "Centro Clínico Militar Concepción",
    "definition" : "Centro Clínico Militar Concepción"
  },
  {
    "code" : "118210",
    "display" : "Servicios Clínicos Neuropsiquiátricos y Geriátricos R y G Limitada",
    "definition" : "Servicios Clínicos Neuropsiquiátricos y Geriátricos R y G Limitada"
  },
  {
    "code" : "118252",
    "display" : "Policlínico Agencia Concepción de la Asociación Chilena de Seguridad",
    "definition" : "Policlínico Agencia Concepción de la Asociación Chilena de Seguridad"
  },
  {
    "code" : "118289",
    "display" : "Centro Integramédica del Trébol",
    "definition" : "Centro Integramédica del Trébol"
  },
  {
    "code" : "118290",
    "display" : "Megasalud S.A. Centro Médico y Dental Concepción",
    "definition" : "Megasalud S.A. Centro Médico y Dental Concepción"
  },
  {
    "code" : "118293",
    "display" : "Centro Médico Inmunomédica",
    "definition" : "Centro Médico Inmunomédica"
  },
  {
    "code" : "118294",
    "display" : "Centro y Médico Dental VIII Zona de Carabineros (Del Bíobío)",
    "definition" : "Centro y Médico Dental VIII Zona de Carabineros (Del Bíobío)"
  },
  {
    "code" : "118298",
    "display" : "Departamento de Salud Estudiantil Universidad del Bíobío Campus Concepción",
    "definition" : "Departamento de Salud Estudiantil Universidad del Bíobío Campus Concepción"
  },
  {
    "code" : "118517",
    "display" : "Instituto Teletón Concepción",
    "definition" : "Instituto Teletón Concepción"
  },
  {
    "code" : "118518",
    "display" : "Policlínico de la Asociación Chilena de Seguridad Coronel",
    "definition" : "Policlínico de la Asociación Chilena de Seguridad Coronel"
  },
  {
    "code" : "118519",
    "display" : "Hospital de Centro de Cumplimiento Penitenciario Biobío",
    "definition" : "Hospital de Centro de Cumplimiento Penitenciario Biobío"
  },
  {
    "code" : "118524",
    "display" : "Centro Médico Radiológico Concepción Ltda.",
    "definition" : "Centro Médico Radiológico Concepción Ltda."
  },
  {
    "code" : "118600",
    "display" : "COSAM de Coronel",
    "definition" : "COSAM de Coronel"
  },
  {
    "code" : "118601",
    "display" : "COSAM Comunitaria Lota",
    "definition" : "COSAM Comunitaria Lota"
  },
  {
    "code" : "119100",
    "display" : "Hospital Las Higueras (Talcahuano)",
    "definition" : "Hospital Las Higueras (Talcahuano)"
  },
  {
    "code" : "119101",
    "display" : "Hospital de Tomé",
    "definition" : "Hospital de Tomé"
  },
  {
    "code" : "119102",
    "display" : "Hospital Penco Lirquén",
    "definition" : "Hospital Penco Lirquén"
  },
  {
    "code" : "119200",
    "display" : "Hospital Instituto de Seguridad del Trabajo Talcahuano",
    "definition" : "Hospital Instituto de Seguridad del Trabajo Talcahuano"
  },
  {
    "code" : "119203",
    "display" : "Hospital Naval Almirante Adriazola",
    "definition" : "Hospital Naval Almirante Adriazola"
  },
  {
    "code" : "119207",
    "display" : "Clínica Bio Bio",
    "definition" : "Clínica Bio Bio"
  },
  {
    "code" : "119208",
    "display" : "Clínica Andes Salud Concepción",
    "definition" : "Clínica Andes Salud Concepción"
  },
  {
    "code" : "119212",
    "display" : "Clínica de Atención Ambulatoria Mutual de Seguridad CChC Hualpén",
    "definition" : "Clínica de Atención Ambulatoria Mutual de Seguridad CChC Hualpén"
  },
  {
    "code" : "119216",
    "display" : "Policlínico de la Asociación Chilena de Seguridad Talcahuano",
    "definition" : "Policlínico de la Asociación Chilena de Seguridad Talcahuano"
  },
  {
    "code" : "119601",
    "display" : "COSAM Hualpén",
    "definition" : "COSAM Hualpén"
  },
  {
    "code" : "120101",
    "display" : "Complejo Asistencial Dr. Víctor Ríos Ruiz (Los Ángeles)",
    "definition" : "Complejo Asistencial Dr. Víctor Ríos Ruiz (Los Ángeles)"
  },
  {
    "code" : "120102",
    "display" : "Hospital de Mulchén",
    "definition" : "Hospital de Mulchén"
  },
  {
    "code" : "120103",
    "display" : "Hospital Comunitario y Familiar de Nacimiento",
    "definition" : "Hospital Comunitario y Familiar de Nacimiento"
  },
  {
    "code" : "120104",
    "display" : "Hospital Comunitario de Yumbel",
    "definition" : "Hospital Comunitario de Yumbel"
  },
  {
    "code" : "120105",
    "display" : "Hospital Comunitario de Laja",
    "definition" : "Hospital Comunitario de Laja"
  },
  {
    "code" : "120106",
    "display" : "Hospital Comunitario de Santa Bárbara",
    "definition" : "Hospital Comunitario de Santa Bárbara"
  },
  {
    "code" : "120107",
    "display" : "Hospital Comunitario Dr. Roberto Muñoz Urrutia de Huépil",
    "definition" : "Hospital Comunitario Dr. Roberto Muñoz Urrutia de Huépil"
  },
  {
    "code" : "120202",
    "display" : "Policlínico AChS Los ángeles",
    "definition" : "Policlínico AChS Los ángeles"
  },
  {
    "code" : "120205",
    "display" : "Clínica Adventista",
    "definition" : "Clínica Adventista"
  },
  {
    "code" : "120207",
    "display" : "Policlínico AChS Subregional Nacimiento",
    "definition" : "Policlínico AChS Subregional Nacimiento"
  },
  {
    "code" : "120208",
    "display" : "Clínica Los Andes",
    "definition" : "Clínica Los Andes"
  },
  {
    "code" : "120213",
    "display" : "Hospital Mutual de Seguridad CChC Los Ángeles",
    "definition" : "Hospital Mutual de Seguridad CChC Los Ángeles"
  },
  {
    "code" : "120221",
    "display" : "Megasalud S.A. Centro Médico y Dental Los Ángeles",
    "definition" : "Megasalud S.A. Centro Médico y Dental Los Ángeles"
  },
  {
    "code" : "121109",
    "display" : "Hospital Dr. Hernán Henríquez Aravena (Temuco)",
    "definition" : "Hospital Dr. Hernán Henríquez Aravena (Temuco)"
  },
  {
    "code" : "121110",
    "display" : "Hospital Dr. Abraham Godoy Peña (Lautaro)",
    "definition" : "Hospital Dr. Abraham Godoy Peña (Lautaro)"
  },
  {
    "code" : "121111",
    "display" : "Hospital de Galvarino",
    "definition" : "Hospital de Galvarino"
  },
  {
    "code" : "121112",
    "display" : "Hospital de Vilcún",
    "definition" : "Hospital de Vilcún"
  },
  {
    "code" : "121113",
    "display" : "Hospital Dr. Eduardo González Galeno (Cunco)",
    "definition" : "Hospital Dr. Eduardo González Galeno (Cunco)"
  },
  {
    "code" : "121114",
    "display" : "Hospital Intercultural de Nueva Imperial",
    "definition" : "Hospital Intercultural de Nueva Imperial"
  },
  {
    "code" : "121115",
    "display" : "Hospital Familiar y Comunitario Carahue",
    "definition" : "Hospital Familiar y Comunitario Carahue"
  },
  {
    "code" : "121116",
    "display" : "Hospital Dr. Arturo Hillerns Larrañaga (Saavedra)",
    "definition" : "Hospital Dr. Arturo Hillerns Larrañaga (Saavedra)"
  },
  {
    "code" : "121117",
    "display" : "Hospital de Pitrufquén",
    "definition" : "Hospital de Pitrufquén"
  },
  {
    "code" : "121118",
    "display" : "Hospital de Toltén",
    "definition" : "Hospital de Toltén"
  },
  {
    "code" : "121119",
    "display" : "Hospital de Gorbea",
    "definition" : "Hospital de Gorbea"
  },
  {
    "code" : "121120",
    "display" : "Hospital Familiar y Comunitario de Loncoche",
    "definition" : "Hospital Familiar y Comunitario de Loncoche"
  },
  {
    "code" : "121121",
    "display" : "Hospital de Villarrica",
    "definition" : "Hospital de Villarrica"
  },
  {
    "code" : "121200",
    "display" : "Hospital San Francisco de Pucón (D)",
    "definition" : "Hospital San Francisco de Pucón (D)"
  },
  {
    "code" : "121202",
    "display" : "Clínica Alemana de Temuco",
    "definition" : "Clínica Alemana de Temuco"
  },
  {
    "code" : "121205",
    "display" : "Hospital del Trabajador AChS de Temuco",
    "definition" : "Hospital del Trabajador AChS de Temuco"
  },
  {
    "code" : "121209",
    "display" : "Clínica Redsalud Mayor Temuco",
    "definition" : "Clínica Redsalud Mayor Temuco"
  },
  {
    "code" : "121245",
    "display" : "Megasalud S.A. Centro Médico y Dental Temuco",
    "definition" : "Megasalud S.A. Centro Médico y Dental Temuco"
  },
  {
    "code" : "121246",
    "display" : "Centro de Salud Mutual CChC Temuco",
    "definition" : "Centro de Salud Mutual CChC Temuco"
  },
  {
    "code" : "121247",
    "display" : "Centro de Diagnóstico y Tratamiento SIRESA",
    "definition" : "Centro de Diagnóstico y Tratamiento SIRESA"
  },
  {
    "code" : "121248",
    "display" : "Centro de Salud CIREPLAST",
    "definition" : "Centro de Salud CIREPLAST"
  },
  {
    "code" : "121264",
    "display" : "Centro Diagnóstico Histopatología Citopatología",
    "definition" : "Centro Diagnóstico Histopatología Citopatología"
  },
  {
    "code" : "121266",
    "display" : "Instituto de Mamografía Limitada",
    "definition" : "Instituto de Mamografía Limitada"
  },
  {
    "code" : "121274",
    "display" : "Centro de Salud Gendarmería de Chile (Temuco)",
    "definition" : "Centro de Salud Gendarmería de Chile (Temuco)"
  },
  {
    "code" : "121275",
    "display" : "Centro de Salud Regional de Gendarmería de Chile Región de La Araucanía",
    "definition" : "Centro de Salud Regional de Gendarmería de Chile Región de La Araucanía"
  },
  {
    "code" : "121276",
    "display" : "SurImagen Ltda.",
    "definition" : "SurImagen Ltda."
  },
  {
    "code" : "121278",
    "display" : "Centro Médico y Dental de Carabineros de Chile Zona IX Araucanía",
    "definition" : "Centro Médico y Dental de Carabineros de Chile Zona IX Araucanía"
  },
  {
    "code" : "121279",
    "display" : "Sociedad de Imagenología Clínica Bioimagen Ltda.",
    "definition" : "Sociedad de Imagenología Clínica Bioimagen Ltda."
  },
  {
    "code" : "121280",
    "display" : "Laboratorio Sociedad Inmunomédica",
    "definition" : "Laboratorio Sociedad Inmunomédica"
  },
  {
    "code" : "121600",
    "display" : "COSAM Amanecer",
    "definition" : "COSAM Amanecer"
  },
  {
    "code" : "121601",
    "display" : "COSAM Temuco",
    "definition" : "COSAM Temuco"
  },
  {
    "code" : "121602",
    "display" : "COSAM Padre Las Casas",
    "definition" : "COSAM Padre Las Casas"
  },
  {
    "code" : "122100",
    "display" : "Hospital Base Valdivia",
    "definition" : "Hospital Base Valdivia"
  },
  {
    "code" : "122101",
    "display" : "Hospital de Corral",
    "definition" : "Hospital de Corral"
  },
  {
    "code" : "122102",
    "display" : "Hospital de Los Lagos",
    "definition" : "Hospital de Los Lagos"
  },
  {
    "code" : "122103",
    "display" : "Hospital de Lanco",
    "definition" : "Hospital de Lanco"
  },
  {
    "code" : "122104",
    "display" : "Hospital Juan Morey (La Unión)",
    "definition" : "Hospital Juan Morey (La Unión)"
  },
  {
    "code" : "122105",
    "display" : "Hospital de Río Bueno",
    "definition" : "Hospital de Río Bueno"
  },
  {
    "code" : "122106",
    "display" : "Hospital de Paillaco",
    "definition" : "Hospital de Paillaco"
  },
  {
    "code" : "122200",
    "display" : "Hospital Santa Elisa de San José de la Mariquina",
    "definition" : "Hospital Santa Elisa de San José de la Mariquina"
  },
  {
    "code" : "122201",
    "display" : "Hospital de Panguipulli",
    "definition" : "Hospital de Panguipulli"
  },
  {
    "code" : "122202",
    "display" : "Clínica Alemana Valdivia",
    "definition" : "Clínica Alemana Valdivia"
  },
  {
    "code" : "122203",
    "display" : "Clínica Mutual de Seguridad CChC Valdivia",
    "definition" : "Clínica Mutual de Seguridad CChC Valdivia"
  },
  {
    "code" : "122213",
    "display" : "Megasalud S.A Centro Médico y Dental Valdivia",
    "definition" : "Megasalud S.A Centro Médico y Dental Valdivia"
  },
  {
    "code" : "122216",
    "display" : "Policlínico Carabineros Valdivia",
    "definition" : "Policlínico Carabineros Valdivia"
  },
  {
    "code" : "122217",
    "display" : "Centro Clínico Militar Valdivia",
    "definition" : "Centro Clínico Militar Valdivia"
  },
  {
    "code" : "122218",
    "display" : "Centro de Salud Universidad Austral de Chile",
    "definition" : "Centro de Salud Universidad Austral de Chile"
  },
  {
    "code" : "122219",
    "display" : "Centro de Salud Masisa",
    "definition" : "Centro de Salud Masisa"
  },
  {
    "code" : "122220",
    "display" : "Policlínico Astilleros y Servicios Navales ASENAV",
    "definition" : "Policlínico Astilleros y Servicios Navales ASENAV"
  },
  {
    "code" : "122221",
    "display" : "Centro Penitenciario Valdivia",
    "definition" : "Centro Penitenciario Valdivia"
  },
  {
    "code" : "122222",
    "display" : "Policlínico Infodema",
    "definition" : "Policlínico Infodema"
  },
  {
    "code" : "122223",
    "display" : "Centro de Salud Mutual CChC La Unión",
    "definition" : "Centro de Salud Mutual CChC La Unión"
  },
  {
    "code" : "122224",
    "display" : "Centro de Salud AChS Río Bueno",
    "definition" : "Centro de Salud AChS Río Bueno"
  },
  {
    "code" : "122226",
    "display" : "Clínica del Trabajador AChS de Valdivia",
    "definition" : "Clínica del Trabajador AChS de Valdivia"
  },
  {
    "code" : "122227",
    "display" : "Centro Médico Beaucheff",
    "definition" : "Centro Médico Beaucheff"
  },
  {
    "code" : "122228",
    "display" : "Centro Médico Surmedica",
    "definition" : "Centro Médico Surmedica"
  },
  {
    "code" : "122229",
    "display" : "CMA Costanera",
    "definition" : "CMA Costanera"
  },
  {
    "code" : "122231",
    "display" : "Policlínico de Atención Primaria Gendarmería de Chile",
    "definition" : "Policlínico de Atención Primaria Gendarmería de Chile"
  },
  {
    "code" : "122232",
    "display" : "Policlínico Regional de Gendarmería",
    "definition" : "Policlínico Regional de Gendarmería"
  },
  {
    "code" : "122238",
    "display" : "Sociedad Laboratorio Especialidades Médicas Ltda.",
    "definition" : "Sociedad Laboratorio Especialidades Médicas Ltda."
  },
  {
    "code" : "122239",
    "display" : "Sociedad Laboratorio Clínico Unión Ltda.",
    "definition" : "Sociedad Laboratorio Clínico Unión Ltda."
  },
  {
    "code" : "122601",
    "display" : "COSAM Comunitario Las Ánimas",
    "definition" : "COSAM Comunitario Las Ánimas"
  },
  {
    "code" : "122602",
    "display" : "COSAM Angachilla",
    "definition" : "COSAM Angachilla"
  },
  {
    "code" : "123100",
    "display" : "Hospital Base San José de Osorno",
    "definition" : "Hospital Base San José de Osorno"
  },
  {
    "code" : "123101",
    "display" : "Hospital de Purranque Dr. Juan Hepp Dubiau",
    "definition" : "Hospital de Purranque Dr. Juan Hepp Dubiau"
  },
  {
    "code" : "123102",
    "display" : "Hospital de Río Negro",
    "definition" : "Hospital de Río Negro"
  },
  {
    "code" : "123103",
    "display" : "Hospital de Puerto Octay",
    "definition" : "Hospital de Puerto Octay"
  },
  {
    "code" : "123104",
    "display" : "Hospital Futa Sruka Lawenche Kunko Mapu Mo",
    "definition" : "Hospital Futa Sruka Lawenche Kunko Mapu Mo"
  },
  {
    "code" : "123105",
    "display" : "Hospital Pu Mulen Quilacahuín",
    "definition" : "Hospital Pu Mulen Quilacahuín"
  },
  {
    "code" : "123203",
    "display" : "Clínica Alemana de Osorno",
    "definition" : "Clínica Alemana de Osorno"
  },
  {
    "code" : "123205",
    "display" : "Centro de Salud Mutual CChC Osorno",
    "definition" : "Centro de Salud Mutual CChC Osorno"
  },
  {
    "code" : "123206",
    "display" : "Megasalud S.A. Centro Médico y Dental Osorno",
    "definition" : "Megasalud S.A. Centro Médico y Dental Osorno"
  },
  {
    "code" : "123209",
    "display" : "Clínica de la AChS Osorno",
    "definition" : "Clínica de la AChS Osorno"
  },
  {
    "code" : "123213",
    "display" : "Clínica Oftalmológica Survisión",
    "definition" : "Clínica Oftalmológica Survisión"
  },
  {
    "code" : "123214",
    "display" : "Policlínico Instituto de Seguridad del Trabajo de Osorno",
    "definition" : "Policlínico Instituto de Seguridad del Trabajo de Osorno"
  },
  {
    "code" : "123216",
    "display" : "Centro Médico y Laboratorio Cochrane",
    "definition" : "Centro Médico y Laboratorio Cochrane"
  },
  {
    "code" : "124105",
    "display" : "Hospital de Puerto Montt",
    "definition" : "Hospital de Puerto Montt"
  },
  {
    "code" : "124110",
    "display" : "Hospital de Llanquihue",
    "definition" : "Hospital de Llanquihue"
  },
  {
    "code" : "124115",
    "display" : "Hospital de Frutillar",
    "definition" : "Hospital de Frutillar"
  },
  {
    "code" : "124120",
    "display" : "Hospital de Fresia",
    "definition" : "Hospital de Fresia"
  },
  {
    "code" : "124125",
    "display" : "Hospital de Maullín",
    "definition" : "Hospital de Maullín"
  },
  {
    "code" : "124130",
    "display" : "Hospital de Calbuco",
    "definition" : "Hospital de Calbuco"
  },
  {
    "code" : "124140",
    "display" : "Hospital de Palena",
    "definition" : "Hospital de Palena"
  },
  {
    "code" : "124145",
    "display" : "Hospital de Futaleufú",
    "definition" : "Hospital de Futaleufú"
  },
  {
    "code" : "124210",
    "display" : "Clínica de Puerto Varas SpA.",
    "definition" : "Clínica de Puerto Varas SpA."
  },
  {
    "code" : "124240",
    "display" : "Policlínico Instituto de Seguridad del Trabajo de Puerto Montt",
    "definition" : "Policlínico Instituto de Seguridad del Trabajo de Puerto Montt"
  },
  {
    "code" : "124250",
    "display" : "Clínica Puerto Montt",
    "definition" : "Clínica Puerto Montt"
  },
  {
    "code" : "124251",
    "display" : "Clínica de la AChS Puerto Montt",
    "definition" : "Clínica de la AChS Puerto Montt"
  },
  {
    "code" : "124260",
    "display" : "Clínica Andes Salud Puerto Montt",
    "definition" : "Clínica Andes Salud Puerto Montt"
  },
  {
    "code" : "124273",
    "display" : "Megasalud S.A. Centro Médico y Dental Puerto Montt",
    "definition" : "Megasalud S.A. Centro Médico y Dental Puerto Montt"
  },
  {
    "code" : "124274",
    "display" : "Clínica Complejo Penitenciario de Puerto Montt",
    "definition" : "Clínica Complejo Penitenciario de Puerto Montt"
  },
  {
    "code" : "124275",
    "display" : "Centro de Atención Profesional de Enfermería (CAPROEN)",
    "definition" : "Centro de Atención Profesional de Enfermería (CAPROEN)"
  },
  {
    "code" : "124278",
    "display" : "Centro Nefrológico Puerto Montt",
    "definition" : "Centro Nefrológico Puerto Montt"
  },
  {
    "code" : "124280",
    "display" : "Policlínico Naval de Puerto Montt",
    "definition" : "Policlínico Naval de Puerto Montt"
  },
  {
    "code" : "124281",
    "display" : "Instituto Teletón Puerto Montt",
    "definition" : "Instituto Teletón Puerto Montt"
  },
  {
    "code" : "124282",
    "display" : "Policlínico Mutual de Seguridad CChC Puerto Montt",
    "definition" : "Policlínico Mutual de Seguridad CChC Puerto Montt"
  },
  {
    "code" : "124284",
    "display" : "Centro Médico y Dental Xa. Zona de Carabineros",
    "definition" : "Centro Médico y Dental Xa. Zona de Carabineros"
  },
  {
    "code" : "124601",
    "display" : "COSAM Puerto Montt",
    "definition" : "COSAM Puerto Montt"
  },
  {
    "code" : "124602",
    "display" : "COSAM de Reloncaví",
    "definition" : "COSAM de Reloncaví"
  },
  {
    "code" : "125100",
    "display" : "Hospital Regional de Coyhaique",
    "definition" : "Hospital Regional de Coyhaique"
  },
  {
    "code" : "125101",
    "display" : "Hospital de Puerto Aysén",
    "definition" : "Hospital de Puerto Aysén"
  },
  {
    "code" : "125102",
    "display" : "Hospital Dr. Leopoldo Ortega Rodríguez (Chile Chico)",
    "definition" : "Hospital Dr. Leopoldo Ortega Rodríguez (Chile Chico)"
  },
  {
    "code" : "125103",
    "display" : "Hospital Lord Cochrane",
    "definition" : "Hospital Lord Cochrane"
  },
  {
    "code" : "125104",
    "display" : "Hospital Dr. Jorge Ibar Bruce (Cisnes)",
    "definition" : "Hospital Dr. Jorge Ibar Bruce (Cisnes)"
  },
  {
    "code" : "125200",
    "display" : "Centro de Salud Mutual CChC Coyhaique",
    "definition" : "Centro de Salud Mutual CChC Coyhaique"
  },
  {
    "code" : "125201",
    "display" : "Policlínico del Trabajador Coyhaique",
    "definition" : "Policlínico del Trabajador Coyhaique"
  },
  {
    "code" : "125203",
    "display" : "Centro de Salud Mutual CChC Puerto Chacabuco",
    "definition" : "Centro de Salud Mutual CChC Puerto Chacabuco"
  },
  {
    "code" : "125204",
    "display" : "Clínica de Trabajador AChS",
    "definition" : "Clínica de Trabajador AChS"
  },
  {
    "code" : "125205",
    "display" : "Centro Clínico Militar Coyhaique",
    "definition" : "Centro Clínico Militar Coyhaique"
  },
  {
    "code" : "125207",
    "display" : "Centro Médico y Dental XI Zona Aysén del General Carlos Ibáñez del Campo",
    "definition" : "Centro Médico y Dental XI Zona Aysén del General Carlos Ibáñez del Campo"
  },
  {
    "code" : "126100",
    "display" : "Hospital Clínico de Magallanes Dr. Lautaro Navarro Avaria",
    "definition" : "Hospital Clínico de Magallanes Dr. Lautaro Navarro Avaria"
  },
  {
    "code" : "126101",
    "display" : "Hospital Dr. Augusto Essmann Burgos ( Natales)",
    "definition" : "Hospital Dr. Augusto Essmann Burgos ( Natales)"
  },
  {
    "code" : "126102",
    "display" : "Hospital Dr. Marco Antonio Chamorro ( Porvenir)",
    "definition" : "Hospital Dr. Marco Antonio Chamorro ( Porvenir)"
  },
  {
    "code" : "126200",
    "display" : "Hospital FFAA Cirujano Guzmán",
    "definition" : "Hospital FFAA Cirujano Guzmán"
  },
  {
    "code" : "126201",
    "display" : "Clínica Magallanes",
    "definition" : "Clínica Magallanes"
  },
  {
    "code" : "126202",
    "display" : "Centro de Atención Instituto de Seguridad del Trabajador Punta Arenas",
    "definition" : "Centro de Atención Instituto de Seguridad del Trabajador Punta Arenas"
  },
  {
    "code" : "126203",
    "display" : "Centro de Salud Mutual CChC Punta Arenas",
    "definition" : "Centro de Salud Mutual CChC Punta Arenas"
  },
  {
    "code" : "126204",
    "display" : "Hospital Naval (Puerto Williams)",
    "definition" : "Hospital Naval (Puerto Williams)"
  },
  {
    "code" : "126211",
    "display" : "Centro Médico Medvital",
    "definition" : "Centro Médico Medvital"
  },
  {
    "code" : "126212",
    "display" : "Clínica de Recuperación Hogar de Cristo Juan Pablo II",
    "definition" : "Clínica de Recuperación Hogar de Cristo Juan Pablo II"
  },
  {
    "code" : "126213",
    "display" : "Instituto Médico Sarmiento",
    "definition" : "Instituto Médico Sarmiento"
  },
  {
    "code" : "126214",
    "display" : "Centro Médico y Dental Megasalud S.A Punta Arenas",
    "definition" : "Centro Médico y Dental Megasalud S.A Punta Arenas"
  },
  {
    "code" : "126219",
    "display" : "Centro de Rehabilitación Club de Leones Cruz del Sur",
    "definition" : "Centro de Rehabilitación Club de Leones Cruz del Sur"
  },
  {
    "code" : "126220",
    "display" : "Policlínico AChS (Punta Arenas)",
    "definition" : "Policlínico AChS (Punta Arenas)"
  },
  {
    "code" : "126222",
    "display" : "Policlínico de la Fuerzas Armadas y de Orden",
    "definition" : "Policlínico de la Fuerzas Armadas y de Orden"
  },
  {
    "code" : "126225",
    "display" : "Clínica Croacia",
    "definition" : "Clínica Croacia"
  },
  {
    "code" : "126227",
    "display" : "Central Odontológica de Magallanes de 3era Zona Naval",
    "definition" : "Central Odontológica de Magallanes de 3era Zona Naval"
  },
  {
    "code" : "126606",
    "display" : "COSAM Punta Arenas",
    "definition" : "COSAM Punta Arenas"
  },
  {
    "code" : "126704",
    "display" : "Hospital Comunitario Cristina Calderón de Puerto Williams",
    "definition" : "Hospital Comunitario Cristina Calderón de Puerto Williams"
  },
  {
    "code" : "128109",
    "display" : "Hospital Provincial Dr. Rafael Avaría (Curanilahue)",
    "definition" : "Hospital Provincial Dr. Rafael Avaría (Curanilahue)"
  },
  {
    "code" : "128110",
    "display" : "Hospital de Lebu",
    "definition" : "Hospital de Lebu"
  },
  {
    "code" : "128111",
    "display" : "Hospital Intercultural Kallvu Llanka (Cañete)",
    "definition" : "Hospital Intercultural Kallvu Llanka (Cañete)"
  },
  {
    "code" : "128112",
    "display" : "Hospital de Contulmo",
    "definition" : "Hospital de Contulmo"
  },
  {
    "code" : "128113",
    "display" : "Hospital San Vicente de Arauco",
    "definition" : "Hospital San Vicente de Arauco"
  },
  {
    "code" : "128609",
    "display" : "COSAM Curanilahue",
    "definition" : "COSAM Curanilahue"
  },
  {
    "code" : "128610",
    "display" : "COSAM Lebu",
    "definition" : "COSAM Lebu"
  },
  {
    "code" : "128611",
    "display" : "COSAM Cañete",
    "definition" : "COSAM Cañete"
  },
  {
    "code" : "128613",
    "display" : "COSAM de Arauco",
    "definition" : "COSAM de Arauco"
  },
  {
    "code" : "129100",
    "display" : "Hospital Dr. Mauricio Heyermann (Angol)",
    "definition" : "Hospital Dr. Mauricio Heyermann (Angol)"
  },
  {
    "code" : "129101",
    "display" : "Hospital de Purén",
    "definition" : "Hospital de Purén"
  },
  {
    "code" : "129103",
    "display" : "Hospital de Collipulli",
    "definition" : "Hospital de Collipulli"
  },
  {
    "code" : "129104",
    "display" : "Hospital Dr. Dino Stagno M.(Traiguén)",
    "definition" : "Hospital Dr. Dino Stagno M.(Traiguén)"
  },
  {
    "code" : "129106",
    "display" : "Hospital San José de Victoria",
    "definition" : "Hospital San José de Victoria"
  },
  {
    "code" : "129107",
    "display" : "Hospital Dr. Oscar Hernández E.(Curacautín)",
    "definition" : "Hospital Dr. Oscar Hernández E.(Curacautín)"
  },
  {
    "code" : "129108",
    "display" : "Hospital de Lonquimay",
    "definition" : "Hospital de Lonquimay"
  },
  {
    "code" : "129233",
    "display" : "Clínica de la Asociación Chilena de Seguridad AChS Angol",
    "definition" : "Clínica de la Asociación Chilena de Seguridad AChS Angol"
  },
  {
    "code" : "129234",
    "display" : "Centro de Salud Gendarmería de Chile Angol",
    "definition" : "Centro de Salud Gendarmería de Chile Angol"
  },
  {
    "code" : "129238",
    "display" : "Consultorio Prefectura de Carabineros de Chile Malleco",
    "definition" : "Consultorio Prefectura de Carabineros de Chile Malleco"
  },
  {
    "code" : "133150",
    "display" : "Hospital de Castro",
    "definition" : "Hospital de Castro"
  },
  {
    "code" : "133155",
    "display" : "Hospital de Ancud",
    "definition" : "Hospital de Ancud"
  },
  {
    "code" : "133160",
    "display" : "Hospital Comunitario de Achao",
    "definition" : "Hospital Comunitario de Achao"
  },
  {
    "code" : "133165",
    "display" : "Hospital de Quellón",
    "definition" : "Hospital de Quellón"
  },
  {
    "code" : "133170",
    "display" : "Hospital Comunitario de Queilén",
    "definition" : "Hospital Comunitario de Queilén"
  },
  {
    "code" : "133201",
    "display" : "Centro Médico Austral",
    "definition" : "Centro Médico Austral"
  },
  {
    "code" : "133203",
    "display" : "Policlínico de la AChS Quellón",
    "definition" : "Policlínico de la AChS Quellón"
  },
  {
    "code" : "133204",
    "display" : "Policlínico de la AChS Ancud",
    "definition" : "Policlínico de la AChS Ancud"
  },
  {
    "code" : "133278",
    "display" : "Policlínico de la AChS Castro",
    "definition" : "Policlínico de la AChS Castro"
  },
  {
    "code" : "133281",
    "display" : "Policlínico Instituto de Seguridad del Trabajo de Ancud",
    "definition" : "Policlínico Instituto de Seguridad del Trabajo de Ancud"
  },
  {
    "code" : "133282",
    "display" : "Policlínico Instituto de Seguridad del Trabajo de Castro",
    "definition" : "Policlínico Instituto de Seguridad del Trabajo de Castro"
  },
  {
    "code" : "200000",
    "display" : "Centro Médico Kenal",
    "definition" : "Centro Médico Kenal"
  },
  {
    "code" : "200002",
    "display" : "Centro Médico CENTROMED",
    "definition" : "Centro Médico CENTROMED"
  },
  {
    "code" : "200003",
    "display" : "Integramédica Talca",
    "definition" : "Integramédica Talca"
  },
  {
    "code" : "200019",
    "display" : "Policlínico de la Asociación Chilena de Seguridad Coquimbo",
    "definition" : "Policlínico de la Asociación Chilena de Seguridad Coquimbo"
  },
  {
    "code" : "200022",
    "display" : "Policlínico Instituto de Seguridad del Trabajo de Arica",
    "definition" : "Policlínico Instituto de Seguridad del Trabajo de Arica"
  },
  {
    "code" : "200025",
    "display" : "Policlínico de Asociación Chilena de Seguridad",
    "definition" : "Policlínico de Asociación Chilena de Seguridad"
  },
  {
    "code" : "200027",
    "display" : "ESTABLECIMIENTO DE ATENCION ABIERTA CHICUREO (CLINICA LAS CONDES S.A)",
    "definition" : "ESTABLECIMIENTO DE ATENCION ABIERTA CHICUREO (CLINICA LAS CONDES S.A)"
  },
  {
    "code" : "200028",
    "display" : "Asociación Chilena de Seguridad AChS San Javier",
    "definition" : "Asociación Chilena de Seguridad AChS San Javier"
  },
  {
    "code" : "200029",
    "display" : "Asociación Chilena de Seguridad AChS Linares",
    "definition" : "Asociación Chilena de Seguridad AChS Linares"
  },
  {
    "code" : "200030",
    "display" : "Asociación Chilena de Seguridad AChS Constitución",
    "definition" : "Asociación Chilena de Seguridad AChS Constitución"
  },
  {
    "code" : "200031",
    "display" : "Centro Médico Integramédica Bio Bio",
    "definition" : "Centro Médico Integramédica Bio Bio"
  },
  {
    "code" : "200032",
    "display" : "Policlínico AChS Laja",
    "definition" : "Policlínico AChS Laja"
  },
  {
    "code" : "200033",
    "display" : "Policlínico Asociación Chilena de Seguridad AChS Tocopilla",
    "definition" : "Policlínico Asociación Chilena de Seguridad AChS Tocopilla"
  },
  {
    "code" : "200034",
    "display" : "Policíinico Asociación Chilena de Seguridad AChS Calama",
    "definition" : "Policíinico Asociación Chilena de Seguridad AChS Calama"
  },
  {
    "code" : "200035",
    "display" : "Policlínico Asociación Chilena de Seguridad AChS Mejillones",
    "definition" : "Policlínico Asociación Chilena de Seguridad AChS Mejillones"
  },
  {
    "code" : "200036",
    "display" : "Policlínico AChS Cabrero",
    "definition" : "Policlínico AChS Cabrero"
  },
  {
    "code" : "200039",
    "display" : "Asociación Chilena de Seguridad AChS La Calera",
    "definition" : "Asociación Chilena de Seguridad AChS La Calera"
  },
  {
    "code" : "200042",
    "display" : "COSAM Centro 2 de Rancagua",
    "definition" : "COSAM Centro 2 de Rancagua"
  },
  {
    "code" : "200043",
    "display" : "COSAM Norte Graneros",
    "definition" : "COSAM Norte Graneros"
  },
  {
    "code" : "200044",
    "display" : "COSAM Sur Doñihue",
    "definition" : "COSAM Sur Doñihue"
  },
  {
    "code" : "200046",
    "display" : "Diagnóstika",
    "definition" : "Diagnóstika"
  },
  {
    "code" : "200048",
    "display" : "Policlínico Asociación Chilena de Seguridad AChS Arauco",
    "definition" : "Policlínico Asociación Chilena de Seguridad AChS Arauco"
  },
  {
    "code" : "200049",
    "display" : "Policlínico Asociación Chilena de Seguridad AChS Cañete",
    "definition" : "Policlínico Asociación Chilena de Seguridad AChS Cañete"
  },
  {
    "code" : "200050",
    "display" : "Hospital Clínico Universidad de Los Andes",
    "definition" : "Hospital Clínico Universidad de Los Andes"
  },
  {
    "code" : "200053",
    "display" : "Clínica Ensenada",
    "definition" : "Clínica Ensenada"
  },
  {
    "code" : "200063",
    "display" : "Clínica Alemana de La Dehesa",
    "definition" : "Clínica Alemana de La Dehesa"
  },
  {
    "code" : "200064",
    "display" : "Integramédica Mall Plaza Sur",
    "definition" : "Integramédica Mall Plaza Sur"
  },
  {
    "code" : "200065",
    "display" : "Centro Médico Docente Asistencial Universidad San Sebastián",
    "definition" : "Centro Médico Docente Asistencial Universidad San Sebastián"
  },
  {
    "code" : "200066",
    "display" : "Sección Sanidad Puerto Montt de la Policía de Investigaciones de Chile",
    "definition" : "Sección Sanidad Puerto Montt de la Policía de Investigaciones de Chile"
  },
  {
    "code" : "200067",
    "display" : "Policlínico de la Mutual de Seguridad CChC Quellón",
    "definition" : "Policlínico de la Mutual de Seguridad CChC Quellón"
  },
  {
    "code" : "200068",
    "display" : "Policlínico de la Mutual de Seguridad CChC Castro",
    "definition" : "Policlínico de la Mutual de Seguridad CChC Castro"
  },
  {
    "code" : "200069",
    "display" : "Policlínico de Funcionarios de la Universidad de Los Lagos",
    "definition" : "Policlínico de Funcionarios de la Universidad de Los Lagos"
  },
  {
    "code" : "200070",
    "display" : "Centro Médico Osorno Salud",
    "definition" : "Centro Médico Osorno Salud"
  },
  {
    "code" : "200071",
    "display" : "Policlínico de la Mutual de Seguridad CChC Ancud",
    "definition" : "Policlínico de la Mutual de Seguridad CChC Ancud"
  },
  {
    "code" : "200073",
    "display" : "Centro de Salud Medicina Integral y Ejercicio",
    "definition" : "Centro de Salud Medicina Integral y Ejercicio"
  },
  {
    "code" : "200074",
    "display" : "Centro de Sangre Austral",
    "definition" : "Centro de Sangre Austral"
  },
  {
    "code" : "200079",
    "display" : "Policlínico Instituto de Seguridad del Trabajo de Curicó",
    "definition" : "Policlínico Instituto de Seguridad del Trabajo de Curicó"
  },
  {
    "code" : "200081",
    "display" : "Clínica Orema",
    "definition" : "Clínica Orema"
  },
  {
    "code" : "200088",
    "display" : "Integramédica Florida Vespucio",
    "definition" : "Integramédica Florida Vespucio"
  },
  {
    "code" : "200089",
    "display" : "Integramédica Santa Lucía",
    "definition" : "Integramédica Santa Lucía"
  },
  {
    "code" : "200090",
    "display" : "Clínica Policenter",
    "definition" : "Clínica Policenter"
  },
  {
    "code" : "200091",
    "display" : "Mirandes S.P.A.",
    "definition" : "Mirandes S.P.A."
  },
  {
    "code" : "200180",
    "display" : "Centro Médico Lifemed",
    "definition" : "Centro Médico Lifemed"
  },
  {
    "code" : "200190",
    "display" : "Policlínico Centro de Cumplimiento Penitenciario Iquique",
    "definition" : "Policlínico Centro de Cumplimiento Penitenciario Iquique"
  },
  {
    "code" : "200191",
    "display" : "Policlínico de Atención Primaria del Centro de Detención Preventiva de Pozo Almonte",
    "definition" : "Policlínico de Atención Primaria del Centro de Detención Preventiva de Pozo Almonte"
  },
  {
    "code" : "200193",
    "display" : "Clínica WLK",
    "definition" : "Clínica WLK"
  },
  {
    "code" : "200198",
    "display" : "Centro Médico HTS SpA",
    "definition" : "Centro Médico HTS SpA"
  },
  {
    "code" : "200200",
    "display" : "COSAM San José de Maipo",
    "definition" : "COSAM San José de Maipo"
  },
  {
    "code" : "200205",
    "display" : "Centro Médico y Dental Santa Catalina",
    "definition" : "Centro Médico y Dental Santa Catalina"
  },
  {
    "code" : "200209",
    "display" : "COSAM Rahue",
    "definition" : "COSAM Rahue"
  },
  {
    "code" : "200215",
    "display" : "Centro Médico y Dental Megasalud Quilicura",
    "definition" : "Centro Médico y Dental Megasalud Quilicura"
  },
  {
    "code" : "200218",
    "display" : "Centro Médico Clínica Hospital Profesor",
    "definition" : "Centro Médico Clínica Hospital Profesor"
  },
  {
    "code" : "200220",
    "display" : "Policlínico ACHS Curanilahue",
    "definition" : "Policlínico ACHS Curanilahue"
  },
  {
    "code" : "200222",
    "display" : "Consultorio Santa María Josefa",
    "definition" : "Consultorio Santa María Josefa"
  },
  {
    "code" : "200224",
    "display" : "Integramédica Rancagua",
    "definition" : "Integramédica Rancagua"
  },
  {
    "code" : "200226",
    "display" : "Centro Médico y Dental ISP",
    "definition" : "Centro Médico y Dental ISP"
  },
  {
    "code" : "200227",
    "display" : "Clínica Psiquiátrica Mida",
    "definition" : "Clínica Psiquiátrica Mida"
  },
  {
    "code" : "200228",
    "display" : "Centro Médico y Dental Servicio de Bienestar MOP",
    "definition" : "Centro Médico y Dental Servicio de Bienestar MOP"
  },
  {
    "code" : "200231",
    "display" : "Instituto Teletón Aysén",
    "definition" : "Instituto Teletón Aysén"
  },
  {
    "code" : "200234",
    "display" : "Clínica MEDS La Dehesa",
    "definition" : "Clínica MEDS La Dehesa"
  },
  {
    "code" : "200237",
    "display" : "MEDICAL POLICENTER SAN BERNARDO",
    "definition" : "MEDICAL POLICENTER SAN BERNARDO"
  },
  {
    "code" : "200239",
    "display" : "Instituto Teletón Iquique",
    "definition" : "Instituto Teletón Iquique"
  },
  {
    "code" : "200240",
    "display" : "Centro de Imagenología Médica Imagensalud",
    "definition" : "Centro de Imagenología Médica Imagensalud"
  },
  {
    "code" : "200244",
    "display" : "Instituto Teletón Temuco",
    "definition" : "Instituto Teletón Temuco"
  },
  {
    "code" : "200245",
    "display" : "Instituto Teletón Antofagasta",
    "definition" : "Instituto Teletón Antofagasta"
  },
  {
    "code" : "200249",
    "display" : "Instituto Teletón Del Maule",
    "definition" : "Instituto Teletón Del Maule"
  },
  {
    "code" : "200251",
    "display" : "Centro de Salud Esmeralda",
    "definition" : "Centro de Salud Esmeralda"
  },
  {
    "code" : "200252",
    "display" : "Centro de Salud La Araucana Salud",
    "definition" : "Centro de Salud La Araucana Salud"
  },
  {
    "code" : "200253",
    "display" : "Centro de Salud La Araucana Salud",
    "definition" : "Centro de Salud La Araucana Salud"
  },
  {
    "code" : "200256",
    "display" : "COSAM Coyhaique",
    "definition" : "COSAM Coyhaique"
  },
  {
    "code" : "200262",
    "display" : "Policlínico Universidad Pedro de Valdivia",
    "definition" : "Policlínico Universidad Pedro de Valdivia"
  },
  {
    "code" : "200271",
    "display" : "COSAM La Calera",
    "definition" : "COSAM La Calera"
  },
  {
    "code" : "200274",
    "display" : "Policlínico Centro de Cumplimiento Penitenciario Femenino de Talca",
    "definition" : "Policlínico Centro de Cumplimiento Penitenciario Femenino de Talca"
  },
  {
    "code" : "200275",
    "display" : "Policlínico Centro de Cumplimiento Penitenciario de Talca",
    "definition" : "Policlínico Centro de Cumplimiento Penitenciario de Talca"
  },
  {
    "code" : "200276",
    "display" : "Policlínico de Funcionarios de Gendarmería de Chile - Talca",
    "definition" : "Policlínico de Funcionarios de Gendarmería de Chile - Talca"
  },
  {
    "code" : "200277",
    "display" : "Policlínico Centro de Cumplimiento Penitenciario de Cauquenes",
    "definition" : "Policlínico Centro de Cumplimiento Penitenciario de Cauquenes"
  },
  {
    "code" : "200278",
    "display" : "Policlínico Centro de Cumplimiento Penitenciario de Curicó",
    "definition" : "Policlínico Centro de Cumplimiento Penitenciario de Curicó"
  },
  {
    "code" : "200279",
    "display" : "Policlínico Centro de Cumplimiento Penitenciario de Linares",
    "definition" : "Policlínico Centro de Cumplimiento Penitenciario de Linares"
  },
  {
    "code" : "200281",
    "display" : "Centro Médico Docente Asistencial Universidad San Sebastián",
    "definition" : "Centro Médico Docente Asistencial Universidad San Sebastián"
  },
  {
    "code" : "200286",
    "display" : "Centro Médico Docente Asistencial Universidad Santo Tomás",
    "definition" : "Centro Médico Docente Asistencial Universidad Santo Tomás"
  },
  {
    "code" : "200289",
    "display" : "COSAM Norte",
    "definition" : "COSAM Norte"
  },
  {
    "code" : "200294",
    "display" : "Centro Médico Manuel Montt ex Centro Clínico Integral Las Lilas",
    "definition" : "Centro Médico Manuel Montt ex Centro Clínico Integral Las Lilas"
  },
  {
    "code" : "200298",
    "display" : "Centro Médico Medicenter Puerto Montt",
    "definition" : "Centro Médico Medicenter Puerto Montt"
  },
  {
    "code" : "200306",
    "display" : "Integramédica Viña del Mar",
    "definition" : "Integramédica Viña del Mar"
  },
  {
    "code" : "200308",
    "display" : "Centro Médico - PDI",
    "definition" : "Centro Médico - PDI"
  },
  {
    "code" : "200309",
    "display" : "Policlínico Institucional de Gendarmería de Chile (Puerto Montt)",
    "definition" : "Policlínico Institucional de Gendarmería de Chile (Puerto Montt)"
  },
  {
    "code" : "200310",
    "display" : "Integramédica Sucursal Plaza Egaña",
    "definition" : "Integramédica Sucursal Plaza Egaña"
  },
  {
    "code" : "200336",
    "display" : "Hospital de Día Infanto Adolescente Rayen Milla",
    "definition" : "Hospital de Día Infanto Adolescente Rayen Milla"
  },
  {
    "code" : "200338",
    "display" : "Instituto Teletón Valdivia",
    "definition" : "Instituto Teletón Valdivia"
  },
  {
    "code" : "200339",
    "display" : "Centro de Referencia de Salud Municipal",
    "definition" : "Centro de Referencia de Salud Municipal"
  },
  {
    "code" : "200341",
    "display" : "COSAM Domingo Asún Salazar",
    "definition" : "COSAM Domingo Asún Salazar"
  },
  {
    "code" : "200353",
    "display" : "Centro de Salud Médico Dental Universitario de la Universidad de Los Lagos",
    "definition" : "Centro de Salud Médico Dental Universitario de la Universidad de Los Lagos"
  },
  {
    "code" : "200358",
    "display" : "Integramédica Copiapó",
    "definition" : "Integramédica Copiapó"
  },
  {
    "code" : "200362",
    "display" : "COSAM San Felipe",
    "definition" : "COSAM San Felipe"
  },
  {
    "code" : "200373",
    "display" : "Centro de Imagenología y Diagnóstico",
    "definition" : "Centro de Imagenología y Diagnóstico"
  },
  {
    "code" : "200384",
    "display" : "Centro Traumatológico Viña del Mar",
    "definition" : "Centro Traumatológico Viña del Mar"
  },
  {
    "code" : "200387",
    "display" : "Centro Médico Imagensalud",
    "definition" : "Centro Médico Imagensalud"
  },
  {
    "code" : "200388",
    "display" : "Centro Médico y Dental La Serena IVa. Zona de Carabineros Coquimbo",
    "definition" : "Centro Médico y Dental La Serena IVa. Zona de Carabineros Coquimbo"
  },
  {
    "code" : "200416",
    "display" : "Centro Médico y Laboratorio Clínico San Rafael",
    "definition" : "Centro Médico y Laboratorio Clínico San Rafael"
  },
  {
    "code" : "200441",
    "display" : "Centro Médico y Dental Clínica Bilbao",
    "definition" : "Centro Médico y Dental Clínica Bilbao"
  },
  {
    "code" : "200445",
    "display" : "COSAM Oriente",
    "definition" : "COSAM Oriente"
  },
  {
    "code" : "200448",
    "display" : "Unidad de Salud del Establecimiento Penitenciario de La Serena",
    "definition" : "Unidad de Salud del Establecimiento Penitenciario de La Serena"
  },
  {
    "code" : "200451",
    "display" : "Instituto Medico Infantil",
    "definition" : "Instituto Medico Infantil"
  },
  {
    "code" : "200457",
    "display" : "Centro Médico Clínica Las Condes_Peñalolen",
    "definition" : "Centro Médico Clínica Las Condes_Peñalolen"
  },
  {
    "code" : "200460",
    "display" : "Centro de Salud Mutual CChC Vallenar",
    "definition" : "Centro de Salud Mutual CChC Vallenar"
  },
  {
    "code" : "200461",
    "display" : "Policlínico de Funcionarios de Gendarmería de Chile La Serena",
    "definition" : "Policlínico de Funcionarios de Gendarmería de Chile La Serena"
  },
  {
    "code" : "200462",
    "display" : "COSAM Los Andes",
    "definition" : "COSAM Los Andes"
  },
  {
    "code" : "200463",
    "display" : "Instituto Teletón Atacama",
    "definition" : "Instituto Teletón Atacama"
  },
  {
    "code" : "200465",
    "display" : "Instituto Teletón Calama",
    "definition" : "Instituto Teletón Calama"
  },
  {
    "code" : "200466",
    "display" : "Unidad de Imagenología Sorema del Sur",
    "definition" : "Unidad de Imagenología Sorema del Sur"
  },
  {
    "code" : "200468",
    "display" : "COSAM CEIF Puente Alto Norte",
    "definition" : "COSAM CEIF Puente Alto Norte"
  },
  {
    "code" : "200476",
    "display" : "Centro Médico Medicien",
    "definition" : "Centro Médico Medicien"
  },
  {
    "code" : "200481",
    "display" : "Centro Médico y Dental Copiapó IIIa Zona Carabineros Atacama",
    "definition" : "Centro Médico y Dental Copiapó IIIa Zona Carabineros Atacama"
  },
  {
    "code" : "200484",
    "display" : "Centro Médico Medisan",
    "definition" : "Centro Médico Medisan"
  },
  {
    "code" : "200486",
    "display" : "Clínica Bupa Santiago",
    "definition" : "Clínica Bupa Santiago"
  },
  {
    "code" : "200497",
    "display" : "Centro de Salud IST Coquimbo",
    "definition" : "Centro de Salud IST Coquimbo"
  },
  {
    "code" : "200502",
    "display" : "Policlínico Instituto de Seguridad del Trabajo de San Antonio",
    "definition" : "Policlínico Instituto de Seguridad del Trabajo de San Antonio"
  },
  {
    "code" : "200503",
    "display" : "Policlínico Instituto de Seguridad del Trabajo de Quillota",
    "definition" : "Policlínico Instituto de Seguridad del Trabajo de Quillota"
  },
  {
    "code" : "200505",
    "display" : "Centro Médico Imagenología Sur Cruz Médica",
    "definition" : "Centro Médico Imagenología Sur Cruz Médica"
  },
  {
    "code" : "200507",
    "display" : "Policlínico Centro de Cumplimiento Penitenciario de Osorno",
    "definition" : "Policlínico Centro de Cumplimiento Penitenciario de Osorno"
  },
  {
    "code" : "200508",
    "display" : "Centro Oncológico del Norte (CON)",
    "definition" : "Centro Oncológico del Norte (CON)"
  },
  {
    "code" : "200512",
    "display" : "Centro de Diagnóstico e Imágenes del Sur - CEDISUR SpA",
    "definition" : "Centro de Diagnóstico e Imágenes del Sur - CEDISUR SpA"
  },
  {
    "code" : "200520",
    "display" : "Policlínico Instituto de Seguridad del Trabajo de Quilpué",
    "definition" : "Policlínico Instituto de Seguridad del Trabajo de Quilpué"
  },
  {
    "code" : "200533",
    "display" : "Policlínico Instituto de Seguridad del Trabajo de San Felipe",
    "definition" : "Policlínico Instituto de Seguridad del Trabajo de San Felipe"
  },
  {
    "code" : "200534",
    "display" : "Policlínico Instituto de Seguridad del Trabajo de Los Andes",
    "definition" : "Policlínico Instituto de Seguridad del Trabajo de Los Andes"
  },
  {
    "code" : "200541",
    "display" : "Clínica IMET",
    "definition" : "Clínica IMET"
  },
  {
    "code" : "200558",
    "display" : "COSAM Ñuble",
    "definition" : "COSAM Ñuble"
  },
  {
    "code" : "200559",
    "display" : "Clínica Fleming Arica",
    "definition" : "Clínica Fleming Arica"
  },
  {
    "code" : "200563",
    "display" : "Hospital Clínico Universidad de Antofagasta",
    "definition" : "Hospital Clínico Universidad de Antofagasta"
  },
  {
    "code" : "200566",
    "display" : "Clínica Monteverde SpA",
    "definition" : "Clínica Monteverde SpA"
  },
  {
    "code" : "200568",
    "display" : "Centro de Salud Mutual CChC de Los Andes",
    "definition" : "Centro de Salud Mutual CChC de Los Andes"
  },
  {
    "code" : "200579",
    "display" : "Policlínico De La Compañía Minera Cerro Colorado S.A.",
    "definition" : "Policlínico De La Compañía Minera Cerro Colorado S.A."
  },
  {
    "code" : "200587",
    "display" : "Centro de Salud Universidad de Santiago de Chile",
    "definition" : "Centro de Salud Universidad de Santiago de Chile"
  },
  {
    "code" : "200590",
    "display" : "Centro de Resolución de Especialidades Ambulatorias (CREA)",
    "definition" : "Centro de Resolución de Especialidades Ambulatorias (CREA)"
  },
  {
    "code" : "200596",
    "display" : "Santiago Medical Institute SPA",
    "definition" : "Santiago Medical Institute SPA"
  },
  {
    "code" : "200600",
    "display" : "Centro Odontológico y Médico San Cristóbal",
    "definition" : "Centro Odontológico y Médico San Cristóbal"
  },
  {
    "code" : "200602",
    "display" : "Clínica Oncológica CIDO SpA",
    "definition" : "Clínica Oncológica CIDO SpA"
  },
  {
    "code" : "200606",
    "display" : "Centro Cardiovascular Integral CARDIONORT - Vacunatorio",
    "definition" : "Centro Cardiovascular Integral CARDIONORT - Vacunatorio"
  },
  {
    "code" : "200610",
    "display" : "Policlínico Centro de Cumplimiento Penitenciario de Copiapó",
    "definition" : "Policlínico Centro de Cumplimiento Penitenciario de Copiapó"
  },
  {
    "code" : "200612",
    "display" : "Instituto Teletón Coquimbo",
    "definition" : "Instituto Teletón Coquimbo"
  },
  {
    "code" : "200613",
    "display" : "Centro Médico CEMICH",
    "definition" : "Centro Médico CEMICH"
  },
  {
    "code" : "200616",
    "display" : "Clínica Alcudia",
    "definition" : "Clínica Alcudia"
  },
  {
    "code" : "200624",
    "display" : "COSAM Los Cerros",
    "definition" : "COSAM Los Cerros"
  },
  {
    "code" : "200625",
    "display" : "COSAM Ayelén",
    "definition" : "COSAM Ayelén"
  },
  {
    "code" : "200631",
    "display" : "Centro Médico Monte Vital",
    "definition" : "Centro Médico Monte Vital"
  },
  {
    "code" : "200633",
    "display" : "Policlínico Gendarmería Regional de Atacama",
    "definition" : "Policlínico Gendarmería Regional de Atacama"
  },
  {
    "code" : "200634",
    "display" : "Clínica de Enfermería del Centro de Detención Preventiva de Vallenar",
    "definition" : "Clínica de Enfermería del Centro de Detención Preventiva de Vallenar"
  },
  {
    "code" : "200636",
    "display" : "Centro Médico CENTROMED",
    "definition" : "Centro Médico CENTROMED"
  },
  {
    "code" : "200641",
    "display" : "Clínica Cima Salud",
    "definition" : "Clínica Cima Salud"
  },
  {
    "code" : "200650",
    "display" : "Centro Médico Clínica Alemana de Chicureo",
    "definition" : "Centro Médico Clínica Alemana de Chicureo"
  },
  {
    "code" : "200696",
    "display" : "Centro Médico San Jorge Red de Salud UC CHRISTUS",
    "definition" : "Centro Médico San Jorge Red de Salud UC CHRISTUS"
  },
  {
    "code" : "200697",
    "display" : "Centro Médico Alcántara Red de Salud UC CHRISTUS",
    "definition" : "Centro Médico Alcántara Red de Salud UC CHRISTUS"
  },
  {
    "code" : "200698",
    "display" : "Centro Médico Lira Red de Salud UC CHRISTUS",
    "definition" : "Centro Médico Lira Red de Salud UC CHRISTUS"
  },
  {
    "code" : "200699",
    "display" : "Centro de Cáncer Red de Salud UC CHRISTUS",
    "definition" : "Centro de Cáncer Red de Salud UC CHRISTUS"
  },
  {
    "code" : "200700",
    "display" : "Centro Diagnóstico  Clinica  Magallanes",
    "definition" : "Centro Diagnóstico  Clinica  Magallanes"
  },
  {
    "code" : "200701",
    "display" : "PAME Hospital Dr. Juan Noé Crevani (Arica)",
    "definition" : "PAME Hospital Dr. Juan Noé Crevani (Arica)"
  },
  {
    "code" : "200703",
    "display" : "Hospital modular de Campaña Hospital San José Antiguo",
    "definition" : "Hospital modular de Campaña Hospital San José Antiguo"
  },
  {
    "code" : "200715",
    "display" : "Centro de Especialidades Médicas Red de Salud UC CHRISTUS",
    "definition" : "Centro de Especialidades Médicas Red de Salud UC CHRISTUS"
  },
  {
    "code" : "200716",
    "display" : "Clínica Intermedical",
    "definition" : "Clínica Intermedical"
  },
  {
    "code" : "200722",
    "display" : "Estadio Tierra de Campeones",
    "definition" : "Estadio Tierra de Campeones"
  },
  {
    "code" : "200723",
    "display" : "Hospítal Ovalle Antiguo",
    "definition" : "Hospítal Ovalle Antiguo"
  },
  {
    "code" : "200725",
    "display" : "Dispositivo Modular de Salud Hospital Guillermo Grant Benavente",
    "definition" : "Dispositivo Modular de Salud Hospital Guillermo Grant Benavente"
  },
  {
    "code" : "200789",
    "display" : "Clínica San Agustín de Melipilla",
    "definition" : "Clínica San Agustín de Melipilla"
  },
  {
    "code" : "200790",
    "display" : "Immunissalud Ltda.",
    "definition" : "Immunissalud Ltda."
  },
  {
    "code" : "200842",
    "display" : "Clínica Oftalmológica Providencia",
    "definition" : "Clínica Oftalmológica Providencia"
  },
  {
    "code" : "200843",
    "display" : "Instituto Radiológico Providencia",
    "definition" : "Instituto Radiológico Providencia"
  },
  {
    "code" : "200844",
    "display" : "ANDESMEDICA",
    "definition" : "ANDESMEDICA"
  },
  {
    "code" : "200845",
    "display" : "Corporación Renal Infantil Mater",
    "definition" : "Corporación Renal Infantil Mater"
  },
  {
    "code" : "200846",
    "display" : "Centro de diagnóstico y resonancia - Anestimagen",
    "definition" : "Centro de diagnóstico y resonancia - Anestimagen"
  },
  {
    "code" : "200866",
    "display" : "Centro de Salud Familiar Matrona Rosa Vascopé Zarzola",
    "definition" : "Centro de Salud Familiar Matrona Rosa Vascopé Zarzola"
  },
  {
    "code" : "200869",
    "display" : "Centro de Evaluación del Trabajo (CET) Santiago Centro",
    "definition" : "Centro de Evaluación del Trabajo (CET) Santiago Centro"
  },
  {
    "code" : "200870",
    "display" : "Centro de Evaluación el Trabajo (CET) Arauco",
    "definition" : "Centro de Evaluación el Trabajo (CET) Arauco"
  },
  {
    "code" : "200871",
    "display" : "Teledoc",
    "definition" : "Teledoc"
  },
  {
    "code" : "200873",
    "display" : "Centro de Especialidades Clinicas spa (medicec)",
    "definition" : "Centro de Especialidades Clinicas spa (medicec)"
  },
  {
    "code" : "200874",
    "display" : "CER",
    "definition" : "CER"
  },
  {
    "code" : "106207",
    "display" : "Centro CONIN Valparaíso",
    "definition" : "Centro CONIN Valparaíso"
  },
  {
    "code" : "112243",
    "display" : "Centro CONIN Credes",
    "definition" : "Centro CONIN Credes"
  },
  {
    "code" : "117204",
    "display" : "Centro CONIN Chillán",
    "definition" : "Centro CONIN Chillán"
  },
  {
    "code" : "121207",
    "display" : "Centro CONIN Temuco",
    "definition" : "Centro CONIN Temuco"
  },
  {
    "code" : "122204",
    "display" : "Centro CONIN Valdivia",
    "definition" : "Centro CONIN Valdivia"
  },
  {
    "code" : "200717",
    "display" : "Complejo Asistencial Padre las Casas",
    "definition" : "Complejo Asistencial Padre las Casas"
  },
  {
    "code" : "201017",
    "display" : "Complejo Penitenciario Femenino de Arica",
    "definition" : "Complejo Penitenciario Femenino de Arica"
  },
  {
    "code" : "201084",
    "display" : "Anexo Sociosanitario Contulmo",
    "definition" : "Anexo Sociosanitario Contulmo"
  },
  {
    "code" : "201012",
    "display" : "Policlínico de la III Brigada de la Fuerza Aérea de Chile",
    "definition" : "Policlínico de la III Brigada de la Fuerza Aérea de Chile"
  },
  {
    "code" : "201089",
    "display" : "Centro Médico Diagnomedic",
    "definition" : "Centro Médico Diagnomedic"
  },
  {
    "code" : "201046",
    "display" : "CLINICA CUMBRES Salud",
    "definition" : "CLINICA CUMBRES Salud"
  },
  {
    "code" : "200915",
    "display" : "Clínica de Atención Ambulatoria Mutual de Seguridad Coronel",
    "definition" : "Clínica de Atención Ambulatoria Mutual de Seguridad Coronel"
  },
  {
    "code" : "201080",
    "display" : "Centro Médico COALIVI",
    "definition" : "Centro Médico COALIVI"
  },
  {
    "code" : "118214",
    "display" : "Centro Penitenciario",
    "definition" : "Centro Penitenciario"
  },
  {
    "code" : "200410",
    "display" : "Centro Médico Cauquenes",
    "definition" : "Centro Médico Cauquenes"
  },
  {
    "code" : "200918",
    "display" : "Centro de especialidades medicas Aitue",
    "definition" : "Centro de especialidades medicas Aitue"
  },
  {
    "code" : "201064",
    "display" : "CENTRO CLINICO SANFURGO",
    "definition" : "CENTRO CLINICO SANFURGO"
  },
  {
    "code" : "201073",
    "display" : "Instituto de Seguridad del Trabajo (Rancagua)",
    "definition" : "Instituto de Seguridad del Trabajo (Rancagua)"
  },
  {
    "code" : "200959",
    "display" : "CIMEK",
    "definition" : "CIMEK"
  },
  {
    "code" : "200986",
    "display" : "Centro de Salud Santa Catalina Salud Paine",
    "definition" : "Centro de Salud Santa Catalina Salud Paine"
  },
  {
    "code" : "201098",
    "display" : "Centro Médico KINEROD",
    "definition" : "Centro Médico KINEROD"
  },
  {
    "code" : "200886",
    "display" : "Centro Médico Clínica Maitenes - Talagante",
    "definition" : "Centro Médico Clínica Maitenes - Talagante"
  },
  {
    "code" : "201040",
    "display" : "Centro Medico de Clínica Maitenes Peñaflor",
    "definition" : "Centro Medico de Clínica Maitenes Peñaflor"
  },
  {
    "code" : "200916",
    "display" : "Centro Médico MAGNAVIDA",
    "definition" : "Centro Médico MAGNAVIDA"
  },
  {
    "code" : "200902",
    "display" : "Servicios Médicos C y C",
    "definition" : "Servicios Médicos C y C"
  },
  {
    "code" : "200888",
    "display" : "Centro Médico Vida Integra Maipú",
    "definition" : "Centro Médico Vida Integra Maipú"
  },
  {
    "code" : "200890",
    "display" : "Centro Clínico Ochagavía",
    "definition" : "Centro Clínico Ochagavía"
  },
  {
    "code" : "113218",
    "display" : "Clínica Psiquiátrica Nelly Vergara",
    "definition" : "Clínica Psiquiátrica Nelly Vergara"
  },
  {
    "code" : "201035",
    "display" : "INTEGRAMEDICA S.A. Sucursal Peñalolen",
    "definition" : "INTEGRAMEDICA S.A. Sucursal Peñalolen"
  },
  {
    "code" : "111207",
    "display" : "Clínica Santa Inés",
    "definition" : "Clínica Santa Inés"
  },
  {
    "code" : "200917",
    "display" : "Instituto Oftalmológico Dr. David Bitran",
    "definition" : "Instituto Oftalmológico Dr. David Bitran"
  },
  {
    "code" : "200892",
    "display" : "JB Medical Test SpA",
    "definition" : "JB Medical Test SpA"
  },
  {
    "code" : "200893",
    "display" : "Centro de Atencion Integral Merced",
    "definition" : "Centro de Atencion Integral Merced"
  },
  {
    "code" : "110601",
    "display" : "Consultorio Coaniquem",
    "definition" : "Consultorio Coaniquem"
  },
  {
    "code" : "200904",
    "display" : "AMIM",
    "definition" : "AMIM"
  },
  {
    "code" : "200895",
    "display" : "Centro de Atencion Integral Providencia",
    "definition" : "Centro de Atencion Integral Providencia"
  },
  {
    "code" : "200905",
    "display" : "Orlandi Oncología",
    "definition" : "Orlandi Oncología"
  },
  {
    "code" : "200937",
    "display" : "SanaSalud Pedro de Valdivia",
    "definition" : "SanaSalud Pedro de Valdivia"
  },
  {
    "code" : "201014",
    "display" : "INTEGRAMEDICA S.A. SUCURSAL LOS DOMINICOS",
    "definition" : "INTEGRAMEDICA S.A. SUCURSAL LOS DOMINICOS"
  },
  {
    "code" : "201006",
    "display" : "Centro de la Vision Filial Clinica Las Condes",
    "definition" : "Centro de la Vision Filial Clinica Las Condes"
  },
  {
    "code" : "200897",
    "display" : "ENSalud",
    "definition" : "ENSalud"
  },
  {
    "code" : "200901",
    "display" : "Instituto Europeo del Sueño",
    "definition" : "Instituto Europeo del Sueño"
  },
  {
    "code" : "200354",
    "display" : "Clínica Milano",
    "definition" : "Clínica Milano"
  },
  {
    "code" : "200894",
    "display" : "Centro de Cadera Dr. Mardones",
    "definition" : "Centro de Cadera Dr. Mardones"
  },
  {
    "code" : "200898",
    "display" : "Centro Medico Huertos Familiares",
    "definition" : "Centro Medico Huertos Familiares"
  },
  {
    "code" : "201075",
    "display" : "Centro Respiratorio Integral Cenresin Ltda",
    "definition" : "Centro Respiratorio Integral Cenresin Ltda"
  },
  {
    "code" : "201088",
    "display" : "Centro Médico Novomed",
    "definition" : "Centro Médico Novomed"
  },
  {
    "code" : "200885",
    "display" : "Centro de Salud Mutual CCHC Quillota",
    "definition" : "Centro de Salud Mutual CCHC Quillota"
  },
  {
    "code" : "200884",
    "display" : "Centro de Salud Mutual CCHC La Calera",
    "definition" : "Centro de Salud Mutual CCHC La Calera"
  },
  {
    "code" : "200909",
    "display" : "Centro Médico EAD",
    "definition" : "Centro Médico EAD"
  },
  {
    "code" : "200956",
    "display" : "Centro Médico del Norte",
    "definition" : "Centro Médico del Norte"
  },
  {
    "code" : "200954",
    "display" : "Geovida ltda",
    "definition" : "Geovida ltda"
  },
  {
    "code" : "200982",
    "display" : "Centro Médico de Salud Laboral KUNZA Ltda.",
    "definition" : "Centro Médico de Salud Laboral KUNZA Ltda."
  },
  {
    "code" : "200953",
    "display" : "Instituto Integral de Salud Ocupacional IISO",
    "definition" : "Instituto Integral de Salud Ocupacional IISO"
  },
  {
    "code" : "200567",
    "display" : "Prevelab - PrevenirSalud",
    "definition" : "Prevelab - PrevenirSalud"
  },
  {
    "code" : "200883",
    "display" : "Policlínico Mutual de Seguridad C.CH.C",
    "definition" : "Policlínico Mutual de Seguridad C.CH.C"
  },
  {
    "code" : "201081",
    "display" : "Corpus Salud Laboral Ltda.",
    "definition" : "Corpus Salud Laboral Ltda."
  },
  {
    "code" : "103201",
    "display" : "Hospital Cruz del Norte",
    "definition" : "Hospital Cruz del Norte"
  },
  {
    "code" : "200908",
    "display" : "Policlínico Teck Quebrada Blanca",
    "definition" : "Policlínico Teck Quebrada Blanca"
  },
  {
    "code" : "201100",
    "display" : "Centro de Atención en Salud \"Nursing Care\"",
    "definition" : "Centro de Atención en Salud \"Nursing Care\""
  },
  {
    "code" : "101212",
    "display" : "Clínica San Agustín",
    "definition" : "Clínica San Agustín"
  },
  {
    "code" : "201117",
    "display" : "Integramedica Independencia",
    "definition" : "Integramedica Independencia"
  },
  {
    "code" : "201119",
    "display" : "Centro Dental REDSalud La Dehesa",
    "definition" : "Centro Dental REDSalud La Dehesa"
  },
  {
    "code" : "201122",
    "display" : "Workmed Salud Ocupacional",
    "definition" : "Workmed Salud Ocupacional"
  },
  {
    "code" : "201124",
    "display" : "Clínica Apoquindo",
    "definition" : "Clínica Apoquindo"
  },
  {
    "code" : "201133",
    "display" : "Centro Clinico Pasteur",
    "definition" : "Centro Clinico Pasteur"
  },
  {
    "code" : "201134",
    "display" : "Clínica Fleming",
    "definition" : "Clínica Fleming"
  },
  {
    "code" : "201141",
    "display" : "Centro Be Fine",
    "definition" : "Centro Be Fine"
  },
  {
    "code" : "201146",
    "display" : "Centro Medico y Dental Del Valle",
    "definition" : "Centro Medico y Dental Del Valle"
  },
  {
    "code" : "201149",
    "display" : "CENTRO DE ATENCION DE Salud FLUOR MUTUAL DE SEGURIDAD DE LA CAMARA CHILENA DE LA CONSTRUCCION",
    "definition" : "CENTRO DE ATENCION DE Salud FLUOR MUTUAL DE SEGURIDAD DE LA CAMARA CHILENA DE LA CONSTRUCCION"
  },
  {
    "code" : "201153",
    "display" : "Salud y Seguridad Lickan Antai SpA",
    "definition" : "Salud y Seguridad Lickan Antai SpA"
  },
  {
    "code" : "201155",
    "display" : "Centro Médico Vitacura",
    "definition" : "Centro Médico Vitacura"
  },
  {
    "code" : "201157",
    "display" : "Centro Médico y Dental Arauco Salud",
    "definition" : "Centro Médico y Dental Arauco Salud"
  },
  {
    "code" : "201160",
    "display" : "BUPA SPORT",
    "definition" : "BUPA SPORT"
  },
  {
    "code" : "201166",
    "display" : "Centro de Salud Mutual CChC Valparaíso",
    "definition" : "Centro de Salud Mutual CChC Valparaíso"
  },
  {
    "code" : "201168",
    "display" : "Vital Medical Center",
    "definition" : "Vital Medical Center"
  },
  {
    "code" : "201172",
    "display" : "Centro Médico RedSalud Barrio Independencia",
    "definition" : "Centro Médico RedSalud Barrio Independencia"
  },
  {
    "code" : "201173",
    "display" : "Centro Médico del Trabajador Providencia",
    "definition" : "Centro Médico del Trabajador Providencia"
  },
  {
    "code" : "201174",
    "display" : "Centro Radiologico RADYMED",
    "definition" : "Centro Radiologico RADYMED"
  },
  {
    "code" : "201182",
    "display" : "MEGASalud Agustinas",
    "definition" : "MEGASalud Agustinas"
  },
  {
    "code" : "201183",
    "display" : "CMT Salud Santiago Centro",
    "definition" : "CMT Salud Santiago Centro"
  },
  {
    "code" : "201184",
    "display" : "CMT Salud La Florida",
    "definition" : "CMT Salud La Florida"
  },
  {
    "code" : "201185",
    "display" : "CMT Salud Concepción",
    "definition" : "CMT Salud Concepción"
  },
  {
    "code" : "201186",
    "display" : "CMT Salud La Serena",
    "definition" : "CMT Salud La Serena"
  },
  {
    "code" : "201188",
    "display" : "Centro Atencion de Salud Mutual Providencia",
    "definition" : "Centro Atencion de Salud Mutual Providencia"
  },
  {
    "code" : "201189",
    "display" : "Nucleo Salud Valparaíso",
    "definition" : "Nucleo Salud Valparaíso"
  },
  {
    "code" : "201190",
    "display" : "Centro Médico Arauco",
    "definition" : "Centro Médico Arauco"
  },
  {
    "code" : "201192",
    "display" : "Clínica Astra Alameda",
    "definition" : "Clínica Astra Alameda"
  },
  {
    "code" : "201196",
    "display" : "SONORAD II - Huerfanos",
    "definition" : "SONORAD II - Huerfanos"
  },
  {
    "code" : "201197",
    "display" : "RedSalud Ñuñoa",
    "definition" : "RedSalud Ñuñoa"
  },
  {
    "code" : "201198",
    "display" : "SONORAD La Florida",
    "definition" : "SONORAD La Florida"
  },
  {
    "code" : "201199",
    "display" : "SONORAD Las Bellotas",
    "definition" : "SONORAD Las Bellotas"
  },
  {
    "code" : "201200",
    "display" : "IntegraMédica S.A. Maipú",
    "definition" : "IntegraMédica S.A. Maipú"
  },
  {
    "code" : "201202",
    "display" : "Corporación Nacional del Cáncer",
    "definition" : "Corporación Nacional del Cáncer"
  },
  {
    "code" : "201205",
    "display" : "Médicos de Cuba",
    "definition" : "Médicos de Cuba"
  },
  {
    "code" : "201208",
    "display" : "Instituto de la Visión",
    "definition" : "Instituto de la Visión"
  },
  {
    "code" : "201210",
    "display" : "MEDIES Centro Médico SpA",
    "definition" : "MEDIES Centro Médico SpA"
  },
  {
    "code" : "201211",
    "display" : "Sciensolutions SPA",
    "definition" : "Sciensolutions SPA"
  },
  {
    "code" : "201213",
    "display" : "Centro Médico Total Salud",
    "definition" : "Centro Médico Total Salud"
  },
  {
    "code" : "201216",
    "display" : "Labotest",
    "definition" : "Labotest"
  },
  {
    "code" : "201228",
    "display" : "Clínica Boza Vallenar",
    "definition" : "Clínica Boza Vallenar"
  },
  {
    "code" : "201231",
    "display" : "Centro Médico Docente Asistencial USS",
    "definition" : "Centro Médico Docente Asistencial USS"
  },
  {
    "code" : "201239",
    "display" : "Centro Ecografico Kaisen",
    "definition" : "Centro Ecografico Kaisen"
  },
  {
    "code" : "201244",
    "display" : "Sala de Procedimientos Invasivos IST, Copiapó",
    "definition" : "Sala de Procedimientos Invasivos IST, Copiapó"
  },
  {
    "code" : "201246",
    "display" : "Policlínico IST Valdivia",
    "definition" : "Policlínico IST Valdivia"
  },
  {
    "code" : "201250",
    "display" : "Centro Médico Vitalmed",
    "definition" : "Centro Médico Vitalmed"
  },
  {
    "code" : "201254",
    "display" : "Centro Radiológico Varas SPA",
    "definition" : "Centro Radiológico Varas SPA"
  },
  {
    "code" : "201267",
    "display" : "Clínica Alonso de Córdova",
    "definition" : "Clínica Alonso de Córdova"
  },
  {
    "code" : "201268",
    "display" : "Medicenter Recoleta",
    "definition" : "Medicenter Recoleta"
  },
  {
    "code" : "201270",
    "display" : "Medicenter Puente Alto",
    "definition" : "Medicenter Puente Alto"
  },
  {
    "code" : "201272",
    "display" : "CLÍNICA NUCLEO Salud OCHAGAVIA",
    "definition" : "CLÍNICA NUCLEO Salud OCHAGAVIA"
  },
  {
    "code" : "201281",
    "display" : "Centro de Apoyo para Diagnóstico y Tratamiento Médico CADYTM",
    "definition" : "Centro de Apoyo para Diagnóstico y Tratamiento Médico CADYTM"
  },
  {
    "code" : "201282",
    "display" : "CENTROS MÉDICOS JENNER SPA",
    "definition" : "CENTROS MÉDICOS JENNER SPA"
  },
  {
    "code" : "201285",
    "display" : "AQUAMED SPA",
    "definition" : "AQUAMED SPA"
  },
  {
    "code" : "201286",
    "display" : "Centro Traumatologico Quillota Imagen Ltda",
    "definition" : "Centro Traumatologico Quillota Imagen Ltda"
  },
  {
    "code" : "201288",
    "display" : "Clínica Indisa (Maipú)",
    "definition" : "Clínica Indisa (Maipú)"
  },
  {
    "code" : "201292",
    "display" : "Centro de Procedimientos y Atenciones Clínicas Vida Rengo Suc Machalí",
    "definition" : "Centro de Procedimientos y Atenciones Clínicas Vida Rengo Suc Machalí"
  },
  {
    "code" : "201294",
    "display" : "Centro Medico UCCHRISTUS Rancagua",
    "definition" : "Centro Medico UCCHRISTUS Rancagua"
  },
  {
    "code" : "201297",
    "display" : "Centro Médico KINEROD 2",
    "definition" : "Centro Médico KINEROD 2"
  },
  {
    "code" : "201301",
    "display" : "SERSALUD",
    "definition" : "SERSALUD"
  },
  {
    "code" : "201302",
    "display" : "Centro integral y vacunatorio TRICAHUE",
    "definition" : "Centro integral y vacunatorio TRICAHUE"
  },
  {
    "code" : "201306",
    "display" : "Centro de Diagnóstico y Laboratorio Clínica ASTRA",
    "definition" : "Centro de Diagnóstico y Laboratorio Clínica ASTRA"
  },
  {
    "code" : "201309",
    "display" : "Centro  Médico Dávila Ñuñoa",
    "definition" : "Centro  Médico Dávila Ñuñoa"
  },
  {
    "code" : "201310",
    "display" : "Centro Médico Santa Lucía",
    "definition" : "Centro Médico Santa Lucía"
  },
  {
    "code" : "201316",
    "display" : "Centro de Salud Mutual CChC San Felipe",
    "definition" : "Centro de Salud Mutual CChC San Felipe"
  },
  {
    "code" : "201320",
    "display" : "Clínica Cruz Nacional (Maipú)",
    "definition" : "Clínica Cruz Nacional (Maipú)"
  },
  {
    "code" : "201321",
    "display" : "Centro Médico Plaza Egaña de Clínica Alemana",
    "definition" : "Centro Médico Plaza Egaña de Clínica Alemana"
  },
  {
    "code" : "201322",
    "display" : "ABCMED Centro Médico",
    "definition" : "ABCMED Centro Médico"
  },
  {
    "code" : "201328",
    "display" : "Centro Médico 271/2 Ltda",
    "definition" : "Centro Médico 271/2 Ltda"
  },
  {
    "code" : "201331",
    "display" : "Centro Médico y Diagnóstico Huaihuen",
    "definition" : "Centro Médico y Diagnóstico Huaihuen"
  },
  {
    "code" : "201332",
    "display" : "Policlínico Centro de Rehabilitación COANIQUEM",
    "definition" : "Policlínico Centro de Rehabilitación COANIQUEM"
  },
  {
    "code" : "201334",
    "display" : "CEOFT, Clínica de Especialidades Oftalmológicas",
    "definition" : "CEOFT, Clínica de Especialidades Oftalmológicas"
  },
  {
    "code" : "201337",
    "display" : "MEDICENTER Maipú",
    "definition" : "MEDICENTER Maipú"
  },
  {
    "code" : "201338",
    "display" : "Centro Médico RyR",
    "definition" : "Centro Médico RyR"
  },
  {
    "code" : "201339",
    "display" : "Centro de Salud Universidad de Los Andes",
    "definition" : "Centro de Salud Universidad de Los Andes"
  },
  {
    "code" : "201352",
    "display" : "Clínica Cruz Nacional (Puente Alto)",
    "definition" : "Clínica Cruz Nacional (Puente Alto)"
  },
  {
    "code" : "201355",
    "display" : "Centro Médico Rauquén",
    "definition" : "Centro Médico Rauquén"
  },
  {
    "code" : "201358",
    "display" : "Centro Medico BALMORAL",
    "definition" : "Centro Medico BALMORAL"
  },
  {
    "code" : "201363",
    "display" : "Clínica RENUEVA",
    "definition" : "Clínica RENUEVA"
  },
  {
    "code" : "201376",
    "display" : "Clinica de la Mujer y Medicina Reproductiva",
    "definition" : "Clinica de la Mujer y Medicina Reproductiva"
  },
  {
    "code" : "201388",
    "display" : "ATS CENTRO MÉDICO",
    "definition" : "ATS CENTRO MÉDICO"
  },
  {
    "code" : "201393",
    "display" : "Clínica CleverSalud",
    "definition" : "Clínica CleverSalud"
  },
  {
    "code" : "201402",
    "display" : "Centro MEDS Rancagua",
    "definition" : "Centro MEDS Rancagua"
  },
  {
    "code" : "121201",
    "display" : "Hospital Makewe",
    "definition" : "Hospital Makewe"
  },
  {
    "code" : "201056",
    "display" : "Comunidad Terapéutica Peulla Residencial",
    "definition" : "Comunidad Terapéutica Peulla Residencial"
  },
  {
    "code" : "200706",
    "display" : "PAME Estadio Municipal",
    "definition" : "PAME Estadio Municipal"
  },
  {
    "code" : "200868",
    "display" : "Hospital de Campaña Estadio el Teniente",
    "definition" : "Hospital de Campaña Estadio el Teniente"
  },
  {
    "code" : "200712",
    "display" : "Hospital Sotero del Río (Otro Dispositivo)",
    "definition" : "Hospital Sotero del Río (Otro Dispositivo)"
  },
  {
    "code" : "200889",
    "display" : "Hospital Modular de Campaña Hospital de Limache",
    "definition" : "Hospital Modular de Campaña Hospital de Limache"
  },
  {
    "code" : "201319",
    "display" : "Hospital de Alto Hospicio",
    "definition" : "Hospital de Alto Hospicio"
  },
  {
    "code" : "201426",
    "display" : "Clínica Vida Estética",
    "definition" : "Clínica Vida Estética"
  },
  {
    "code" : "201432",
    "display" : "CLINICA VIVECLINIC SPA",
    "definition" : "CLINICA VIVECLINIC SPA"
  },
  {
    "code" : "201461",
    "display" : "Centro Clínico San Gerardo",
    "definition" : "Centro Clínico San Gerardo"
  },
  {
    "code" : "201670",
    "display" : "OPERACIÓN CLINICA HUINGANAL",
    "definition" : "OPERACIÓN CLINICA HUINGANAL"
  },
  {
    "code" : "202206",
    "display" : "Clínica Chinquihue",
    "definition" : "Clínica Chinquihue"
  }]
}

```
