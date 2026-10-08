# Prestaciones (arancel Fonasa) - Notificación de Casos GES a SIGGES 2.0 v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prestaciones (arancel Fonasa)**

## CodeSystem: Prestaciones (arancel Fonasa) 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/prestacion-fonasa | *Version*:0.4.0 |
| Draft as of 2026-10-08 | *Computable Name*:CSPrestacionFonasa |
| **Copyright/Legal**: Catálogo SIGGES 2.0 — FONASA. Generado con tools/catalogo2fsh.py. | |

 
Prestaciones según catálogo SIGGES 2.0 (hoja PRESTACIONES). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Prestaciones Fonasa](ValueSet-vs-prestacion-fonasa.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "prestacion-fonasa",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/sigges/CodeSystem/prestacion-fonasa",
  "version" : "0.4.0",
  "name" : "CSPrestacionFonasa",
  "title" : "Prestaciones (arancel Fonasa)",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-08T15:37:06-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [{
    "name" : "Unidad de Interoperabilidad - MINSAL",
    "telecom" : [{
      "system" : "url",
      "value" : "https://interoperabilidad.minsal.cl"
    }]
  }],
  "description" : "Prestaciones según catálogo SIGGES 2.0 (hoja PRESTACIONES).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "CL",
      "display" : "Chile"
    }]
  }],
  "copyright" : "Catálogo SIGGES 2.0 — FONASA. Generado con tools/catalogo2fsh.py.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4988,
  "concept" : [{
    "code" : "1402058",
    "display" : "RECONSTRUCCIONES DE PARTES DURAS Y BLANDAS DE LA CARA, MEDIANTE ABORDAJES MULTIPLES Y HEMICORONAL O CORONAL"
  },
  {
    "code" : "1402059",
    "display" : "REMOCION QUIR. DE ARCOS Y/O ALAMBRES (PROC. COMPLETO)"
  },
  {
    "code" : "1402060",
    "display" : "SIMPLE (PROC. AUT.)"
  },
  {
    "code" : "1502001",
    "display" : "COMPLICADAS: 1 O VARIAS DE MAS DE 5 CMS. Y/O UBICADAS EN BORDES DE PARPADOS, LABIOS O ALA NASAL Y/O QUE COMPROMETEN MUSCULOS, CONDUCTOS, VASOS O NERVIOS"
  },
  {
    "code" : "1502002",
    "display" : "SIMPLES: 1 O VARIAS DE HASTA 5 CMS. QUE SOLO COMPROMETEN PIEL"
  },
  {
    "code" : "1502003",
    "display" : "IMPLANTE DE SILICONA FACIAL (CUALQUIER ZONA O ZONAS)"
  },
  {
    "code" : "1502004",
    "display" : "CICATRICES HASTA 2"
  },
  {
    "code" : "1502005",
    "display" : "CICATRICES 3 Y MAS"
  },
  {
    "code" : "1502006",
    "display" : "HASTA 1% SUPERFICIE CORPORAL RECEPTORA"
  },
  {
    "code" : "1502007",
    "display" : "HASTA 5% SUPERFICIE CORPORAL RECEPTORA"
  },
  {
    "code" : "1502008",
    "display" : "HASTA 10% SUPERFICIE CORPORAL RECEPTORA"
  },
  {
    "code" : "1502009",
    "display" : "POR CADA 10% (O SU FRACCION) ADICIONAL HASTA 50%"
  },
  {
    "code" : "1502010",
    "display" : "51% Y MAS DE SUPERFICIE CORPORAL RECEPTORA"
  },
  {
    "code" : "1502011",
    "display" : "PIEL TOTAL, CUALQUIER TAMAÑO (INCLUYE TRATAMIENTO ZONA DADORA Y RECEPTORA)"
  },
  {
    "code" : "1502012",
    "display" : "CARTILAGO (AURICULAR, COSTAL O SIMILARES) C/U"
  },
  {
    "code" : "1502013",
    "display" : "OSEO (COSTAL, ILIACO, TIBIAL O SIMILARES) C/U."
  },
  {
    "code" : "1502014",
    "display" : "PLATIAS EN Z, HASTA 3"
  },
  {
    "code" : "1502015",
    "display" : "PLASTIAS EN Z, 4 Y MAS"
  },
  {
    "code" : "1502016",
    "display" : "COLGAJOS COMPLEJOS (ABBE, MUSTARDA, CONVERSE, JURI, BAKAMJIAN O SIMILAR)"
  },
  {
    "code" : "1502017",
    "display" : "COLGAJOS LIBRES CON MICROANASTOMOSIS (INCLUYE TOMA DEL COLGAJO Y LAS SUTURAS NEUROVASCULARES)"
  },
  {
    "code" : "1502018",
    "display" : "COLGAJOS MUSCULARES O MUSCULOCUTANEOS"
  },
  {
    "code" : "1502019",
    "display" : "COLGAJOS OSTEOMUSCULOCUTANEOS"
  },
  {
    "code" : "1502020",
    "display" : "COLGAJOS SIMPLES DOS O MAS"
  },
  {
    "code" : "1502021",
    "display" : "COLGAJO SIMPLE UNICO"
  },
  {
    "code" : "1502022",
    "display" : "PARALISIS FACIAL, TRASPLANTES MUSCULARES"
  },
  {
    "code" : "1502023",
    "display" : "RIDECTOMIA CERVICO-FACIAL, UN LADO"
  },
  {
    "code" : "1502024",
    "display" : "RIDECTOMIA FRONTAL"
  },
  {
    "code" : "1502025",
    "display" : "ALADAS O EN ASA, CORRECCION PLASTICA"
  },
  {
    "code" : "1502026",
    "display" : "LOBULO AURICULAR PARTIDO, CORRECCION PLASTICA (PROC. AUT)"
  },
  {
    "code" : "1502027",
    "display" : "MALFORMACION CONGENITA COMPLEJA, CADA PLASTIA O PLASTIAS EN TIEMPOS DIFERENTES"
  },
  {
    "code" : "1502028",
    "display" : "CORRECCION NASAL PARCIAL (ALARES, ALARGAMIENTO COLUMELA O SIMILAR)"
  },
  {
    "code" : "1502029",
    "display" : "BLEFAROPLASTIA UNO O AMBOS PARPADOS INFERIORES"
  },
  {
    "code" : "1502030",
    "display" : "BLEFAROPLASTIA UNO AMBOS PARPADOS SUPERIORES"
  },
  {
    "code" : "1502031",
    "display" : "CORRECCION QUIRURGICA SECUNDARIA DE QUEILOPLASTIA"
  },
  {
    "code" : "1502032",
    "display" : "QUEILOPLASTIA PRIMARIA, UN LADO (PROC. QUIR. COMPLETO POR CUALQUIER TECNICA)"
  },
  {
    "code" : "1502033",
    "display" : "CIERRE DE PALADAR DURO Y/O CIERRE DE COMUNICACION ORO-NASAL"
  },
  {
    "code" : "1502034",
    "display" : "CIERRE MUCOSO VESTIBULO ORAL"
  },
  {
    "code" : "1502035",
    "display" : "PLASTIA DE VELO (CUALQUIER TECNICA)"
  },
  {
    "code" : "1502036",
    "display" : "CIERRE DE MACROSTOMIA, UN LADO"
  },
  {
    "code" : "1502037",
    "display" : "SINDROME DE TREACHER COLLINS, TRAT. QUIR. DE PARTES BLANDAS Y OSTEOPLASTIA"
  },
  {
    "code" : "1502038",
    "display" : "BILATERAL EN UN TIEMPO"
  },
  {
    "code" : "1502039",
    "display" : "UNILATERAL"
  },
  {
    "code" : "1502040",
    "display" : "DISTOPLASIAS ORBITARIAS: MOVILIZACION UNILATERAL O VERTICAL TIEMPO FACIAL"
  },
  {
    "code" : "1502041",
    "display" : "EXPANSION O RECONSTRUCCION DE UN MICRO-ORBITISMO"
  },
  {
    "code" : "1502042",
    "display" : "SINDROME DE APERT CROUZON O SIMILAR: AVANCE FRONTO-ORBITO-MAXILAR VIA INTRACRANEANA, TIEMPO FACIAL"
  },
  {
    "code" : "1502043",
    "display" : "SINDROME DE APERT CROUZON O SIMILAR: OSTEOTOMIA TIPO LE FORT III O SIMILAR"
  },
  {
    "code" : "1502044",
    "display" : "CORRECCION TELECANTO"
  },
  {
    "code" : "1502045",
    "display" : "MOVILIZACION ORBITARIA EXTRACRANEANA"
  },
  {
    "code" : "1502046",
    "display" : "MOVILIZACION ORBITARIA INTRACRANEANA, TIEMPO FACIAL"
  },
  {
    "code" : "1502047",
    "display" : "GINECOMASTIA, CORRECCION PLASTICA"
  },
  {
    "code" : "1502048",
    "display" : "MAMOPLASTIA DE AUMENTO"
  },
  {
    "code" : "1502049",
    "display" : "MAMOPLASTIA DE REDUCCION"
  },
  {
    "code" : "1502050",
    "display" : "MASTOPEXIA C/S IMPLANTE DE PROTESIS (NO INCLUYE VALOR DE LA PROTESIS)"
  },
  {
    "code" : "1502051",
    "display" : "RECONSTRUCCION AREOLA Y/O PEZON C/S PLASTIA (PROC. AUT.)"
  },
  {
    "code" : "1502052",
    "display" : "RECONSTRUCCION MAMARIA"
  },
  {
    "code" : "1502053",
    "display" : "LIPECTOMIA ABDOMINAL C/S TRANSPLANTE DE OMBLIGO"
  },
  {
    "code" : "1502054",
    "display" : "CON RESECCION OSEA C/S COLGAJO DE ROTACION"
  },
  {
    "code" : "1502055",
    "display" : "CON RESECCION OSEA Y COLGAJOS MUSCULARES O MUSCULOCUTANEOS"
  },
  {
    "code" : "1502056",
    "display" : "SINDACTILIA, TRAT. QUIR. CADA ESPACIO CON INJERTO"
  },
  {
    "code" : "0306073",
    "display" : "VIRUS HEPATITIS A, ANTICORE"
  },
  {
    "code" : "0306074",
    "display" : "VIRUS HEPATITIS A, ANTICUERPOS IGM DEL"
  },
  {
    "code" : "0306075",
    "display" : "VIRUS HEPATITIS B, ANTIANTIGENO E DEL"
  },
  {
    "code" : "0306076",
    "display" : "VIRUS HEPATITIS B, ANTICORE TOTAL DEL"
  },
  {
    "code" : "0306077",
    "display" : "VIRUS HEPATITIS B, ANTIGENO DE SUPERFICIE O ANTIGENO AUSTRALIANO"
  },
  {
    "code" : "0306078",
    "display" : "VIRUS HEPATITIS B, ANTIGENO E DEL"
  },
  {
    "code" : "0306079",
    "display" : "VIRUS HEPATITIS B, ANTIGENO SUPERFICIE"
  },
  {
    "code" : "0306080",
    "display" : "VIRUS HEPATITIS B, ANTICORE IGM DEL"
  },
  {
    "code" : "0306081",
    "display" : "VIRUS HEPATITIS C, ANTICUERPOS DE"
  },
  {
    "code" : "0306090",
    "display" : "TEST RAPIDO DE DETECCION DE STREPTOCOCCUS."
  },
  {
    "code" : "0306117",
    "display" : "CULTIVO PARA HONGOS"
  },
  {
    "code" : "0306169",
    "display" : "ANTICUERPOS VIRALES, DETERM. DE H.I.V."
  },
  {
    "code" : "0307001",
    "display" : "DIETILENDIAMINA TETRAACETATO DE SODIO CROMO (EDTA CR 51)"
  },
  {
    "code" : "0307002",
    "display" : "PRUEBA DE LA SED (VOLUMEN, DENSIDAD, OSMOLALIDAD SERIADA EN SANGRE Y ORINA)"
  },
  {
    "code" : "0307003",
    "display" : "PRUEBA DE SOBRECARGA DE ALMIDON"
  },
  {
    "code" : "0307004",
    "display" : "PRUEBA DE SOBRECARGA DE INSULINA O TOLBUTAMIDA"
  },
  {
    "code" : "0307005",
    "display" : "REACCION CUTANEA DE PARCHE C/U"
  },
  {
    "code" : "0307006",
    "display" : "SOBRECARGA HIDRICA"
  },
  {
    "code" : "0307007",
    "display" : "TEST DEL SUDOR (PROCEDIMIENTO COMPLETO)"
  },
  {
    "code" : "0307008",
    "display" : "VASOPRESINA TEST O SIMILARES (INCLUYE, ADEMAS, MEDICIONES DE DIURESIS)"
  },
  {
    "code" : "0307009",
    "display" : "ARTERIAL EN ADULTOS"
  },
  {
    "code" : "0307010",
    "display" : "ARTERIAL EN NINOS Y LACTANTES"
  },
  {
    "code" : "0307011",
    "display" : "VENOSA EN ADULTOS"
  },
  {
    "code" : "0307012",
    "display" : "VENOSA EN NINOS Y LACTANTES"
  },
  {
    "code" : "0307013",
    "display" : "CON TECNICA ASEPTICA PARA HEMOCULTIVO, C/U"
  },
  {
    "code" : "0307014",
    "display" : "CAPILAR ( ADULTOS, NINOS Y LACTANTES )"
  },
  {
    "code" : "0307016",
    "display" : "PUNCION TRAQUEAL"
  },
  {
    "code" : "0307017",
    "display" : "PUNCION VESICAL EN RECIEN NACIDOS"
  },
  {
    "code" : "0307018",
    "display" : "PUNCION MEDULAR OSEA"
  },
  {
    "code" : "0307019",
    "display" : "DUODENAL Y/O BILIS"
  },
  {
    "code" : "0307020",
    "display" : "GASTRICO PARA BACILO DE KOCH O SIMILARES (1 MUESTRA)"
  },
  {
    "code" : "0307021",
    "display" : "GASTRICO FRACCIONADO (TEST HISTAMINA;INSULINA)"
  },
  {
    "code" : "0307022",
    "display" : "PANCREATICO"
  },
  {
    "code" : "0308001",
    "display" : "AZUCARES REDUCTORES (BENEDICT-FEHLING O SIMILAR)"
  },
  {
    "code" : "0308002",
    "display" : "BALANCE GRASO (VAN DE KAMER) MUESTRA DE TRES O MAS DIAS"
  },
  {
    "code" : "0308003",
    "display" : "GRASAS NEUTRAS (SUDAN III)"
  },
  {
    "code" : "0308004",
    "display" : "HEMORRAGIAS OCULTAS, (BENCIDINA, GUAYACO O TEST DE WEBER Y SIMILARES),CUALQUIER METODO, C/MUESTRA"
  },
  {
    "code" : "0308005",
    "display" : "LEUCOCITOS FECALES"
  },
  {
    "code" : "0308006",
    "display" : "PH"
  },
  {
    "code" : "0308007",
    "display" : "PORFIRINAS, C/U"
  },
  {
    "code" : "0308008",
    "display" : "UROBILINOGENO CUANTITATIVO"
  },
  {
    "code" : "0308009",
    "display" : "CELULAS NEOPLASICAS"
  },
  {
    "code" : "0308010",
    "display" : "CITOLOGICO C/S TINCION (INCLUYE EXAMEN AL FRESCO, RECUENTO CELULAR Y CITOLOGICO PORCENTUAL)"
  },
  {
    "code" : "0308011",
    "display" : "DIRECTO AL FRESCO C/S TINCION, (INCLUYE TRICHOMONAS)"
  },
  {
    "code" : "0308012",
    "display" : "ELECTROLITOS (SODIO, POTASIO, CLORO), C/U"
  },
  {
    "code" : "0308013",
    "display" : "EOSINOFILOS, RECUENTO DE"
  },
  {
    "code" : "0308014",
    "display" : "FISICO-QUIMICO (INCLUYE ASPECTO, COLOR, PH, GLUCOSA, PROTEINA, PANDY YFILANCIA)"
  },
  {
    "code" : "0308015",
    "display" : "GLUCOSA EN EXUDADOS, SECRECIONES Y OTROS LIQUIDOS"
  },
  {
    "code" : "0308016",
    "display" : "MUCINA, DETERMINACION DE"
  },
  {
    "code" : "0308017",
    "display" : "PH, (PROC. AUT.)"
  },
  {
    "code" : "0308018",
    "display" : "PROTEINAS TOTALES O ALBUMINA (PROC. AUT.) C/U"
  },
  {
    "code" : "0308019",
    "display" : "PROTEINAS, ELECTROFORESIS DE (INCLUYE PROTEINAS TOTALES)"
  },
  {
    "code" : "0308020",
    "display" : "BANDAS OLIGOCLONALES (INCLUYE ELECTROFORESIS DE L.C.R., SUERO E INMUNOFIJACION)"
  },
  {
    "code" : "0308021",
    "display" : "GLUTAMINA"
  },
  {
    "code" : "0308022",
    "display" : "INDICE IGG/ALBUMINA (INCLUYE DETERM. DE IGG Y ALBUMINA EN L.C.R. Y SUERO )"
  },
  {
    "code" : "0308023",
    "display" : "ESTUDIO DE CRISTALES (CON LUZ POLARIZADA)"
  },
  {
    "code" : "0308024",
    "display" : "ACIDEZ TITULABLE, PH, VOLUMEN (UNA MUESTRA)"
  },
  {
    "code" : "0308025",
    "display" : "PRUEBA DE ESTIMULACION MAXIMA CON HISTAMINA, MINIMO 5 MUESTRAS (NO INCLUYE LA HISTAMINA NI EL ANTIHISTAMINICO)."
  },
  {
    "code" : "0308026",
    "display" : "VOLUMEN, ANHIDRIDO CARBONICO, AMILASA Y LIPASA"
  },
  {
    "code" : "0308027",
    "display" : "CRISTALES DE COLESTEROL"
  },
  {
    "code" : "0308028",
    "display" : "LIPIDOS BILIARES"
  },
  {
    "code" : "0308029",
    "display" : "ESPERMIOGRAMA (FISICO Y MICROSCOPICO, CON O SIN OBSERVACION HASTA 24 HORAS)"
  },
  {
    "code" : "0308030",
    "display" : "FOSFATASA ACIDA PROSTATICA"
  },
  {
    "code" : "0308031",
    "display" : "FRUCTOSA, CONSUMO DE"
  },
  {
    "code" : "0308032",
    "display" : "BILIRRUBINA (PROC. AUT.)"
  },
  {
    "code" : "0308033",
    "display" : "CELULAS ANARANJADAS (PROC. AUT.)"
  },
  {
    "code" : "0308034",
    "display" : "CONTAMINANTES (MECONIO Y SANGRE) (PROC. AUT.)"
  },
  {
    "code" : "0308035",
    "display" : "CREATININA (PROC. AUT.)"
  },
  {
    "code" : "0308036",
    "display" : "FOSFATIDIL GLICEROL Y/O FOSFATIDIL INOSITOL"
  },
  {
    "code" : "0308037",
    "display" : "INDICE DE BILIRRUBINA (PRUEBA DE LILEY)"
  },
  {
    "code" : "0308038",
    "display" : "INDICE LECITINA/ESFINGOMIELINA"
  },
  {
    "code" : "0308039",
    "display" : "MADUREZ FETAL COMPLETA (FISICO; CELULAS ANARANJADAS, BILIRRUBINA, TESTDE CLEMENTS, CREATININA, CONTAMINANTES)"
  },
  {
    "code" : "0308040",
    "display" : "TEST DE CLEMENTS (PROC. AUT.)"
  },
  {
    "code" : "0308041",
    "display" : "COLPOCITOGRAMA"
  },
  {
    "code" : "0308042",
    "display" : "CRISTALIZACION Y FILANCIA DE MOCO CERVICAL"
  },
  {
    "code" : "0308043",
    "display" : "MOCO-SEMEN, PRUEBA DE COMPATIBILIDAD"
  },
  {
    "code" : "0308044",
    "display" : "FLUJO VAGINAL, ESTUDIO DE (INCLUYE TOMA DE MUESTRA Y CODIGOS 03-06-004,03-06-005, 03-06-008, 03-06-017 Y 03-06-026 )"
  },
  {
    "code" : "0309001",
    "display" : "ACIDO ASCORBICO"
  },
  {
    "code" : "0309002",
    "display" : "ACIDO DELTA AMINOLEVULINICO"
  },
  {
    "code" : "0309003",
    "display" : "ACIDO FENILPIRUVICO (PKU, CUALITATIVO)"
  },
  {
    "code" : "0309004",
    "display" : "ACIDO URICO O UREA EN ORINA (CUANTITATIVO)"
  },
  {
    "code" : "0309005",
    "display" : "ACIDO 5 HIDROXIINDOLACETICO CUANTITATIVO"
  },
  {
    "code" : "0309006",
    "display" : "AMILASA CUANTITATIVA EN ORINA"
  },
  {
    "code" : "0309007",
    "display" : "AMINOACIDOS EN ORINA (CUALITATIVO)(EXCEPTO FENILALANINA, PKU)"
  },
  {
    "code" : "0309008",
    "display" : "CALCIO CUANTITATIVO EN ORINA"
  },
  {
    "code" : "0309009",
    "display" : "CALCULO URINARIO (EXAMEN FISICO Y QUIMICO)"
  },
  {
    "code" : "0309010",
    "display" : "CREATININA CUANTITATIVA EN ORINA"
  },
  {
    "code" : "0309011",
    "display" : "CUERPOS CETONICOS"
  },
  {
    "code" : "0309012",
    "display" : "ELECTROLITOS (SODIO, POTASIO, CLORO) C/U, EN ORINA"
  },
  {
    "code" : "0309013",
    "display" : "MICROALBUMINURIA CUANTITATIVA"
  },
  {
    "code" : "0309014",
    "display" : "EMBARAZO, DETECCION DE (CUALQUIER TECNICA)"
  },
  {
    "code" : "0309015",
    "display" : "FOSFORO CUANTITATIVO EN ORINA"
  },
  {
    "code" : "0309016",
    "display" : "GLUCOSA (CUANTITATIVO), EN ORINA"
  },
  {
    "code" : "0309017",
    "display" : "HIDROXIPROLINA EN ORINA"
  },
  {
    "code" : "0309018",
    "display" : "MELANOGENURIA (TEST DE CLORURO FERRICO)"
  },
  {
    "code" : "0309019",
    "display" : "MUCOPOLISACARIDOS"
  },
  {
    "code" : "0309020",
    "display" : "NITROGENO UREICO O UREA EN ORINA (CUANTITATIVO)"
  },
  {
    "code" : "0309021",
    "display" : "NUCLEOTIDOS CICLICOS (CAMP, CGM, U OTROS) C/U"
  },
  {
    "code" : "0309022",
    "display" : "ORINA COMPLETA, (INCLUYE COD. 03-09-023 Y 03-09-024)"
  },
  {
    "code" : "0309023",
    "display" : "ORINA, FISICO-QUIMICO (ASPECTO, COLOR, DENSIDAD, PH, PROTEINAS, GLUCOSA, CUERPOS CETONICOS, UROBILINOGENO, BILIRRUBINA, HEMOGLOBINA Y NITRITOS) TODOS O CADA UNO DE LOS PARAMETROS (PROC. AUT.)"
  },
  {
    "code" : "0309024",
    "display" : "ORINA, SEDIMENTO (PROC. AUT.)"
  },
  {
    "code" : "0309025",
    "display" : "OSMOLALIDAD"
  },
  {
    "code" : "0309026",
    "display" : "OSMOLARIDAD, EXAMEN DE ORINA"
  },
  {
    "code" : "0309027",
    "display" : "PORFIRINAS, C/U"
  },
  {
    "code" : "0309028",
    "display" : "PROTEINA (CUANTITATIVA), EN ORINA"
  },
  {
    "code" : "0309029",
    "display" : "PROTEINAS DE BENCE-JONES PRUEBA TERMICA"
  },
  {
    "code" : "0309030",
    "display" : "UROBILINOGENO (CUANTITATIVO)"
  },
  {
    "code" : "0309035",
    "display" : "HEMOSIDERINA"
  },
  {
    "code" : "0309040",
    "display" : "FENILQUETONURIA (PKU), CUANTITATIVO"
  },
  {
    "code" : "0401001",
    "display" : "SIALOGRAFIA (4 EXP.)"
  },
  {
    "code" : "0401002",
    "display" : "PARTES BLANDAS; LARINGE LATERAL; CAVUM RINOFARINGEO (RINOFA-RINX). C/U.(1 EXP.)"
  },
  {
    "code" : "0401003",
    "display" : "PLANIGRAFIAS LARINGE (4 EXP.)"
  },
  {
    "code" : "0401004",
    "display" : "TORAX, PROYECCION COMPLEMENTARIA EN EL MISMO EXAMEN(OBLICUAS, SELECTIVAS U OTRAS), C/U (1 EXP.)"
  },
  {
    "code" : "0401005",
    "display" : "TORAX, PROYECCION COMPLEMENTARIA DE CORAZON (OBLICUAS UOTRAS) (1 EXP.) C/U"
  },
  {
    "code" : "0401006",
    "display" : "ESTUDIO RADIOLOGICO DE CORAZON (INCLUYE FLUOROSCOPIA,TELERRADIOGRAFIAS FRONTAL Y LATERAL CON ESOFAGOGRAMA)"
  },
  {
    "code" : "0401007",
    "display" : "PLANIGRAFIA LOCALIZADA (INCLUYE MINIMO 6 CORTES) (6 EXP.)"
  },
  {
    "code" : "0401008",
    "display" : "TORAX, RADIOGRAFIA CON EQUIPO MOVIL FUERA DEL DEPARTAMENTO DE RAYOS, CADA PROYECCION (1 O MAS EXP.)"
  },
  {
    "code" : "0401009",
    "display" : "TORAX SIMPLE (FRONTAL O LATERAL) (INCLUYE FLUOROSCOPIA) (1PROY.) ( 1 EXP. PANORAMICA)."
  },
  {
    "code" : "0401010",
    "display" : "MAMOGRAFIA BILATERAL (4 EXP.)"
  },
  {
    "code" : "0401011",
    "display" : "MARCACION PREOPERATORIA DE LESIONES DE LA MAMA (4 EXP.)"
  },
  {
    "code" : "0401012",
    "display" : "RADIOGRAFIA DE MAMA, PIEZA OPERATORIA (1 EXP.)"
  },
  {
    "code" : "0401013",
    "display" : "ABDOMEN SIMPLE (1 PROYECCION) (1 EXP.) ( CON EQUIPO ESTATICOO MOVIL)"
  },
  {
    "code" : "0401014",
    "display" : "ABDOMEN SIMPLE, PROYECCION COMPLEMENTARIA EN EL MISMO EXAMEN(1 EXP.)"
  },
  {
    "code" : "0401015",
    "display" : "COLANGIOGRAFIA INTRA O POSTOPERATORIA (POR SONDA T, OSIMILAR)"
  },
  {
    "code" : "0401016",
    "display" : "COLANGIOGRAFIA MEDICA CON PLANIGRAFIA (6 EXP.)."
  },
  {
    "code" : "0401017",
    "display" : "COLECISTOGRAFIA C/S SERIOGRAFIA (3-4 EXP.)"
  },
  {
    "code" : "0401018",
    "display" : "ENEMA BARITADA DEL COLON (INCLUYE LLENE Y CONTROL POSTVACIA-MIENTO; 8-10 EXP.)"
  },
  {
    "code" : "0401019",
    "display" : "ENEMA BARITADA DEL COLON O INTESTINO DELGADO, DOBLE CONTRASTE (12 EXP.)"
  },
  {
    "code" : "0401020",
    "display" : "ESOFAGO SIMPLE (INCLUYE PESQUISA DE CUERPO EXTRAÑO) (PROC. AUT.) (6 EXP.)"
  },
  {
    "code" : "0401021",
    "display" : "ESOFAGO, ESTOMAGO Y DUODENO, DOBLE CONTRASTE (15 EXP.)"
  },
  {
    "code" : "0401022",
    "display" : "ESTUDIO DE DEGLUCION FARINGEA (6 EXP.)"
  },
  {
    "code" : "0401023",
    "display" : "ESTUDIO INTESTINO DELGADO (6 EXP.)"
  },
  {
    "code" : "0401024",
    "display" : "ESOFAGO, ESTOMAGO Y DUODENO, SIMPLE EN NIÑOS (8 EXP.)"
  },
  {
    "code" : "0401026",
    "display" : "PIELOGRAFIA DE ELIMINACION CON CONTROL MINUTADO (10 EXP.)"
  },
  {
    "code" : "0401027",
    "display" : "PIELOGRAFIA DE ELIMINACION O DESCENDENTE: INCLUYE RENAL Y VESICAL SIMPLES PREVIAS, 3 PLACAS POST INYECCION DE MEDIO DE CONTRASTE, CONTROLES DE PIE Y CISTOGRAFIA PRE Y POST MICCIONAL. (7 A 9 EXP.)"
  },
  {
    "code" : "0401028",
    "display" : "RENAL SIMPLE (PROC. AUT.) (1 EXP.)"
  },
  {
    "code" : "0401029",
    "display" : "VESICAL SIMPLE O PERIVESICAL (PROC. AUT.) (1 EXP.)"
  },
  {
    "code" : "0401030",
    "display" : "AGUJEROS OPTICOS, AMBOS LADOS (2 PROY.) (2 EXP.)"
  },
  {
    "code" : "0401031",
    "display" : "CAVIDADES PERINASALES, ORBITAS, ARTICULACIONES TEMPOROMAN-DIBULARES, HUESOS PROPIOS DE LA NARIZ, MALAR, MAXILAR, ARCO CIGOMATICO, CARA, C/U (2 EXP.)"
  },
  {
    "code" : "0302039",
    "display" : "FOSFATASAS ALCALINAS CON SEPARACION DE ISOENZIMAS HEPATICAS, INTESTINALES, OSEAS C/U"
  },
  {
    "code" : "0302040",
    "display" : "FOSFATASAS ALCALINAS TOTALES"
  },
  {
    "code" : "0302041",
    "display" : "FOSFOLIPIDOS"
  },
  {
    "code" : "0302042",
    "display" : "FOSFORO (FOSFATOS) EN SANGRE"
  },
  {
    "code" : "0302043",
    "display" : "GALACTOSA"
  },
  {
    "code" : "0302044",
    "display" : "GALACTOSA, CURVA DE TOLERANCIA, (MINIMO CUATRO DETERMINACIO-NES) (NO INCLUYE LA GALACTOSA QUE SE ADMINISTRA) (INCLUYE LOS VALORES DE TODAS LAS TOMAS DE MUESTRAS NECESARIAS)"
  },
  {
    "code" : "0302045",
    "display" : "GAMMA GLUTAMILTRANSPEPTIDASA (GGT)"
  },
  {
    "code" : "0302046",
    "display" : "GASES Y EQUILIBRIO ACIDO BASE EN SANGRE (INCLUYE: PH, O2, CO2, EXCESO DE BASE Y BICARBONATO), TODOS O CADA UNO DE LOS PARAMETROS"
  },
  {
    "code" : "0302047",
    "display" : "GLUCOSA EN SANGRE"
  },
  {
    "code" : "0302048",
    "display" : "GLUCOSA, CURVA DE TOLERANCIA, (MINIMO TRES DETERMINACIONES) (NO INCLUYELA GLUCOSA QUE SE ADMINISTRA) (INCLUYE LOS VALORES DE TODAS LAS TOMAS DE MUESTRAS NECESARIAS)"
  },
  {
    "code" : "0302050",
    "display" : "HIDROXIPROLINA O ADENOSINDEAMINASA, EN SANGRE"
  },
  {
    "code" : "0302051",
    "display" : "LACTOSA, CURVA DE TOLERANCIA, (MINIMO CUATRO DETERMINACIONES) (NO INCLUYE LA LACTOSA QUE SE ADMINISTRA) (INCLUYE LOS VALORES DE TODAS LAS TOMAS DE MUESTRAS NECESARIAS)"
  },
  {
    "code" : "0302052",
    "display" : "LEUCINAMINOPEPTIDASA (LAP)"
  },
  {
    "code" : "0302053",
    "display" : "LIPASA"
  },
  {
    "code" : "0302054",
    "display" : "LIPOPROTEINAS, ELECTROFORESIS DE (INCLUYE LIPIDOS TOTALES)"
  },
  {
    "code" : "0302055",
    "display" : "LITIO"
  },
  {
    "code" : "0302056",
    "display" : "MAGNESIO"
  },
  {
    "code" : "0302057",
    "display" : "NITROGENO UREICO Y/O UREA, EN SANGRE"
  },
  {
    "code" : "0302058",
    "display" : "OSMOLALIDAD, SANGRE EXAMEN BIOQUIMICO"
  },
  {
    "code" : "0302059",
    "display" : "PROTEINAS FRACCIONADAS ALBUMINA/GLOBULINA (INCLUYE CODIGO 03-02-060)"
  },
  {
    "code" : "0302060",
    "display" : "PROTEINAS TOTALES O ALBUMINAS, C/U, EN SANGRE"
  },
  {
    "code" : "0302061",
    "display" : "PROTEINAS, ELECTROFORESIS (INCLUYE COD. 03-02-060)"
  },
  {
    "code" : "0302062",
    "display" : "SALICILEMIA CUANTITATIVA"
  },
  {
    "code" : "0302063",
    "display" : "TRANSAMINASAS, OXALACETICA (GOT), PIRUVICA (GPT), C/U"
  },
  {
    "code" : "0302064",
    "display" : "TRIGLICERIDOS (PROC. AUT.)"
  },
  {
    "code" : "0302065",
    "display" : "VITAMINAS A, B, C, D, E, ETC., C/U"
  },
  {
    "code" : "0302066",
    "display" : "XILOSA, PRUEBA DE ABSORCION (NO INCLUYE LA XILOSA QUE SE ADMINISTRA)"
  },
  {
    "code" : "0302067",
    "display" : "COLESTEROL TOTAL (PROC. AUT.)"
  },
  {
    "code" : "0302068",
    "display" : "COLESTEROL HDL (PROC. AUT.)"
  },
  {
    "code" : "0302069",
    "display" : "LIPIDOS TOTALES (PROC. AUT.)"
  },
  {
    "code" : "0302070",
    "display" : "APOLIPOPROTEINAS (A1, B U OTRAS)"
  },
  {
    "code" : "0302075",
    "display" : "PERFIL BIOQUIMICO (DETERMINACION AUTOMATIZADA DE 12 PARAMETROS)"
  },
  {
    "code" : "0302076",
    "display" : "PERFIL HEPATICO (INCLUYE: TOMA DE MUESTRA, TIEMPO DE PROTROMBINA, BILIRRUBINA TOTAL Y CONJUGADA, FOSFATASAS ALCALINAS TOTALES, GGT, TRASAMINASAS GOT Y GPT)."
  },
  {
    "code" : "0303001",
    "display" : "ADENOCORTICOTROFINA (ACTH)"
  },
  {
    "code" : "0303002",
    "display" : "ALDOSTERONA"
  },
  {
    "code" : "0303003",
    "display" : "ANDROSTENEDIONA"
  },
  {
    "code" : "0303004",
    "display" : "ANGIOTENSINA"
  },
  {
    "code" : "0303005",
    "display" : "CATECOLAMINAS"
  },
  {
    "code" : "0303006",
    "display" : "CORTISOL"
  },
  {
    "code" : "0303007",
    "display" : "CRECIMIENTO, HORMONA DE (HGH) (SOMATOTROFINA)"
  },
  {
    "code" : "0303008",
    "display" : "DEHIDROEPIANDROSTERONA SULFATO (DHA, DHEA)"
  },
  {
    "code" : "0303009",
    "display" : "ERITROPOYETINA"
  },
  {
    "code" : "0303010",
    "display" : "ESTRIOL EN SANGRE"
  },
  {
    "code" : "0303011",
    "display" : "ESTROGENOS TOTALES"
  },
  {
    "code" : "0303012",
    "display" : "GASTRINA"
  },
  {
    "code" : "0303013",
    "display" : "GLUCAGON"
  },
  {
    "code" : "0303014",
    "display" : "GONADOTROFINA CORIONICA, FRACCION BETA (INCLUYE TITULACION SI CORRESPONDE) (ELISA O RIA)"
  },
  {
    "code" : "0303015",
    "display" : "HORMONA FOLICULO ESTIMULANTE (FSH)"
  },
  {
    "code" : "0303016",
    "display" : "HORMONA LUTEINIZANTE (LH)"
  },
  {
    "code" : "0303017",
    "display" : "INSULINA"
  },
  {
    "code" : "0303018",
    "display" : "PARATHORMONA"
  },
  {
    "code" : "0303019",
    "display" : "PROGESTERONA"
  },
  {
    "code" : "0303020",
    "display" : "PROLACTINA (PRL)"
  },
  {
    "code" : "0303021",
    "display" : "RENINA"
  },
  {
    "code" : "0303022",
    "display" : "TESTOSTERONA EN SANGRE"
  },
  {
    "code" : "0303023",
    "display" : "TESTOSTERONA LIBRE EN SANGRE"
  },
  {
    "code" : "0303024",
    "display" : "TIROESTIMULANTE (TSH), HORMONA (ADULTO, NIÑO O R.N.)"
  },
  {
    "code" : "0303025",
    "display" : "TIROGLOBULINA"
  },
  {
    "code" : "0303026",
    "display" : "TIROXINA LIBRE (T4L)"
  },
  {
    "code" : "0303027",
    "display" : "TIROXINA O TETRAYODOTIRONINA (T4)"
  },
  {
    "code" : "0303028",
    "display" : "TRIYODOTIRONINA (T3)"
  },
  {
    "code" : "0303029",
    "display" : "17 - HIDROXIPROGESTERONA"
  },
  {
    "code" : "0303030",
    "display" : "ESTRADIOL (17-BETA) B.- EN ORINA"
  },
  {
    "code" : "0303031",
    "display" : "INSULINA, CURVA DE (MINIMO CUATRO DETERMINACIONES E INCLUYE TODAS LAS TOMAS DE MUESTRAS NECESARIAS. NO INCLUYE LA GLUCOSA QUE SE ADMINISTRA)"
  },
  {
    "code" : "0303032",
    "display" : "AC. VAINILLILMANDELICO, CUANTITATIVO"
  },
  {
    "code" : "0303033",
    "display" : "ANGIOTENSINA"
  },
  {
    "code" : "0303034",
    "display" : "CATECOLAMINAS"
  },
  {
    "code" : "0303035",
    "display" : "CORTISOL LIBRE URINARIO"
  },
  {
    "code" : "0303036",
    "display" : "ESTRIOL"
  },
  {
    "code" : "0303039",
    "display" : "GONADOTROFINA CORIONICA, FRACCION BETA; TITULACION DE (ELISA O RIA)"
  },
  {
    "code" : "0303040",
    "display" : "PREGNANDIOL"
  },
  {
    "code" : "0303042",
    "display" : "TETRAHIDRODESOXICORTISOL"
  },
  {
    "code" : "0303043",
    "display" : "17 - CETOESTEROIDES"
  },
  {
    "code" : "0303044",
    "display" : "17 - HIDROXICORTICOESTEROIDES"
  },
  {
    "code" : "0303045",
    "display" : "TESTOSTERONA EN ORINA"
  },
  {
    "code" : "0303046",
    "display" : "SHGB (SEX-HORMONE BINDING GLOBULIN)"
  },
  {
    "code" : "0303047",
    "display" : "IGF1 O SOMATOMEDINA - C (INSULINE LIKE GROWTH FACTOR)"
  },
  {
    "code" : "0303048",
    "display" : "IGFBP3, IGFBP1 (INSULINE LIKE GROWTH FACTOR BINDING PROTEIN) C/U"
  },
  {
    "code" : "0304001",
    "display" : "CARIOGRAMA EN SANGRE POR CULTIVO DE LINFOCITOS (INCLUYE MINIMO 25 MITOSIS CON BANDEO G Y EVENTUALMENTE Q, R, C, NOR) (MONTAJE DE 3 METAFASES BANDEADAS)"
  },
  {
    "code" : "0304002",
    "display" : "CARIOGRAMA CON TECNICAS ESPECIALES (INCLUYE MUESTRA DE SANGRE DE MEDULAOSEA, TRATAMIENTO CON FUDR, BROMURO DE ETIDIO, MEDIO DEFICIENTE EN ACIDO FOLICO)"
  },
  {
    "code" : "0304003",
    "display" : "CARIOGRAMA EN FIBROBLASTOS POR CULTIVO DE TROFOBLASTO, LIQUIDO AMNIOTICO, PIEL U OTROS BANDEOS G Y EVENTUALMENTE Q, R, C, NOR"
  },
  {
    "code" : "0304004",
    "display" : "CROMATINA SEXUAL X E Y, CORPUSCULO DE BARR Y CORPUSCULO FLUORESCENTE DEMUCOSA BUCAL, LIQUIDO AMNIOTICO, ETC.C/U (ANALISIS EN 300 Y 100 CELULAS RESPECTIVAMENTE), C/U"
  },
  {
    "code" : "0304005",
    "display" : "DERMATOGLIFOS, TOMA DE IMPRESION PALMAR, ANALISIS CUALITATIVO Y CUANTITATIVO CON DIVERSAS MEDICIONES"
  },
  {
    "code" : "0305001",
    "display" : "ALFA -1- ANTITRIPSINA CUANTITATIVA"
  },
  {
    "code" : "0305002",
    "display" : "ALFA -2- MACROGLOBULINA"
  },
  {
    "code" : "0305003",
    "display" : "ALFA FETOPROTEINAS"
  },
  {
    "code" : "0305004",
    "display" : "TAMIZAJE DE ANTICUERPOS ANTI ANTIGENOS NUCLEARES EXTRACTABLES (A-ENA: SM, RNP, RO, LA, SCL-70 Y JO-1)"
  },
  {
    "code" : "0305005",
    "display" : "ANTICUERPOS ANTINUCLEARES, ANTIMITOCONDRIALES, ANTI DNA, ANTIMUSCULO LISO, ANTICENTROMERO, U OTROS, C/U"
  },
  {
    "code" : "0305006",
    "display" : "ANTICUERPOS ATIPICOS, PANNEL DE IDENTIFICACION"
  },
  {
    "code" : "0305007",
    "display" : "ANTICUERPOS ESPECIFICOS Y OTROS AUTOANTICUERPOS (ANTICUERPOS ANTITIROIDEOS: ANTICUERPOS ANTIMICROSOMALES Y ANTITIROGLOBULINAS Y OTROS ANTICUERPOS:PROSTATICO, ESPERMIOS, ETC.) C/U"
  },
  {
    "code" : "0305008",
    "display" : "ANTIESTREPTOLISINA O, POR TECNICA DE LATEX"
  },
  {
    "code" : "0305009",
    "display" : "ANTIGENO CARCINOEMBRIONARIO (CEA)"
  },
  {
    "code" : "0305010",
    "display" : "BETA-2-MICROGLOBULINA"
  },
  {
    "code" : "0305011",
    "display" : "COMPLEJOS INMUNES CIRCULANTES"
  },
  {
    "code" : "0305012",
    "display" : "COMPLEMENTO C1Q, C2, C3, C4, ETC., C/U"
  },
  {
    "code" : "0305013",
    "display" : "COMPLEMENTO HEMOLITICO (CH 50)"
  },
  {
    "code" : "0305014",
    "display" : "CRIOGLOBULINAS, PRECIPITACION EN FRIO (CUALITATIVA) O CUANTITATIVA C/U"
  },
  {
    "code" : "0305015",
    "display" : "DEPOSITO DE COMPLEJOS INMUNES POR INMUNOFLUORESCENCIA"
  },
  {
    "code" : "0305016",
    "display" : "DEPOSITO DE COMPLEMENTO POR INMUNOFLUORESCENCIA (C3, C4), C/U"
  },
  {
    "code" : "0305017",
    "display" : "DEPOSITO DE FIBRINOGENO POR INMUNOFLUORESCENCIA"
  },
  {
    "code" : "0305018",
    "display" : "DEPOSITO DE INMUNOGLOBULINA POR INMUNOFLUORESCENCIA (IGG, IGA, IGM) C/U"
  },
  {
    "code" : "0305019",
    "display" : "FACTOR REUMATOIDEO POR LATEX CUANTITATIVO"
  },
  {
    "code" : "0305020",
    "display" : "FACTOR REUMATOIDEO POR TECNICA SCAT, WAALER ROSE, NEFELOMETRICAS Y/O TURBIDIMETRICAS"
  },
  {
    "code" : "0305021",
    "display" : "INHIBIDOR DE C1Q, C2 Y C3, C/U"
  },
  {
    "code" : "0305022",
    "display" : "INMUNOELECTROFORESIS DE CADENAS LIVIANAS KAPPA O LAMBDA LIBRES (BENCE JONES) O UNIDAS, C/U"
  },
  {
    "code" : "0305023",
    "display" : "INMUNOELECTROFORESIS DE INMUNOGLOBULINAS CADENAS PESADAS (IGG, IGA, IGM) C/U"
  },
  {
    "code" : "0305024",
    "display" : "INMUNOELECTROFORESIS DE INMUNOGLOBULINAS IGD E IGE C/U"
  },
  {
    "code" : "0305025",
    "display" : "INMUNOFIJACION DE INMUNOGLOBULINA, C/U"
  },
  {
    "code" : "0305026",
    "display" : "INMUNOGLOBULINA IGA SECRETORA"
  },
  {
    "code" : "0305027",
    "display" : "INMUNOGLOBULINAS IGA, IGG, IGM, C/U"
  },
  {
    "code" : "0305028",
    "display" : "INMUNOGLOBULINAS IGE, IGD TOTAL, C/U"
  },
  {
    "code" : "0305029",
    "display" : "INMUNOGLOBULINAS IGE, IGG ESPECIFICAS, C/U"
  },
  {
    "code" : "0305030",
    "display" : "PROTEINA C REACTIVA CUALITATIVA"
  },
  {
    "code" : "0305031",
    "display" : "PROTEINA C REACTIVA CUANTITATIVA"
  },
  {
    "code" : "0305032",
    "display" : "PROTEINAS BENCE JONES POR ELECTROFORESIS (INCLUYE PROTEINURIA)"
  },
  {
    "code" : "0305034",
    "display" : "QUIMIOTAXIS-LEUCOTAXIS"
  },
  {
    "code" : "0305035",
    "display" : "CRIOAGLUTININAS"
  },
  {
    "code" : "0305036",
    "display" : "CRIOHEMOLISINAS"
  },
  {
    "code" : "0305037",
    "display" : "DIGESTION FAGOCITICA NITROBLUE-TETRAZOLIUM CUALITATIVO Y CUANTITATIVO"
  },
  {
    "code" : "0305038",
    "display" : "FAGOCITOSIS: INGESTION Y DIGESTION (KILLING) DE LEVADURAS POR POLIMORFONUCLEARES"
  },
  {
    "code" : "0305039",
    "display" : "FAGOCITOSIS: INGESTION Y DIGESTION (KILLING) DE BACTERIAS POR POLIMORFONUCLEARES"
  },
  {
    "code" : "0305040",
    "display" : "INMUNOADHERENCIA DE LEUCOCITOS MACROFAGOS"
  },
  {
    "code" : "0305041",
    "display" : "INTRADERMOREACCION (PPD, HISTOPLASMINA, ASPERGILINA, U OTROS, INCLUYE EL VALOR DEL ANTIGENO Y REACCION DE CONTROL), C/U"
  },
  {
    "code" : "0305042",
    "display" : "LIF O MIF"
  },
  {
    "code" : "0305043",
    "display" : "LINFOCITOS B (INMUNOFLUORESCENCIA)"
  },
  {
    "code" : "0305044",
    "display" : "LINFOCITOS B (ROSETAS EAC) Y LINFOCITOS T (ROSETAS E) C/U"
  },
  {
    "code" : "0305045",
    "display" : "LINFOCITOS T \"HELPER\" (OKT4) O SUPRESORES (OKT8) CON ANTISUERO MONOCLONAL, C/U"
  },
  {
    "code" : "0305046",
    "display" : "LINFOCITOS T TOTALES (OKT3 Y/O OKT11) CON ANTISUERO MONOCLONAL O INMUNOFENOTIPIFICACION DE POBLACIONES Y SUBPOBLACIONES CELULARES (ANTIGENOS O MARCADORES INMUNOCELULARES)"
  },
  {
    "code" : "0305047",
    "display" : "LINFOTOXINAS HUMANAS, DETECCION DE"
  },
  {
    "code" : "0305048",
    "display" : "REACCION CUTANEA 16 ALERGENOS POR ESCARIFICACION (INCLUYE EL VALOR DE LOS ANTIGENOS)"
  },
  {
    "code" : "0305049",
    "display" : "TRANSFORMACION LINFOBLASTICA A DROGAS, ANALISIS DE TRANSFORMACION ESPONTANEA CON ESTIMULO INESPECIFICO Y CON DIFERENTES CONCENTRACIONES DE LA DROGA EN 1000 CELULAS"
  },
  {
    "code" : "0305051",
    "display" : "ABSORCION DE AUTOANTICUERPOS DEL RECEPTOR"
  },
  {
    "code" : "0305052",
    "display" : "ANTICUERPOS LINFOCITOTOXICOS (PRA) POR MICROLINFOCITOTOXICIDAD"
  },
  {
    "code" : "0305053",
    "display" : "AUTOCROSSMATCH CON LINFOCITOS T Y B"
  },
  {
    "code" : "0305054",
    "display" : "AUTOCROSS MATCH CON LINFOCITOS TOTALES"
  },
  {
    "code" : "0305056",
    "display" : "ALOCROSSMATCH CON LINFOCITOS TOTALES"
  },
  {
    "code" : "0305057",
    "display" : "ALOCROSSMATCH CON LINFOCITOS T Y B"
  },
  {
    "code" : "0305058",
    "display" : "CULTIVO MIXTO DE LINFOCITOS"
  },
  {
    "code" : "0305059",
    "display" : "IDENTIFICACION DE CLASE DE INMUNOGLOBULINAS DE AUTO O ALO CROSS MATCH POSITIVO"
  },
  {
    "code" : "0305060",
    "display" : "TIPIFICACION HLA B-27"
  },
  {
    "code" : "0305061",
    "display" : "TIPIFICACION HLA B-8"
  },
  {
    "code" : "0305062",
    "display" : "TIPIFICACION HLA - DR CEROLOGICA"
  },
  {
    "code" : "0305063",
    "display" : "TIPIFICACION HLA - A, B CEROLOGICA"
  },
  {
    "code" : "0305070",
    "display" : "ANTIGENO PROSTATICO ESPECIFICO"
  },
  {
    "code" : "0305080",
    "display" : "ESTUDIO PARA HIPERSENSIBILIDAD RETARDADA"
  },
  {
    "code" : "0305081",
    "display" : "ANTICUERPO ANTIENDOMISIO (EMA, ANTIMEMBRANA BASAL GLOMERULAR(GBM), ANTIRETICULINA, POR IFI C/U."
  },
  {
    "code" : "0305082",
    "display" : "ANTICUERPOS ANTICITOPLASMA DE NEUTROFILOS (ANCA), C-ANCA YP-ANCA, POR IFI."
  },
  {
    "code" : "0305083",
    "display" : "DETERMINACION DE ISOTIPOS DE ANTICUERPOS ANTICITOPLASMA DENEUTROFILOS (G-M-A-C3), POR IFI, C/U."
  },
  {
    "code" : "0305084",
    "display" : "ANTICUERPOS ANTICARDIOLIPINAS POR ELISA (ISOTIPOS G-M-A),C/U."
  },
  {
    "code" : "0305085",
    "display" : "ANTICUERPOS ANTI MLK-1, POR IFI."
  },
  {
    "code" : "0305086",
    "display" : "ANTICUERPOS ANTIGLIADINA (ENFERMEDAD CELIACA), POR ELISA(ISOTIPOS G-M, C/U)."
  },
  {
    "code" : "0305087",
    "display" : "ANTICUERPOS LINFOCITOTOXICOS CON IDENTIFICACION DEINMUNOGLOBULINAS."
  },
  {
    "code" : "0305088",
    "display" : "ESPECIFICIDAD DE ANTICUERPOS."
  },
  {
    "code" : "0306001",
    "display" : "BACILOSCOPIA ZIEHL-NEELSEN POR CONCENTRACION DE LIQUIDOS (ORINA U OTROS), C/U"
  },
  {
    "code" : "0306002",
    "display" : "BACILOSCOPIA ZIEHL-NEELSEN, C/U"
  },
  {
    "code" : "0306004",
    "display" : "EXAMEN DIRECTO AL FRESCO, C/S TINCION (INCLUYE TRICHOMONAS)"
  },
  {
    "code" : "0306005",
    "display" : "TINCION DE GRAM"
  },
  {
    "code" : "0306006",
    "display" : "ULTRAMICROSCOPIA (INCLUYE TOMA DE MUESTRAS)"
  },
  {
    "code" : "0306007",
    "display" : "COPROCULTIVO, C/U"
  },
  {
    "code" : "0306008",
    "display" : "CULTIVO CORRIENTE (EXCEPTO COPROCULTIVO, HEMOCULTIVO Y Y UROCULTIVO) C/U"
  },
  {
    "code" : "0306009",
    "display" : "HEMOCULTIVO AEROBIO, C/U"
  },
  {
    "code" : "0306010",
    "display" : "HEMOCULTIVO ANAEROBIO, C/U"
  },
  {
    "code" : "0306011",
    "display" : "UROCULTIVO, RECUENTO DE COLONIAS Y ANTIBIOGRAMA (CUALQUIERTECNICA) (INCLUYE TOMA DE ORINA ASEPTICA)"
  },
  {
    "code" : "0306012",
    "display" : "CULTIVO PARA ANAEROBIOS (INCLUYE COD. 03-06-008)"
  },
  {
    "code" : "0306013",
    "display" : "CULTIVO ESPECIFICO PARA BORDETELLA"
  },
  {
    "code" : "0306014",
    "display" : "CULTIVO PARA CAMPYLOBACTER, YERSINIA, VIBRIO, C/U"
  },
  {
    "code" : "0306015",
    "display" : "CULTIVO PARA DIFTERIA"
  },
  {
    "code" : "0306016",
    "display" : "NEISSERIA GONORRHOEAE (GONOCOCO)"
  },
  {
    "code" : "0306017",
    "display" : "CULTIVO PARA HONGOS O LEVADURAS, C/U."
  },
  {
    "code" : "0306018",
    "display" : "CULTIVO PARA KOCH, BACILO DE"
  },
  {
    "code" : "0306019",
    "display" : "CULTIVO PARA LEGIONELLA"
  },
  {
    "code" : "0306020",
    "display" : "CULTIVO PARA LISTERIA"
  },
  {
    "code" : "0306021",
    "display" : "CULTIVO PARA MENINGOCOCO"
  },
  {
    "code" : "0306022",
    "display" : "CULTIVO DE MYCOBACTERIA, TIPIFICACION DE"
  },
  {
    "code" : "0306023",
    "display" : "MYCOPLASMA Y UREAPLASMA, C/U"
  },
  {
    "code" : "0306024",
    "display" : "ANTIBIOGRAMA DE ANAEROBIOS (MINIMO 4 FARMACOS)"
  },
  {
    "code" : "0306025",
    "display" : "ANTIBIOGRAMA BACILO DE KOCH (CADA FARMACO)"
  },
  {
    "code" : "1402041",
    "display" : "RADICAL CLASICA (INCLUYE EXANTERACION ORBITARIA Y REPARACION PROTESICA)"
  },
  {
    "code" : "0306026",
    "display" : "ANTIBIOGRAMA CORRIENTE (MINIMO 10 FARMACOS) (EN CASO DE UROCULTIVO NO CORRESPONDE SU COBRO; INCLUIDO EN EL VALOR 03-06-011)"
  },
  {
    "code" : "0306027",
    "display" : "ANTIBIOGRAMA DE ESTUDIO DE SENSIBILIDAD POR DILUCION (CIM) (CIM) (MINIMO 6 FARMACOS) (EN CASO DE UROCULTIVO, NO CORRESPONDE SU COBRO; INCLUIDO EN EL VALOR CODIGO 03-06-011)"
  },
  {
    "code" : "0306028",
    "display" : "ANTIBIOGRAMA HONGOS (MINIMO 4 FARMACOS)"
  },
  {
    "code" : "0306029",
    "display" : "AUTOVACUNAS, INCLUYE CULTIVO Y PREPARACION DE MINIMO 10 AMPOLLAS"
  },
  {
    "code" : "0306030",
    "display" : "PODER BACTERICIDA DEL SUERO"
  },
  {
    "code" : "0306031",
    "display" : "PREPARACION DE VACUNAS UNI O POLIVALENTES MANTENIDAS EN STOCK (MINIMO 5AMPOLLAS)"
  },
  {
    "code" : "0306032",
    "display" : "ASPERGILOSIS, CANDIDIASIS, HISTOPLASMOSIS U OTROS HONGOS POR INMUNODIAGNOSTICO C/U"
  },
  {
    "code" : "0306033",
    "display" : "BRUCELLA, REACCION DE AGLUTINACION PARA (WRIGHT-HUDLESON) O SIMILARES"
  },
  {
    "code" : "0306034",
    "display" : "CLAMIDIAS POR INMUNOFLUORESCENCIA, PEROXIDASA, ELISA O SIMILARES"
  },
  {
    "code" : "0306035",
    "display" : "LINFOGRANULOMA VENEREO, PSITACOSIS, TIFUS EXANTEMATICO, MYCOPLASMA PORINMUNO- DIAGNOSTICO, C/U"
  },
  {
    "code" : "0306036",
    "display" : "MONONUCLEOSIS, REACCION DE PAUL BUNNELL, ANTICUERPOS HETEROFILOS O SIMILARES"
  },
  {
    "code" : "0306037",
    "display" : "MYCOPLASMA"
  },
  {
    "code" : "0306038",
    "display" : "R.P.R."
  },
  {
    "code" : "0306039",
    "display" : "TIFICAS, REACCIONES DE AGLUTINACION (EBERTH H Y O, PARATYPHI A Y B)(WIDAL)"
  },
  {
    "code" : "0306040",
    "display" : "TIFUS EXANTEMATICO, REACCION DE AGLUTINACION PARA (WEIL-FELIX)"
  },
  {
    "code" : "0306041",
    "display" : "TREPONEMA PALLIDUM FTA - ABS, MHA-TP C/U"
  },
  {
    "code" : "0306042",
    "display" : "V.D.R.L."
  },
  {
    "code" : "0306043",
    "display" : "ARTROPODOS MACROSCOPICOS (IMAGOS Y/O PUPAS Y/O LARVAS), DIAGNOSTICO DE"
  },
  {
    "code" : "0306045",
    "display" : "COPROPARASITARIO SERIADO CON TECNICA PARA DIENTAMOEBA FRAGILIS O PARACRYPTOSPORIDIUM SP (INCLUYE LOS CODIGOS 03-06-048 Y/O 03-06-059 MAS APLICACION DE TECNICA DE FROTIS CON TINCION TRICROMICA O TINCION ZIEHL-NEELSEN EN POR LO MENOS 3 MUESTRAS, SEGUN C"
  },
  {
    "code" : "0306046",
    "display" : "COPROPARASITARIO SERIADO PARA FASCIOLA HEPATICA (INCLUYE DIAGNOSTICO DEGUSANOS MACROSCOPICOS Y EXAMEN MICROSCOPICO DE 10 MUESTRAS SEPARADAS POR METODO DE TELEMANN Y DE OTRAS 10 MUESTRAS SEPARADAS Y SI-MULTANEAS CON LAS ANTERIORES POR TECNICA DE SEDIMEN"
  },
  {
    "code" : "0306047",
    "display" : "COPROPARASITARIO SERIADO PARA ISOSPORA Y SARCOCYSTIS (INCLUYE DIAGNOSTICO DE GUSANOS MACROSCOPICOS Y EXAMEN MICROSCOPICO DE 3 MUESTRAS SEPARADAS)"
  },
  {
    "code" : "0306048",
    "display" : "COPROPARASITARIO SERIADO SIMPLE (INCLUYE DIAGNOSTICO DE GUSANOS MACROSCOPICOS Y EXAMEN MICROSCOPICO POR CONCENTRACION DE 3 MUESTRAS SEPARADAS METODO TELEMANN) (PROC. AUT.)"
  },
  {
    "code" : "0306049",
    "display" : "DIAGNOSTICO DE PARASITOS EN JUGO DUODENAL Y/O BILIS, EXAMEN MACROSCOPICO Y MICROSCOPICO (DIRECTO Y/O CONCENTRACION, C/S TINCION)"
  },
  {
    "code" : "0306050",
    "display" : "DIAGNOSTICO PARASITARIO EN EXUDADOS, SECRECIONES Y OTROS LIQUIDOS ORGANICOS (NO ESPECIFICADOS MAS ADELANTE), EXA-MEN MACRO Y MICROSCOPICO DE (INCLUYE CONCENTRACION Y/O TINCION CUANDO PROCEDA), C/U"
  },
  {
    "code" : "0306051",
    "display" : "GRAHAM, EXAMEN DE (INCLUYE DIAGNOSTICO DE GUSANOS MACROSCOPICOS Y EXAMEN MICROSCOPICO DE 5 MUESTRAS SEPARADAS)"
  },
  {
    "code" : "0306052",
    "display" : "GUSANOS MACROSCOPICOS, DIAGNOSTICO DE (PROC. AUT.)"
  },
  {
    "code" : "0306053",
    "display" : "HEMOPARASITOS, DIAGNOSTICO MICROSCOPICO DE (MINIMO 10 FROTIS Y/O GOTASGRUESAS, C/S EXAMEN DIRECTO AL FRESCO), CADA SESION"
  },
  {
    "code" : "0306054",
    "display" : "HEMOPARASITOS, DIAGNOSTICO POR TECNICA DE STROUT O SIMILAR EN HASTA 10TUBOS CAPILARES, CADA SESION"
  },
  {
    "code" : "0306056",
    "display" : "RASPADO DE PIEL, EXAMEN MICROSCOPICO DE (\"ACAROTEST\"): DE 6 A 10 PREPARACIONES"
  },
  {
    "code" : "0306057",
    "display" : "TENIAS POST. TRAT., DIAGNOSTICO Y BUSQUEDA DE ESCOLEX DE"
  },
  {
    "code" : "0306058",
    "display" : "XENODIAGNOSTICO (CADA APLICACION DE 2 CAJAS, CON 6 NINFAS POR LO MENOSC/U, EXAMINADAS A LOS 20 Y/O 30 DIAS Y HASTA POR 60 DIAS MAS SI PROCEDE)"
  },
  {
    "code" : "0306059",
    "display" : "COPROPARASITOLOGICO TRES MUESTRAS SERIADAS PAFS (PROC. AUT.)"
  },
  {
    "code" : "0306060",
    "display" : "DOBLE DIFUSION (\"ARCO QUINTO\") (HIDATIDOSIS Y OTRAS), C/U"
  },
  {
    "code" : "0306061",
    "display" : "ELISA INDIRECTA (CHAGAS, HIDATIDOSIS, TOXOCARIASIS Y OTRAS), C/U"
  },
  {
    "code" : "0306062",
    "display" : "FIJACION DEL COMPLEMENTO (DISTOMATOSIS, TOXO-PLASMOSIS, CISTICERCOSIS YOTRAS) C/U"
  },
  {
    "code" : "0306063",
    "display" : "FLOCULACION EN BENTONITA, LATEX, PRECIPITINAS O SIMILAR (TRIQUINOSIS, HIDATIDOSIS Y OTROS), C/U"
  },
  {
    "code" : "0306064",
    "display" : "HEMAGLUTINACION INDIRECTA (TOXOPLASMOSIS, CHAGAS, HIDATIDOSIS Y OTRAS),C/U"
  },
  {
    "code" : "0306065",
    "display" : "INMUNOELECTROFORESIS O CONTRAINMUNOELECTRO-FORESIS (HIDATIDOSIS, DISTOMATOSIS, AMEBIASIS Y OTRAS), C/U"
  },
  {
    "code" : "0306066",
    "display" : "INMUNOFLUORESCENCIA INDIRECTA (TOXO-PLASMOSIS, CHAGAS, AMEBIASIS Y OTRAS), C/U"
  },
  {
    "code" : "0306067",
    "display" : "REACCION INTRADERMICA (INCLUYE EL VALOR Y LA APLICACION DEL ANTIGENO YDEL CONTROL Y EXAMEN DE LAS REACCIONES INMEDIATAS Y RETARDADAS, CADA ANTIGENO) (BACHMANN, DISTOMATOSIS U OTRAS)"
  },
  {
    "code" : "0306068",
    "display" : "AISLAMIENTO DE VIRUS (ADENOVIRUS, CITOMEGALO-VIRUS, COXSAKIE, HERPES, INFLUENZA, POLIO, SARAMPION Y OTROS), C/U"
  },
  {
    "code" : "0306069",
    "display" : "ANTICUERPOS VIRALES, DETERM. DE (ADENOVIRUS, CITOMEGALOVIRUS, HERPES SIMPLE, RUBEOLA, INFLUENZA A Y B; VIRUS VARICELA-ZOSTER; VIRUS SINCICIAL RESPIRATORIO; PARAINFLUENZA 1, 2 Y 3, H.I.V., EPSTEIN BARR Y OTROS), C/U"
  },
  {
    "code" : "0306070",
    "display" : "ANTIGENOS VIRALES DETERM. DE (ADENOVIRUS, CITOMEGALOVIRUS, HERPES SIMPLE, RUBEOLA, INFLUENZA, ROTAVIRUS, Y OTROS), (POR CUALQUIER TECNICA EJ.: INMUNOFLUORESCENCIA), C/U"
  },
  {
    "code" : "0306071",
    "display" : "FIJACION DE COMPLEMENTO, REACCION (ADENOVIRUS, CITOMEGALOVIRUS, HERPESSIMPLE, INFLUENZA, RUBEOLA Y OTROS), C/U"
  },
  {
    "code" : "0306072",
    "display" : "REACCION DE SERONEUTRALIZACION PARA: VIRUS POLIO, ECHO, COXSAKIE, C/U"
  },
  {
    "code" : "1402026",
    "display" : "BIOPSIA QUIR., MUCOSA ORONASOFARINGEA (PROC. AUT.)"
  },
  {
    "code" : "1402027",
    "display" : "BIOPSIA QUIR., PIEL Y MUCOSA CARA (PROC. AUT.)"
  },
  {
    "code" : "1402028",
    "display" : "RESECCION CUTANEA AMPLIADA (INCLUYE MUSCULATURA, GANGLIOS Y HUESOS SUBYACENTES; DESPLAZAMIENTO DE COLGAJOS)"
  },
  {
    "code" : "1402029",
    "display" : "RESECCION CUTANEA SIMPLE (SUTURA PRIMARIA)"
  },
  {
    "code" : "1402030",
    "display" : "TUMOR MALIGNO DE LABIO SUPERIOR O INFERIOR, RESECCION TOTAL DEL LABIO YCIRUGIA REPARADORA"
  },
  {
    "code" : "1402031",
    "display" : "TUMOR MALIGNO DE LABIO SUPERIOR O INFERIOR, RESECCION PARCIAL DEL LABIOY CIRUGIA REPARADORA"
  },
  {
    "code" : "1402032",
    "display" : "RESECCION PARCIAL Y CIRUGIA REPARADORA"
  },
  {
    "code" : "1402033",
    "display" : "RESECCION TOTAL Y CIRUGIA REPARADORA"
  },
  {
    "code" : "1402034",
    "display" : "RESECCION FRONTO-NASO-ETMOIDIANA"
  },
  {
    "code" : "1402035",
    "display" : "EXANTERACION ORBITARIA AMPLIADA (INCLUYE ETMOIDES, HUESO FRONTAL, BASEDE CRANEO ANTERIOR Y REGION MAXILO-MALAR)"
  },
  {
    "code" : "1402036",
    "display" : "HUESO TEMPORAL, EXTIRP. RADICAL"
  },
  {
    "code" : "1402037",
    "display" : "PARCIAL (INCLUYE PALADAR OSEO; REPARACION PROTESICA)"
  },
  {
    "code" : "1402038",
    "display" : "PARCIAL (INCLUYE PALADAR OSEO; REPARACION CON COLGAJO)"
  },
  {
    "code" : "1402039",
    "display" : "RADICAL AMPLIADA (INCLUYE EXANTERACION ORBITARIA Y DE FOSA CRANEAL ANTERIOR O MEDIA)"
  },
  {
    "code" : "1402040",
    "display" : "RADICAL CLASICA (INCLUYE EXANTERACION ORBITARIA Y REPARACION CON COLGAJO)"
  },
  {
    "code" : "0402019",
    "display" : "ANGIOGRAFIA SELECTIVA DE CAROTIDA EXTERNA O INTERNA"
  },
  {
    "code" : "0402020",
    "display" : "ANGIOGRAFIA SELECTIVA MEDULAR"
  },
  {
    "code" : "0402021",
    "display" : "ANGIOGRAFIA SUBCLAVIA BILATERAL"
  },
  {
    "code" : "0402022",
    "display" : "ANGIOPLASTIA INTRALUMINAL CORONARIA. PROCEDIMIENTO RADIOLO-GICO. (A.C.17-01-031)"
  },
  {
    "code" : "0402023",
    "display" : "ANGIOPLASTIA INTRALUMINAL PERIFERICA. PROCEDIMIENTO RADIOLO-GICO. (A.C. 17-01-032)"
  },
  {
    "code" : "0402024",
    "display" : "AORTOGRAFIA CON AOT O CINEANGIOGRAFIA"
  },
  {
    "code" : "0402025",
    "display" : "ARTERIOGRAFIA DE CADA EXTREMIDAD"
  },
  {
    "code" : "0402026",
    "display" : "ARTERIOGRAFIA MEDULAR CERVICO-DORSAL O DORSO-LUMBAR (INCLUYE TODO EL PROCEDIMIENTO)"
  },
  {
    "code" : "0402027",
    "display" : "ARTERIOGRAFIA SELECTIVA CON AOT O CINEANGIOGRAFIA (PULMONAR, RENAL, TRONCO CELIACO O SIMILAR) C/U"
  },
  {
    "code" : "0402028",
    "display" : "ARTERIOGRAFIA CAROTIDA POR PUNCION PERCUTANEA"
  },
  {
    "code" : "0402029",
    "display" : "ARTERIOGRAFIA CAROTIDA VERTEBRAL POR CATETERIZACION (DE LA SUBCLAVIA AXILAR, HUMERAL O FEMORAL)"
  },
  {
    "code" : "0402030",
    "display" : "CINECORONARIOGRAFIA (A.C. 17-01-019)"
  },
  {
    "code" : "0402031",
    "display" : "EMBOLIZACION O BALONIZACION (A.C. DE LA ANGIOGRAFIA CORRESPONDIENTE) (INCLUYE CONTROL RADIOLOGICO INMEDIATO)"
  },
  {
    "code" : "3005001",
    "display" : "DROGA INMUNOSUPRESORA PROTOCOLO 0"
  },
  {
    "code" : "3005002",
    "display" : "DROGA INMUNOSUPRESORA PROTOCOLO 1A"
  },
  {
    "code" : "3005003",
    "display" : "DROGA INMUNOSUPRESORA PROTOCOLO 1B"
  },
  {
    "code" : "3005004",
    "display" : "ESTUDIO PRE TRASPLANTE (RIÑON)"
  },
  {
    "code" : "3006001",
    "display" : "ERITROPOYETINA PACIENTES EN DIALISIS"
  },
  {
    "code" : "3006002",
    "display" : "FIERRO ENDOVENOSO, PACIENTE EN DIALISIS"
  },
  {
    "code" : "2501131",
    "display" : "INSTALACION CATETERTRANSITORIO PARA HEMODIALISIS"
  },
  {
    "code" : "2501132",
    "display" : "INSTALACIÓN CATÉTER TUNELIZADO"
  },
  {
    "code" : "0301087",
    "display" : "VITAMINA B12, ABSORCION DE (CO 57 O SIMILAR)"
  },
  {
    "code" : "0301088",
    "display" : "VOLEMIA (INCLUYE VOLUMEN GLOBULAR TOTAL, VOLUMEN PLASMATICO TOTAL Y VOLUMEN SANGUINEO TOTAL)"
  },
  {
    "code" : "0301089",
    "display" : "VON WILLEBRAND, AG DE (FACTOR VIII AG.)"
  },
  {
    "code" : "0301090",
    "display" : "COFACTOR DE RISTOCETINA"
  },
  {
    "code" : "0301091",
    "display" : "PROTEINA C"
  },
  {
    "code" : "0301092",
    "display" : "PROTEINA S"
  },
  {
    "code" : "0301093",
    "display" : "RESISTENCIA PROTEINA C"
  },
  {
    "code" : "0302001",
    "display" : "ACETONA CUALITATIVA"
  },
  {
    "code" : "0302002",
    "display" : "ACIDO CITRICO"
  },
  {
    "code" : "0302004",
    "display" : "ACIDO LACTICO"
  },
  {
    "code" : "0302005",
    "display" : "ACIDO URICO, EN SANGRE"
  },
  {
    "code" : "0302006",
    "display" : "ALCOHOL ETILICO"
  },
  {
    "code" : "0302007",
    "display" : "ALDOLASA"
  },
  {
    "code" : "0302008",
    "display" : "AMILASA, EN SANGRE"
  },
  {
    "code" : "0302009",
    "display" : "AMINOACIDOS, CUALITATIVO EN SANGRE"
  },
  {
    "code" : "0302010",
    "display" : "AMONIO"
  },
  {
    "code" : "0302011",
    "display" : "BICARBONATO (PROC. AUT.)"
  },
  {
    "code" : "0302012",
    "display" : "BILIRRUBINA TOTAL (PROC. AUT.)"
  },
  {
    "code" : "0302013",
    "display" : "ICTERICIA DEL RECIEN NACIDO (BILIRRUBINA)"
  },
  {
    "code" : "0302014",
    "display" : "BROMOSULFTALEINA, PRUEBA DE (INCLUYE MEDICAMENTO Y TOMAS DE MUESTRA)"
  },
  {
    "code" : "0302015",
    "display" : "CALCIO EN SANGRE"
  },
  {
    "code" : "0302016",
    "display" : "CALCIO IONICO, INCLUYE PROTEINAS TOTALES"
  },
  {
    "code" : "0302017",
    "display" : "CAROTENO"
  },
  {
    "code" : "0302018",
    "display" : "CAROTENO, PRUEBA DE SOBRECARGA DE (INCLUYE TOMAS DE MUESTRA)"
  },
  {
    "code" : "0302019",
    "display" : "CERULOPLASMINA"
  },
  {
    "code" : "0302020",
    "display" : "COBRE"
  },
  {
    "code" : "0302021",
    "display" : "COLINESTERASA EN PLASMA O SANGRE TOTAL"
  },
  {
    "code" : "0302022",
    "display" : "CREATINA"
  },
  {
    "code" : "0302023",
    "display" : "CREATININA EN SANGRE"
  },
  {
    "code" : "0302024",
    "display" : "CREATININA, DEPURACION DE (CLEARENCE) (PROC. AUT.)"
  },
  {
    "code" : "0302025",
    "display" : "CREATINQUINASA CK - MB MIOCARDICA"
  },
  {
    "code" : "0302026",
    "display" : "CREATINQUINASA CK - TOTAL"
  },
  {
    "code" : "0302028",
    "display" : "DEPURACIONES (CLEARANCE) EXOGENAS DE HIPURAN, ROJO CONGO, MANITOL E INULINA, C/U (NO INCLUYE MEDICAMNETO)"
  },
  {
    "code" : "0302029",
    "display" : "DESHIDROGENASA HIDROXIBUTIRICA (HBDH)"
  },
  {
    "code" : "0302030",
    "display" : "DESHIDROGENASA LACTICA TOTAL (LDH)"
  },
  {
    "code" : "0302031",
    "display" : "DESHIDROGENASA LACTICA TOTAL (LDH), CON SEPARACION DE ISOENZIMAS"
  },
  {
    "code" : "0302032",
    "display" : "ELECTROLITOS (SODIO, POTASIO, CLORO) C/U, EN SANGRE"
  },
  {
    "code" : "0302033",
    "display" : "ENZIMA CONVERTIDORA DE ANGIOTENSINA I"
  },
  {
    "code" : "0302034",
    "display" : "PERFIL LIPIDICO (INCLUYE: COLESTEROL TOTAL, HDL, LDL, VLDL Y TRIGLICERIDOS)"
  },
  {
    "code" : "0302035",
    "display" : "FARMACOS Y/O DROGAS; NIVELES PLASMATICOS DE (ALCOHOL, ANOREXIGENOS, ANTIARRITMICOS, ANTIBIOTICOS,ANTIDEPRESIVOS,ANTIEPILEPTICOS, ANTIHISTAMINICOS, ANTIINFLAMATORIOS Y ANALGESICOS, ESTIMULANTES RESPIRATORIOS, TRANQUILIZANTES MAYORES Y MENORES, ETC.) C/U"
  },
  {
    "code" : "0302036",
    "display" : "FENILALANINA"
  },
  {
    "code" : "0302037",
    "display" : "FOSFATASAS ACIDAS TOTALES"
  },
  {
    "code" : "0302038",
    "display" : "FOSFATASAS ACIDAS TOTALES Y FRACCION PROSTATICA"
  },
  {
    "code" : "0505014",
    "display" : "TELECOBALTOTERAPIA, PALIATIVO EN CANCER METASTASICO(CUALQUIER LOCALIZACION) MINIMO 2.500 RADS EN CADA ZONA ANATOMICA SIMULTANEA"
  },
  {
    "code" : "0505015",
    "display" : "TELECOBALTOTERAPIA, SARCOMA OSEO O DE PARTES BLANDAS"
  },
  {
    "code" : "0505016",
    "display" : "TELECOBALTOTERAPIA, TUMORES DEL SISTEMA NERVIOSO CENTRAL"
  },
  {
    "code" : "0506001",
    "display" : "ROENTGENTERAPIA-ANTIINFLAMATORIA"
  },
  {
    "code" : "0506002",
    "display" : "ROENTGENTERAPIA-CANCER DE PIEL"
  },
  {
    "code" : "0506003",
    "display" : "ROENTGENTERAPIA-PALIATIVO EN CANCER METASTASICO"
  },
  {
    "code" : "0507001",
    "display" : "RADIOTERAPIA CON ACELERADOR LINEAL DE ALTA INTENSIDAD."
  },
  {
    "code" : "0601001",
    "display" : "EVALUACION KINESIOLOGICA: MUSCULAR, ARTICULAR, POSTURAL,NEUROLOGICA Y FUNCIONAL (MAXIMO 2 POR TRATAMIENTO)"
  },
  {
    "code" : "0601003",
    "display" : "EXAMEN DE LA FUNCION MUSCULAR, C/DINAMOMETROS O SIMILARES"
  },
  {
    "code" : "0601004",
    "display" : "PISCINA TEMPERADA (INCLUYE EJERCICIOS) (PROC.AUT.)"
  },
  {
    "code" : "0601005",
    "display" : "RADIACION INFRARROJA, HORNO, BANO PARAFINA, COMPRESAS HUMEDAS, C/U (PROC.AUT.)"
  },
  {
    "code" : "0601006",
    "display" : "TANQUE DE HUBBARD CON EJERCICIOS (HIPER O HIPO-TERMAL SO- BRE 1.000 LTS DE CAPACIDAD) (PROC.AUT.)"
  },
  {
    "code" : "0601007",
    "display" : "TURBION, TANQUE CON REMOLINO (HIPER O HIPOTERMAL,BANO DE CONTRASTE) (PROC.AUT.)"
  },
  {
    "code" : "0601008",
    "display" : "LASERTERAPIA (PROC.AUT.)"
  },
  {
    "code" : "0601009",
    "display" : "ONDA CORTA (ULTRATERMIA), MICROONDAS, C/U (PROC.AUT.)"
  },
  {
    "code" : "0601010",
    "display" : "RADIACION ULTRAVIOLETA LOCALIZADA (PROC.AUT.)"
  },
  {
    "code" : "0601011",
    "display" : "ULTRASONIDO (PROC.AUT.)"
  },
  {
    "code" : "0601012",
    "display" : "ANALGESIA TRANSCUTANEA (TENS) (PROC.AUT.)"
  },
  {
    "code" : "0601013",
    "display" : "ESTIMULACION ELECTRICA (INTERFERENCIAL, DIADINAMICAS, EXPONENCIALES, GALVANICA, FARADICA, ULTRAEXCITANTE) (PROC.AUT.)"
  },
  {
    "code" : "0601014",
    "display" : "IONTOFORESIS (PROC.AUT.)"
  },
  {
    "code" : "0601015",
    "display" : "RETROALIMENTACION NEUROMUSCULAR (MIOFEEDBACK) (PROC.AUT.)"
  },
  {
    "code" : "0601016",
    "display" : "COMPRESION NEUMATICA (MASAJE COMPRESIVO) (PROC.AUT.)"
  },
  {
    "code" : "0601017",
    "display" : "EJERCICIOS RESPIRATORIOS Y PROCEDIMIENTOS DE KINESITERAPIA TORACICA (VENTILACION PULMONAR LOCALIZADA, ESTIMULACION DE LA TOS, BLOQUEOS TORACICOS, VIBRACIONES, PERCUSIONES Y TA- POTEOS) (PROC.AUT.)"
  },
  {
    "code" : "0601018",
    "display" : "ENTRENAMIENTO ERGOMETRICO CON TREADMILL O CICLOERGOMETRO (PROC.AUT.)"
  },
  {
    "code" : "0601019",
    "display" : "ENTRENAMIENTO ORTESICO DE GRAN INCAPACITADO (PROC.AUT.)"
  },
  {
    "code" : "0601020",
    "display" : "ENTRENAMIENTO PROTESICO EXTREMIDADES (PROC.AUT.)"
  },
  {
    "code" : "0601021",
    "display" : "MANIPULACION OSTEOPATICA (LIBERACION ARTICULAR, MANIPULACION VERTEBRAL) (PROC.AUT.)"
  },
  {
    "code" : "0601022",
    "display" : "MASOTERAPIA, POR SESION (PROC.AUT.)"
  },
  {
    "code" : "0601023",
    "display" : "ORIENTACION Y ENTRENAMIENTO DE CIEGOS (REEDUCACION POSTURAL, ENTRENAMIENTO VICARIANTE, DESPLAZAMIENTO) (PROC.AUT.)"
  },
  {
    "code" : "0601024",
    "display" : "REEDUCACION MOTRIZ (EJERCICIOS TERAPEUTICOS PARA RECUPERA- CION MUSCULAR, CAPACIDAD DE TRABAJO, COORDINACION, GIM- NASIA ORTOPEDICA, REEDUCACION FUNCIONAL, DE MARCHA) (INDI- VIDUAL Y POR SESION, MINIMO 30 MINUTOS) (PROC.AUT.)"
  },
  {
    "code" : "0601025",
    "display" : "TECNICAS DE FACILITACION, TECNICAS DE INHIBICION (KABAT Y/O BOBATH) (PROC.AUT.)"
  },
  {
    "code" : "0601026",
    "display" : "TECNICAS DE RELAJACION (ENTRENAMIENTO AUTOGENO SCHULTZ - JACOBSON O SIMILAR) (PROC.AUT.)"
  },
  {
    "code" : "0601027",
    "display" : "TRACCION CERVICAL Y/O LUMBAR (MECANICA O MANUAL) (PROC.AUT.)"
  },
  {
    "code" : "0601028",
    "display" : "ENTRENAMIENTO CARDIORESPIRATORIO (SESIONES INDIVIDUALES, MINIMO 30 MINUTOS) (PROC.AUT.)"
  },
  {
    "code" : "0601029",
    "display" : "ATENCION KINESIOLOGICA INTEGRAL"
  },
  {
    "code" : "0601030",
    "display" : "DRENAJES POSTURALES BRONQUIALES (PROC.AUT.)"
  },
  {
    "code" : "0601031",
    "display" : "ATENCION KINESIOLOGICA INTEGRAL, AL ENFERMO HOSP. EN UTI OINTERMEDIO (MAX. 1 DIARIA)"
  },
  {
    "code" : "0701001",
    "display" : "EN ADULTOS (ADMINISTRACION INCLUIDA EN DIA-CAMA)"
  },
  {
    "code" : "0701002",
    "display" : "EN NINOS (ADMINISTRACION INCLUIDA EN DIA-CAMA)"
  },
  {
    "code" : "0701003",
    "display" : "EN PABELLON QUIR.(C/ASISTENCIA PERMANENTE DEL PROFESIONAL ESPECIALISTA)"
  },
  {
    "code" : "0701004",
    "display" : "EN ADULTOS Y NINOS"
  },
  {
    "code" : "0701005",
    "display" : "NAME?"
  },
  {
    "code" : "0701006",
    "display" : "NAME?"
  },
  {
    "code" : "0701007",
    "display" : "AUTOTRANSFUSION, PROCEDIMIENTO COMPLETO (POR UNIDAD DE SAN-GRE O HEMODERIVADO)"
  },
  {
    "code" : "0701008",
    "display" : "HEMAFERESIS (PROC. COMPLETO)"
  },
  {
    "code" : "0701009",
    "display" : "SANGRIA, (CADA UNIDAD)"
  },
  {
    "code" : "0701010",
    "display" : "HEMAFERESIS AUTOMATIZADA POR MAQUINA SEPARADORA CELULAR"
  },
  {
    "code" : "0801001",
    "display" : "CITODIAGNOSTICO CORRIENTE, EXFOLIATIVA (PAPANICOLAU Y SIMILARES ) (POR CADA ORGANO)"
  },
  {
    "code" : "0801002",
    "display" : "CITOLOGIA ASPIRATIVA (POR PUNCION); POR CADA ORGANO"
  },
  {
    "code" : "0801003",
    "display" : "ESTUDIO HISTOPATOLOGICO CON MICROSCOPIA ELECTRONICA (POR CADA ORGANO)"
  },
  {
    "code" : "0801004",
    "display" : "ESTUDIO HISTOPATOLOGICO CON TECNICAS DE INMUNOHISTOQUIMICA O INMUNOFLUORESCENCIA (POR CADA ORGANO)"
  },
  {
    "code" : "0801005",
    "display" : "ESTUDIO HISTOPATOLOGICO CON TECNICAS HISTOQUIMICAS ESPECIALES (INCLUYEDESCALCIFICACION) (POR CADA ORGANO)"
  },
  {
    "code" : "0801006",
    "display" : "ESTUDIO HISTOPATOLOGICO DE BIOPSIA CONTEMPORANEA (RAPIDA) A INTERVENCIONES QUIRURGICAS (POR CADA ORGANO) (NO INCLUYE BIOPSIA DIFERIDA)"
  },
  {
    "code" : "0801007",
    "display" : "ESTUDIO HISTOPATOLOGICO CON TINCION CORRIENTE DE BIOPSIA DIFERIDA CON ESTUDIO SERIADO (MINIMO 10 MUESTRAS) DE UN ORGANO O PARTE DE EL (NO INCLUYE ESTUDIO CON TECNICA HABITUAL DE OTROS ORGANOS INCLUIDOS EN LA MUESTRA)"
  },
  {
    "code" : "0801008",
    "display" : "ESTUDIO HISTOPATOLOGICO CORRIENTE DE BIOPSIA DIFERIDA (POR CADA ORGANO)"
  },
  {
    "code" : "0801009",
    "display" : "NECROPSIA DE ADULTO O NIÑO, CON ESTUDIO HISTOPATOLOGICO CORRIENTE"
  },
  {
    "code" : "0801010",
    "display" : "NECROPSIA DE FETO O RECIEN NACIDO, CON ESTUDIO HISTOPATOLOGICO CORRIENTE"
  },
  {
    "code" : "0901001",
    "display" : "CONTROL PACIENTE PSIQUIATRICO CRONICO; MAX.2 CONTROLES ALMES"
  },
  {
    "code" : "0901002",
    "display" : "DESINTOXICACION O DESHABITUACION EN PACIENTES HOSPITA-LIZADOS (INCLUYE TRATAMIENTO DE LA INTOXICACION, DEL SINDRO-ME DE PRIVACION Y DE LAS COMPLICACIONES MEDICAS); POR DIA( MAXIMO 15 )"
  },
  {
    "code" : "0901003",
    "display" : "TERAPIA ELECTROCONVULSIVA AMBULATORIA (POR SESIÓN)"
  },
  {
    "code" : "0901004",
    "display" : "PRUEBA AVERSIVA CON DISULFIRANO O SIMILARES (CUALQUIERA)(MAX. 1)"
  },
  {
    "code" : "0901005",
    "display" : "PSICOTERAPIA INDIVIDUAL"
  },
  {
    "code" : "0901006",
    "display" : "TERAPIA AVERSIVA CON FARMACOS, C/SESION (MAX. 15)"
  },
  {
    "code" : "0901009",
    "display" : "EVALUACION PSIQUIATRICA PREVIA A TERAPIA (1RA. CONSULTA)."
  },
  {
    "code" : "0901010",
    "display" : "PSICOTERAPIA DE PAREJA (POR CADA MIEMBRO DE LA PAREJA)"
  },
  {
    "code" : "0902001",
    "display" : "CONSULTA PSICOLOGO CLINICO (SESIONES 45)"
  },
  {
    "code" : "0902002",
    "display" : "PSICOTERAPIA INDIVIDUAL (SESIONES 45)"
  },
  {
    "code" : "0902003",
    "display" : "PSICOTERAPIA DE PAREJA (CADA MIEMBRO DE LA PAREJA)(SESION 45)"
  },
  {
    "code" : "0902010",
    "display" : "TEST DE RORSCHACH"
  },
  {
    "code" : "0902011",
    "display" : "TEST DE RELACIONES OBJETALES"
  },
  {
    "code" : "0902012",
    "display" : "T.A.T. O C.A.T."
  },
  {
    "code" : "0902013",
    "display" : "TEST DE EDWARDS"
  },
  {
    "code" : "0902014",
    "display" : "TEST DE M.M.P.I."
  },
  {
    "code" : "0902015",
    "display" : "TEST DE WESCHLER"
  },
  {
    "code" : "0902016",
    "display" : "TEST DE DOMINO Y RAVEN"
  },
  {
    "code" : "0902017",
    "display" : "TEST DE BENDER"
  },
  {
    "code" : "0902018",
    "display" : "BENDER BIP"
  },
  {
    "code" : "0902019",
    "display" : "TEST DE GOLDSTEIN"
  },
  {
    "code" : "0902020",
    "display" : "TEST DE LURIA-NEBRASKA"
  },
  {
    "code" : "0903001",
    "display" : "CONSULTA DE PSIQUIATRIA"
  },
  {
    "code" : "0903002",
    "display" : "CONSULTA O CONTROL POR PSICOLOGO CLINICO"
  },
  {
    "code" : "0903003",
    "display" : "CONSULTA DE SALUD MENTAL POR OTROS PROFESIONALES"
  },
  {
    "code" : "0903004",
    "display" : "INTERVENCION PSICOSOCIAL GRUPAL (4 A 8 PACIENTES, FAMILIARES O CUIDADORES)"
  },
  {
    "code" : "0903005",
    "display" : "PSICOTERAPIA DE GRUPO (POR PSICOLOGO O PSIQUIATRA) (4 A 8 PACIENTES)"
  },
  {
    "code" : "0903006",
    "display" : "CONSULTORIA DE SALUD MENTAL POR PSIQUIATRA (SESION 4 HRS.) (MINIMO 8 PACIENTES)"
  },
  {
    "code" : "0903007",
    "display" : "PROGRAMA DE REHABILITACION TIPO 1 (MENSUAL, GRUPO 6 A 10 PERS.)"
  },
  {
    "code" : "0903008",
    "display" : "PROGRAMA DE REHABILITACION TIPO 2 (MENSUAL, GRUPO 5 A 7 PERS.)"
  },
  {
    "code" : "1001001",
    "display" : "TERMOGRAFIA (MAMARIA, TIROIDEA U OTRAS) C/U."
  },
  {
    "code" : "1001002",
    "display" : "DE ESTIMULACION CON GLUCAGON, HISTAMINA O SIMILAR."
  },
  {
    "code" : "1001003",
    "display" : "DE ESTIMULACION DE RENINA, FUROSEMIDA O SIMILAR"
  },
  {
    "code" : "1001004",
    "display" : "DE ESTIMULACION HGH EN ERGOMETRO."
  },
  {
    "code" : "1001005",
    "display" : "DE ESTIMULACION O FRENACION CON ACTH, CLOMIFENO, GLU-COSA, GNRH, GONADOTROFINAS, L-DOPA, METOCLOPRAMIDA,METOPIRONA, TRH, THS, O SIMILARES, C/U."
  },
  {
    "code" : "1001006",
    "display" : "DE ESTIMULO MINERALOCORTICOIDEO Y DE RESPUESTA VAS-CULAR A ANGIOTENSINA II O III O SIMILAR."
  },
  {
    "code" : "1001007",
    "display" : "DE HIPOGLICEMIA CON INSULINA O TOLBUTAMIDA O SIMILAR."
  },
  {
    "code" : "1001008",
    "display" : "DE INFUSION PROLONGADA DE ACTH, ARGININA, GNRH OSIMILAR, C/U."
  },
  {
    "code" : "1001009",
    "display" : "DE PRIVACION ACUOSA, CON O SIN ADH"
  },
  {
    "code" : "1001010",
    "display" : "DE REGITINA O SIMILAR"
  },
  {
    "code" : "1001011",
    "display" : "DE SOBRECARGA DE CALCIO"
  },
  {
    "code" : "1001012",
    "display" : "DE SOBRECARGA HIDRICA"
  },
  {
    "code" : "1100001",
    "display" : "FISURADOS AÑO 1"
  },
  {
    "code" : "1100002",
    "display" : "FISURADOS AÑO 2"
  },
  {
    "code" : "1100003",
    "display" : "FISURADOS AÑO 3"
  },
  {
    "code" : "1100004",
    "display" : "FISURADOS AÑO 4"
  },
  {
    "code" : "1100005",
    "display" : "FISURADOS AÑO 5"
  },
  {
    "code" : "1100006",
    "display" : "FISURADOS AÑO 6"
  },
  {
    "code" : "1100007",
    "display" : "FISURADOS AÑO 7"
  },
  {
    "code" : "1101001",
    "display" : "NTRAVENTRICULAR POR FONTANELA, CISTERNAL O LATERO-CERVICAL ALTA O DE HEMATOMA INTRACRANEAL"
  },
  {
    "code" : "1101002",
    "display" : "UBDURAL"
  },
  {
    "code" : "1101003",
    "display" : "UMBAR C/S MANOMETRIA C/S QUECKENSTED"
  },
  {
    "code" : "1101004",
    "display" : "E.E.G. DE 16 O MAS CANALES (INCLUYE EL COD. 11-01-006)"
  },
  {
    "code" : "1101005",
    "display" : "ELECTROCORTICOGRAFIA"
  },
  {
    "code" : "1101006",
    "display" : "ELECTROENCEFALOGRAMA (E.E.G.) STANDARD Y/O ACTIVADO \"SIN PRIVACION DE SUEÑO\" (INCLUYE MONO Y BIPOLARES, HIPERVENTILACION, C/S REACTIVIDAD AUDITIVA, VISUAL, LUMINICA, POR DROGAS U OTRAS). EQUIPO DE 8 CANALES"
  },
  {
    "code" : "1101007",
    "display" : "ESTEREO-ELECTROENCEFALOGRAFIA (INCLUYE UNO O MAS ELECTRODOSADICIONALES)"
  },
  {
    "code" : "1101008",
    "display" : "MONITOREO E.E.G. (ELECTRODOS IMPLANTADOS) POR SESION."
  },
  {
    "code" : "1101009",
    "display" : "ELECTROMIOGRAFIA DE FIBRA UNICA"
  },
  {
    "code" : "1101010",
    "display" : "ELECTROMIOGRAFIAS CUALQUIER REGION, POR EJ.: MUSCULOS FA-CIALES, FARINGE, PARAVERTEBRALES, VEJIGA Y PERINE, TESTDE MIASTENIA (INCLUYE EL ESTUDIO CLINICO Y MUESTREO SU-FICIENTES PARA DIAGNOSTICAR NATURALEZA DEL TRASTORNO YESTADO EVOLUTIVO), C/U"
  },
  {
    "code" : "1101011",
    "display" : "POTENCIALES EVOCADOS EN CORTEZA ( POR EJ.: AUDITIVO, OCULARO CORPORALES), C/U"
  },
  {
    "code" : "1101012",
    "display" : "VELOCIDAD DE CONDUCCION (INCLUYE REFLEJO H, ONDA F Y OTROS)"
  },
  {
    "code" : "1101013",
    "display" : "CAROTIDA-VERTEBRAL POR CATETERIZACION DE LA SUBCLAVIA, AXI-LAR, HUMERAL O FEMORAL. (A.C. 04-02-029)"
  },
  {
    "code" : "1101014",
    "display" : "CAROTIDEA POR PUNCION PERCUTANEA ( A.C. 04-02-028 )"
  },
  {
    "code" : "1101015",
    "display" : "FLEBOGRAFIA ORBITARIA ( A.C. 04-02-040 )"
  },
  {
    "code" : "1101016",
    "display" : "SINUSOGRAFIA (NO INCLUYE LA TREPANACION, CUANDO CORRESPONDA( A.C. 04-02-036 O 04-02-042, SEGUN CORRESPONDA )"
  },
  {
    "code" : "1101017",
    "display" : "VERTEBRAL POR PUNCION PERCUTANEA ( A.C. 04-02-034 )"
  },
  {
    "code" : "1101018",
    "display" : "YUGULOGRAFIA ( A.C. 04-02-040 )"
  },
  {
    "code" : "1101019",
    "display" : "NEUMOENCEFALOGRAFIA FRACCIONADA, POR PUNCION LUMBAR( A.C. 04-02-045 )"
  },
  {
    "code" : "1101020",
    "display" : "NEUMOENCEFALOGRAFIA P/PUNCION SUBOCCIPITAL( A.C. 04-02-045 )"
  },
  {
    "code" : "1101021",
    "display" : "VENTRICULOGRAFIA GASEOSA Y/O YODADA ( A.C. 04-02-046 )"
  },
  {
    "code" : "1101022",
    "display" : "VENTRICULOGRAFIA SELECTIVA GASEOSA Y/O YODADA( A.C. 04-02-047 )"
  },
  {
    "code" : "1101023",
    "display" : "MIELOCISTERNOGRAFIA POR PUNCION CISTERNAL Y/O LUMBAR,( A.C. 04-02-048 )"
  },
  {
    "code" : "1101024",
    "display" : "MIELOCISTERNOGRAFIA, POR PUNCION CERVICAL CON MEDIO DECONTRASTE HIDROSOLUBLE.( A.C. 04-02-048 )"
  },
  {
    "code" : "1101025",
    "display" : "POR PUNCION LUMBAR, CON MEDIO DE CONTRASTE GASEOSO O HIDRO-SOLUBLE (A.C. 04-02-049 O 04-02-050 O 04-03-011 S/CORRESP.)"
  },
  {
    "code" : "1101026",
    "display" : "DE NERVIOS PERIFERICOS INTRAMUSCULAR (DE PUNTO MOTOR)(CUALQUIER NUMERO)"
  },
  {
    "code" : "1101027",
    "display" : "DE NERVIOS PERIFERICOS TRONCULAR"
  },
  {
    "code" : "1101028",
    "display" : "DE RAMAS DEL TRIGEMINO O DEL FACIAL"
  },
  {
    "code" : "1101029",
    "display" : "DEL GANGLIO ESTRELLADO"
  },
  {
    "code" : "1101030",
    "display" : "EPIDURAL, CERVICAL, LUMBAR O SIMILARES, CADA SESION"
  },
  {
    "code" : "1101031",
    "display" : "INTERCOSTALES (CUALQUIER NUMERO)"
  },
  {
    "code" : "1101032",
    "display" : "RIZOTOMIA QUIMICA POR MEDIO DE INYECCION INTRATECAL."
  },
  {
    "code" : "1101033",
    "display" : "SUBOCCIPITAL U OTROS NERVIOS CERVICALES"
  },
  {
    "code" : "1101034",
    "display" : "INTRAMUSCULAR"
  },
  {
    "code" : "1101035",
    "display" : "INTRATECAL"
  },
  {
    "code" : "1101036",
    "display" : "TRONCULAR"
  },
  {
    "code" : "1101040",
    "display" : "E.E.G. POST-PRIVACION DE SUENO (INCLUYE CODIGO 11-01-006).EQUIPO DE 8 CANALES"
  },
  {
    "code" : "1101041",
    "display" : "E.E.G. POST-PRIVACION DE SUENO (INCLUYE CODIGO 11-01-004)EQUIPO DE 16 O MAS CANALES"
  },
  {
    "code" : "1101042",
    "display" : "E.E.G. DIGITAL (CON ACTIVACIONES) 20 CANALES"
  },
  {
    "code" : "1101043",
    "display" : "E.E.G. DIGITAL (CON ACTIVACIONES) 32 CANALES"
  },
  {
    "code" : "1101044",
    "display" : "MONITOREO E.E.G. CONTINUO DE 24 HRS."
  },
  {
    "code" : "1101045",
    "display" : "POLISOMNOGRAFIA (ESTUDIO POLIGRAFICO DEL SUENO),(ELECTROENCEFALOGRAMA, ELECTROCARDIOGRAMA, MONITOREO DEAPNEAS Y ELECTRONISTAGMOGRAFIA)"
  },
  {
    "code" : "1101046",
    "display" : "ELECTROENCEFALOGRAMA DIGITAL DE 32 CANALES CON MAPEO(MAPPING), ANALISIS ESTADISTICO DE FRECUENCIAS Y DEEVENTOS POR AREAS (INCLUYE ESTIMULOS COGNITIVOS)"
  },
  {
    "code" : "1101113",
    "display" : "ANGIOGRAFIA CEREBRAL DIGITAL POR CATETERIZACION FEMORAL (INCLUYE PROC. RADIOLOGICO, MEDIO DE CONTRASTE E INSUMOS)"
  },
  {
    "code" : "1103000",
    "display" : "COIL"
  },
  {
    "code" : "1103001",
    "display" : "ANEURISMA CIRSOIDEO DE CUERO CABELLUDO, TRAT. QUIR."
  },
  {
    "code" : "1103002",
    "display" : "SINUS PERICRANI, TRAT. QUIR."
  },
  {
    "code" : "1103003",
    "display" : "HUNDIMIENTO SIMPLE, REPARACION DE"
  },
  {
    "code" : "1103004",
    "display" : "CRANEOPLASTIA CON AUTOINJERTO"
  },
  {
    "code" : "1103005",
    "display" : "CRANEOPLASTIA CON PROTESIS (NO INCLUYE VALOR DE LA PROTESIS)"
  },
  {
    "code" : "1103006",
    "display" : "TUMORES DE CALOTA, EXTIRP. DE"
  },
  {
    "code" : "1103007",
    "display" : "OSTEOMIELITIS, LIMPIEZA QUIRURGICA"
  },
  {
    "code" : "1103008",
    "display" : "CRANIECTOMIAS DESCOMPRESIVAS"
  },
  {
    "code" : "1103009",
    "display" : "REPARACION DE FRACTURA CRECEDORA"
  },
  {
    "code" : "1103010",
    "display" : "CRANEOTOMIAS LINEALES"
  },
  {
    "code" : "1103011",
    "display" : "CRANIECTOMIAS C/S REMODELACION OSEA"
  },
  {
    "code" : "1103012",
    "display" : "HONORARIOS DEL 1ER. CIRUJANO RESPONSABLE Y SUS AYUDANTES"
  },
  {
    "code" : "1103013",
    "display" : "HONORARIOS C/U DE LOS OTROS 1ROS. CIRUJANOS Y AYUDANTES"
  },
  {
    "code" : "1103014",
    "display" : "HEMATOMA O ABSCESO EXTRADURAL, VACIAMIENTO DE"
  },
  {
    "code" : "1103015",
    "display" : "REPARACION DE FISTULA DE LCR"
  },
  {
    "code" : "1103016",
    "display" : "HEMATOMA, EMPIEMA O COLECCION SUBDURAL, VACIAMIENTO DE"
  },
  {
    "code" : "1103017",
    "display" : "QUISTES ARACNOIDALES ENCEFALICOS, TRAT. QUIR. (SUPRASELLARES, TEMPORALES, CEREBELOSOS, ETC.)"
  },
  {
    "code" : "1103018",
    "display" : "VENTRICULOSTOMIA O INSTALACION DE DERIVATIVA VENTRICULAR EXTERNA O INSTALACION DE CAPTOR PARA MEDICION DE PIC O PUNCION BIOPSIA O RESERVORIO PARA ADMINISTRACION DE MEDICAMENTOS"
  },
  {
    "code" : "1103019",
    "display" : "ABSCESO CEREBRAL, TRAT. QUIR."
  },
  {
    "code" : "1103020",
    "display" : "HERIDA POR BALA CRANEOENCEFALICA Y/O EXTIRPACION DE CUERPO EXTRAÑO"
  },
  {
    "code" : "1103021",
    "display" : "HUNDIMIENTO EXPUESTO, REPAR. DE"
  },
  {
    "code" : "1103022",
    "display" : "LOBECTOMIAS POR CONTUSION CEREBRAL"
  },
  {
    "code" : "1103023",
    "display" : "HEMATOMA INTRACEREBRAL, VACIAMIENTO DE"
  },
  {
    "code" : "1103024",
    "display" : "DE BASE DE CRANEO"
  },
  {
    "code" : "1103025",
    "display" : "INTRAORBITARIOS"
  },
  {
    "code" : "1103026",
    "display" : "ENCEFALICOS Y DE HIPOFISIS"
  },
  {
    "code" : "1103027",
    "display" : "ANEURISMAS, MALFORMACIONES ARTERIOVENOSAS ENCEFALICAS U ORBITARIAS, FISTULAS DURALES"
  },
  {
    "code" : "1103028",
    "display" : "FISTULA CAROTIDO CAVERNOSA TRATAMIENTO ENDOVASCULAR"
  },
  {
    "code" : "1103029",
    "display" : "FISTULA CAROTIDO CAVERNOSA, TRAT. QUIR."
  },
  {
    "code" : "1103030",
    "display" : "ANASTOMOSIS Y REVASCULARIZACION CEREBRAL ENDODUROSINANGIOSIS"
  },
  {
    "code" : "1103031",
    "display" : "ANASTOMOSIS Y REVASCULARIZACION CEREBRAL EXTRA-INTRACRANEANA (CIRUGIA DE CAROTIDA: VER CIRUGIA VASCULAR PERIFERICA)"
  },
  {
    "code" : "1103032",
    "display" : "INSTALACION DE DERIVATIVAS DE LCR (NO INCLUYE VALOR DE LA VALVULA)"
  },
  {
    "code" : "1103033",
    "display" : "REVISION O EXTERIORIZACION DE DERIVATIVA"
  },
  {
    "code" : "1103034",
    "display" : "VENTRICULOCISTERNOSTOMIA"
  },
  {
    "code" : "1103035",
    "display" : "FENESTRACION, SEPTOSTOMIA O COAGULACION PLEXOS COROIDEOS (TRAT. ENDOSCOPICO)"
  },
  {
    "code" : "1103036",
    "display" : "CIRUGIA DESCOMPRESIVA DE FOSA POSTERIOR U OCCIPITO-VERTEBRAL EN ARNOL CHIARI, SIRINGOMIELIA"
  },
  {
    "code" : "1103037",
    "display" : "MENINGO Y MENINGOENCEFALOCELE OCCIPITAL, REPAR. DE"
  },
  {
    "code" : "1103038",
    "display" : "CIRUGIA DESCOMPRESIVA NEUROVASCULAR"
  },
  {
    "code" : "1103039",
    "display" : "NEUROTOMIAS"
  },
  {
    "code" : "1103040",
    "display" : "NEUROLISIS O MICROCOMPRESION PERCUTANEA"
  },
  {
    "code" : "1103041",
    "display" : "CIRUGIA DE LA EPILEPSIA (CUALQUIER TECNICA)"
  },
  {
    "code" : "1402042",
    "display" : "GLOSECTOMIA PARCIAL, REPARACION PRIMARIA"
  },
  {
    "code" : "1402043",
    "display" : "RESECCION AMPLIA DE TUMOR MALIGNO Y DISECCION GANGLIONAR CERVICAL"
  },
  {
    "code" : "1402044",
    "display" : "HEMIMANDIBULECTOMIA"
  },
  {
    "code" : "1402045",
    "display" : "MANDIBULECTOMIA TOTAL"
  },
  {
    "code" : "1402046",
    "display" : "OPERACION \"COMANDO\" (INCLUYE EXTIRP. DEL TUMOR, HEMIMANDIBULECTOMIA Y DISECCION GANGLIONAR RADICAL DE CUELLO)"
  },
  {
    "code" : "1402047",
    "display" : "PARCIAL"
  },
  {
    "code" : "1402048",
    "display" : "RESECCION TRIDIMENSIONAL INTRA-ORAL O FARINGEA AMPLIADA"
  },
  {
    "code" : "1402050",
    "display" : "FARINGECTOMIA PARCIAL"
  },
  {
    "code" : "1402051",
    "display" : "GENIOPLASTIA"
  },
  {
    "code" : "1402052",
    "display" : "OSTEOTOMIAS SEGMENTARIAS SOBRE MANDIBULA (TIPO KOLE O SIMILARES) O SOBRE LOS MAXILARES (TIPO WASSMUND, WUNDERER O SIMILARES) (INCLUYEN OSTEOTOMIAS DENTOALVEOLARES) C/U"
  },
  {
    "code" : "1402053",
    "display" : "OSTEOTOMIAS TOTALES SOBRE LA MANDIBULA (SAGITAL, DE RAMAS TIPO ODWEGESER O SIMILARES) O SOBRE LOS MAXILARES (TIPO LE FORT I),C/U"
  },
  {
    "code" : "1402054",
    "display" : "CON COLOCACION DE ARCOS Y/O FERULAS Y/O BLOQUEO INTERMAXILAR"
  },
  {
    "code" : "1402055",
    "display" : "CON OSTEOSINTESIS MULTIPLES, C/S LIGADURAS CIRCUNFERENCIALES, C/S SUSPENSIONES, C/S INJERTOS OSEOS U OTROS IMPLANTES"
  },
  {
    "code" : "1402056",
    "display" : "CON OSTEOSINTESIS UNICA C/S COLOCACION DE YESO"
  },
  {
    "code" : "1402057",
    "display" : "RECONSTRUCCIONES COMPLEJAS DE LA CARA SIMULTANEAS CON PROC. NEUROQUIRURGICO (CRANEOTOMIAS MAS ABORDAJES Y TRAT. FACIAL), TIEMPO FACIAL"
  },
  {
    "code" : "1201019",
    "display" : "EXPLORACION VITREORRETINAL, AMBOS OJOS"
  },
  {
    "code" : "1201020",
    "display" : "ECOBIOMETRIA CON CALCULO DE LENTE INTRAOCULAR, AMBOS OJOS."
  },
  {
    "code" : "1201021",
    "display" : "ADAPTOMETRIA, AMBOS OJOS"
  },
  {
    "code" : "1201022",
    "display" : "EICONOMETRIA"
  },
  {
    "code" : "1201023",
    "display" : "POTENCIAL VISUAL EVOCADO EN ADULTOS, AMBOS OJOS"
  },
  {
    "code" : "1201024",
    "display" : "POTENCIAL VISUAL EVOCADO EN NINOS, AMBOS OJOS"
  },
  {
    "code" : "1201028",
    "display" : "FLEBOGRAFIA ORBITARIA (A.C. 04-02-040)"
  },
  {
    "code" : "1201029",
    "display" : "CUERPO EXTRANO CONJUNTIVAL Y/O CORNEAL EN ADULTOS"
  },
  {
    "code" : "1201030",
    "display" : "CUERPO EXTRANO CONJUNTIVAL Y/O CORNEAL EN NINOS"
  },
  {
    "code" : "1201031",
    "display" : "VIA LAGRIMAL,CATETERISMO O SONDAJE EN ADULTOS"
  },
  {
    "code" : "1201032",
    "display" : "VIA LAGRIMAL, CATETERISMO O SONDAJE EN LACTANTES"
  },
  {
    "code" : "1201033",
    "display" : "VIA LAGRIMAL, CATETERISMO O SONDAJE EN NINOS"
  },
  {
    "code" : "1201034",
    "display" : "TOCACION CORNEAL C/YODO Y/O ETER U OTROS, EN NINOS O ADULTOS"
  },
  {
    "code" : "1201035",
    "display" : "CRIOCOAGULACION CONJUNTIVAL, CORNEAL O PALPEBRAL EN ADULTOS"
  },
  {
    "code" : "1201036",
    "display" : "CRIOCOAGULACION CONJUNTIVAL, CORNEAL O PALPEBRAL EN NINOS"
  },
  {
    "code" : "1201037",
    "display" : "GLAUCOMA, CICLODIATERMIA Y/O CICLOCRIOTERAPIA"
  },
  {
    "code" : "1201038",
    "display" : "INYECCION RETROBULBAR"
  },
  {
    "code" : "1201039",
    "display" : "PESTANAS, EXTIRP. POR ELECTROCOAGULACION (CUALQUIER NUMERO)"
  },
  {
    "code" : "1201040",
    "display" : "PUNTOS LAGRIMALES; ELECTROTERMOCOAGULACION"
  },
  {
    "code" : "1201041",
    "display" : "SONDAJE VIA LAGRIMAL EN NINOS (BAJO ANESTESIA GENERAL)"
  },
  {
    "code" : "1201042",
    "display" : "CAMPIMETRIA COMPUTARIZADA, C/OJO"
  },
  {
    "code" : "1201043",
    "display" : "TOPOGRAFIA CORNEAL COMPUTARIZADA, C/OJO"
  },
  {
    "code" : "1202001",
    "display" : "INTUBACION"
  },
  {
    "code" : "1202002",
    "display" : "PUNTOS LAGRIMALES, PLASTIA DE"
  },
  {
    "code" : "1202003",
    "display" : "RECONSTITUCION DE CANALICULOS"
  },
  {
    "code" : "1202004",
    "display" : "ABSCESO, VACIAMIENTO Y/O DRENAJE DE"
  },
  {
    "code" : "1202005",
    "display" : "DACRIOCISTORRINOSTOMIA"
  },
  {
    "code" : "1202006",
    "display" : "EXTIRPACION DE"
  },
  {
    "code" : "1202007",
    "display" : "RECONSTITUCION VIA LAGRIMAL EN AUSENCIA DEL SACO"
  },
  {
    "code" : "1202008",
    "display" : "TUMOR DE GLANDULA LAGRIMAL, TRAT. QUIR. COMPLETO"
  },
  {
    "code" : "1202009",
    "display" : "TUMOR MALIGNO DEL SACO, TRAT. QUIR. COMPLETO"
  },
  {
    "code" : "1202010",
    "display" : "ABSCESO, TRAT. QUIR."
  },
  {
    "code" : "1202011",
    "display" : "BIOPSIA DE PARPADO Y/O ANEXOS (PROC. AUT.)"
  },
  {
    "code" : "1202012",
    "display" : "BLEFAROCHALASIS, PLASTIA DE"
  },
  {
    "code" : "1202013",
    "display" : "BLEFAROFIMOSIS, PLASTIA DE"
  },
  {
    "code" : "1202014",
    "display" : "BLEFARORRAFIA CON BLEFAROTOMIA POSTERIOR"
  },
  {
    "code" : "1202015",
    "display" : "CANTOPLASTIA"
  },
  {
    "code" : "1202016",
    "display" : "CHALAZION Y OTROS TUMORES BENIGNOS (UNO O MAS EN EL MISMO OJO), TRAT. QUIR. COMPLETO"
  },
  {
    "code" : "1202017",
    "display" : "COLOBOMA, PLASTIA DE"
  },
  {
    "code" : "1202018",
    "display" : "ECTROPION, PLASTIA DE"
  },
  {
    "code" : "1202019",
    "display" : "ENTROPION, PLASTIA DE"
  },
  {
    "code" : "1202020",
    "display" : "EPICANTO, PLASTIA DE"
  },
  {
    "code" : "1202021",
    "display" : "PTOSIS, TRAT. QUIR."
  },
  {
    "code" : "1202022",
    "display" : "QUISTE DERMOIDE DE LA COLA DE LA CEJA, RESEC. PLASTICA"
  },
  {
    "code" : "1202023",
    "display" : "TUMOR MALIGNO, TRAT. QUIR. COMPLETO"
  },
  {
    "code" : "1202024",
    "display" : "XANTELASMA, TRAT. QUIR."
  },
  {
    "code" : "1202025",
    "display" : "HERIDA O DEHISCENCIA, SUTURA DE (PROC. AUT.)"
  },
  {
    "code" : "1202026",
    "display" : "PTERIGION Y/O PSEUDOPTERIGION O SU RECIDIVA, EXTIRPACION"
  },
  {
    "code" : "1202027",
    "display" : "SIMBLEFARON, RESECCION DE ADHERENCIAS Y PLASTIA DE"
  },
  {
    "code" : "1202028",
    "display" : "TUMOR BENIGNO, EXTIRP. DE"
  },
  {
    "code" : "1202029",
    "display" : "ABSCESO, TRAT. QUIR."
  },
  {
    "code" : "1202030",
    "display" : "CORRECCION DE CAVIDAD ANOFTALMICA TRAT. COMPLETO"
  },
  {
    "code" : "1202031",
    "display" : "CUERPO EXTRAÑO ORBITARIO (CON ORBITOTOMIA)"
  },
  {
    "code" : "1202032",
    "display" : "EXANTERACION ORBITARIA O TUMOR ORBITARIO, TRAT. QUIRURGICO COMPLETO"
  },
  {
    "code" : "1202033",
    "display" : "ORBITOTOMIA ANTERIOR"
  },
  {
    "code" : "1202034",
    "display" : "ORBITOTOMIA LATERAL DESCOMPRESIVA"
  },
  {
    "code" : "1202035",
    "display" : "BIOPSIA DE GLOBO OCULAR (PROC. AUT.)"
  },
  {
    "code" : "1202036",
    "display" : "ENUCLEACION O IMPLANTE DE PROTESIS OCULAR (PROC. AUT.)"
  },
  {
    "code" : "1202037",
    "display" : "ENUCLEACION CON IMPLANTE"
  },
  {
    "code" : "1202038",
    "display" : "ESTRABISMO, TRAT. QUIR. COMPLETO (UNO O AMBOS OJOS)"
  },
  {
    "code" : "1202039",
    "display" : "EXANTERACION OCULAR (PROC. AUT.)"
  },
  {
    "code" : "1202040",
    "display" : "LESION TRAUMATICA, SUTURA DE (PROC. AUT.)"
  },
  {
    "code" : "1202041",
    "display" : "CIRUGIA REFRACTIVA, QUERATOTOMIA RADIAL O SIMILAR CON BISTURI DE DIAMANTE"
  },
  {
    "code" : "1202042",
    "display" : "CRIOTERAPIA Y RECESION CONJUNTIVAL"
  },
  {
    "code" : "1202044",
    "display" : "CUERPO EXTRAÑO, EXTRACCION QUIR. DE"
  },
  {
    "code" : "1202045",
    "display" : "GLAUCOMA, TRAT. QUIR. POR CUALQUIER TECNICA"
  },
  {
    "code" : "1202046",
    "display" : "HERIDA PENETRANTE CORNEAL O CORNEO-ESCLERAL O DEHISCENCIA DE SUTURA"
  },
  {
    "code" : "1202047",
    "display" : "QUERATECTOMIA LAMINAR"
  },
  {
    "code" : "1202048",
    "display" : "QUERATOPLASTIA. INJERTO LAMELAR O PENETRANTE TRAT. QUIR. COMPLETO"
  },
  {
    "code" : "1202049",
    "display" : "QUERATOPROTESIS, IMPLANTACION DE (NO INCLUYE EL VALOR DE LA PROTESIS)"
  },
  {
    "code" : "1202050",
    "display" : "RECUBRIMIENTO CONJUNTIVAL"
  },
  {
    "code" : "1202051",
    "display" : "REHABILITACION SUPERFICIE OCULAR (CON INJERTO DE MUCOSA)"
  },
  {
    "code" : "1202053",
    "display" : "IRIDECTOMIA PERIFERICA Y/U OPTICA, (PROC. AUT.)"
  },
  {
    "code" : "1202054",
    "display" : "TUMOR, TRAT. QUIR."
  },
  {
    "code" : "1202055",
    "display" : "DESGARRO SIN DESPRENDIMIENTO, DIATERMO Y/O CRIO Y/O FOTO-COAGULACION"
  },
  {
    "code" : "1202056",
    "display" : "DESPRENDIMIENTO RETINAL, CIRUGIA CONVENCIONAL (EXOIMPLANTES)"
  },
  {
    "code" : "1202057",
    "display" : "RETINOPATIA PROLIFERATIVA, (DIABETICA, HIPERTENSIVA, EALES Y OTRAS) PANFOTOCOAGULACION (TRAT. COMPLETO)"
  },
  {
    "code" : "1202058",
    "display" : "TUMOR, DIATERMO Y/O CRIO Y/O FOTOCOAGULACION DE"
  },
  {
    "code" : "1202059",
    "display" : "VASCULOPATIA RETINAL (EXCEPTO RETINOPATIA PROLIFERATIVA) DIATERMO Y/O CRIO Y/O FOTOCOAGULACION"
  },
  {
    "code" : "1202060",
    "display" : "VITRECTOMIA C/RETINOTOMIA (C/S INYECCION DE GAS O SILICONA)"
  },
  {
    "code" : "1202061",
    "display" : "VITRECTOMIA CON INYECCION DE GAS O SILICONA"
  },
  {
    "code" : "1202062",
    "display" : "VITRECTOMIA CON VITREOFAGO (PROC. AUT)"
  },
  {
    "code" : "1202063",
    "display" : "FACOERESIS INTRACAPSULAR O CATARATA SECUNDARIA O DISCISION Y ASPIRACIONDE MASAS"
  },
  {
    "code" : "1202064",
    "display" : "FACOERESIS EXTRACAPSULAR CON IMPLANTE DE LENTE INTRAOCULAR (NO INCLUYEEL VALOR DE LA PROTESIS)"
  },
  {
    "code" : "1202065",
    "display" : "IMPLANTE SECUNDARIO DE LENTE INTRAOCULAR"
  },
  {
    "code" : "1202066",
    "display" : "ASPIRACION ESFERULAR C/S CAPSULOTOMIA"
  },
  {
    "code" : "1202067",
    "display" : "DISCISION DE CAPSULA POSTERIOR"
  },
  {
    "code" : "1202068",
    "display" : "IRIDOTOMIA"
  },
  {
    "code" : "1202069",
    "display" : "TRABECULOPLASTIA O IRIDOPLASTIA"
  },
  {
    "code" : "1202070",
    "display" : "SINEQUIOTOMIA (PROC. AUT.)"
  },
  {
    "code" : "1202071",
    "display" : "HERIDA O DEHISCENCIA DE SUTURA DE PARPADO, REPARACION"
  },
  {
    "code" : "1202072",
    "display" : "RECONSTRUCCION DE PISO ORBITARIO"
  },
  {
    "code" : "1202073",
    "display" : "OPERACION TRIPLE (INJERTO, FACOERESIS E IMPLANTE DE LENTE INTRAOCULAR)(NO INCLUYE VALOR DE LA PROTESIS)"
  },
  {
    "code" : "1202074",
    "display" : "HERNIA DE IRIS Y/O FISTULAS, REPARACION DE"
  },
  {
    "code" : "1202075",
    "display" : "RETINOPEXIA NEUMATICA"
  },
  {
    "code" : "1202076",
    "display" : "EXTRACCION O CORRECCION DE DESPLAZAMIENTO DE LENTE INTRAOCULAR"
  },
  {
    "code" : "1202077",
    "display" : "DESPRENDIMIENTO COROIDEO O HEMORRAGIA COROIDEA, TRAT. QUIR."
  },
  {
    "code" : "1202078",
    "display" : "CIRUGIA FOTORREFRACTIVA O FOTOTERAPEUTICA DE CORNEA, CUALQUIER TECNICA"
  },
  {
    "code" : "1202164",
    "display" : "FACOERESIS EXTRACAPSULAR CON IMPLANTE DE LENTE INTRAOCULAR (INCLUYEEL VALOR DE LA PROTESIS)"
  },
  {
    "code" : "1202173",
    "display" : "OPERACION TRIPLE (INJERTO, FACOERESIS E IMPLANTE DE LENTE INTRAOCULAR)(INCLUYE VALOR DE LA PROTESIS)"
  },
  {
    "code" : "1301001",
    "display" : "ELECTROGUSTOMETRIA"
  },
  {
    "code" : "1301002",
    "display" : "RINOMANOMETRIA C/S VASOCONTRICTOR"
  },
  {
    "code" : "1301003",
    "display" : "NASOFARINGOLARINGOFIBROSCOPIA"
  },
  {
    "code" : "1301004",
    "display" : "RINOSCOPIA POSTERIOR, CON NASOFARINGOSCOPIA C/S TOMADE MUESTRAS (PROC. AUT.)"
  },
  {
    "code" : "1301005",
    "display" : "SINUSOSCOPIA DE CADA SENO MAXILAR POR PUNCION, C/S BIOPSIA,C/S TOMA DE MUESTRAS"
  },
  {
    "code" : "1301006",
    "display" : "CON MICROSCOPIO"
  },
  {
    "code" : "1301007",
    "display" : "SIN MICROSCOPIO"
  },
  {
    "code" : "1301008",
    "display" : "NAME?"
  },
  {
    "code" : "1301009",
    "display" : "IMPEDANCIOMETRIA"
  },
  {
    "code" : "1301010",
    "display" : "PRUEBA DE AUDIFONOS"
  },
  {
    "code" : "1301011",
    "display" : "AUDIOMETRIA POR POTENCIALES EVOCADOS ( ADULTOS O NINOS )"
  },
  {
    "code" : "1301012",
    "display" : "COCLEOVESTIBULAR CON ELECTRONISTAGMOGRAFIA"
  },
  {
    "code" : "1301013",
    "display" : "CUERDA DEL TIMPANO, TEST DE LA"
  },
  {
    "code" : "1301014",
    "display" : "ELECTROCOCLEOGRAMA"
  },
  {
    "code" : "1301015",
    "display" : "ELECTRONISTAGMOGRAFIA C/S NISTAG.DE POSICION (PROC.AUT.)"
  },
  {
    "code" : "1301016",
    "display" : "PERMEABILIDAD TUBARIA, ESTUDIO INSTRUMENTAL DE"
  },
  {
    "code" : "1301017",
    "display" : "PRUEBA CALORICA (PROC.AUT.)"
  },
  {
    "code" : "1301019",
    "display" : "TEST DE GLICEROL (CON DOS AUDIOMETRIAS )"
  },
  {
    "code" : "1301020",
    "display" : "VIII PAR, ESTUDIO DE ( EXAMEN COCLEOVESTIBULAR)(INCLUYE AUDIOMETRIA COMPLETA, EXAMEN CEREBELOSO,DE PARES CRANEANOS, DE EQUILIBRIO Y DEL NISTAGMUSESPONTANEO Y PROVOCADO, PRUEBA CALORICA)."
  },
  {
    "code" : "1301021",
    "display" : "AUDIOMETRIA A CAMPO LIBRE CON AUDIFONO"
  },
  {
    "code" : "1301022",
    "display" : "BRONCOGRAFIA, CUALQUIER TECNICA (A.C. 04-02-003)"
  },
  {
    "code" : "1301023",
    "display" : "LARINGOTRAQUEOGRAFIA POR INSTILACION (A.C. 04-02-002)"
  },
  {
    "code" : "1301024",
    "display" : "SENOS PERINASALES, PUNCION EVACUADORA C/S TOMA DE MUESTRAS,C/S INYECCION DE MEDICAMENTOS; CADA PUNCION"
  },
  {
    "code" : "1301025",
    "display" : "TAPONAMIENTO ANTERIOR (PROC. AUT.)"
  },
  {
    "code" : "1301026",
    "display" : "TAPONAMIENTO POSTERIOR"
  },
  {
    "code" : "1301027",
    "display" : "VACIAMIENTO CAVID. PERINASALES (PROETZ Y SIM.) (10 SESIONES)"
  },
  {
    "code" : "1301028",
    "display" : "VASOS Y/O CORNETES, ELECTROCAUTERIZACION (UNI O BILATERAL)"
  },
  {
    "code" : "1301029",
    "display" : "EN ADULTOS"
  },
  {
    "code" : "1301030",
    "display" : "EN NINOS"
  },
  {
    "code" : "1301035",
    "display" : "EN ADULTOS"
  },
  {
    "code" : "1301036",
    "display" : "EN NINOS"
  },
  {
    "code" : "1301037",
    "display" : "DILATACION ESOFAGICA POR SESION"
  },
  {
    "code" : "1301038",
    "display" : "EN NINOS"
  },
  {
    "code" : "1301039",
    "display" : "EN ADULTOS"
  },
  {
    "code" : "1301040",
    "display" : "LESIONES DEL OIDO EXTERNO Y/O MEDIO, CURACION BAJO MICROS-COPIO (PROC. AUT.)"
  },
  {
    "code" : "1301041",
    "display" : "TROMPA DE EUSTAQUIO, INSUFLACION INSTRUMENTAL (PROC. AUT.)"
  },
  {
    "code" : "1301042",
    "display" : "EN ADULTOS"
  },
  {
    "code" : "1301043",
    "display" : "EN NINOS"
  },
  {
    "code" : "1301044",
    "display" : "BIOPSIA OIDO (PROC. AUT.)"
  },
  {
    "code" : "1302001",
    "display" : "ABSCESO Y/O HEMATOMAS, TRAT. QUIR."
  },
  {
    "code" : "1302002",
    "display" : "CUERPO EXTRAÑO EN CONDUCTO AUDITIVO EXTERNO, EXTRACCION DE, POR VIA RETROAURICULAR"
  },
  {
    "code" : "1302003",
    "display" : "FISTULA PREAURICULAR COMPLICADA, TRAT. QUIR."
  },
  {
    "code" : "1302004",
    "display" : "TUMOR BENIGNO, TRAT. QUIR."
  },
  {
    "code" : "1302005",
    "display" : "TUMOR MALIGNO, TRAT. QUIR."
  },
  {
    "code" : "1302006",
    "display" : "ESTAPEDECTOMIA"
  },
  {
    "code" : "1302007",
    "display" : "MASTOIDECTOMIA C/S SECCION CUERDA DEL TIMPANO"
  },
  {
    "code" : "1302008",
    "display" : "MUCOSITIS TIMPANICA O MIXIOSIS UNI O BILATERAL, TRAT. QUIR."
  },
  {
    "code" : "1302009",
    "display" : "OPERACION RADICAL DEL OIDO C/S SECCION CUERDA DEL TIMPANO"
  },
  {
    "code" : "1302010",
    "display" : "PETROSITIS, TRAT. QUIR."
  },
  {
    "code" : "1302011",
    "display" : "RECONSTITUCION FUNCIONAL DE OIDO RADICALIZADO"
  },
  {
    "code" : "1302012",
    "display" : "TIMPANOPLASTIA FUNCIONAL (CUALQUIER TIPO) C/S MASTOIDECTOMIA"
  },
  {
    "code" : "1302013",
    "display" : "AGENESIA O ESTENOSIS, RECONSTITUCION PLASTICA"
  },
  {
    "code" : "1302014",
    "display" : "EXOSTOSIS, RESECCION RETRO O ENDOAURAL"
  },
  {
    "code" : "1302015",
    "display" : "NEURECTOMIA DE JACOBSON"
  },
  {
    "code" : "1302016",
    "display" : "RECONSTITUCION DE CONDUCTO AUDITIVO EXTERNO, C/S TIMPANOPLASTIA (INCLUYE REVISION DE CADENA OSICULAR)"
  },
  {
    "code" : "1302017",
    "display" : "TUMOR GLOMICO, TRAT. QUIR."
  },
  {
    "code" : "1302018",
    "display" : "LABERINTECTOMIA"
  },
  {
    "code" : "1302019",
    "display" : "NEURINOMA DEL ACUSTICO, TRAT. QUIR. VIA TRANSLABERINTICA Y/O FOSA MEDIA"
  },
  {
    "code" : "1302020",
    "display" : "DESCOMPRESION INTRAOSEA C/S PLASTIA"
  },
  {
    "code" : "1302021",
    "display" : "LESIONES A NIVEL DEL CONDUCTO AUDITIVO INTERNO, TRAT. QUIR."
  },
  {
    "code" : "1302022",
    "display" : "BIOPSIA BUCO-FARINGEA (PROC. AUT.)"
  },
  {
    "code" : "1302023",
    "display" : "SECCION SIMPLE Y/O RESECCION FRENILLO SUBLINGUAL"
  },
  {
    "code" : "1302024",
    "display" : "PISO DE LA BOCA"
  },
  {
    "code" : "1302025",
    "display" : "PERIAMIGDALIANO"
  },
  {
    "code" : "1302026",
    "display" : "RETROFARINGEO O FARINGOLARINGEO"
  },
  {
    "code" : "1302027",
    "display" : "VESTIBULO BUCAL"
  },
  {
    "code" : "1302028",
    "display" : "ADENOIDECTOMIA (PROC. AUT.)"
  },
  {
    "code" : "1302029",
    "display" : "AMIGDALECTOMIA C/S ADENOIDECTOMIA, UNI O BILATERAL"
  },
  {
    "code" : "1302030",
    "display" : "CALCULOS SALIVALES, TRAT. QUIR."
  },
  {
    "code" : "1302031",
    "display" : "TUMOR BENIGNO DE LA MUCOSA BUCAL, EXTIRP. C/S BIOPSIA BUCOFARINGEA"
  },
  {
    "code" : "1302032",
    "display" : "TUMOR MALIGNO DE LAS AMIGDALAS, TRAT. QUIR. TUMOR DE LA BASE DE LA LENGUA, EXTIRPACION DE:"
  },
  {
    "code" : "1302033",
    "display" : "BENIGNO"
  },
  {
    "code" : "1302034",
    "display" : "MALIGNO, C/S DISECCION RADICAL DE CUELLO"
  },
  {
    "code" : "1302035",
    "display" : "FARINGOPLASTIA (CUALQ. TECN.), C/S DESPLAZAMIENTO DE COLGAJOS"
  },
  {
    "code" : "1302036",
    "display" : "FIBROANGIOMA DEL RINOFARINX, TRAT. QUIR."
  },
  {
    "code" : "1302037",
    "display" : "GLOSECTOMIA TOTAL C/S DISECCION RADICAL DE CUELLO (OPERACION DE TROTTERO SIMILAR)"
  },
  {
    "code" : "1302038",
    "display" : "ABSCESOS Y HEMATOMA DEL TABIQUE NASAL, TRAT. QUIR."
  },
  {
    "code" : "1302039",
    "display" : "ARTERIA ESFENOPALATINA, CAUTERIZACION POR VIA NASAL"
  },
  {
    "code" : "1302040",
    "display" : "ARTERIA MAXILAR INTERNA, LIGADURA DE (POR VIA TRANSMAXILAR)"
  },
  {
    "code" : "1302041",
    "display" : "ARTERIAS ETMOIDALES ANTERIORES, LIGADURA DE"
  },
  {
    "code" : "1302042",
    "display" : "TURBINECTOMIA O ELECTROCAUTERIZACION DE CORNETES"
  },
  {
    "code" : "1302043",
    "display" : "CONDUCTO Y/O SENO LAGRIMAL, OBSTRUCCION DEL, TRAT. QUIR. POR VIA NASAL"
  },
  {
    "code" : "1302044",
    "display" : "ETMOIDECTOMIA ENDO O EXONASAL"
  },
  {
    "code" : "1302045",
    "display" : "FISTULA BUCO-SINUSAL, TRAT. QUIR."
  },
  {
    "code" : "1302046",
    "display" : "FRACT. NASAL RECIENTE, CERRADA O EXPUESTA, REDUCC. C/S YESO"
  },
  {
    "code" : "1302047",
    "display" : "NERVIO VIDIANO, SECCION DEL (POR CUALQUIER VIA)"
  },
  {
    "code" : "1302048",
    "display" : "PERFORACION DEL TABIQUE, TRAT. QUIR."
  },
  {
    "code" : "1302049",
    "display" : "POLIPO NASAL Y/O COANAL, TRAT. QUIR."
  },
  {
    "code" : "1302050",
    "display" : "RINITIS ATROFICA, TRAT. POR INCLUSION SUBMUCOSA, CON CUALQUIER MATERIAL, UNI O BILATERAL"
  },
  {
    "code" : "1302051",
    "display" : "RINOFIMA, TRAT. QUIR."
  },
  {
    "code" : "1302052",
    "display" : "RINOPLASTIA Y/O SEPTOPLASTIA, CUALQUIER TECNICA"
  },
  {
    "code" : "1302053",
    "display" : "SENO ESFENOIDAL, ABERTURA (VIA TRANSETMOIDAL O TRANSEPTAL)"
  },
  {
    "code" : "1302054",
    "display" : "SENO FRONTAL, TRAT. QUIR. C/S VACIAMIENTO ETMOIDAL"
  },
  {
    "code" : "1302055",
    "display" : "SENO MAXILAR, ANTROSTOMIA C/S ETMOIDECTOMIA ( OPERACION DE CADWELL LUCY SIM.)"
  },
  {
    "code" : "1302056",
    "display" : "SINEQUIA NASAL, TRAT. QUIR."
  },
  {
    "code" : "1302057",
    "display" : "TUMOR NASAL, EXTIRP. POR RINOTOMIA LATERAL"
  },
  {
    "code" : "1302058",
    "display" : "VACIAMIENTO ETMOIDAL POR VIA NASAL C/S POLIPECTOMIA"
  },
  {
    "code" : "1302059",
    "display" : "ARITENOIDECTOMIA VIA ENDOSCOPICA"
  },
  {
    "code" : "1302060",
    "display" : "ARITENOIDECTOMIA VIA EXTERNA"
  },
  {
    "code" : "1302061",
    "display" : "DECORTICACION DE CUERDAS VOCALES C/MICROSCOPIO CUERDAS VOCALES, TUMORESBENIGNOS, TRAT. QUIR."
  },
  {
    "code" : "1302062",
    "display" : "POR LARINGOTOMIA"
  },
  {
    "code" : "1302063",
    "display" : "POR VIA ENDOSCOPICA"
  },
  {
    "code" : "1302064",
    "display" : "CORDECTOMIA LARINGEA O SINEQUIA CUERDAS VOCALES POR VIA EXT."
  },
  {
    "code" : "1302065",
    "display" : "ESTENOSIS LARINGOTRAQUEALES Y/O FARINGEAS, TRAT. QUIR."
  },
  {
    "code" : "1302066",
    "display" : "LARINGECTOMIA PARCIAL O SUBTOTAL (CUALQUIER TECNICA)"
  },
  {
    "code" : "1302067",
    "display" : "LARINGECTOMIA TOTAL MAS FARINGECTOMIA PARCIAL"
  },
  {
    "code" : "1302068",
    "display" : "LARINGECTOMIA TOTAL MAS FARINGECTOMIA TOTAL Y/O ESOFAGECTOMIA CERVICAL"
  },
  {
    "code" : "1302069",
    "display" : "LARINGOCELE, TRAT. QUIR."
  },
  {
    "code" : "1302070",
    "display" : "PAPILOMAS LARINGEOS, TRAT. QUIR. (POR SESION)"
  },
  {
    "code" : "1302071",
    "display" : "PARALISIS DE CUERDAS VOCALES, TRAT. QUIR. CUALQUIER TECNICA"
  },
  {
    "code" : "1302072",
    "display" : "TRAQUEOSTOMIA (PROC. AUT.)"
  },
  {
    "code" : "1302073",
    "display" : "ESTENOSIS LARINGOTRAQUEALES Y FARINGEAS, TRAT.QUIR. POR VIAENDOSCOPICA"
  },
  {
    "code" : "1303001",
    "display" : "EVALUACION DE LA VOZ (INCLUYE RESPIRACION, TONICIDADMUSCULAR, PERFIL VOCAL E INFORME) (PROC.AUT.)(1 SESION DEMINIMO 30)"
  },
  {
    "code" : "1303002",
    "display" : "EVALUACION DEL HABLA (INCLUYE ARTICULACION, PROSODIA,DISCRIMINACIONES AUDITIVAS, ETC. E INFORME) (PROC.AUT.)(INCLUYE 2 SESIONES DE MINIMO 30)"
  },
  {
    "code" : "1303003",
    "display" : "EVALUACION DEL LENGUAJE (INCLUYE VOZ, HABLA Y ASPECTOSEMANTICO, SINTACTICO Y FONOLOGICO, ETC. E INFORME) (INCLUYE3 SESIONES DE MINIMO 30)"
  },
  {
    "code" : "1303004",
    "display" : "REHABILITACION DE LA VOZ (MAXIMO 15 SESIONES ANUALES) (CADASESION MINIMO 30)"
  },
  {
    "code" : "1303005",
    "display" : "REHABILITACION DEL HABLA Y/O DEL LENGUAJE (MAXIMO 30SESIONES ANUALES)(CADA SESION MINIMO 30)"
  },
  {
    "code" : "1401001",
    "display" : "PUNCION EVACUADORA DE QUISTE TIROIDEO C/S TOMA DE MUESTRA, C/S INYECCION DE MEDICAMENTOS"
  },
  {
    "code" : "1402001",
    "display" : "TIROIDECTOMIA BILATERAL TOTAL"
  },
  {
    "code" : "1402002",
    "display" : "TIROIDECTOMIA BILATERAL SUBTOTAL"
  },
  {
    "code" : "1402003",
    "display" : "BOCIO INTRATORACICO, TRAT. QUIR. POR ESTERNOTOMIA"
  },
  {
    "code" : "1402004",
    "display" : "TIROIDES LINGUAL, TRAT. QUIR. (OP. DE TROTTER O SIMILAR)"
  },
  {
    "code" : "1402005",
    "display" : "LOBECTOMIA CON O SIN ISTMECTOMIA O RESECCION PARCIAL"
  },
  {
    "code" : "1402006",
    "display" : "TIROIDECTOMIA TOTAL AMPLIADA CON DISECCION RADICAL O MODIFICADA DE CUELLO UNI O BILATERAL"
  },
  {
    "code" : "1402007",
    "display" : "AUTOINJERTO DE PARATIROIDES (OPERACION ASOCIADA A ALGUNAS DE LAS PRESTACIONES POSTERIORES)"
  },
  {
    "code" : "1402008",
    "display" : "EXPLOR. CERVICAL MAS ESTERNOTOMIA POR HIPERPARATIROIDISMO"
  },
  {
    "code" : "1402009",
    "display" : "PARATIROIDES, EXPLORACION CERVICAL POR HIPERPARATIROIDISMO"
  },
  {
    "code" : "1402010",
    "display" : "PARATIROIDES, REINTERVENCION POR HIPERPARATIROIDISMO"
  },
  {
    "code" : "1402011",
    "display" : "PAROTIDECTOMIA PARCIAL (SUPRAFACIAL)"
  },
  {
    "code" : "1402012",
    "display" : "PARTIDECTOMIA TOTAL"
  },
  {
    "code" : "1402013",
    "display" : "PAROTIDECTOMIA TOTAL AMPLIADA (INCLUYE MUSCULOS, GANGLIOS, ARTICULACIONES Y RAMA VERTICAL DE LA MANDIBULA)"
  },
  {
    "code" : "1402014",
    "display" : "TOTALIZACION DE PAROTIDECTOMIA PARCIAL PREVIA"
  },
  {
    "code" : "1402015",
    "display" : "SUB-MANDIBULECTOMIA AMPLIADA (INCLUYE PISO DE LA BOCA, MANDIBULA, MUSCULOS, GANGLIOS Y ARTICULACIONES)"
  },
  {
    "code" : "1402016",
    "display" : "SUB-MANDIBULECTOMIA"
  },
  {
    "code" : "1402017",
    "display" : "EXTIRPACION SUBLINGUAL"
  },
  {
    "code" : "1402018",
    "display" : "EXTIRPACION AMPLIADA (INCLUYE PISO DE BOCA, ARCO MANDIBULAR, MUSCULOS,GANGLIOS Y ARTICULACIONES)"
  },
  {
    "code" : "1402019",
    "display" : "ABSCESO PAROTIDEO, SUB-MAXILAR Y/O CERVICAL PROFUNDO, TRAT. QUIR."
  },
  {
    "code" : "1402020",
    "display" : "CONDUCTOS SALIVALES DE EXCRECION, REIMPLANTACION ORO-FARINGEA"
  },
  {
    "code" : "1402021",
    "display" : "FISTULA SALIVAL, TRAT. QUIR."
  },
  {
    "code" : "1402022",
    "display" : "MUCOCELE O QUISTE LABIAL, TRAT. QUIR."
  },
  {
    "code" : "1402023",
    "display" : "TORTICOLIS CONGENITA, TRAT. QUIR."
  },
  {
    "code" : "1402024",
    "display" : "QUISTES Y/O FISTULAS DEL CONDUCTO TIROGLOSO, Y/O BRANQUIAL, Y/O HIGROMA, Y/O FISTULA PREAURICULAR COMPLICADA, Y/U OTROS"
  },
  {
    "code" : "1402025",
    "display" : "TUMORES DEL CUERPO CAROTIDEO, TRAT. QUIR. (INCL. PROC. VASCULAR)"
  },
  {
    "code" : "0101005",
    "display" : "VISITA MEDICA DOMICILIARIA EN HORARIO INHABIL"
  },
  {
    "code" : "0101006",
    "display" : "ASISTENCIA DE CARDIOLOGO A CIRUGIAS NO CARDIACAS"
  },
  {
    "code" : "0101007",
    "display" : "ATENCION MEDICA DEL RECIEN NACIDO EN SALA DE PARTO O PABE-LLON QUIRURGICO C/S REANIMACION CARDIO-RESPIRATORIA"
  },
  {
    "code" : "0101008",
    "display" : "VISITA POR MEDICO TRATANTE A ENFERMO HOSPITALIZADO"
  },
  {
    "code" : "0101009",
    "display" : "VISITA POR MEDICO INTERCONSULTOR (O EN JUNTA MEDICA C/U) AENFERMO HOSPITALIZADO"
  },
  {
    "code" : "0101010",
    "display" : "ATENCION MEDICA DIARIA A ENFERMO HOSPITALIZADO"
  },
  {
    "code" : "0101020",
    "display" : "ATENCION MEDICA INTEGRAL"
  },
  {
    "code" : "0101101",
    "display" : "CONSULTA O CONTROL MEDICO INTEGRAL EN ATENCION PRIMARIA"
  },
  {
    "code" : "0101102",
    "display" : "CONSULTA O CONTROL MEDICO INTEGRAL EN ESPECIALIDADES (HOSP. TIPO 3)"
  },
  {
    "code" : "0101103",
    "display" : "CONSULTA MEDICA INTEGRAL EN SERVICIO DE URGENCIA (HOSP. TIPO 1)"
  },
  {
    "code" : "0101104",
    "display" : "CONSULTA MEDICA INTEGRAL EN C.R.S."
  },
  {
    "code" : "0101105",
    "display" : "CONSULTA MEDICA INTEGRAL EN SERVICIO DE URGENCIA (HOSP. TIPO 2 Y 3)"
  },
  {
    "code" : "0101106",
    "display" : "ASISTENCIA DE CARDIOLOGO A CIRUGIAS NO CARDIACAS"
  },
  {
    "code" : "0101107",
    "display" : "ATENCION MEDICA DEL RECIEN NACIDO"
  },
  {
    "code" : "0101108",
    "display" : "CONSULTA INTEGRAL DE ESPECIALIDADES EN CIRUGIA, GINECOLOGIA Y OBSTETRICIA, ORTOPEDIA Y TRAUMATOLOGIA (EN CDT)"
  },
  {
    "code" : "0101109",
    "display" : "CONSULTA INTEGRAL DE ESPECIALIDADES EN UROLOGIA, OTORINOLARINGOLOGIA, MEDICINA FISICA Y REHABILITACION, DERMATOLOGIA, PEDIATRIA Y SUBESPECIALIDADES (EN CDT)"
  },
  {
    "code" : "0101110",
    "display" : "CONSULTA INTEGRAL DE ESPECIALIDADES EN MEDICINA INTERNA Y SUBESPECIALIDADES, OFTALMOLOGIA, NEUROLOGIA, ONCOLOGIA (EN CDT)"
  },
  {
    "code" : "1802025",
    "display" : "VAGOTOMIA SELECTIVA Y SUPERSELECTIVA C/S DREN. GASTRICO, C/S PILOROPLASTIA (PROC. AUT.)"
  },
  {
    "code" : "1802026",
    "display" : "ABSCESO HEPATICO, TRAT. QUIR."
  },
  {
    "code" : "0101111",
    "display" : "CONSULTA INTEGRAL DE ESPECIALIDADES EN CIRUGIA, GINECOLOGIA Y OBSTETRICIA, ORTOPEDIA Y TRAUMATOLOGIA (EN HOSPITALES 1 Y 2)"
  },
  {
    "code" : "0101112",
    "display" : "CONSULTA INTEGRAL DE ESPECIALIDADES EN UROLOGIA, OTORRINOLARINGOLOGIA,MEDICINA FISICA Y REHABILITACION DERMATOLOGIA, PEDIATRIA Y SUBESPECIALIDADES (EN HOSPITALES TIPO 1 Y 2 )"
  },
  {
    "code" : "0101113",
    "display" : "CONSULTA INTEGRAL DE ESPECIALIDADES"
  },
  {
    "code" : "0102001",
    "display" : "CONSULTA O CONTROL POR ENFERMERA, MATRONA O NUTRICIONISTA"
  },
  {
    "code" : "0102002",
    "display" : "CONTROL DE SALUD NIÑO CON EDP POR ENFERMERA"
  },
  {
    "code" : "0102003",
    "display" : "CONSULTA O CONTROL POR AUXILIAR DE ENFERMERIA"
  },
  {
    "code" : "0102005",
    "display" : "CONSULTA POR FONOAUDIOLOGO"
  },
  {
    "code" : "0102006",
    "display" : "ATENCION KINESIOLOGICA INTEGRAL AMBULATORIA"
  },
  {
    "code" : "0102007",
    "display" : "ATENCION INTEGRAL POR TERAPEUTA OCUPACIONAL"
  },
  {
    "code" : "0103001",
    "display" : "EDUCACION DE GRUPO POR MEDICO"
  },
  {
    "code" : "0103002",
    "display" : "EDUCACION DE GRUPO POR ENFERMERA, MATRONA O NUTRICIONISTA"
  },
  {
    "code" : "0103003",
    "display" : "EDUCACION DE GRUPO POR ASISTENTE SOCIAL"
  },
  {
    "code" : "0103004",
    "display" : "EDUCACION DE GRUPO POR AUXILIAR DE ENFERMERIA"
  },
  {
    "code" : "0104001",
    "display" : "VISITA A DOMICILIO POR ENFERMERA, MATRONA O NUTRICIONISTA"
  },
  {
    "code" : "0104002",
    "display" : "VISITA A DOMICILIO POR ASISTENTE SOCIAL"
  },
  {
    "code" : "0104003",
    "display" : "VISITA A DOMICILIO POR AUXILIAR DE ENFERMERIA"
  },
  {
    "code" : "0105001",
    "display" : "VACUNACIONES (SOLO CONSIDERA ADMINISTRACION)"
  },
  {
    "code" : "0105002",
    "display" : "DESPARASITACION SARNA (CADA PERSONA)"
  },
  {
    "code" : "0105003",
    "display" : "DESPARASITACION PEDICULOSIS (CADA PERSONA)"
  },
  {
    "code" : "0106001",
    "display" : "ABREU"
  },
  {
    "code" : "0106002",
    "display" : "CURACION SIMPLE AMBULATORIA"
  },
  {
    "code" : "0106004",
    "display" : "DESPACHO DE RECETAS A CRONICOS"
  },
  {
    "code" : "0106005",
    "display" : "AUTOCONTROL PACIENTES D.I.D. (MENSUAL)"
  },
  {
    "code" : "0106006",
    "display" : "OXIGENOTERAPIA DOMICILIARIA (PACIENTES OXIGENO DEPENDIENTES)"
  },
  {
    "code" : "0107001",
    "display" : "CONSULTA MEDICA PERICIAL POR LICENCIA MEDICA"
  },
  {
    "code" : "0107002",
    "display" : "EVALUACION MEDICA POR INVALIDEZ"
  },
  {
    "code" : "0107003",
    "display" : "VISITA DOMICILIARIA INSPECTIVA POR COMISION"
  },
  {
    "code" : "0107004",
    "display" : "EVALUACION MEDICO-LEGAL POR COMISION"
  },
  {
    "code" : "0107005",
    "display" : "ARBITRAJES POR APELACION CONTRA ISAPRE"
  },
  {
    "code" : "0202004",
    "display" : "DIA CAMA DE HOSPITALIZACION SALA CUNA"
  },
  {
    "code" : "0202005",
    "display" : "DIA CAMA DE HOSPITALIZACION INCUBADORA"
  },
  {
    "code" : "0202006",
    "display" : "DIA CAMA DE HOSPITALIZACION PSIQUIATRIA"
  },
  {
    "code" : "0202007",
    "display" : "DIA CAMA PSIQUIATRICA DIURNA"
  },
  {
    "code" : "0202008",
    "display" : "DIA CAMA DE OBSERVACION"
  },
  {
    "code" : "0202009",
    "display" : "DIA CAMA DE HOSPITALIZACION CLINICA DE RECUPERACION"
  },
  {
    "code" : "0202010",
    "display" : "DIA CAMA DE HOSPITALIZACION AISLAMIENTO"
  },
  {
    "code" : "0202100",
    "display" : "DIA CAMA CONVENIO SERMENA"
  },
  {
    "code" : "0402032",
    "display" : "INSTALACION DE CATETER O SONDA INTRACARDIACA, CONTROL POR RADIOLOGO"
  },
  {
    "code" : "0402033",
    "display" : "VENTRICULOGRAFIA DERECHA Y/O IZQUIERDA (A.C. 17-01-011,17-01-020 O 17-01-021 O 17-01-041 O 17-01-42 O 17-01-43,SEGUN CORRESPONDA)"
  },
  {
    "code" : "0402034",
    "display" : "VERTEBRAL POR PUNCION PERCUTANEA"
  },
  {
    "code" : "0402035",
    "display" : "CAVOGRAFIA"
  },
  {
    "code" : "0402036",
    "display" : "FLEBOGRAFIA DEL SENO CAVERNOSO"
  },
  {
    "code" : "0402037",
    "display" : "FLEBOGRAFIA ESPINAL O EPIDURAL"
  },
  {
    "code" : "0402038",
    "display" : "FLEBOGRAFIA EXTREMIDAD INFERIOR O SUPERIOR, UN LADO CADA EXTREMIDAD."
  },
  {
    "code" : "0402039",
    "display" : "FLEBOGRAFIA INTRAOSEA"
  },
  {
    "code" : "0402040",
    "display" : "FLEBOGRAFIA ORBITARIA O YUGULAR"
  },
  {
    "code" : "0402041",
    "display" : "FLEBOGRAFIA SELECTIVA (SUPRARRENAL Y SIMILARES)"
  },
  {
    "code" : "0402042",
    "display" : "SINUSOGRAFIA DE LA DURAMADRE"
  },
  {
    "code" : "0402043",
    "display" : "LINFOGRAFIA LUMBOAORTICA"
  },
  {
    "code" : "0402044",
    "display" : "LINFOGRAFIA EXTREMIDAD, C/U"
  },
  {
    "code" : "0402045",
    "display" : "ENCEFALO-CISTERNOGRAFIA"
  },
  {
    "code" : "0402046",
    "display" : "VENTRICULOGRAFIA GASEOSA Y/O YODADA"
  },
  {
    "code" : "0402047",
    "display" : "VENTRICULOGRAFIA SELECTIVA GASEOSA O YODADA"
  },
  {
    "code" : "0402048",
    "display" : "MIELOCISTERNOGRAFIA CON CONTRASTE POSITIVO (PARA ESTUDIO DE CONDUCTOS AUDITIVOS INTERNOS O DE FISTULA DE L.C.R.)"
  },
  {
    "code" : "0402049",
    "display" : "MIELOGRAFIA GASEOSA"
  },
  {
    "code" : "0402050",
    "display" : "MIELOGRAFIA POR PUNCION LUMBAR CON CONTRASTE HIDROSOLUBLE"
  },
  {
    "code" : "0402051",
    "display" : "MIELOGRAFIA POR PUNCION SUB-OCCIPITAL"
  },
  {
    "code" : "0403001",
    "display" : "TOMOGRAFIA COMPUTARIZADA DE CRANEO ENCEFALICA"
  },
  {
    "code" : "0403002",
    "display" : "SILLA TURCA (20 CORTES 2 MM)"
  },
  {
    "code" : "0403003",
    "display" : "ANGULO PONTO CEREBELOSO (40 CORTES 2 MM)"
  },
  {
    "code" : "0403004",
    "display" : "CORTES CORONALES COMPLEMENTARIOS (10 CORTES 2, 4 Y 8 MM)"
  },
  {
    "code" : "0403005",
    "display" : "CISTERNOGRAFIA (30 CORTES 4 MM)"
  },
  {
    "code" : "0403006",
    "display" : "TEMPORAL-OIDO (INCLUYE CORONALES) (40 CORTES 2 MM)"
  },
  {
    "code" : "0403007",
    "display" : "ORBITAS MAXILOFACIAL (INCLUYE CORONALES) (40 CORTES 2-4 MM)"
  },
  {
    "code" : "0403008",
    "display" : "COLUMNA CERVICAL (4 ESPACIOS - 5 VERTEBRAS) (40 CORTES 2 MM)"
  },
  {
    "code" : "0403009",
    "display" : "COLUMNA DORSAL O LUMBAR (3 ESPACIOS - 4 VERTEBRAS) (30 CORTES 2-4 MM)"
  },
  {
    "code" : "0403010",
    "display" : "CADA ESPACIO ADICIONAL (10 CORTES 2-4 MM)"
  },
  {
    "code" : "0403011",
    "display" : "TAC CON MIELOGRAFIA (A.C. 11-01-025)"
  },
  {
    "code" : "0403012",
    "display" : "CUELLO, PARTES BLANDAS (30 CORTES, 4-8 MM)"
  },
  {
    "code" : "0403013",
    "display" : "TORAX TOTAL (30 CORTES 8-10 MM)"
  },
  {
    "code" : "0403014",
    "display" : "ABDOMEN (HIGADO, VIAS Y VESICULA BILIAR, PANCREAS, BAZO, SUPRARRENALESY RIÑONES) (40 CORTES 8-10 MM)"
  },
  {
    "code" : "0403016",
    "display" : "PELVIS (28 CORTES, 8-10 MM)"
  },
  {
    "code" : "0403017",
    "display" : "EXTREMIDADES, ESTUDIO LOCALIZADO (30 CORTES 2-4 MM)"
  },
  {
    "code" : "0404002",
    "display" : "ECOGRAFIA OBSTETRICA"
  },
  {
    "code" : "0404003",
    "display" : "ECOGRAFIA ABDOMINAL (INCLUYE HIGADO, VIA BILIAR, VESICULA, PANCREAS, RIÑONES, BAZO, RETROPERITONEO Y GRANDES VASOS)"
  },
  {
    "code" : "0404004",
    "display" : "ECOTOMOGRAFIA COMO APOYO A CIRUGIA, O A PROCEDIMIENTO(DE TORAX, MUSCULAR, PARTES BLANDAS, ETC.)"
  },
  {
    "code" : "0404005",
    "display" : "ECOTOMOGRAFIA TRANSVAGINAL O TRANSRECTAL"
  },
  {
    "code" : "0404006",
    "display" : "ECOTOMOGRAFIA GINECOLOGICA, PELVIANA FEMENINA U OBSTETRICA CON ESTUDIO FETAL"
  },
  {
    "code" : "0404007",
    "display" : "ECOTOMOGRAFIA TRANSVAGINAL PARA SEGUIMIENTO DE OVULACION, PROC. COMPLETO (6-8 SESIONES)"
  },
  {
    "code" : "0404008",
    "display" : "ECOTOMOGRAFIA PARA SEGUIMIENTO DE OVULACION, PROCEDIMIENTO COMPLETO (6A 8 SESIONES)"
  },
  {
    "code" : "0404009",
    "display" : "ECOTOMOGRAFIA PELVICA MASCULINA (INCLUYE VEJIGA Y PROSTATA)"
  },
  {
    "code" : "0404010",
    "display" : "ECOTOMOGRAFIA RENAL (BILATERAL) Y DE BAZO"
  },
  {
    "code" : "0404011",
    "display" : "ECOTOMOGRAFIA CEREBRAL (R.N. O LACTANTE)"
  },
  {
    "code" : "0404012",
    "display" : "ECOTOMOGRAFIA MAMARIA BILATERAL"
  },
  {
    "code" : "0404013",
    "display" : "ECOTOMOGRAFIA OCULAR BIDIMENSIONAL, UNO O AMBOS OJOS"
  },
  {
    "code" : "0404014",
    "display" : "ECOTOMOGRAFIA TESTICULAR (UNO O AMBOS)"
  },
  {
    "code" : "0404015",
    "display" : "ECOTOMOGRAFIA TIROIDEA"
  },
  {
    "code" : "0404016",
    "display" : "ECOTOMOGRAFIA VASCULAR PERIFERICA, ARTICULAR O DE PARTES BLANDAS"
  },
  {
    "code" : "0404018",
    "display" : "ECOTOMOGRAFIA VASCULAR PERIFERICA (BILATERAL), CERVICAL (BILATERAL), ABDOMINAL O DE OTROS ORGANOS CON DOPPLER DUPLEX"
  },
  {
    "code" : "0404019",
    "display" : "ECOTOMOGRAFIA VASCULAR PERIFERICA (BILATERAL), CERVICAL (BILATERAL), ABDOMINAL O DE OTROS ORGANOS CON DOPPLER COLOR"
  },
  {
    "code" : "0405001",
    "display" : "RNM. CRANEO-CEREBRO"
  },
  {
    "code" : "0405002",
    "display" : "RNM. SILLA TURCA"
  },
  {
    "code" : "0405003",
    "display" : "RNM. ORBITAS"
  },
  {
    "code" : "0405004",
    "display" : "RNM. ARTICULACIONES TEMPORO MAXILAR"
  },
  {
    "code" : "0405005",
    "display" : "RNM. COLUMNA CERVICAL"
  },
  {
    "code" : "0405006",
    "display" : "RNM. COLUMNA DORSAL"
  },
  {
    "code" : "0405007",
    "display" : "RNM. COLUMNA LUMBAR"
  },
  {
    "code" : "0405008",
    "display" : "RNM. ANGIOGRAFIA POR RESONANCIA"
  },
  {
    "code" : "0501001",
    "display" : "CAPTACION I-131 24 HORAS Y CINTIGRAMA TIROIDEO"
  },
  {
    "code" : "0501002",
    "display" : "CAPTACION I-131 A LAS 2 Y 24 HORAS"
  },
  {
    "code" : "0501003",
    "display" : "CAPTACION I-131 2 Y 24 HRS. Y CINTIGRAMA TIROIDEO"
  },
  {
    "code" : "0501004",
    "display" : "CAPTACION I-131 24 HORAS"
  },
  {
    "code" : "0501007",
    "display" : "CINTIGRAMA CEREBRO (GAMAENCEFALOGRAFIA)"
  },
  {
    "code" : "0501009",
    "display" : "CINTIGRAMA HEPATO-ESPLENICO"
  },
  {
    "code" : "0501010",
    "display" : "CINTIGRAMA MIOCARDIO CON PIROFOSFATO"
  },
  {
    "code" : "0501011",
    "display" : "CINTIGRAMA OSEO COMPLETO"
  },
  {
    "code" : "0501012",
    "display" : "CINTIGRAMA PERFUSION MIOCARDICA STRESS O REPOSO C/U"
  },
  {
    "code" : "0501013",
    "display" : "CINTIGRAMA PULMONAR PERFUSION O VENTILACION C/U"
  },
  {
    "code" : "0501014",
    "display" : "CINTIGRAMA RENAL CON D.M.S.A."
  },
  {
    "code" : "0501015",
    "display" : "CINTIGRAMA SUPRARRENALES (NO INCLUYE RADIOISOTOPO)"
  },
  {
    "code" : "0501016",
    "display" : "CINTIGRAMA TIROIDEO CON TC O I-131"
  },
  {
    "code" : "0501017",
    "display" : "CINTIGRAMA TIROIDEO, SUPRESION CON HORMONA TIROIDEA"
  },
  {
    "code" : "0501018",
    "display" : "DESCARGA PERCLORATO"
  },
  {
    "code" : "0501019",
    "display" : "EXPLORACION SISTEMICA"
  },
  {
    "code" : "0501020",
    "display" : "FISTULA L.C.R. ESTUDIO DE (NO INCLUYE PROC.)"
  },
  {
    "code" : "0501021",
    "display" : "HISTEROSALPINGOGRAFIA RADIOISOTOPICA"
  },
  {
    "code" : "0501022",
    "display" : "MEDULA OSEA COMPLETA"
  },
  {
    "code" : "0501023",
    "display" : "NIVELES PLASMATICOS DE I-131"
  },
  {
    "code" : "0501024",
    "display" : "POOL SANGUINEO, ARTERIOGRAFIA ISOTOPICA, FLEBOGRAFIA ISOTOPICA, LINFOGRAFIA ISOTOPICA, C/U"
  },
  {
    "code" : "0501025",
    "display" : "TEST DE SUPRESION CON HORMONA TIROIDEA"
  },
  {
    "code" : "0501026",
    "display" : "TEST ESTIMULACION CON THS"
  },
  {
    "code" : "0501027",
    "display" : "CINTIGRAFIA CON GA 67 (NO INCLUYE RADIOISOTOPO)"
  },
  {
    "code" : "0501028",
    "display" : "CINTIGRAFIA CON LEUCOCITOS MARCADOS (NO INCLUYE RADIO- FARMACO)"
  },
  {
    "code" : "0501029",
    "display" : "CINTIGRAFIA PARATIROIDES (NO INCLUYE RADIOISOTOPO)"
  },
  {
    "code" : "0501030",
    "display" : "DENSITOMETRIA OSEA A FOTON DOBLE, COLUMNA Y CADERA, UNI O BILATERAL"
  },
  {
    "code" : "0501031",
    "display" : "DENSITOMETRIA OSEA A FOTON DOBLE (CUERPO ENTERO)"
  },
  {
    "code" : "0501032",
    "display" : "ESTUDIO DINAMICO CARDIOVASCULAR STRESS Y REPOSO"
  },
  {
    "code" : "0501033",
    "display" : "ESTUDIO DINAMICO DIGESTIVO (CINTIGRAFIA DE GLANDULAS SALIVALES; MOTILIDAD ESOFAGICA; ASPIRACION PULMONAR O REFLUJO GASTROESOFAGICO; VACIAMIENTO GASTRICO; CINTIGRAFIA DE VESICULA Y VIA BILIAR; DETECCION DE SITIO DE SANGRAMIENTO DIGESTIVO, MECKEL Y OTROS)"
  },
  {
    "code" : "0401032",
    "display" : "CRANEO FRONTAL Y LATERAL (2 EXP.)"
  },
  {
    "code" : "0401033",
    "display" : "CRANEO, CADA PROYECCION ESPECIAL: AXIAL, BASE, TOWNE, TANGENCIAL, ETC.(1 EXP.)"
  },
  {
    "code" : "0401034",
    "display" : "GLOBO OCULAR, ESTUDIO DE CUERPO EXTRAÑO (4 EXP.)"
  },
  {
    "code" : "0401035",
    "display" : "OIDO, UNO O AMBOS (4 PROY.) (4 EXP.)"
  },
  {
    "code" : "0401036",
    "display" : "OIDO, UNO O AMBOS (2 PROY.) (2 EXP.)"
  },
  {
    "code" : "0401037",
    "display" : "OIDO, UNO O AMBOS (3 PROY.) (3 EXP.)"
  },
  {
    "code" : "0401038",
    "display" : "PLANIGRAFIA DE OIDOS (6-8 EXP.)"
  },
  {
    "code" : "0401039",
    "display" : "PLANIGRAFIA SILLA TURCA, CANAL OPTICO, CAVIDADES PERINASALES, C/U (6-8EXP.)"
  },
  {
    "code" : "0401040",
    "display" : "SILLA TURCA FRONTAL Y LATERAL (2 EXP.)"
  },
  {
    "code" : "0401041",
    "display" : "PLANIGRAFIA LOCALIZADA (CERVICAL, DORSAL O LUMBOSACRA) (6-8 EXP.)"
  },
  {
    "code" : "0401042",
    "display" : "COLUMNA CERVICAL O ATLAS-AXIS (FRONTAL Y LATERAL) (2 EXP.)"
  },
  {
    "code" : "0401043",
    "display" : "COLUMNA CERVICAL (FRONTAL, LATERAL Y OBLICUAS) (4 PROY.) (4 EXP.)"
  },
  {
    "code" : "0401044",
    "display" : "COLUMNA CERVICAL FUNCIONAL ADICIONAL (2 EXP.)"
  },
  {
    "code" : "0401045",
    "display" : "COLUMNA DORSAL O DORSOLUMBAR LOCALIZADA, PARRILLA COSTAL Y FEMUR ADULTO(FRONTAL Y LATERAL) (2 EXP.)"
  },
  {
    "code" : "0401046",
    "display" : "COLUMNA LUMBAR O LUMBOSACRA (AMBAS INCLUYEN QUINTO ESPACIO) (3-4 EXP.)"
  },
  {
    "code" : "0401047",
    "display" : "COLUMNA LUMBAR O LUMBOSACRA FUNCIONAL (2 EXP.)"
  },
  {
    "code" : "0401048",
    "display" : "COLUMNA LUMBAR O LUMBOSACRA, OBLICUAS ADICIONALES (2 EXP.)"
  },
  {
    "code" : "0401049",
    "display" : "COLUMNA TOTAL O DORSOLUMBAR, PANORAMICA CON FOLIO GRADUADO (1 PROY.) (1EXP.)"
  },
  {
    "code" : "0401051",
    "display" : "PELVIS, CADERA O COXOFEMORAL, C/U (1 EXP.)"
  },
  {
    "code" : "0401052",
    "display" : "PELVIS, CADERA O COXOFEMORAL, PROYECCIONES ESPECIALES; (ROTACION INTERNA, ABDUCCION, LATERAL, LAWENSTEIN U OTRAS) C/U (1 EXP.)"
  },
  {
    "code" : "0401053",
    "display" : "SACROCOXIS O ARTICULACIONES SACROILIACAS, C/U (2-3 EXP.)"
  },
  {
    "code" : "0401054",
    "display" : "BRAZO, ANTEBRAZO, CODO, MUÑECA, MANO, DEDOS, PIE O SIMILAR (FRONTAL Y LATERAL) C/U, (2 EXP.)"
  },
  {
    "code" : "0401055",
    "display" : "CLAVICULA (2 EXP.)"
  },
  {
    "code" : "0401056",
    "display" : "EDAD OSEA: CARPO Y MANO (1 EXP.)"
  },
  {
    "code" : "0401057",
    "display" : "EDAD OSEA: RODILLA (FRONTAL) (1 EXP.)"
  },
  {
    "code" : "0401058",
    "display" : "ESTUDIO DE ESCAFOIDES"
  },
  {
    "code" : "0401059",
    "display" : "ESTUDIO MUÑECA O TOBILLO (FRONT., LATERAL Y OBLICUAS; 4 EXP.)"
  },
  {
    "code" : "0401060",
    "display" : "HOMBRO, FEMUR, RODILLA, PIERNA, COSTILLA O ESTERNON (FRONTAL Y LATERAL;2 EXP.), C/U"
  },
  {
    "code" : "0401061",
    "display" : "PLANIGRAFIA OSEA FRONTAL Y/O LATERAL (6 EXP.)"
  },
  {
    "code" : "0401062",
    "display" : "PLANIGRAFIA OSEA, PROYECCIONES ESPECIALES OBLICUAS U OTRAS EN HOMBRO, BRAZO, CODO, RODILLA, ROTULAS, SESAMOIDEOS, AXIAL DE AMBAS ROTULAS O SIMILARES, C/U"
  },
  {
    "code" : "0401063",
    "display" : "TUNEL INTERCONDILEO O RADIO-CARPIANO"
  },
  {
    "code" : "0401064",
    "display" : "APOYO FLUOROSCOPICO A PROCEDIMIENTOS INTRAOPERATORIOS Y/O BIOPSIA (NO INCLUYE EL PROC.)"
  },
  {
    "code" : "0401070",
    "display" : "TORAX (FRONTAL Y LATERAL) (INCLUYE FLUOROSCOPIA) (2 PROY. PANORAMICAS) (2 EXP.)"
  },
  {
    "code" : "0401110",
    "display" : "MAMOGRAFIA UNILATERAL (2 EXP.)"
  },
  {
    "code" : "0401130",
    "display" : "PROYECCION COMPLEMENTARIA DE MAMAS (AXILAR U OTRAS), C/U"
  },
  {
    "code" : "0401151",
    "display" : "PELVIS, CADERA O COXOFEMORAL DE RN, LACTANTE O NIÑO MENOR DE 6 AÑOS, C/U (1 EXP.)"
  },
  {
    "code" : "0402001",
    "display" : "VIA LAGRIMAL (UN LADO) (2 EXP.)"
  },
  {
    "code" : "0402002",
    "display" : "LARINGOGRAFIA O LARINGOTRAQUEOGRAFIA (3 EXP.)"
  },
  {
    "code" : "0402003",
    "display" : "BRONCOGRAFIA POR CUALQUIER TECNICA (CADA LADO)"
  },
  {
    "code" : "0402004",
    "display" : "GALACTOGRAFIA, AMBOS LADOS (A.C. 20-01-012) (5 EXP.)"
  },
  {
    "code" : "0402005",
    "display" : "GALACTOGRAFIA, UN LADO (A.C. 20-01-012) (3 EXP.)"
  },
  {
    "code" : "0402006",
    "display" : "NEUMOCISTOGRAFIA (2 PROY.) (A.C. 20-01-012)"
  },
  {
    "code" : "0402007",
    "display" : "COLANGIOGRAFIA TRANSPARIETOHEPATICA (5-7 EXP)"
  },
  {
    "code" : "0402008",
    "display" : "COLANGIOPANCREATOGRAFIA ENDOSCOPICA (5-7 EXP)"
  },
  {
    "code" : "0402009",
    "display" : "FISTULOGRAFIA (3 EXP.)"
  },
  {
    "code" : "0402010",
    "display" : "COLPOPERINEOGRAFIA (A.C. 20-01-011) (3 EXP.)"
  },
  {
    "code" : "0402011",
    "display" : "HISTEROSALPINGOGRAFIA (A.C. 20-01-013) (3 EXP.)"
  },
  {
    "code" : "0402012",
    "display" : "PIELOGRAFIA ASCENDENTE (3 EXP.)"
  },
  {
    "code" : "0402013",
    "display" : "PIELOGRAFIA TRANSPARIETAL POR VIA TRANSLUMBAR (4 EXP.)"
  },
  {
    "code" : "0402014",
    "display" : "URETRO Y/O CISTOURETROGRAFIA MICCIONAL RETROGRADA (5 EXP.)"
  },
  {
    "code" : "0402015",
    "display" : "ARTROGRAFIA FACETARIA"
  },
  {
    "code" : "0402016",
    "display" : "DISCOGRAFIA"
  },
  {
    "code" : "0402017",
    "display" : "NEUMOARTROGRAFIA DE CADERA, HOMBRO, CODO, MUÑECA, ETC., C/U (8 EXP.)"
  },
  {
    "code" : "0402018",
    "display" : "NEUMOARTROGRAFIA DE RODILLA (14 EXP.)"
  },
  {
    "code" : "0202104",
    "display" : "DIA CAMA DE HOSPITALIZACION MEDICINA Y ESPECIALIDADES (SALA1 CAMA CON BANO)"
  },
  {
    "code" : "0202105",
    "display" : "DIA CAMA DE HOSPITALIZACION CIRUGIA (SALA 3 CAMAS O MAS DEPENSIONADO O MEDIO PENSIONADO)"
  },
  {
    "code" : "0202106",
    "display" : "DIA CAMA HOSPITALIZACION CIRUGIA (SALA 2 CAMAS)"
  },
  {
    "code" : "0202107",
    "display" : "DIA CAMA DE HOSPITALIZACION CIRUGIA (SALA 1 CAMA SIN BANO)"
  },
  {
    "code" : "0202108",
    "display" : "DIA CAMA DE HOSPITALIZACION CIRUGIA (SALA 1 CAMA CON BANO)"
  },
  {
    "code" : "0202109",
    "display" : "DIA CAMA DE HOSPITALIZACION PEDIATRIA (SALA 3 CAMAS O MAS DEPENSIONADO O MEDIO PENSIONADO)"
  },
  {
    "code" : "0202110",
    "display" : "DIA CAMA DE HOSPITALIZACION PEDIATRIA (SALA 2 CAMAS)"
  },
  {
    "code" : "0202111",
    "display" : "DIA CAMA DE HOSPITALIZACION PEDIATRIA (SALA 1 CAMA SIN BANO)"
  },
  {
    "code" : "0202112",
    "display" : "DIA CAMA DE HOSPITALIZACION PEDIATRIA (SALA 1 CAMA CON BANO)"
  },
  {
    "code" : "0202113",
    "display" : "DIA CAMA DE HOSPITALIZACION OBSTETRICIA Y GINECOLOGIA (SALA3 CAMAS O MAS DE PENSIONADO O MEDIO PENSIONADO)"
  },
  {
    "code" : "0202114",
    "display" : "DIA CAMA DE HOSPITALIZACION OBSTETRICIA Y GINECOLOGIA (SALA2 CAMAS)"
  },
  {
    "code" : "0202115",
    "display" : "DIA CAMA DE HOSPITALIZACION OBSTETRICIA Y GINECOLOGIA (SALA1 CAMA SIN BANO)"
  },
  {
    "code" : "0202116",
    "display" : "DIA CAMA DE HOSPITALIZACION OBSTETRICIA Y GINECOLOGIA (SALA1 CAMA CON BANO)"
  },
  {
    "code" : "0202201",
    "display" : "DIA CAMA DE HOSPITALIZACION U.T.I. O U.C.I. ADULTO"
  },
  {
    "code" : "0202202",
    "display" : "DIA CAMA DE HOSPITALIZACION U.T.I. O U.C.I. PEDIATRIA"
  },
  {
    "code" : "0202203",
    "display" : "DIA CAMA DE HOSPITALIZACION U.T.I. O U.C.I. NEONATAL"
  },
  {
    "code" : "0202301",
    "display" : "DIA CAMA DE HOSPITALIZACION INTERMEDIO ADULTO"
  },
  {
    "code" : "0202302",
    "display" : "DIA CAMA DE HOSPITALIZACION INTERMEDIO PEDIATRIA"
  },
  {
    "code" : "0202303",
    "display" : "DIA CAMA DE HOSPITALIZACION INTERMEDIO NEONATAL"
  },
  {
    "code" : "0203001",
    "display" : "DIA CAMA HOSPITALIZACION INTEGRAL MEDICINA, CIRUGIA, PEDIATRIA, OBSTETRICIA-GINECOLOGIA Y ESPECIALIDADES (SALA 3 CAMAS O MAS) HOSPITALES TIPO 1"
  },
  {
    "code" : "0203002",
    "display" : "DIA CAMA HOSPITALIZACION INTEGRAL ADULTO EN UNIDAD DE CUIDADO INTENSIVO (U.C.I.)"
  },
  {
    "code" : "0203003",
    "display" : "DIA CAMA HOSPITALIZACION INTEGRAL U.T.I. O U.C.I. PEDIATRICA"
  },
  {
    "code" : "0203004",
    "display" : "DIA CAMA HOSPITALIZACION INTEGRAL U.T.I. O U.C.I. NEONATAL"
  },
  {
    "code" : "0203005",
    "display" : "DIA CAMA HOSPITALIZACION INTEGRAL ADULTO EN UNIDAD DE TRATAMIENTO INTERMEDIO (UTI)"
  },
  {
    "code" : "0203006",
    "display" : "DIA CAMA HOSPITALIZACION INTEGRAL INTERMEDIO PEDIATRICA"
  },
  {
    "code" : "0203007",
    "display" : "DIA CAMA HOSPITALIZACION INTEGRAL INTERMEDIO NEONATAL"
  },
  {
    "code" : "0203008",
    "display" : "DIA CAMA HOSPITALIZACION INTEGRAL INCUBADORA"
  },
  {
    "code" : "0203009",
    "display" : "DIA CAMA HOSPITALIZACION INTEGRAL PSIQUIATRIA CRONICOS"
  },
  {
    "code" : "0203010",
    "display" : "DIA CAMA INTEGRAL PSIQUIATRICO DIURNO"
  },
  {
    "code" : "0203011",
    "display" : "DIA CAMA INTEGRAL DE OBSERVACION O DIA CAMA INTEGRAL AMBULATORIO DIURNO"
  },
  {
    "code" : "0203012",
    "display" : "DIA CAMA INTEGRAL GERIATRIA O CRONICOS"
  },
  {
    "code" : "0203013",
    "display" : "DIA ESTADA EN CAMARA HIPERBARICA"
  },
  {
    "code" : "0203014",
    "display" : "DIA CAMA HOGAR EMBARAZADA RURAL (DEL SERVICIO DE SALUD)"
  },
  {
    "code" : "0203015",
    "display" : "DIA CUNA DE HOSPITALIZACION INTEGRAL"
  },
  {
    "code" : "0203016",
    "display" : "DIA CAMA HOSPITALIZACION INTEGRAL URGENCIA H.U.A.P. (SOLO HOSPITAL URGENCIA ASISTENCIA PUBLICA)"
  },
  {
    "code" : "0203017",
    "display" : "DIA CAMA HOGAR PROTEGIDO PACIENTE PSIQUIATRICO COMPENSADO"
  },
  {
    "code" : "0203102",
    "display" : "DIA CAMA HOSPITALIZACION INTEGRAL MEDICINA, CIRUGIA, PEDIATRIA, OBSTETRICIA-GINECOLOGIA Y ESPECIALIDADES (SALA 3 CAMAS O MAS) HOSPITALES TIPO 2"
  },
  {
    "code" : "0203103",
    "display" : "DIA CAMA HOSPITALIZACION INTEGRAL MEDICINA, CIRUGIA, PEDIATRIA, OBSTETRICIA-GINECOLOGIA Y ESPECIALIDADES (SALA 3 CAMAS O MAS) HOSPITALES TIPO 3 Y 4"
  },
  {
    "code" : "0203109",
    "display" : "DIA CAMA HOSP. INTEGRAL PSIQUIATRIA CORTA ESTADIA"
  },
  {
    "code" : "0203110",
    "display" : "DIA CAMA HOSPITALIZACION INTEGRAL PSIQUIATRIA MEDIANA ESTADIA"
  },
  {
    "code" : "0203111",
    "display" : "CAMILLA DE OBSERVACION EN SERVICIO DE URGENCIA"
  },
  {
    "code" : "0203209",
    "display" : "DIA CAMA HOSP. INTEGRAL DESINTOXICACION ALCOHOL Y DROGAS"
  },
  {
    "code" : "0204001",
    "display" : "DIA CAMA HOSPITALIZACION INTEGRAL DOMICILIARIA BASICA"
  },
  {
    "code" : "0204002",
    "display" : "DIA CAMA HOSPITALIZACION INTEGRAL BASICA PACIENTE"
  },
  {
    "code" : "0204003",
    "display" : "PACIENTE QUEMADO - CRITICO"
  },
  {
    "code" : "0204004",
    "display" : "PACIENTE QUEMADO - SOBREVIDA EXCEPCIONAL"
  },
  {
    "code" : "0204005",
    "display" : "PACIENTE POLITRAUMATIZADO - SIN LESION MEDULAR"
  },
  {
    "code" : "0204006",
    "display" : "PACIENTE POLITRAUMATIZADO - CON LESION MEDULAR"
  },
  {
    "code" : "0301001",
    "display" : "ACIDIFICACION DEL SUERO, TEST DE HAM"
  },
  {
    "code" : "0301002",
    "display" : "ACIDO FOLICO O FOLATOS"
  },
  {
    "code" : "0301003",
    "display" : "ADENOGRAMA, ESPLENOGRAMA, MIELOGRAMA C/U"
  },
  {
    "code" : "0301004",
    "display" : "ADHESIVIDAD PLAQUETARIA"
  },
  {
    "code" : "0301005",
    "display" : "AGLUTININAS ANTI RHO"
  },
  {
    "code" : "0301006",
    "display" : "AGREGACION PLAQUETARIA"
  },
  {
    "code" : "0301007",
    "display" : "ANTICOAGULANTES CIRCULANTES O ANTICOAGULANTE LUPICO"
  },
  {
    "code" : "1901027",
    "display" : "HEMODIALISIS, TRATAMIENTO MENSUAL (CON INSUMOS INCLUIDOS)"
  },
  {
    "code" : "1901028",
    "display" : "HEMODIALISIS CON BICARBONATO CON INSUMOS (POR SESION)"
  },
  {
    "code" : "1901029",
    "display" : "HEMODIALISIS CON BICARBONATO CON INSUMOS(TRATAMIENTO MENSUAL)"
  },
  {
    "code" : "1901030",
    "display" : "ESTUDIO URODINAMICO (INCLUYE CISTOMETRIA, EMG PERINEAL Y DELESFINTER URETRAL, PERFIL URETRAL Y UROFLUJOMETRIA)"
  },
  {
    "code" : "1902001",
    "display" : "ABSCESO PERINEFRITICO, VACIAMIENTO"
  },
  {
    "code" : "1902002",
    "display" : "ARTERIAS RENALES, OPERACIONES SOBRE (PROC. AUT.)"
  },
  {
    "code" : "1902003",
    "display" : "TRASPLANTE RENAL"
  },
  {
    "code" : "1902004",
    "display" : "CIRUGIA DE BANCO, (PROC. COMPLETO) (MICRO-EXTRACORPOREA), AUTOTRASPLANTE"
  },
  {
    "code" : "1902005",
    "display" : "LITIASIS RENAL, TRAT. QUIR. PERCUTANEO C/S ULTRASONIDO (INCLUYE TODO ELPROCEDIMIENTO)"
  },
  {
    "code" : "1902006",
    "display" : "LITIASIS RENAL, TRAT. QUIR. POR NEFROTOMIA ANATROFICA O BIVALVA"
  },
  {
    "code" : "1902008",
    "display" : "LUMBOTOMIA EXPLORADORA C/S DREN., C/S BIOPSIA (PROC. AUT.)"
  },
  {
    "code" : "1902009",
    "display" : "NEFRECTOMIA PARCIAL Y/O CIRUGIA DE TRAUMATISMO RENAL"
  },
  {
    "code" : "1902010",
    "display" : "NEFRECTOMIA RADICAL AMPLIADA (INCLUYE GANGLIOS)"
  },
  {
    "code" : "1902011",
    "display" : "NEFRECTOMIA TOTAL"
  },
  {
    "code" : "1902012",
    "display" : "NEFROSTOMIA, NEFROPEXIA Y/O NEFROTOMIA POR LITIASIS, BIOPSIAS U OTRAS"
  },
  {
    "code" : "1902013",
    "display" : "PIELOTOMIA EXPLORADORA Y/O TERAPEUTICA (INCLUYE LA PIELOSTOMIA Y/O PIELOPLASTIA)"
  },
  {
    "code" : "1902014",
    "display" : "SUPRARRENALECTOMIA BILATERAL"
  },
  {
    "code" : "1902015",
    "display" : "SUPRARRENALECTOMIA UNILATERAL"
  },
  {
    "code" : "1902016",
    "display" : "ANASTOMOSIS DE LOS URETERES"
  },
  {
    "code" : "1902017",
    "display" : "FISTULA URETERO-VAGINAL, TRAT. QUIR."
  },
  {
    "code" : "1902018",
    "display" : "NEFROURETERECTOMIA"
  },
  {
    "code" : "1902019",
    "display" : "URETERECTOMIA"
  },
  {
    "code" : "1902020",
    "display" : "URETERO-LITOTOMIA ABIERTA"
  },
  {
    "code" : "1902021",
    "display" : "URETERO-LITOTOMIA ENDOSCOPICA C/URETEROSCOPIA"
  },
  {
    "code" : "1902022",
    "display" : "URETEROPLASTIAS, PROC. COMPLETO"
  },
  {
    "code" : "1902023",
    "display" : "URETERORRAFIA Y/O URETEROLISIS C/U"
  },
  {
    "code" : "1902024",
    "display" : "URETEROSTOMIA BILATERAL: VESICAL, CUTANEA O INTESTINAL"
  },
  {
    "code" : "1902025",
    "display" : "URETEROSTOMIA UNILATERAL: VESICAL, CUTANEA O INTESTINAL"
  },
  {
    "code" : "1902027",
    "display" : "CISTECTOMIA PARCIAL Y/O TRAT. QUIR. DE DIVERTICULO VESICAL"
  },
  {
    "code" : "1902028",
    "display" : "CISTECTOMIA RADICAL, PROC. COMPLETO"
  },
  {
    "code" : "1902029",
    "display" : "CISTOPLASTIA, PROC. COMPLETO"
  },
  {
    "code" : "1902031",
    "display" : "CISTOSTOMIA C/S EXTRACCION DE CUERPO EXTRAÑO O CALCULO"
  },
  {
    "code" : "1902032",
    "display" : "EXTROFIA VESICAL, PROC. COMPLETO"
  },
  {
    "code" : "1902033",
    "display" : "FISTULA VESICO-CUTANEA, Y/O VAGINAL, Y/O INTEST., TRAT. QUIR."
  },
  {
    "code" : "1902034",
    "display" : "LESIONES DEL CUELLO VESICAL, TRAT. QUIR."
  },
  {
    "code" : "1902035",
    "display" : "LIGADURA DE ARTERIAS HIPOGASTRICAS (PROC. AUT.)"
  },
  {
    "code" : "1902036",
    "display" : "OPERACION DE BRICKER"
  },
  {
    "code" : "1902037",
    "display" : "RESECCION ENDOSCOPICA DE CANCER VESICAL"
  },
  {
    "code" : "1902038",
    "display" : "RESERVORIO CONTINENTE INTESTINAL EXTERNO O INTERNO"
  },
  {
    "code" : "1902040",
    "display" : "DIVERTICULECTOMIA POR VIA VAGINAL, PERINEAL, PENOESCROTAL O QUISTECTOMIA URETRAL"
  },
  {
    "code" : "1902041",
    "display" : "FLEGMON URINOSO, DRENAJE Y CISTOSTOMIA"
  },
  {
    "code" : "1902042",
    "display" : "GLANDULAS DE COWPER, LESIONES DE LAS, TRAT. QUIR."
  },
  {
    "code" : "1902043",
    "display" : "HIPOSPADIA DISTAL O PLASTIA DE URETRA (CADA TIEMPO)"
  },
  {
    "code" : "1902044",
    "display" : "HIPOSPADIA PROXIMAL, TRAT. QUIR. EN UN TIEMPO"
  },
  {
    "code" : "1902045",
    "display" : "INCONTINENCIA URINARIA, TRAT. QUIR. POR VIA ABDOMINAL, SUPRAPUBICA O COMBINADA (PROC. AUT.)"
  },
  {
    "code" : "1902046",
    "display" : "MEATOTOMIA MUJER"
  },
  {
    "code" : "1902047",
    "display" : "MEATOTOMIA QUIRURGICA C/S RESECCION DE POLIPO O CARUNCULA"
  },
  {
    "code" : "1902048",
    "display" : "POLIPO MEATO, ELECTROCOAGULACION"
  },
  {
    "code" : "1902049",
    "display" : "URETRECTOMIA C/S CISTOSTOMIA"
  },
  {
    "code" : "1902050",
    "display" : "PLASTIA DE URETRA O TRAT. DE FISTULAS RESIDUALES"
  },
  {
    "code" : "1902051",
    "display" : "URETROSTOMIA"
  },
  {
    "code" : "1902052",
    "display" : "URETROTOMIA EXTERNA (PROC. AUT.)"
  },
  {
    "code" : "1902053",
    "display" : "URETROTOMIA INTERNA Y/O URETROLITOTOMIA (PROC. AUT.)"
  },
  {
    "code" : "1902054",
    "display" : "ABSCESO, TRAT. QUIR."
  },
  {
    "code" : "1902055",
    "display" : "ADENOMA O CANCER PROSTATICO, RESECCION ENDOSCOPICA"
  },
  {
    "code" : "1902056",
    "display" : "ADENOMA PROSTATICO, TRAT. QUIR. CUALQUIER VIA O TECNICA ABIERTA"
  },
  {
    "code" : "1902057",
    "display" : "TUMORES MALIGNOS DE PROSTATA O VESICULAS SEMINALES, TRAT.QUIR.RADICAL"
  },
  {
    "code" : "1902058",
    "display" : "VESICULOSTOMIA DIAGNOSTICA Y/O TERAPEUTICA"
  },
  {
    "code" : "1902059",
    "display" : "BIOPSIA QUIRURGICA (UNO O AMBOS) (PROC. AUT.)"
  },
  {
    "code" : "1902060",
    "display" : "DESCENSO TESTICULO ABDOMINAL C/S HERNIOPLASTIA"
  },
  {
    "code" : "1902061",
    "display" : "DESCENSO TESTICULO INGUINAL C/S HERNIOPLASTIA"
  },
  {
    "code" : "1902062",
    "display" : "ESCROTO, PLASTIA DE, PROC. COMPLETO"
  },
  {
    "code" : "1902063",
    "display" : "HIDATIDECTOMIA UNILAT. C/S EVERSION DE LA VAGINAL (PROC. AUT.)"
  },
  {
    "code" : "1902064",
    "display" : "HIDROCELE Y/O HEMATOCELE, TRAT. QUIR."
  },
  {
    "code" : "1902065",
    "display" : "ORQUIDECTOMIA"
  },
  {
    "code" : "1902066",
    "display" : "ORQUIDOPEXIA UN LADO"
  },
  {
    "code" : "1902067",
    "display" : "PROTESIS TESTICULAR, (PROC. AUT.)"
  },
  {
    "code" : "1902068",
    "display" : "TUMORES MALIGNOS DEL TESTICULO, ORQUIDECTOMIA AMPLIADA NO INCLUYE VACIAMIENTO LUMBO-AORTICO"
  },
  {
    "code" : "1902069",
    "display" : "TUMORES MALIGNOS DEL TESTICULO, ORQUIDECTOMIA AMPLIADA CON VACIAMIENTOLUMBO-AORTICO"
  },
  {
    "code" : "1902070",
    "display" : "ANASTOMOSIS DE LOS DEFERENTES"
  },
  {
    "code" : "1902071",
    "display" : "EPIDIDIMECTOMIA PARCIAL O TOTAL, UN LADO"
  },
  {
    "code" : "1902072",
    "display" : "PLASTIA EPIDIDIMO-DEFERENTE (OPERACION DE MARTIN O SIM.)"
  },
  {
    "code" : "1902073",
    "display" : "QUISTES DEL CORDON, Y/O EPIDIDIMO, EXTIRPACION; EPIDIDIMOTOMIA DIAGNOSTICA Y/O TERAPEUTICA (PROC. AUT.)"
  },
  {
    "code" : "1902074",
    "display" : "TORSION DEL CORDON, TRAT. QUIR. (INCLUYE LA FIJACION DEL OTRO TESTICULO)"
  },
  {
    "code" : "1902075",
    "display" : "VARICOCELE UNILATERAL, TRAT. QUIR."
  },
  {
    "code" : "1902076",
    "display" : "VASECTOMIA BILATERAL, (PROC. AUT.) (LA VASECTOMIA COMO TIEMPO PREVIO AUNA RESECCION DE PROSTATA ESTA INCLUIDA EN LA PROSTATECTOMIA)"
  },
  {
    "code" : "1902077",
    "display" : "EPISPADIAS, TRAT. QUIR."
  },
  {
    "code" : "1902078",
    "display" : "AMPUTACION PARCIAL DEL PENE (PROC. AUT.)"
  },
  {
    "code" : "1902079",
    "display" : "AMPUTACION TOTAL DEL PENE, PROC. COMPLETO"
  },
  {
    "code" : "1902080",
    "display" : "BIOPSIA DE PENE (PROC. AUT.)"
  },
  {
    "code" : "1902081",
    "display" : "CAVERNOSOSTOMIA Y/O CAVERNO-ESPONGIOSTOMIA Y/O SHUNT SAFENO-CAVERNOSO"
  },
  {
    "code" : "1902082",
    "display" : "CIRCUNCISION (INCLUYE SECCION DE FRENILLO, Y/O DE SINEQUIAS BALANO-PREPUCIALES, Y/O INCISION DORSAL C/S MEATOTOMIA)"
  },
  {
    "code" : "1902083",
    "display" : "LESIONES DEL CUERPO CAVERNOSO, TRAT. QUIR."
  },
  {
    "code" : "1902084",
    "display" : "MEATOTOMIA HOMBRE Y/O SECCION FRENILLO Y/O INCISION DORSAL, (PROC.AUT.)"
  },
  {
    "code" : "1902085",
    "display" : "PLASTIA DE PENE, PROC. COMPLETO (NO INCLUYE VALOR DE LA PROTESIS)"
  },
  {
    "code" : "1902090",
    "display" : "LITIASIS RENAL TRAT. POR ONDA DE CHOQUE (LITOTRIPSIA EXTRACORPOREA)"
  },
  {
    "code" : "2001001",
    "display" : "AMNIOSCOPIA C/S ESCALPE FETAL"
  },
  {
    "code" : "2001002",
    "display" : "COLPOSCOPIA"
  },
  {
    "code" : "2001005",
    "display" : "HISTEROSCOPIA DIAGNOSTICA O TERAPEUTICA (PROC. AUT.)"
  },
  {
    "code" : "2001006",
    "display" : "AMNIOCENTESIS"
  },
  {
    "code" : "2001007",
    "display" : "CULDOCENTESIS (PUNCION DEL DOUGLAS)"
  },
  {
    "code" : "2001008",
    "display" : "HIDROTUBACION Y/O INSUFLACION DE TROMPAS"
  },
  {
    "code" : "2001009",
    "display" : "MONITOREO BASAL CON INFORME"
  },
  {
    "code" : "2001010",
    "display" : "MONITOREO FETAL ESTRESANTE, CON CONTROL PERMANENTE DEL ESPECIALISTA Y TRATAMIENTO DE LAS POSIBLES COMPLICACIONES"
  },
  {
    "code" : "2001011",
    "display" : "COLPOPERINEOGRAFIA (A.C. 04-02-010)"
  },
  {
    "code" : "0501034",
    "display" : "ESTUDIO DINAMICO RENAL (RENOGRAMA, CINTIGRAFIA DINAMICA CON DTPA, DETERMINACION FUNCION RENAL POR SEPARADO)"
  },
  {
    "code" : "0501035",
    "display" : "ESTUDIO DINAMICO SISTEMA NERVIOSO (RADIOCISTERNOGRAFIA,RADIOVENTRICULOGRAFIA, CONTROL VALVULA DERIVATIVA, SUBDUROGRAFIA ISOTOPICA, FLUJO SANGUINEO CEREBRAL), C/U (NO INCLUYE PROCEDIMIENTO)"
  },
  {
    "code" : "0501036",
    "display" : "TOMOGRAFIA POR EMISION DE FOTON UNICO (SPECT) (NO INCLUYE RADIOISOTOPO)"
  },
  {
    "code" : "0501037",
    "display" : "URETROCISTOGRAFIA ISOTOPICA (REFLUJO VESICO-URETERAL)"
  },
  {
    "code" : "0501039",
    "display" : "SPECT CARDIACO (STRESS Y REPOSO) (INFORME Y PLACAS) (INCLUYE RADIOISOTOPO E INSUMOS)"
  },
  {
    "code" : "0501040",
    "display" : "ESTUDIO DINAMICO RENAL CON HIPURAN O MERCATO-ACETIL-TRIGLICINA (MAG 3)"
  },
  {
    "code" : "0502001",
    "display" : "DOSIS TERAPEUTICAS CON I-131 HASTA 30 MCI"
  },
  {
    "code" : "0502002",
    "display" : "DOSIS TERAPEUTICAS CON I-131 HASTA 100 MCI"
  },
  {
    "code" : "0502003",
    "display" : "DOSIS TERAPEUTICAS CON I-131 HASTA 150 MCI"
  },
  {
    "code" : "0502004",
    "display" : "DOSIS TERAPEUTICAS CON I-131 SOBRE 150 MCI"
  },
  {
    "code" : "0503001",
    "display" : "BRAQUITERAPIA MEDIANA TASA"
  },
  {
    "code" : "0503003",
    "display" : "SUPERFICIAL (ESTRONCIO)"
  },
  {
    "code" : "0504001",
    "display" : "RADIOTERAPIA, CANCER DE ESOFAGO PRE O POSTOPERATORIO"
  },
  {
    "code" : "0504002",
    "display" : "RADIOTERAPIA, CANCER DE ESOFAGO SIN INTERVENCION QUIR."
  },
  {
    "code" : "0504003",
    "display" : "RADIOTERAPIA, CANCER DE MAMA SIN INTERVENCION QUIR."
  },
  {
    "code" : "0504004",
    "display" : "RADIOTERAPIA, CANCER DE MAMA, TRAT. POSTOPERATORIO (TUMORECTOMIA; MASTECTOMIA PARCIAL, TOTAL O RADICAL)"
  },
  {
    "code" : "0504005",
    "display" : "RADIOTERAPIA, CANCER DE ORGANOS DE ABDOMEN Y/O PELVIS, EXCEPTO UTERO"
  },
  {
    "code" : "0504006",
    "display" : "RADIOTERAPIA, CANCER DE ORGANOS DE CABEZA Y/O CUELLO"
  },
  {
    "code" : "0504007",
    "display" : "RADIOTERAPIA, CANCER DE PIEL"
  },
  {
    "code" : "0504008",
    "display" : "RADIOTERAPIA, CANCER DE PULMON O ESOFAGO TORACICO"
  },
  {
    "code" : "0504009",
    "display" : "RADIOTERAPIA, CANCER DE TESTICULO"
  },
  {
    "code" : "0504010",
    "display" : "RADIOTERAPIA, CANCER UTERINO (CUELLO Y/O ENDOMETRIO)"
  },
  {
    "code" : "0504011",
    "display" : "RADIOTERAPIA, LEUCEMIA TRATAMIENTO DE"
  },
  {
    "code" : "1103045",
    "display" : "IMPLANTACION DE ESTIMULADORES INTRACRANEANOS"
  },
  {
    "code" : "1103046",
    "display" : "INSTALACION DE ESTIMULADORES MEDULARES"
  },
  {
    "code" : "1103047",
    "display" : "DISRAFIAS ESPINALES: MENINGOCELE, MIELOMENINGOCELE, DIASTEMATOMIELIA, LIPOMA, LIPOMENINGOCELE, MEDULA ANCLADA, ETC."
  },
  {
    "code" : "1103048",
    "display" : "NEUROTOMIA FACETARIA PERCUTANEA"
  },
  {
    "code" : "1103049",
    "display" : "HERNIA NUCLEO PULPOSO, ESTENORRAQUIS, ARACNOIDITIS, FIBROSIS PERIRRADICULAR CERVICAL, DORSAL O LUMBAR, TRAT. QUIR."
  },
  {
    "code" : "1103050",
    "display" : "LAMINECTOMIA DESCOMPRESIVA"
  },
  {
    "code" : "1103051",
    "display" : "HERIDAS RAQUIMEDULARES, TRAT. QUIR."
  },
  {
    "code" : "1103052",
    "display" : "TUMOR VERTEBRAL, TRAT. QUIR."
  },
  {
    "code" : "1103053",
    "display" : "TUMOR O QUISTE MEDULAR O INTRARRAQUIDEO, TRAT. QUIR."
  },
  {
    "code" : "1103054",
    "display" : "MALFORMACION ARTERIOVENOSA O FISTULA DURAL MEDULAR, TRAT. QUIR."
  },
  {
    "code" : "1103055",
    "display" : "CORDOTOMIA PERCUTANEA"
  },
  {
    "code" : "1103056",
    "display" : "MIELOTOMIA, DREZTOMIA"
  },
  {
    "code" : "1103057",
    "display" : "RIZOTOMIA (CUALQUIER TECNICA)"
  },
  {
    "code" : "1103058",
    "display" : "TUMOR DE NERVIO PERIFERICO, EXTIRP. DE"
  },
  {
    "code" : "1103059",
    "display" : "REPARACION DE PLEXOS C/S NEUROTIZACION CON TECNICA MICROQUIRURGICA O INJERTOS INTERFASCICULARES"
  },
  {
    "code" : "1103060",
    "display" : "SECCION DE NERVIO, REPARACION CON INJERTO"
  },
  {
    "code" : "1103061",
    "display" : "SECCION DE NERVIO, REPARACION SIN INJERTO"
  },
  {
    "code" : "1103062",
    "display" : "NEUROLISIS CON TECNICA MICROQUIRURGICA"
  },
  {
    "code" : "1103063",
    "display" : "NEUROLISIS EXTERNA"
  },
  {
    "code" : "1103064",
    "display" : "SINDROME DEL ESCALENO, TRAT. QUIR."
  },
  {
    "code" : "1103065",
    "display" : "SINDROME DE COSTILLA CERVICAL, TRAT. QUIR."
  },
  {
    "code" : "1103066",
    "display" : "SINDROME DEL TUNEL DEL CARPO O DEL TARSO U OTRO, TRAT. QUIR."
  },
  {
    "code" : "1103067",
    "display" : "TRANSPOSICION CUBITAL, REPAR. DE"
  },
  {
    "code" : "1103068",
    "display" : "NEURECTOMIA, CUALQUIER LOCALIZACION, CADA ZONA QUIRURGICA"
  },
  {
    "code" : "1103069",
    "display" : "FIJACION DE COLUMNA (CERVICAL - DORSAL - LUMBAR) CUALQUIER VIA ABORDAJE, C/S OSTEOSINTESIS"
  },
  {
    "code" : "1103132",
    "display" : "INSTALACION DE DERIVATIVAS DE LCR (INCLUYE VALOR DE LA VALVULA)"
  },
  {
    "code" : "1104000",
    "display" : "MICROEMBOLIZACIONES"
  },
  {
    "code" : "1105001",
    "display" : "CONFIRMACION DIAGNOSTICA DISRRAFIA CERRADA"
  },
  {
    "code" : "1201001",
    "display" : "CAMPIMETRIA DE PROYECCION, C/OJO (PROC.AUT.)"
  },
  {
    "code" : "1201002",
    "display" : "COORDIMETRIA, TEST DE HESS U OTRO, C/OJO"
  },
  {
    "code" : "1201003",
    "display" : "CUANTIFICACION DE LAGRIMACION (TEST DE SCHIRMER), UNO O AMBOS OJOS"
  },
  {
    "code" : "1201004",
    "display" : "CURVA DE TENSION APLANATICA (POR CADA DIA), C/OJO"
  },
  {
    "code" : "1201005",
    "display" : "DIPLOSCOPIA CUANTITATIVA, AMBOS OJOS"
  },
  {
    "code" : "1201006",
    "display" : "ELECTROMIOGRAFIA MUSCULOS OCULARES ADULTOS, C/OJO"
  },
  {
    "code" : "1201007",
    "display" : "ELECTROMIOGRAFIA MUSCULOS OCULARES NINOS, C/OJO"
  },
  {
    "code" : "1201008",
    "display" : "ELECTROOCULOGRAFIA, AMBOS OJOS"
  },
  {
    "code" : "1201009",
    "display" : "EXPLORACION SENSORIOMOTORA: ESTRABISMO, ESTUDIO COMPLETO , AMBOS OJOS"
  },
  {
    "code" : "1201010",
    "display" : "PERIMETRIA ESTATICA (CON CAMPIMETRIA DE PROYECCION) , C/OJO (PROC.AUT.)"
  },
  {
    "code" : "1201011",
    "display" : "PRUEBAS DE PROVOCACION PARA GLAUCOMA (PRUEBA DE OSCURIDADU OTRAS), UNO O AMBOS OJOS"
  },
  {
    "code" : "1201012",
    "display" : "RETINOGRAFIA, AMBOS OJOS"
  },
  {
    "code" : "1201013",
    "display" : "TONOGRAFIA ELECTRONICA, C/OJO"
  },
  {
    "code" : "1201014",
    "display" : "TONOMETRIA APLANATICA, C/OJO"
  },
  {
    "code" : "1201015",
    "display" : "TRATAMIENTO ORTOPTICO Y/ O PLEOPTICO (POR SESION) , AMBOS OJOS"
  },
  {
    "code" : "1201016",
    "display" : "ANGIOGRAFIA DE RETINA O DE IRIS, (CON FLUORESCEINA OSIM.), C/OJO"
  },
  {
    "code" : "1201017",
    "display" : "ANGIOSCOPIA RETINAL Y/O IRIS (CON FLUORESCEINA O SIMILAR),C/OJO (PROC.AUT.)"
  },
  {
    "code" : "1201018",
    "display" : "ELECTRORRETINOGRAFIA, C/OJO"
  },
  {
    "code" : "1801033",
    "display" : "ESCLEROTERAPIA O HEMOSTASIA DE VARICES ESOFAGICAS Y/O ULCERAPEPTICA SANGRANTE, CUALQUIER TECNICA (INCLUYE ENDOSCOPIA)."
  },
  {
    "code" : "1801034",
    "display" : "EXTRACCION PERCUTANEA INCRUENTA DE CALCULOS BILIARES"
  },
  {
    "code" : "1801035",
    "display" : "LIGADURA HEMORROIDES"
  },
  {
    "code" : "1801036",
    "display" : "PAPILOTOMIA ENDOSCOPICA C/S EXTRACCION DE CALCULOS, C/SBIOPSIA (A.C. 18-01-018)"
  },
  {
    "code" : "1801037",
    "display" : "UREASA, TEST DE (PARA HELICOBACTER PYLORI) O SIMILAR"
  },
  {
    "code" : "1801038",
    "display" : "PUNCION EVACUADORA DE ABSCESO INTRAABDOMINALES (HEPATICO UOTROS), C/S TOMA DE MUESTRA, C/S INYECCION DE MEDICAMENTOS"
  },
  {
    "code" : "1801041",
    "display" : "PUNCION EVACUADORA DE LIQUIDO ASCITICO, CON COLOCACION DEEXPANSORES DE PLASMA,C/S TOMA DE MUESTRA,C/S INYECCION DEMEDICAMENTOS (NO INCLUYE EL VALOR DE LOS EXPANSORES NIOTROS MEDICAMENTOS)."
  },
  {
    "code" : "1801042",
    "display" : "VACIAMIENTO MANUAL DE FECALOMA"
  },
  {
    "code" : "1801043",
    "display" : "MANOMETRIA ANORRECTAL"
  },
  {
    "code" : "1801045",
    "display" : "POLIPOS RECTALES, RECTOSIGMOIDEOS O DE COLON TRAT. COMPLETOPOR RESECCION ENDOSCOPICA (INCLUYE CODIGO 18-01-004 AL18-01-007 SEGUN CORRESPONDA)."
  },
  {
    "code" : "1802001",
    "display" : "HERNIA DIAFRAGMATICA POR VIA ABDOMINAL O CUALQUIERA OTRA HERNIA CON USODE PROTESIS (NO INCLUYE EL VALOR DE LA PROTESIS)"
  },
  {
    "code" : "1802002",
    "display" : "HERNIA INCISIONAL O EVISCERACION POST-OP. SIN RESECCION INTESTINAL"
  },
  {
    "code" : "1802003",
    "display" : "INGUINAL, CRURAL, UMBILICAL, DE LA LINEA BLANCA O SIMILARES, RECIDIVADAO NO, SIMPLE O ESTRANGULADA S/RESECCION INTEST. C/U"
  },
  {
    "code" : "1802004",
    "display" : "LAPAROTOMIA EXPLORADORA, C/S LIBERACION DE ADHERENCIAS, C/S DRENAJE, C/S BIOPSIAS COMO PROC. AUT. O COMO RESULTADO DE UNA HERIDA PENETRANTE ABDOMINAL NO COMPLICADA O DE UN HEMOPERITONEO POSTOPERATORIO O COMO TRATAMIENTO DE UNA PERITONITIS (LAPAROSTOMIA"
  },
  {
    "code" : "1802005",
    "display" : "ONFALOCELE (HASTA 5 CMS.); TRAT. QUIR."
  },
  {
    "code" : "1802006",
    "display" : "ONFALOCELE (MAS DE 5 CMS.); TRAT. QUIR."
  },
  {
    "code" : "1802007",
    "display" : "PERITONITIS DIFUSA AGUDA, TRAT. QUIR. (PROC. AUT.)"
  },
  {
    "code" : "1802008",
    "display" : "TUMOR Y/O QUISTE PERITONEAL (PARIETAL)"
  },
  {
    "code" : "1802009",
    "display" : "TUMOR Y/O QUISTE RETROPERITONEAL"
  },
  {
    "code" : "1802010",
    "display" : "ANTRECTOMIA Y VAGOTOMIA TRONCULAR O SELECTIVA (PROC. AUT.)"
  },
  {
    "code" : "1802011",
    "display" : "DESGASTRECTOMIA Y NEOANASTOMOSIS, C/S VAGUECTOMIA"
  },
  {
    "code" : "1802012",
    "display" : "GASTROENTEROANASTOMOSIS, CUALQUIER TECNICA. (PROC. AUT.)"
  },
  {
    "code" : "1802013",
    "display" : "GASTROSQUISIS"
  },
  {
    "code" : "1802014",
    "display" : "GASTROTOMIA Y/O GASTROSTOMIA (PROC. AUT.)"
  },
  {
    "code" : "1802015",
    "display" : "PERFORACION GASTRICA AGUDA, TRAT. QUIR. (PROC. AUT.)"
  },
  {
    "code" : "1802016",
    "display" : "PILOROPLASTIA (PROC. AUT.)"
  },
  {
    "code" : "1802017",
    "display" : "GASTRECTOMIA SUBTOTAL CON DISECCION GANGLIONAR"
  },
  {
    "code" : "1802018",
    "display" : "GASTRECTOMIA SUBTOTAL SIN DISECCION GANGLIONAR"
  },
  {
    "code" : "1802019",
    "display" : "DUMPING Y/O SINDROME ASA AFERENTE, TRAT. QUIR."
  },
  {
    "code" : "1802020",
    "display" : "GASTRECTOMIA SUB-TOTAL CON VAGOTOMIA"
  },
  {
    "code" : "1802021",
    "display" : "GASTRECTOMIA SUB-TOTAL PROXIMAL CON ESOFAGO-GASTRO-ANAS-TOMOSIS U OTRADERIVACION"
  },
  {
    "code" : "1802022",
    "display" : "GASTRECTOMIA TOTAL"
  },
  {
    "code" : "1802023",
    "display" : "GASTRECTOMIA TOTAL O SUB-TOTAL AMPLIADA (INCLUYE ESPLENECTOMIA Y PANCREATECTOMIA CORPOROCAUDAL Y DISECCION GANGLIONAR)"
  },
  {
    "code" : "1802024",
    "display" : "GASTROPEXIA Y/U OTRA CIRUGIA ANTIRREFLUJO, C/S VAGOTOMIA"
  },
  {
    "code" : "1601023",
    "display" : "TRATAMIENTO POR RAYOS LASER (CADA SESION), CUALQUIER LESION"
  },
  {
    "code" : "1601024",
    "display" : "HASTA 1% SUPERFICIE CORPORAL"
  },
  {
    "code" : "1601025",
    "display" : "HASTA 5% SUPERFICIE CORPORAL"
  },
  {
    "code" : "1601026",
    "display" : "HASTA 10% SUPERFICIE CORPORAL"
  },
  {
    "code" : "1802027",
    "display" : "COLANGIOENTEROANASTOMOSIS INTRAHEPATICA"
  },
  {
    "code" : "1802028",
    "display" : "COLECISTECTOMIA C/S COLANGIOGRAFIA OPERATORIA"
  },
  {
    "code" : "1802029",
    "display" : "COLECISTECTOMIA Y COLEDOCOSTOMIA (SONDA T Y COLANGIOGRAFIA POSTOPERATORIA) C/S COLANGIOGRAFIA OPERATORIA"
  },
  {
    "code" : "1802030",
    "display" : "COLECISTOGASTROANASTOMOSIS O COLECISTOENTEROANASTOMOSIS"
  },
  {
    "code" : "1802031",
    "display" : "COLECISTOSTOMIA (PROC. AUT.)"
  },
  {
    "code" : "1802032",
    "display" : "COLEDOCO O HEPATOENTEROANASTOMOSIS"
  },
  {
    "code" : "1802033",
    "display" : "COLEDOCOSTOMIA SUPRADUODENAL O HEPATICOSTOMIA (PROC. AUT.)"
  },
  {
    "code" : "1802034",
    "display" : "COLOCACION DE VALVULA PERITONEOYUGULAR DERIVATIVA DE ASCITIS"
  },
  {
    "code" : "1802035",
    "display" : "DESCONEXION ACIGOPORTAL CON TRANSECCION ESOFAGICA"
  },
  {
    "code" : "1802036",
    "display" : "DESCONEXION ACIGOPORTAL SIN TRANSECCION ESOFAGICA"
  },
  {
    "code" : "1802037",
    "display" : "DRENAJE VIA BILIAR TRANSHEPATICO"
  },
  {
    "code" : "1802038",
    "display" : "ESFINTEROPLASTIA TRANSDUODENAL, (PROC. AUT.)"
  },
  {
    "code" : "1802039",
    "display" : "HEPATECTOMIA SEGMENTARIA (PROC. AUT.)"
  },
  {
    "code" : "1802040",
    "display" : "HERIDA TRAUMATICA DE HIGADO Y/O VIA BILIAR, TRAT. QUIR."
  },
  {
    "code" : "1802041",
    "display" : "LOBECTOMIA HEPATICA (PROC. AUT.)"
  },
  {
    "code" : "1802042",
    "display" : "QUISTE HIDATIDICO, UNICO O MULTIPLE, Y/O CISTOYEYUNOANASTOMOSIS, TRAT.QUIR."
  },
  {
    "code" : "1802043",
    "display" : "ABSCESOS, QUISTES, PSEUDOQUISTES O SIMILARES, TRAT. QUIR."
  },
  {
    "code" : "1802044",
    "display" : "HERIDAS, TRAUMATISMOS DE PANCREAS, TRAT.QUIR."
  },
  {
    "code" : "1802045",
    "display" : "PANCREATECTOMIA PARCIAL"
  },
  {
    "code" : "1802046",
    "display" : "PANCREATECTOMIA TOTAL C/S ESPLENECTOMIA"
  },
  {
    "code" : "1802047",
    "display" : "PANCREATODUODENECTOMIA"
  },
  {
    "code" : "1802048",
    "display" : "SECUESTRECTOMIA EN PANCREATITIS AGUDA"
  },
  {
    "code" : "1802049",
    "display" : "AUTOIMPLANTE DE BAZO (INCLUYE ESPLENECTOMIA)"
  },
  {
    "code" : "1802050",
    "display" : "ESPLENECTOMIA TOTAL O PARCIAL (PROC. AUT.)"
  },
  {
    "code" : "1802051",
    "display" : "OPERACION DE ETAPIFICACION (INCLUYE ESPLENECTOMIA, BIOPSIAS HEPATICAS,DE GANGLIOS ABDOMINALES Y DE CRESTA ILIACA)"
  },
  {
    "code" : "1802052",
    "display" : "SUTURA ESPLENICA (PROC. AUT.)"
  },
  {
    "code" : "1802053",
    "display" : "APENDICECTOMIA Y/O DREN. ABSCESO APENDICULAR (PROC. AUT.)"
  },
  {
    "code" : "1802054",
    "display" : "CIERRE DE COLOSTOMÍA"
  },
  {
    "code" : "1802055",
    "display" : "COLOSTOMIA (PROC. AUT.)"
  },
  {
    "code" : "1802056",
    "display" : "COLOSTOMIA, COMPLICACIONES TARDIAS, TRAT. QUIR."
  },
  {
    "code" : "1802057",
    "display" : "DIVERTICULO DE MECKEL, TRAT. QUIR."
  },
  {
    "code" : "1802058",
    "display" : "ENTERO-ENTEROANASTOMOSIS O ENTEROCOLOANASTOMOSIS (PROC. AUT.)"
  },
  {
    "code" : "1802059",
    "display" : "ENTEROTOMIA O ENTEROSTOMIA (YEYUNOSTOMIA U OTRA) (PROC. AUT.)"
  },
  {
    "code" : "1802060",
    "display" : "LLEOSTOMIA TERMINAL O EN ASA (PROC. AUT.)"
  },
  {
    "code" : "1802061",
    "display" : "INVAGINACION INTESTINAL, TRAT. QUIR."
  },
  {
    "code" : "1802062",
    "display" : "PERSISTENCIA CONDUCTO ONFALOMESENTERICO, TRAT. QUIR."
  },
  {
    "code" : "1802063",
    "display" : "QUISTE URACO, TRAT. QUIR."
  },
  {
    "code" : "1802065",
    "display" : "OCLUSION INTESTINAL CON RESECCION"
  },
  {
    "code" : "1802066",
    "display" : "OCLUSION INTESTINAL SIN RESECCION"
  },
  {
    "code" : "1802067",
    "display" : "COLECTOMIA PARCIAL O HEMICOLECTOMIA"
  },
  {
    "code" : "1802068",
    "display" : "COLECTOMIA TOTAL ABDOMINAL"
  },
  {
    "code" : "1802069",
    "display" : "DESCENSO DE COLON C/CONSERVACION DEL ESFINTER, INCLUYE RESECCION DE COLON"
  },
  {
    "code" : "1802070",
    "display" : "HARTMANN, OPERACION DE (O SIMILAR)"
  },
  {
    "code" : "1802071",
    "display" : "PERFORACION Y/O HERIDA DE INTESTINO, UNICA O MULTIPLE, TRAT.QUIR. (PROC. AUT.)"
  },
  {
    "code" : "1802072",
    "display" : "QUISTE Y/O TUMOR DEL MESENTERIO Y/O EPIPLONES, UNICO Y/O MULTIPLE, TRAT. QUIR."
  },
  {
    "code" : "1802073",
    "display" : "RECONSTITUCION TRANSITO POST OPERACION DE HARTMANN O SIM."
  },
  {
    "code" : "1802074",
    "display" : "RESECCION DE INTESTINO Y ENTEROANASTOMOSIS (PROC. AUT.)"
  },
  {
    "code" : "1802075",
    "display" : "RESECCION INTESTINAL MASIVA POR TROMBOSIS MESENTERICA U OTRA ETIOLOGIA"
  },
  {
    "code" : "1802076",
    "display" : "DUPLICACION INTESTINAL, TRAT. QUIR."
  },
  {
    "code" : "1802077",
    "display" : "MAL ROTACION INTESTINAL, TRAT. QUIR."
  },
  {
    "code" : "1802079",
    "display" : "GASTRECTOMIA TOTAL CON OSTOMIAS PROXIMAL Y DISTAL"
  },
  {
    "code" : "1802080",
    "display" : "RECONSTITUCION DE TRANSITO EN 2° TIEMPO DE OPERACION CODIGO 18-02-79"
  },
  {
    "code" : "1802081",
    "display" : "COLECISTECTOMIA POR VIDEOLAPAROSCOPIA, PROC. COMPLETO"
  },
  {
    "code" : "1802082",
    "display" : "RESECCION INTESTINAL CON OSTOMIAS PROXIMAL Y DISTAL"
  },
  {
    "code" : "1802100",
    "display" : "TRASPLANTE HEPATICO"
  },
  {
    "code" : "1802101",
    "display" : "DIAFRAGMATICA POR VIA ABDOMINAL O CUALQUIERA OTRA HERNIA CON USO DE PROTESIS (INCLUYE EL VALOR DE LA PROTESIS)"
  },
  {
    "code" : "1802148",
    "display" : "YEYUNOPANCREATOSTOMIA"
  },
  {
    "code" : "1803001",
    "display" : "ABSCESO ANORRECTAL COMPLEJO (IMPLICA HOSPITALIZACION Y ANESTESIA GENERAL)"
  },
  {
    "code" : "1803002",
    "display" : "ABSCESO ANORRECTAL SIMPLE, TRAT. QUIR."
  },
  {
    "code" : "1803003",
    "display" : "ABSCESO SACROCOXIGEO, DRENAJE"
  },
  {
    "code" : "1803004",
    "display" : "BIOPSIA QUIRURGICA RECTAL (PROC. AUT.)"
  },
  {
    "code" : "1803005",
    "display" : "CRIPTECTOMIA Y/O PAPILECTOMIA (CUALQUIER NUMERO; PROC. AUT.)"
  },
  {
    "code" : "1803006",
    "display" : "CUERPO EXTRAÑO RECTAL, EXTRACCION POR VIA ABDOMINAL"
  },
  {
    "code" : "1803007",
    "display" : "CUERPO EXTRAÑO RECTAL, EXTRACCION POR VIA ANAL"
  },
  {
    "code" : "1803008",
    "display" : "DESGARROS Y HERIDAS ANORRECTALES CON COMPROMISO DEL ESFINTER"
  },
  {
    "code" : "1803009",
    "display" : "DESGARROS Y HERIDAS ANORRECTALES SIN COMPROMISO DEL ESFINTER"
  },
  {
    "code" : "1803010",
    "display" : "ESFINTEROTOMIA (PROC. AUT.)"
  },
  {
    "code" : "1803011",
    "display" : "ESTENOSIS ANAL, PLASTIA"
  },
  {
    "code" : "1803012",
    "display" : "ESTENOSIS RECTAL, PLASTIA"
  },
  {
    "code" : "1803013",
    "display" : "FECALOMA, TRAT. QUIR."
  },
  {
    "code" : "1803014",
    "display" : "FISTULA RECTOVESICAL, TRAT.QUIR."
  },
  {
    "code" : "1803015",
    "display" : "FISTULA RECTOVAGINAL, RECTOURETRAL O URETROVAGINAL"
  },
  {
    "code" : "1803016",
    "display" : "FISTULA ANORRECTAL, TRAT.QUIR.DE CUALQUIER TIPO"
  },
  {
    "code" : "1803017",
    "display" : "FISURA ANAL, REPAR. QUIR."
  },
  {
    "code" : "1803018",
    "display" : "HEMORROIDECTOMIA (INCLUYE OTRAS OPERACIONES COMPLEMENTARIAS EN CANAL ANAL)"
  },
  {
    "code" : "1803019",
    "display" : "HEMORROIDES, TROMBECTOMIA (PROC. AUT.)"
  },
  {
    "code" : "1803020",
    "display" : "IMPERFORACION ANAL,RECONSTITUCION TRANSITO POR VIA ABDOMINO-PERINEAL"
  },
  {
    "code" : "1803021",
    "display" : "IMPERFORACION ANAL, RECONSTITUCION TRANSITO POR VIA PERINEAL"
  },
  {
    "code" : "1803022",
    "display" : "IMPERFORACION ANAL, RECONSTITUCION TRANSITO POR VIA SAGITAL POSTERIOR"
  },
  {
    "code" : "1803023",
    "display" : "INCONTINENCIA ANAL, TRAT.QUIR. CON CERCLAJE"
  },
  {
    "code" : "1803024",
    "display" : "INCONTINENCIA ANAL, TRAT.QUIR. CON PLASTIA MUSCULAR"
  },
  {
    "code" : "1803025",
    "display" : "POLIPO RECTAL, TRAT.QUIR. POR VIA ABDOMINAL"
  },
  {
    "code" : "1803026",
    "display" : "POLIPO RECTAL, TRAT.QUIR. POR VIA ANAL"
  },
  {
    "code" : "1803027",
    "display" : "PROLAPSO RECTAL, TRAT.QUIR. POR VIA ABDOMINAL"
  },
  {
    "code" : "1803028",
    "display" : "PROLAPSO RECTAL, TRAT.QUIR. POR VIA ANAL"
  },
  {
    "code" : "1803029",
    "display" : "PANPROCTOCOLECTOMIA (2 EQUIPOS)"
  },
  {
    "code" : "1803030",
    "display" : "PRURITO ANAL, TRAT. QUIR. POR DENERVACION"
  },
  {
    "code" : "1803031",
    "display" : "QUISTE SACROCOXIGEO, TRAT. QUIR."
  },
  {
    "code" : "1803032",
    "display" : "RESECCION ABDOMINO-PERINEAL DE ANO Y RECTO (2 EQUIPOS)"
  },
  {
    "code" : "1803033",
    "display" : "RESECCION ABDOMINO-PERINEAL DE ANO Y RECTO AMPLIADA (2 EQUIPOS) (INCLUYE GENITALES FEMENINOS)"
  },
  {
    "code" : "1803034",
    "display" : "RESECCION ANTERIOR DE RECTO"
  },
  {
    "code" : "4701051",
    "display" : "MERCURIO,ARSENICO"
  },
  {
    "code" : "4701052",
    "display" : "METALES PESADOS"
  },
  {
    "code" : "4701053",
    "display" : "NITRATOS"
  },
  {
    "code" : "4701054",
    "display" : "NITRITOS"
  },
  {
    "code" : "4701055",
    "display" : "NITROGENO TOTAL"
  },
  {
    "code" : "4701056",
    "display" : "ORGANOLEPTICOS"
  },
  {
    "code" : "4701057",
    "display" : "PESO ESPECIFICO"
  },
  {
    "code" : "4701058",
    "display" : "PH"
  },
  {
    "code" : "4701059",
    "display" : "PRESENCIA INSECTOS, ACAROS"
  },
  {
    "code" : "4701060",
    "display" : "PROTEINA VEGETAL"
  },
  {
    "code" : "4701061",
    "display" : "PROTEINAS"
  },
  {
    "code" : "4701062",
    "display" : "RIBOFLAVINA"
  },
  {
    "code" : "4701063",
    "display" : "SACAROSA"
  },
  {
    "code" : "4701064",
    "display" : "SOLIDOS NO GRASOS"
  },
  {
    "code" : "4701065",
    "display" : "SOLIDOS TOTALES"
  },
  {
    "code" : "4701066",
    "display" : "SOLUBILIDAD"
  },
  {
    "code" : "4701067",
    "display" : "ACIDO SORBICO"
  },
  {
    "code" : "4701068",
    "display" : "SULFATOS"
  },
  {
    "code" : "4701069",
    "display" : "SUSTANCIAS INSOLUBLES"
  },
  {
    "code" : "4701070",
    "display" : "TIAMINA"
  },
  {
    "code" : "4701071",
    "display" : "VITAMINA A"
  },
  {
    "code" : "4701072",
    "display" : "YODO"
  },
  {
    "code" : "4702001",
    "display" : "NUMERO MAS PROBABLE DE COLIFORMES FECALES EN AGUAS METODO A-1"
  },
  {
    "code" : "4702002",
    "display" : "DETECCION DE VIBRIO CHOLERAE EN AGUAS O TORULA DE MOORE"
  },
  {
    "code" : "4702003",
    "display" : "CONDUCTIVIDAD"
  },
  {
    "code" : "4702004",
    "display" : "TURBIDEZ"
  },
  {
    "code" : "4702005",
    "display" : "PH"
  },
  {
    "code" : "4702006",
    "display" : "FLUOR"
  },
  {
    "code" : "4702007",
    "display" : "CIANURO"
  },
  {
    "code" : "4702008",
    "display" : "NITRATOS"
  },
  {
    "code" : "4702009",
    "display" : "NITRITOS"
  },
  {
    "code" : "4702010",
    "display" : "SULFATOS"
  },
  {
    "code" : "4702011",
    "display" : "DETERGENTES"
  },
  {
    "code" : "4702012",
    "display" : "DUREZA"
  },
  {
    "code" : "4702013",
    "display" : "CLORURO"
  },
  {
    "code" : "4702014",
    "display" : "COBRE"
  },
  {
    "code" : "4702015",
    "display" : "HIERRO"
  },
  {
    "code" : "4702016",
    "display" : "ARSENICO"
  },
  {
    "code" : "4702017",
    "display" : "MERCURIO"
  },
  {
    "code" : "4702018",
    "display" : "PLOMO"
  },
  {
    "code" : "4702019",
    "display" : "ZINC"
  },
  {
    "code" : "4702020",
    "display" : "CADMIO"
  },
  {
    "code" : "2501124",
    "display" : "CIERRE DE DUCTOS POR COILS"
  },
  {
    "code" : "1803035",
    "display" : "RESECCION PERINEAL DE ANO Y RECTO EN LAS RESECCIONES ABDOMINO-PERINEALES DE LAS INTERVENCIONES 18-03-029, 18-03-032 Y 18-03-033, EL VALOR CONSIGNADO CORRESPONDE AL HONORARIO DEL EQUIPO ABDOMINAL"
  },
  {
    "code" : "1803036",
    "display" : "A LOS CIRUJANOS DEL EQUIPO PERINEAL EN CADA INTERVENCION ANTERIOR"
  },
  {
    "code" : "1803038",
    "display" : "CONDILOMAS ANALES, TRAT. QUIR. (PARA ELECTROFULGURACION VER COD. 16-01-006)"
  },
  {
    "code" : "1901001",
    "display" : "EXPLORACION DE URETRA ANTERO-POSTERIOR CON BUJIA Y/O EXPLO -RADOR OLIVAR, Y/O SONDA, Y/O BENIQUE, Y/O MEDICION DE RESI -DUO VESICAL (LA CALIBRACION DEL MEATO ESTA INCLUIDA EN ELVALOR DE LA CONSULTA)"
  },
  {
    "code" : "1901002",
    "display" : "CISTOSCOPIA CON SONDEO DE UNO O AMBOS URETERES"
  },
  {
    "code" : "1901003",
    "display" : "CISTOSCOPIA Y/O URETROCISTOSCOPIA Y/O URETROSCOPIA(PROC.AUT.)"
  },
  {
    "code" : "1901004",
    "display" : "URETERONEFROSCOPIA"
  },
  {
    "code" : "1901005",
    "display" : "PROSTATICA TRANSPARIETAL O TRANSRECTAL (ADEMAS ANESTESIACOD. 22-01-001 SI CORRESPONDE)"
  },
  {
    "code" : "1901006",
    "display" : "RENAL TRANSPARIETAL"
  },
  {
    "code" : "1901007",
    "display" : "CISTOMETRIA (PROC.AUT.)"
  },
  {
    "code" : "1901008",
    "display" : "ELECTROMIOGRAFIA PERINEAL Y DEL ESFINTER URETRAL EN ADULTOS(PROC.AUT.)"
  },
  {
    "code" : "1901009",
    "display" : "ELECTROMIOGRAFIA PERINEAL Y DEL ESFINTER URETRAL EN NINOS(PROC.AUT.)"
  },
  {
    "code" : "1901010",
    "display" : "PERFIL URETRAL (PROC.AUT.)"
  },
  {
    "code" : "1901011",
    "display" : "UROFLUJOMETRIA (PROC.AUT.)"
  },
  {
    "code" : "1901012",
    "display" : "CISTOGRAFIA POR SONDA (DE RELLENO) O POR PUNCION HIPO-GASTRICA (A.C. 04-01-027)"
  },
  {
    "code" : "1901013",
    "display" : "INYECCION DE MEDIO DE CONTRASTE EN CUERPO CAVERNOSO"
  },
  {
    "code" : "1901014",
    "display" : "PIELOGRAFIA DIRECTA,P/PUNCION TRANSLUMBAR (A.C.04-02-013)"
  },
  {
    "code" : "1901015",
    "display" : "URETEROPIELOGRAFIA ASCENDENTE (DIRECTA) POR CATETERISMOURETERAL UNI O BILATERAL (INCLUYE LA ENDOSCOPIA)(A.C. 04-02-012)"
  },
  {
    "code" : "1901016",
    "display" : "URETROGRAFIA RETROGRADA O CISTOURETROGRAFIA (MICCIONAL)(A.C. 04-02-014)"
  },
  {
    "code" : "1901018",
    "display" : "DILATACION URETRA C/S MASAJE, C/S INSTILACION O INYECCION DEMEDICAMENTOS: ANTERIOR Y/O POSTERIOR"
  },
  {
    "code" : "1901019",
    "display" : "INSTILACION VESICAL (INCLUYE COLOCACION DE SONDA) PROC. AUT."
  },
  {
    "code" : "1901020",
    "display" : "INYECCION DE MEDICAMENTOS EN EL PENE"
  },
  {
    "code" : "1901021",
    "display" : "VAC. VESICAL P/PUNCION HIPOGASTRICA O CISTOSTOMIA P/PUNCION"
  },
  {
    "code" : "1901022",
    "display" : "VAC. VESICAL POR SONDA URETRAL, (PROC. AUT.)"
  },
  {
    "code" : "1901023",
    "display" : "HEMODIALISIS CON INSUMOS INCLUIDOS"
  },
  {
    "code" : "1901024",
    "display" : "HEMODIALISIS SIN INSUMOS"
  },
  {
    "code" : "1901025",
    "display" : "PERITONEODIALISIS (INCLUYE INSUMOS)"
  },
  {
    "code" : "1901126",
    "display" : "INSTALACION CATETER PARA PERITONEODIALISIS"
  },
  {
    "code" : "2001012",
    "display" : "GALACTOGRAFIA Y NEUMOCISTOGRAFIA (A.C. 04-02-004,04-02-005 O 04-02-006, SEGUN CORRESPONDA)"
  },
  {
    "code" : "2001013",
    "display" : "HISTEROSALPINGOGRAFIA (A.C. 04-02-011)"
  },
  {
    "code" : "2001014",
    "display" : "BIOPSIA ENDOMETRIO, VULVA, VAGINA, CUELLO, C/U (PROC. AUT.)"
  },
  {
    "code" : "2001015",
    "display" : "COLOCACION O EXTRACCION DE DISPOSITIVO INTRAUTERINO (NO INCLUYE EL VALOR DEL DISPOSITIVO)"
  },
  {
    "code" : "2001016",
    "display" : "ELECTRODIATERMO O CRIOCOAGULACION DE LESIONES DEL CUELLO"
  },
  {
    "code" : "2001020",
    "display" : "TEST POSTCOITAL"
  },
  {
    "code" : "2001021",
    "display" : "CORDOCENTESIS"
  },
  {
    "code" : "2001022",
    "display" : "PUNCION EVACUADORA DE QUISTES MAMARIOS, C/S TOMA DE MUESTRAS, C/S INYECCION DE MEDICAMENTOS"
  },
  {
    "code" : "2002001",
    "display" : "ABSCESO Y/O HEMATOMA DE MAMA, TRAT.QUIR."
  },
  {
    "code" : "2002002",
    "display" : "MASTECTOMIA PARCIAL (CUADRANTECTOMIA O SIMILAR) O TOTAL S/VACIAMIENTO GANGLIONAR"
  },
  {
    "code" : "2002003",
    "display" : "MASTECTOMIA RADICAL O TUMORECTOMIA C/VACIAMIENTO GANGLIONAR O MASTECTOMIA TOTAL C/VACIAMIENTO GANGLIONAR"
  },
  {
    "code" : "2002005",
    "display" : "TUMOR BENIGNO Y/O QUISTE Y/O MAMA SUPERNUMERARIA Y/O ABERRANTE O POLITELIA, O BIOPSIA QUIRURGICA EXTEMPORANEA, TRAT. QUIR. (PROC. AUT)"
  },
  {
    "code" : "2003001",
    "display" : "OOFORECTOMIA PARCIAL O TOTAL, UNI O BILATERAL (PROC. AUT.)"
  },
  {
    "code" : "2003002",
    "display" : "ANEXECTOMIA Y/O VAC. DE ABSCESO TUBO-OVARICO, UNI O BILATERAL"
  },
  {
    "code" : "2003003",
    "display" : "EMBARAZO TUBARIO, TRAT. QUIR."
  },
  {
    "code" : "2003004",
    "display" : "LIGADURA O SECCION UNI O BILATERAL DE LAS TROMPAS (MADLENER, POMEROY, OSIMILARES) (PROC. AUT.)"
  },
  {
    "code" : "2003005",
    "display" : "SALPINGECTOMIA UNI O BILATERAL"
  },
  {
    "code" : "2003006",
    "display" : "ESTERILIDAD TUBARIA, OPERACION PLASTICA UNI O BILATERAL CON MICROCIRUGIA"
  },
  {
    "code" : "2003007",
    "display" : "ESTERILIDAD TUBARIA, OPERACION PLASTICA UNI O BILATERAL SIN MICROCIRUGIA"
  },
  {
    "code" : "2003008",
    "display" : "MIOMECTOMIA"
  },
  {
    "code" : "2003009",
    "display" : "HISTERECTOMIA SUBTOTAL POR VIA ABDOMINAL"
  },
  {
    "code" : "2003010",
    "display" : "HISTERECTOMIA TOTAL O AMPLIADA POR VIA ABDOMINAL"
  },
  {
    "code" : "2003011",
    "display" : "LIGAMENTO ANCHO: ABSCESOS Y/O HEMATOMAS Y/O FLEGMONES Y/O QUISTOMAS Y/OVARICES U OTROS, TRAT. QUIR. (PROC. AUT.)"
  },
  {
    "code" : "2003012",
    "display" : "CONIZACION Y/O AMPUTACION DEL CUELLO, DIAGNOSTICA Y/O TERAPEUTICA C/SBIOPSIA"
  },
  {
    "code" : "2003013",
    "display" : "EXANTERACION PELVIANA ANTERIOR Y/O POSTERIOR"
  },
  {
    "code" : "2003014",
    "display" : "HISTERECTOMIA POR VIA VAGINAL"
  },
  {
    "code" : "2003015",
    "display" : "HISTERECTOMIA RADICAL CON DISECCION PELVIANA COMPLETA DE TERRITORIOS GANGLIONARES, INCLUYE GANGLIOS LUMBOAORTICOS (OPERACION DE WERTHEIM O SIMILARES)"
  },
  {
    "code" : "2003016",
    "display" : "HISTERECTOMIA TOTAL C/INTERVENCION INCONTINENCIA URINARIA, CUALQUIER TECNICA"
  },
  {
    "code" : "2003017",
    "display" : "HISTEROPEXIA"
  },
  {
    "code" : "2003018",
    "display" : "PLASTIA UTERINA (OPERACION DE STRASSMAR O SIMILARES)"
  },
  {
    "code" : "2003019",
    "display" : "POLIPECTOMIA (UNO O MAS) (PROC. AUT.)"
  },
  {
    "code" : "2003020",
    "display" : "SINEQUIA Y/O ESTENOSIS CERVICAL, TRAT. QUIR."
  },
  {
    "code" : "2003021",
    "display" : "COLPOCELIOTOMIA"
  },
  {
    "code" : "2003022",
    "display" : "INCONTINENCIA URINARIA DE ESFUERZO, TRAT. QUIR. POR VIA VAGINAL (PROC.AUT.)"
  },
  {
    "code" : "2003023",
    "display" : "PROLAPSO ANTERIOR Y/O POSTERIOR CON REPAR., INCONTINENCIA URINARIA PORVIA EXTRAVAGINAL O COMBINADA"
  },
  {
    "code" : "2003024",
    "display" : "PROLAPSO ANTERIOR Y/O POSTERIOR C/S TRAT. DE INCONTINENCIA URINARIA PORVIA VAGINAL, TRAT. QUIR."
  },
  {
    "code" : "2003025",
    "display" : "QUISTE Y/O DESGARRO Y/O TABIQUE VAGINAL, TRAT. QUIR."
  },
  {
    "code" : "2003026",
    "display" : "BARTOLINITIS, VACIAMIENTO Y DRENAJE (PROC. AUT.)"
  },
  {
    "code" : "2003027",
    "display" : "BARTOLINOCISTONEOSTOMIA O EXTIRP. DE LA GLANDULA"
  },
  {
    "code" : "2003028",
    "display" : "VULVECTOMIA RADICAL"
  },
  {
    "code" : "2003029",
    "display" : "VULVECTOMIA SIMPLE"
  },
  {
    "code" : "2003030",
    "display" : "DESGARRO CERVICAL TRAT. QUIR."
  },
  {
    "code" : "2003031",
    "display" : "VIDEOLAPAROSCOPIA GINECOLOGICA EXPLORADORA (INCLUYE TOMA DE MUESTRAS PARA BIOPSIAS, PUNCION DE QUISTES Y LIBERACION DE ADHERENCIAS) (PROC. AUT.)"
  },
  {
    "code" : "2003040",
    "display" : "INCOMPETENCIA CERVICAL TRAT. QUIR."
  },
  {
    "code" : "2003041",
    "display" : "EXTRACCION DE DIU INCRUSTADO, POR VIA ABDOMINAL"
  },
  {
    "code" : "2004001",
    "display" : "ABORTO RETENIDO, VACIAMIENTO DE (INCLUYE LA INDUCCION EN LOS CASOS QUECORRESPONDA)"
  },
  {
    "code" : "2004002",
    "display" : "RASPADO UTERINO DIAGNOSTICO O TERAPEUTICO POR METRORRAGIA O POR RESTOSDE ABORTO"
  },
  {
    "code" : "2004003",
    "display" : "PARTO PRESENTACION CEFALICA O PODALICA, C/S EPISIOTOMIA,C/S SUTURA, C/S FORCEPS, C/S INDUCCION, C/S VERSION INTERNA,C/S REVISION, C/S EXTRACCION MANUAL DE PLACENTA, C/S MONI-TORIZACION. (UNICO O MULTIPLE)"
  },
  {
    "code" : "2004004",
    "display" : "HONORARIO MATRONA POR LA ATENCION INTEGRAL DEL PARTO (IN-CLUYE 3 CONTROLES DE EMBARAZO NORMAL, ATENCION EN SALAPRE-PARTO, C/S ATENCION EN PERIODO EXPULSIVO, ASISTENCIA ALPABELLON QUIRURGICO EN CASO DE OPERACION CESAREA, Y 2CONTROLES EN EL PUERPERIO)"
  },
  {
    "code" : "2004005",
    "display" : "CESAREA CON HISTERECTOMIA"
  },
  {
    "code" : "2004006",
    "display" : "CESAREA C/S SALPINGOLIGADURA O SALPINGECTOMIA"
  },
  {
    "code" : "2004009",
    "display" : "FOTOTERAPIA RECIEN NACIDO (POR DIA)"
  },
  {
    "code" : "2004103",
    "display" : "PARTO NORMAL"
  },
  {
    "code" : "2004113",
    "display" : "PARTO DISTOSICO VAGINAL"
  },
  {
    "code" : "2101001",
    "display" : "INFILTRACION LOCAL MEDICAMENTOS (BURSAS, TENDONES, YUXTA-ARTICULARES Y/O INTRAARTICULARES), Y/O PUNCION EVACUADORAC/S TOMA DE MUESTRA (EN INTERFALANGICAS COMPRENDE HASTADOS POR SESION)"
  },
  {
    "code" : "2101002",
    "display" : "PROCEDIMIENTO PARA EXPLORACIONES RADIOLOGICAS (INCLUYEMANIOBRA E INYECCION DEL MEDIO DE CONTRASTE)"
  },
  {
    "code" : "2101003",
    "display" : "MOVILIZACION ARTICULAR BAJO ANESTESIA GENERAL."
  },
  {
    "code" : "2104001",
    "display" : "ARTROSCOPIA DIAGNOSTICA C/S BIOPSIA, C/S SECCION DE BRIDAS, EXTRACCIONDE CUERPO EXTRAÑO"
  },
  {
    "code" : "2104002",
    "display" : "EXOSTOSIS U OSTEOCONDROMA, TRAT. QUIR."
  },
  {
    "code" : "2104003",
    "display" : "QUISTES SINOVIALES DE VAINAS FLEXORAS, BURSAS"
  },
  {
    "code" : "2104004",
    "display" : "TRACCION HALOCRANEANA O ESTRIBO-CRANEANA (PROC. AUT.)"
  },
  {
    "code" : "2104005",
    "display" : "TRACCION HALOCRANEO-FEMORAL"
  },
  {
    "code" : "2104006",
    "display" : "TRACCION TRANSESQUELETICA O DE PARTES BLANDAS EN ADULTOS O EN NIÑOS (PROC. AUT.)"
  },
  {
    "code" : "2104007",
    "display" : "ARTRODESIS DE CODO O MUÑECA, C/U"
  },
  {
    "code" : "2104008",
    "display" : "ARTRODESIS DE HOMBRO, CADERA,RODILLA, TOBILLO O SACROILIACA, C/U"
  },
  {
    "code" : "2104009",
    "display" : "ARTRODESIS DE MANO O PIE C/U"
  },
  {
    "code" : "2104010",
    "display" : "TRATAMIENTO COMPLETO DE FRACTURAS EXPUESTAS DE BRAZO, ANTEBRAZO, MUSLOY PIERNA, C/U"
  },
  {
    "code" : "2104011",
    "display" : "TRATAMIENTO COMPLETO DE FRACTURAS EXPUESTAS DE MANO O PIE, C/U"
  },
  {
    "code" : "2104012",
    "display" : "OSTEITIS, RASPADO, C/S SECUESTRECTOMIA"
  },
  {
    "code" : "2104013",
    "display" : "OSTEOMIELITIS AGUDA HEMATOGENA, DRENAJE QUIRURGICO, C/S DISPOSITIVOS DEOSTEOCLISIS"
  },
  {
    "code" : "2104014",
    "display" : "OSTEOMIELITIS CRONICA HUESOS LARGOS, LEGRADO OSEO, C/S OSTEOSINTESIS OAPARATO DE YESO"
  },
  {
    "code" : "2104015",
    "display" : "ARTROTOMIA HOMBRO O CADERA C/U"
  },
  {
    "code" : "2104016",
    "display" : "ARTROTOMIA OTRAS ARTICULACIONES, C/U"
  },
  {
    "code" : "2104017",
    "display" : "PSEUDOARTROSIS INFECTADA HUESOS LARGOS, TRAT. QUIR. CUALQUIER TECNICA,C/S DISPOSITIVO DE OSTEOCLISIS, C/S OSTEO- SINTESIS O APARATO DE YESO"
  },
  {
    "code" : "2104018",
    "display" : "AUTOTRASPLANTE OSEO MICROQUIRURGICO"
  },
  {
    "code" : "2104019",
    "display" : "INJERTO ESPONJOSO METAFISIARIO"
  },
  {
    "code" : "2104020",
    "display" : "INJERTOS ESPONJOSOS O CORTICO-ESPONJOSOS DE CRESTA ILIACA"
  },
  {
    "code" : "2104021",
    "display" : "TRANSPLANTE OSEO (AUTO U HOMOTRASPLANTE)"
  },
  {
    "code" : "2104022",
    "display" : "LESIONES QUISTICAS CON FRACTURA PATOLOGICA: LEGRADO OSEO, C/S RELLENO INJERTO ESPONJOSO, C/S OSTEOSINTESIS Y/O APARATO DE INMOVILIZACION POSTOPERATORIA"
  },
  {
    "code" : "2104023",
    "display" : "LESIONES QUISTICAS: LEGRADO OSEO, C/S RELLENO DE INJERTOS ESPONJOSOS"
  },
  {
    "code" : "2104024",
    "display" : "METASTASIS OSEA C/S FRACTURA PATOLOGICA, LEGRADO TUMORAL, RELLENO CEMENTO QUIRURGICO Y OSTEOSINTESIS"
  },
  {
    "code" : "2104025",
    "display" : "TUMOR OSEO, RESECCION EN BLOQUE, C/S OSTEOSINTESIS Y/O APARATO INMOVILIZACION POSTOPERATORIO"
  },
  {
    "code" : "2104026",
    "display" : "TUMORES O QUISTES O LESIONES PSEUDOQUISTICAS O MUSCULARES Y/O TENDINEAS, TRAT. QUIR."
  },
  {
    "code" : "2104027",
    "display" : "TUMORES OSEOS: RESECCION EN BLOQUE, EPIFISIARIA C/ARTRODESIS O DIAFISIARIA"
  },
  {
    "code" : "2104028",
    "display" : "TUMORES PRIMARIOS O METASTASICOS VERTEBRALES: CORPORECTOMIA, REEMPLAZOPOR CEMENTO QUIR. O INJERTO OSEO, C/S OSTEOSINTESIS"
  },
  {
    "code" : "2104029",
    "display" : "SINOVECTOMIAS QUIRURGICAS DE CODO O MUÑECA O METACARPOFALANGICAS, C/U"
  },
  {
    "code" : "2104030",
    "display" : "SINOVECTOMIAS QUIRURGICAS DE RODILLA O CADERA U HOMBRO, C/U"
  },
  {
    "code" : "2104031",
    "display" : "EPINEURORRAFIA MICROQUIRURGICA CON MAGNIFICACION CUALQUIER TRONCO NERVIOSO (CON EXCEPCION NERVIOS DIGITALES)"
  },
  {
    "code" : "2104033",
    "display" : "BIOPSIA OSEA POR PUNCION"
  },
  {
    "code" : "2104034",
    "display" : "BIOPSIA OSEA QUIRURGICA"
  },
  {
    "code" : "2104035",
    "display" : "BIOPSIA SINOVIAL O MUSCULAR POR PUNCION"
  },
  {
    "code" : "2104036",
    "display" : "BIOPSIA SINOVIAL O MUSCULAR QUIRURGICA"
  },
  {
    "code" : "2104037",
    "display" : "BIOPSIA VERTEBRAL POR PUNCION"
  },
  {
    "code" : "2104038",
    "display" : "MUÑON DE AMPUTACION, REGULARIZACION DE"
  },
  {
    "code" : "2104039",
    "display" : "OSTEOCONDROSIS O EPIFISITIS, TRAT. QUIR."
  },
  {
    "code" : "2104040",
    "display" : "AMPUTACION INTERESCAPULO-TORACICA"
  },
  {
    "code" : "2104041",
    "display" : "DESARTICULACION ESCAPULO-HUMERAL"
  },
  {
    "code" : "2104042",
    "display" : "ENDOPROTESIS TOTAL DE HOMBRO,(CUALQUIER TECNICA)"
  },
  {
    "code" : "2104043",
    "display" : "FIJACION DE ESCAPULA"
  },
  {
    "code" : "2104044",
    "display" : "FRACTURA CUELLO HUMERAL, TRAT. QUIR."
  },
  {
    "code" : "2104045",
    "display" : "FRACTURA DE CLAVICULA, OSTEOSINTESIS"
  },
  {
    "code" : "2104046",
    "display" : "FRACTURA ESCAPULA, OSTEOSINTESIS"
  },
  {
    "code" : "2104047",
    "display" : "LUXACION ACROMIO-CLAVICULAR O ESTERNO-CLAVICULAR, REDUCCION O PLASTIA CAPSULOLIGAMENTOSA Y OSTEOSINTESIS"
  },
  {
    "code" : "2104048",
    "display" : "LUXACION RECIDIVANTE, TRAT. QUIR."
  },
  {
    "code" : "2104049",
    "display" : "LUXACION TRAUMATICA, REDUCCION CRUENTA"
  },
  {
    "code" : "2104050",
    "display" : "LUXOFRACTURA, REDUCCION Y OSTEOSINTESIS"
  },
  {
    "code" : "2104051",
    "display" : "RUPTURA MANGUITO ROTADORES, TRAT. QUIR. C/S ACROMIECTOMIA"
  },
  {
    "code" : "0202101",
    "display" : "DIA CAMA DE HOSPITALIZACION MEDICINA Y ESPECIALIDADES (SALA3 CAMAS O MAS DE PENSIONADO O MEDIO PENSIONADO)."
  },
  {
    "code" : "0202102",
    "display" : "DIA CAMA DE HOSPITALIZACION MEDICINA Y ESPECIALIDADES (SALA2 CAMAS)"
  },
  {
    "code" : "0202103",
    "display" : "DIA CAMA DE HOSPITALIZACION MEDICINA Y ESPECIALIDADES (SALA1 CAMA SIN BANO)"
  },
  {
    "code" : "0504012",
    "display" : "RADIOTERAPIA, LINFOMA MALIGNO IRRADIACION GANGLIONAR TOTAL"
  },
  {
    "code" : "0504013",
    "display" : "RADIOTERAPIA, LINFOMAS MALIGNOS, TRAT. PARCIAL."
  },
  {
    "code" : "0504014",
    "display" : "RADIOTERAPIA PALIATIVA CANCER DE PROSTATA"
  },
  {
    "code" : "0504015",
    "display" : "RADIOTERAPIA, SARCOMA OSEO O DE PARTES BLANDAS"
  },
  {
    "code" : "0504016",
    "display" : "RADIOTERAPIA, TUMORES DEL SISTEMA NERVIOSO CENTRAL"
  },
  {
    "code" : "0505001",
    "display" : "TELECOBALTOTERAPIA PALIATIVA"
  },
  {
    "code" : "0505002",
    "display" : "RADIOTERAPIA PALIATIVA CANCER DE TESTICULO"
  },
  {
    "code" : "0505003",
    "display" : "TELECOBALTOTERAPIA, CANCER DE MAMA, TRAT. POSTOPERATORIO (TUMORECTOMIA;MASTECTOMIA PARCIAL, TOTAL O RADICAL)"
  },
  {
    "code" : "0505004",
    "display" : "TELECOBALTOTERAPIA, CANCER DE MAMA SIN INTERVENCION QUIR."
  },
  {
    "code" : "0505005",
    "display" : "TELECOBALTOTERAPIA, CANCER DE ORGANOS DE ABDOMEN Y/O PELVIS, EXCEPTO UTERO"
  },
  {
    "code" : "0505006",
    "display" : "TELECOBALTOTERAPIA, CANCER DE ORGANOS DE CABEZA Y CUELLO"
  },
  {
    "code" : "0505007",
    "display" : "TELECOBALTOTERAPIA, CANCER DE PIEL"
  },
  {
    "code" : "0505008",
    "display" : "TELECOBALTOTERAPIA, CANCER DE PULMON O ESOFAGO TORACICO"
  },
  {
    "code" : "0505009",
    "display" : "TELECOBALTOTERAPIA, CANCER DE TESTICULO"
  },
  {
    "code" : "0505010",
    "display" : "TELECOBALTOTERAPIA, CANCER UTERINO (CUELLO Y/O ENDOMETRIO)"
  },
  {
    "code" : "0505011",
    "display" : "TELECOBALTOTERAPIA, LEUCEMIA, TRAT. DE"
  },
  {
    "code" : "0505012",
    "display" : "TELECOBALTOTERAPIA, LINFOMA MALIGNO IRRADIACION GANGLIONAR"
  },
  {
    "code" : "0505013",
    "display" : "TELECOBALTOTERAPIA, LINFOMAS MALIGNOS, TRAT. PARCIAL"
  },
  {
    "code" : "1704006",
    "display" : "RESECCION DE PARED COSTAL C/PLASTIA (TORACOPLASTIA OSTEO- PLASTICA DE YORK O SIMILAR)"
  },
  {
    "code" : "1704007",
    "display" : "TORACOFRENOLAPARATOMIA EXPLORADORA C/S REPARACION VISCERAS TORACICAS YABDOMINALES"
  },
  {
    "code" : "1704008",
    "display" : "TORACOFRENOTOMIA EXPLORADORA"
  },
  {
    "code" : "1704009",
    "display" : "TORACOTOMIA EXPLORADORA, C/S BIOPSIA, C/S DEBRIDACION, C/S DRENAJE"
  },
  {
    "code" : "1704010",
    "display" : "TORACOTOMIA MINIMA C/S RESECCION COSTAL, C/S BIOPSIA, C/S DRENAJE"
  },
  {
    "code" : "1704011",
    "display" : "MEDIASTINOTOMIA EXPLORADORA ANT. O POST. C/S BIOPSIA PROC. AUT DRENAJEQUIR. DE MEDIASTINO (PROC. AUT.):"
  },
  {
    "code" : "1704012",
    "display" : "VIA CERVICAL"
  },
  {
    "code" : "1704013",
    "display" : "VIA TORACICA"
  },
  {
    "code" : "1704014",
    "display" : "TIMECTOMIA VIA CERVICAL"
  },
  {
    "code" : "1704015",
    "display" : "TIMECTOMIA VIA TORACICA MEDIOESTERNAL"
  },
  {
    "code" : "1704016",
    "display" : "CONDUCTO TORACICO, LIGADURA QUIRURGICA"
  },
  {
    "code" : "1704017",
    "display" : "TUMORES O QUISTES DE MEDIASTINO (ANTERIOR O POSTERIOR) TRAT.QUIR. C/S DISECCION GANGLIONAR"
  },
  {
    "code" : "1704018",
    "display" : "CIRUGIA DEL DIAFRAGMA CON CIRUGIA DE VISCERAS ABDOMINALES O TORACICAS"
  },
  {
    "code" : "1704019",
    "display" : "HERIDAS TRAUMATICAS, TRAT. QUIR."
  },
  {
    "code" : "1704020",
    "display" : "HERNIOPLASTIA DIAFRAGMATICA POR VIA TORACICA C/ PROTESIS (NO INCLUYE VALOR DE LA PROTESIS)"
  },
  {
    "code" : "1704021",
    "display" : "HERNIOPLASTIA DIAFRAGMATICA POR VIA TORACICA, SIN PROTESIS"
  },
  {
    "code" : "1704022",
    "display" : "TUMORES, MALFORMACIONES O QUISTES DEL DIAFRAGMA (NO INCLUYE VALOR DE LAPROTESIS) TRAT. QUIR."
  },
  {
    "code" : "1704023",
    "display" : "CUERPO EXTRAÑO PLEURAL, EXTRAC. QUIR."
  },
  {
    "code" : "1704024",
    "display" : "DECORTICACION PLEUROPULMONAR (PLEURECTOMIA PARCIAL O TOTAL)"
  },
  {
    "code" : "1704025",
    "display" : "PLEURODESIS POR PLEUROTOMIA"
  },
  {
    "code" : "1704026",
    "display" : "PLEURODESIS POR TORACOTOMIA"
  },
  {
    "code" : "1704027",
    "display" : "PLEUROTOMIA UNICA O DOBLE C/S BIOPSIA CON TROCAR"
  },
  {
    "code" : "1704028",
    "display" : "TUMORES PLEURALES, TRAT. QUIR."
  },
  {
    "code" : "1704029",
    "display" : "BRONCOTOMIA O TRAQUEOBRONCOTOMIA EXPLORADORA O TERAPEUTICA POR TORACOTOMIA (PROC. AUT.)"
  },
  {
    "code" : "1704030",
    "display" : "CIRUGIA RUPTURA TRAQUEOBRONQUIAL O TRATAMIENTO QUIRURGICO FISTULA POSTNEUMONECTOMIA POR ESTERNOTOMIA MEDIA"
  },
  {
    "code" : "1704031",
    "display" : "PLASTIA DE TRAQUEA Y/O BRONQUIOS C/S RESECCION, C/S PROTESIS (NO INCLUYE EL VALOR DE LA PROTESIS)"
  },
  {
    "code" : "1704032",
    "display" : "TRATAMIENTO QUIRURGICO FISTULA BRONQUIAL POR TORACOTOMIA"
  },
  {
    "code" : "1704033",
    "display" : "TUMORES TRAQUEALES, EXTIRPACION"
  },
  {
    "code" : "1704034",
    "display" : "ABSCESO PULMONAR, DRENAJE POR TORACOTOMIA"
  },
  {
    "code" : "1704035",
    "display" : "BIOPSIA PULMONAR POR TORACOTOMIA"
  },
  {
    "code" : "1704036",
    "display" : "BULAS, TRAT. QUIR."
  },
  {
    "code" : "1704037",
    "display" : "CIRUGIA DE QUISTE HIDATIDICO SIN RESECCION PULMONAR"
  },
  {
    "code" : "1704038",
    "display" : "CUERPO EXTRAÑO INTRAPULMONAR, EXTIRP. QUIR."
  },
  {
    "code" : "1704039",
    "display" : "HERIDAS DE PULMON, TRAT. QUIR. (PROC. AUT.)"
  },
  {
    "code" : "1704040",
    "display" : "LOBECTOMIA O BILOBECTOMIA"
  },
  {
    "code" : "1704041",
    "display" : "METASTASIS BILATERAL, TRAT. QUIR. POR ESTERNOTOMIA"
  },
  {
    "code" : "1704042",
    "display" : "METASTASIS UNILATERAL"
  },
  {
    "code" : "1704043",
    "display" : "NEUMONECTOMIA C/S RESECCION DE PARED COSTAL"
  },
  {
    "code" : "1704044",
    "display" : "NEUMOSTOMIA (PROC. AUT.)"
  },
  {
    "code" : "1704045",
    "display" : "QUISTECTOMIA SIMPLE"
  },
  {
    "code" : "1704046",
    "display" : "RESECCIONES SEGMENTARIAS"
  },
  {
    "code" : "1704047",
    "display" : "VIA CERVICAL"
  },
  {
    "code" : "1704048",
    "display" : "VIA TORACICA"
  },
  {
    "code" : "1704049",
    "display" : "ESOFAGOSTOMIA CERVICAL (PROC. AUT.)"
  },
  {
    "code" : "1704050",
    "display" : "VIA CERVICAL"
  },
  {
    "code" : "1704051",
    "display" : "VIA TORACICA"
  },
  {
    "code" : "1704052",
    "display" : "VIA CERVICAL"
  },
  {
    "code" : "1704053",
    "display" : "VIA TORACICA"
  },
  {
    "code" : "1704054",
    "display" : "ACHALASIA, TRAT. QUIR."
  },
  {
    "code" : "1704055",
    "display" : "ATRESIA ESOFAGICA, TRAT. QUIR."
  },
  {
    "code" : "1704056",
    "display" : "ESOFAGECTOMIA CON RESTITUCION DEL TRANSITO MEDIANTE ESTOMAGO O INTESTINO; PARCIAL O TOTAL"
  },
  {
    "code" : "1704057",
    "display" : "ESOFAGECTOMIA TOTAL CON ESOFAGOSTOMIA, GASTROSTOMIA Y YEYUNOSTOMIA"
  },
  {
    "code" : "1704058",
    "display" : "ESOFAGOGASTRECTOMIA PROXIMAL"
  },
  {
    "code" : "1704059",
    "display" : "PROTESIS O TUBO ENDOESOFAGICO, COLOCACION DE (PROC. AUT.)"
  },
  {
    "code" : "1704060",
    "display" : "RECONSTITUCION DE TRANSITO EN SEGUNDO TIEMPO (ESTOMAGO O INTESTINO) DEOPERACION COD. 17-04-057"
  },
  {
    "code" : "1704061",
    "display" : "SUTURA HERIDA O PERFORACION ESOFAGO CERVICAL"
  },
  {
    "code" : "1704062",
    "display" : "SUTURA HERIDA O PERFORACION ESOFAGO TORACICO"
  },
  {
    "code" : "1704063",
    "display" : "VARICES, LIGADURA DIRECTA"
  },
  {
    "code" : "1704064",
    "display" : "FRENOPARALISIS TRAT. QUIR."
  },
  {
    "code" : "1705002",
    "display" : "NEUMONIA 2 ADULTO (ERA)"
  },
  {
    "code" : "1705003",
    "display" : "NEUMONIA 3 ADULTO (ERA)"
  },
  {
    "code" : "1707001",
    "display" : "BASAL"
  },
  {
    "code" : "1707002",
    "display" : "ESPIROMETRIA BASAL Y CON BRONCODILATADOR"
  },
  {
    "code" : "1707003",
    "display" : "PROVOCACION CON ANTIGENO (INCLUYE EL ANTIGENO)"
  },
  {
    "code" : "1707004",
    "display" : "PROVOCACION CON EJERCICIO, TEST DE"
  },
  {
    "code" : "1707005",
    "display" : "PROVOCACION CON HISTAMINA (PD 20),TEST DE, (INCLUYE LA ESPI-ROMETRIA BASAL Y EL TRATAMIENTO DE LOS EFECTOS ADVERSOS DELA HISTAMINA)"
  },
  {
    "code" : "1707006",
    "display" : "TEST ESPIROMETRICO DE POSICION LATERAL"
  },
  {
    "code" : "1707007",
    "display" : "ANALISIS DE GAS ESPIRADO"
  },
  {
    "code" : "1707008",
    "display" : "CAPACIDAD DE DIFUSION, ESTUDIO DE"
  },
  {
    "code" : "1707009",
    "display" : "CAPACIDAD FISICA DEL TRABAJO"
  },
  {
    "code" : "1707010",
    "display" : "CURVA DE LAVADO DE NITROGENO (N)"
  },
  {
    "code" : "1707011",
    "display" : "CURVA DE RELAJACION FLUJO-VOLUMEN BASAL"
  },
  {
    "code" : "1103042",
    "display" : "BIOPSIA"
  },
  {
    "code" : "1103043",
    "display" : "COAGULACION DE NUCLEOS O VIAS ENCEFALICAS"
  },
  {
    "code" : "1103044",
    "display" : "IMPLANTACION DE ISOTOPOS (BRAQUITERAPIA) (NO INCLUYE VALOR DEL RADIOFARMACO)"
  },
  {
    "code" : "0301010",
    "display" : "CELULAS DEL LUPUS, CADA MUESTRA"
  },
  {
    "code" : "0301011",
    "display" : "COAGULACION, TIEMPO DE"
  },
  {
    "code" : "0301012",
    "display" : "COAGULO, TIEMPO DE RETRACCION DEL"
  },
  {
    "code" : "0301013",
    "display" : "COAGULO, TIEMPO DE LISIS DEL"
  },
  {
    "code" : "0301014",
    "display" : "COOMBS DIRECTO, TEST DE"
  },
  {
    "code" : "0301015",
    "display" : "COOMBS INDIRECTO, PRUEBA DE"
  },
  {
    "code" : "0301016",
    "display" : "CUERPOS DE HEINZ"
  },
  {
    "code" : "0301017",
    "display" : "DESHIDROGENASA GLUCOSA-6-FOSFATO EN ERITROCITOS"
  },
  {
    "code" : "0301018",
    "display" : "DESHIDROGENASA 6-FOSFOGLUCONATO EN ERITROCITOS"
  },
  {
    "code" : "0301019",
    "display" : "DREPANOCITOS, INVESTIGACION DE"
  },
  {
    "code" : "0301020",
    "display" : "EUGLOBULINAS, TIEMPO DE LISIS DE"
  },
  {
    "code" : "0301021",
    "display" : "FIBRINOGENO"
  },
  {
    "code" : "0301022",
    "display" : "TEST DE NEUTRALIZACION PLAQUETARIA"
  },
  {
    "code" : "0301023",
    "display" : "FACTOR III PLAQUETARIO"
  },
  {
    "code" : "0301024",
    "display" : "FACTOR V"
  },
  {
    "code" : "0301025",
    "display" : "FACTORES VII, VIII, IX, X, XI, XII, XIII, C/U"
  },
  {
    "code" : "0301026",
    "display" : "FERRITINA"
  },
  {
    "code" : "0301027",
    "display" : "FIBRINOGENO, PRODUCTOS DE DEGRADACION DEL"
  },
  {
    "code" : "0301028",
    "display" : "FIERRO SERICO"
  },
  {
    "code" : "0301029",
    "display" : "FIERRO, CAPACIDAD DE FIJACION DEL (INCLUYE FIERRO SERICO)"
  },
  {
    "code" : "0301030",
    "display" : "FIERRO, CINETICA DEL (CADA DETERMINACION)"
  },
  {
    "code" : "0301031",
    "display" : "FIERRO, PRUEBA DE SOBRECARGA"
  },
  {
    "code" : "0301032",
    "display" : "GELACION POR ETANOL"
  },
  {
    "code" : "0301033",
    "display" : "GRUPOS MENORES \"TIPIFICACION O DETERMINACION DE OTROS SISTEMAS SANGUINEOS\" (KELL, DUFFY, KIDD Y OTROS) POR C/U."
  },
  {
    "code" : "0301034",
    "display" : "GRUPOS SANGUINEOS AB0 Y RHO (INCLUYE ESTUDIO DE FACTOR DU EN RH NEGATIVOS)"
  },
  {
    "code" : "0301035",
    "display" : "HAPTOGLOBINA CUANTITATIVA"
  },
  {
    "code" : "0301036",
    "display" : "HEMATOCRITO (PROC. AUT.)"
  },
  {
    "code" : "0301037",
    "display" : "HEMOGLOBINA A2 CUANTITATIVA"
  },
  {
    "code" : "0301038",
    "display" : "HEMOGLOBINA EN SANGRE TOTAL (PROC. AUT.)"
  },
  {
    "code" : "0301039",
    "display" : "HEMOGLOBINA FETAL CUALITATIVA"
  },
  {
    "code" : "0301040",
    "display" : "HEMOGLOBINA FETAL CUANTITATIVA EN ERITROCITOS"
  },
  {
    "code" : "0301041",
    "display" : "HEMOGLOBINA GLICOSILADA"
  },
  {
    "code" : "0301042",
    "display" : "HEMOGLOBINA PLASMATICA"
  },
  {
    "code" : "0301043",
    "display" : "HEMOGLOBINA TERMOLABIL"
  },
  {
    "code" : "0301044",
    "display" : "HEMOGLOBINA, ELECTROFORESIS DE (INCLUYE HB. TOTAL)"
  },
  {
    "code" : "0301045",
    "display" : "HEMOGRAMA (INCLUYE RECUENTOS DE LEUCOCITOS Y ERITROCITOS, HEMOGLOBINA, HEMATOCRITO, FORMULA LEUCOCITARIA, CARACTERISTICAS DE LOS ELEMENTOS FIGURADOS Y VELOCIDAD DE ERITROSEDIMENTACION)"
  },
  {
    "code" : "0301046",
    "display" : "HEMOLISINAS"
  },
  {
    "code" : "0301047",
    "display" : "HEMOLISIS CON SUCROSA, TEST DE"
  },
  {
    "code" : "0301048",
    "display" : "HEMOSIDERINA MEDULAR"
  },
  {
    "code" : "0301049",
    "display" : "HEPARINA, CUANTIFICACION DE"
  },
  {
    "code" : "0301050",
    "display" : "ISOINMUNIZACION, DETECCION DE ANTICUERPOS IRREGULARES (PROC. AUT.)."
  },
  {
    "code" : "0301051",
    "display" : "ISOINMUNIZACION, DETECCION E IDENTIFICACION DE ANTICUERPOS IRREGULARES."
  },
  {
    "code" : "0301052",
    "display" : "ISOPROPANOL, TEST DE"
  },
  {
    "code" : "0301053",
    "display" : "METAHEMALBUMINA"
  },
  {
    "code" : "0301054",
    "display" : "METAHEMOGLOBINA"
  },
  {
    "code" : "0301055",
    "display" : "MURAMINIDASA EN ERITROCITOS"
  },
  {
    "code" : "0301056",
    "display" : "PIRUVATOQUINASA EN ERITROCITOS"
  },
  {
    "code" : "0301057",
    "display" : "PROTAMINA SULFATO, DETERMINACION DE"
  },
  {
    "code" : "0301058",
    "display" : "PROTOPORFIRINAS EN ERITROCITOS"
  },
  {
    "code" : "0301059",
    "display" : "PROTROMBINA, TIEMPO DE O CONSUMO DE"
  },
  {
    "code" : "0301060",
    "display" : "PRUEBA DE COMPATIBILIDAD POR UNIDAD DE SANGRE (PROC. AUT.)"
  },
  {
    "code" : "0301062",
    "display" : "RECUENTO DE BASOFILOS (ABSOLUTO)"
  },
  {
    "code" : "0301063",
    "display" : "RECUENTO DE EOSINOFILOS (ABSOLUTO)"
  },
  {
    "code" : "0301064",
    "display" : "RECUENTO DE ERITROCITOS, ABSOLUTO (PROC. AUT.)"
  },
  {
    "code" : "0301065",
    "display" : "RECUENTO DE LEUCOCITOS, ABSOLUTO (PROC. AUT.)"
  },
  {
    "code" : "0301066",
    "display" : "RECUENTO DE LINFOCITOS (ABSOLUTO)"
  },
  {
    "code" : "0301067",
    "display" : "RECUENTO DE PLAQUETAS (ABSOLUTO)"
  },
  {
    "code" : "0301068",
    "display" : "RECUENTO DE RETICULOCITOS (ABSOLUTO O PORCENTUAL)"
  },
  {
    "code" : "0301069",
    "display" : "RECUENTO DIFERENCIAL O FORMULA LEUCOCITARIA (PROC. AUT.)"
  },
  {
    "code" : "0301070",
    "display" : "RESISTENCIA GLOBULAR OSMOTICA"
  },
  {
    "code" : "0301071",
    "display" : "SACAROSA, PRUEBA DE LA"
  },
  {
    "code" : "0301072",
    "display" : "SANGRIA, TIEMPO DE (IVY)"
  },
  {
    "code" : "0301073",
    "display" : "SET DE EXAMENES PREVIOS A UNA TRANSFUSION DE SANGRE O HEMOCOMPONENTES (INCLUYE LA CLASIFICACION DE GRUPO AB0,RHO PRUEBA DE COMPATIBILIDAD DEL RECEPTOR Y LOS DADORES,VDRL, HIV, VIRUS HEPATITIS B ANTIGENO DE SUPERFICIE Y ANTICUERPOS DE HEPATITIS C)"
  },
  {
    "code" : "0301074",
    "display" : "SOBREVIDA DEL ERITROCITO (CR 51 O SIMILAR)"
  },
  {
    "code" : "0301075",
    "display" : "SUBGRUPO AB0 Y RH FENOTIPO - GENOTIPO RH, C/U."
  },
  {
    "code" : "0301076",
    "display" : "THORN, PRUEBA DE (NO INCLUYE ACTH)"
  },
  {
    "code" : "0301077",
    "display" : "TINCION DE ESTEARASA"
  },
  {
    "code" : "0301078",
    "display" : "TINCION DE FOSFATASAS ALCALINAS O ACIDAS"
  },
  {
    "code" : "0301079",
    "display" : "TINCION DE GLICOGENO O PAS"
  },
  {
    "code" : "0301080",
    "display" : "TINCION DE LIPIDOS"
  },
  {
    "code" : "0301081",
    "display" : "TINCION DE PEROXIDASAS"
  },
  {
    "code" : "0301082",
    "display" : "TRANSFERRINA"
  },
  {
    "code" : "0301083",
    "display" : "TROMBINA, TIEMPO DE"
  },
  {
    "code" : "0301084",
    "display" : "TROMBOPLASTINA, TIEMPO DE GENERACION DE (TGT)"
  },
  {
    "code" : "0301085",
    "display" : "TROMBOPLASTINA, TIEMPO PARCIAL DE (TTPA, TTPK O SIMILARES)"
  },
  {
    "code" : "0301086",
    "display" : "VELOCIDAD DE ERITROSEDIMENTACION (PROC. AUT.)"
  },
  {
    "code" : "1704001",
    "display" : "CIRUGIA DEL OPERCULO TORACICO"
  },
  {
    "code" : "1704002",
    "display" : "CIRUGIA TORAX ABIERTO TRAUMATICO Y/O FIJACION TORAX VOLANTE, OSTEOSINTESIS COSTALES MULTIPLES Y DE ESTERNON (NO INCLUYE EL VALOR DE LA PROTESIS)"
  },
  {
    "code" : "1704003",
    "display" : "FENESTRACION O TORACOPLASTIA"
  },
  {
    "code" : "1704004",
    "display" : "REPARACION PECTUM EXCAVATUM O CARINATUM, (PROC. AUT.)"
  },
  {
    "code" : "1704005",
    "display" : "RESECCION DE COSTILLAS Y/O PARED COSTAL Y/O CARTILAGO Y/O ESTERNON S/PLASTIA (PROC. AUT.)"
  },
  {
    "code" : "2104187",
    "display" : "ESPOLON CALCANEO, TRAT. QUIR."
  },
  {
    "code" : "2104188",
    "display" : "EXOSTOSIS 5° METATARSIANO, (\"JUANETILLO\") TRAT. QUIR."
  },
  {
    "code" : "2104189",
    "display" : "FASCIOTOMIA PLANTAR (PROC. AUT.)"
  },
  {
    "code" : "2104190",
    "display" : "HALLUX VALGUS O RIGIDUS, TRAT.QUIR. COMPLETO (CUALQUIER TEC.)"
  },
  {
    "code" : "2104191",
    "display" : "LUXACIONES, LUXOFRACTURAS, FRACTURAS, REDUCCION CRUENTA"
  },
  {
    "code" : "2104192",
    "display" : "MAL PERFORANTE PLANTAR, TRAT. QUIR."
  },
  {
    "code" : "2104213",
    "display" : "ESCOLIOSIS, TRAT. QUIR., CUALQUIER VIA DE ABORDAJE, CON INSTRUMENTACION(INCLUYE ELEMENTOS DE OSTEOSINTESIS)"
  },
  {
    "code" : "2104228",
    "display" : "ENDOPROTESIS PARCIAL C/S CEMENTACION (CUALQUIER TECNICA) (INCLUYE PROTESIS)"
  },
  {
    "code" : "2104229",
    "display" : "ENDOPROTESIS TOTAL DE CADERA (INCLUYE PROTESIS)"
  },
  {
    "code" : "2104231",
    "display" : "FRACTURA DE CUELLO DE FEMUR, OSTEOSINTESIS, CUALQUIER TECNICA (INCLUYEELEMENTOS DE OSTEOSINTESIS)"
  },
  {
    "code" : "2105001",
    "display" : "CALZON CORTO DE YESO"
  },
  {
    "code" : "2105002",
    "display" : "CORBATA TIPO SCHANTZ"
  },
  {
    "code" : "2105003",
    "display" : "MINERVA DE YESO"
  },
  {
    "code" : "2105004",
    "display" : "RODILLERA, BOTA LARGA O CORTA DE YESO"
  },
  {
    "code" : "2105005",
    "display" : "VELPEAU"
  },
  {
    "code" : "2105006",
    "display" : "YESO ANTEBRAQUIAL C/S FERULA DIGITAL"
  },
  {
    "code" : "2105007",
    "display" : "YESO BRAQUICARPIANO"
  },
  {
    "code" : "2105008",
    "display" : "YESO PELVIPEDIO BILATERAL"
  },
  {
    "code" : "2105009",
    "display" : "YESO PELVIPEDIO UNILATERAL"
  },
  {
    "code" : "2105011",
    "display" : "CORSETS DE MILWAUKEE O SIMILARES (INCLUYE LA TOMA DE MOLDE )"
  },
  {
    "code" : "2105012",
    "display" : "CORSETS DE RISSER O SIMILARES"
  },
  {
    "code" : "2201001",
    "display" : "ANESTESIA GENERAL O REGIONAL OTORGADA POR MEDICO DIFERENTEAL PRIMER CIRUJANO (EN INTERVENCIONES O PROCEDIMIENTOSDIAGNOSTICO O TERAPEUTICOS)"
  },
  {
    "code" : "2201102",
    "display" : "ANESTESIA PERIDURAL O EPIDURAL CONTINUA PARA PARTOS"
  },
  {
    "code" : "2301001",
    "display" : "ENMASCARADOR DE TINNITUS"
  },
  {
    "code" : "2301002",
    "display" : "ORTESIS CERVICALES (COLLARES BLANDOS Y DUROS)"
  },
  {
    "code" : "2301003",
    "display" : "PROTESIS DE OREJA"
  },
  {
    "code" : "2301004",
    "display" : "PROTESIS METALICA MANDIBULA INFERIOR"
  },
  {
    "code" : "2301005",
    "display" : "PROTESIS OCULAR (NO INCLUYE LENTES INTRAOCULARES)"
  },
  {
    "code" : "2301006",
    "display" : "PROTESIS PARA CRANEOPLASTIA"
  },
  {
    "code" : "2301007",
    "display" : "PROTESIS PARA HIDROCEFALIA"
  },
  {
    "code" : "2301008",
    "display" : "BRAGUERO"
  },
  {
    "code" : "2301010",
    "display" : "CABLES ELECTRODOS"
  },
  {
    "code" : "2301011",
    "display" : "FAJA ORTOPEDICA"
  },
  {
    "code" : "2301012",
    "display" : "MARCAPASO"
  },
  {
    "code" : "2301013",
    "display" : "PROTESIS ABDOMINAL (PARA EVENTRACION)"
  },
  {
    "code" : "2301014",
    "display" : "PROTESIS MAMARIA C/U"
  },
  {
    "code" : "2301015",
    "display" : "PROTESIS TESTICULAR, C/U"
  },
  {
    "code" : "2301016",
    "display" : "PROTESIS ARTERIAL"
  },
  {
    "code" : "2301017",
    "display" : "VALVULA AORTICA"
  },
  {
    "code" : "2301018",
    "display" : "VALVULA MITRAL"
  },
  {
    "code" : "2301020",
    "display" : "ORTESIS, MUSLO-PIE (ISQUIOPEDIO)"
  },
  {
    "code" : "2301021",
    "display" : "ARNES DE PROTESIS"
  },
  {
    "code" : "2301022",
    "display" : "BASTON CANADIENSE O TRIPODE, C/U"
  },
  {
    "code" : "2301023",
    "display" : "CAVIDAD PARA AMPUTADO DE MUSLO"
  },
  {
    "code" : "2301024",
    "display" : "RODILLERA"
  },
  {
    "code" : "2301025",
    "display" : "CASQUETE DE GOMA"
  },
  {
    "code" : "2301026",
    "display" : "CINTURON PARA PROTESIS"
  },
  {
    "code" : "2301027",
    "display" : "CINTURON PELVICO DOBLE"
  },
  {
    "code" : "2301028",
    "display" : "CLAVOS (POR UNIDAD)"
  },
  {
    "code" : "2301029",
    "display" : "COJIN DE ABDUCCION O PAULIK"
  },
  {
    "code" : "2301030",
    "display" : "CORREA DE ORTESIS"
  },
  {
    "code" : "2301031",
    "display" : "CORREA DE MULEY"
  },
  {
    "code" : "2301032",
    "display" : "ORTESIS DE COLUMNA (MILWAUKEE, TAYLOR O SIMILARES)"
  },
  {
    "code" : "2301033",
    "display" : "ORTESIS LUMBOSACRA (CORSET DE KNIGHT)"
  },
  {
    "code" : "2301034",
    "display" : "ORTESIS PALMAR ACTIVA (UCLA)"
  },
  {
    "code" : "2301035",
    "display" : "ORTESIS RADIAL DE POSICION"
  },
  {
    "code" : "2301036",
    "display" : "ORTESIS CORTA DE POSICION (DIGITALES) C/U"
  },
  {
    "code" : "2301037",
    "display" : "ORTESIS DE USO NOCTURNO DE MIEMBRO INFERIOR"
  },
  {
    "code" : "2301038",
    "display" : "ORTESIS LARGA DE POSICION"
  },
  {
    "code" : "2301039",
    "display" : "INSTRUMENTAL PARA FIJACION DE COLUMNA (HARRINGTON OSIMILARES)"
  },
  {
    "code" : "2301040",
    "display" : "MULETAS (PAR)"
  },
  {
    "code" : "2301041",
    "display" : "ORTESIS LARGA BILATERAL CON CINTURON PELVICO"
  },
  {
    "code" : "2301042",
    "display" : "ORTESIS LARGA UNILATERAL"
  },
  {
    "code" : "2301043",
    "display" : "ORTESIS MANO-MUNECA PASIVA"
  },
  {
    "code" : "2301044",
    "display" : "ORTESIS PARA RODILLA"
  },
  {
    "code" : "2301045",
    "display" : "ORTESIS TOBILLO-PIE"
  },
  {
    "code" : "2301046",
    "display" : "P.T.B. O P.T.S."
  },
  {
    "code" : "2301047",
    "display" : "PIE PROTESICO"
  },
  {
    "code" : "2301048",
    "display" : "PILON REDUCCION MUSLO"
  },
  {
    "code" : "2301049",
    "display" : "PILON REDUCCION PIERNA"
  },
  {
    "code" : "2301050",
    "display" : "PLACAS"
  },
  {
    "code" : "2301051",
    "display" : "PROTESIS BAJO CODO CON GANCHO, MANO Y GUANTE"
  },
  {
    "code" : "2301052",
    "display" : "PROTESIS BAJO RODILLA, CON CORSELETE"
  },
  {
    "code" : "2301053",
    "display" : "PROTESIS DE CODO"
  },
  {
    "code" : "2301054",
    "display" : "PROTESIS DE MANO (HUESOS)"
  },
  {
    "code" : "2301055",
    "display" : "PROTESIS DE RODILLA"
  },
  {
    "code" : "2301056",
    "display" : "PROTESIS DESARTICULADO RODILLA"
  },
  {
    "code" : "2301057",
    "display" : "PROTESIS DESARTICULADO DE CADERA CON BLOQUEO"
  },
  {
    "code" : "2301058",
    "display" : "PROTESIS DESARTICULADO DE CODO CON GANCHO, MANO Y GUANTE"
  },
  {
    "code" : "2301059",
    "display" : "PROTESIS DESARTICULADO DE HOMBRO CON GANCHO, MANO Y GUANTE"
  },
  {
    "code" : "2301060",
    "display" : "PROTESIS PARCIAL DE CADERAS"
  },
  {
    "code" : "2301061",
    "display" : "PROTESIS PARA AMPUTACION PARCIAL DE PIE (CHOPART - PIROGOFF- LISFRANC Y RICARD)"
  },
  {
    "code" : "2301062",
    "display" : "PROTESIS SOBRE RODILLA C/S BLOQUEO"
  },
  {
    "code" : "2301063",
    "display" : "PROTESIS SOBRE RODILLA CON RODILLA DE SEGURIDAD"
  },
  {
    "code" : "2301064",
    "display" : "PROTESIS TIPO SYME"
  },
  {
    "code" : "2301065",
    "display" : "PROTESIS TOTAL DE CADERAS"
  },
  {
    "code" : "2301067",
    "display" : "TALONERA GOMA (PAR)"
  },
  {
    "code" : "2301069",
    "display" : "PROTESIS CANULA PARA TRAQUEOTOMIA"
  },
  {
    "code" : "2301070",
    "display" : "PROTESIS PARA LARINGECTOMIA"
  },
  {
    "code" : "2301071",
    "display" : "LENTES OPTICOS O DE CONTACTOS (SOLO PARA MAYORES DE 55 ANOS)"
  },
  {
    "code" : "2301072",
    "display" : "PLANTILLAS ORTOPEDICAS (PAR)"
  },
  {
    "code" : "2301080",
    "display" : "LENTE INTRAOCULAR."
  },
  {
    "code" : "2401001",
    "display" : "TRASLADO DESDE I REGION HASTA ANTOFAGASTA O VICEVERSA"
  },
  {
    "code" : "2401002",
    "display" : "TRASLADO DESDE I REGION HASTA LA SERENA O VICEVERSA"
  },
  {
    "code" : "2401003",
    "display" : "TRASLADO DESDE I REGION HASTA SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401004",
    "display" : "TRASLADO DESDE I REGION HASTA VALPARAISO O VICEVERSA"
  },
  {
    "code" : "2401005",
    "display" : "TRASLADO DESDE II REGION HASTA LA SERENA O VICEVERSA"
  },
  {
    "code" : "2401006",
    "display" : "TRASLADO DESDE II REGION HASTA SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401007",
    "display" : "TRASLADO DESDE II REGION HASTA VALPARAISO O VICEVERSA"
  },
  {
    "code" : "2401008",
    "display" : "TRASLADO DESDE III REGION HASTA LA SERENA O VICEVERSA"
  },
  {
    "code" : "2401009",
    "display" : "TRASLADO DESDE III REGION HASTA SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401010",
    "display" : "TRASLADO DESDE IV REGION HASTA SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401011",
    "display" : "TRASLADO DESDE IV REGION HASTA VALPARAISO O VICEVERSA"
  },
  {
    "code" : "2401012",
    "display" : "TRASLADO DESDE IX REGION HASTA CONCEPCION O VICEVERSA"
  },
  {
    "code" : "2401013",
    "display" : "TRASLADO DESDE IX REGION HASTA SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401014",
    "display" : "TRASLADO DESDE V REGION HASTA SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401015",
    "display" : "TRASLADO DESDE VI REGION HASTA CONCEPCION O VICEVERSA"
  },
  {
    "code" : "2401016",
    "display" : "TRASLADO DESDE VI REGION HASTA SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401017",
    "display" : "TRASLADO DESDE VII REGION HASTA CONCEPCION O VICEVERSA"
  },
  {
    "code" : "2401018",
    "display" : "TRASLADO DESDE VII REGION HASTA SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401019",
    "display" : "TRASLADO DESDE VIII REGION HASTA SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401020",
    "display" : "TRASLADO DESDE X REGION HASTA CONCEPCION O VICEVERSA"
  },
  {
    "code" : "2401021",
    "display" : "TRASLADO DESDE X REGION HASTA SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401022",
    "display" : "TRASLADO DESDE X REGION HASTA TEMUCO O VICEVERSA"
  },
  {
    "code" : "2401024",
    "display" : "TRASLADO DESDE I REGION HASTA ANTOFAGASTA O VICEVERSA"
  },
  {
    "code" : "2401025",
    "display" : "TRASLADO DESDE II REGION HASTA LA SERENA O VICEVERSA"
  },
  {
    "code" : "2401026",
    "display" : "TRASLADO DESDE II REGION HASTA SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401027",
    "display" : "TRASLADO DESDE II REGION HASTA VALPARAISO O VICEVERSA"
  },
  {
    "code" : "2401028",
    "display" : "TRASLADO DESDE III REGION HASTA LA SERENA O VICEVERSA"
  },
  {
    "code" : "2401029",
    "display" : "TRASLADO DESDE III REGION HASTA SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401030",
    "display" : "TRASLADO DESDE IV REGION HASTA SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401031",
    "display" : "TRASLADO DESDE IV REGION HASTA VALPARAISO O VICEVERSA"
  },
  {
    "code" : "2401032",
    "display" : "TRASLADO DESDE IX REGION HASTA CONCEPCION O VICEVERSA"
  },
  {
    "code" : "2401033",
    "display" : "TRASLADO DESDE IX REGION HASTA SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401034",
    "display" : "TRASLADO DESDE V REGION HASTA SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401035",
    "display" : "TRASLADO DESDE VI REGION HASTA SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401036",
    "display" : "TRASLADO DESDE VII REGION HASTA CONCEPCION O VICEVERSA"
  },
  {
    "code" : "2401037",
    "display" : "TRASLADO DESDE VII REGION HASTA SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401038",
    "display" : "TRASLADO DESDE VIII REGION HASTA SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401039",
    "display" : "TRASLADO DESDE X REGION HASTA CONCEPCION O VICEVERSA"
  },
  {
    "code" : "2401040",
    "display" : "TRASLADO DESDE X REGION HASTA SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401041",
    "display" : "TRASLADO DESDE X REGION HASTA TEMUCO O VICEVERSA"
  },
  {
    "code" : "2401042",
    "display" : "TRASLADO INTERURBANO DENTRO DE UNA MISMA REGION"
  },
  {
    "code" : "2401043",
    "display" : "TRASLADO DENTRO DE LA XI Y XII REGION"
  },
  {
    "code" : "2401044",
    "display" : "TRASLADO DESDE ISLA DE PASCUA A SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401045",
    "display" : "TRASLADOS DESDE I REGION A ANTOFAGASTA O VICEVERSA"
  },
  {
    "code" : "2401046",
    "display" : "TRASLADOS DESDE I REGION A SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401047",
    "display" : "TRASLADOS DESDE II REGION A SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401048",
    "display" : "TRASLADOS DESDE III REGION A SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401049",
    "display" : "TRASLADOS DESDE IV REGION A SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401050",
    "display" : "TRASLADOS DESDE IX REGION A SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401051",
    "display" : "TRASLADOS DESDE VIII REGION A SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401052",
    "display" : "TRASLADOS DESDE X REGION A CONCEPCION O VICEVERSA"
  },
  {
    "code" : "2401053",
    "display" : "TRASLADOS DESDE X REGION A SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401054",
    "display" : "TRASLADOS DESDE XI REGION A CONCEPCION O VICEVERSA"
  },
  {
    "code" : "2401055",
    "display" : "TRASLADOS DESDE XI REGION A PUERTO MONTT O VICEVERSA"
  },
  {
    "code" : "2401056",
    "display" : "TRASLADOS DESDE XI REGION A PUNTA ARENAS O VICEVERSA"
  },
  {
    "code" : "2401057",
    "display" : "TRASLADOS DESDE XI REGION A SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401058",
    "display" : "TRASLADOS DESDE XII REGION A CONCEPCION O VICEVERSA"
  },
  {
    "code" : "2401059",
    "display" : "TRASLADOS DESDE XII REGION A PUERTO MONTT O VICEVERSA"
  },
  {
    "code" : "2401063",
    "display" : "RESCATE MEDICALIZADO Y/O TRASLADO PACIENTE CRITICO EN MOVIL 3"
  },
  {
    "code" : "2401064",
    "display" : "TRASLADO EN AMBULANCIA"
  },
  {
    "code" : "2401065",
    "display" : "RONDA RURAL TERRESTRE, C/ KM RECORRIDO"
  },
  {
    "code" : "2401066",
    "display" : "RONDA RURAL AEREA, C/ HORA DE VUELO"
  },
  {
    "code" : "2401067",
    "display" : "RONDA RURAL MARITIMA, C/ HORA DE NAVEGACION"
  },
  {
    "code" : "2401070",
    "display" : "TRASLADOS EN HELICOPTERO"
  },
  {
    "code" : "2501001",
    "display" : "COLELITIASIS"
  },
  {
    "code" : "2501002",
    "display" : "APENDICITIS"
  },
  {
    "code" : "2501003",
    "display" : "PERITONITIS"
  },
  {
    "code" : "2501004",
    "display" : "HERNIA ABDOMINAL SIMPLE"
  },
  {
    "code" : "2501005",
    "display" : "HERNIA ABDOMINAL COMPLICADA"
  },
  {
    "code" : "2501006",
    "display" : "TUMOR MALIGNO DE ESTOMAGO"
  },
  {
    "code" : "2501007",
    "display" : "ULCERA GASTRICA COMPLICADA"
  },
  {
    "code" : "2501008",
    "display" : "ULCERA DUODENAL COMPLICADA"
  },
  {
    "code" : "2501009",
    "display" : "PARTO (INCLUYE TAMIZAJE AUDITIVO)"
  },
  {
    "code" : "2501010",
    "display" : "EMBARAZO ECTOPICO"
  },
  {
    "code" : "2501011",
    "display" : "EMBARAZO COMPLICADO"
  },
  {
    "code" : "2501012",
    "display" : "ABORTO SIMPLE"
  },
  {
    "code" : "2501013",
    "display" : "ABORTO COMPLICADO"
  },
  {
    "code" : "2501014",
    "display" : "ENFERMEDAD CRONICA DE LAS AMIGDALAS"
  },
  {
    "code" : "2501015",
    "display" : "VEGETACIONES ADENOIDES"
  },
  {
    "code" : "2501016",
    "display" : "HIPERPLASIA DE LA PROSTATA"
  },
  {
    "code" : "2501017",
    "display" : "FIMOSIS"
  },
  {
    "code" : "2501018",
    "display" : "CRIPTORQUIDIA"
  },
  {
    "code" : "2501019",
    "display" : "ICTERICIA DEL RECIEN NACIDO"
  },
  {
    "code" : "2501020",
    "display" : "INFECCION RESPIRATORIA AGUDA"
  },
  {
    "code" : "2501021",
    "display" : "CATARATAS (INCLUYE LENTE INTRAOCULAR)"
  },
  {
    "code" : "2501022",
    "display" : "TRASPLANTE RENAL"
  },
  {
    "code" : "2501023",
    "display" : "CARDIOQUIRURGICO CON CEC MAYOR"
  },
  {
    "code" : "2501024",
    "display" : "CARDIOQUIRURGICO CON CEC MEDIANO"
  },
  {
    "code" : "2501025",
    "display" : "CARDIOQUIRURGICO CON CEC MENOR"
  },
  {
    "code" : "2501026",
    "display" : "PROLAPSO VAGINAL ANTERIOR Y/O POSTERIOR"
  },
  {
    "code" : "2501027",
    "display" : "TUMORES Y/O QUISTES INTRACRANEANOS"
  },
  {
    "code" : "2501028",
    "display" : "ANEURISMAS"
  },
  {
    "code" : "2501029",
    "display" : "DISRAFIA"
  },
  {
    "code" : "2501030",
    "display" : "HERNIA DEL NUCLEO PULPOSO (CERVICAL, DORSAL, LUMBAR)"
  },
  {
    "code" : "2501031",
    "display" : "ACCESO VASCULAR SIMPLE (MEDIANTE FAV) PARA HEMODIALISIS"
  },
  {
    "code" : "2501032",
    "display" : "ACCESO VASCULAR COMPLEJO (MEDIANTE FAV) PARA HEMODIALISIS"
  },
  {
    "code" : "2501125",
    "display" : "EXAMEN ELECTROFISIOLOGICO"
  },
  {
    "code" : "2501200",
    "display" : "VITRECTOMIA"
  },
  {
    "code" : "2504124",
    "display" : "CIERRE DE DUCTOS POR COILS"
  },
  {
    "code" : "2601001",
    "display" : "ATENCIONES INTEGRALES DE ENFERMERIA EN CENTRO ADULTO MAYOR(3 SESIONES DE 45)(SOLO PARA MAYORES DE 55 ANOS)"
  },
  {
    "code" : "2601002",
    "display" : "ATENCION INTEGRAL DE ENFERMERIA EN DOMICILIO (ATENCIONMINIMA DE 45)(SOLO PARA MAYORES DE 55 ANOS)"
  },
  {
    "code" : "2601003",
    "display" : "ATENCION INTEGRAL DE ENFERMERIA EN DOMICILIO A PACIENTESPOSTRADOS, TERMINALES POST OPERADOS"
  },
  {
    "code" : "2701001",
    "display" : "APLICACION DE SELLANTES"
  },
  {
    "code" : "2701002",
    "display" : "DESGASTES SELECTIVOS"
  },
  {
    "code" : "2701003",
    "display" : "DESTARTRAJE Y PULIDO DE CORONA"
  },
  {
    "code" : "2701004",
    "display" : "EDUCACION GRUPAL"
  },
  {
    "code" : "2701005",
    "display" : "EXODONCIA PERMANENTE"
  },
  {
    "code" : "2701006",
    "display" : "EXODONCIA TEMPORAL"
  },
  {
    "code" : "2701007",
    "display" : "FLUORACION TOPICA"
  },
  {
    "code" : "2701008",
    "display" : "MANTENEDORES DE ESPACIO"
  },
  {
    "code" : "2701009",
    "display" : "OBTURACION AMALGAMA Y SILICATO"
  },
  {
    "code" : "2701010",
    "display" : "OBTURACION COMPOSITE"
  },
  {
    "code" : "2701011",
    "display" : "PULPOTOMIA"
  },
  {
    "code" : "2701012",
    "display" : "URGENCIAS"
  },
  {
    "code" : "2701013",
    "display" : "EXAMEN DE SALUD ORAL"
  },
  {
    "code" : "2701014",
    "display" : "TRABAJO COMUNITARIO"
  },
  {
    "code" : "2701015",
    "display" : "RADIOGRAFIA RETROALVEOLAR Y BITE-WING (POR PLACA)"
  },
  {
    "code" : "2701016",
    "display" : "OBTURACION VIDRIO IONOMERO"
  },
  {
    "code" : "2702001",
    "display" : "CIRUGIA BUCAL"
  },
  {
    "code" : "2702002",
    "display" : "ENDODONCIA BI O MULTIRRADICULAR"
  },
  {
    "code" : "2702003",
    "display" : "ENDODONCIA UNIRRADICULAR"
  },
  {
    "code" : "2702004",
    "display" : "OBTURACION INLAY METAL (INCLUYE MATERIALES NO PRECIOSOS, NO INCLUYE ORO)"
  },
  {
    "code" : "2702005",
    "display" : "PERIODONCIA, CONSULTA"
  },
  {
    "code" : "2702006",
    "display" : "PLANO ALIVIO OCLUSAL"
  },
  {
    "code" : "2702007",
    "display" : "PROTESIS DE RESTITUCION (FASE CLINICA)"
  },
  {
    "code" : "2702008",
    "display" : "PROTESIS METALICA"
  },
  {
    "code" : "2702009",
    "display" : "RADIOGRAFIA EXTRAORAL (POR PLACA)"
  },
  {
    "code" : "2702010",
    "display" : "RADIOGRAFIA OCLUSAL (POR PLACA)"
  },
  {
    "code" : "2702011",
    "display" : "PROTESIS DE RESTITUCION (FASE LABORATORIO)"
  },
  {
    "code" : "2702012",
    "display" : "REPARACION COMPUESTA DE PROTESIS"
  },
  {
    "code" : "2702013",
    "display" : "REPARACION CORONA"
  },
  {
    "code" : "2702014",
    "display" : "REPARACION O REAJUSTE PROTESIS"
  },
  {
    "code" : "2702015",
    "display" : "RESTITUCION POR CORONA (COMBINADA)"
  },
  {
    "code" : "2702016",
    "display" : "RESTITUCION POR CORONA PROVISORIA"
  },
  {
    "code" : "2702017",
    "display" : "SIALOGRAFIA (CADA LADO) (INCLUYE EL PROC.)"
  },
  {
    "code" : "2702018",
    "display" : "TRATAMIENTO ORTODONCIA (INCLUYE APARATO)"
  },
  {
    "code" : "2703001",
    "display" : "CIRUGIA DE ENFERMEDAD PERIODONTAL (POR GRUPO)"
  },
  {
    "code" : "2703002",
    "display" : "CORTICOTOMIA"
  },
  {
    "code" : "2703003",
    "display" : "DISYUNCION PALATINA QUIRURGICA"
  },
  {
    "code" : "2703004",
    "display" : "EXTIRPACION DE PSEUDOQUISTES, QUISTES Y TUMORES"
  },
  {
    "code" : "2703005",
    "display" : "GLOSECTOMIAS"
  },
  {
    "code" : "2703006",
    "display" : "IMPLANTE ENDODONTICO INTRAOSEO"
  },
  {
    "code" : "2703007",
    "display" : "IMPLANTES SUBPERIOSTICOS"
  },
  {
    "code" : "2703008",
    "display" : "INCLUSIONES DENTARIAS"
  },
  {
    "code" : "2703009",
    "display" : "INJERTOS EN BOCA"
  },
  {
    "code" : "2703010",
    "display" : "INTERVENCIONES QUIRURGICAS EN EL SENO MAXILAR"
  },
  {
    "code" : "2703011",
    "display" : "PLASTIA DE FISTULA SALIVAL"
  },
  {
    "code" : "2703012",
    "display" : "PREPARACION QUIRURGICA DE LOS MAXILARES CON FINES PROTESICOS"
  },
  {
    "code" : "2703013",
    "display" : "PROFUNDIZACION DE VESTIBULO O RECONSTRUCCION DE REBORDES, CON O SIN INJERTO"
  },
  {
    "code" : "1707012",
    "display" : "DISTENSIBILIDAD PULMONAR, (COMPLIANCE), ESTUDIO DE"
  },
  {
    "code" : "1707013",
    "display" : "MEDICION DE PRESION DE OCLUSION"
  },
  {
    "code" : "1707014",
    "display" : "MEDICION DE PRESION INSPIRATORIA MAXIMA (PROC. AUT.)"
  },
  {
    "code" : "1707015",
    "display" : "MEDICION DE PRESION TRANS-DIAFRAGMATICA"
  },
  {
    "code" : "1707016",
    "display" : "REGISTRO FLUJOMETRICO, POR SEMANA"
  },
  {
    "code" : "1707017",
    "display" : "RESPUESTA RESPIRATORIA AL CO2"
  },
  {
    "code" : "1707018",
    "display" : "TIEMPO DE TOLERANCIA A LA FATIGA RESPIRATORIA"
  },
  {
    "code" : "1707019",
    "display" : "VENTILACION ALVEOLAR, ESTUDIO DE (INCLUYE VENTILACION MINUTOY ALVEOLAR, VOLUMEN DEL ESPACIO MUERTO Y CUOCIENTE RESP.)"
  },
  {
    "code" : "1707020",
    "display" : "VOLUMEN RESIDUAL, ESTUDIO DE MEDICION DE VOLUMENES Y CAPACI-DADES PULMONARES(INCLUYE VOLUMEN RESIDUAL Y CAPACIDAD VITAL)"
  },
  {
    "code" : "1707021",
    "display" : "LARIGOTRAQUEOSCOPIA CON FIBROSCOPIO"
  },
  {
    "code" : "1707022",
    "display" : "LARIGOTRAQUEOSCOPIA CON TUBO RIGIDO"
  },
  {
    "code" : "1707023",
    "display" : "MEDIASTINOSCOPIA C/S BIOPSIA"
  },
  {
    "code" : "1707024",
    "display" : "PLEUROSCOPIA (TORACOSCOPIA) C/S BIOPSIA"
  },
  {
    "code" : "1707025",
    "display" : "PROCEDIMIENTO PARA DETERMINAR GASOMETRIA ARTERIAL EN REPOSOY EJERCICIO (ADEMAS 2 CODIGOS 03-02-046)."
  },
  {
    "code" : "1707026",
    "display" : "PROCEDIMIENTO PARA DETERMINAR GASOMETRIA ARTERIAL RESPIRANDOO2 PURO (INCLUYE EL OXIGENO, A.C. 03-02-046)"
  },
  {
    "code" : "1707027",
    "display" : "BRONCOASPIRACION, C/S LAVADO Y/O COLOCACION DE MEDICAMENTOSPOR SONDA TRAQUEOBRONQUIAL (PROC. AUT.)"
  },
  {
    "code" : "1707029",
    "display" : "TORACOCENTESIS EVACUADORA,C/S TOMA DE MUESTRASC/S INYECCION DE MEDICAMENTOS"
  },
  {
    "code" : "1703161",
    "display" : "CEC INTERVENCION DE URGENCIA"
  },
  {
    "code" : "1707030",
    "display" : "AEROSOLTERAPIA CON AIRE COMPRIMIDO Y OXIGENO (EN ATENCIONCERRADA, INCLUIDA EN VALOR DIA CAMA)"
  },
  {
    "code" : "1707032",
    "display" : "BIOPSIA PLEURAL (CON AGUJA)"
  },
  {
    "code" : "1707033",
    "display" : "BIOPSIA PULMONAR (CON AGUJA) NO INCLUYE LA RADIOLOGIA"
  },
  {
    "code" : "1707034",
    "display" : "CUERPO EXTRANO DE BRONQUIO, EXTRACCION POR VIAENDOSCOPICA (INCLUYE LA ENDOSCOPIA)"
  },
  {
    "code" : "1707035",
    "display" : "INMUNOTERAPIA POR BCG"
  },
  {
    "code" : "1707036",
    "display" : "INMUNOTERAPIA POR SESION (INCLUYE EL TRATAMIENTO DEREACCIONES ADVERSAS Y EL VALOR DE LOS ANTIGENOS)"
  },
  {
    "code" : "1707037",
    "display" : "INTUBACION TRAQUEAL (PROC. AUT.)"
  },
  {
    "code" : "1707038",
    "display" : "MONITOREO O ESTUDIO DE APNEA DURANTE EL SUENO."
  },
  {
    "code" : "1707050",
    "display" : "PROVOCACION BRONQUIAL CON HISTAMINA Y/O METACOLINAABREVIADA, TRES DILUCIONES PARA REACTIVIDAD BRONQUIAL (IN -CLUYE ESPIROMETRIA BASAL Y TRATAMIENTO DE EFECTOS ADVERSOS)."
  },
  {
    "code" : "1707051",
    "display" : "CURVA DOSIS RESPUESTA A BRONCODILATADORES."
  },
  {
    "code" : "1707052",
    "display" : "MONITORIZACION SATURACION DE O2 DURANTE EL SUENO."
  },
  {
    "code" : "1707053",
    "display" : "MONITORIZACION SATURACION DE O2 DURANTE EL SUENO CON PRE -SION POSITIVA CONTINUA NASAL."
  },
  {
    "code" : "1707054",
    "display" : "SATURACION DE O2 EN REPOSO Y/O EJERCICIO (CON OXIMETRO)( EN ATENCION CERRADA, INCLUIDA EN VALOR DIA CAMA )"
  },
  {
    "code" : "1707055",
    "display" : "SATURACION DE O2 EN REPOSO Y/O EJERCICIO Y/O O2 100% (CONOXIMETRO)(EN ATENCION CERRADA, INCLUIDA EN VALOR DIA CAMA )"
  },
  {
    "code" : "1801001",
    "display" : "GASTRODUODENOSCOPIA (INCLUYE ESOFAGOSCOPIA)"
  },
  {
    "code" : "1801002",
    "display" : "ESOFAGOSCOPIA"
  },
  {
    "code" : "1801003",
    "display" : "ENDOSCOPIAS POR VIA ORAL C/S BIOPSIAS YEYUNO-ILEOSCOPIA (INCLUYE ESOFAGO-GASTRO-DUODENOSCOPIA)"
  },
  {
    "code" : "1801004",
    "display" : "ANO-RECTO-SIGMOIDOSCOPIA EN ADULTOS"
  },
  {
    "code" : "1801005",
    "display" : "ANO-RECTO-SIGMOIDESCOPIA EN NINOS (ADEMAS ANESTESIA COD.22-01-001 SI CORRESPONDE)"
  },
  {
    "code" : "1801006",
    "display" : "COLONOSCOPIA LARGA (INCLUYE SIGMOIDOSCOPIA Y COLONOSCOPIA IZQUIERDA)"
  },
  {
    "code" : "1801007",
    "display" : "SIGMOIDOSCOPIA Y COLONOSCOPIA IZQUIERDA CON TUBO FLEXIBLE(INCLUYE LA ANO-RECTO-SIGMOIDOSCOPIA)"
  },
  {
    "code" : "1801008",
    "display" : "COLEDOCOSCOPIA INTRAOPERATORIA C/S EXTRACCION DE CALCULOS"
  },
  {
    "code" : "1801009",
    "display" : "PERITONEOSCOPIA TRANSPARIETAL (INCLUYE EL NEUMOPERITONEO)"
  },
  {
    "code" : "1801010",
    "display" : "BERNSTEIN, TEST DE"
  },
  {
    "code" : "1801011",
    "display" : "MANOMETRIA ESOFAGICA"
  },
  {
    "code" : "1801012",
    "display" : "REFLUJO ACIDO, TEST DE (GROSSMAN O SIMILAR) O REFLUJOALCALINO, TEST DE"
  },
  {
    "code" : "1801013",
    "display" : "SONDEO GASTRICO CON ESTIMULACION DE INSULINA (HOLLANDER)"
  },
  {
    "code" : "1801014",
    "display" : "VACIAMIENTO GASTRICO, TEST DE (GOLDSTEIN O SIMILAR)"
  },
  {
    "code" : "1801015",
    "display" : "BIOPSIA DE INTESTINO DELGADO, POR CAPSULA (DE RUBIN,CROSBY OSIM.)"
  },
  {
    "code" : "1801016",
    "display" : "PUNCION BIOPSIA TRANSPARIETAL DE ORGANOS ABDOMINALES C/U"
  },
  {
    "code" : "1801017",
    "display" : "COLANGIOGRAFIA POR PUNCION TRANSPARIETOHEPATICA (A.C.04-02-007)"
  },
  {
    "code" : "1801018",
    "display" : "COLANGIOPANCREATOGRAFIA RETROGRADA, POR INTUBACION ENDOS-COPICA DE LA AMPOLLA DE VATER (INCLUYE LA ENDOSCOPIA) (A.C.04-02-008)"
  },
  {
    "code" : "1801019",
    "display" : "DRENAJE DE LA VIA BILIAR TRANSHEPATICA Y/O PERCUTANEO (A.C.04-01-015)"
  },
  {
    "code" : "1801020",
    "display" : "FISTULOGRAFIA (A.C. 04-02-009)"
  },
  {
    "code" : "1801021",
    "display" : "NEUMOPERITONEO POR PUNCION TRANSPARIETAL"
  },
  {
    "code" : "1801022",
    "display" : "INTUBACION SONDA DE SENGSTAKEN"
  },
  {
    "code" : "1801023",
    "display" : "INTUBACION CON SONDA GASTRICA"
  },
  {
    "code" : "1801024",
    "display" : "INTUBACION CON SONDA DE MILLER-ABBOT O DE ALIMENTACIONENTERAL"
  },
  {
    "code" : "1801025",
    "display" : "DILATACION ESSOFAGICA POR BALON NEUMATICO (DE MOSHER OSIMILAR)"
  },
  {
    "code" : "1801026",
    "display" : "DILATACION ESOFAGICA POR BUJIA DE HG (HURST O SIMILAR)"
  },
  {
    "code" : "1801027",
    "display" : "COLOCACION ENDOSCOPICA DE TUBO TRANSTUMORAL EN VIA BILIAR(NO INCLUYE TUBO TRANSTUMORAL; INCLUYE PAPILOTOMIA)"
  },
  {
    "code" : "1801028",
    "display" : "CUERPO EXTRANO DE ESOFAGO Y/O ESTOMAGO, EXTRACCIONENDOSCOPICA (INCLUYE LA ENDOSCOPIA)"
  },
  {
    "code" : "1801029",
    "display" : "DEVOLVULACION DEL SIGMOIDES POR ENDOSCOPIA (INCLUYEANO-RECTO-SIGMOIDOSCOPIA) (PROC. AUT.)"
  },
  {
    "code" : "1801030",
    "display" : "DILATACION ANO-RECTAL, POR SESION"
  },
  {
    "code" : "1801031",
    "display" : "POLIPOS DE ESOFAGO Y/O ESTOMAGO O INTESTINO DELGADO,CUALQUIER TECNICA (INCLUYE ENDOSCOPIA), POR SESION."
  },
  {
    "code" : "1801032",
    "display" : "ESCLEROTERAPIA DE HEMORROIDES, CUALQUIER NUMERO (INCLUYEANO-RECTO-SIGMOIDOSCOPIA)."
  },
  {
    "code" : "4102015",
    "display" : "ESTAB. RECREACIONALES, FISICO QUIMICO"
  },
  {
    "code" : "4103001",
    "display" : "BIOGAS"
  },
  {
    "code" : "4103002",
    "display" : "RUIDOS EN LOCALES DE USO PUBLICO"
  },
  {
    "code" : "4104001",
    "display" : "MATERIAS DE SANEAMIENTO BASICO"
  },
  {
    "code" : "4104002",
    "display" : "MATERIAS DE LOCALES DE USO PUBLICO"
  },
  {
    "code" : "4201001",
    "display" : "ESTABLECIMIENTOS 1.1ALTA PRODUCCION"
  },
  {
    "code" : "4201002",
    "display" : "ESTABLECIMIENTOS 1.1BAJA PRODUCCION"
  },
  {
    "code" : "4201003",
    "display" : "ESTABLECIMIENTOS 1.2ALTA PRODUCCION"
  },
  {
    "code" : "4201004",
    "display" : "ESTABLECIMIENTOS 1.2BAJA PRODUCCION"
  },
  {
    "code" : "4201005",
    "display" : "ESTABLECIMIENTOS 1.3ALTA PRODUCCION"
  },
  {
    "code" : "4201006",
    "display" : "ESTABLECIMIENTOS 1.3BAJA PRODUCCION"
  },
  {
    "code" : "4201007",
    "display" : "ESTABLECIMIENTOS 1.4"
  },
  {
    "code" : "4201008",
    "display" : "VEHICULOS DE TRANSPORTE DE ALIMENTOS"
  },
  {
    "code" : "4201009",
    "display" : "PREDIOS AGRICOLAS"
  },
  {
    "code" : "4201010",
    "display" : "TERMINAL PESQUERO"
  },
  {
    "code" : "4201011",
    "display" : "VERIFICACION Y/O DESNATURALIZACION DE ALIMENTOS"
  },
  {
    "code" : "4201012",
    "display" : "DESEMBARQUE DE PRODUCTOS DEL MAR"
  },
  {
    "code" : "4201013",
    "display" : "CONTROL DEL TRANSPORTE DE PRODUCTOS DEL MAR"
  },
  {
    "code" : "4201014",
    "display" : "TRANSPORTE DE PERSONAS CON SERVICIO DE ALIMENTACION"
  },
  {
    "code" : "4201015",
    "display" : "FERIAS LIBRES"
  },
  {
    "code" : "4201016",
    "display" : "CONTROL DE AMBULANTES"
  },
  {
    "code" : "4201017",
    "display" : "SISTEMA ANALISIS DE RIESGO Y PUNTOS CRITICOS DE CONTROL"
  },
  {
    "code" : "4201018",
    "display" : "INVESTIGACION DE INTOXICACIONES ALIMENTARIAS"
  },
  {
    "code" : "4201019",
    "display" : "INVESTIGACION DE BROTES DE ENFERM. ENTERICAS"
  },
  {
    "code" : "4202001",
    "display" : "ESTABLECIMIENTOS 1.1"
  },
  {
    "code" : "4202002",
    "display" : "ESTABLECIMIENTOS 1.2"
  },
  {
    "code" : "4202003",
    "display" : "ESTABLECIMIENTOS 1.3"
  },
  {
    "code" : "4202004",
    "display" : "ESTABLECIMIENTOS 1.4"
  },
  {
    "code" : "4202005",
    "display" : "VEHICULOS DE TRANSPORTE DE ALIMENTOS"
  },
  {
    "code" : "4202006",
    "display" : "PREDIOS AGRICOLAS"
  },
  {
    "code" : "4202007",
    "display" : "TERMINAL PESQUERO"
  },
  {
    "code" : "4202008",
    "display" : "DESEMBARQUE DE PRODUCTOS DEL MAR"
  },
  {
    "code" : "4202009",
    "display" : "CONTROL DEL TRANSPORTE DE PRODUCTOS DEL MAR"
  },
  {
    "code" : "4202010",
    "display" : "TRANSPORTE DE PERSONAS CON SERVICIO DE ALIMENTACION"
  },
  {
    "code" : "4202011",
    "display" : "FERIAS LIBRES"
  },
  {
    "code" : "4202012",
    "display" : "CONTROL DE AMBULANTES"
  },
  {
    "code" : "4202013",
    "display" : "SISTEMA ANALISIS DE RIESGO Y PUNTOS CRITICOS DE CONTROL"
  },
  {
    "code" : "4202014",
    "display" : "INVESTIGACION DE INTOXICACIONES ALIMENTARIAS"
  },
  {
    "code" : "4202015",
    "display" : "INVESTIGACION DE BROTES DE ENFERM. ENTERICAS"
  },
  {
    "code" : "4203001",
    "display" : "ESTABLECIMIENTOS 1.1"
  },
  {
    "code" : "4203002",
    "display" : "ESTABLECIMIENTOS 1.2"
  },
  {
    "code" : "4203003",
    "display" : "ESTABLECIMIENTOS 1.3"
  },
  {
    "code" : "4203004",
    "display" : "ESTABLECIMIENTOS 1.4"
  },
  {
    "code" : "4203006",
    "display" : "PREDIOS AGRICOLAS"
  },
  {
    "code" : "4203007",
    "display" : "FERIAS LIBRES (CARROS-PUESTOS)"
  },
  {
    "code" : "4203008",
    "display" : "VENDEDORES AMBULANTES"
  },
  {
    "code" : "4301001",
    "display" : "GRAN EMPRESA ALTO RIESGO"
  },
  {
    "code" : "4301002",
    "display" : "GRAN EMPRESA MEDIANO RIESGO"
  },
  {
    "code" : "4301003",
    "display" : "GRAN EMPRESA BAJO RIESGO"
  },
  {
    "code" : "4301004",
    "display" : "MEDIANA EMPRESA ALTO RIESGO"
  },
  {
    "code" : "4301005",
    "display" : "MEDIANA EMPRESA MEDIANO RIESGO"
  },
  {
    "code" : "4301006",
    "display" : "MEDIANA EMPRESA BAJO RIESGO"
  },
  {
    "code" : "4301007",
    "display" : "PEQUEÑA EMPRESA ALTO RIESGO"
  },
  {
    "code" : "4301008",
    "display" : "PEQUEÑA EMPRESA MEDIANO RIESGO"
  },
  {
    "code" : "4301009",
    "display" : "PEQUEÑA EMPRESA BAJO RIESGO"
  },
  {
    "code" : "4301010",
    "display" : "MICRO EMPRESA ALTO RIESGO"
  },
  {
    "code" : "4301011",
    "display" : "MICRO EMPRESA MEDIANO RIESGO"
  },
  {
    "code" : "4301012",
    "display" : "MICRO EMPRESA BAJO RIESGO"
  },
  {
    "code" : "4301013",
    "display" : "INVESTIGACION DE ACCIDENTE DEL TRABAJO"
  },
  {
    "code" : "4301014",
    "display" : "INVESTIGACION DE ENFERMEDAD PROFESIONAL"
  },
  {
    "code" : "4301015",
    "display" : "DEPARTAMENTO DE PREVENCION DE RIESGO"
  },
  {
    "code" : "4301016",
    "display" : "COMITE PARITARIO"
  },
  {
    "code" : "4301017",
    "display" : "ORGANISMOS ADMINISTRADORES DE LEY 16.744"
  },
  {
    "code" : "4301018",
    "display" : "PLAN Y PROGRAMA EMPRESAS INP"
  },
  {
    "code" : "4301019",
    "display" : "VISITA FALLIDA DE INSPECCION"
  },
  {
    "code" : "4302001",
    "display" : "CALDERA/ GENERADOR DE VAPOR ALTA PRESION"
  },
  {
    "code" : "4302002",
    "display" : "CALDERA/ GENERADOR DE VAPOR MEDIANA PRESION"
  },
  {
    "code" : "4101011",
    "display" : "RESIDUOS SOLIDOS DOMICILIARIOS, DISPOSICION FINAL"
  },
  {
    "code" : "4302003",
    "display" : "CALDERA/ GENERADOR DE VAPOR BAJA PRESION"
  },
  {
    "code" : "4302004",
    "display" : "AUTOCLAVES"
  },
  {
    "code" : "4302005",
    "display" : "GENERADORES DE RADIACIONES IONIZANTES"
  },
  {
    "code" : "4302006",
    "display" : "FUENTES DE RADIACIONES IONIZANTES"
  },
  {
    "code" : "4302007",
    "display" : "CAMARAS DE BROMURO DE METILO"
  },
  {
    "code" : "4302008",
    "display" : "CAMARAS DE ANHIDRIDO SULFUROSO"
  },
  {
    "code" : "4302009",
    "display" : "EQUIPOS DE OXIDO DE ETILENO"
  },
  {
    "code" : "4302010",
    "display" : "OTROS"
  },
  {
    "code" : "4303001",
    "display" : "CONTROL DE SALUD DEL TRABAJADOR"
  },
  {
    "code" : "4303002",
    "display" : "EVALUACION DE PUESTO DE TRABAJO"
  },
  {
    "code" : "4303003",
    "display" : "EVALUACION MEDICO LEGAL"
  },
  {
    "code" : "4303004",
    "display" : "CALIFICACION DE TRABAJO PESADO"
  },
  {
    "code" : "4303005",
    "display" : "CONTROL DE MORBILIDAD OCUPACIONAL"
  },
  {
    "code" : "4304001",
    "display" : "AMBIENTAL POR RIESGO QUIMICO"
  },
  {
    "code" : "4304002",
    "display" : "AMBIENTAL POR RIESGO FISICO"
  },
  {
    "code" : "4304003",
    "display" : "AMBIENTAL POR RIESGO BIOLOGICO"
  },
  {
    "code" : "4304007",
    "display" : "MUESTREO LEGAL"
  },
  {
    "code" : "4304008",
    "display" : "BIOLOGICA POR RIESGO QUIMICO"
  },
  {
    "code" : "4304009",
    "display" : "BIOLOGICA POR RIESGO FISICO"
  },
  {
    "code" : "4304010",
    "display" : "BIOLOGICA POR RIESGO BIOLOGICO"
  },
  {
    "code" : "4305001",
    "display" : "EDUCACION FORMAL EN SALUD OCUPACIONAL"
  },
  {
    "code" : "4305004",
    "display" : "REGLAMENTO INTERNO DE HIGIENE Y SEGURIDAD"
  },
  {
    "code" : "4305005",
    "display" : "CONSEJERIA EN SALUD OCUPACIONAL"
  },
  {
    "code" : "4306001",
    "display" : "AUDIOMETRIA EN CAMARA SILENTE"
  },
  {
    "code" : "4306002",
    "display" : "ELECTROMIOGRAFIA ESTUDIO SUEDES"
  },
  {
    "code" : "4306003",
    "display" : "ESPIROMETRIA"
  },
  {
    "code" : "4502002",
    "display" : "MUESTREO ISOCINETICO Y/O GASES DE PROCESO EN PROCESOS INDUSTRIALES, CALDERA Y HORNOS A.R."
  },
  {
    "code" : "4502003",
    "display" : "MUESTREO ISOCINETICO Y/O GASES DE PROCESOS EN PROCESOS INDUSTRIALES, CALDERAS Y HORNOS M.B.R."
  },
  {
    "code" : "4502004",
    "display" : "MUESTREOS ISOCINETICOS Y/O DE FUENTE EMISORA DE REFERENCIA"
  },
  {
    "code" : "4502005",
    "display" : "MUESTREO AUDITORIA A LABORATORIOS DE REFERENCIA"
  },
  {
    "code" : "4502006",
    "display" : "MUESTREO DE RUIDOS AMBIENTALES"
  },
  {
    "code" : "4502007",
    "display" : "MUESTREO DE RUIDOS LIQUIDOS INDUSTRIALES"
  },
  {
    "code" : "4502008",
    "display" : "MUESTREO DE MATERIAS PRIMAS O PRODUCTOS"
  },
  {
    "code" : "4502009",
    "display" : "MUESTREO RESIDUOS SOLIDOS PELIGROSOS"
  },
  {
    "code" : "4502010",
    "display" : "MUESTREO RESIDUOS SOLIDOS REACTIVOS Y RIESGOSOS"
  },
  {
    "code" : "4502011",
    "display" : "MUESTREO RESIDUOS SOLIDOS INTERTES"
  },
  {
    "code" : "4502012",
    "display" : "MUESTREO RESIDUOS INDUSTRIALES LIQUIDOS FISICO-QUIMICO"
  },
  {
    "code" : "4502013",
    "display" : "MUESTREO RESIDUOS INDUSTRIALES LIQUIDOS BACTERIOLOGICO"
  },
  {
    "code" : "4502014",
    "display" : "AMBIENTAL POR RIESGO FISICO EN LA COMUNIDAD"
  },
  {
    "code" : "4502015",
    "display" : "AMBIENTAL POR RIESGO QUIMICO EN LA COMUNIDAD"
  },
  {
    "code" : "4502016",
    "display" : "AMBIENTAL POR ACCIDENTE TECNOLOGICO QUIMICO"
  },
  {
    "code" : "4503001",
    "display" : "MATERIAS DE CONTAMINACION ATMOSFERICA"
  },
  {
    "code" : "4503002",
    "display" : "MATERIAS DE RESIDUOS INDUSTRIALES SOLIDOS"
  },
  {
    "code" : "4503003",
    "display" : "MATERIAS DE RESIDUOS INDUSTRIALES LIQUIDOS"
  },
  {
    "code" : "4503004",
    "display" : "MATERIAS DE RUIDO AMBIENTAL"
  },
  {
    "code" : "4601001",
    "display" : "CONTAMINANTES ATMOSFERICOS GASES CONTINUOS"
  },
  {
    "code" : "4601002",
    "display" : "CONTAMINANTES ATMOSFERICOS TEOM 10 CONTINUO"
  },
  {
    "code" : "4601003",
    "display" : "VARIABLES METEOROLOGICAS"
  },
  {
    "code" : "4601004",
    "display" : "CONTAMINANTES ATMOSFERICOS PARTICULAS NO CONTINUAS"
  },
  {
    "code" : "4601005",
    "display" : "CONTAMINANTES ATMOSFERICOS, GASES NO CONTINUOS"
  },
  {
    "code" : "4701001",
    "display" : "RECUENTO Y DETERMINACION CUALITATIVA COLIFORMES FECALES"
  },
  {
    "code" : "4701002",
    "display" : "RECUENTO DE COLIFORMES TOTALES"
  },
  {
    "code" : "4701003",
    "display" : "CONTROL DE ESTERILIDAD EN CONSERVAS"
  },
  {
    "code" : "4701004",
    "display" : "DETECCION DE ESPORAS"
  },
  {
    "code" : "4701005",
    "display" : "RECUENTO DE MOHOS Y LEVADURAS"
  },
  {
    "code" : "4701006",
    "display" : "RECUENTO DE STAPHYLOCOCCUS AUREUS"
  },
  {
    "code" : "4701007",
    "display" : "RECUENTO MICROORGANISMOS AEROBIOS MESOFILOS"
  },
  {
    "code" : "4701008",
    "display" : "DETECCION DE SALMONELLA"
  },
  {
    "code" : "4701009",
    "display" : "DETECCION DE VIBRIO CHOLERAE"
  },
  {
    "code" : "4701010",
    "display" : "RECUENTO DE BACILLUS CEREUS"
  },
  {
    "code" : "4701011",
    "display" : "RECUENTO DE CLOSDRIDIUM PERFRINGENS"
  },
  {
    "code" : "4701012",
    "display" : "DETECCION DE PARASITOS"
  },
  {
    "code" : "4701013",
    "display" : "ACIDEZ"
  },
  {
    "code" : "4701014",
    "display" : "ACIDO LINOLEICO"
  },
  {
    "code" : "4701015",
    "display" : "ACIDO OLEICO"
  },
  {
    "code" : "4701016",
    "display" : "AFLATOXINAS (C/U)"
  },
  {
    "code" : "4701017",
    "display" : "AGUA"
  },
  {
    "code" : "4701018",
    "display" : "SUSTANCIAS AMILACEAS"
  },
  {
    "code" : "4701019",
    "display" : "ACIDO BENZOICO"
  },
  {
    "code" : "4701020",
    "display" : "BROMATO DE POTASIO"
  },
  {
    "code" : "1902030",
    "display" : "CISTORRAFIA, PROC. COMPLETO"
  },
  {
    "code" : "4701025",
    "display" : "CLORURO DE SODIO"
  },
  {
    "code" : "4701026",
    "display" : "CLORUROS"
  },
  {
    "code" : "4701027",
    "display" : "COLESTEROL"
  },
  {
    "code" : "4701028",
    "display" : "CREATININA"
  },
  {
    "code" : "4701029",
    "display" : "CUANTIFICACION DE BLANQUEADORES"
  },
  {
    "code" : "4701030",
    "display" : "CUANTIFICACION DE CONSERVANTES"
  },
  {
    "code" : "4701031",
    "display" : "CUANTIFICACION DE EDULCORANTES"
  },
  {
    "code" : "4701032",
    "display" : "CUANTIFICACION DE ANTIOXIDANTES"
  },
  {
    "code" : "4701033",
    "display" : "DETECCION DE CUERPOS EXTRAÑOS"
  },
  {
    "code" : "4701034",
    "display" : "DETERMINACION DE ESPECIE"
  },
  {
    "code" : "4701035",
    "display" : "IDENTIFICACION DE ESPESANTES"
  },
  {
    "code" : "4701036",
    "display" : "EXTRACTO ACUOSO"
  },
  {
    "code" : "4701037",
    "display" : "FIBRA CRUDA"
  },
  {
    "code" : "4306004",
    "display" : "TEST DE PROVOCACION BRONQUIAL"
  },
  {
    "code" : "4306005",
    "display" : "TEST DE METACOLINA ESTUDIO ASMA OCUPACIONAL"
  },
  {
    "code" : "4306006",
    "display" : "TEST DE PARCHE ESTUDIO DEMATOSIS OCUPACIONAL"
  },
  {
    "code" : "4306007",
    "display" : "SEROLOGIA PARA ANTIGENOS LABORALES"
  },
  {
    "code" : "4306008",
    "display" : "VELOCIDAD DE CONDUCCION"
  },
  {
    "code" : "4306009",
    "display" : "SEGUIMIENTO FLUJOMETRICO"
  },
  {
    "code" : "4401001",
    "display" : "OBSERVACION DE ANIMALES MORDEDORES"
  },
  {
    "code" : "4401002",
    "display" : "PRESENCIA DE PERROS VAGOS"
  },
  {
    "code" : "4401003",
    "display" : "ABANDONO DE PROGRAMA DE VACUNACION"
  },
  {
    "code" : "4401004",
    "display" : "INVESTIGACION EPIDEMIOLOGICA DE FOCOS DE RABIA"
  },
  {
    "code" : "4401005",
    "display" : "INSPECCION DE COLONIAS DE MURCIELAGOS"
  },
  {
    "code" : "4401006",
    "display" : "IDENTIFICACION DE VIVIENDAS CHAGASICAS"
  },
  {
    "code" : "4401007",
    "display" : "VIGILANCIA ENTOMOLOGICA"
  },
  {
    "code" : "4401008",
    "display" : "DENUNCIAS DE FAENAMIENTO CLANDESTINO DE ANIMALES DE ABASTO"
  },
  {
    "code" : "4402001",
    "display" : "PESQUISA DE VIRUS RABICO EN MAMIFEROS DOMESTICOS"
  },
  {
    "code" : "4402002",
    "display" : "PESQUISA DE VIRUS RABICO EN MAMIFEROS SILVESTRES"
  },
  {
    "code" : "4403001",
    "display" : "RABIA INSTITUCIONES COMUNITARIAS"
  },
  {
    "code" : "4403002",
    "display" : "CHAGAS INSTITUCIONES COMUNITARIAS"
  },
  {
    "code" : "4403003",
    "display" : "CHAGAS VIVIENDAS"
  },
  {
    "code" : "4404001",
    "display" : "ELIMINACION DE ANIMALES DOMESTICOS"
  },
  {
    "code" : "4404002",
    "display" : "CAPTURA DE MAMIFEROS DOMESTICOS"
  },
  {
    "code" : "4404003",
    "display" : "ENTREGA VOLUNTARIA DE ANIMALES DOMESTICOS"
  },
  {
    "code" : "4404004",
    "display" : "ESTERILIZACION"
  },
  {
    "code" : "4404005",
    "display" : "ELIMINACION DE COLONIAS DE MURCIELAGOS"
  },
  {
    "code" : "4405001",
    "display" : "TRIATOMINOS"
  },
  {
    "code" : "4406001",
    "display" : "CONTROL PERIFOCO"
  },
  {
    "code" : "4406002",
    "display" : "DEMANDA DE LA COMUNIDAD"
  },
  {
    "code" : "4501001",
    "display" : "CALDERAS Y HORNOS ALTO RIESGO"
  },
  {
    "code" : "4501002",
    "display" : "CALDERAS Y HORNOS MADIANO RIESGO"
  },
  {
    "code" : "4501003",
    "display" : "CALDERAS Y HORNOS BAJO RIESGO"
  },
  {
    "code" : "4501004",
    "display" : "PROCESOS INDUSTRIALES ALTO RIESGO"
  },
  {
    "code" : "4501005",
    "display" : "PROCESOS INDUSTRIALES MEDIANO RIESGO"
  },
  {
    "code" : "4501006",
    "display" : "PROCESOS INDUSTRIALES BAJO RIESGO"
  },
  {
    "code" : "4501007",
    "display" : "PANADERIAS HORNOS A LEÑA"
  },
  {
    "code" : "4501008",
    "display" : "HORNOS PANADERIAS A PETROLEO Y OTROS"
  },
  {
    "code" : "4501009",
    "display" : "AUDITORIA MUESTREO ISOCINETICO CALDERAS Y HORNOS A.R. POR CORRIDA"
  },
  {
    "code" : "4501010",
    "display" : "AUDITORIA MUESTREO ISOCINETICO CALDERAS Y HORNOS M.Y.B.R. POR CORRIDA"
  },
  {
    "code" : "4501011",
    "display" : "AUDITORIA MUESTREO ISOCINETICO PROCESOS INDUSTRIALES A.R. POR CORRIDA"
  },
  {
    "code" : "4501012",
    "display" : "AUDITORIA MUESTREO ISOCINETICO PROCESOS INDUSTRIALES M.Y B.R."
  },
  {
    "code" : "4501013",
    "display" : "RESIDUOS INDUSTRIALES SOLIDOS ALTO RIESGO"
  },
  {
    "code" : "4501014",
    "display" : "RESIDUOS INDUSTRIALES SOLIDOS MEDIANO RIESGO"
  },
  {
    "code" : "4501015",
    "display" : "RESIDUOS INDUSTRIALES SOLIDOS BAJO RIESGO"
  },
  {
    "code" : "4501016",
    "display" : "ALMACENAMIENTO DE SUSTANCIAS PELIGROSAS A.R."
  },
  {
    "code" : "4501017",
    "display" : "ALMACENAMIENTO DE SUSTANCIAS PELIGROSAS M. Y B.R."
  },
  {
    "code" : "4501018",
    "display" : "CONTAMINACION POR RUIDO"
  },
  {
    "code" : "4501019",
    "display" : "RESIDUOS INDUSTRIALES LIQUIDOS"
  },
  {
    "code" : "4501020",
    "display" : "SUSTANCIAS Y/O PRODUCTOS QUIMICOS PELIGROSOS"
  },
  {
    "code" : "4502001",
    "display" : "COMBUSTIBLE PARA CALDERAS Y HORNOS, PROCESOS INDUSTRIALES O MATERIAS PRIMAS O PRODUCTOS"
  },
  {
    "code" : "4701038",
    "display" : "FOSFATASA"
  },
  {
    "code" : "4701039",
    "display" : "FRUCTOSA"
  },
  {
    "code" : "4701040",
    "display" : "HERMETICIDAD, DEFORMIDAD (ENVASES)"
  },
  {
    "code" : "4701041",
    "display" : "HIERRO"
  },
  {
    "code" : "4701042",
    "display" : "HUMEDAD"
  },
  {
    "code" : "4701043",
    "display" : "IDENTIDAD Y PUREZA DE ADITIVOS"
  },
  {
    "code" : "4701044",
    "display" : "IDENTIFICACION DE COLORANTES"
  },
  {
    "code" : "4701045",
    "display" : "IDENTIFICACION DE EMULSIFICANTES"
  },
  {
    "code" : "4701046",
    "display" : "IDENTIFICACION DE ESPESANTES"
  },
  {
    "code" : "4701047",
    "display" : "IDENTIFICACION DE ACENTUANTES SABOR"
  },
  {
    "code" : "4701048",
    "display" : "IMPUREZAS"
  },
  {
    "code" : "4701049",
    "display" : "INDICE DE FORMOL"
  },
  {
    "code" : "4701050",
    "display" : "MATERIA GRASA"
  },
  {
    "code" : "0101001",
    "display" : "CONSULTA MEDICA ELECTIVA O DE URGENCIA"
  },
  {
    "code" : "0101002",
    "display" : "CONSULTA MEDICA DE NEUROLOGO, NEUROCIRUJANO ,OTORRINOLARINGOLOGO, GERIATRA U ONCOLOGO"
  },
  {
    "code" : "0101003",
    "display" : "CONSULTA MEDICA ESPECIALIDADES"
  },
  {
    "code" : "0101004",
    "display" : "VISITA MEDICA DOMICILIARIA EN HORARIO HABIL"
  },
  {
    "code" : "1502057",
    "display" : "SINDACTILIA, TRAT. QUIR. CADA ESPACIO SIN INJERTO"
  },
  {
    "code" : "1502058",
    "display" : "POLIDACTILIA, EXTIRPACION Y PLASTIA UN LADO"
  },
  {
    "code" : "1502059",
    "display" : "LIPECTOMIA GLUTEA, UN LADO"
  },
  {
    "code" : "1502060",
    "display" : "LIPECTOMIA TROCANTEREA, UN LADO"
  },
  {
    "code" : "1502061",
    "display" : "ESCAROTOMIA HASTA 10 % SUPERFICIE CORPORAL"
  },
  {
    "code" : "1502062",
    "display" : "ESCAROTOMIA POR CADA 10 % ADICIONAL (O SU FRACCION)"
  },
  {
    "code" : "1502063",
    "display" : "ESCARECTOMIA HASTA 1 % SUPERFICIE CORPORAL"
  },
  {
    "code" : "1502064",
    "display" : "ESCARECTOMIA HASTA 5 % SUPERFICIE CORPORAL"
  },
  {
    "code" : "1502065",
    "display" : "ESCARECTOMIA HASTA 10% SUPERFICIE CORPORAL"
  },
  {
    "code" : "1502066",
    "display" : "ESCARECTOMIA POR CADA 10% ADICIONAL (O SU FRACCION)"
  },
  {
    "code" : "1601001",
    "display" : "VERRUGAS DE CARA"
  },
  {
    "code" : "1601002",
    "display" : "VERRUGAS OTRAS LOCALIZACIONES"
  },
  {
    "code" : "1601003",
    "display" : "VERRUGA PLANTAR"
  },
  {
    "code" : "1601004",
    "display" : "QUERATOSIS SEBORREICA Y/O ACTINICAS DE CARA"
  },
  {
    "code" : "1601005",
    "display" : "QUERATOSIS SEBORREICA Y/O ACTINICA DE OTRAS LOCALIZACIONES"
  },
  {
    "code" : "1601006",
    "display" : "CONDILOMAS ACUMINADOS, RESECCION C/S FULGURACION"
  },
  {
    "code" : "1601007",
    "display" : "PAPILOMAS"
  },
  {
    "code" : "1601008",
    "display" : "HEMANGIOMAS PUNTIFORMES Y/O TELANGIECTASIA CARA"
  },
  {
    "code" : "1601009",
    "display" : "HEMANGIOMAS PUNTIFORMES Y/O TELANGIECTASIA OTRASLOCALIZACIONES"
  },
  {
    "code" : "1601010",
    "display" : "MOLUSCUM CONTAGIOSUM, O SU EXTIRP. POR RASPADO DE CARA"
  },
  {
    "code" : "1601011",
    "display" : "MOLUSCUM CONTAGIOSUM, O SU EXTRIP. POR RASPADO OTRASLOCALIZACIONES"
  },
  {
    "code" : "1601012",
    "display" : "MAYOR 50% DE SUPERFICIE CORPORAL"
  },
  {
    "code" : "1601013",
    "display" : "MENOR 50% DE SUPERFICIE CORPORAL"
  },
  {
    "code" : "1601014",
    "display" : "APLICACION DE NIEVE CARBONICA DE CARA"
  },
  {
    "code" : "1601015",
    "display" : "APLICACION DE NIEVE CARBONICA OTRAS LOCALIZACIONES"
  },
  {
    "code" : "1601016",
    "display" : "NITROGENO LIQUIDO U OXIDO NITROSO DE CARA"
  },
  {
    "code" : "1601017",
    "display" : "NITROGENO LIQUIDO U OXIDO NITROSO OTRAS LOCALIZACIONES"
  },
  {
    "code" : "1601018",
    "display" : "CARA"
  },
  {
    "code" : "1601019",
    "display" : "OTRAS LOCALIZACIONES"
  },
  {
    "code" : "1601020",
    "display" : "MECANICO"
  },
  {
    "code" : "1601021",
    "display" : "QUIMICO"
  },
  {
    "code" : "1601022",
    "display" : "PUVATERAPIA TOTAL EN CABINA (CADA SESION)"
  },
  {
    "code" : "4101017",
    "display" : "MICROBASURAL"
  },
  {
    "code" : "4101018",
    "display" : "BASURAL CLANDESTINO"
  },
  {
    "code" : "4101019",
    "display" : "ASENTAMIENTOS HUMANOS PRECARIOS"
  },
  {
    "code" : "4101020",
    "display" : "ESTABLECIMIENTOS ASISTENCIALES"
  },
  {
    "code" : "1601027",
    "display" : "POR CADA 10% ADICIONAL (O SU FRACCION) HASTA 50%. (SE COBRARA COD. ADICIONAL 7 UNA SOLA VEZ POR SUPERFICIE ENTRE EL 11% Y 50%)."
  },
  {
    "code" : "1601028",
    "display" : "51% Y MAS DE SUPERFICIE CORPORAL"
  },
  {
    "code" : "1602001",
    "display" : "BIOPSIA DE PIEL Y/O MUCOSA POR CURETAJE O SECCION TANGENCIAL C/S ELECTROCIRUGIA (PROC. AUT.)"
  },
  {
    "code" : "1602002",
    "display" : "CUERPO EXTRAÑO CUTANEO, Y/O NEVUS, Y/O ANGIOMA CUTANEO O MUCOSO, Y/O TUMOR BENIGNO, EXTIRP. DE, HASTA 5 ELEMENTOS"
  },
  {
    "code" : "1602003",
    "display" : "CUERPO EXTRAÑO CUTANEO, Y/O NEVUS, Y/O ANGIOMA CUTANEO O MUCOSO Y/O TUMOR BENIGNO, EXTIRP. DE 6 O MAS ELEMENTOS"
  },
  {
    "code" : "1602004",
    "display" : "EPITELIOMA BASOCELULAR O CARCINOMA ESPINOCELULAR: CARA"
  },
  {
    "code" : "1602005",
    "display" : "EPITELIOMA BASOCELULAR O CARCINOMA ESPINOCELULAR: OTRAS LOCALIZACIONES"
  },
  {
    "code" : "1602006",
    "display" : "HEMANGIOMA CAVERNOSO DEL NIÑO, TRAT. QUIR."
  },
  {
    "code" : "1602007",
    "display" : "HERIDA CORTANTE O CONTUSA COMPLICADA, REPARACION Y SUTURA (UNA O MULTIPLE DE MAS DE 5 CMS. DE LARGO TOTAL Y/O QUE COMPROMETA MUSCULOS Y/O CONDUCTOS Y/O VASOS O SIMILARES)"
  },
  {
    "code" : "1602008",
    "display" : "HERIDA CORTANTE O CONTUSA NO COMPLICADA, REPARACION Y SUTURA (UNA O MULTIPLE HASTA 5 CMS. DE LARGO TOTAL QUE COMPROMETA SOLO LA PIEL)"
  },
  {
    "code" : "1602009",
    "display" : "HIDROSADENITIS: VACIAMIENTO"
  },
  {
    "code" : "1602010",
    "display" : "LESIONES SUPURADAS DE LA PIEL O SUBAPONEUROTICA, TRAT. QUIR."
  },
  {
    "code" : "1602011",
    "display" : "LIPOMA SUBCUTANEO, TRAT. QUIR."
  },
  {
    "code" : "1602012",
    "display" : "MELANOMA: CARA"
  },
  {
    "code" : "1602013",
    "display" : "MELANOMA: OTRAS LOCALIZACIONES"
  },
  {
    "code" : "1602014",
    "display" : "ONICECTOMIA C/S PLASTIA DE LECHO"
  },
  {
    "code" : "1602015",
    "display" : "OTROS TUMORES MALIGNOS: CARA"
  },
  {
    "code" : "1602016",
    "display" : "OTROS TUMORES MALIGNOS: OTRAS LOCALIZACIONES"
  },
  {
    "code" : "1602017",
    "display" : "PELLETS SUBCUTANEO POR TROCAR, IMPLANTE DE"
  },
  {
    "code" : "1602018",
    "display" : "QUERATOSIS ACTINICAS"
  },
  {
    "code" : "1602019",
    "display" : "TUMORES BENIGNOS SUBCUTANEOS Y/O QUISTES EPIDERMICOS O MUCOSOS, TRAT. QUIR."
  },
  {
    "code" : "1602020",
    "display" : "VERRUGA PLANTAR"
  },
  {
    "code" : "1602109",
    "display" : "GLANDULAS SUDORIPARAS AXILARES, EXTIRP."
  },
  {
    "code" : "1701001",
    "display" : "E.C.G. DE REPOSO (INCLUYE MINIMO 12 DERIVACIONES Y 4 COMPLEJOS POR DERIVACION)"
  },
  {
    "code" : "1701002",
    "display" : "ELECTROCARDIOGRAMA ESOFAGICO"
  },
  {
    "code" : "1701003",
    "display" : "ERGOMETRIA (INCLUYE E.C.G. ANTES, DURANTE Y DESPUES DEL EJERCICIO CON MONITOREO CONTINUO Y MEDICION DE LA INTENSIDAD DEL ESFUERZO)"
  },
  {
    "code" : "1701004",
    "display" : "EN ADULTOS O NINOS"
  },
  {
    "code" : "1701005",
    "display" : "MAPEO EPICARDICO DURANTE INTERVENCION QUIRURGICA."
  },
  {
    "code" : "1701006",
    "display" : "E.C.G. CONTINUO (TEST HOLTER O SIMILARES, POR EJ. VARIABILIDAD DE LA FRECUENCIA Y/O ALTA RESOLUCION DEL ST Y/O DEPOLARIZACION TARDIA):20 A 24 HORAS DE REGISTRO"
  },
  {
    "code" : "1701007",
    "display" : "ECOCARDIOGRAMA DOPPLER, CON REGISTRO (INCLUYE COD. 17.01.008)"
  },
  {
    "code" : "1701008",
    "display" : "ECOCARDIOGRAMA BIDIMENSIONAL (INCLUYE REGISTRO MODO M, PAPEL FOTOSENSIBLE Y FOTOGRAFIA), EN ADULTOS O NIÑOS (PROC. AUT.)"
  },
  {
    "code" : "1701009",
    "display" : "MONITOREO CONTINUO DE PRESION ARTERIAL"
  },
  {
    "code" : "1701010",
    "display" : "SONDEO CARDIACO DERECHO C/S TERMODILUCION, EN ADULTOS O NIÑOS"
  },
  {
    "code" : "1701011",
    "display" : "SONDEO CARDIACO IZQUIERDO Y DERECHO, EN ADULTOS O NIÑOS"
  },
  {
    "code" : "1701012",
    "display" : "SONDEO CARDIACO IZQUIERDO, EN ADULTOS O NIÑOS"
  },
  {
    "code" : "1701013",
    "display" : "CATETERISMO EN RECIEN NACIDO POR ARTERIA UMBILICAL"
  },
  {
    "code" : "1701014",
    "display" : "CATETER VENOSO"
  },
  {
    "code" : "1701015",
    "display" : "DOPPLER CON ERGOMETRIA (POR SESION)"
  },
  {
    "code" : "1701016",
    "display" : "DOPPLER SIMPLE DE VASOS PERIFERICOS (POR SESION)"
  },
  {
    "code" : "2104052",
    "display" : "TRANSPOSICIONES MUSCULARES"
  },
  {
    "code" : "2104053",
    "display" : "AMPUTACION BRAZO"
  },
  {
    "code" : "2104054",
    "display" : "FRACTURA SUPRACONDILEA NIÑO; TRACCION ESQUELETICA, C/S OSTEOSINTESIS YAPARATO DE YESO"
  },
  {
    "code" : "2104055",
    "display" : "OSTEOSINTESIS DIAFISIARIA (CUALQUIER TECNICA)"
  },
  {
    "code" : "2104056",
    "display" : "OSTEOSINTESIS SUPRA O INTERCONDILEA (CUALQUIER TECNICA)"
  },
  {
    "code" : "2104057",
    "display" : "OSTEOTOMIA (CUALQUIER TECNICA)"
  },
  {
    "code" : "2104058",
    "display" : "PSEUDOARTROSIS C/S OSTEOSINTESIS C/S YESO"
  },
  {
    "code" : "2104059",
    "display" : "ARTROPLASTIA CON FASCIA"
  },
  {
    "code" : "2104060",
    "display" : "CUPULA RADIAL, RESECCION"
  },
  {
    "code" : "2104061",
    "display" : "CUPULA RADIAL, RESECCION CON IMPLANTE DE SILASTIC O SIMILAR"
  },
  {
    "code" : "2104062",
    "display" : "ENDOPROTESIS TOTAL DE CODO, (CUALQUIER TECNICA)"
  },
  {
    "code" : "2104063",
    "display" : "EPICONDILITIS, TRAT. QUIR. (CUALQUIER TECNICA)"
  },
  {
    "code" : "2104064",
    "display" : "LUXACION, REDUCCION CRUENTA"
  },
  {
    "code" : "2104065",
    "display" : "LUXOFRACTURA, REDUCCION CRUENTA C/S RESECCION CUPULA RADIAL"
  },
  {
    "code" : "2104066",
    "display" : "OSTEOSINTESIS EPITROCLEA-EPICONDILO (CUALQUIER TECNICA)"
  },
  {
    "code" : "2104067",
    "display" : "OSTEOSINTESIS OLECRANON U OSTEOSINTESIS DE CUPULA RADIAL (PROC. AUT.) (CUALQUIER TECNICA)"
  },
  {
    "code" : "2104068",
    "display" : "TRASLOCACION NERVIO CUBITAL (PROC. AUT.)"
  },
  {
    "code" : "2104069",
    "display" : "OPERACION DE SALVATAJE RADIO-PROCUBITO"
  },
  {
    "code" : "2104070",
    "display" : "AMPUTACION"
  },
  {
    "code" : "2104071",
    "display" : "EXTIRPACION METAFISIS DISTAL DEL CUBITO Y ARTRODESIS RADIOCUBITAL INFERIOR"
  },
  {
    "code" : "2104072",
    "display" : "LUXOFRACTURAS (MONTEGGIA-GALEAZZI), REDUCC. Y OSTEOSINTESIS"
  },
  {
    "code" : "2104073",
    "display" : "OSTEOSINTESIS, FRACT. CERRADA CUBITO Y/O RADIO (CUALQ. TECN.)"
  },
  {
    "code" : "2104074",
    "display" : "OSTEOTOMIA UNO O AMBOS HUESOS, C/S OSTESINTESIS C/S YESO O TRAT. QUIR.ENF. DE KIENBOCK"
  },
  {
    "code" : "2104075",
    "display" : "PSEUDOARTROSIS CUBITO Y/O RADIO C/S OSTEOSINTESIS C/S YESO"
  },
  {
    "code" : "2104076",
    "display" : "SINOSTOSIS RADIO-CUBITAL, TRAT. QUIR., C/S INJERTO"
  },
  {
    "code" : "2104077",
    "display" : "TRASPLANTES MUSCULO-TENDINOSOS"
  },
  {
    "code" : "2104078",
    "display" : "CONTRACTURA ISQUEM. DE VOLKMANN: DESCENSO MUSCULAR, NEUROLISIS"
  },
  {
    "code" : "2104079",
    "display" : "ENDOPROTESIS TOTAL DE MUÑECA, (CUALQUIER TECNICA)"
  },
  {
    "code" : "2104080",
    "display" : "ESTILOIDES CUBITAL, RESECCION DE"
  },
  {
    "code" : "2104081",
    "display" : "FRACTURA O PSEUDOARTROSIS ESCAFOIDES, TRAT. QUIR. CUALQ. TECN."
  },
  {
    "code" : "2104082",
    "display" : "IMPLANTE SILASTIC O SIMILARES (ESCAFOIDES, SEMILUNAR)"
  },
  {
    "code" : "2104083",
    "display" : "LUXACION RADIOCARPIANA, TRAT. QUIR."
  },
  {
    "code" : "2104084",
    "display" : "LUXACION SEMILUNAR, REDUCCION Y OSTEOSINTESIS SEMICRUENTA O CRUENTA"
  },
  {
    "code" : "2104085",
    "display" : "OSTEOSINTESIS RADIO, (CUALQUIER TECNICA)"
  },
  {
    "code" : "2104086",
    "display" : "TENDOVAGINOSIS DE DE QUERVAIN, TRAT. QUIR."
  },
  {
    "code" : "2104087",
    "display" : "AMPUTACION DEDOS (TRES O MAS)"
  },
  {
    "code" : "2104088",
    "display" : "AMPUTACION DEDOS (UNO O DOS)"
  },
  {
    "code" : "2104089",
    "display" : "AMPUTACION MANO O DEL PULGAR"
  },
  {
    "code" : "2104090",
    "display" : "AMPUTACION PULPEJOS (PLASTIA KUTLER O SIMILARES)"
  },
  {
    "code" : "2104091",
    "display" : "CONTRACTURA DUPUYTREN, TRAT. QUIR., CADA TIEMPO"
  },
  {
    "code" : "2104092",
    "display" : "CONTUSION-COMPRESION GRAVE, TRAT. QUIR. INCLUYE INCISIONES LIBERADORASY/O FASCIOTOMIA Y/O ESCARECTOMIA Y/O INJERTOS PIEL INMEDIATOS Y SINTESIS PERCUTANEA"
  },
  {
    "code" : "2104093",
    "display" : "DEDOS EN GATILLO, TRAT. QUIR., CUALQUIER NUMERO"
  },
  {
    "code" : "2104094",
    "display" : "FLEGMON MANO, TRAT. QUIR."
  },
  {
    "code" : "2104095",
    "display" : "LUXOFRACTURA METACARPOFALANGICA O INTERFALANGICA, TRAT. QUIR."
  },
  {
    "code" : "2104096",
    "display" : "MANO REUMATICA EN RAFAGA: TRASLOCACIONES TENDINOSAS, PLASTIAS CAPSULARES, TENOTOMIAS, INMOVILIZACION POSTOPERATORIA"
  },
  {
    "code" : "2104097",
    "display" : "MANO REUMATICA: IMPLANT. SILASTIC, CUALQ. NUMERO (PROC. AUT.)"
  },
  {
    "code" : "2104098",
    "display" : "MUTILACION GRAVE, ASEO. QUIR. COMPLETO C/S OSTEOSINTESIS, C/S INJERTOS"
  },
  {
    "code" : "2104099",
    "display" : "OSTEOSINTESIS METACARPIANAS O DE FALANGES, CUALQUIER TECNICA"
  },
  {
    "code" : "2104100",
    "display" : "PANADIZO, TRAT. QUIR."
  },
  {
    "code" : "2104101",
    "display" : "PULGARIZACION DEDO (INDICE O ANULAR)"
  },
  {
    "code" : "2104102",
    "display" : "REIMPLANTE MANO O DEDO(S)"
  },
  {
    "code" : "2104103",
    "display" : "REPARACION FLEXORES: PRIMER TIEMPO ESPACIADOR SILASTIC"
  },
  {
    "code" : "2104104",
    "display" : "REPARACION NERVIO DIGITAL CON INJERTO INTERFASCICULAR: CUALQUIER NUMERO"
  },
  {
    "code" : "2104105",
    "display" : "RUPTURAS CERRADAS CAPSULO-LIGAMENT. O TENDINOSAS, TRAT. QUIR."
  },
  {
    "code" : "2104106",
    "display" : "SUTURA NERVIO(S) DIGITAL(ES); MICROCIRUGIA"
  },
  {
    "code" : "2104107",
    "display" : "TENORRAFIA EXTENSORES"
  },
  {
    "code" : "2104108",
    "display" : "TENORRAFIA O INJERTOS FLEXORES"
  },
  {
    "code" : "2104109",
    "display" : "TENOSINOVITIS SEPTICA, TRAT. QUIR."
  },
  {
    "code" : "2104110",
    "display" : "TRASPLANTE MICROQUIRURGICO PARA PULGAR"
  },
  {
    "code" : "2104111",
    "display" : "TRANSPOSICIONES TENDINOSAS FLEXORAS O EXTENSORAS"
  },
  {
    "code" : "2104112",
    "display" : "DIASTEMATOMIELIA, RESECCION ESPOLON C/S INSTRUMENTACION"
  },
  {
    "code" : "2104113",
    "display" : "INTERVENCION QUIRURGICA INTEGRAL ESCOLIOSIS IDIOPATICA"
  },
  {
    "code" : "2104114",
    "display" : "ESPONDILODISCITIS VERTEBRAL (TBC U OTRA), TRAT. QUIR. DEL FOCO, C/S ARTRODESIS"
  },
  {
    "code" : "2104115",
    "display" : "FRACTURA APOFISIS ESPINOSA, TRAT. QUIR."
  },
  {
    "code" : "2104116",
    "display" : "LUXACIONES, LUXOFRACTURAS VERTEBRALES (CERVICAL, DORSAL, LUMBAR), REDUCCION CRUENTA, CUALQUIER VIA DE ABORDAJE, CUALQUIER NUMERO"
  },
  {
    "code" : "2104117",
    "display" : "OSTEOTOMIAS VERTEBRALES CORRECTORAS, C/S INSTRUMENTACION, C/S INJERTOSOSEOS, C/S ARTRODESIS"
  },
  {
    "code" : "2104118",
    "display" : "PLASTIAS COSTALES, CUALQUIER NUMERO"
  },
  {
    "code" : "2104119",
    "display" : "REEMPLAZO CUERPO VERTEBRAL CON ARTRODESIS C/S OSTEOSINTESIS C/S INSTRUMENTACION"
  },
  {
    "code" : "2104120",
    "display" : "RESECCION ARCO NEURAL (OPERACION DE GILL O SIMILARES)"
  },
  {
    "code" : "2104121",
    "display" : "RESECCION DEL COXIS"
  },
  {
    "code" : "2104122",
    "display" : "DIASTASIS PUBIANA, TRAT. QUIR."
  },
  {
    "code" : "2104123",
    "display" : "FRACTURA, OSTEOSINTESIS QUIR."
  },
  {
    "code" : "2104124",
    "display" : "OSTEOTOMIA PELVIANA (SALTER, CHIARI O SIMILARES)"
  },
  {
    "code" : "2104125",
    "display" : "TRIPLE OSTEOTOMIA DE PELVIS"
  },
  {
    "code" : "2104126",
    "display" : "AMPUTACION INTER-ILIO ABDOMINAL"
  },
  {
    "code" : "2104127",
    "display" : "DESARTICULACION"
  },
  {
    "code" : "2104128",
    "display" : "ENDOPROTESIS PARCIAL C/S CEMENTACION (CUALQUIER TECNICA) (NO INCLUYE PROTESIS)"
  },
  {
    "code" : "2104129",
    "display" : "ENDOPROTESIS TOTAL DE CADERA (NO INCLUYE PROTESIS)"
  },
  {
    "code" : "2104130",
    "display" : "EPIFISIOLISIS LENTA O AGUDA, TRAT. QUIR."
  },
  {
    "code" : "2104131",
    "display" : "FRACTURA DE CUELLO DE FEMUR, OSTEOSINTESIS, CUALQUIER TECNICA (NO INCLUYE ELEMENTOS DE OSTEOSINTESIS)"
  },
  {
    "code" : "2104132",
    "display" : "FRACTURA DE CUELLO DE FEMUR, RESECCION EPIFISIS FEMORAL"
  },
  {
    "code" : "2104133",
    "display" : "LUXACION TRAUMATICA, REDUCCION CRUENTA"
  },
  {
    "code" : "2104134",
    "display" : "LUXOFRACTURA ACETABULAR, TRAT. QUIR."
  },
  {
    "code" : "2104135",
    "display" : "OPERACION DE SALVATAJE CADERA, COLUMNA O SIMILARES"
  },
  {
    "code" : "2104136",
    "display" : "OSTEOTOMIAS FEMORALES"
  },
  {
    "code" : "2104137",
    "display" : "REDUCCION CRUENTA EN LUXACION CONGENITA O TRAUMATICA"
  },
  {
    "code" : "2104138",
    "display" : "REDUCCION CRUENTA Y ACETABULOPLASTIA FEMORAL C/S OSTEOTOMIA FEMORAL"
  },
  {
    "code" : "2104139",
    "display" : "REDUCCION CRUENTA Y OSTEOTOMIA FEMORAL"
  },
  {
    "code" : "2104140",
    "display" : "TENOTOMIA ADUCTORES C/S BOTAS, CON YUGO (PROC. AUT.)"
  },
  {
    "code" : "2104141",
    "display" : "TROCANTEROPLASTIAS"
  },
  {
    "code" : "2104142",
    "display" : "AMPUTACION"
  },
  {
    "code" : "2104143",
    "display" : "EPIFISIODESIS (FEMUR Y/O TIBIA)"
  },
  {
    "code" : "2104144",
    "display" : "OSTEOSINTESIS DIAFISIARIA O METAFISIARIA (CUALQUIER TECNICA)"
  },
  {
    "code" : "2104145",
    "display" : "OSTEOTOMIA CORRECTORA"
  },
  {
    "code" : "2104146",
    "display" : "OSTEOTOMIA DE ALARGAMIENTO O ACORTAMIENTO CON OSTEOSINTESIS INMEDIATA ODISTRACCION INSTRUMENTAL PROGRESIVA"
  },
  {
    "code" : "2104147",
    "display" : "OSTEOTOMIA EN ROSARIO CON ENCLAVIJAMIENTO CLAVO TELESCOPICO"
  },
  {
    "code" : "2104148",
    "display" : "PSEUDOARTROSIS, TRAT. QUIR. (CUALQUIER TECNICA)"
  },
  {
    "code" : "2104149",
    "display" : "RUPTURA Y/O HERNIA MUSCULAR, TRAT. QUIR."
  },
  {
    "code" : "2104150",
    "display" : "ARTROTOMIA POR CUERPOS LIBRES, OSTEOCONDRITIS (PROC. AUT)"
  },
  {
    "code" : "2104151",
    "display" : "DESARTICULACION"
  },
  {
    "code" : "2104152",
    "display" : "DISFUNCION PATELO-FEMORAL, REALINEAMIENTO (CUALQUIER TECNICA)"
  },
  {
    "code" : "2104153",
    "display" : "ENDOPROTESIS TOTAL DE RODILLA, (CUALQUIER TECNICA)"
  },
  {
    "code" : "2104154",
    "display" : "FRACTURA ROTULA: OSTEOSINTESIS O PATELECTOMIA PARC. O TOTAL"
  },
  {
    "code" : "2104155",
    "display" : "FRACTURAS CONDILEAS O DE PLATILLOS TIBIALES, REDUCCION, OSTEOSINTESIS(CUALQUIER TECNICA)"
  },
  {
    "code" : "2104156",
    "display" : "INESTABILIDAD CRONICA DE RODILLA, RECONSTRUCCION CAPSULO-LIGAMENTOSA (CUALQUIER TECNICA)"
  },
  {
    "code" : "2104157",
    "display" : "LUXACION O ROTURA LIGAMENTOS, TRAT. QUIR. CAPSULO-LIGAMENTOSO"
  },
  {
    "code" : "2104158",
    "display" : "MENISCECTOMIA QUIRURGICA, INTERNA Y/O EXTERNA"
  },
  {
    "code" : "2104159",
    "display" : "MENISCECTOMIA U OTRAS INTERVENCIONES POR VIA ARTROSCOPICA (INCLUYE ARTROSCOPIA DIAGNOSTICA)"
  },
  {
    "code" : "2104160",
    "display" : "QUISTE POPLITEO, TRAT. QUIR."
  },
  {
    "code" : "2104161",
    "display" : "RECONSTRUCCION APARATO EXTENSOR"
  },
  {
    "code" : "2104162",
    "display" : "REPARACION QUIRURGICA LIGAMENTOS COLATERALES Y/O CRUZADOS"
  },
  {
    "code" : "2104163",
    "display" : "TRASLOCACIONES MUSCULO-TENDINOSAS EN RODILLA PARALITICA O ESPASTICA"
  },
  {
    "code" : "2104164",
    "display" : "AMPUTACION"
  },
  {
    "code" : "2104165",
    "display" : "COLGAJO CRUZADO DE PIERNA, TRAT. QUIR. COMPLETO"
  },
  {
    "code" : "2104166",
    "display" : "FASCIOTOMIA POR SINDROME COMPARTAMENTAL"
  },
  {
    "code" : "2104167",
    "display" : "OSTEOSINTESIS TIBIO-PERONE (CUALQUIER TECNICA)"
  },
  {
    "code" : "2104168",
    "display" : "OSTEOTOMIA CORRECTORA DE EJES (CUALQUIER TECNICA)"
  },
  {
    "code" : "2104169",
    "display" : "OSTEOTOMIA DE ALARGAMIENTO O ACORTAMIENTO CON OSTEOSINTESIS INMEDIATA ODISTRACCION INSTRUMENTAL PROGRESIVA"
  },
  {
    "code" : "2104170",
    "display" : "OSTEOTOMIA DEL PERONE"
  },
  {
    "code" : "2104171",
    "display" : "PERONE PROTIBIA"
  },
  {
    "code" : "2104172",
    "display" : "PSEUDOARTROSIS, C/S OSTEOSINTESIS (CUALQUIER TECNICA)"
  },
  {
    "code" : "2104173",
    "display" : "DESARTICULACION"
  },
  {
    "code" : "2104174",
    "display" : "ENDOPROTESIS TOTAL TOBILLO, (CUALQUIER TECNICA)"
  },
  {
    "code" : "2104175",
    "display" : "ESGUINCE GRAVE, TRAT. QUIR. CAPSULO-LIGAMENTOSO"
  },
  {
    "code" : "2104176",
    "display" : "FRACTURA ASTRAGALO Y/O CALCANEO, OSTEOSINTESIS (CUALQ. TECN.)"
  },
  {
    "code" : "2104177",
    "display" : "HUESOS SUPERNUMERARIOS, EXTIRPACION, UNO O MAS DEL MISMO LADO"
  },
  {
    "code" : "2104178",
    "display" : "LUXACION TIBIO-ASTRAG.-CALCAN., REDUCC. CRUENTA Y OSTEOSINT."
  },
  {
    "code" : "2104179",
    "display" : "LUXOFRACTURA TOBILLO, CUALQUIER TIPO, OSTEOSINTESIS Y REPARACION CAPSULO-LIGAMENTOSA"
  },
  {
    "code" : "2104180",
    "display" : "OSTEOPLASTIA TIBIO-CALCANEA"
  },
  {
    "code" : "2104181",
    "display" : "RUPTURA TENDON DE AQUILES O TIBIAL POSTERIOR, TENORRAFIA PRIMARIA Y/O TRANSPOSICIONES TENDINOSAS"
  },
  {
    "code" : "2104182",
    "display" : "RUPTURA TIBIAL ANTERIOR U OTROS, TENORRAFIA"
  },
  {
    "code" : "0301008",
    "display" : "ANTITROMBINA III"
  },
  {
    "code" : "0301009",
    "display" : "AUTO-HEMOLISIS TEST, CON Y SIN GLUCOSA"
  },
  {
    "code" : "2703014",
    "display" : "REIMPLANTE Y TRASPLANTE DENTARIO"
  },
  {
    "code" : "4701021",
    "display" : "CAFEINA"
  },
  {
    "code" : "4701022",
    "display" : "CENIZAS"
  },
  {
    "code" : "4701023",
    "display" : "CENIZAS INSOLUBLES EN HCL"
  },
  {
    "code" : "4701024",
    "display" : "CENIZAS TOTALES"
  },
  {
    "code" : "3103018",
    "display" : "PERITAJES (INCL. CODS. 0907001, 0907002, 0107001 Y 0107002)"
  },
  {
    "code" : "3104001",
    "display" : "CONFIRMACION CANCER DE MAMA"
  },
  {
    "code" : "3104002",
    "display" : "HORMONOTERAPIA CANCER DE MAMA(TRAT MENSUAL)."
  },
  {
    "code" : "3106001",
    "display" : "CONFIRMACION DIAGNOSTICA CANCER TESTICULO"
  },
  {
    "code" : "3106002",
    "display" : "HORMONOTERAPIA, CANCER TESTICULO."
  },
  {
    "code" : "3108001",
    "display" : "CONFIRMACION DIAGNOSTICA PACIENTE CON FISURA"
  },
  {
    "code" : "4001001",
    "display" : "INSPECCION AEREA"
  },
  {
    "code" : "4001002",
    "display" : "INSPECCION POR EMERGENCIA AMBIENTAL"
  },
  {
    "code" : "4001003",
    "display" : "EVALUACION DE IMPACTO AMBIENTAL"
  },
  {
    "code" : "4101001",
    "display" : "SERVICIO DE AGUA POTABLE PUBLICO"
  },
  {
    "code" : "4101002",
    "display" : "SERVICIO DE AGUA POTABLE RURAL"
  },
  {
    "code" : "4101003",
    "display" : "SERVICIO DE AGUA POTABLE PARTICULAR"
  },
  {
    "code" : "4101004",
    "display" : "SERVICIO DE AGUAS SERVIDAS PUBLICO"
  },
  {
    "code" : "4101005",
    "display" : "SERVICIO DE AGUAS SERVIDAS PARTICULAR"
  },
  {
    "code" : "4101006",
    "display" : "FOCO DE INSALUBRIDAD POR AGUAS SERVIDAS"
  },
  {
    "code" : "4101007",
    "display" : "RESIDUOS SOLIDOS DOMICILIARIOS, ALMACENAMIENTO"
  },
  {
    "code" : "4101008",
    "display" : "RESIDUOS SOLIDOS DOMICILIARIOS, RECOLECCION"
  },
  {
    "code" : "4101009",
    "display" : "RESIDUOS SOLIDOS DOMICILIARIOS, TRANSPORTE"
  },
  {
    "code" : "4101010",
    "display" : "RESIDUOS SOLIDOS DOMICILIARIOS, TRATAMIENTO"
  },
  {
    "code" : "4101012",
    "display" : "RESIDUOS SOLIDOS HOSPITALARIOS, ALMACENAMIENTO"
  },
  {
    "code" : "4101013",
    "display" : "RESIDUOS SOLIDOS HOSPITALARIOS, RECOLECCION"
  },
  {
    "code" : "4101014",
    "display" : "RESIDUOS SOLIDOS HOSPITALARIOS, TRANSPORTE"
  },
  {
    "code" : "4101015",
    "display" : "RESIDUOS SOLIDOS HOSPITALARIOS, TRATAMIENTO"
  },
  {
    "code" : "4101016",
    "display" : "RESIDUOS SOLIDOS HOSPITALARIOS, DISPOSICION FINAL"
  },
  {
    "code" : "2701000",
    "display" : "ACTIVIDADES PREVENTIVAS"
  },
  {
    "code" : "1103100",
    "display" : "COILS ALTA COMPLEJIDAD"
  },
  {
    "code" : "1103120",
    "display" : "TUMORES Y/O QUISTES INTRACRANEANOS ALTA COMPLEJIDAD"
  },
  {
    "code" : "1701119",
    "display" : "CINECORONARIOGRAFIA DE URGENCIA"
  },
  {
    "code" : "0501103",
    "display" : "CINTIGRAFIA OSEA COMPLETA PLANAR O MEDULA OSEA (A.C. 05-01-133, CUANDO CORRESPONDA)"
  },
  {
    "code" : "0504000",
    "display" : "RADIOTERAPIA CON ACELERADOR LINEAL DE ELECTRONES"
  },
  {
    "code" : "0505000",
    "display" : "TELECOBALTOTERAPIA"
  },
  {
    "code" : "3001201",
    "display" : "SELLO OCULAR"
  },
  {
    "code" : "3106102",
    "display" : "HORMONOTERAPIA"
  },
  {
    "code" : "4309001",
    "display" : "PREDNISONA"
  },
  {
    "code" : "6004002",
    "display" : "RESECCION ENDOSCOPICA CANCER GASTRICO"
  },
  {
    "code" : "6006002",
    "display" : "ASA DE RESECCION ENDOSCOPICA"
  },
  {
    "code" : "6040001",
    "display" : "ENFERMEDAD DE LA MEMBRANA HIALINA. CONFIRMACION Y TRATAMIENTO"
  },
  {
    "code" : "6040101",
    "display" : "HERNIA DIAFRAGMATICA: CONFIRMACION Y TRATAMIENTO"
  },
  {
    "code" : "6040102",
    "display" : "HERNIA DIAFRAGMATICA: TRATAMIENTO ESPECIALIZADO CON OXIDO NITRICO"
  },
  {
    "code" : "6040201",
    "display" : "HIPERTENSION PULMONAR PERSISTENTE: CONFIRMACION Y TRATAMIENTO"
  },
  {
    "code" : "6040202",
    "display" : "HIPERTENSION PULMONAR PERSISTENTE Y ASPIRACION DE MICONIO: TRATAMIENTO ESPECIALIZADO CON OXIDO NITRICO"
  },
  {
    "code" : "6040301",
    "display" : "ASPIRACION DE MICONIO: CONFIRMACION Y TRATAMIENTO"
  },
  {
    "code" : "6040401",
    "display" : "BRONCONEUMONIA: CONFIRMACION Y TRATAMIENTO"
  },
  {
    "code" : "0301106",
    "display" : "AGREGACION Y SECRECION PLAQUETARIA"
  },
  {
    "code" : "0903105",
    "display" : "PSICOTERAPIA GRUPAL CON CO-TERAPEUTA (6 PAC.)"
  },
  {
    "code" : "3301001",
    "display" : "FACTOR VIII FACTOR ANTIHEMOFILICO"
  },
  {
    "code" : "3301002",
    "display" : "FACTOR IX FACTOR ANTIHEMOFILICO"
  },
  {
    "code" : "3001105",
    "display" : "ANDADOR DE PASEO"
  },
  {
    "code" : "3001101",
    "display" : "LENTES DE PRESBICIA"
  },
  {
    "code" : "1800221",
    "display" : "GASTRECTOMIA SUB-TOTAL PROXIMAL CON ESOFAGO-GASTRO-ANAS-TOMOSIS U OTRA DERIVACION"
  },
  {
    "code" : "3701001",
    "display" : "SEGUIMIENTO MENSUAL AVE"
  },
  {
    "code" : "3801001",
    "display" : "TRATAMIENTO MENSUAL CRONICO EPOC EN APS"
  },
  {
    "code" : "3801002",
    "display" : "TRATAMIENTO MENSUAL CRONICO EPOC EN NIVEL SECUNDARIO"
  },
  {
    "code" : "3801003",
    "display" : "TRATAMIENTO EPISODIO EXACERBACION (ANTIBIOTICOS)"
  },
  {
    "code" : "3901001",
    "display" : "TRATAMIENTO MENSUAL CRONICO ASMA EN APS"
  },
  {
    "code" : "3901002",
    "display" : "TRATAMIENTO MENSUAL CRONICO ASMA EN NIVEL SECUNDARIO"
  },
  {
    "code" : "3901003",
    "display" : "TRATAMIENTO EPISODIO EXACERBACION ASMA (ANTIBIOTICOS)"
  },
  {
    "code" : "3901004",
    "display" : "TRATAMIENTO EPISODIO EXACERBACION ASMA (ANTIBIOTICOS)"
  },
  {
    "code" : "3002135",
    "display" : "QUIMIOTERAPIA CANCER MAMA, ETAPA III"
  },
  {
    "code" : "3002200",
    "display" : "TRATAMIENTO CANCER EN MENORES DE 15 AÑOS"
  },
  {
    "code" : "3103102",
    "display" : "ESQUIZOFRENIA Y PSICOSIS NO ORGANICA, TRAT. AMBULATORIO PACIENTE CRONICO NO AUGE (INGRESO A TRAT. ANTES DEL 1 JUNIO 2004)"
  },
  {
    "code" : "3105003",
    "display" : "CONSULTA Y EXAMENES POR TRATAMIENTO QUIMIOTERAPIA"
  },
  {
    "code" : "3105202",
    "display" : "SEGUIMIENTO LINFOMA ADULTO 2º AÑO"
  },
  {
    "code" : "3106103",
    "display" : "HOSPITALIZACION POR QUIMIOTERAPIA"
  },
  {
    "code" : "3106204",
    "display" : "SEGUIMIENTO CANCER TESTICULO 2º AÑO"
  },
  {
    "code" : "3108310",
    "display" : "CIRUGIA SECUNDARIA AÑOS 3 AL 9"
  },
  {
    "code" : "3108311",
    "display" : "REHABILITACION PREESCOLAR"
  },
  {
    "code" : "3108312",
    "display" : "REHABILITACION ESCOLAR AÑOS"
  },
  {
    "code" : "3108313",
    "display" : "REHABILITACION ADOLESCENTE"
  },
  {
    "code" : "3108602",
    "display" : "SEGUIMIENTO FISURA LABIOPALATINA 2° AÑO"
  },
  {
    "code" : "3114103",
    "display" : "CONTROL DE PERSONA GESTANTE CON FACTORES DE RIESGO Y/O SINTOMAS PARTO PREMATURO"
  },
  {
    "code" : "3114411",
    "display" : "DISPLASIA BRONCOPULOMONAR DEL PREMATURO: SATUROMETRIA CONTINUA"
  },
  {
    "code" : "3115102",
    "display" : "SEGUIMIENTO TRASTORNO DE CONDUCCION 2º AÑO"
  },
  {
    "code" : "3120101",
    "display" : "CONFIRMACION DIAGNOSTICA DE ENFERMEDADES NEUROMUSCULARES"
  },
  {
    "code" : "6002001",
    "display" : "ENFERMEDAD BRONQUIAL OBSTRUCTIVA"
  },
  {
    "code" : "6002002",
    "display" : "NEUMONIA TIPO II"
  },
  {
    "code" : "6002003",
    "display" : "NEUMONIA TIPO III"
  },
  {
    "code" : "6002004",
    "display" : "NEUMONIA TIPO IV"
  },
  {
    "code" : "6002005",
    "display" : "ENFERMEDADES PULMONARES DIFUSAS"
  },
  {
    "code" : "6002006",
    "display" : "TBC PULMONAR"
  },
  {
    "code" : "6002007",
    "display" : "HEMOPTISIS"
  },
  {
    "code" : "6002008",
    "display" : "APNEA DEL SUEÑO"
  },
  {
    "code" : "6002009",
    "display" : "DERRAME PLEURAL"
  },
  {
    "code" : "6002010",
    "display" : "DERRAME PLEURAL NEOPLASICO"
  },
  {
    "code" : "6002011",
    "display" : "NEUMOTORAX ESPONTANEO PRIMARIO"
  },
  {
    "code" : "6002012",
    "display" : "NEUMOTORAX ESPONTANEO SECUNDARIO"
  },
  {
    "code" : "6002013",
    "display" : "EMPIEMA PLEURAL"
  },
  {
    "code" : "6002014",
    "display" : "BIOPSIA PULMONAR QUIRURGICA"
  },
  {
    "code" : "6002015",
    "display" : "TUMORES Y OBSTRUCCION DE LA VIA AEREA"
  },
  {
    "code" : "6002016",
    "display" : "CANCER DE PULMON"
  },
  {
    "code" : "7002001",
    "display" : "TRATAMIENTO Y REHABILITACION DE PARALISIS CEREBRAL"
  },
  {
    "code" : "7002002",
    "display" : "TRATAMIENTO Y REHABILITACION DE ENFERMEDADES NEUROLOGICAS CRONICAS"
  },
  {
    "code" : "7002003",
    "display" : "TRATAMIENTO Y REHABILITACION DE ENEFERMEDADES NEUROMUSCULARES CRONICAS"
  },
  {
    "code" : "7002004",
    "display" : "TRATAMIENTO Y REHABILITACION DE DAÑO ORGANICO CEREBRAL SECUNDARIO AÑO 1"
  },
  {
    "code" : "7002005",
    "display" : "TRATAMIENTO Y REHABILITACION DE DAÑO ORGANICO CEREBRAL SECUNDARIO AÑO 2"
  },
  {
    "code" : "7002006",
    "display" : "TRATAMIENTO Y REHABILITACION NEUROMOTORA EN PREMATURO DE ALTO RIESGO"
  },
  {
    "code" : "7002007",
    "display" : "SEGUIMIENTO PREMATURO ALTO RIESGO AÑO 2"
  },
  {
    "code" : "7002008",
    "display" : "TRATAMIENTO Y REHABILITACION DE ENFERMEDADES NEUROMUSCULARES AGUDAS"
  },
  {
    "code" : "2401153",
    "display" : "TRASLADOS DESDE X REGION A SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401157",
    "display" : "TRASLADOS DESDE XI REGION A SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401160",
    "display" : "TRASLADOS DESDE XII REGION A SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401161",
    "display" : "TRASLADOS INTERREGION (NO INCLUYE DESDE O HACIA RM)"
  },
  {
    "code" : "3007000",
    "display" : "MEDIDAS GENERALES"
  },
  {
    "code" : "3007006",
    "display" : "SEGUIMIENTO POST-ALTA"
  },
  {
    "code" : "3101000",
    "display" : "SOSPECHA CA CERVICO-UTERINO"
  },
  {
    "code" : "3101004",
    "display" : "SEGUIMIENTO CA CERVICO UTERINO INVASOR"
  },
  {
    "code" : "3102000",
    "display" : "SOSPECHA D.M. TIPO I"
  },
  {
    "code" : "3102003",
    "display" : "CONFIRMACION DG. PCTES. NUEVOS"
  },
  {
    "code" : "3102004",
    "display" : "TRATAMIENTO NIVEL ESPECIALIDAD"
  },
  {
    "code" : "3102005",
    "display" : "CURACION AVANZADA PIE DIABETICO NO INFECTADO"
  },
  {
    "code" : "3102006",
    "display" : "CURACION AVANZADA PIE DIABETICO INFECTADO"
  },
  {
    "code" : "3103101",
    "display" : "DIAGNOSTICO Y ESTUDIO ESQUIZOFRENIA PRIMER BROTE"
  },
  {
    "code" : "3104003",
    "display" : "SEGUIMIENTO CA DE MAMA PCTE. ASINTOMATICA"
  },
  {
    "code" : "3104004",
    "display" : "SEGUIMIENTO CA DE MAMA PCTE. SINTOMATICA"
  },
  {
    "code" : "3105102",
    "display" : "SEGUIMIENTO LINFOMA ADULTO"
  },
  {
    "code" : "3106003",
    "display" : "ETAPIFICACION CANCER TESTICULO"
  },
  {
    "code" : "3106004",
    "display" : "SEGUIMIENTO CA DE TESTICULO"
  },
  {
    "code" : "3107007",
    "display" : "EXAMENES LINFOCITOS T Y CD4"
  },
  {
    "code" : "3107008",
    "display" : "EXAMENES GENOTIPIFICACION"
  },
  {
    "code" : "3108101",
    "display" : "ORTOPEDIA PREQUIRURGICA PACIENTE FISURADO"
  },
  {
    "code" : "3108201",
    "display" : "TRATAM. FISURA LABIA-PALATINA.CIERRE LABIAL 1ER AÑO"
  },
  {
    "code" : "3108202",
    "display" : "TRATAMIENTO INTEGRAL PACIENTE PROGRAMA FISURADOS (SEGUNDO AÑO)"
  },
  {
    "code" : "3108203",
    "display" : "TRATAMIENTO INTEGRAL PACIENTE PROGRAMA FISURADOS (TERCER AÑO)"
  },
  {
    "code" : "3108204",
    "display" : "TRATAMIENTO INTEGRAL PACIENTE PROGRAMA FISURADOS (CUARTO AÑO)"
  },
  {
    "code" : "3108205",
    "display" : "TRATAMIENTO INTEGRAL PACIENTE PROGRAMA FISURADOS (QUINTO AÑO)"
  },
  {
    "code" : "3108206",
    "display" : "TRATAMIENTO INTEGRAL PACIENTE PROGRAMA FISURADOS (SEXTO AÑO)"
  },
  {
    "code" : "3108207",
    "display" : "TRATAMIENTO INTEGRAL PACIENTE PROGRAMA FISURADOS (SEPTIMO AÑO)"
  },
  {
    "code" : "3108208",
    "display" : "TRATAMIENTO INTEGRAL PACIENTE PROGRAMA FISURADOS (OCTAVO AÑO)"
  },
  {
    "code" : "3108301",
    "display" : "TRATAM. FISURA LABIO-PALATINA, CIERRE PALADAR BLANDO 1ER AÑO"
  },
  {
    "code" : "3108401",
    "display" : "TRATAM. FISURA LABIO-PALATINO CIERRE PALADAR DURO 1ER AÑO"
  },
  {
    "code" : "3108501",
    "display" : "TRATAM. FISURA CON MALFORMACIONES CRANEOFACIALES ASOCIADAS 1ER AÑO"
  },
  {
    "code" : "3108601",
    "display" : "SEGUIMIENTO POST-CIRUGIA 1ER AÑO"
  },
  {
    "code" : "3110001",
    "display" : "CONFIRMACION CANCER INFANTIL < 15 AÑOS LEUCEMIA"
  },
  {
    "code" : "3110002",
    "display" : "CONFIRMACION CANCER INFANTIL < 15 AÑOS LINFOMA Y TUMOR SOLIDO"
  },
  {
    "code" : "3110004",
    "display" : "SEGUIMIENTO CA EN MENORES DE 15 AÑOS"
  },
  {
    "code" : "3110005",
    "display" : "SEGUIMIENTO CA INFANTIL LINFOMA Y TUMOR SOLIDO"
  },
  {
    "code" : "3111001",
    "display" : "CONFIRMACION C. CONGENTIA OPERABLE PRE-NATAL"
  },
  {
    "code" : "3111002",
    "display" : "CONFIRMACION C. CONGENTIA OPERABLE POST-NATAL"
  },
  {
    "code" : "3111003",
    "display" : "EVALUACION POST QUIRURGICA CARDIOPATIA CONGENITA OPERABLES"
  },
  {
    "code" : "3112001",
    "display" : "EVALUACION POST QUIRURGICA ESCOLIOSIS"
  },
  {
    "code" : "3113001",
    "display" : "CONFIRMACION CATARATAS"
  },
  {
    "code" : "3114101",
    "display" : "CONFIRMACION PARTO PREMATURO"
  },
  {
    "code" : "3114102",
    "display" : "TRATAMIENTO PARTO PREMATURO"
  },
  {
    "code" : "3114201",
    "display" : "SOSPECHA DE RETINOPATIA PREMATURO"
  },
  {
    "code" : "3114202",
    "display" : "CONFIRMACION RETINOPATIA PREMATURO"
  },
  {
    "code" : "3114203",
    "display" : "TRATAMIENTO RETINOPATIA DEL PREMATURO: CIRUGIA VITREORETINAL"
  },
  {
    "code" : "3114204",
    "display" : "SEGUIMIENTO POST QUIRURGICO RETINOPATIA DEL PREMATURO"
  },
  {
    "code" : "3114205",
    "display" : "SEGUIMIENTO PACIENTES NO QUIRURGICO RETINOPATIA DEL PREMATURO"
  },
  {
    "code" : "3114301",
    "display" : "TAMIZAJE AUDITIVO AUTOMATIZADO DEL PREMATURO"
  },
  {
    "code" : "3114302",
    "display" : "CONFIRMACION HIPOACUSIA DEL PREMATURO"
  },
  {
    "code" : "3114303",
    "display" : "HIPOACUSIA: CIRUGIA COCLEAR"
  },
  {
    "code" : "3114304",
    "display" : "SEGUIMIENTO HIPOACUSIA DEL PREMATURO"
  },
  {
    "code" : "3114401",
    "display" : "TRATAMIENTO DISPLASIA BRONCOPULOMONAR"
  },
  {
    "code" : "3114402",
    "display" : "SEGUIMIENTO PACIENTES DISPLASIA BRONCOPULMONAR"
  },
  {
    "code" : "3115001",
    "display" : "CONFIRMACION TRASTORNO DE CONDUCCION"
  },
  {
    "code" : "3115002",
    "display" : "SEGUIMIENTO TRASTORNO DE CONDUCCION"
  },
  {
    "code" : "3103103",
    "display" : "DEPRESIÓN GRAVE Y DISTIMIA, MENORES DE 15 AÑOS, TRATAMIENTO AMBULATORIO NIVEL ESPECIALIZADO (VALOR MENSUAL)"
  },
  {
    "code" : "3116001",
    "display" : "TRASTORNOS SEVEROS DEL NEUROPSICODESARROLLO"
  },
  {
    "code" : "3117001",
    "display" : "ACCIDENTE CEREBROVASCULAR"
  },
  {
    "code" : "3118001",
    "display" : "SUEÑO Y APNEA"
  },
  {
    "code" : "3119001",
    "display" : "ECEFALOPATIAS TOXICAS, INFECCIOSAS E INFLAMATORIAS DE EVOLUCION INHABITUAL"
  },
  {
    "code" : "3120001",
    "display" : "ENFERMEDADES NEUROMUSCULARES"
  },
  {
    "code" : "3121001",
    "display" : "EPILEPSIA DE DIFICIL MANEJO DEL NIÑO Y DEL ADOLESCENTE"
  },
  {
    "code" : "3122001",
    "display" : "ENFERMEDADES NEURO DEGENERATIVAS Y NEURO METABOLICAS"
  },
  {
    "code" : "3103104",
    "display" : "TRATAMIENTO DEPRESION GRAVE Y TRATAMIENTO DEPRESION CON PSICOSIS, TRASTORNO BIPOLAR, ALTO RIESGO SUICIDA, O REFRACTARIEDAD AÑO 2"
  },
  {
    "code" : "3103106",
    "display" : "DEMENCIA Y TRASTORNOS MENTALES ORGANICOS AÑO 2"
  },
  {
    "code" : "3103113",
    "display" : "PROGRAMA PRAIS, TRATAMIENTO INTEGRAL ESPECIALIZADO EN SM"
  },
  {
    "code" : "2104183",
    "display" : "TENORRAFIA EXTENSORES O TENOTOMIA DE ALARGAMIENTO DE TENDON DE AQUILES"
  },
  {
    "code" : "2104184",
    "display" : "TRASLOCACION TENDINOSA"
  },
  {
    "code" : "2104185",
    "display" : "AMPUTACION TRANSMETATARSIANA"
  },
  {
    "code" : "2104186",
    "display" : "ASTRAGALO VERTICAL, TRAT. QUIR."
  },
  {
    "code" : "1701017",
    "display" : "PLETISMOGRAFIA EN REPOSO, ESFUERZO C/U (POR SESION)"
  },
  {
    "code" : "1701018",
    "display" : "REGISTRO ECOARTERIAL O ECOVENOSO PERIFERICO C/U (POR SESION)"
  },
  {
    "code" : "1701019",
    "display" : "CINECORONARIOGRAFIA DERECHA Y/O IZQUIERDA (INCLUYE SONDEO CARDIACO IZQUIERDO Y VENTRICULOGRAFIA IZQUIERDA)"
  },
  {
    "code" : "1701020",
    "display" : "VENTRICULOGRAFIA DERECHA, EN ADULTOS O NIÑOS (INCL. PROC. RAD., Y SONDEO CARDIACO DERECHO)"
  },
  {
    "code" : "1701021",
    "display" : "VENTRICULOGRAFIA IZQUIERDA, EN ADULTOS O NIÑOS (INCL. PROC. RAD., Y SONDEO CARDIACO IZQUIERDO)"
  },
  {
    "code" : "1701022",
    "display" : "AORTOGRAFIA, EN ADULTOS O NIÑOS (INCLUYE PROC. RAD.)"
  },
  {
    "code" : "1701023",
    "display" : "ARTERIOGRAFIA DE EXTREMIDADES, EN ADULTOS O NIÑOS (INCLUYE PROC. RAD.)"
  },
  {
    "code" : "1701024",
    "display" : "ARTERIOGRAFIA SELECTIVA O SUPERSELECTIVA (PULMONAR, RENAL, TRONCO CELIACO, ETC) EN ADULTOS O NIÑOS (INCL. PROC. RAD.)"
  },
  {
    "code" : "1701025",
    "display" : "CAVOGRAFIA (A.C. 04-02-035)"
  },
  {
    "code" : "1701026",
    "display" : "FLEBOGRAFIA DE CADA EXTREMIDAD (A.C.04-02-038)"
  },
  {
    "code" : "1701027",
    "display" : "FLEBOGRAFIA YUGULAR, SUPRARRENAL, PORTOGRAFIA TRANSHEPATI-CAS, LUMBAR, ESPERMATICA, O SIMIL., C/U (A.C. 04-02-037 O04-02-039 O 04-02-041 SEGUN CORRESPONDA)"
  },
  {
    "code" : "1701028",
    "display" : "LINFOGRAFIA EXTREMIDAD, C/U (A.C. 04-02-044)"
  },
  {
    "code" : "1701029",
    "display" : "LINFOGRAFIA PELVIANA LUMBOAORTICA (A.C.04-02-043)"
  },
  {
    "code" : "1701030",
    "display" : "PUNCION EVACUADORA DE PERICARDIO, C/S TOMA DE MUESTRA C/SINYECCION DE MEDICAMENTO"
  },
  {
    "code" : "1701031",
    "display" : "ANGIOPLASTIA INTRALUMINAL CORONARIA PROCEDIMIENTO CARDIOLO-GICO (A.C.04-02-022)"
  },
  {
    "code" : "1701032",
    "display" : "ANGIOPLASTIA INTRALUMINAL PERIFERICA PROCEDIMIENTO CARDIOLO-GICO (A.C.04-02-023)"
  },
  {
    "code" : "1701033",
    "display" : "BIOPSIA ENDOMIOCARDICA (PROC. COMPLETO)"
  },
  {
    "code" : "1701034",
    "display" : "CARDIOVERSION"
  },
  {
    "code" : "1701035",
    "display" : "COLOCACION DE SONDA MARCAPASO TRANSITORIO (PROC. COMPLETO)"
  },
  {
    "code" : "1701036",
    "display" : "DESFIBRILACION"
  },
  {
    "code" : "1701037",
    "display" : "PUNCION SUBCLAVIA O YUGULAR CON COLOCACION DE CATETER"
  },
  {
    "code" : "1701038",
    "display" : "SEPTOSTOMÍA DE RASHKIND en personas menores de15 años"
  },
  {
    "code" : "1701039",
    "display" : "TROMBOLISIS ARTERIAL PERIFERICA"
  },
  {
    "code" : "1701040",
    "display" : "TROMBOLISIS INTRACORONARIA"
  },
  {
    "code" : "1701041",
    "display" : "VALVULOPLASTIA MITRAL (A.C. 04-02-033)"
  },
  {
    "code" : "1701042",
    "display" : "VALVULOPLASTIA AORTICA Y PULMONAR (A.C. 04-02-033)"
  },
  {
    "code" : "1701043",
    "display" : "ANGIOPLASTIA DE COARTACION AORTICA (INCL. PROC. RAD.) (PROC. COMPLETO)"
  },
  {
    "code" : "1701045",
    "display" : "ECOCARDIOGRAMA DOPPLER COLOR"
  },
  {
    "code" : "1701046",
    "display" : "ESTUDIO ELECTROFISIOLOGICO ENDOCARDIACO DE LAS ARRITMIAS"
  },
  {
    "code" : "1701050",
    "display" : "ABLACION CON CORRIENTE CONTINUA O RADIOFRECUENCIA DE NODULOAURICULO-VENTRICULAR"
  },
  {
    "code" : "1701051",
    "display" : "ABLACION CON CORRIENTE CONTINUA O CON RADIOFRECUENCIA DEVIAS ACCESORIAS Y OTROS"
  },
  {
    "code" : "1701055",
    "display" : "ECOCARDIAGRAMA DOPPLER COLOR TRANSESOFAGICO"
  },
  {
    "code" : "1701131",
    "display" : "ANGIOPLASTIA INTRALUMINAL CORONARIA UNO O MULTIPLES VASOS (INCL. PROC.RAD; BALON, ROTABLATOR, STENT O SIMILAR)"
  },
  {
    "code" : "1701132",
    "display" : "ANGIOPLASTIA INTRALUMINAL PERIFERICA(INCLUYE PROC. RAD., BALON, STENT OSIMILAR)"
  },
  {
    "code" : "1701141",
    "display" : "VALVULOPLASTIA MITRAL O TRICUSPIDE (INCL. PROC. RADIOLOGICO, INCLUYE BALON)"
  },
  {
    "code" : "1701142",
    "display" : "VALVULOPLASTIA AORTICA Y PULMONAR (INCL. PROC. RADIOLOGICO, INCLUYE BALON)"
  },
  {
    "code" : "1701144",
    "display" : "ANGIOPLASTIA DE ARTERIA PULMONAR O VENA CAVA EN NIÑOS (INCLUYE PROC. RAD., BALON, STENT O SIMILAR)"
  },
  {
    "code" : "1703001",
    "display" : "EMBOLECTOMIA Y/O TROMBECTOMIA, UNILATERAL, MIEMBRO SUPERIOR O INFERIOR(PROC. AUT.)"
  },
  {
    "code" : "1703002",
    "display" : "FISTULA ARTERIOVENOSA CONGENITA O TRAUMATICA, REPAR. QUIR."
  },
  {
    "code" : "1703003",
    "display" : "FISTULA ARTERIOVENOSA (DE BRESCIA O SIMILAR)"
  },
  {
    "code" : "1703004",
    "display" : "FISTULA ARTERIOVENOSA DERIVACION EXTERNA"
  },
  {
    "code" : "1703005",
    "display" : "REPAR. QUIR. DE VASOS ARTERIALES Y/O VENOSOS, INTRAABDOMINALES O INTRATORACICOS C/S INJERTO"
  },
  {
    "code" : "1703006",
    "display" : "REPARACION QUIR. DE VASOS ARTERIALES Y/O VENOSOS PERIFERICOS C/S INJERTO"
  },
  {
    "code" : "1703007",
    "display" : "ANEURISMA AORTICO ABDOMINAL TRAT. QUIR."
  },
  {
    "code" : "1703008",
    "display" : "ANEURISMAS PERIFERICOS, TRAT. QUIR."
  },
  {
    "code" : "1703009",
    "display" : "ANEURISMAS TORACO-ABDOMINAL TRAT. QUIR."
  },
  {
    "code" : "1703010",
    "display" : "PUENTES AORTO-BIFEMORAL"
  },
  {
    "code" : "1703011",
    "display" : "PUENTES AORTO-UNIFEMORAL"
  },
  {
    "code" : "1703012",
    "display" : "PUENTES AORTO-VISCERAL (RENAL, MESENTERICO O SIMILAR)"
  },
  {
    "code" : "1703013",
    "display" : "PUENTES AORTO-ILIACO"
  },
  {
    "code" : "1703014",
    "display" : "ENDARTERECTOMIA CAROTIDEA, SUBCLAVIA, VERTEBRAL, FEMORAL, O SIMILAR C/S INJERTO (PROC. AUT.)"
  },
  {
    "code" : "1703015",
    "display" : "ENDARTERECTOMIA FEMORAL COMUN, SUPERFICIAL O PROFUNDA, POPLITEA U OTRASC/S INJERTO (PROC. AUT.)"
  },
  {
    "code" : "1703016",
    "display" : "ENDARTERECTOMIA RENAL, C/S INJERTO (PROC. AUT.)"
  },
  {
    "code" : "1703017",
    "display" : "FEMORO-TIBIAL O DISTALES"
  },
  {
    "code" : "1703018",
    "display" : "FEMORO-POPLITEO"
  },
  {
    "code" : "1703019",
    "display" : "LIGADURA TRONCOS ARTERIALES, (PROC. AUT.)"
  },
  {
    "code" : "1703020",
    "display" : "OTRAS DERIVACIONES: FEMORO-FEMORAL, AXILO-HUMERAL, CAROTIDO-SUBCLAVIO,AXILO-AXILAR O SIMILARES; C/U"
  },
  {
    "code" : "1703021",
    "display" : "ANASTOMOSIS PORTOCAVA U OTRAS PORTOSISTEMICAS"
  },
  {
    "code" : "1703022",
    "display" : "ANASTOMOSIS VENOSAS INTRAABDOMINALES"
  },
  {
    "code" : "1703023",
    "display" : "DENUDACION VENOSA (PROC. AUT.)"
  },
  {
    "code" : "1703024",
    "display" : "DERIVACIONES VENOSAS DE EXTREMIDADES"
  },
  {
    "code" : "1703025",
    "display" : "IMPLANTE FILTROS VENOSOS"
  },
  {
    "code" : "1703026",
    "display" : "LIGADURA CAYADO SAFENA INTERNA, UNILATERAL"
  },
  {
    "code" : "1703027",
    "display" : "LIGADURA OTROS TRONCOS VENOSOS"
  },
  {
    "code" : "1703028",
    "display" : "LIGADURA VENA CAVA INFERIOR"
  },
  {
    "code" : "1703029",
    "display" : "RESECCION CUTANEO-APONEUROTICA UNILATERAL (INCLUYE FASCIOTOMIA INTERNAO POSTERIOR)"
  },
  {
    "code" : "1703030",
    "display" : "SAFENECTOMIA INTERNA Y/O EXTERNA, UNILATERAL"
  },
  {
    "code" : "1703031",
    "display" : "TROMBECTOMIA DE VENAS PROFUNDAS"
  },
  {
    "code" : "1703032",
    "display" : "ANASTOMOSIS LINFOVENOSAS"
  },
  {
    "code" : "1703033",
    "display" : "LINFEDEMA, TRAT. QUIR. UNA EXTREMIDAD"
  },
  {
    "code" : "1703034",
    "display" : "ADENITIS, TRAT. QUIR."
  },
  {
    "code" : "1703035",
    "display" : "BIOPSIA QUIR. GANGLIONAR (CUALQUIER REGION PERIFERICA SUPERFICIAL O PROFUNDA) (PROC. AUT.)"
  },
  {
    "code" : "1703036",
    "display" : "AXILO-SUPRACLAVICULAR"
  },
  {
    "code" : "1703037",
    "display" : "CERVICO-TORACICA"
  },
  {
    "code" : "1703038",
    "display" : "ILEOINGUINAL"
  },
  {
    "code" : "1703039",
    "display" : "INGUINOESCROTALES"
  },
  {
    "code" : "1703040",
    "display" : "LUMBO-AORTICOS"
  },
  {
    "code" : "1703041",
    "display" : "MEDIASTINICOS"
  },
  {
    "code" : "1703042",
    "display" : "POPLITEOS"
  },
  {
    "code" : "1703043",
    "display" : "RADICAL CLASICA O MODIFICADA DE CUELLO"
  },
  {
    "code" : "1703044",
    "display" : "YUGULAR SIMPLE"
  },
  {
    "code" : "1703045",
    "display" : "CERVICO-TORACICA"
  },
  {
    "code" : "1703046",
    "display" : "LUMBAR"
  },
  {
    "code" : "1703047",
    "display" : "ANASTOMOSIS VASCULARES SISTEMICOPULMONARES (BLALOCK-POTT- GLENN O SIMILARES)"
  },
  {
    "code" : "1703048",
    "display" : "CAMBIO DE GENERADOR DE MARCAPASO, SIN CAMBIO DE ELECTRODO"
  },
  {
    "code" : "1703049",
    "display" : "COARTACION AORTICA INFANTIL (PREDUCTAL) TRAT. QUIR."
  },
  {
    "code" : "1703050",
    "display" : "COARTACION AORTICA, TRAT. QUIR."
  },
  {
    "code" : "1703051",
    "display" : "CONDUCTO ARTERIOSO PERSISTENTE, TRAT. QUIR."
  },
  {
    "code" : "1703052",
    "display" : "FISTULA CORONARIA, TRAT. QUIR."
  },
  {
    "code" : "1703053",
    "display" : "IMPLANTACION DE MARCAPASO C/ELECTROD. INTRAVEN. O EPICARDICO (NO INCLUYE EL VALOR DE LA PROTESIS)"
  },
  {
    "code" : "1703054",
    "display" : "OPERACION SOBRE ANILLOS VALVULARES O VASCULARES"
  },
  {
    "code" : "1703055",
    "display" : "OPERACIONES SOBRE ARTERIA PULMONAR, CONSTRICCION POR CINTA"
  },
  {
    "code" : "1703056",
    "display" : "PERICARDIECTOMIA Y/O EXTIRP. DE QUISTES Y/O TUMORES"
  },
  {
    "code" : "1703057",
    "display" : "PERICARDIORRAFIA O MIOPERICARDIORRAFIA EN HERIDAS PENETRANTE"
  },
  {
    "code" : "1703058",
    "display" : "PERICARDIOTOMIA"
  },
  {
    "code" : "1703059",
    "display" : "SINEQUIAS PERICARDICAS, TRAT. QUIR. ( PROC. AUT.)"
  },
  {
    "code" : "1703060",
    "display" : "SIN CIRCULACION EXTRACORPOREA"
  },
  {
    "code" : "1703061",
    "display" : "DE COMPLEJIDAD MAYOR: INCLUYE REEMPLAZO VALVULAR MULTIPLE, TRES O MAS PUENTES AORTOCORONARIOS Y/O ANASTOMOSIS CON ARTERIA MAMARIA, CORRECCION DE CARDIOPATIAS CONGENITAS COMPLEJAS (POR EJEMPLO: FALLOT; ATRESIA TRICUSPIDEA; DOBLE SALIDA DEL VENTRICULO DER"
  },
  {
    "code" : "1703062",
    "display" : "DE COMPLEJIDAD MEDIANA: INCLUYE COMUNICACION INTERVENTRICULAR, REEMPLAZO UNIVALVULAR, UNO O DOS PUENTES AORTOCORONARIOS; ANEURISMA VENTRICULAR, CORRECCION DE WOLF-PARKINSON WHITE Y OTRAS ARRITMIAS"
  },
  {
    "code" : "1703063",
    "display" : "-DE COMPLEJIDAD MENOR: INCLUYE COMUNICACION INTERAURICULAR SIMPLE, ESTENOSIS PULMONAR VALVULAR, ESTENOSIS MITRAL O SIMILAR"
  },
  {
    "code" : "1703153",
    "display" : "IMPLANTACION DE MARCAPASO C/ELECTROD. INTRAVEN. O EPICARDICO (INCLUYEEL VALOR DE LA PROTESIS)"
  },
  {
    "code" : "0405009",
    "display" : "RNM-ESPINAL"
  },
  {
    "code" : "0405010",
    "display" : "RNM-TORAX"
  },
  {
    "code" : "0405011",
    "display" : "RNM-ABDOMEN"
  },
  {
    "code" : "0405012",
    "display" : "RNM-EXTREMIDADES"
  },
  {
    "code" : "2501040",
    "display" : "TRASPLANTE DE MEDULA ANTOLOGO"
  },
  {
    "code" : "2501041",
    "display" : "TRASPLANTE DE MEDULA ALOGENO"
  },
  {
    "code" : "3002107",
    "display" : "TUMORES GERMINALES EXTRA SISTEMA NERVIOSO CENTRAL (EXTRA SNC)"
  },
  {
    "code" : "3002126",
    "display" : "RECAIDA DE LEUCEMIA MIELOIDE"
  },
  {
    "code" : "3007003",
    "display" : "PREVENCION SECUNDARIA DEL IAM (TRAT. MENSUAL)"
  },
  {
    "code" : "3007004",
    "display" : "DIAGNOSTICO IAM EN UNIDAD EMERGENCIA HOSPITALARIA CON E.C.G."
  },
  {
    "code" : "3101001",
    "display" : "CONFIRMACION DIAGNOSTICA CANCER CERVICO UTERINO PREINVASOR"
  },
  {
    "code" : "3105001",
    "display" : "CONFIRMACION DIAGNOSTICA CANCER LINFOMA ADULTO"
  },
  {
    "code" : "3107001",
    "display" : "TEST DE ELISA"
  },
  {
    "code" : "3107002",
    "display" : "TARV ESQUEMA SEGUNDA LINEA PERSONAS DE 18 AÑOS Y MAS"
  },
  {
    "code" : "3107003",
    "display" : "TARV ESQUEMA TERCERA LINEA Y RESCATE PERSONAS DE 18 AÑOS Y MAS"
  },
  {
    "code" : "3107004",
    "display" : "TARV PREVENCION TRANSMISION VERTICAL EN EMBARAZADAS"
  },
  {
    "code" : "3107005",
    "display" : "TARV EN PERSONAS MENORES DE 18 AÑOS"
  },
  {
    "code" : "3107006",
    "display" : "EXAMENES DE DETERMINACION CARGA VIRAL"
  },
  {
    "code" : "0203019",
    "display" : "DIA CAMA HOSPITALIZACION INTEGRAL PSQUIATRIA FORENSE DE MEDIANA Y ALTA COMPLEJIDAD"
  },
  {
    "code" : "0203020",
    "display" : "DIA CAMA HOSPITALIZACION INTEGRAL NEUROLOGICOS POSTRADOS"
  },
  {
    "code" : "1703148",
    "display" : "CAMBIO GENERADOR MP"
  },
  {
    "code" : "3001003",
    "display" : "BASTONES"
  },
  {
    "code" : "0990001",
    "display" : "TRASTORNOS MENTALES ASOCIADOS A LA VIOLENCIA : MALTRATO INFANTIL, VIOLENCIA INTRA FAMILIAR - VIGENCIA HASTA EL 31/03/2004"
  },
  {
    "code" : "0990002",
    "display" : "REPRESION POLITICA (PROGRAMA PAIS) - VIGENCIA HASTA EL 31/03/2004"
  },
  {
    "code" : "0990003",
    "display" : "DEPRESION : DIRIGIDO A TODA LA POBLACION ENTRE 20 Y 64 AÑOS - VIGENCIA HASTA EL 31/03/2004"
  },
  {
    "code" : "0990004",
    "display" : "TRASTORNOS DE HIPERACTIVIDAD / ATENCION EN NIÑOS Y ADOLESCENTES EN EDAD ESCOLAR - VIGENCIA HASTA EL 31/03/2004"
  },
  {
    "code" : "0990005",
    "display" : "ALZHAIMER Y OTRAS DEMENCIAS - VIGENCIA HASTA EL 31/03/2004"
  },
  {
    "code" : "0990006",
    "display" : "ESQUIZOFRENIA : A TODA LA POBLACION MAYOR DE 15 AÑOS - VIGENCIA HASTA EL 31/03/2004"
  },
  {
    "code" : "0990007",
    "display" : "ABUSO Y DEPENDENCIA DE ALCOHOL Y DROGAS : A TODA LA POBLACION MAYOR DE 12 AÑOS - VIGENCIA HASTA EL 31/03/2004"
  },
  {
    "code" : "3008001",
    "display" : "SIN DESCRIPCION - VIGENCIA HASTA EL 31/03/2004"
  },
  {
    "code" : "305010",
    "display" : "EXAMENES COMPLEJOS"
  },
  {
    "code" : "304002",
    "display" : "EXAMENES COMPLEJOS"
  },
  {
    "code" : "305045",
    "display" : "EXAMENES COMPLEJOS"
  },
  {
    "code" : "801004",
    "display" : "EXAMENES COMPLEJOS"
  },
  {
    "code" : "204005",
    "display" : "GRAN QUEMADO Y POLITRAUMATISMO"
  },
  {
    "code" : "204006",
    "display" : "GRAN QUEMADO Y POLITRAUMATISMO"
  },
  {
    "code" : "204001",
    "display" : "GRAN QUEMADO Y POLITRAUMATISMO"
  },
  {
    "code" : "204002",
    "display" : "GRAN QUEMADO Y POLITRAUMATISMO"
  },
  {
    "code" : "204003",
    "display" : "GRAN QUEMADO Y POLITRAUMATISMO"
  },
  {
    "code" : "204004",
    "display" : "GRAN QUEMADO Y POLITRAUMATISMO"
  },
  {
    "code" : "402029",
    "display" : "NEUROCIRUGIA"
  },
  {
    "code" : "1100008",
    "display" : "PACIENTE FISURADO"
  },
  {
    "code" : "1100009",
    "display" : "PACIENTE FISURADO"
  },
  {
    "code" : "1100010",
    "display" : "PACIENTE FISURADO"
  },
  {
    "code" : "1100012",
    "display" : "PACIENTE FISURADO"
  },
  {
    "code" : "1100013",
    "display" : "PACIENTE FISURADO"
  },
  {
    "code" : "1100014",
    "display" : "PACIENTE FISURADO"
  },
  {
    "code" : "1100015",
    "display" : "PACIENTE FISURADO"
  },
  {
    "code" : "1100011",
    "display" : "PACIENTE FISURADO"
  },
  {
    "code" : "503001",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "503003",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "504001",
    "display" : "RDADIOTERAPIA"
  },
  {
    "code" : "504002",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "504003",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "504004",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "504005",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "504006",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "504007",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "504008",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "504009",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "504010",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "504011",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "504012",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "504013",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "504014",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "504015",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "504016",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "507001",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "506001",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "506002",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "506003",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "505001",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "505002",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "505003",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "505004",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "505005",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "505006",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "505007",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "505008",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "505009",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "505010",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "505011",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "505012",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "505013",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "505014",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "505015",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "505016",
    "display" : "RADIOTERAPIA"
  },
  {
    "code" : "990007",
    "display" : "SALUD MENTAL"
  },
  {
    "code" : "990005",
    "display" : "SALUD MENTAL"
  },
  {
    "code" : "990003",
    "display" : "SALUD MENTAL"
  },
  {
    "code" : "990006",
    "display" : "SALUD MENTAL"
  },
  {
    "code" : "990004",
    "display" : "SALUD MENTAL"
  },
  {
    "code" : "990001",
    "display" : "SALUD MENTAL"
  },
  {
    "code" : "990002",
    "display" : "SALUD MENTAL"
  },
  {
    "code" : "3102098",
    "display" : "TRASADORA DE DIABETES MELLITUS II"
  },
  {
    "code" : "3118002",
    "display" : "CANASTA DE TRATAMIENTO DE NEUMONIA"
  },
  {
    "code" : "3102100",
    "display" : "MEDIDAS ESPECIFICAS INMEDIATAS"
  },
  {
    "code" : "3105002",
    "display" : "ETAPIFICACION Y SEGUIMIENTO LINFOMA ADULTO"
  },
  {
    "code" : "5301001",
    "display" : "CONFIRMACION HIPERTENSION ARTERIAL"
  },
  {
    "code" : "5302001",
    "display" : "TRATAMIENTO HIPERTENSION ARTERIAL"
  },
  {
    "code" : "5402001",
    "display" : "TRATAMIENTO INTEGRAL AÑO 1 NIVEL PRIMARIO EPILEPSIA NO REFRACTARIA"
  },
  {
    "code" : "5402002",
    "display" : "TRATAMIENTO INTEGRAL AÑO 2 NIVEL PRIMARIO EPILEPSIA NO REFRACTARIA"
  },
  {
    "code" : "5402003",
    "display" : "TRATAMIENTO AÑO 1 NIVEL SECUNDARIO EPILEPSIA NO REFRACTARIA"
  },
  {
    "code" : "5402004",
    "display" : "TRATAMIENTO AÑO 2 NIVEL SECUNDARIO EPILEPSIA NO REFRACTARIA"
  },
  {
    "code" : "5501001",
    "display" : "PREVENCION Y EDUCACION SALUD ORAL 6 AÑOS"
  },
  {
    "code" : "5001002",
    "display" : "CONFIRMACION PACIENTES NUEVOS DM TIPO 2"
  },
  {
    "code" : "5002001",
    "display" : "TRATAMIENTOS PACIENTES NUEVOS DM TIPO 2"
  },
  {
    "code" : "5002002",
    "display" : "TRATAMIENTO PACIENTES ANTIGUOS DM TIPO 2"
  },
  {
    "code" : "5003001",
    "display" : "CURACION AVANZADA DE HERIDA PIE DIABETICO (NO INFECTADO) DM TIPO 2"
  },
  {
    "code" : "5003002",
    "display" : "CURACION AVANZADA DE HERIDA PIE DIABETICO (INFECTADO)"
  },
  {
    "code" : "5102001",
    "display" : "TRATAMIENTO IRA"
  },
  {
    "code" : "5103001",
    "display" : "SEGUIMIENTO IRA"
  },
  {
    "code" : "5202002",
    "display" : "TRATAMIENTO NEUMONIA"
  },
  {
    "code" : "5502001",
    "display" : "TRATAMIENTO SALUD ORAL 6 AÑOS"
  },
  {
    "code" : "5201001",
    "display" : "CONFIRMACION NEUMONIA"
  },
  {
    "code" : "2703015",
    "display" : "REMOCION DE CUERPO EXTRAÑO Y SECUESTRECTOMIA"
  },
  {
    "code" : "2703016",
    "display" : "SUTURA COMPLETA DE HERIDA MAYOR"
  },
  {
    "code" : "2703017",
    "display" : "SUTURA COMPLETA DE HERIDA MENOR"
  },
  {
    "code" : "2703018",
    "display" : "SUTURA SIMPLE DE HERIDA"
  },
  {
    "code" : "2703019",
    "display" : "TRATAMIENTO QUIRURGICO FRACTURAS MAXILAR SUPERIOR"
  },
  {
    "code" : "2703020",
    "display" : "TRATAMIENTO QUIRURGICO DE FRACTURAS EN MAXILAR INFERIOR"
  },
  {
    "code" : "2703021",
    "display" : "TRATAMIENTO DE TRAUMATISMO DENTO ALVEOLAR SIMPLE"
  },
  {
    "code" : "2703022",
    "display" : "TRATAMIENTO DE TRAUMATISMO DENTO ALVEOLAR COMPLEJO"
  },
  {
    "code" : "2704001",
    "display" : "ALTA INTEGRAL ODONTOLOGICA"
  },
  {
    "code" : "2801001",
    "display" : "PAGO ASOCIADO A ATENCION EMERGENCIA MENOR COMPLEJIDAD"
  },
  {
    "code" : "2801002",
    "display" : "PAGO ASOCIADO A ATENCION EMERGENCIA MEDIANA COMPLEJIDAD"
  },
  {
    "code" : "2801101",
    "display" : "PAGO ASOCIADO A ATENCION EMERGENCIA MENOR COMPLEJIDAD B"
  },
  {
    "code" : "2801102",
    "display" : "PAGO ASOCIADO A ATENCION EMERGENCIA MEDIANA COMPLEJIDAD B"
  },
  {
    "code" : "3001001",
    "display" : "LENTES OPTICOS"
  },
  {
    "code" : "3001002",
    "display" : "AUDIFONOS"
  },
  {
    "code" : "3001004",
    "display" : "SILLAS DE RUEDAS"
  },
  {
    "code" : "3001005",
    "display" : "ANDADOR"
  },
  {
    "code" : "3001006",
    "display" : "COLCHON ANTIESCARAS"
  },
  {
    "code" : "3001007",
    "display" : "COJIN ANTIESCARAS"
  },
  {
    "code" : "3002001",
    "display" : "LINFOMA DE HODGKIN"
  },
  {
    "code" : "3002002",
    "display" : "LINFOMA NH NO AGRESIVO"
  },
  {
    "code" : "3002003",
    "display" : "LINFOMA NH INTERMEDIO"
  },
  {
    "code" : "3002004",
    "display" : "LNH AGRESIVO"
  },
  {
    "code" : "3002005",
    "display" : "LEUCEMIA LINFOBLASTICA"
  },
  {
    "code" : "3002006",
    "display" : "LEUCEMIA AGUDA NO LINFATICA AGUDA Y LEUCEMIA PROMIELOCITICA"
  },
  {
    "code" : "3002007",
    "display" : "CANCER DE TESTICULO Y GERMINALES EXTRAGONADALES"
  },
  {
    "code" : "3002008",
    "display" : "ENFERMEDAD TROFOBLASTICA GESTACIONAL"
  },
  {
    "code" : "3002009",
    "display" : "LINFOMA DE HODGKIN"
  },
  {
    "code" : "3002010",
    "display" : "LN HODGKIN B Y LLA- B"
  },
  {
    "code" : "3002011",
    "display" : "LINFOMA NH NO B"
  },
  {
    "code" : "3002012",
    "display" : "LEUCEMIA LINFATICA AGUDA"
  },
  {
    "code" : "3002013",
    "display" : "LEUCEMIA NLA"
  },
  {
    "code" : "3002014",
    "display" : "NEUROBLASTOMA"
  },
  {
    "code" : "3002015",
    "display" : "OSTEOSARCOMA"
  },
  {
    "code" : "3002016",
    "display" : "SARCOMA PARTES BLANDAS"
  },
  {
    "code" : "3002017",
    "display" : "EWING"
  },
  {
    "code" : "3002020",
    "display" : "TUMOR DE WILMS"
  },
  {
    "code" : "3002021",
    "display" : "RETINOBLASTOMA"
  },
  {
    "code" : "3002022",
    "display" : "HISTIOCITOSIS"
  },
  {
    "code" : "3002023",
    "display" : "CUIDADOS PALIATIVOS EN CANCER TERMINAL (EN ADULTOS O NIÑOS)"
  },
  {
    "code" : "3002024",
    "display" : "RECAIDA TUMORES SOLIDOS"
  },
  {
    "code" : "3002025",
    "display" : "HEPATOBLASTOMAS"
  },
  {
    "code" : "3002026",
    "display" : "LEUCEMIAS MIELOIDE CRONICA"
  },
  {
    "code" : "3002027",
    "display" : "RECAIDAS DE LEUCEMIAS"
  },
  {
    "code" : "3002028",
    "display" : "MEDULOBLASTOMAS"
  },
  {
    "code" : "3002029",
    "display" : "TUMORES DE < DE 3 AÑOS"
  },
  {
    "code" : "3002030",
    "display" : "GLIOMAS DE BAJO GRADO"
  },
  {
    "code" : "3002031",
    "display" : "ASTROCITOMAS DE ALTO GRADO"
  },
  {
    "code" : "3002032",
    "display" : "TUMORES DE CELULAS GERMINALES"
  },
  {
    "code" : "3002033",
    "display" : "RESCATE DE LINFOMAS Y LEUCEMIAS."
  },
  {
    "code" : "3002034",
    "display" : "QUIMIOTERAPIA CA. MAMA, ETAPA I Y II"
  },
  {
    "code" : "3002035",
    "display" : "QUIMIOTERAPIA CA. MAMA, ETAPA III Y IV"
  },
  {
    "code" : "3002036",
    "display" : "CA CERVICO UTERINO"
  },
  {
    "code" : "3003001",
    "display" : "TBC, ESQUEMA PRIMARIO (MENSUAL)"
  },
  {
    "code" : "3003002",
    "display" : "TBC, ESQUEMA PRIMARIO SIMPLIFICADO (MENSUAL)"
  },
  {
    "code" : "3003003",
    "display" : "TBC, ESQUEMA SECUNDARIO (MENSUAL)"
  },
  {
    "code" : "3003004",
    "display" : "TBC, ESQUEMA NORMADO DE RETRATAMIENTO (MENSUAL)"
  },
  {
    "code" : "3003005",
    "display" : "TBC, ESQUEMA ESPECIAL DE RETRATAMIENTO (MENSUAL)"
  },
  {
    "code" : "3004001",
    "display" : "TRATAMIENTO FIBROSIS QUISTICA LEVE (ENZIMAS PANCREATICAS Y VITAMINAS LIPOSOLUBLES AQUA A.D.E.K.)¿"
  },
  {
    "code" : "3004002",
    "display" : "TRATAMIENTO FIBROSIS QUISTICA MODERADA (ENZIMAS PANCREATICAS, LINEZOLIDA, NEBULIZACION RH-DORNASA-ALFA Y VITAMINAS LIPOSOLUBLES AQUA A.D.E.K.)¿"
  },
  {
    "code" : "3004003",
    "display" : "TRATAMIENTO FIBROSIS QUISTICA GRAVE (ENZIMAS PANCREATICAS, LINEZOLIDA, NEBULIZACION RH-DORNASA-ALFA Y VITAMINAS LIPOSOLUBLES AQUA A.D.E.K.)¿"
  },
  {
    "code" : "3007001",
    "display" : "CONFIRMACION Y TRATAMIENTO INFARTO AGUDO DEL MIOCARDIO URGENCIA SIN TROMBOLISIS"
  },
  {
    "code" : "3007002",
    "display" : "TRATAMIENTO MEDICO IAM"
  },
  {
    "code" : "3101002",
    "display" : "ETAPIFICACION CANCER CERVICOUTERINO INVASOR"
  },
  {
    "code" : "3101003",
    "display" : "SEGUIMIENTO CACU PREINVASOR"
  },
  {
    "code" : "3102001",
    "display" : "TRATAMIENTO 1° AÑO PACIENTES CON DM TIPO 1 (INCLUYE DESCOMPENSACIONES)"
  },
  {
    "code" : "3102002",
    "display" : "CONTROL Y TRATAMIENTO DE DIABETES EN PACIENTE ANTIGUO(VALOR TRAT.MENSUAL)"
  },
  {
    "code" : "3103001",
    "display" : "ATENCION PROFESIONAL Y TRATAMIENTO A PACIENTE CON DIAGNOSTICO DE ESQUIZOFRENIA(PRIMER BROTE)"
  },
  {
    "code" : "3103002",
    "display" : "ESQUIZOFRENIA Y PSICOSIS NO ORGANICA"
  },
  {
    "code" : "3103003",
    "display" : "TRATAMIENTO DEPRESION CON PSICOSIS, TRASTORNO BIPOLAR, ALTO RIESGO SUICIDA, O REFRACTARIEDAD AÑO 1"
  },
  {
    "code" : "3103004",
    "display" : "TRASTORNO BIPOLAR, TRAT. AMBULATORIO, NIVEL ESPECIALIZADO (TRAT. MENSUAL)"
  },
  {
    "code" : "3103005",
    "display" : "TRASTORNOS DE ANSIEDAD Y DEL COMPORTAMIENTO, TRAT. AMBULATORIO NIVEL ESPECIALIZADO"
  },
  {
    "code" : "3103006",
    "display" : "TRASTORNOS MENTALES ORGÁNICOS, TRATAMIENTO AMBULATORIO NIVEL ESPECIALIZADO (VALOR MENSUAL)"
  },
  {
    "code" : "3103007",
    "display" : "TRASTORNOS GENERALIZADOS DEL DESARROLLO, TRAT. AMBULATORIO NIVEL ESPECIALIZADO (TRAT. MENSUAL)"
  },
  {
    "code" : "3103008",
    "display" : "TRASTORNOS HIPERCINETICOS, TRAT. AMBULATORIO NIVEL ESPECIALIZADO"
  },
  {
    "code" : "3103009",
    "display" : "TRASTORNOS HIPERCINETICOS AÑO 2"
  },
  {
    "code" : "3103010",
    "display" : "TRASTORNOS DEL COMPORTAMIENTO Y EMOCIONALES DE LA INFANCIA Y ADOLESCENCIA, TRAT. AMBULATORIO NIVEL ESPECIALIZADO"
  },
  {
    "code" : "3103011",
    "display" : "VIOLENCIA INTRAFAMILIAR - VIF"
  },
  {
    "code" : "3103012",
    "display" : "MALTRATO INFANTIL"
  },
  {
    "code" : "3103013",
    "display" : "PROGRAMA PRAIS, ACOGIDA, ACREDITACION E INGRESO (1° CONSULTA)"
  },
  {
    "code" : "3103014",
    "display" : "PLAN AMBULATORIO BASICO ALCOHOL Y DROGAS ADULTO 6 MESES (VALOR MENSUAL)"
  },
  {
    "code" : "3103015",
    "display" : "PLAN AMBULATORIO INTENSIVO DE ALCOHOL Y DROGAS EN ADULTO 8 MESES (VALOR MENSUAL)"
  },
  {
    "code" : "3103016",
    "display" : "PLAN RESIDENCIAL ALCOHOL Y DROGAS ADULTO 12 MESES (VALOR MENSUAL)"
  },
  {
    "code" : "3103017",
    "display" : "PLAN DESINTOXICACION OH Y DROGAS EN INFANTO ADOLESCENTES (CORTA ESTADIA) (NO CONACE)"
  },
  {
    "code" : "0301100",
    "display" : "LEUCOCITOS AISLADOS POR TECNICA DE FLUORESCENCIA"
  },
  {
    "code" : "5701001",
    "display" : "GLUCOCEREBROSIDASA MANOSA TERMINAL RECOMBINANTE"
  },
  {
    "code" : "3902001",
    "display" : "SALBUTAMOL 200 DOSIS (100 UG)"
  },
  {
    "code" : "3902002",
    "display" : "CORTICOIDE INHALATORIO/BETA2 DE ACCION PROLONGADA"
  },
  {
    "code" : "3902003",
    "display" : "TEOFILINA ANH CM 200MG"
  },
  {
    "code" : "3902004",
    "display" : "PREDNISONA 5 MG"
  },
  {
    "code" : "3902005",
    "display" : "Desloratadina 5 MG"
  },
  {
    "code" : "3902006",
    "display" : "IPATROPIO BROMURO INH. 20 MCG/1DO FC 200 DOSIS"
  },
  {
    "code" : "1104001",
    "display" : "LEVODOPA-CARBIDOPA"
  },
  {
    "code" : "1104002",
    "display" : "LEVODOPA-BENSERAZIDA"
  },
  {
    "code" : "1104003",
    "display" : "CLORHIDRATO DE PRAMIPEXOLE CM 0,25"
  },
  {
    "code" : "1104004",
    "display" : "CLORHIDRATO DE PRAMIPEXOLE CM 1 MG"
  },
  {
    "code" : "1104005",
    "display" : "TRIHEXIFENIDILO CLORHIDRATO"
  },
  {
    "code" : "1104006",
    "display" : "QUETIAPINA"
  },
  {
    "code" : "0101201",
    "display" : "CONSULTORIA DE NEUROLOGO EN JUNTA MEDICA EN APS"
  },
  {
    "code" : "0405000",
    "display" : "RESONANCIA NUCLEAR MAGNETICA"
  },
  {
    "code" : "3002205",
    "display" : "LEUCEMIA LINFATICA CRONICA"
  },
  {
    "code" : "2702102",
    "display" : "PULIDO RADICULAR"
  },
  {
    "code" : "1703361",
    "display" : "CARDIOCIRUGIA CORONARIA SIN CEC"
  },
  {
    "code" : "1701231",
    "display" : "ANGIOPLASTIA DE URGENCIA"
  },
  {
    "code" : "2104313",
    "display" : "INTERVENCION QUIRURGICA INTEGRAL ESCOLIOSIS NEUROMUSCULAR"
  },
  {
    "code" : "1104100",
    "display" : "MICRO EMBOLIZACIONES MAV"
  },
  {
    "code" : "1802122",
    "display" : "CIRUGIA BARIATRICA"
  },
  {
    "code" : "1802268",
    "display" : "INTERVENCION QUIRURGICA CANCER COLORECTAL"
  },
  {
    "code" : "2003215",
    "display" : "INTERVENCION QUIRURGICA CANCER DE OVARIO"
  },
  {
    "code" : "0503002",
    "display" : "BRAQUITERAPIA ALTA TASA"
  },
  {
    "code" : "2104353",
    "display" : "PROTESIS DE RODILLA HEMOFILICOS"
  },
  {
    "code" : "2104342",
    "display" : "PROTESIS DE HOMBRO HEMOFILICOS"
  },
  {
    "code" : "0903115",
    "display" : "PERITAJE JUDICIAL PSIQUIÁTRICO A MENORES (POR EVENTO)"
  },
  {
    "code" : "0903116",
    "display" : "PERITAJE JUDICIAL PSICOLÓGICO A MENORES (POR EVENTO)"
  },
  {
    "code" : "2104359",
    "display" : "OTRAS CIRUGIAS PERIARTICULARES HEMOFILICOS"
  },
  {
    "code" : "2104198",
    "display" : "PIE PLANO, TRAT. QUIR. (CUALQUIER TECNICA)"
  },
  {
    "code" : "2106002",
    "display" : "RETIRO DE PLACAS RECTAS O ANGULADAS"
  },
  {
    "code" : "2106003",
    "display" : "RETIRO DE TORNILLOS, CLAVOS, AGUJAS DE OSTEOSINTESIS O SIMILARES"
  },
  {
    "code" : "2104196",
    "display" : "PIE BOT U OTRAS MALFORMACIONES CONGENITAS, TRAT. QUIR. (CUALQUIER TECNICA)"
  },
  {
    "code" : "2107005",
    "display" : "FRACTURAS MEDIANAS (DIAFISIS HUMERAL, RADIAL, CUBITAL, DIAFISIS FEMORAL, TIBIAL, PERONEAL, CLAVICULAR, PLATILLOS TIBIALES)"
  },
  {
    "code" : "2107002",
    "display" : "LUXACION (COLUMNA, CADERA, PELVIS)"
  },
  {
    "code" : "2104194",
    "display" : "ORTEJOS EN GARRA, TRAT. QUIR., CUALQ. NUMERO (CUALQ. TECNICA)"
  },
  {
    "code" : "2104201",
    "display" : "TENORRAFIA EXTENSORES"
  },
  {
    "code" : "2104195",
    "display" : "ORTEJOS, AMPUTACION, UNO O MAS DEL MISMO PIE"
  },
  {
    "code" : "2107004",
    "display" : "FRACTURAS MAYORES (COLUMNA, PELVIS, SUPRACONDILEA, CODO, EPIFISIS FEMORALES)"
  },
  {
    "code" : "2107006",
    "display" : "FRACTURAS MENORES (EL RESTO)"
  },
  {
    "code" : "2107001",
    "display" : "LUXACIONES DE ARTICULACIONES MEDIANAS (HOMBRO, CODO, RODILLA, TOBILLO, MUÑECA, TARSO Y ESTERNOCLAVICULAR)"
  },
  {
    "code" : "2107008",
    "display" : "TRATAMIENTO FUNCIONAL CON TECNICA DE SARMIENTO Y SIMILARES - EXTREMIDAD SUPERIOR"
  },
  {
    "code" : "1802102",
    "display" : "INCISIONAL O EVISCERACION POST-OP. SIN RESECCION INTESTINAL"
  },
  {
    "code" : "1802103",
    "display" : "INGUINAL, CRURAL, UMBILICAL, DE LA LINEA BLANCA O SIMILARES, RECIDIVADA O NO, SIMPLE O ESTRANGULADA S/RESECCION INTEST. C/U"
  },
  {
    "code" : "1101140",
    "display" : "TRATAMIENTO NO FARMACOLOGICO ESCLEROSIS MULTIPLE REMITENTE RECURRENTE (CONSULTAS Y EXAMENES,SIN FARMACOS)"
  },
  {
    "code" : "3902007",
    "display" : "METILPREDNISOLONA"
  },
  {
    "code" : "0305100",
    "display" : "CARGA VIRAL VHB"
  },
  {
    "code" : "3902008",
    "display" : "ANTIVIRAL TENOFOVIR O ENTECAVIR"
  },
  {
    "code" : "3902009",
    "display" : "PEGINTERFERON ALFA 2A O PEGINTERFERON ALFA 2B"
  },
  {
    "code" : "3902010",
    "display" : "LAMIVUDINA"
  },
  {
    "code" : "3902011",
    "display" : "PEGINTERFERON ALFA 2A O PEGINTERFERON ALFA 2B"
  },
  {
    "code" : "0305182",
    "display" : "REACCION DE POLIMERASA EN CADENA (P.C.R.), VIRUS INFLUENZA, VIRUS HERPES, CITOMEGALOVIRUS, HEPATITIS C, MYCOBACTERIA TBC, C/U (INCLUYE TOMA MUESTRA HISOPADO NASOFARINGEO)."
  },
  {
    "code" : "0305201",
    "display" : "DETERMINACION GENOTIPO VIRAL"
  },
  {
    "code" : "3902012",
    "display" : "PEGINTERFERON ALFA 2A"
  },
  {
    "code" : "3902013",
    "display" : "PEGINTERFERON ALFA 2B"
  },
  {
    "code" : "3902014",
    "display" : "RIBAVIRINA"
  },
  {
    "code" : "0305200",
    "display" : "CARGA VIRAL VHC"
  },
  {
    "code" : "3903001",
    "display" : "ETANERCEPT"
  },
  {
    "code" : "3903002",
    "display" : "INFLIXIMAB"
  },
  {
    "code" : "3903013",
    "display" : "PRESTACION"
  },
  {
    "code" : "2401061",
    "display" : "RESCATE SIMPLE Y /O TRASLADO EN MOVIL"
  },
  {
    "code" : "2401062",
    "display" : "RESCATE PROFESIONALIZADO Y/O TRASLADO PACIENTE COMPLEJO MOVIL 2"
  },
  {
    "code" : "2501033",
    "display" : "ACCESO VASCULAR CON PROTESIS EN EXTREMIDAD SUPERIOR"
  },
  {
    "code" : "2501034",
    "display" : "REPARACION DE FISTULA DISFUNCIONANTE U OCLUIDA"
  },
  {
    "code" : "3903003",
    "display" : "SOMATROTOPINA"
  },
  {
    "code" : "3005005",
    "display" : "RECHAZO TRASPLANTE RENAL"
  },
  {
    "code" : "3005103",
    "display" : "DROGA INMUNOSUPRESORA PROTOCOLO 2A"
  },
  {
    "code" : "3002037",
    "display" : "TRATAMIENTO QUIMIOTERAPIA RECIDIVA CANCER CERVICOUTERINO INVASOR"
  },
  {
    "code" : "3104101",
    "display" : "ETAPIFICACION CANCER DE MAMA"
  },
  {
    "code" : "3106104",
    "display" : "HOSPITALIZACION POR QUIMIOTERAPIA"
  },
  {
    "code" : "1105102",
    "display" : "REHABILITACION 1ER Y 2° AÑO PACIENTE CON ESPINA BIFIDA ABIERTA"
  },
  {
    "code" : "5402005",
    "display" : "SEGUIMIENTO AÑO 3 EPILEPSIA NO REFRACTARIA"
  },
  {
    "code" : "5402006",
    "display" : "SEGUIMIENTO AÑO 4 EPILEPSIA NO REFRACTARIA"
  },
  {
    "code" : "3904001",
    "display" : "TRATAMIENTO MEDICAMENTOSO Y SEGUIMIENTO ACROMEGALIA"
  },
  {
    "code" : "3904002",
    "display" : "TRATAMIENTO DIABETES INSIPIDA"
  },
  {
    "code" : "3002305",
    "display" : "QUIMIOTERAPIA LEUCEMIA MIELOIDE CRONICA: TRATAMIENTO INHIBIDOR TIROSIN KINASA"
  },
  {
    "code" : "3002206",
    "display" : "QUIMIOTERAPIA LEUCEMIA AGUDA: RECAIDA DE LEUCEMIA NO LINFOBLASTICA - LEUCEMIA MIELOIDE (LNLA)"
  },
  {
    "code" : "3004004",
    "display" : "TRATAMIENTO FARMACOLOGICO CON TOBRAMICINA PARA PACIENTES CON FIBROSIS QUISTICA GRAVE"
  },
  {
    "code" : "0204102",
    "display" : "DIA CAMA HOSPITALIZACION INTEGRAL COMPLEJA PACIENTE"
  },
  {
    "code" : "0204103",
    "display" : "CIRUGIA REPARADORA PACIENTE QUEMADO CRITICO"
  },
  {
    "code" : "0204104",
    "display" : "CIRUGIA REPARADORA PACIENTE QUEMADO SOBREVIDA EXCEPCIONAL"
  },
  {
    "code" : "3103204",
    "display" : "TRATAMIENTO DEPRESION MODERADA"
  },
  {
    "code" : "3103205",
    "display" : "TRATAMIENTO DEPRESION GRAVE AÑO 1"
  },
  {
    "code" : "3902015",
    "display" : "INMUNOMODULADOR"
  },
  {
    "code" : "2104413",
    "display" : "INTERVENCION QUIRURGICA INTEGRAL ESCOLIOSIS MIELOMENINGOCELE"
  },
  {
    "code" : "3301003",
    "display" : "TRATAMIENTO DE EVENTOS GRAVES PARA PERSONAS MENORES DE 15 AÑOS"
  },
  {
    "code" : "3301004",
    "display" : "TRATAMIENTO DE EVENTOS NO GRAVES PARA PERSONAS DE 15 AÑOS Y MAS"
  },
  {
    "code" : "3301005",
    "display" : "TRATAMIENTO DE EVENTOS NO GRAVES PARA PERSONAS MENORES DE 15 AÑOS"
  },
  {
    "code" : "3002201",
    "display" : "TRATAMIENTO TUMORES SOLIDOS EN MENORES DE 15 AÑOS"
  },
  {
    "code" : "3002202",
    "display" : "TRATAMIENTO LINFOMA EN MENORES DE 15 AÑOS"
  },
  {
    "code" : "3002203",
    "display" : "TRATAMIENTO LEUCEMIA EN MENORES DE 15 AÑOS"
  },
  {
    "code" : "1703107",
    "display" : "ENDOPROTESIS AORTO ABDOMINAL O AORTO TORAXICA"
  },
  {
    "code" : "1703164",
    "display" : "EXTRACCION ENDOVASCULAR DE ELECTRODOS DE DISPOSITIVOS IMPLANTADOS (MARCAPASOS, DESFIBRILADORES O RESINCRONIZADORES)"
  },
  {
    "code" : "1704143",
    "display" : "TRASPLANTE PULMON"
  },
  {
    "code" : "3002117",
    "display" : "SARCOMA DE EWING"
  },
  {
    "code" : "2501140",
    "display" : "TRASPLANTE MEDULA AUTOLOGO ADULTO"
  },
  {
    "code" : "2501042",
    "display" : "TRASPLANTE MEDULA DE CORDON"
  },
  {
    "code" : "2501043",
    "display" : "TRASPLANTE HAPLOIDÉNTICO INMUNOGENÉTICO PEDIÁTRICO"
  },
  {
    "code" : "2104225",
    "display" : "INTERVENCION QUIRURGICA SARCOMA DE EWING ADULTO"
  },
  {
    "code" : "0508001",
    "display" : "RADIOTERAPIA EXTERNA CANCER GASTRICO"
  },
  {
    "code" : "0508002",
    "display" : "RADIOTERAPIA CORPORAL TOTAL"
  },
  {
    "code" : "0508003",
    "display" : "RADIOTERAPIA CON INTENSIDAD MODULADA"
  },
  {
    "code" : "0305064",
    "display" : "ESTUDIOS PACIENTES EN MANTENCION BASE POR PACIENTE"
  },
  {
    "code" : "0305065",
    "display" : "NUEVOS RECEPTORES CADAVERES"
  },
  {
    "code" : "0305066",
    "display" : "ESTUDIO RECEPTOR DONANTE CADAVER"
  },
  {
    "code" : "0305067",
    "display" : "ESTUDIO RECEPTOR DONANTE VIVO"
  },
  {
    "code" : "6003001",
    "display" : "OBSTRUCCION INTESTINAL EN RECIEN NACIDOS"
  },
  {
    "code" : "6003002",
    "display" : "DEFECTOS DE PARED ABDOMINAL EN RECIEN NACIDOS"
  },
  {
    "code" : "6003003",
    "display" : "MALFORMACIONES ANORECTALES Y UROLOGICAS EN RECIEN NACIDOS"
  },
  {
    "code" : "6003004",
    "display" : "ATRESIA ESOFAGICA EN RECIEN NACIDOS"
  },
  {
    "code" : "6003005",
    "display" : "ENTEROCOLITIS NECROTIZANTE EN RECIEN NACIDOS (HASTA 3 MESES)"
  },
  {
    "code" : "6003006",
    "display" : "MALFORMACIONES PARED TORACICA (NIÑOS HASTA 15 AÑOS) (INCL. PECTUM EXCAVATUM, CARINATUM, OTROS)"
  },
  {
    "code" : "0903009",
    "display" : "DIA REHABILITACION III (PACIENTE DESESTABILIZADO)"
  },
  {
    "code" : "0903010",
    "display" : "DIA REHABILITACION V (PAC. CON ENF. ORGANICAS Y PSIQUIATRICAS)"
  },
  {
    "code" : "3905001",
    "display" : "GLAUCOMA TERAPIA FARMACOLOGICA TOPICA"
  },
  {
    "code" : "0601129",
    "display" : "TRATAMIENTO MEDICO LUMBAGO"
  },
  {
    "code" : "0601130",
    "display" : "TRATAMIENTO MEDICO LUMBOCIATICA"
  },
  {
    "code" : "7002009",
    "display" : "TRATAMIENTO Y REHABILITACION DE LA SECUELA DE GUILLAIN BARRE"
  },
  {
    "code" : "7002010",
    "display" : "TRATAMIENTO Y REHABILITACION DE MIELOMENINGOCELE"
  },
  {
    "code" : "1103127",
    "display" : "ANEURISMA DE ALTA COMPLEJIDAD"
  },
  {
    "code" : "2501225",
    "display" : "IMPLANTE DESFIBRILADOR"
  },
  {
    "code" : "1703261",
    "display" : "CIRUGIA CEC MAYOR ALTA COMPLEJIDAD PEDIATRICA"
  },
  {
    "code" : "3002136",
    "display" : "QUIMIOTERAPIA CANCER MAMA, ETAPA IV"
  },
  {
    "code" : "3002137",
    "display" : "QUIMIOTERAPIA CANCER MAMA, ETAPA IV METASTASIS OSEA"
  },
  {
    "code" : "1703253",
    "display" : "IMPLANTACION MARCAPASOS BICAMERAL DDD"
  },
  {
    "code" : "1703248",
    "display" : "RECAMBIO MARCAPASOS BICAMERAL DDD CON O SIN ELECTRODOS"
  },
  {
    "code" : "5002101",
    "display" : "CONTROL PACIENTE DM TIPO 2 NIVEL ESPECIALIDAD"
  },
  {
    "code" : "3108110",
    "display" : "CIRUGIA PRIMARIA: 1º INTERVENCION"
  },
  {
    "code" : "3108210",
    "display" : "CIRUGIA PRIMARIA: 2º INTERVENCION"
  },
  {
    "code" : "3114214",
    "display" : "SEGUIMIENTO POST QUIRURGICO RETINOPATIA DEL PREMATURO 2º AÑO"
  },
  {
    "code" : "3114412",
    "display" : "SEGUIMIENTO PACIENTES DISPLASIA BRONCOPULMONAR 2º AÑO"
  },
  {
    "code" : "0506000",
    "display" : "ROENTGENTERAPIA"
  },
  {
    "code" : "0503000",
    "display" : "BRAQUITERAPIA"
  },
  {
    "code" : "3114314",
    "display" : "HIPOACUSIA NEUROSENSORIAL BILATERAL DEL PREMATURO: REHABILITACION HIPOACUSIA DEL PREMATURO (AUDIFONO E IMPLANTE COCLEAR) 2º AÑO"
  },
  {
    "code" : "3102101",
    "display" : "EVALUACION INICIAL HOSPITALIZADO: PACIENTES NUEVOS SIN CETOACIDOSIS DM TIPO 1"
  },
  {
    "code" : "3102102",
    "display" : "EVALUACION INICIAL HOSPITALIZADO: PACIENTES NUEVOS CON CETOACIDOSIS DM TIPO 1"
  },
  {
    "code" : "5001001",
    "display" : "EVALUACION INICIAL PACIENTE DM TIPO 2"
  },
  {
    "code" : "1703163",
    "display" : "CIERRE COMUNICACIONES INTRAURICULARES CON DISPOSITIVO, PEDIATRICA"
  },
  {
    "code" : "3103203",
    "display" : "TRATAMIENTO DEPRESION LEVE NIVEL PRIMARIO"
  },
  {
    "code" : "5301002",
    "display" : "MONITOREO CONTINUO DE PRESION ARTERIAL"
  },
  {
    "code" : "5303001",
    "display" : "CONTROL EN PACIENTES HIPERTENSOS SIN TRATAMIENTO FARMACOLOGICO NIVEL PRIMARIO"
  },
  {
    "code" : "5303002",
    "display" : "EXAMENES ANUALES PARA PACIENTES HIPERTENSOS EN CONTROL EN NIVEL PRIMARIO"
  },
  {
    "code" : "5402103",
    "display" : "SEGUIMIENTO AÑO 3 EPILEPSIA NO REFRACTARIA"
  },
  {
    "code" : "5402104",
    "display" : "SEGUIMIENTO AÑO 4 EPILEPSIA NO REFRACTARIA"
  },
  {
    "code" : "1703150",
    "display" : "CIRUGIA URGENCIA PEDIATRICA SIN CEC"
  },
  {
    "code" : "1703151",
    "display" : "CIERRE DE DUCTOS POR CIRUGIA PREMATUROS"
  },
  {
    "code" : "3007101",
    "display" : "CONFIRMACION Y TRATAMIENTO INFARTO AGUDO DEL MIOCARDIO URGENCIA CON TROMBOLISIS"
  },
  {
    "code" : "2104329",
    "display" : "INTERVENCION QUIR. INTEGRAL CON RECAMBIO DE PROTESIS DE CADERA TOTAL"
  },
  {
    "code" : "2201202",
    "display" : "OXIDO NITROSO"
  },
  {
    "code" : "3106202",
    "display" : "BANCO DE ESPERMIOS"
  },
  {
    "code" : "3002040",
    "display" : "QUIMIOTERAPIA CANCER DE COLON"
  },
  {
    "code" : "3002041",
    "display" : "QUIMIOTERAPIA CANCER DE RECTO"
  },
  {
    "code" : "3002042",
    "display" : "QUIMIOTERAPIA CANCER ANAL"
  },
  {
    "code" : "3002050",
    "display" : "OSTEOSARCOMA"
  },
  {
    "code" : "1703200",
    "display" : "TRASPLANTE CORAZON"
  },
  {
    "code" : "1703201",
    "display" : "CONTROLES POST TRASPLANTE CORAZÓN (INCLUYE BIOPSIA MIOCÁRDICA)"
  },
  {
    "code" : "3103019",
    "display" : "PLAN AMBULATORIO INTENSIVO DE ALCOHOL Y DROGAS INFANTO ADOLESCENTES 8 MESES (VALOR MENSUAL)"
  },
  {
    "code" : "3103020",
    "display" : "PLAN AMBULATORIO COMUNITARIO INFANTO ADOLESCENTES-ALCOHOL Y DROGAS 12 MESES (VALOR MENSUAL)"
  },
  {
    "code" : "3103021",
    "display" : "PLAN RESIDENCIAL ALCOHOL Y DROGAS INFANTO ADOLESCENTES 12 MESES (VALOR MENSUAL)"
  },
  {
    "code" : "3103022",
    "display" : "SEGUIMIENTO OH Y DROGAS EN INFANTO ADOLESCENTES NO AUGE"
  },
  {
    "code" : "3103023",
    "display" : "EVALUACIÓN Y TRATAMIENTO INTEGRAL POR EQUIPO PSIQUIATRÍA FORENSE EN POBLACIÓN PENAL INTERNALIZADA EN UEPI (VALOR MENSUAL)"
  },
  {
    "code" : "3103024",
    "display" : "TRATAMIENTO PSIQUIÁTRICO INTEGRAL EN POBLACIÓN PENAL INTERNADA EN UPFT (VALOR MENSUAL)"
  },
  {
    "code" : "0903012",
    "display" : "EXÁMENES MENTALES PRELIMINARES (POR EVENTO)"
  },
  {
    "code" : "0903013",
    "display" : "EXÁMENES PRELIMINARES EN DROGAS A MENORES (POR EVENTO)"
  },
  {
    "code" : "0903014",
    "display" : "EVALUACION DIAGNOSTICA EN DROGAS A MENORES"
  },
  {
    "code" : "0903015",
    "display" : "PERITAJES JUDICIAL PSIQUIÁTRICO ADULTOS (POR EVENTO)"
  },
  {
    "code" : "0903016",
    "display" : "PERITAJE JUDICIAL PSICOLÓGICO ADULTOS (POR EVENTO)"
  },
  {
    "code" : "0903017",
    "display" : "PERITAJE PSIQUIATRICO EN DROGAS ADULTOS (POR EVENTO)"
  },
  {
    "code" : "3002060",
    "display" : "MIELOMA MULTIPLE QUIMIOTERAPIA VAD"
  },
  {
    "code" : "3002160",
    "display" : "MIELOMA REFRACTARIO"
  },
  {
    "code" : "0702006",
    "display" : "TRANSFUSION EN ADULTO (ATENCION AMBULATORIA, ATENCION CERRADA SIEMPRE QUE LA ADMINISTRACION SEA CONTROLADA POR PROFESIONAL ESPECIALISTA, TECNOLOGO MEDICO O MEDICO RESPONSABLE)"
  },
  {
    "code" : "3002105",
    "display" : "LEUCEMIA MIELOIDE CRONICA: TRATAMIENTO HIDROXICARBAMIDA"
  },
  {
    "code" : "3002133",
    "display" : "RESCATE DE LEUCEMIAS AGUDA"
  },
  {
    "code" : "3002106",
    "display" : "LEUCEMIA MIELOIDE (LNLA) AGUDA"
  },
  {
    "code" : "2701113",
    "display" : "KIT ASEO BUCAL"
  },
  {
    "code" : "2701114",
    "display" : "SUTURA INTRAORAL"
  },
  {
    "code" : "1101101",
    "display" : "KIT PRESION INTRA CRANEANA (PIC)"
  },
  {
    "code" : "0102105",
    "display" : "CONSULTA POR TECNOLOGO MEDICO"
  },
  {
    "code" : "3002019",
    "display" : "TESTICULO"
  },
  {
    "code" : "4101021",
    "display" : "ESTABLECIMIENTOS DE HOSPEDAJE"
  },
  {
    "code" : "4101022",
    "display" : "ESTABLECIMIENTOS RECREACIONALES"
  },
  {
    "code" : "4101023",
    "display" : "ESTABLECIMIENTOS EDUCACIONALES"
  },
  {
    "code" : "4101024",
    "display" : "ESTABLECIMIENTOS TERMINALES"
  },
  {
    "code" : "4101025",
    "display" : "FOCO DE VECTORES"
  },
  {
    "code" : "4101026",
    "display" : "CANALES DE REGADIO"
  },
  {
    "code" : "4101027",
    "display" : "CEMENTERIOS"
  },
  {
    "code" : "4101028",
    "display" : "VELATORIOS"
  },
  {
    "code" : "4101029",
    "display" : "CASAS FUNERARIAS"
  },
  {
    "code" : "4101030",
    "display" : "TRANSPORTE DE MATERIAS PRIMAS"
  },
  {
    "code" : "4102001",
    "display" : "AGUAS CONSUMO HUMANO, FISICO-QUIMICO"
  },
  {
    "code" : "4102002",
    "display" : "AGUAS CONSUMO HUMANO, BACTERIOLOGICO"
  },
  {
    "code" : "4102003",
    "display" : "AGUAS CONSUMO HUMANO, CLORO LIBRE Y/O YODO"
  },
  {
    "code" : "4102004",
    "display" : "AGUAS CONSUMO HUMANO, FLUOR"
  },
  {
    "code" : "4102005",
    "display" : "AGUAS SERVIDAS, BACTERIOLOGICO"
  },
  {
    "code" : "4102006",
    "display" : "AGUAS SERVIDAS, VIROLOGICO"
  },
  {
    "code" : "4102007",
    "display" : "AGUAS SERVIDAS, VIBRION CHOLERAE"
  },
  {
    "code" : "4102008",
    "display" : "AGUAS SERVIDAS, FISICO- QUIMICO"
  },
  {
    "code" : "4102009",
    "display" : "CANALES DE REGADIO, V. CHOLERAE"
  },
  {
    "code" : "4102010",
    "display" : "CANALES DE REGADIO, BACTERIOLOGICO"
  },
  {
    "code" : "4102011",
    "display" : "AGUAS SUBT. REGADIO, V. CHOLERAE"
  },
  {
    "code" : "4102012",
    "display" : "AGUAS SUBT. REGADIO, BACTERIOLOGICO"
  },
  {
    "code" : "4102013",
    "display" : "ESTAB. RECREACIONALES, CLORO LIBRE"
  },
  {
    "code" : "4102014",
    "display" : "ESTAB. RECREACIONALES, BACTERIOLOGICO"
  },
  {
    "code" : "0901101",
    "display" : "CONSULTA PSIQUIATRICA DE URGENCIA"
  },
  {
    "code" : "3101101",
    "display" : "CONFIRMACION DIAGNOSTICA CANCER CERVICO UTERINO INVASOR"
  },
  {
    "code" : "FALTACODIGO-2",
    "display" : "FALTA OTRO CODIGO PARA DIFERENTES DE Y GO"
  },
  {
    "code" : "1901026",
    "display" : "PERITONEODIALISIS TRATAMIENTO MENSUAL"
  },
  {
    "code" : "FALTACODIGO",
    "display" : "FALTA CODIGO PARA LOS DIFERENTES DE Y GO."
  },
  {
    "code" : "1105002",
    "display" : "CONFIRMACION DIAG. DISRAFIA ABIERTA"
  },
  {
    "code" : "1105003",
    "display" : "SEGUIMIENTO DISRAFIA ESPINAL ABIERTA"
  },
  {
    "code" : "1105004",
    "display" : "SEGUIMIENTO DISRAFIA ESPINAL CERRADA"
  },
  {
    "code" : "2401144",
    "display" : "TRASLADO DESDE ISLA DE PASCUA A SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401146",
    "display" : "TRASLADOS DESDE I REGION A SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401147",
    "display" : "TRASLADOS DESDE II REGION A SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401148",
    "display" : "TRASLADOS DESDE III REGION A SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401149",
    "display" : "TRASLADOS DESDE IV REGION A SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401150",
    "display" : "TRASLADOS DESDE IX REGION A SANTIAGO O VICEVERSA"
  },
  {
    "code" : "2401151",
    "display" : "TRASLADOS DESDE VIII REGION A SANTIAGO O VICEVERSA"
  },
  {
    "code" : "8001001",
    "display" : "FACTOR VIII PLASMATICO 250 UI"
  },
  {
    "code" : "8001002",
    "display" : "FACTOR VIII PLASMATICO 500 UI"
  },
  {
    "code" : "8001003",
    "display" : "FACTOR VIII PLASMATICO 1000 UI"
  },
  {
    "code" : "8001004",
    "display" : "FACTOR IX PLASMATICO. 500-600 UI"
  },
  {
    "code" : "8001005",
    "display" : "FACTOR IX PLASMATICO. 1000-1200 UI"
  },
  {
    "code" : "8001006",
    "display" : "FACTOR VII RECOMBINANTE 2 MG"
  },
  {
    "code" : "8001007",
    "display" : "COMPLEJO PROTOMBINICO ACTIVADO 1000 UI"
  },
  {
    "code" : "8001008",
    "display" : "FACTOR PLASMATICO FVW/FVIII RELACION > A 1.2 500 UI 500 UI FVW"
  },
  {
    "code" : "8001009",
    "display" : "FACTOR PLASMATICO FVW/FVIII RELACION > A 1.2 500 UI 1000 UI FVW"
  },
  {
    "code" : "8003001",
    "display" : "PEG-INTERFERON ALFA 2B 80 MCG/ML FA"
  },
  {
    "code" : "8003002",
    "display" : "PEG-INTERFERON ALFA 2B 100 MCG/ML FA"
  },
  {
    "code" : "8003003",
    "display" : "PEG-INTERFERON ALFA 2B 120 MCG/ML FA"
  },
  {
    "code" : "8003004",
    "display" : "PEG-INTERFERON ALFA 2B 150 MCG/ML FA"
  },
  {
    "code" : "8003005",
    "display" : "PEG-INTERFERON ALFA 2A 180 MCG/ML FA"
  },
  {
    "code" : "8003006",
    "display" : "RIBAVIRINA CP 200 MG"
  },
  {
    "code" : "8004001",
    "display" : "TENOFOVIR DISOPROXIL 300 MG COMPRIMIDOS RECUBIERTOS."
  },
  {
    "code" : "8004002",
    "display" : "ENTECAVIR COMPRIMIDOS RECUBIERTOS 0,5 MG"
  },
  {
    "code" : "8004003",
    "display" : "PEG-INTERFERON ALFA 2A O ALFA 2B DOSIS MCG/ML JERINGA O LAPIZ PRECARGADO"
  },
  {
    "code" : "8004004",
    "display" : "LAMIVUDINA SOLUCION ORAL 10 MG/ML O 50 MG/5ML"
  },
  {
    "code" : "8005001",
    "display" : "INTERFERON BETA 1A RECOMB. 6.000.000 U.I./ 0,5 ML (30 MCG.) SOL INY. JER PRE"
  },
  {
    "code" : "8005002",
    "display" : "INTERFERON BETA 1A RECOMB. 22 MCG/ 0,5 ML SOL INY. JER PRE"
  },
  {
    "code" : "8005003",
    "display" : "INTERFERON BETA 1A RECOMB. 44 MCG/ 0,5 ML SOL INY. JER PRE"
  },
  {
    "code" : "8005004",
    "display" : "GLATIRAMER ACETATO 20 MG/ ML JER-PRE"
  },
  {
    "code" : "8006001",
    "display" : "ETANERCEPT 25 MG/0,5 ML JER PRE"
  },
  {
    "code" : "8006002",
    "display" : "ETANERCEPT 50 MG/ML JER PRE"
  },
  {
    "code" : "8006003",
    "display" : "ETANERCEPT 25 MG LIOF. P/SOL INY."
  },
  {
    "code" : "8007001",
    "display" : "ETANERCEPT SOLUCION INYECTABLE 50 MG/1 ML"
  },
  {
    "code" : "8007002",
    "display" : "ADALIMUMAB SOLUCION INYECTABLE 40 MG/0,8 ML"
  },
  {
    "code" : "8007003",
    "display" : "RITUXIMAB SOLUCION INYECTABLE 10 MG/ML, VIAL 50 ML"
  },
  {
    "code" : "8008001",
    "display" : "INMUNOGLOBULINA 5% 5G/100M 10G/200ML FAM"
  },
  {
    "code" : "8008002",
    "display" : "SANDOGLOBULINA FRA 6G POLVO LIOFILIZADO"
  },
  {
    "code" : "8009001",
    "display" : "TOXINA BOTULINICA 100 UI FA"
  },
  {
    "code" : "8010001",
    "display" : "SOMATROPINA HUMANA RECOMBINANTE 15 UI SOLUCION INYECTABLE"
  },
  {
    "code" : "8010002",
    "display" : "SOMATROPINA HUMANA RECOMBINANTE 30 UI SOLUCION INYECTABLE"
  },
  {
    "code" : "8010003",
    "display" : "SOMATROPINA HUMANA RECOMBINANTE 45 UI SOLUCION INYECTABLE"
  },
  {
    "code" : "8010004",
    "display" : "SOMATROPINA HUMANA RECOMBINANTE 8 MG 24 UI SOLUCION INYECTABLE"
  },
  {
    "code" : "8011001",
    "display" : "IMIGLUCERASA 400 UI FAM"
  },
  {
    "code" : "8012001",
    "display" : "GALSULFASA 5MG/5ML FAM"
  },
  {
    "code" : "8012002",
    "display" : "LARONIDASA 100 U/ML FAM"
  },
  {
    "code" : "8013001",
    "display" : "IMATINIB 100 MG CP"
  },
  {
    "code" : "8013002",
    "display" : "IMATINIB 400 MG CP"
  },
  {
    "code" : "8013003",
    "display" : "DASATINIB 50 MG CP"
  },
  {
    "code" : "8013004",
    "display" : "DASATINIB 70 MG CP"
  },
  {
    "code" : "8013005",
    "display" : "DASATINIB 100 MG CP"
  },
  {
    "code" : "8013006",
    "display" : "NILOTINIB 200 MG CP"
  },
  {
    "code" : "8014001",
    "display" : "TRASTUZUMAB 440 MG FA"
  },
  {
    "code" : "0206003",
    "display" : "REHABILITACION AMBULATORIA SUBAGUDA INTENSIVA ATAQUE CEREBRO VASCULAR"
  },
  {
    "code" : "0206004",
    "display" : "REHABILITACION PROTESICA AMPUTACION EEII TRANSTIBIAL (INCLUYE PROTESIS)"
  },
  {
    "code" : "0206005",
    "display" : "REHABILITACION PROTESICA AMPUTACION TRANSFEMORAL (INCLUYE PROTESIS)"
  },
  {
    "code" : "0206006",
    "display" : "REHABILITACION PROTESICA DESARTICULADO DE RODILLA (INCLUYE PROTESIS)"
  },
  {
    "code" : "0206007",
    "display" : "REHABILITACION PROTESICA DESARTICULADO DE CADERA (INCLUYE PROTESIS)"
  },
  {
    "code" : "3906001",
    "display" : "PREVENCION Y MANEJO FARMACOLOGICO EN HIPERPARATIROIDISMO SECUNDARIO A ERC"
  },
  {
    "code" : "5004001",
    "display" : "BOMBA INSULINA (INCLUYE INSUMOS)"
  },
  {
    "code" : "6002216",
    "display" : "QUIMIOTERAPIA CANCER PULMON CELULAS NO PEQUEÑAS NO MUTADOS"
  },
  {
    "code" : "6002316",
    "display" : "QUIMIOTERAPIA CANCER PULMON CELULAS NO PEQUEÑAS MUTADOS"
  },
  {
    "code" : "6002416",
    "display" : "QUIMIOTERAPIA CANCER PULMON CELULAS PEQUEÑAS"
  },
  {
    "code" : "3401201",
    "display" : "TRATAMIENTO FARMACOLÓGICO ESTÁNDAR COLITIS ULCEROSA (INCLUYE AZATIOPRINA)"
  },
  {
    "code" : "3401101",
    "display" : "TRATAMIENTO BIOLÓGICO COLITIS ULCEROSA (VALOR ADEMÁS DE PRESTACIONES ASOCIADAS A ESTE TIPO DE TRATAMIENTO, INCLUYE FÁRMACOS NO BIOLÓGICOS)"
  },
  {
    "code" : "3401202",
    "display" : "TRATAMIENTO FARMACOLÓGICO ESTÁNDAR ENFERMEDAD DE CROHN (INCLUYE AZATIOPRINA)"
  },
  {
    "code" : "3401102",
    "display" : "TRATAMIENTO BIOLÓGICOS ENFERMEDAD DE CROHN (VALOR ADEMÁS DE PRESTACIONES ASOCIADAS A ESTE TIPO DE TRATAMIENTO, INCLUYE AZATIOPRINA Y NO INCLUYE BIOLÓGICOS)"
  },
  {
    "code" : "3004402",
    "display" : "TRATAMIENTO FIBROSIS QUISTICA MODERADA (CONSULTAS, EXAMENES Y PROCEDIMIENTOS)"
  },
  {
    "code" : "3004401",
    "display" : "TRATAMIENTO FIBROSIS QUISTICA LEVE (CONSULTAS, EXAMENES Y PROCEDIMIENTOS)"
  },
  {
    "code" : "3004403",
    "display" : "TRATAMIENTO FIBROSIS QUISTICA GRAVE (CONSULTAS, EXAMENES Y PROCEDIMIENTOS)"
  },
  {
    "code" : "0102606",
    "display" : "ATENCION KINESIOLOGICA INTEGRAL AMBULATORIA PACIENTE QUEMADO GRAVE"
  },
  {
    "code" : "0102506",
    "display" : "ATENCION KINESIOLOGICA INTEGRAL AMBULATORIA PACIENTE QUEMADO SOBREVIDA EXCEPCIONAL"
  },
  {
    "code" : "3902000",
    "display" : "TRATAMIENTO FARMACOLOGICO DEL VHC, (CONSULTAS Y EXAMENES, SIN FARMACOS)"
  },
  {
    "code" : "2501133",
    "display" : "INSTALACION CATETER PARA PERITONEODIALISIS"
  },
  {
    "code" : "0302175",
    "display" : "PERFIL BIOQUIMICO ACROMEGALIA"
  },
  {
    "code" : "3107104",
    "display" : "TARV PREVENCION TRANSMISION VERTICAL CAMBIO TRATAMIENTO EMBARAZADA"
  },
  {
    "code" : "3107105",
    "display" : "TARV CAMBIO PRECOZ"
  },
  {
    "code" : "3107204",
    "display" : "TARV PREVENCION TRANSMISION VERTICAL"
  },
  {
    "code" : "3107205",
    "display" : "TARV INICIO NO PRECOZ"
  },
  {
    "code" : "3107304",
    "display" : "TARV PREVENCION TRANSMISION VERTICAL RECIEN NACIDOS"
  },
  {
    "code" : "3107305",
    "display" : "TARV CAMBIO NO PRECOZ"
  },
  {
    "code" : "0102110",
    "display" : "CONSULTA SEGUIMIENTO LEUCEMIA LINFATICA CRONICA PRIMER AÑO"
  },
  {
    "code" : "0101213",
    "display" : "(CONSULTA PRIMER AÑO) SEGUIMIENTO LEUCEMIA LINFATICA CRONICA"
  },
  {
    "code" : "0102106",
    "display" : "ATENCION KINESIOLOGICA INTEGRAL AMBULATORIA - SEGUIMIENTO Y REHABILITACION 2° AÑO PACIENTE QUEMADO GRAVE"
  },
  {
    "code" : "0102107",
    "display" : "ATENCION INTEGRAL POR TERAPEUTA OCUPACIONAL - SEGUIMIENTO Y REHABILITACION 2° AÑO PACIENTE QUEMADO GRAVE"
  },
  {
    "code" : "0101312",
    "display" : "(CONSULTA) SEGUIMIENTO Y REHABILITACION 2° AÑO PACIENTE QUEMADO CRITICO"
  },
  {
    "code" : "0102206",
    "display" : "ATENCION KINESIOLOGICA INTEGRAL AMBULATORIA - SEGUIMIENTO Y REHABILITACION 2° AÑO PACIENTE QUEMADO CRITICO"
  },
  {
    "code" : "0102207",
    "display" : "ATENCION INTEGRAL PORTERAPEUTA OCUPACIONAL - SEGUIMIENTO Y REHABILITACION 2° AÑO PACIENTE QUEMADO CRITICO"
  },
  {
    "code" : "0101412",
    "display" : "CONSULTA - SEGUIMIENTO Y REHABILITACION 2° AÑO PACIENTE QUEMADO SOBREVIDA EXCEPCIONAL"
  },
  {
    "code" : "0102306",
    "display" : "ATENCION KINESIOLOGICA INTEGRAL AMBULATORIA - SEGUIMIENTO Y REHABILITACION 2° AÑO PACIENTE QUEMADO SOBREVIDA EXCEPCIONAL"
  },
  {
    "code" : "0102307",
    "display" : "ATENCION INTEGRAL POR TERAPEUTA OCUPACIONAL - SEGUIMIENTO Y REHABILITACION 2° AÑO PACIENTE QUEMADO SOBREVIDA EXCEPCIONAL"
  },
  {
    "code" : "0301103",
    "display" : "DIAGNOSTICO - ADENOGRAMA, ESPLENOGRAMA, MIELOGRAMA C/U"
  },
  {
    "code" : "0401170",
    "display" : "DIAGNOSTICO - TORAX (FRONTAL Y LATERAL) (INCLUYE FLUOROSCOPIA) (2 PROY. PANORAMICAS) (2 EXP.)"
  },
  {
    "code" : "0404103",
    "display" : "DIAGNOSTICO - ECOTOMOGRAFIA ABDOMINAL (INCLUYE HIGADO, VIA BILIAR, VESICULA, PANCREAS, RIÑONES, BAZO, RETROPERITONEO Y GRANDES VASOS)"
  },
  {
    "code" : "0702106",
    "display" : "TRATAMIENTO - TRANSFUSION EN ADULTO (ATENCION AMBULATORIA, ATENCION CERRADA SIEMPRE QUE LA ADMINISTRACION SEA CONTROLADA POR PROFESIONAL ESPECIALISTA, TECNOLOGO MEDICO O MEDICO RESPONSABLE)"
  },
  {
    "code" : "1103141",
    "display" : "IMPLANTACION ESTIMULADOR VAGAL EPILEPSIA REFRACTARIA MENORES DE 15 AÑOS"
  },
  {
    "code" : "0801101",
    "display" : "PROCESAMIENTO PAPANICOLAU"
  },
  {
    "code" : "1402157",
    "display" : "INTERVENCION QUIRURGICA INTEGRAL MAXILO FACIAL EN MENORES DE 15 AÑOS (INCLUYE DIAGNOSTICO Y CONTROLES POST QUIRURGICO)"
  },
  {
    "code" : "1602200",
    "display" : "TRATAMIENTO QUIRURGICO DE LESIONES BENIGNAS CUTANEAS, POR ESCISION (HASTA 3 LESIONES)"
  },
  {
    "code" : "1602210",
    "display" : "TRATAMIENTO QUIRURGICO DE LESIONES BENIGNAS CUTANEAS, POR ESCISION (DESDE 4 A 6 LESIONES)"
  },
  {
    "code" : "1602220",
    "display" : "EXTIRPACION DE LESION BENIGNA SUBEPIDERMICA, TUMOR SOLIDO, QUISTE EPIDERMICO Y LIPOMA POR LESION"
  },
  {
    "code" : "1602231",
    "display" : "ONICECTOMIA TOTAL O PARCIAL SIMPLE"
  },
  {
    "code" : "1602232",
    "display" : "CIRUGIA REPARADORA UNGUEAL"
  },
  {
    "code" : "1801101",
    "display" : "GASTRECTOMIA RESECCION ENDOSCOPICA (INCLUYE EVALUACION POST QUIRURGICA)"
  },
  {
    "code" : "1902122",
    "display" : "TRATAMIENTO QUIRURGICO EPISPADIA/HIPOSPADIA PROXIMAL"
  },
  {
    "code" : "1902129",
    "display" : "TRATAMIENTO QUIRURGICO VEJIGA NEUROGENICA"
  },
  {
    "code" : "1902229",
    "display" : "TRATAMIENTO QUIRURGICO EXTROFIA VESICAL (PRIMER TIEMPO)"
  },
  {
    "code" : "2001115",
    "display" : "TRATAMIENTO FERTILIZACION BAJA COMPLEJIDAD"
  },
  {
    "code" : "2003131",
    "display" : "TRATAMIENTO QUIRURGICO SINDROME TRANSFUSION FETO FETAL"
  },
  {
    "code" : "2104242",
    "display" : "PROTESIS TOTAL REVERSA DE HOMBRO"
  },
  {
    "code" : "2104253",
    "display" : "PROTESIS DE RODILLA (NO INCLUYE PROTESIS)"
  },
  {
    "code" : "2104269",
    "display" : "RECONSTRUCCION DE EXTREMIDADES EN MENORES DE 15 AÑOS (INCLUYE DIAGNOSTICO Y CONTROLES POST QUIRURGICO)"
  },
  {
    "code" : "2104379",
    "display" : "LUXOFRACTURA EXPUESTA DE TOBILLO CON OSTEOSINTESIS"
  },
  {
    "code" : "2106001",
    "display" : "RETIRO DE ENDOPROTESIS U OSTEOSINTESIS INTERNAS ARTICULARES O DE COLUMNA VERTEBRAL"
  },
  {
    "code" : "2501141",
    "display" : "TRASPLANTE DE MEDULA ALOGENO ADULTO (INCLUYE SEGUIMIENTO PRIMER AÑO)"
  },
  {
    "code" : "2501241",
    "display" : "SEGUIMIENTO SEGUNDO AÑO TRASPLANTE DE MÉDULA ALÓGENO ADULTO"
  },
  {
    "code" : "2703104",
    "display" : "TRATATAMIENTO QUIRURGICO PSEUDOQUISTE Y QUISTE ODONTOLOGICO"
  },
  {
    "code" : "2703204",
    "display" : "TRATAMIENTO QUIRURGICO TUMOR ODONTOLOGICO"
  },
  {
    "code" : "3401001",
    "display" : "ABLACIÓN TUMORAL"
  },
  {
    "code" : "3401002",
    "display" : "ABLACIÓN QUIMICA DE TUMORES"
  },
  {
    "code" : "0206001",
    "display" : "DIA CAMA REHABILITACION INTEGRAL EN PACIENTE CRONICO DE MEDIANA COMPLEJIDAD"
  },
  {
    "code" : "0206002",
    "display" : "DIA CAMA REHABILITACION INTEGRAL EN PACIENTE CRONICO DE ALTA COMPLEJIDAD"
  },
  {
    "code" : "2104279",
    "display" : "LUXOFRACTURA CERRADA DE TOBILLO CON OSTEOSINTESIS"
  },
  {
    "code" : "2104442",
    "display" : "PROTESIS TOTAL DE HOMBRO"
  },
  {
    "code" : "0601131",
    "display" : "TRATAMIENTO MEDICO DISCOPATIA"
  },
  {
    "code" : "5003003",
    "display" : "TRATAMIENTO ULCERA VENOSA, CURACION PACIENTES HERIDA TIPO 1 Y 2 (A) NO INFECTADOS (2 CURACIONES MENSUALES POR 3 MESES)"
  },
  {
    "code" : "5003004",
    "display" : "TRATAMIENTO ULCERA VENOSA, CURACION PACIENTES HERIDA TIPO 3 Y 4 (B) INFECTADOS (4 CURACIONES MENSUALES POR 4 MESES)"
  },
  {
    "code" : "1701052",
    "display" : "ESTUDIO ELECTROFISIOLOGICO Y ABLACION DE ARRITMIAS CON MAPEO ELECTROANATOMICO ENSITE"
  },
  {
    "code" : "1703154",
    "display" : "MARCAPASO VVI CON RESINCRONISACION CARDIACA"
  },
  {
    "code" : "1703254",
    "display" : "MARCAPASO DDD CON RESINCRONISACION CARDIACA"
  },
  {
    "code" : "1703156",
    "display" : "DESFIBRILADOR VVI CON RESINCRONISACION CARDIACA"
  },
  {
    "code" : "1703256",
    "display" : "DESFIBRILADOR DDD CON RESINCRONISACION CARDIACA"
  },
  {
    "code" : "3007201",
    "display" : "TROMBOLISIS DE URGENCIA INFARTO CEREBRAL"
  },
  {
    "code" : "0305164",
    "display" : "MANTENCION EN LA BASE PACIENTES VALDIVIA-TEMUCO"
  },
  {
    "code" : "0305068",
    "display" : "ESTUDIO RECEPTORES CORAZON-PULMON"
  },
  {
    "code" : "0305069",
    "display" : "ESTUDIO PACIENTES TRASPLANTE MEDULA OSEA"
  },
  {
    "code" : "0203105",
    "display" : "DIA CAMA AGUDA"
  },
  {
    "code" : "0502105",
    "display" : "SINOVIORTESIS EN PACIENTE HEMOFILICO"
  },
  {
    "code" : "0740009",
    "display" : "OFTALMOLOGIA"
  },
  {
    "code" : "0750009",
    "display" : "OTORRINOLARINGOLOGIA"
  },
  {
    "code" : "0711100",
    "display" : "DERMATOLOGIA"
  },
  {
    "code" : "0711500",
    "display" : "NEUROLOGIA INFANTIL"
  },
  {
    "code" : "0710800",
    "display" : "NEFROLOGIA ADULTO"
  },
  {
    "code" : "0780000",
    "display" : "UROLOGIA ADULTO"
  },
  {
    "code" : "0720702",
    "display" : "VASCULAR PERIFERICO"
  },
  {
    "code" : "0710400",
    "display" : "ENDOCRINOLOGIA"
  },
  {
    "code" : "0710300",
    "display" : "CARDIOLOGIA ADULTO"
  },
  {
    "code" : "0730100",
    "display" : "GINECOLOGIA"
  },
  {
    "code" : "0720002",
    "display" : "CIRUGIA ADULTO"
  },
  {
    "code" : "0710002",
    "display" : "MEDICINA INTERNA"
  },
  {
    "code" : "0711002",
    "display" : "REUMATOLOGIA"
  },
  {
    "code" : "0710500",
    "display" : "GASTROENTEROLOGIA"
  },
  {
    "code" : "0770000",
    "display" : "TRAUMATOLOGIA"
  },
  {
    "code" : "1802139",
    "display" : "TRATAMIENTO QUIRURGICO DE LOS TUMORES HEPATICOS"
  },
  {
    "code" : "1701123",
    "display" : "DIAGNOSTICO ENFERMEDAD ARTERIAL OCLUSIVA DE EXTREMIDADES"
  },
  {
    "code" : "1703117",
    "display" : "TRATAMIENTO ENDOVASCULAR ENFERMEDAD ARTERIAL OCLUSIVA DE EXTREMIDADES"
  },
  {
    "code" : "1701114",
    "display" : "DIAGNOSTICO ESTENOSIS CAROTIDEA CERVICAL"
  },
  {
    "code" : "1703114",
    "display" : "STENT CAROTIDEO ESTENOSIS CAROTIDEA CERVICAL"
  },
  {
    "code" : "1802110",
    "display" : "HOSPITALIZACIÓN PRETRASPLANTE HÍGADO PACIENTE AGUDO"
  },
  {
    "code" : "1802111",
    "display" : "HOSPITALIZACIÓN PRETRASPLANTE HÍGADO PACIENTE CRÓNICO DESCOMPENSADO"
  },
  {
    "code" : "1802112",
    "display" : "PRETRASPLANTE SOPORTE HÍGADO EXTRACORPÓREO POR SESIÓN"
  },
  {
    "code" : "1802113",
    "display" : "COMPLICACIONES POST TRASPLANTE HÍGADO RECHAZO AGUDO"
  },
  {
    "code" : "1802114",
    "display" : "COMPLICACIONES POST TRASPLANTE HÍGADO DE LA VÍA BILIAR"
  },
  {
    "code" : "1802115",
    "display" : "COMPLICACIONES POST TRASPLANTE HÍGADO TROMBOSIS O ESTENOSIS ARTERIAL O VENOSA"
  },
  {
    "code" : "0205001",
    "display" : "MANTENCION DONANTE CADAVER (PULMON, CORAZON E HIGADO) (MUERTE CEREBRAL)"
  },
  {
    "code" : "2501101",
    "display" : "PRE TRASPLANTE ALOGENO REVALORACION DEL ESTATUS DE LA ENFERMEDAD"
  },
  {
    "code" : "2501102",
    "display" : "PRE TRASPLANTE ALOGENO ESTUDIO DEL PACIENTE"
  },
  {
    "code" : "2501103",
    "display" : "PRE TRASPLANTE ALOGENO ESTUDIO DEL DONANTE"
  },
  {
    "code" : "2501104",
    "display" : "POST TRASPLANTE ALOGENO SEGUIMIENTO POST ALTA"
  },
  {
    "code" : "7003001",
    "display" : "EVALUACION GERIATRICA INTEGRAL (CEA)"
  },
  {
    "code" : "7003002",
    "display" : "HOSPITAL DIURNO GERIATRIA"
  },
  {
    "code" : "7003003",
    "display" : "ATENCION INTEGRAL TRASTORNOS COGNITIVOS"
  },
  {
    "code" : "7003004",
    "display" : "HOSPITALIZACION PACIENTE GERIATRICO AGUDO: ATENCION INTEGRAL."
  },
  {
    "code" : "7003005",
    "display" : "ATENCION CERRADA INTEGRAL DE PACIENTE GERIATRICO FRAGIL CON CUIDADOS MULTIDISCIPLINARIOS"
  },
  {
    "code" : "0203112",
    "display" : "DIA CAMA SOCIOCOMUNITARIO"
  },
  {
    "code" : "0720800",
    "display" : "NEUROCIRUGIA"
  },
  {
    "code" : "1701331",
    "display" : "TRATAMIENTO PERCUTANEO DE LA COARTACION AORTICA"
  },
  {
    "code" : "0203212",
    "display" : "DIA RESIDENCIA PROTEGIDA FORENSE"
  },
  {
    "code" : "0203310",
    "display" : "EGRESOS MEDIANA FORENSE, 1 TRATAMIENTO COMPLETO"
  },
  {
    "code" : "0203213",
    "display" : "DIA CAMA HOSP. INTEGRAL NEUROLOGICOS POSTRADOS"
  },
  {
    "code" : "0203211",
    "display" : "DIA RESIDENCIA PROTEGIDA"
  },
  {
    "code" : "0203309",
    "display" : "EGRESOS CORTA ESTADIA (PACIENTE CON ALTA MEDICA) 1 TRATAMIENTO COMPLETO"
  },
  {
    "code" : "0203311",
    "display" : "DIA RESIDENCIA PROTEGIDA TIPO I (PACIENTE ESTABILIZADO)"
  },
  {
    "code" : "0203312",
    "display" : "DIA RESIDENCIA PROTEGIDA TIPO II (PACIENTE COMPENSADO)"
  },
  {
    "code" : "0203313",
    "display" : "DIA RESIDENCIA PROTEGIDA TIPO III (PACIENTE DESESTABILIZADO)"
  },
  {
    "code" : "0203314",
    "display" : "DIA RESIDENCIA PROTEGIDA TIPO IV (PACIENTE PSICOGERIATRICO)"
  },
  {
    "code" : "0203315",
    "display" : "DIA RESIDENCIA PROTEGIDA TIPO V (PAC. CON ENF. ORGANICAS Y PSIQUIATRICAS)"
  },
  {
    "code" : "3103301",
    "display" : "TRATAMIENTO DE LOS TRASTORNOS DE LA CONDUCTA ALIMENTARIA (VALOR MENSUAL)"
  },
  {
    "code" : "0203214",
    "display" : "DIA CAMA HOSP. INTEGRAL PSIQUIATRIA FORENSE MEDIANA Y ALTA COMPLEJIDAD"
  },
  {
    "code" : "1902211",
    "display" : "NEFRECTOMIA DONANTE VIVO"
  },
  {
    "code" : "3903004",
    "display" : "PROFILAXIS CITOMEGALOVIRUS ALTO RIESGO"
  },
  {
    "code" : "3903005",
    "display" : "PROFILAXIS CITOMEGALOVIRUS BAJO RIESGO"
  },
  {
    "code" : "1703155",
    "display" : "IMPLANTE DESFIBRILADOR VVI"
  },
  {
    "code" : "1703255",
    "display" : "IMPLANTE DESFIBRILADOR DDD"
  },
  {
    "code" : "1502152",
    "display" : "INTERVENCION QUIRURGICA CANCER DE MAMA CON RECONSTRUCCION MAMARIA, 2° CIRUGIA RECONSTRUCTIVA"
  },
  {
    "code" : "3301006",
    "display" : "EXAMENES ANUALES DE CONTROL HEMATOLOGICO PARA TODO PACIENTE HEMOFILICO"
  },
  {
    "code" : "3301007",
    "display" : "EXAMENES ANUALES DE CONTROL MICROBIOLOGICO E IMAGENOLOGICO PARA TODO PACIENTE HEMOFILICO"
  },
  {
    "code" : "2001023",
    "display" : "CONFIRMACION CANCER DE MAMA NIVEL SECUNDARIO"
  },
  {
    "code" : "3103100",
    "display" : "EVALUACION INICIAL DE PRIMER EPISODIO ESQUIZOFRENIA"
  },
  {
    "code" : "0721500",
    "display" : "NEUROLOGIA ADULTO"
  },
  {
    "code" : "0305210",
    "display" : "CARGA VIRAL VHB"
  },
  {
    "code" : "0305220",
    "display" : "CARGA VIRAL VHB"
  },
  {
    "code" : "0302123",
    "display" : "CREATININA"
  },
  {
    "code" : "0309110",
    "display" : "CREATININA CUANTITATIVA"
  },
  {
    "code" : "5302002",
    "display" : "CONTROL EN PACIENTES HIPERTENSOS SIN TRATAMIENTO FARMACOLOGICO EN NIVEL PRIMARIO"
  },
  {
    "code" : "3001034",
    "display" : "ESTUDIOS PREOPERATORIOS Y ETAPIFICACION CANCER DE COLON"
  },
  {
    "code" : "3001150",
    "display" : "CONFIRMACION Y ETAPIFICACION"
  },
  {
    "code" : "3001234",
    "display" : "SEGUIMIENTO CANCER DE COLON O COLORECTAL AÑOS 1 Y 2"
  },
  {
    "code" : "3001235",
    "display" : "SEGUIMIENTO CANCER DE COLON O COLORECTAL AÑOS 3,4 Y 5"
  },
  {
    "code" : "3001250",
    "display" : "SEGUIMIENTO OSTEOSARCOMA"
  },
  {
    "code" : "3002134",
    "display" : "QUIMIOTERAPIA ADYUVANTE:BAJO RIESGO: T1 HASTA T4 A N1 ¿ N2 Y ESTADIOS:II(ALTO RIESGO) T4N0M0"
  },
  {
    "code" : "3002150",
    "display" : "QUIMIOTERAPIA PREOPERATORIA PARA OSTEOSARCOMA"
  },
  {
    "code" : "3002151",
    "display" : "QUIMIOTERAPIA POST OPERATORIA PARA OSTEOSARCOMA"
  },
  {
    "code" : "3002234",
    "display" : "QUIMIOTERAPIA ADYUVANTE: ETAPA III DUKES C PACIENTES DE ALTO RIESGO: CUALQUIER T, N2; PACIENTES DE ALTO RIESGO: T4B N1-N2 (FOLFOX 4); PACIENTES DE BAJO RIESGO: T1 HASTA T4A N1 ¿ N2"
  },
  {
    "code" : "3002250",
    "display" : "HOSPITALIZACION POR QUIMIOTERAPIA OSTEOSARCOMA"
  },
  {
    "code" : "3002334",
    "display" : "EXAMENES E IMAGENES DURANTE QUIMIOTERAPIA CON INTENCION CURATIVA O PALIATIVA"
  },
  {
    "code" : "3101234",
    "display" : "SEGUIMIENTO CANCER DE OVARIO EPITETAL PRIMER AÑO"
  },
  {
    "code" : "3101235",
    "display" : "SEGUIMIENTO CANCER DE OVARIO EPITETAL DESDE AÑO 2 A AÑO 5"
  },
  {
    "code" : "3102134",
    "display" : "QUIMIOTERAPIA POST CIRUGIA ESTADIO PRECOZ 1º LINEA"
  },
  {
    "code" : "3102135",
    "display" : "QUIMIOTERAPIA NEOADYUVANTE ESTADIOS AVANZADOS E III Y IV"
  },
  {
    "code" : "3102136",
    "display" : "QUIMIOTERAPIA ADYUVANTE, CANCER AVANZADO. ESTADIOS IIB, IIC III Y IV"
  },
  {
    "code" : "3102137",
    "display" : "QUIMIOTERAPIA EN ENFERMEDAD RECURRENTE DE OVARIO, SENSIBLE A PLATINO"
  },
  {
    "code" : "3102138",
    "display" : "QUIMIOTERAPIA EN ENFERMEDAD RECURRENTE DE OVARIO, RESISTENTE A PLATINO"
  },
  {
    "code" : "3102334",
    "display" : "EXAMENES E IMAGENES DURANTE EL TRATAMIENTO CON QUIMIOTERAPIA"
  },
  {
    "code" : "3114404",
    "display" : "SEGUIMIENTO PRIMER AÑO"
  },
  {
    "code" : "3114414",
    "display" : "SEGUIMIENTO SEGUNDO AÑO"
  },
  {
    "code" : "3114424",
    "display" : "SEGUIMIENTO TERCER AÑO"
  },
  {
    "code" : "3201134",
    "display" : "SEGUIMIENTO ANUAL CANCER SUPERFICIAL"
  },
  {
    "code" : "3201135",
    "display" : "SEGUIMIENTO CANCER SUPERFICIAL DESDE AÑO 2 A 5"
  },
  {
    "code" : "3201136",
    "display" : "NEOADYUVANTE CANCER VESICAL PROFUNDO"
  },
  {
    "code" : "3201137",
    "display" : "ADYUVANTE CANCER VESICAL PROFUNDO, POST CIRUGIA"
  },
  {
    "code" : "3201138",
    "display" : "QT-RT CONCOMITANTE CANCER VESICAL PROFUNDO, SIN CIRUGIA"
  },
  {
    "code" : "3201234",
    "display" : "SEGUIMIENTO CANCER PROFUNDO (1º AÑO)"
  },
  {
    "code" : "3201235",
    "display" : "SEGUIMIENTO CANCER PROFUNDO DESDE AÑO 2 AL 5"
  },
  {
    "code" : "3202134",
    "display" : "PREVENCION RECURRENCIA CANCER VESICAL SUPERFICIAL AÑO 1"
  },
  {
    "code" : "3202135",
    "display" : "PREVENCION RECURRENCIA CANCER VESICAL SUPERFICIAL AÑO 2 Y 3"
  },
  {
    "code" : "3202136",
    "display" : "TRATAMIENTO CANCER VESICAL SUPERFICIAL EXAMENES E IMAGENES DURANTE EL TRATAMIENTO CON QUIMIOTERAPIA. TIS-TA-T1"
  },
  {
    "code" : "3202137",
    "display" : "TRATAMIENTO ADYUVANTE CANCER VESICAL PROFUNDO. EXAMENES E IMAGENES DURANTE EL TRATAMIENTO CON QUIMIOTERAPIA. T2N0M0 - TXNXM1"
  },
  {
    "code" : "3901101",
    "display" : "TRATAMIENTO LUPUS LEVE PRIMER AÑO"
  },
  {
    "code" : "3901102",
    "display" : "TRATAMIENTO LUPUS LEVE A PARTIR 2°AÑO"
  },
  {
    "code" : "3901201",
    "display" : "TRATAMIENTO LUPUS GRAVE PRIMER AÑO"
  },
  {
    "code" : "3901202",
    "display" : "TRATAMIENTO LUPUS GRAVE A PARTIR 2°AÑO"
  },
  {
    "code" : "3902201",
    "display" : "HOSPITALIZACION LUPUS GRAVE"
  },
  {
    "code" : "3902202",
    "display" : "HOSPITALIZADO REFRACTARIO A TRATAMIENTO: RESCATE FARMACOLOGICO LUPUS GRAVE"
  },
  {
    "code" : "3902203",
    "display" : "HOSPITALIZADO REFRACTARIO A TRATAMIENTO: RESCATE POR PLASMAFERESIS LUPUS GRAVE"
  },
  {
    "code" : "8002106",
    "display" : "TRATAMIENTO A PARTIR DEL 2° AÑO EN APS"
  },
  {
    "code" : "0508004",
    "display" : "RT EXTERNA 3D"
  },
  {
    "code" : "1701101",
    "display" : "SEGUIMIENTO PRIMER AÑO"
  },
  {
    "code" : "1701201",
    "display" : "SEGUIMIENTO SEGUNDO AÑO"
  },
  {
    "code" : "2104360",
    "display" : "TRATAMIENTO INTEGRAL FRACTURAS EXPUESTAS DE BRAZO, ANTEBRAZO"
  },
  {
    "code" : "2104361",
    "display" : "TRATAMIENTO INTEGRAL FRACTURAS EXPUESTAS DE MUSLO Y PIERNA"
  },
  {
    "code" : "2104362",
    "display" : "INTERVENCION QUIRURGICA INTEGRAL FRACTURA ESCAFOIDES"
  },
  {
    "code" : "2104363",
    "display" : "INTERVENCION QUIRURGICA INTEGRAL FRACTURA PLATILLO TIBIAL Y CONDILEA FEMORAL"
  },
  {
    "code" : "2104364",
    "display" : "INTERVENCION QUIRURGICA INTEGRAL FRACTURA PILON TIBIAL"
  },
  {
    "code" : "1703461",
    "display" : "TRATAMIENTO CIRUGIA CORONARIA"
  },
  {
    "code" : "1703462",
    "display" : "TRATAMIENTO QUIRURGICO RECAMBIO UNIVALVULAR"
  },
  {
    "code" : "1703463",
    "display" : "TRATAMIENTO QUIRURGICO RECAMBIO DOS O MAS VALVULAS"
  },
  {
    "code" : "1703464",
    "display" : "TRATAMIENTO QUIRURGICO GRANDES VASOS CON CEC"
  },
  {
    "code" : "0405108",
    "display" : "EVALUACION DIAGNOSTICA CARDIOPATIAS CONGENITAS EN ADULTO"
  },
  {
    "code" : "1703465",
    "display" : "TRATAMIENTO QUIRURGICO NO COMPLICADO CARDIOPATIA CONGENITA EN ADULTO"
  },
  {
    "code" : "1703466",
    "display" : "TRATAMIENTO QUIRURGICO COMPLICADO CARDIOPATIA CONGENITA EN ADULTO"
  },
  {
    "code" : "1701244",
    "display" : "ANGIOPLASTIA CON STENT EN RAMAS PULMONARES"
  },
  {
    "code" : "180125",
    "display" : "DILATACION ESOFAGICA"
  },
  {
    "code" : "1801133",
    "display" : "MUSECTOMIA"
  },
  {
    "code" : "1801125",
    "display" : "DILATACION NEUMATICA DE LA ACALASIA POR BALON"
  },
  {
    "code" : "3002108",
    "display" : "QUIMIOTERAPIA EN ENFERMEDAD RECURRENTE OVARIO EPITELIAL, ENFERMEDAD SENSIBLE A PLATINO"
  },
  {
    "code" : "3002109",
    "display" : "QUIMIOTERAPIA EN ENFERMEDAD RECURRENTE OVARIO EPITELIAL, ENFERMEDAD RESISTENTE A PLATINO"
  },
  {
    "code" : "2501044",
    "display" : "TRATAMIENTO INTEGRAL ANEMIA APLASICA SEVERA"
  },
  {
    "code" : "2501144",
    "display" : "SEGUIMIENTO AÑO ANEMIA APLASICA SEVERA"
  },
  {
    "code" : "0702114",
    "display" : "PLASMAFERESIS PATOLOGIA RENAL"
  },
  {
    "code" : "1202148",
    "display" : "TRASPLANTE DE CORNEA (INCLUYE PROCURAMIENTO Y SEGUIMIENTO POR UN AÑO)"
  },
  {
    "code" : "2104301",
    "display" : "INTERVENCION QUIRURGICA INTEGRAL FRACTURA CERRADA DE TOBILLO CON OSTEOSINTESIS"
  },
  {
    "code" : "2104302",
    "display" : "INTERVENCION QUIRURGICA INTEGRAL FRACTURA CODO OLECRANO Y CUPULA RADIAL"
  },
  {
    "code" : "2104303",
    "display" : "INTERVENCION QUIRURGICA INTEGRAL FRACTURA CODO SUPRA E INTERCONDILEA"
  },
  {
    "code" : "2104304",
    "display" : "INTERVENCION QUIRURGICA INTEGRAL LUXOFRACTURA MUÑECA"
  },
  {
    "code" : "2104305",
    "display" : "INTERVENCION QUIRURGICA INTEGRAL ESCOLIOSIS MAYORES DE 25 AÑOS"
  },
  {
    "code" : "2104306",
    "display" : "INTERVENCION QUIRURGICA INTEGRAL FRACTURA DE COLUMNA"
  },
  {
    "code" : "2104307",
    "display" : "INTERVENCION QUIRURGICA INTEGRAL ARTRODESIS LUMBOSACRA DEGENERATIVA"
  },
  {
    "code" : "2705001",
    "display" : "PREVENCION ODONTOLOGICA NIÑO CON DISCAPACIDAD"
  },
  {
    "code" : "2705002",
    "display" : "ATENCION ODONTOLOGICA EN SILLON NIÑO CON DISCAPACIDAD"
  },
  {
    "code" : "2705003",
    "display" : "ATENCION ODONTOLOGICA EN PABELLON NIÑO CON DISCAPACIDAD"
  },
  {
    "code" : "2705004",
    "display" : "TRATAMIENTO APARATOLOGIA FIJA NIÑOS DE 12 A 14 AÑOS AÑO 1"
  },
  {
    "code" : "2705005",
    "display" : "TRATAMIENTO APARATOLOGIA FIJA NIÑOS DE 12 A 14 AÑOS AÑO 2"
  },
  {
    "code" : "2705006",
    "display" : "IMPLANTACION DE PROTESIS"
  },
  {
    "code" : "2705007",
    "display" : "ATENCION ODONTOLOGICA RECUPERATIVA ADULTO DE 15 A 59 AÑOS"
  },
  {
    "code" : "2705008",
    "display" : "ATENCION ODONTOLOGICA REHABILITACION PROTESIS REMOVIBLE ADULTO DE 15 A 59 AÑOS"
  },
  {
    "code" : "2705009",
    "display" : "ATENCION ODONTOLOGICA REHABILITACION PROTESIS FIJA ADULTO DE 15 A 59 AÑOS"
  },
  {
    "code" : "2705010",
    "display" : "ATENCION ODONTOLOGICA REHABILITACION PROTESIS IMPLANTO-ASISTIDA"
  },
  {
    "code" : "7004001",
    "display" : "CONFIRMACION SIFILIS"
  },
  {
    "code" : "7004002",
    "display" : "TRATAMIENTO SIFILIS ADULTOS"
  },
  {
    "code" : "7004003",
    "display" : "TRATAMIENTO SIFILIS EMBARAZADA"
  },
  {
    "code" : "7004004",
    "display" : "TRATAMIENTO SIFILIS PERSONAS CON VIH"
  },
  {
    "code" : "7004005",
    "display" : "CONFIRMACION SIFILIS EN RECIEN NACIDOS Y LACTANTES"
  },
  {
    "code" : "7004006",
    "display" : "TRATAMIENTO Y SEGUIMIENTO SIFILIS EN RECIEN NACIDOS Y LACTANTES"
  },
  {
    "code" : "7004007",
    "display" : "CONFIRMACION GONORREA EN ADULTOS"
  },
  {
    "code" : "7004008",
    "display" : "TRATAMIENTO GONORREA EN ADULTOS"
  },
  {
    "code" : "7004009",
    "display" : "CONFIRMACION CONDILOMA ACUMINADO"
  },
  {
    "code" : "7004010",
    "display" : "TRATAMIENTO CONDILOMA ACUMINADO EN ADULTOS"
  },
  {
    "code" : "7004011",
    "display" : "TRATAMIENTO CONDILOMA ACUMINADO EN EMBARAZADAS"
  },
  {
    "code" : "7004012",
    "display" : "CONFIRMACION HERPES GENITAL EN ADULTOS"
  },
  {
    "code" : "7004013",
    "display" : "TRATAMIENTO HERPES GENITAL EN ADULTOS"
  },
  {
    "code" : "7004014",
    "display" : "CONFIRMACION CHLAMYDIA Y/O MYCOPLASMA EN ADULTOS"
  },
  {
    "code" : "7004015",
    "display" : "TRATAMIENTO CHLAMYDIA Y/O MYCOPLASMA EN ADULTOS"
  },
  {
    "code" : "7004016",
    "display" : "CONFIRMACION OTRAS INFECCIONES GENITALES EN ADULTOS"
  },
  {
    "code" : "7004017",
    "display" : "TRATAMIENTO OTRAS INFECCIONES GENITALES EN ADULTOS"
  },
  {
    "code" : "7004018",
    "display" : "CONTROL PREVENTIVO"
  },
  {
    "code" : "7004019",
    "display" : "EVALUACION ENFERMEDAD DE CHAGAS"
  },
  {
    "code" : "7004020",
    "display" : "TRATAMIENTO ENFERMEDAD DE CHAGAS"
  },
  {
    "code" : "7004021",
    "display" : "SEGUIMIENTO ENFERMEDAD DE CHAGAS"
  },
  {
    "code" : "8002001",
    "display" : "HOSPITALIZACION POR NEUMONIA"
  },
  {
    "code" : "8002002",
    "display" : "HOSPITALIZACION GASTROENTERITIS AGUDA"
  },
  {
    "code" : "8002003",
    "display" : "TIROIDECTOMIA SUBTOTAL BILATERAL"
  },
  {
    "code" : "8002004",
    "display" : "TIROIDECTOMIA TOTAL BILATERAL"
  },
  {
    "code" : "8002005",
    "display" : "TRATAMIENTO QUIRURGICO BOCIO"
  },
  {
    "code" : "8002006",
    "display" : "TRATAMIENTO HIPOTIROIDISMO CON TERAPIA DE REEMPLAZO HORMONAL"
  },
  {
    "code" : "8002007",
    "display" : "TRATAMIENTO MEDICO DERMATOLOGIA"
  },
  {
    "code" : "8002008",
    "display" : "HEMODIALISIS DE AGUDO"
  },
  {
    "code" : "8002009",
    "display" : "TERAPIA DE REEMPLAZO RENAL CONTINUA"
  },
  {
    "code" : "8002010",
    "display" : "FIBRILACION Y ALETEO AURICULAR CRONICO IRREVERSIBLE"
  },
  {
    "code" : "8002011",
    "display" : "FIBRILACION Y ALETEO AURICULAR PAROXISTICA O PERSISTENTE POTENCIALMENTE REVERSIBLE"
  },
  {
    "code" : "8002012",
    "display" : "TAQUICARDIA PAROXISTICA SUPRAVENTRICULAR"
  },
  {
    "code" : "8002013",
    "display" : "OTRAS ARRITMIAS"
  },
  {
    "code" : "8002014",
    "display" : "TRATAMIENTO HEMORRAGIA DIGESTIVA POR ULCERA PEPTICA"
  },
  {
    "code" : "8002015",
    "display" : "TRATAMIENTO HEMORRAGIA DIGESTIVA POR VARICES ESOFAGO-GASTRICOS EN PACIENTES CIRROTICOS"
  },
  {
    "code" : "8002016",
    "display" : "TRATAMIENTO MEDICO EMBOLIA PULMONAR"
  },
  {
    "code" : "8002017",
    "display" : "TRATAMIENTO MEDICO PACIENTES CON TBC"
  },
  {
    "code" : "8002018",
    "display" : "HOSPITALIZACION POR BRONQUITIS AGUDA"
  },
  {
    "code" : "8002019",
    "display" : "HOSPITALIZACION EXACERBACION DE EPOC"
  },
  {
    "code" : "8002020",
    "display" : "TRATAMIENTO FARMACOLOGICO FLEGMON AMIGDALIANO HOSPITALIZADO"
  },
  {
    "code" : "8002021",
    "display" : "TRATAMIENTO QUIRURGICO DE LA INFLAMACION DE LA GLANDULA DE BARTHOLIN"
  },
  {
    "code" : "8002022",
    "display" : "TRATAMIENTO QUIRURGICO ENDOMETRIOSIS"
  },
  {
    "code" : "8002023",
    "display" : "TRATAMIENTO QUIRURGICO ABSCESO TUBO OVARICO"
  },
  {
    "code" : "8002024",
    "display" : "TRATAMIENTO SINDROME HIPERTENSIVO DEL EMBARAZO"
  },
  {
    "code" : "8002025",
    "display" : "TRATAMIENTO QUIRURGICO HIDROCELE Y ESPERMATOCELE"
  },
  {
    "code" : "8002026",
    "display" : "TRATAMIENTO MEDICO HIDROCELE Y ESPERMATOCELE PACIENTE NO QUIRURGICO"
  },
  {
    "code" : "8002027",
    "display" : "TRATAMIENTO QUIRURGICO ORQUITIS Y/O EPIDIDIMITIS"
  },
  {
    "code" : "8002028",
    "display" : "TRATAMIENTO NO QUIRURGICO ORQUITIS Y/O EPIDIDIMITIS PACIENTE HOSPITALIZADO"
  },
  {
    "code" : "8002029",
    "display" : "TRATAMIENTO QUIRURGICO TORSION TESTICULAR"
  },
  {
    "code" : "8002030",
    "display" : "TRATAMIENTO ACCIDENTE VASCULAR AGUDO"
  },
  {
    "code" : "8002031",
    "display" : "HEMORRAGIA SUBARACNOIDEA NO ANEURISMATICA Y NO TRAUMATICA"
  },
  {
    "code" : "8002032",
    "display" : "INTERVENCION QUIRURGICA TUMORES MALIGNOS DE LA PIEL"
  },
  {
    "code" : "8002033",
    "display" : "CONFIRMACION CANCER DE COLON"
  },
  {
    "code" : "8002034",
    "display" : "ESTUDIOS PREOPERATORIOS Y ETAPIFICACION CANCER DE COLON"
  },
  {
    "code" : "8002035",
    "display" : "TRATAMIENTO SINDROME NEFROTICO"
  },
  {
    "code" : "0801102",
    "display" : "PROCESAMIENTO PAPANICOLAU (SOSPECHA)"
  },
  {
    "code" : "0204101",
    "display" : "DIA CAMA HOSPITALIZACION INTEGRAL DOMICILIARIA COMPLEJA PACIENTE AGUDO"
  },
  {
    "code" : "0204201",
    "display" : "DIA CAMA HOSPITALIZACION INTEGRAL DOMICILIARIA INTERMEDIA PACIENTE AGUDO"
  },
  {
    "code" : "5003101",
    "display" : "BOTIN DE DESCARGA PERSONALIZADO"
  },
  {
    "code" : "3002207",
    "display" : "QUIMIOTERAPIA PROTOCOLO SEMINOMA E1"
  },
  {
    "code" : "5402101",
    "display" : "EVALUACION INICIAL EPILEPSIA EN NIVEL SECUNDARIO"
  },
  {
    "code" : "1802204",
    "display" : "GASTRECTOMIA TOTAL + DISECCION GANGLIONAR POR LAPAROSCOPIA"
  },
  {
    "code" : "1802104",
    "display" : "LAPARATOMIA EXPLORADORA"
  },
  {
    "code" : "3106203",
    "display" : "HOSPITALIZACION ASOCIADA A QUIMIOTERAPIA CANCER DE PROSTATA"
  },
  {
    "code" : "3902035",
    "display" : "TRATAMIENTO MEDICO HIPERPLASIA PROSTATA"
  },
  {
    "code" : "3904003",
    "display" : "TRATAMIENTO ENFERMEDAD DE CUSHING"
  },
  {
    "code" : "3904004",
    "display" : "TRATAMIENTO MEDICAMENTOSO INDEFINIDO TUMORES HIPOFISIARIOS NO FUNCIONANTES"
  },
  {
    "code" : "3904005",
    "display" : "TRATAMIENTO MEDICAMENTOSO INDEFINIDO Y SEGUIMIENTO PROLACTINOMAS"
  },
  {
    "code" : "3002115",
    "display" : "QUIMIOTERAPIA LEUCEMIA MIELOIDE CRONICA: TRATAMIENTO INHIBIDOR TIROSIN KINASA"
  },
  {
    "code" : "3002116",
    "display" : "QUIMIOTERAPIA LEUCEMIA MIELOIDE CRONICA EOSINOFILICA Y RECOMBINACION DEL GEN FIP1L1-PDGFRA"
  },
  {
    "code" : "3004101",
    "display" : "ETAPIFICACION PANCREATICA"
  },
  {
    "code" : "3004005",
    "display" : "INMUNIZACION PACIENTES CON FIBROSIS QUISTICA"
  },
  {
    "code" : "0904001",
    "display" : "TRATAMIENTO INICIAL"
  },
  {
    "code" : "0904002",
    "display" : "TRATAMIENTO DE REFUERZO"
  },
  {
    "code" : "3114315",
    "display" : "SEGUIMIENTO EN HIPOACUSIA CONFIRMADA DEL PREMATURO TERCER AÑO"
  },
  {
    "code" : "0305202",
    "display" : "CONTROLES A PACIENTES VHC SIN TRATAMIENTO FARMACOLOGICO"
  },
  {
    "code" : "3002233",
    "display" : "QUIMIOTERAPIA RESCATE DE LINFOMAS HODGKIN Y NO HODGKIN PROTOCOLO ESHAP - ICE"
  },
  {
    "code" : "3107314",
    "display" : "SEGUIMIENTO RN Y NIÑOS EXPUESTOS AL VIH (HIJOS DE PERSONA GESTANTE VIH (+))"
  },
  {
    "code" : "3107101",
    "display" : "SEGUIMIENTO PERSONAS VIH ADULTOS (+) SIN TRATAMIENTO ANTIRETROVIRAL"
  },
  {
    "code" : "3107315",
    "display" : "SEGUIMIENTO PERSONAS VIH ADULTOS (+) CON TRATAMIENTO ANTIRETROVIRAL"
  },
  {
    "code" : "3107215",
    "display" : "SEGUIMIENTO PERSONAS VIH MENORES DE 18 AÑOS (+) CON TRATAMIENTO ANTIRETROVIRAL"
  },
  {
    "code" : "3107010",
    "display" : "TARV CAMBIO PRECOZ"
  },
  {
    "code" : "3109001",
    "display" : "EXAMENES DURANTE QUIMIOTERAPIA PRE OPERATORIA"
  },
  {
    "code" : "3109002",
    "display" : "EXAMENES DURANTE QUIMIOTERAPIA POST OPERATORIA"
  },
  {
    "code" : "3002401",
    "display" : "QUIMIOTERAPIA PRE OPERATORIA PARA T4 Y O N+"
  },
  {
    "code" : "3002402",
    "display" : "QUIMIOTERAPIA POST OPERATORIA PARA T4, O N+ Y PALIATIVOS"
  },
  {
    "code" : "0102406",
    "display" : "ATENCION DE REHABILITACION PARA USO DE ORTESIS (O AYUDAS TECNICAS)"
  },
  {
    "code" : "5402201",
    "display" : "EVALUACION Y TRATAMIENTO INICIAL EPILEPSIA EN NIVEL SECUNDARIO"
  },
  {
    "code" : "6002116",
    "display" : "INTERVENCION QUIRURGICA CANCER PULMONAR"
  },
  {
    "code" : "6002101",
    "display" : "ECMO ADULTO"
  },
  {
    "code" : "6002102",
    "display" : "ECMO PEDIATRICO"
  },
  {
    "code" : "0204202",
    "display" : "DIA CAMA HOSPITALIZACION INTEGRAL DOMICILIARIA INTERMEDIA PACIENTE AGUDO PEDIATRICO"
  },
  {
    "code" : "0109001",
    "display" : "CONSULTA TELEMEDICINA (ESPECIALISTA)"
  },
  {
    "code" : "3005104",
    "display" : "DROGA INMUNOSUPRESORA PROTOCOLO 1C"
  },
  {
    "code" : "3005105",
    "display" : "DROGA INMUNOSUPRESORA PROTOCOLO 1D"
  },
  {
    "code" : "3005106",
    "display" : "DROGA INMUNOSUPRESORA PROTOCOLO 1E"
  },
  {
    "code" : "1902311",
    "display" : "ESTUDIO DONANTE VIVO"
  },
  {
    "code" : "3114403",
    "display" : "Cambio de Procesador del Implante Coclear"
  },
  {
    "code" : "3001534",
    "display" : "CONFIRMACION DE CANCER DE COLON O COLORECTAL"
  },
  {
    "code" : "3001035",
    "display" : "ESTADIFICACION CANCER RECTAL"
  },
  {
    "code" : "3002534",
    "display" : "QUIMIOTERAPIA PALIATIVA ESTADIO IV CUALQUIER T CUALQUIER N Y M1 COLON METASTASICO"
  },
  {
    "code" : "3002634",
    "display" : "QUIMIOTERAPIA PALIATIVA ESQUEMA IFL FOLFIRI"
  },
  {
    "code" : "0504300",
    "display" : "RADIOTERAPIA EXTERNA ADYUVANCIA"
  },
  {
    "code" : "3002631",
    "display" : "QUIMIOTERAPIA ADYUVANTE CANCER RECTAL POST CIRUGIA"
  },
  {
    "code" : "3002632",
    "display" : "QUIMIOTERAPIA ADYUVANTE CANCER RECTAL METASTASICO FOLFOX"
  },
  {
    "code" : "0504330",
    "display" : "QUIMIOTERAPIA - RADIOTERAPIA CONCOMITANTE CANCER RECTAL 1ª Y 5ª SEMANA (QUIMIOTERAPIA)"
  },
  {
    "code" : "3105104",
    "display" : "HOSPITALIZACION TRASTORNO BIPOLAR AÑO 1"
  },
  {
    "code" : "3105204",
    "display" : "HOSPITALIZACION TRASTORNO BIPOLAR A PARTIR AÑO 2"
  },
  {
    "code" : "3114503",
    "display" : "Cambio de Procesador del Implante Coclear"
  },
  {
    "code" : "0503101",
    "display" : "BRAQUITERAPIA CANCER DE PROSTATA"
  },
  {
    "code" : "1902411",
    "display" : "NEFRECTOMIA DONANTE CADAVER"
  },
  {
    "code" : "0504331",
    "display" : "RADIOTERAPIA CONCOMITANTE"
  },
  {
    "code" : "0503502",
    "display" : "BRAQUITERAPIA CÁNCER CERVICOUTERINO INVASOR"
  },
  {
    "code" : "3903015",
    "display" : "TRATAMIENTO FARMACOLÓGICO DEL VHC"
  },
  {
    "code" : "0305519",
    "display" : "TRATAMIENTO BIOLÓGICO ARTRITIS IDIOPÁTICA JUVENIL"
  },
  {
    "code" : "0507501",
    "display" : "RADIOTERAPIA CÁNCER CERVICOUTERINO INVASOR"
  },
  {
    "code" : "0507502",
    "display" : "RADIOTERAPIA CÁNCER DE MAMA"
  },
  {
    "code" : "0507506",
    "display" : "RADIOTERAPIA CÁNCER DE PRÓSTATA"
  },
  {
    "code" : "0507504",
    "display" : "RADIOTERAPIA CÁNCER DE TESTÍCULO"
  },
  {
    "code" : "3109313",
    "display" : "REHABILITACIÓN FISURA LABIOPALATINA ESCOLAR AÑO 11"
  },
  {
    "code" : "0507503",
    "display" : "RADIOTERAPIA CÁNCER DE MENORES DE 15 AÑOS"
  },
  {
    "code" : "0507505",
    "display" : "RADIOTERAPIA LINFOMA EN PERSONAS DE 15 AÑOS Y MÁS"
  },
  {
    "code" : "3004501",
    "display" : "TRATAMIENTO FIBROSIS QUISTICA LEVE (CONSULTAS, EXAMENES Y PROCEDIMIENTOS)"
  },
  {
    "code" : "3004502",
    "display" : "TRATAMIENTO FIBROSIS QUISTICA MODERADA (CONSULTAS, EXAMENES Y PROCEDIMIENTOS)"
  },
  {
    "code" : "3004503",
    "display" : "TRATAMIENTO FIBROSIS QUÍSTICA GRAVE (CONSULTAS, EXAMENES Y PROCEDIMIENTOS)"
  },
  {
    "code" : "3003401",
    "display" : "QUIMIOTERAPIA POST OPERATORIA MAC DONALD"
  },
  {
    "code" : "3003402",
    "display" : "QUIMIOTERAPIA POST OPERATORIA CCAP"
  },
  {
    "code" : "3003412",
    "display" : "QUIMIOTERAPIA PARA HORMONOREFRACTARIOS"
  },
  {
    "code" : "3108411",
    "display" : "REHABILITACIÓN FISURA LABIOPALATINA ADOLESCENTE (12° AÑO AL 15° AÑO)"
  },
  {
    "code" : "1202348",
    "display" : "TRASPLANTE DE CÓRNEA (INCLUYE TRASPLANTE, TRATAMIENTO COMPLICACIONES, TRATAMIENTO CITOMEGALOVIRUS, Y EXÁMENES DE SEGUIMIENTO POR UN AÑO)"
  },
  {
    "code" : "1202248",
    "display" : "TRASPLANTE DE CÓRNEA (INCLUYE TRASPLANTE, TRATAMIENTO COMPLICACIONES, TRATAMIENTO CITOMEGALOVIRUS, Y EXÁMENES DE SEGUIMIENTO POR UN AÑO)"
  },
  {
    "code" : "6002108",
    "display" : "CONFIRMACIÓN APNEA DEL SUEÑO ADULTO"
  },
  {
    "code" : "6002208",
    "display" : "TRATAMIENTO APNEA DEL SUEÑO ADULTO"
  },
  {
    "code" : "6002308",
    "display" : "CONFIRMACIÓN APNEA DEL SUEÑO PEDIÁTRICA"
  },
  {
    "code" : "6002408",
    "display" : "TRATAMIENTO APNEA DEL SUEÑO PEDIÁTRICA"
  },
  {
    "code" : "1709143",
    "display" : "ESTUDIO DE HISTOCOMPATIBILIDAD DE TRASPLANTE PULMÓN"
  },
  {
    "code" : "1809100",
    "display" : "ESTUDIO DE HISTOCOMPATIBILIDAD DE TRASPLANTE HÍGADO"
  },
  {
    "code" : "1709200",
    "display" : "ESTUDIO DE HISTOCOMPATIBILIDAD DE TRASPLANTE CORAZÓN"
  },
  {
    "code" : "1802304",
    "display" : "LAPAROTOMIA EXPLORADORA SUBTOTAL"
  },
  {
    "code" : "2507015",
    "display" : "BASTONES CODERA FIJA A PACIENTES CON DISRAFIA ESPINAL ABIERTA"
  },
  {
    "code" : "2507016",
    "display" : "BASTONES CODERA MOVIL A PACIENTES CON DISRAFIA ESPINAL ABIERTA"
  },
  {
    "code" : "2507017",
    "display" : "SILLA DE RUEDAS ESTANDAR A PACIENTES CON DISRAFIA ESPINAL ABIERTA"
  },
  {
    "code" : "2507018",
    "display" : "SILLA DE RUEDAS NEUROLOGICA A PACIENTES CON DISRAFIA ESPINAL ABIERTA"
  },
  {
    "code" : "2507019",
    "display" : "ANDADOR CON DOS RUEDAS Y APOYO ANTE-BRAQUIAL A PACIENTES CON DISRAFIA ESPINAL ABIERTA"
  },
  {
    "code" : "2507020",
    "display" : "ANDADOR CON DOS RUEDAS A PACIENTES CON DISRAFIA ESPINAL ABIERTA"
  },
  {
    "code" : "2507021",
    "display" : "COJIN ANTI-ESCARA VISCO-ELASTICO A PACIENTES CON DISRAFIA ESPINAL ABIERTA"
  },
  {
    "code" : "2507022",
    "display" : "COJIN ANTI-ESCARA CELDAS DE AIRE A PACIENTES CON DISRAFIA ESPINAL ABIERTA"
  },
  {
    "code" : "2507023",
    "display" : "COLCHON ANTI-ESCARA CELDAS DE AIRE A PACIENTES CON DISRAFIA ESPINAL ABIERTA"
  },
  {
    "code" : "2507024",
    "display" : "BASTON CODERA MOVIL"
  },
  {
    "code" : "2507025",
    "display" : "SILLA DE RUEDAS ESTANDAR"
  },
  {
    "code" : "2507026",
    "display" : "SILLA DE RUEDAS NEUROLOGICA"
  },
  {
    "code" : "2507027",
    "display" : "COJIN ANTIESCARA VISCOELASTICO"
  },
  {
    "code" : "2507028",
    "display" : "COLCHON ANTIESCARA CELDAS DE AIRE"
  },
  {
    "code" : "2507029",
    "display" : "BASTON DE APOYO O DE MANO"
  },
  {
    "code" : "2507030",
    "display" : "ANDADOR CON DOS RUEDAS Y ASIENTO"
  },
  {
    "code" : "2507031",
    "display" : "ANDADOR CON CUATRO RUEDAS Y CANASTA"
  },
  {
    "code" : "2507032",
    "display" : "ANDADOR SIN RUEDAS ARTICULADO"
  },
  {
    "code" : "2507033",
    "display" : "ORTESIS ANTIEQUINO"
  },
  {
    "code" : "2507034",
    "display" : "COJIN ANTIESCARA CELDAS DE AIRE"
  },
  {
    "code" : "2504092",
    "display" : "EVALUACION PRETRATAMIENTO CON ANTIRETROVIRALES"
  },
  {
    "code" : "2505866",
    "display" : "TRATAMIENTO ENFERMEDADES OSEO-METABOLICAS: HIPERFOSFEMIA"
  },
  {
    "code" : "2505867",
    "display" : "TRATAMIENTO ENFERMEDADES OSEO-METABOLICAS: HIPERPARATIROIDISMO"
  },
  {
    "code" : "2505868",
    "display" : "ATENCION DE REHABILITACION PARA USO DE AYUDAS TECNICAS A PACIENTES CON DISRAFIA ESPINAL ABIERTA"
  },
  {
    "code" : "2505870",
    "display" : "CAMBIO DE ACCESORIOS DEL PROCESADOR COCLEAR"
  },
  {
    "code" : "2505871",
    "display" : "ESQUEMAS TERAPEUTICOS CON ANTIRETROVIRALES PARA PREVENCION TRANSMISION VERTICAL: EMBARAZO"
  },
  {
    "code" : "2505872",
    "display" : "TERAPIA ANTIRETROVIRAL PARA PREVENCION TRANSMISION VERTICAL: PARTO"
  },
  {
    "code" : "2505873",
    "display" : "TERAPIA PARA PREVENCION TRANSMISION VERTICAL: RECIEN NACIDO"
  },
  {
    "code" : "2505874",
    "display" : "TERAPIA PARA PREVENCION TRANSMISION VERTICAL: PUERPERIO"
  },
  {
    "code" : "2505869",
    "display" : "ATENCION DE REHABILITACION PARA USO DE AYUDAS TECNICAS"
  },
  {
    "code" : "2505881",
    "display" : "TRATAMIENTO FARMACOLOGICO CON INTERFERON PEGILADO+RIBAVIRINA"
  },
  {
    "code" : "2505882",
    "display" : "TRATAMIENTO FARMACOLOGICO CON ANTIVIRALES GENOTIPO 1 (A Y B), 4,5 Y 6"
  },
  {
    "code" : "2505883",
    "display" : "TRATAMIENTO FARMACOLOGICO CON ANTIVIRALES GENOTIPO 1B"
  },
  {
    "code" : "2505884",
    "display" : "TRATAMIENTO FARMACOLOGICO CON ANTIVIRALES GENOTIPO 2"
  },
  {
    "code" : "2505885",
    "display" : "TRATAMIENTO FARMACOLOGICO CON ANTIVIRALES GENOTIPO 3"
  },
  {
    "code" : "2505886",
    "display" : "CONTROL A PACIENTES CON TRATAMIENTO FARMACOLOGICO DEL VIRUS HEPATITIS C"
  },
  {
    "code" : "9001043",
    "display" : "EXÁMENES DE DETERMINACIÓN CARGA VIRAL"
  },
  {
    "code" : "0305090",
    "display" : "EXÁMENES LINFOCITOS T Y CD4"
  },
  {
    "code" : "9001048",
    "display" : "EXÁMENES RESISTENCIA GENÉTICA EN VIH/SIDA"
  },
  {
    "code" : "2505876",
    "display" : "ESQUEMAS TERAPÉUTICOS CON ANTIRETROVIRALES DE INICIO O SIN FRACASOS PREVIOS EN PERSONAS DE 18 AÑOS Y MÁS"
  },
  {
    "code" : "2505877",
    "display" : "ESQUEMAS TERAPÉUTICOS CON ANTIRETROVIRALES DE RESCATE EN PERSONAS DE 18 AÑOS Y MÁS"
  },
  {
    "code" : "2505839",
    "display" : "TERAPIA ANTIRETROVIRAL EN PERSONAS MENORES DE 18 AÑOS"
  },
  {
    "code" : "2506019",
    "display" : "SEGUIMIENTO PERSONAS VIH (+) DE 18 AÑOS Y MÁS CON TRATAMIENTO ANTIRETROVIRAL"
  },
  {
    "code" : "3002123",
    "display" : "TRATAMIENTO INTEGRAL POR ALIVIO DEL DOLOR PACIENTES SIN CÁNCER PROGRESIVO"
  },
  {
    "code" : "2505241",
    "display" : "ABSCESO SUBMUCOSO, SUBPERIOSTICO O APICAL DE ORIGEN ODONTOLOGICO"
  },
  {
    "code" : "2505242",
    "display" : "GINGIVITIS ULCERO NECROTIZANTE"
  },
  {
    "code" : "2505243",
    "display" : "COMPLICACIONES POST EXODONCIA"
  },
  {
    "code" : "2505244",
    "display" : "TRAUMATISMOS DENTO ALVEOLARES"
  },
  {
    "code" : "2505245",
    "display" : "PERICORONARITIS"
  },
  {
    "code" : "2505246",
    "display" : "PULPITIS"
  },
  {
    "code" : "9001202",
    "display" : "CONSULTA TELEMEDICINA (ESPECIALISTA) SEGUNDO AÑO"
  },
  {
    "code" : "2504074",
    "display" : "ABSCESO DE ESPACIOS ANATOMICOS DEL TERRITORIO BUCOMAXILOFACIAL"
  },
  {
    "code" : "2504079",
    "display" : "FLEGMON ORO-CERVICO-FACIAL DE ORIGEN ODONTOGENICO:"
  },
  {
    "code" : "0501135",
    "display" : "PET-CT"
  },
  {
    "code" : "2505914",
    "display" : "TRATAMIENTO QUIRÚRGICO ABDOMINOPLASTÍA"
  },
  {
    "code" : "2505002",
    "display" : "Accesorios para tratamiento de nebulización pacientes con fibrosis quística"
  },
  {
    "code" : "2505003",
    "display" : "Hospitalización domiciliaria para pacientes mayores de 5 años en condiciones estables"
  },
  {
    "code" : "2505263",
    "display" : "TRATAMIENTO FIBROSIS QUÍSTICA LEVE (ENZIMAS PANCREÁTICAS Y VITAMINAS LIPOSOLUBLES AQUA A.D.E.K.)"
  },
  {
    "code" : "2505260",
    "display" : "TRATAMIENTO FIBROSIS QUÍSTICA MODERADA (ENZIMAS PANCREÁTICAS, LINEZOLIDA, NEBULIZACIÓN RH-DORNASA-ALFA Y VITAMINAS LIPOSOLUBLES AQUA A.D.E.K.)"
  },
  {
    "code" : "2505256",
    "display" : "TRATAMIENTO FIBROSIS QUÍSTICA GRAVE (ENZIMAS PANCREÁTICAS, LINEZOLIDA, NEBULIZACIÓN RH-DORNASA-ALFA Y VITAMINAS LIPOSOLUBLES AQUA A.D.E.K.)"
  },
  {
    "code" : "2504094",
    "display" : "SOSPECHA DEL VIRUS HEPATITIS C EN NIVEL PRIMARIO"
  },
  {
    "code" : "2505005",
    "display" : "TRATAMIENTO FARMACOLÓGICO CON ANTIVIRALES PANGENOTIPO"
  },
  {
    "code" : "2505006",
    "display" : "TRATAMIENTO FARMACOLÓGICO CON ANTIVIRALES GENOTIPO 1 Y 4 (CON O SIN INSUFICIENCIA RENAL)"
  },
  {
    "code" : "2505945",
    "display" : "TERAPIA DE HEMORRAGIA VARICEAL"
  },
  {
    "code" : "2505946",
    "display" : "INFECCIONES EN PACIENTE CIRRÓTICO EN ESPERA DE TRASPLANTE HEPÁTICO"
  },
  {
    "code" : "2505947",
    "display" : "ESTUDIO PRETRANSPLANTE AMBULATORIO"
  },
  {
    "code" : "2505948",
    "display" : "HEPATOCARCINOMA HEPATOBLASTOMA"
  },
  {
    "code" : "2505949",
    "display" : "QUIMIOEMBOLIZACIÓN"
  },
  {
    "code" : "2505950",
    "display" : "TRASPLANTE HEPATICO"
  },
  {
    "code" : "2505951",
    "display" : "TRANSPLANTE HEPÁTICO: DROGAS INMUNOSUPRESORAS PRIMER AÑO"
  },
  {
    "code" : "2505952",
    "display" : "POST OPERATORIO TRASPLANTE HEPÁTICO COMPLICADO"
  },
  {
    "code" : "2505953",
    "display" : "ESTUDIO DONANTE VIVO DE HIGADO"
  },
  {
    "code" : "2505954",
    "display" : "DONANTE VIVO HEPATECTOMÍA DERECHA ABIERTA"
  },
  {
    "code" : "2505955",
    "display" : "BÚSQUEDA E IDENTIFICACIÓN DE PRECURSORES HEMATOPOYÉTICOS EN REGISTROS DE DONANTES Y BANCOS DE SANGRE DE CORDÓN UMBILICAL"
  },
  {
    "code" : "2504104",
    "display" : "EXAMENES CONFIRMATORIOS"
  },
  {
    "code" : "2505956",
    "display" : "ESTUDIO PRETRANSPLANTE RECEPTOR"
  },
  {
    "code" : "2504105",
    "display" : "DIAGNÓSTICO (ESTUDIO DONANTE)"
  },
  {
    "code" : "2505957",
    "display" : "PROCURAMIENTO DEL INJERTO DE PRECURSORES HEMATOPOYÉTICOS DE MÉDULA ÓSEA O SANGRE PERIFERICA (BANCO INTERNACIONAL)"
  },
  {
    "code" : "2505958",
    "display" : "ADQUSICIÓN CORDÓN INTERNACIONAL"
  },
  {
    "code" : "2505959",
    "display" : "PROCURAMIENTO DEL INJERTO DE PRECURSORES HEMATOPOYÉTICOS DE MÉDULA ÓSEA O SANGRE PERIFERICA CLDMKS"
  },
  {
    "code" : "2505960",
    "display" : "ETAPA TRATAMIENTO"
  },
  {
    "code" : "2506085",
    "display" : "ETAPA SEGUIMIENTO PRIMER AÑO"
  },
  {
    "code" : "2506086",
    "display" : "ETAPA SEGUIMIENTO 2 AÑO"
  },
  {
    "code" : "2506087",
    "display" : "ETAPA SEGUIMIENTO 3 AÑO"
  },
  {
    "code" : "2506088",
    "display" : "SEGUIMIENTO MENSUAL CUARTO AÑO TRASPLANTE HAPLOIDENTICO INMUNOLOGICO PEDIATRICO"
  },
  {
    "code" : "2505961",
    "display" : "FOTOFERESIS"
  },
  {
    "code" : "2505638",
    "display" : "TRATAMIENTO APARATOLOGÍA FIJA 12 A 15 AÑOS AÑO 1"
  },
  {
    "code" : "2505639",
    "display" : "TRATAMIENTO APARATOLOGÍA FIJA 13 A 17 AÑOS AÑO 2"
  },
  {
    "code" : "2505640",
    "display" : "PRÓTESIS IMPLANTOASISTIDA EN PERSONAS DE 61 Y MÁS"
  },
  {
    "code" : "2505641",
    "display" : "TRATAMIENTO ENDODONCIA EN PERSONAS DE 15 Y MÁS AÑOS (EXCEPTO 60 AÑOS Y EMBARAZADAS GES)"
  },
  {
    "code" : "2505642",
    "display" : "ATENCIÓN ODONTOLÓGICA REHABILITACIÓN PRÓTESIS REMOVIBLE ADULTO DE 15 Y MÁS (EXCEPTO 60 AÑOS GES Y EMBARAZADAS GES)"
  },
  {
    "code" : "2505643",
    "display" : "ATENCIÓN ODONTOLÓGICA REHABILITACIÓN PRÓTESIS FIJA ADULTO DE 15 A 59 AÑOS"
  },
  {
    "code" : "2505962",
    "display" : "EXODONCIA DE TERCEROS MOLARES (INCLUIDO O SEMINCLUIDO) EN PACIENTES ENTRE 15 Y 28 AÑOS"
  },
  {
    "code" : "2505942",
    "display" : "INSTALACIÓN DE RESERVORIO SUBCUTÁNEO (CATÉTER DE QUIMIOTERAPIA)"
  },
  {
    "code" : "2505943",
    "display" : "INSTALACIÓN CATÉTER VENOSO CENTRAL DE INSERCIÓN PERIFÉRICA PARA TRATAMIENTO DE QUIMIOTERAPIA (INCLUYE CATÉTER PICC)"
  },
  {
    "code" : "2908001",
    "display" : "RITUXIMAB - BENDAMUSTINA"
  },
  {
    "code" : "2908002",
    "display" : "IBRUTINIB"
  },
  {
    "code" : "2908003",
    "display" : "RITUXIMAB - FLUDARABINA - CICLOFOSFAMIDA"
  },
  {
    "code" : "2908004",
    "display" : "VTD (TALIDOMIDA - DEXAMETASONA - BORTEZOMIB)"
  },
  {
    "code" : "2908005",
    "display" : "VTDPACE"
  },
  {
    "code" : "2908006",
    "display" : "TIP (PACLITAXEL IFOSFAMIDA CISPLATINO)"
  },
  {
    "code" : "2908007",
    "display" : "FLOT (5 FLUOROURACILO / LEUCOVORINA / OXALIPLATINO / DOCETAXEL)"
  },
  {
    "code" : "2908008",
    "display" : "LENALIDOMIDA"
  },
  {
    "code" : "2908009",
    "display" : "VRD (LENALIDOMIDA - DEXAMETASONA - BORTEZOMIB)"
  },
  {
    "code" : "2908010",
    "display" : "VEIP (VINBLASTINA IFOSFAMIDA CISPLATINO MESNA)"
  },
  {
    "code" : "2908011",
    "display" : "VIP (ETOPOSIDO / CISPLATINO / IFOSFAMIDA / MESNA)"
  },
  {
    "code" : "2908012",
    "display" : "TPF (5 FLUOROURACILO / CISPLATINO / DOCETAXEL)"
  },
  {
    "code" : "2908013",
    "display" : "LENDEX (LENALIDOMIDA - DEXAMETASONA)"
  },
  {
    "code" : "2908014",
    "display" : "IE (IFOSFAMIDA / ETOPOSIDO / MESNA)"
  },
  {
    "code" : "2908015",
    "display" : "DOXORRUBICINA / IFOSFAMIDA / MESNA"
  },
  {
    "code" : "2908016",
    "display" : "VAC (DOXORRUBICINA O ACTINOMICINA D / VINCRISTINA / CICLOFOSFAMIDA)"
  },
  {
    "code" : "2908017",
    "display" : "DOXORRUBICINA / CISPLATINO / METROTEXATO"
  },
  {
    "code" : "2908018",
    "display" : "AC DÓSIS DENSA (DOXORRUBICINA / CICLOFOSFAMIDA)"
  },
  {
    "code" : "2908019",
    "display" : "FOLFIRINOX (5 FLUOROURACILO / LEUCOVORINA / OXALIPLATINO / IRINOTECAN)"
  },
  {
    "code" : "2908020",
    "display" : "ATEZOLIZUMAB"
  },
  {
    "code" : "2908021",
    "display" : "CETUXIMAB (CICLO)"
  },
  {
    "code" : "2908022",
    "display" : "PANITUMUMAB"
  },
  {
    "code" : "2908023",
    "display" : "BEVACIZUMAB"
  },
  {
    "code" : "2908024",
    "display" : "R-BENDAMUSTINE"
  },
  {
    "code" : "2908025",
    "display" : "TDM1"
  },
  {
    "code" : "2908026",
    "display" : "EVEROLIMUS"
  },
  {
    "code" : "2908027",
    "display" : "PROCARBAZINA"
  },
  {
    "code" : "2908028",
    "display" : "FULVESTRANT"
  },
  {
    "code" : "2908029",
    "display" : "TOPOTECAN"
  },
  {
    "code" : "2908030",
    "display" : "OCTEÓTRIDE LAR"
  },
  {
    "code" : "2908031",
    "display" : "CYBORD (CICLOFOSFAMIDA - DEXAMETASONA - BORTEZOMIB)"
  },
  {
    "code" : "2908032",
    "display" : "LANREOTIDE"
  },
  {
    "code" : "2908033",
    "display" : "VINORELBINA"
  },
  {
    "code" : "2908034",
    "display" : "PEMETREXATO PEMETREXED"
  },
  {
    "code" : "2908035",
    "display" : "LOMUSTINA"
  },
  {
    "code" : "2908036",
    "display" : "GEMCITABINA"
  },
  {
    "code" : "2908037",
    "display" : "GCD (GEMCITABINA - CISPLATINO - DEXAMETASONA)"
  },
  {
    "code" : "2908038",
    "display" : "CAPECITABINA"
  },
  {
    "code" : "2908039",
    "display" : "MPT ( MELFALAN - PREDNISONA - TALIDOMIDA)"
  },
  {
    "code" : "2908040",
    "display" : "CTD (CICLOFOSFAMIDA - DEXAMETASONA - TALIDOMIDA)"
  },
  {
    "code" : "2908041",
    "display" : "ACTINOMICINA"
  },
  {
    "code" : "2908042",
    "display" : "CARBOPLATINO"
  },
  {
    "code" : "2908043",
    "display" : "METOTREXATO (IV)"
  },
  {
    "code" : "2908044",
    "display" : "CISPLATINO"
  },
  {
    "code" : "2908045",
    "display" : "ETOPOSIDO (IV)"
  },
  {
    "code" : "2908046",
    "display" : "METOTREXATO (ORAL)"
  },
  {
    "code" : "2908047",
    "display" : "CICLOFOSFAMIDA"
  },
  {
    "code" : "2908048",
    "display" : "OBINUTUZUMAB"
  },
  {
    "code" : "2908049",
    "display" : "NIVOLUMAB"
  },
  {
    "code" : "2908050",
    "display" : "AVELUMAB"
  },
  {
    "code" : "2908051",
    "display" : "PEMETREXATO / CARBOPLATINO - PEMBROLIZUMAB"
  },
  {
    "code" : "2908052",
    "display" : "PACLITAXEL / CISPLATINO - BEVACIZUMAB"
  },
  {
    "code" : "2908053",
    "display" : "RITUXIMAB - CICLOFOSFAMIDA - DOXORRUBICINA - VINCRISTINA - PREDNISONA"
  },
  {
    "code" : "2908054",
    "display" : "AZACITIDINA"
  },
  {
    "code" : "2908055",
    "display" : "PACLITAXEL / CARBOPLATINO - PERTUZUMAB"
  },
  {
    "code" : "2908056",
    "display" : "RITUXIMAB - CLORAMBUCILO"
  },
  {
    "code" : "2908057",
    "display" : "DOCETAXEL - PERTUZUMAB"
  },
  {
    "code" : "2908058",
    "display" : "RITUXIMAB"
  },
  {
    "code" : "2506007",
    "display" : "SEGUIMIENTO PRIMER Y SEGUNDO AÑO A PACIENTES CON DISRAFIA ESPINAL ABIERTA"
  },
  {
    "code" : "2505878",
    "display" : "TRATAMIENTO DEPRESIÓN GRAVE"
  },
  {
    "code" : "2505879",
    "display" : "TRATAMIENTO DEPRESIÓN CON PSICOSIS, ALTO RIESGO SUICIDA O REFRACTARIEDAD, FASE AGUDA"
  },
  {
    "code" : "2505880",
    "display" : "TRATAMIENTO DEPRESIÓN CON PSICOSIS, ALTO RIESGO SUICIDA O REFRACTARIEDAD, FASE MANTENIMIENTO"
  },
  {
    "code" : "2505305",
    "display" : "EVALUACIÓN PACIENTE VHC PRE TRATAMIENTO"
  },
  {
    "code" : "2505887",
    "display" : "CONTROL A PACIENTES VHC SIN TRATAMIENTO FARMACOLÓGICO O EN CONTROL POST TRATAMIENTO"
  },
  {
    "code" : "2505912",
    "display" : "SEGUNDO ASEO QUIRÚRGICO EN FRACTURAS EXPUESTAS DE MANO O PIE"
  },
  {
    "code" : "2505913",
    "display" : "SEGUNDO ASEO QUIRÚRGICO EN FRACTURAS EXPUESTAS DE BRAZO, ANTEBRAZO, MUSLO Y PIERNA"
  },
  {
    "code" : "2901001",
    "display" : "TRATAMIENTO INTEGRAL DE BRAQUITERAPIA ENDOCAVITARIA O INTERSTICIAL (POR SESIÓN)"
  },
  {
    "code" : "2901002",
    "display" : "TRATAMIENTO INTEGRAL DE BRAQUITERAPIA DE IMPLANTE PERMANENTE, NO INCLUYE IMPLANTE (POR SESIÓN)"
  },
  {
    "code" : "2901003",
    "display" : "TRATAMIENTO INTEGRAL DE BRAQUITERAPIA ALTA O MEDIANA DOSIS POR SESIÓN, HDR (POR SESIÓN)"
  },
  {
    "code" : "2902001",
    "display" : "TRATAMIENTO INTEGRAL DE RADIOTERAPIA ALTAMENTE COMPLEJA CON LINAC"
  },
  {
    "code" : "2902002",
    "display" : "TRATAMIENTO INTEGRAL DE RADIOTERAPIA COMPLEJA CON LINAC"
  },
  {
    "code" : "2902003",
    "display" : "TRATAMIENTO INTEGRAL DE RADIOTERAPIA ESTANDAR CON LINAC"
  },
  {
    "code" : "2902004",
    "display" : "TRATAMIENTO INTEGRAL DE RADIOTERAPIA CONVENCIONAL CON LINAC"
  },
  {
    "code" : "2902005",
    "display" : "TRATAMIENTO INTEGRAL DE RADIOTERAPIA ALTAMENTE COMPLEJA CON LINAC MONOENERGÉTICO"
  },
  {
    "code" : "2902006",
    "display" : "TRATAMIENTO INTEGRAL DE RADIOTERAPIA COMPLEJA CON LINAC MONOENERGÉTICO"
  },
  {
    "code" : "2902007",
    "display" : "TRATAMIENTO INTEGRAL DE RADIOTERAPIA ESTÁNDAR CON LINAC MONOENERGÉTICO"
  },
  {
    "code" : "2902008",
    "display" : "TRATAMIENTO INTEGRAL DE RADIOTERAPIA CONVENCIONAL CON LINAC MONOENERGÉTICO (PALIATIVA)"
  },
  {
    "code" : "2505890",
    "display" : "QUIMIOTERAPIA ALTO RIESGO - ALTO COSTO 1 (POR CICLO)"
  },
  {
    "code" : "2505891",
    "display" : "QUIMIOTERAPIA ALTO RIESGO - BAJO COSTO 2 (POR CICLO)"
  },
  {
    "code" : "2505892",
    "display" : "QUIMIOTERAPIA BAJO RIESGO - ALTO COSTO 1 (POR CICLO)"
  },
  {
    "code" : "2505893",
    "display" : "QUIMIOTERAPIA BAJO RIESGO - BAJO COSTO 2 (POR CICLO)"
  },
  {
    "code" : "2505894",
    "display" : "QUIMIOTERAPIA BAJO RIESGO - BAJO COSTO 3 (POR CICLO)"
  },
  {
    "code" : "2505895",
    "display" : "QUIMIOTERAPIA BAJO RIESGO - BAJO COSTO 4 (POR CICLO)"
  },
  {
    "code" : "2505896",
    "display" : "QUIMIOTERAPIA RIESGO INTERMEDIO - ALTO COSTO 1 (POR CICLO)"
  },
  {
    "code" : "2505897",
    "display" : "QUIMIOTERAPIA RIESGO INTERMEDIO - BAJO COSTO 2 (POR CICLO)"
  },
  {
    "code" : "2505898",
    "display" : "QUIMIOTERAPIA RIESGO INTERMEDIO - BAJO COSTO 3 (POR CICLO)"
  },
  {
    "code" : "2505899",
    "display" : "QUIMIOTERAPIA RIESGO INTERMEDIO - BAJO COSTO 4 (POR CICLO)"
  },
  {
    "code" : "2505900",
    "display" : "QUIMIOTERAPIA RADIOTERAPIA 1 (POR CICLO)"
  },
  {
    "code" : "2505901",
    "display" : "QUIMIOTERAPIA RADIOTERAPIA 2 (POR CICLO)"
  },
  {
    "code" : "2505902",
    "display" : "TRATAMIENTO TERAPIA ENDOCRINA 1 (POR CICLO)"
  },
  {
    "code" : "2505903",
    "display" : "TRATAMIENTO TERAPIA ENDOCRINA 2 (POR CICLO)"
  },
  {
    "code" : "2505904",
    "display" : "TRATAMIENTO INHIBIDORES TIROSIN KINASA 1 (VALOR TRIMESTRAL)"
  },
  {
    "code" : "2505905",
    "display" : "TRATAMIENTO INHIBIDORES TIROSIN KINASA 2 (VALOR TRIMESTRAL)"
  },
  {
    "code" : "2505906",
    "display" : "TRATAMIENTO INHIBIDORES TIROSIN KINASA 3 (VALOR TRIMESTRAL)"
  },
  {
    "code" : "2505907",
    "display" : "TRATAMIENTO INHIBIDORES TIROSIN KINASA 4 (VALOR TRIMESTRAL)"
  },
  {
    "code" : "2505908",
    "display" : "INSTALACIÓN DE CATÉTER CON RESERVORIO PARA TRATAMIENTO DE QUIMIOTERAPIA (INCLUYE CATÉTER)"
  },
  {
    "code" : "2505909",
    "display" : "NEUTROPENIA FEBRIL NIVEL RIESGO BAJO ATENCION SECUNDARIA"
  },
  {
    "code" : "2505910",
    "display" : "NEUTROPENIA FEBRIL NIVEL RIESGO ALTO ATENCION SECUNDARIA"
  },
  {
    "code" : "2505911",
    "display" : "NEUTROPENIA FEBRIL NIVEL RIESGO MUY ALTO ATENCION SECUNDARIA"
  },
  {
    "code" : "2505933",
    "display" : "TROMBECTOMÍA MECÁNICA"
  },
  {
    "code" : "2507035",
    "display" : "ANDADOR CON DOS RUEDAS"
  },
  {
    "code" : "2504095",
    "display" : "CONFIRMACIÓN DIAGNÓSTICA"
  },
  {
    "code" : "2504096",
    "display" : "ETAPIFICACIÓN"
  },
  {
    "code" : "2505053",
    "display" : "TRATAMIENTO QUIRÚRGICO PACIENTES ETAPAS I, II Y III"
  },
  {
    "code" : "2505929",
    "display" : "TOMOGRAFÍA COMPUTARIZADA PLANIFICACIÓN RADIOTERAPIA"
  },
  {
    "code" : "2505054",
    "display" : "QUIMIOTERAPIA CARCINOMA CÉLULAS PEQUEÑAS: ENFERMEDAD LIMITADA O LOCALIZADA CONCOMITANTE RADIOTERAPIA"
  },
  {
    "code" : "2505056",
    "display" : "QUIMIOTERAPIA CARCINOMA CÉLULAS PEQUEÑAS: ENFERMEDAD EXTENDIDA O METASTÁSICA"
  },
  {
    "code" : "2505081",
    "display" : "QUIMIOTERAPIA CARCINOMA NO CÉLULAS PEQUEÑAS: ETAPAS IB, E IIA Y E IIB, E IIIA (RESECADO COMPLETO R0 Y N2(-)) Y E IIIA (RESECADO COMPLETO R0, N2+(1 GANGLIO))"
  },
  {
    "code" : "2505254",
    "display" : "QUIMIOTERAPIA CARCINOMA NO CÉLULAS PEQUEÑAS: ETAPAS E IIIA Y IIIB"
  },
  {
    "code" : "2505258",
    "display" : "QUIMIOTERAPIA CARCINOMA NO CÉLULAS PEQUEÑAS: ESCAMOSO ETAPAS E IV"
  },
  {
    "code" : "2505261",
    "display" : "QUIMIOTERAPIA CARCINOMA NO CÉLULAS PEQUEÑAS: NO ESCAMOSO ETAPAS E IV"
  },
  {
    "code" : "2506078",
    "display" : "SEGUIMIENTO PRIMER AÑO"
  },
  {
    "code" : "2506079",
    "display" : "SEGUIMIENTO SEGUNDO AÑO"
  },
  {
    "code" : "2506080",
    "display" : "SEGUIMIENTO TERCER A QUINTO AÑO"
  },
  {
    "code" : "2504097",
    "display" : "ETAPIFICACIÓN"
  },
  {
    "code" : "2505291",
    "display" : "TRATAMIENTO QUIRÚRGICO BAJA COMPLEJIDAD"
  },
  {
    "code" : "2505306",
    "display" : "TRATAMIENTO ADYUVANTE, RADIOYODO"
  },
  {
    "code" : "2505308",
    "display" : "RECURRENCIA/PERSISTENCIA"
  },
  {
    "code" : "2506081",
    "display" : "SEGUIMIENTO DEL PRIMER AÑO"
  },
  {
    "code" : "2506082",
    "display" : "SEGUIMIENTO DESDE EL SEGUNDO AÑO"
  },
  {
    "code" : "2504098",
    "display" : "ETAPIFICACIÓN"
  },
  {
    "code" : "2505309",
    "display" : "TRATAMIENTO QUIRÚRGICO"
  },
  {
    "code" : "2505932",
    "display" : "TRATAMIENTO SISTÉMICO METASTÁSICO"
  },
  {
    "code" : "2504099",
    "display" : "ETAPIFICACIÓN"
  },
  {
    "code" : "2505917",
    "display" : "MIELOMA MÚLTIPLE EN MAYORES DE 60 AÑOS. FIT. NO CANDIDATOS A TPH AUTÓLOGO. ESQUEMA CTD"
  },
  {
    "code" : "2505918",
    "display" : "MIELOMA MÚLTIPLE EN MAYORES DE 60 AÑOS. NO CANDIDATOS A TPH AUTÓLOGO. NO FIT. ESQUEMA MPT"
  },
  {
    "code" : "2505920",
    "display" : "MIELOMA MÚLTIPLE EN MAYORES DE 60 AÑOS. NO CANDIDATOS A TPH AUTÓLOGO. NO FIT. ESQUEMA CPT"
  },
  {
    "code" : "2505921",
    "display" : "MIELOMA MÚLTIPLE EN MENORES DE 60 AÑOS CANDIDATOS A TPH AUTÓLOGO. ESQUEMA LEN DEX"
  },
  {
    "code" : "2505924",
    "display" : "MIELOMA MÚLTIPLE EN MENORES DE 60 AÑOS CANDIDATOS A TPH AUTÓLOGO. ESQUEMA VRD"
  },
  {
    "code" : "2505925",
    "display" : "MIELOMA MÚLTIPLE EN MENORES DE 60 AÑOS CANDIDATOS A TPH AUTÓLOGO. CYBOR D"
  },
  {
    "code" : "2505927",
    "display" : "MIELOMA MÚLTIPLE EN MENORES DE 60 AÑOS CANDIDATOS A TPH AUTÓLOGO. ESQUEMA VTD"
  },
  {
    "code" : "2506083",
    "display" : "SEGUIMIENTO Y CONTROLES PRIMER AÑO"
  },
  {
    "code" : "2506084",
    "display" : "SEGUIMIENTO Y CONTROLES SEGUNDO AÑO"
  },
  {
    "code" : "2504100",
    "display" : "DIAGNÓSTICO"
  },
  {
    "code" : "2504101",
    "display" : "DIAGNÓSTICO DIFERENCIAL"
  },
  {
    "code" : "2505930",
    "display" : "TRATAMIENTO MEDIANA COMPLEJIDAD"
  },
  {
    "code" : "2505931",
    "display" : "TRATAMIENTO ALTA COMPLEJIDAD"
  },
  {
    "code" : "2505934",
    "display" : "TRATAMIENTO QUIRÚRGICO MEDIANA COMPLEJIDAD"
  },
  {
    "code" : "2505935",
    "display" : "TRATAMIENTO QUIRÚRGICO ALTA COMPLEJIDAD"
  },
  {
    "code" : "2507008",
    "display" : "COLCHÓN ANTIESCARAS VISCOELÁSTICO"
  },
  {
    "code" : "2504093",
    "display" : "Sospecha infección por VIH en embarazadas"
  },
  {
    "code" : "2505001",
    "display" : "Inmunización estacional de pacientes con fibrosis quística"
  },
  {
    "code" : "2505635",
    "display" : "Prevención odontológica niño con discapacidad"
  },
  {
    "code" : "2505636",
    "display" : "ATENCION ODONTOLOGICA INTEGRAL A PERSONAS CON DISCAPACIDAD"
  },
  {
    "code" : "2505637",
    "display" : "ATENCION ODONTOLOGICA EN PABELLON A PERSONAS CON DISCAPACIDAD"
  },
  {
    "code" : "2505645",
    "display" : "Tratamiento quirúrgico pseudoquiste y quiste odontogénico"
  },
  {
    "code" : "2505646",
    "display" : "Tratamiento quirúrgico tumor odontogénico"
  },
  {
    "code" : "2506012",
    "display" : "Rehabilitación fisura labiopalatina adolescente (12° año al 15° año)"
  },
  {
    "code" : "2506120",
    "display" : "SEGUIMIENTO ORL A PARTIR DEL PRIMER AÑO"
  },
  {
    "code" : "2508024",
    "display" : "REHABILITACIÓN EN SEGUIMIENTO DE HIPOACUSIA BILATERAL EN PERSONAS DE 65 AÑOS Y MÁS QUE REQUIEREN USO DE AUDÍFONO"
  },
  {
    "code" : "2508027",
    "display" : "REHABILITACIÓN INTEGRAL EN HIPOACUSIA DEL PREMATURO (AUDÍFONO E IMPLANTE COCLEAR) TERCER AÑO"
  },
  {
    "code" : "2506121",
    "display" : "SEGUIMIENTO HIPOACUSIA DEL PREMATURO (AUDÍFONO E IMPLANTE COCLEAR) PRIMER AÑO"
  },
  {
    "code" : "2506122",
    "display" : "SEGUIMIENTO HIPOACUSIA DEL PREMATURO (AUDÍFONO E IMPLANTE COCLEAR) SEGUNDO AÑO"
  },
  {
    "code" : "2506056",
    "display" : "SEGUIMIENTO HIPOACUSIA DEL PREMATURO (AUDÍFONO E IMPLANTE COCLEAR) TERCER AÑO"
  },
  {
    "code" : "2508028",
    "display" : "REHABILITACIÓN EN ARTRITIS IDIOPATICA JUVENIL"
  },
  {
    "code" : "2507052",
    "display" : "FÉRULA COCK-UP"
  },
  {
    "code" : "2507053",
    "display" : "ORTESIS TOBILLO PIE"
  },
  {
    "code" : "2507054",
    "display" : "PALMETA REPOSO"
  },
  {
    "code" : "2508053",
    "display" : "EVALUACIÓN HEPÁTICA POR ELASTOGRAFÍA"
  },
  {
    "code" : "2505336",
    "display" : "EXAMENES E IMÁGENES ASOCIADO AL TRATAMIENTO CON QUIMIOTERAPIA CANCER VESICAL PROFUNDO"
  },
  {
    "code" : "2506125",
    "display" : "SEGUIMIENTO OSTEOSARCOMA PRIMER AÑO"
  },
  {
    "code" : "2506126",
    "display" : "SEGUIMIENTO OSTEOSARCOMA SEGUNDO AÑO"
  },
  {
    "code" : "2506127",
    "display" : "SEGUIMIENTO OSTEOSARCOMA TERCER A QUINTO AÑO"
  },
  {
    "code" : "2508037",
    "display" : "REHABILITACIÓN EN PREHABILITACIÓN"
  },
  {
    "code" : "2508038",
    "display" : "REHABILITACIÓN INTEGRAL EN FASE DE TRATAMIENTO ACTIVO"
  },
  {
    "code" : "2508039",
    "display" : "REHABILITACIÓN INTEGRAL EN SEGUIMIENTO"
  },
  {
    "code" : "2507055",
    "display" : "BASTÓN CANADIENSE CODERA MÓVIL"
  },
  {
    "code" : "2507056",
    "display" : "VENDAJE PARA PREPARACIÓN DE MUÑON"
  },
  {
    "code" : "2508042",
    "display" : "REHABILITACIÓN INTEGRAL (AUDÍFONO E IMPLANTE COCLEAR) SEGUNDO AÑO"
  },
  {
    "code" : "2508044",
    "display" : "REHABILITACIÓN INTEGRAL (AUDÍFONO E IMPLANTE COCLEAR) TERCER AÑO"
  },
  {
    "code" : "2508043",
    "display" : "REHABILITACIÓN INTEGRAL (AUDÍFONO E IMPLANTE COCLEAR) PRIMER AÑO"
  },
  {
    "code" : "2504146",
    "display" : "DIAGNOSTICO NEFOPATÍA LÚPICA NIVEL SECUNDARIO- TERCIARIO"
  },
  {
    "code" : "2508001",
    "display" : "ETAPIFICACIÓN CÁNCER ANAPLÁSICO"
  },
  {
    "code" : "0101207",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN ENDOCRINOLOGÍA ADULTO"
  },
  {
    "code" : "0101211",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN ONCOLOGÍA MÉDICA"
  },
  {
    "code" : "2508003",
    "display" : "TRATAMIENTO RADIOYODO PARA PACIENTES CON CONTRAINDICACIÓN DE HIPOTIROIDISMO"
  },
  {
    "code" : "2508004",
    "display" : "TRATAMIENTO FARMACOLÓGICO EN PERSONAS CON CÁNCER AVANZADO DE TIROIDES REFRACTARIO A RADIOYODO"
  },
  {
    "code" : "2507037",
    "display" : "ÓRTESIS PARA REHABILITACIÓN DOMICILIARIA POST SARS COV-2 EN PERSONAS CON RIESGO DE SECUELAS SEVERO"
  },
  {
    "code" : "2507038",
    "display" : "ÓRTESIS PARA REHABILITACIÓN AMBULATORIA POST SARS COV-2 EN PERSONAS CON RIESGO DE SECUELAS SEVERO O MODERADO"
  },
  {
    "code" : "2508029",
    "display" : "REHABILITACIÓN INTEGRAL EN BROTE ESCLEROSIS MÚLTIPLE REMITENTE RECURRENTE"
  },
  {
    "code" : "2508005",
    "display" : "Tratamiento Neoadyuvante Quimioterapia"
  },
  {
    "code" : "2508006",
    "display" : "Tratamiento Neoadyuvante Radioterapia"
  },
  {
    "code" : "2508073",
    "display" : "Tratamiento Adyuvante Quimioterapia"
  },
  {
    "code" : "2508074",
    "display" : "Tratamiento Adyuvante Radioterapia"
  },
  {
    "code" : "2508030",
    "display" : "TRATAMIENTO FARMACOLÓGICO DE RESCATE CON ANTIVIRALES PANGENOTIPO"
  },
  {
    "code" : "2508102",
    "display" : "REHABILITACION EN POLITRAUMATIZADO GRAVE CON LESIÓN MEDULAR PARAPLEJIA UTI"
  },
  {
    "code" : "2508103",
    "display" : "REHABILITACION EN POLITRAUMATIZADO GRAVE CON LESIÓN MEDULAR PARAPLEJIA UCI"
  },
  {
    "code" : "2508104",
    "display" : "REHABILITACION EN POLITRAUMATIZADO GRAVE CON LESIÓN MEDULAR TETRAPLEJIA UTI"
  },
  {
    "code" : "2508105",
    "display" : "REHABILITACION EN POLITRAUMATIZADO GRAVE CON LESION MEDULAR TETRAPLEJIA UCI"
  },
  {
    "code" : "2508106",
    "display" : "REHABILITACION EN POLITRAUMATIZADO GRAVE CON LESIÓN MEDULAR PARAPLEJIA CAMAS MEDIAS"
  },
  {
    "code" : "2508107",
    "display" : "REHABILITACION EN POLITRAUMATIZADO GRAVE CON LESIÓN MEDULAR TETRAPLEJIA CAMAS MEDIAS"
  },
  {
    "code" : "2506001",
    "display" : "SEGUIMIENTO TRASPLANTE RENAL 1° AÑO"
  },
  {
    "code" : "2506002",
    "display" : "SEGUIMIENTO TRASPLANTE RENAL A PARTIR DEL 2° AÑO"
  },
  {
    "code" : "2505292",
    "display" : "Tratamiento biológico artritis idiopática juvenil (fármacos biológicos)"
  },
  {
    "code" : "2505296",
    "display" : "Tratamiento farmacológico de primera línea esclerosis múltiple remitente recurrente"
  },
  {
    "code" : "2505300",
    "display" : "Tratamiento farmacológico VHB crónica en personas de 15 años y más"
  },
  {
    "code" : "2505301",
    "display" : "Tratamiento Farmacológico VHB crónica en personas menores de 15 años"
  },
  {
    "code" : "2505314",
    "display" : "Quimioterapia Adyuvante: Alto riesgo"
  },
  {
    "code" : "2908110",
    "display" : "H-ATG/R-ATG"
  },
  {
    "code" : "2908111",
    "display" : "PALBOCICLIB"
  },
  {
    "code" : "2908112",
    "display" : "RIBOCICLIB"
  },
  {
    "code" : "2504115",
    "display" : "Estudio pre trasplante receptor"
  },
  {
    "code" : "2504116",
    "display" : "Estudio pre trasplante donante"
  },
  {
    "code" : "2504117",
    "display" : "Recolección células madres progenitora médula ósea (pabellón), incluye insumos de recolección"
  },
  {
    "code" : "2505985",
    "display" : "Criopreservación en Trasplante de Médula Adulto Alogénico"
  },
  {
    "code" : "2505986",
    "display" : "Acondicionamiento Fludarabina- Radioterapia Corporal Total (TBI) en Leucemia Linfoblástica"
  },
  {
    "code" : "2505987",
    "display" : "Acondicionamiento Fludarabina- Busulfan (oral o endovenoso) en Leucemia Mieloide Aguda, mielodisplasias"
  },
  {
    "code" : "2505988",
    "display" : "ATG-Ciclofosfamida- Fludarabina, TBI(dosis bajas), para Aplasia"
  },
  {
    "code" : "2506097",
    "display" : "Seguimiento dos primeros meses trasplante de médula adulto alogénico, incluye complicaciones infecciosas, bacterianas precoces, micóticas y CMV desde alta TPH"
  },
  {
    "code" : "2506098",
    "display" : "Seguimiento mensual trasplante de médula adulto alogénico, desde tercer mes hasta el día 365"
  },
  {
    "code" : "2506099",
    "display" : "Seguimiento mensual trasplante de médula adulto alogénico segundo año. Incluye complicaciones infecciosas, bacterianas precoces, micóticas y CMV desde alta TPH costo mensual"
  },
  {
    "code" : "2505989",
    "display" : "Acondicionamiento para Mieloma (incluye fármacos e insumos)"
  },
  {
    "code" : "2505990",
    "display" : "Acondicionamiento para Linfoma BEAM con criopreservación (incluye fármacos e insumos)"
  },
  {
    "code" : "2505991",
    "display" : "Acondicionamiento para Linfoma BEAM sin criopreservación (incluye fármacos e insumos)"
  },
  {
    "code" : "2505992",
    "display" : "Criopreservación para células madres de sangre periférica y médula ósea"
  },
  {
    "code" : "2506100",
    "display" : "Seguimiento trasplante de médula adulto autólogo, primer mes"
  },
  {
    "code" : "2505536",
    "display" : "PROTOCOLO MENSUAL (A PARTIR DEL SEGUNDO AÑO)"
  },
  {
    "code" : "2508075",
    "display" : "Tratamiento Primario-Quimioterapia"
  },
  {
    "code" : "2508076",
    "display" : "Tratamiento Primario-Radioterapia"
  },
  {
    "code" : "2508077",
    "display" : "Tratamiento Adyuvante-Quimioterapia"
  },
  {
    "code" : "2508078",
    "display" : "Tratamiento Adyuvante-Radioterapia"
  },
  {
    "code" : "2508092",
    "display" : "Tratamiento Primario-Cirugía"
  },
  {
    "code" : "2508095",
    "display" : "Tratamiento Adyuvante-Cirugía"
  },
  {
    "code" : "2508093",
    "display" : "Tratamiento Primario-Sistémico"
  },
  {
    "code" : "2508094",
    "display" : "Tratamiento Adyuvante-Sistémico"
  },
  {
    "code" : "2508096",
    "display" : "Adyuvante Prevención de Recurrencia"
  },
  {
    "code" : "2508097",
    "display" : "Concomitante"
  },
  {
    "code" : "2508098",
    "display" : "Adyuvante-Hormonoterapia"
  },
  {
    "code" : "2508108",
    "display" : "Valor ECMO móvil horario hábil RM"
  },
  {
    "code" : "2508109",
    "display" : "Valor ECMO móvil horario inhábil RM"
  },
  {
    "code" : "2508110",
    "display" : "Valor ECMO móvil horario hábil V y VI región"
  },
  {
    "code" : "2508111",
    "display" : "Valor ECMO móvil horario inhábil V y VI región"
  },
  {
    "code" : "2508112",
    "display" : "Valor ECMO móvil horario hábil Otras regiones"
  },
  {
    "code" : "2508113",
    "display" : "Valor ECMO móvil horario inhábil Otras regiones"
  },
  {
    "code" : "2508115",
    "display" : "PROFILAXIS CITOMEGALOVIRUS BAJO RIESGO"
  },
  {
    "code" : "2508114",
    "display" : "PROFILAXIS CITOMEGALOVIRUS BAJO RIESGO"
  },
  {
    "code" : "2908059",
    "display" : "RITUXIMAB - CICLOFOSFAMIDA - DEXAMETASONA"
  },
  {
    "code" : "2908060",
    "display" : "TEMOZOLAMIDA"
  },
  {
    "code" : "2908061",
    "display" : "PACLITAXEL (CICLO)"
  },
  {
    "code" : "2908062",
    "display" : "DOXORRUBICINA LIPOSOMAL"
  },
  {
    "code" : "2908063",
    "display" : "GEMCITABINA / DOCETAXEL"
  },
  {
    "code" : "2908064",
    "display" : "CAP (CISPLATINO / DOXORRUBICINA / CICLOFOSFAMIDA)"
  },
  {
    "code" : "2908065",
    "display" : "PACLITAXEL / CARBOPLATINO"
  },
  {
    "code" : "2908066",
    "display" : "FOLFIRI (5 FLUOROURACILO / LEUCOVORINA / IRINOTECAN)"
  },
  {
    "code" : "2908067",
    "display" : "PEMETREXATO / CARBOPLATINO"
  },
  {
    "code" : "2908068",
    "display" : "PACLITAXEL / CISPLATINO"
  },
  {
    "code" : "2908069",
    "display" : "PACLITAXEL"
  },
  {
    "code" : "2908070",
    "display" : "FOLFOX (5 FLUOROURACILO / LEUCOVORINA / OXALIPLATINO)"
  },
  {
    "code" : "2908071",
    "display" : "PEMETREXATO / CISPLATINO"
  },
  {
    "code" : "2908072",
    "display" : "GEMCITABINA / CARBOPLATINO"
  },
  {
    "code" : "2908073",
    "display" : "5 FLUOROURACILO / LEUCOVORINA"
  },
  {
    "code" : "2908074",
    "display" : "DOCETAXEL / CARBOPLATINO"
  },
  {
    "code" : "2908075",
    "display" : "EMA (ETOPOSIDO / METOTREXATO / DACTINOMICINA/ LEUCOVORINA) / CO (CICLOFOSFAMIDA / VINCRISTINA)"
  },
  {
    "code" : "2908076",
    "display" : "GEMCITABINA / CISPLATINO"
  },
  {
    "code" : "2908077",
    "display" : "DOCETAXEL"
  },
  {
    "code" : "2908078",
    "display" : "BEP (BLEOMICINA ETOPOSIDO CISPLATINO)"
  },
  {
    "code" : "2908079",
    "display" : "ETOPOSIDO CARBOPLATINO"
  },
  {
    "code" : "2908080",
    "display" : "5 FLUOROURACILO / CISPLATINO"
  },
  {
    "code" : "2908081",
    "display" : "EP (ETOPOSIDO / CISPLATINO)"
  },
  {
    "code" : "2908082",
    "display" : "IFOSFAMIDA / MESNA"
  },
  {
    "code" : "2908083",
    "display" : "AC (DOXORRUBICINA / CICLOFOSFAMIDA)"
  },
  {
    "code" : "2908084",
    "display" : "DOXORRUBICINA"
  },
  {
    "code" : "2908085",
    "display" : "CARBOPLATINO / PACLITAXEL SEMANAL"
  },
  {
    "code" : "2908086",
    "display" : "5 FLUOROURACILO"
  },
  {
    "code" : "2908087",
    "display" : "CAPECITABINA"
  },
  {
    "code" : "2908088",
    "display" : "5 FLUOROURACILO / MITOMICINA"
  },
  {
    "code" : "2908089",
    "display" : "CARBOPLATINO SEMANAL (MONODROGA)"
  },
  {
    "code" : "2908090",
    "display" : "5 FLUOROURACILO / CISPLATINO"
  },
  {
    "code" : "2908091",
    "display" : "CISPLATINO SEMANAL"
  },
  {
    "code" : "2908092",
    "display" : "ETOPOSIDO / CISPLATINO"
  },
  {
    "code" : "2908093",
    "display" : "CISPLATINO (CADA 21 DÍAS)"
  },
  {
    "code" : "2908094",
    "display" : "ENZALUTAMIDA"
  },
  {
    "code" : "2908095",
    "display" : "ABIRATERONA"
  },
  {
    "code" : "2908096",
    "display" : "LEUPROLIDE"
  },
  {
    "code" : "2908097",
    "display" : "ALECTINIB"
  },
  {
    "code" : "2908098",
    "display" : "OSIMERTINIB"
  },
  {
    "code" : "2908099",
    "display" : "AXITINIB"
  },
  {
    "code" : "2908100",
    "display" : "AFATINIB"
  },
  {
    "code" : "2908101",
    "display" : "SORAFENIB"
  },
  {
    "code" : "2908102",
    "display" : "CRIZOTINIB"
  },
  {
    "code" : "2908103",
    "display" : "SUNINITIB"
  },
  {
    "code" : "2908104",
    "display" : "ERLOTINIB"
  },
  {
    "code" : "2908105",
    "display" : "GEFITINIB"
  },
  {
    "code" : "2908106",
    "display" : "PAZOPANIB"
  },
  {
    "code" : "2908107",
    "display" : "DASATINIB"
  },
  {
    "code" : "2505944",
    "display" : "REPARACIÓN INTRAUTERINA ESPINA BÍFIDA"
  },
  {
    "code" : "2505938",
    "display" : "HEMORRAGIA INTRACEREBRAL ESPONTANEA"
  },
  {
    "code" : "2505939",
    "display" : "TROMBECTOMÍA MECÁNICA"
  },
  {
    "code" : "1707056",
    "display" : "ENDOSONOGRAFÍA BRONQUIAL (EBUS)"
  },
  {
    "code" : "2505644",
    "display" : "REHABILITACIÓN FIJA IMPLANTOASISTIDA EN PERSONAS DE 19 AÑOS Y MÁS"
  },
  {
    "code" : "2504106",
    "display" : "CONFIRMACIÓN PSIQUIATRÍA"
  },
  {
    "code" : "2504107",
    "display" : "CONSULTA ENDOCRINOLOGÍA"
  },
  {
    "code" : "2505963",
    "display" : "TRATAMIENTO HORMONAL DE FEMENINO A MASCULINO (ADECUACIÓN CORPORAL)"
  },
  {
    "code" : "2505964",
    "display" : "CIRUGÍA DE FEMENINO A MASCULINO (PRIMER TIEMPO, INTERVENCIÓN QUIRÚRGICA DE REMODELACIÓN CORPORAL)"
  },
  {
    "code" : "2505965",
    "display" : "CIRUGÍA DE FEMENINO A MASCULINO (SEGUNDO TIEMPO, INTERVENCIÓN QUIRÚRGICA DE ADECUACIÓN SEXUAL)"
  },
  {
    "code" : "2505966",
    "display" : "CIRUGÍA DE FEMENINO A MASCULINO (TERCER TIEMPO, INTERVENCIÓN QUIRÚRGICA DE REASIGNACIÓN SEXUAL)"
  },
  {
    "code" : "2505967",
    "display" : "TRATAMIENTO HORMONAL DE MASCULINO A FEMENINO (ADECUACIÓN CORPORAL)"
  },
  {
    "code" : "2505968",
    "display" : "CIRUGÍA DE MASCULINO A FEMENINO (PRIMER TIEMPO, INTERVENCIÓN QUIRÚRGICA DE REMODELACIÓN CORPORAL)"
  },
  {
    "code" : "2505969",
    "display" : "CIRUGÍA DE MASCULINO A FEMENINO (SEGUNDO TIEMPO, INTERVENCIÓN QUIRÚRGICA DE ADECUACIÓN SEXUAL)"
  },
  {
    "code" : "2505970",
    "display" : "CIRUGÍA DE MASCULINO A FEMENINO (TERCER TIEMPO, INTERVENCIÓN QUIRÚRGICA DE REASIGNACIÓN SEXUAL)"
  },
  {
    "code" : "2506089",
    "display" : "SEGUIMIENTO DE MASCULINO A FEMENINO"
  },
  {
    "code" : "2506090",
    "display" : "SEGUIMIENTO DE FEMENINO A MASCULINO"
  },
  {
    "code" : "2903001",
    "display" : "RADIOCIRUGIA"
  },
  {
    "code" : "2505530",
    "display" : "Procuramiento trasplante de córnea (incluye exámenes donante córnea)"
  },
  {
    "code" : "0108306",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN MEDICINA FÍSICA Y REHABILITACIÓN"
  },
  {
    "code" : "0601101",
    "display" : "EVALUACIÓN KINESIOLÓGICA INTEGRAL"
  },
  {
    "code" : "0101321",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN ENFERMEDADES RESPIRATORIAS ADULTO"
  },
  {
    "code" : "2508002",
    "display" : "REHABILITACIÓN AMBULATORIA POST SARS COV-2 EN PERSONAS CON RIESGO DE SECUELAS SEVERO"
  },
  {
    "code" : "0101330",
    "display" : "CONSULTA MEDICA DE ESPECIALIDAD EN MEDICINA DE URGENCIA"
  },
  {
    "code" : "2504142",
    "display" : "SOSPECHA DEL VIRUS HEPATITIS C EN CONTACTO EPIDEMIOLOGICO"
  },
  {
    "code" : "2504145",
    "display" : "CONFIRMACIÓN DIAGNÓSTICA HIPOACUSIA"
  },
  {
    "code" : "2505091",
    "display" : "EVALUACION DEL TRATAMIENTO DE ERRADICACION HELICOBACTER PYLORI"
  },
  {
    "code" : "2505375",
    "display" : "TRATAMIENTO DE ERRADICACION HELICOBACTER PYLORI"
  },
  {
    "code" : "2506119",
    "display" : "SEGUIMIENTO AUDIOLOGÍA A PARTIR DEL PRIMER AÑO"
  },
  {
    "code" : "2508025",
    "display" : "REHAB. INTEGRAL HIPOACUSIA DEL PREMATURO 1° AÑO (AUDIFONO E IMPLANTE COCLEAR)"
  },
  {
    "code" : "2508083",
    "display" : "NEFRECTOMIA DONANTE CADAVER RIÑON DERECHO"
  },
  {
    "code" : "2508084",
    "display" : "NEFRECTOMIA DONANTE CADAVER RIÑON IZQUIERDO"
  },
  {
    "code" : "2508100",
    "display" : "REHABILITACIÓN TRATAMIENTO HOSPITALIZADO"
  },
  {
    "code" : "0101313",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN CIRUGÍA DE CABEZA, CUELLO Y MAXILOFACIAL"
  },
  {
    "code" : "2505975",
    "display" : "Profilaxis citomegalovirus bajo riesgo"
  },
  {
    "code" : "2506092",
    "display" : "Seguimiento año 1 trasplante de pulmón"
  },
  {
    "code" : "2504111",
    "display" : "Estudio receptor trasplante haploidéntico inmunológico pediátrico"
  },
  {
    "code" : "2504112",
    "display" : "Estudio donante trasplante haploidéntico inmunológico pediátrico"
  },
  {
    "code" : "2504110",
    "display" : "Diagnóstico estudio receptor trasplante haploidéntico inmunológico pediátrico"
  },
  {
    "code" : "2504113",
    "display" : "Tipificación trasplante haploidéntico inmunológico pediátrico"
  },
  {
    "code" : "2504114",
    "display" : "Preparación injerto trasplante haploidéntico inmunológico pediátrico"
  },
  {
    "code" : "2506093",
    "display" : "SEGUIMIENTO MENSUAL PRIMER AÑO TRASPLANTE HAPLOIDENTICO INMUNOLOGICO PEDIATRICO"
  },
  {
    "code" : "2506094",
    "display" : "SEGUIMIENTO MENSUAL SEGUNDO AÑO TRASPLANTE HAPLOIDENTICO INMUNOLOGICO PEDIATRICO"
  },
  {
    "code" : "2506095",
    "display" : "SEGUIMIENTO MENSUAL TERCER AÑO TRASPLANTE HAPLOIDENTICO INMUNOLOGICO PEDIATRICO"
  },
  {
    "code" : "2505976",
    "display" : "Exodoncia de hasta 2 terceros molares (incluido o semincluido) en pacientes entre 15 y 28 años"
  },
  {
    "code" : "2505977",
    "display" : "Exodoncia de 3 o 4 terceros molares (incluido o semincluido) en pacientes entre 15 y 28 años"
  },
  {
    "code" : "2505978",
    "display" : "Atención Odontológica Integral en Periodoncia"
  },
  {
    "code" : "2505979",
    "display" : "Atención Odontológica Integral de TTM&DOF en pacientes entre 20 y 64 años"
  },
  {
    "code" : "2505980",
    "display" : "Atención Odontológica Integral de Patología Oral en pacientes entre 20 y 64 años"
  },
  {
    "code" : "2505971",
    "display" : "Trasplante de pulmón"
  },
  {
    "code" : "2505972",
    "display" : "Complicaciones post trasplante de pulmón"
  },
  {
    "code" : "2505973",
    "display" : "Profilaxis citomegalovirus alto riesgo"
  },
  {
    "code" : "2505516",
    "display" : "Complicaciones post trasplante hígado rechazo agudo"
  },
  {
    "code" : "2505982",
    "display" : "Complicaciones post trasplante de corazón"
  },
  {
    "code" : "2505531",
    "display" : "Mantención donante cadáver (pulmón, corazón o hígado)"
  },
  {
    "code" : "2505983",
    "display" : "Tratamiento trasplante haploidéntico inmunológico pediátrico"
  },
  {
    "code" : "2505984",
    "display" : "Etapa Tratamiento progenitores hematopoyéticos de donante no emparentado"
  },
  {
    "code" : "2506096",
    "display" : "SEGUIMIENTO MENSUAL CUARTO AÑO TRASPLANTE HAPLOIDENTICO INMUNOLOGICO PEDIATRICO"
  },
  {
    "code" : "0101316",
    "display" : "CONSULTA MEDICA DE ESPECIALIDAD EN CIRUGIA PLASTICA Y REPARADORA"
  },
  {
    "code" : "0601102",
    "display" : "ATENCION KINESIOLOGICA INTEGRAL AMBULATORIA O DOMICILIARIA"
  },
  {
    "code" : "0101307",
    "display" : "CONSULTA MEDICA DE ESPECIALIDAD EN MEDICINA INTERNA"
  },
  {
    "code" : "0101209",
    "display" : "CONSULTA MEDICA DE ESPECIALIDAD EN NEUROLOGIA ADULTOS"
  },
  {
    "code" : "0305091",
    "display" : "EXÁMENES LINFOCITOS T Y CD4"
  },
  {
    "code" : "0101204",
    "display" : "FONDO DE OJO"
  },
  {
    "code" : "2508085",
    "display" : "Tratamiento inicial paciente quemado de 15 años y más"
  },
  {
    "code" : "2508086",
    "display" : "Rehabilitación hospitalizado paciente quemado grave menor ed 15 años"
  },
  {
    "code" : "2508087",
    "display" : "Rehabilitación hospitalizado paciente quemado crítico menor ed 15 años"
  },
  {
    "code" : "2508088",
    "display" : "Rehabilitación hospitalizado paciente quemado sobrevida excepcional menor ed 15 años"
  },
  {
    "code" : "2508089",
    "display" : "Rehabilitación hospitalizado paciente quemado grave de mayor de 15 años"
  },
  {
    "code" : "2508090",
    "display" : "Rehabilitación hospitalizado paciente quemado crítico mayor de 15 años"
  },
  {
    "code" : "2508091",
    "display" : "Rehabilitación hospitalizado paciente quemado sobrevida excepcional mayor de 15 años"
  },
  {
    "code" : "2505299",
    "display" : "TRATAMIENTO DE REHABILITACION ESCLEROSIS MULTIPLE REMITENTE RECURRENTE"
  },
  {
    "code" : "2505182",
    "display" : "ETAPIFICACIÓN CÁNCER DE PRÓSTATA"
  },
  {
    "code" : "0101212",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN PSIQUIATRÍA ADULTOS"
  },
  {
    "code" : "0101308",
    "display" : "CONSULTA MEDICA DE ESPECIALIDAD EN OBSTETRICIA Y GINECOLOGIA"
  },
  {
    "code" : "0704018",
    "display" : "PARCHE DE 5X10 CM (50 CM2 C/U) PIEL DE DONANTE."
  },
  {
    "code" : "0704019",
    "display" : "PARCHE DE 10X10 CM (100 CM2 C/U) PIEL DONANTE."
  },
  {
    "code" : "0704020",
    "display" : "PARCHE DE 10X10 CM (100 CM2 C/U) AMNIOS."
  },
  {
    "code" : "0704021",
    "display" : "PARCHE DE 5X10 CM (50 CM2 C/U) AMNIOS."
  },
  {
    "code" : "0704022",
    "display" : "PARCHE DE 5X5 CM (25 CM2 C/U) AMNIOS."
  },
  {
    "code" : "0704023",
    "display" : "PARCHE DE 2X2 CM (4 CM2 C/U) AMNIOS."
  },
  {
    "code" : "0704024",
    "display" : "CUBO DE TEJIDO ÓSEO (LIOFILIZADO/CONGELADO)."
  },
  {
    "code" : "0704025",
    "display" : "RODAJA DE TEJIDO ÓSEO (LIOFILIZADO/CONGELADO)."
  },
  {
    "code" : "0704026",
    "display" : "TABLILLA DE TEJIDO ÓSEO (LIOFILIZADO/CONGELADO)."
  },
  {
    "code" : "0704028",
    "display" : "MICROFRAGMENTADO O GRANULADO (1 GR) DE TEJIDO ÓSEO (LIOFILIZADO)."
  },
  {
    "code" : "0704029",
    "display" : "FRAGMENTO DE HUESO LARGO ( O DE SOPORTE). C/U"
  },
  {
    "code" : "0704030",
    "display" : "VÁLVULAS CARDIACAS. CADA VÁLVULA"
  },
  {
    "code" : "0704031",
    "display" : "HOMOINJERTOS SEGMENTOS VASCULARES. POR SEGMENTO"
  },
  {
    "code" : "0704032",
    "display" : "PACHE DE CÓRNEA DE DONANTE."
  },
  {
    "code" : "2508072",
    "display" : "PROFILAXIS CITOMEGALOVIRUS"
  },
  {
    "code" : "2508055",
    "display" : "Estudio pre-trasplante para candidato a trasplante pulmonar inicial"
  },
  {
    "code" : "2508056",
    "display" : "Estudio para mantención en lista de espera (exámenes para actualización de LAS)"
  },
  {
    "code" : "2506133",
    "display" : "Seguimiento e Inmunosupresores desde el dia 31 a 60 días post trasplante"
  },
  {
    "code" : "2506134",
    "display" : "Seguimiento e Inmunosupresores tercer mes ( 67 días) - sexto mes post trasplante post trasplante"
  },
  {
    "code" : "2506135",
    "display" : "Seguimiento 6 mes 1 día a 9 mes post trasplante"
  },
  {
    "code" : "2506136",
    "display" : "Seguimiento e inmunosupresores 9 mes 1 día a 12 meses post trasplante"
  },
  {
    "code" : "2506137",
    "display" : "Seguimiento e inmunosupresores mes 12 (365 días post trasplante) en adelante (cobro por asistencia a control)"
  },
  {
    "code" : "2508058",
    "display" : "Estudio pre trasplante para candidato a trasplante cardiaco - estudio inicial"
  },
  {
    "code" : "2508059",
    "display" : "Estudio pre trasplante para candidato a trasplante cardiaco - seguimiento por 1 año"
  },
  {
    "code" : "2506145",
    "display" : "Trasplante de corazón seguimiento desde dia 20 a dia 30"
  },
  {
    "code" : "2506146",
    "display" : "Seguimiento post trasplante: 1 mes a 2 meses 29 días"
  },
  {
    "code" : "2506147",
    "display" : "Seguimiento post trasplante: 3 meses a 5 meses 29 días"
  },
  {
    "code" : "2506148",
    "display" : "Seguimiento post trasplante: 6 meses a 8 meses 29 días"
  },
  {
    "code" : "2506149",
    "display" : "Seguimiento post trasplante: 9 meses a 11 meses 29 días"
  },
  {
    "code" : "2506150",
    "display" : "Seguimiento post trasplante: desde año 2"
  },
  {
    "code" : "2508057",
    "display" : "Estudio Donante Vivo Ambulatorio"
  },
  {
    "code" : "2506138",
    "display" : "Seguimiento Primer Mes Post Trasplante Hepático"
  },
  {
    "code" : "2506139",
    "display" : "Seguimiento Segundo Mes Post Trasplante Hepático"
  },
  {
    "code" : "2506140",
    "display" : "Seguimiento Tercer Mes Post Trasplante Hepático"
  },
  {
    "code" : "2506141",
    "display" : "Seguimiento Post Trasplante Hepático de 4 Mes a 24 Meses"
  },
  {
    "code" : "2506142",
    "display" : "Seguimiento Post Trasplante Hepático Desde Segundo Año en Adelante"
  },
  {
    "code" : "2506143",
    "display" : "Seguimiento Estudio Donante Vivo Año 1"
  },
  {
    "code" : "2506144",
    "display" : "Seguimiento Estudio Donante Vivo Año 2"
  },
  {
    "code" : "2508060",
    "display" : "Droga Inmunosupresora protocolo 0 por mes"
  },
  {
    "code" : "2508061",
    "display" : "Droga Inmunosupresora protocolo 1A por mes"
  },
  {
    "code" : "2508062",
    "display" : "Droga Inmunosupresora protocolo 1B por mes"
  },
  {
    "code" : "2508063",
    "display" : "Droga Inmunosupresora protocolo 1C por mes"
  },
  {
    "code" : "2508064",
    "display" : "Droga Inmunosupresora protocolo 1D por mes"
  },
  {
    "code" : "2508065",
    "display" : "Droga Inmunosupresora protocolo 1E por mes"
  },
  {
    "code" : "2508066",
    "display" : "Droga Inmunosupresora protocolo VII mensual"
  },
  {
    "code" : "2508067",
    "display" : "Droga Inmunosupresora protocolo VIII mensual"
  },
  {
    "code" : "2508068",
    "display" : "Droga Inmunosupresora protocolo IX mensual"
  },
  {
    "code" : "2508069",
    "display" : "Droga Inmunosupresora protocolo X mensual"
  },
  {
    "code" : "2508070",
    "display" : "Droga Inmunosupresora protocolo XI mensual"
  },
  {
    "code" : "2508071",
    "display" : "Droga Inmunosupresora protocolo XII mensual"
  },
  {
    "code" : "2505290",
    "display" : "TRATAMIENTO ARTRITIS IDIOPATICA JUVENIL"
  },
  {
    "code" : "2507036",
    "display" : "INTERVENCION QUIRURGICA DE TESTICULO: VACIAMIENTO GANGLIONAR (LALA) POST QUIMIOTERAPIA"
  },
  {
    "code" : "0704017",
    "display" : "PARCHE DE 5X5 CM (25 CM2 C/U) PIEL DE DONANTE."
  },
  {
    "code" : "2908114",
    "display" : "Midostaurina"
  },
  {
    "code" : "2508080",
    "display" : "REHABILITACIÓN EN TRATAMIENTO HOSPITALIZADO"
  },
  {
    "code" : "2508081",
    "display" : "Retinopatía diabética no proliferativa - fotocoagulación"
  },
  {
    "code" : "2508082",
    "display" : "Retinopatía diabética no proliferativa - vitrectomía"
  },
  {
    "code" : "2505993",
    "display" : "TRATAMIENTO DE EVENTOS GRAVES PARA PERSONAS DE 15 AÑOS Y MAS"
  },
  {
    "code" : "2908113",
    "display" : "PONATINIB"
  },
  {
    "code" : "2506101",
    "display" : "SEGUIMIENTO MENSUAL QUINTO AÑO TRASPLANTE HAPLOIDENTICO INMUNOLOGICO PEDIATRICO"
  },
  {
    "code" : "2505994",
    "display" : "ADQUISICION CORDON NACIONAL TRASPLANTE DE PROGENITORES HEMATOPOYETICOS"
  },
  {
    "code" : "2506102",
    "display" : "ETAPA SEGUIMIENTO MENSUAL QUINTO AÑO TRASPLANTE DE PROGENITORES HEMATOPOYETICOS"
  },
  {
    "code" : "2504118",
    "display" : "EVALUACION PRETRASPLANTE DE MEDULA ALOGENICO PEDIATRICO"
  },
  {
    "code" : "2505995",
    "display" : "INJERTO TRASPLANTE DE MEDULA ALOGENICO PEDIATRICO"
  },
  {
    "code" : "2504119",
    "display" : "ESTUDIO DONANTE TRASPLANTE DE MEDULA ALOGENICO PEDIATRICO"
  },
  {
    "code" : "2506103",
    "display" : "SEGUIMIENTO MENSUAL PRIMER AÑO TRASPLANTE DE MEDULA ALOGENICO PEDIATRICO"
  },
  {
    "code" : "2506104",
    "display" : "SEGUIMIENTO MENSUAL SEGUNDO AÑO TRASPLANTE DE MEDULA ALOGENICO PEDIATRICO"
  },
  {
    "code" : "2506105",
    "display" : "SEGUIMIENTO MENSUAL TERCER AÑO TRASPLANTE DE MEDULA ALOGENICO PEDIATRICO"
  },
  {
    "code" : "2506106",
    "display" : "SEGUIMIENTO MENSUAL CUARTO AÑO TRASPLANTE DE MEDULA ALOGENICO PEDIATRICO"
  },
  {
    "code" : "2506107",
    "display" : "SEGUIMIENTO MENSUAL QUINTO AÑO TRASPLANTE DE MEDULA ALOGENICO PEDIATRICO"
  },
  {
    "code" : "2505997",
    "display" : "ATENCION ODONTOLOGICA INTEGRAL EN ODONTOPEDIATRIA"
  },
  {
    "code" : "2504120",
    "display" : "EVALUACION PRETRASPLANTE DE MEDULA PEDIATRICO AUTOLOGO"
  },
  {
    "code" : "2505996",
    "display" : "INJERTO TRASPLANTE DE MEDULA PEDIATRICO AUTOLOGO"
  },
  {
    "code" : "2506108",
    "display" : "SEGUIMIENTO MENSUAL PRIMER AÑO TRASPLANTE DE MEDULA PEDIATRICO AUTOLOGO"
  },
  {
    "code" : "2506109",
    "display" : "SEGUIMIENTO MENSUAL SEGUNDO AÑO TRASPLANTE DE MEDULA PEDIATRICO AUTOLOGO"
  },
  {
    "code" : "2506110",
    "display" : "SEGUIMIENTO MENSUAL TERCER AÑO TRASPLANTE DE MEDULA PEDIATRICO AUTOLOGO"
  },
  {
    "code" : "2506111",
    "display" : "SEGUIMIENTO MENSUAL CUARTO AÑO TRASPLANTE DE MEDULA PEDIATRICO AUTOLOGO"
  },
  {
    "code" : "2506112",
    "display" : "SEGUIMIENTO MENSUAL QUINTO AÑO TRASPLANTE DE MEDULA PEDIATRICO AUTOLOGO"
  },
  {
    "code" : "2506074",
    "display" : "SEGUIMIENTO AÑO ANEMIA APLASICA GRAVE"
  },
  {
    "code" : "0704001",
    "display" : "PROCESAMIENTO DE AMNIOS"
  },
  {
    "code" : "0704002",
    "display" : "PROCURAMIENTO DE AMNIOS"
  },
  {
    "code" : "0704003",
    "display" : "PROCURAMIENTO DE PIEL DE DONANTE CADAVER (DC)"
  },
  {
    "code" : "0704004",
    "display" : "PROCESAMIENTO DE PIEL DE DONANTE CADAVER (DC)"
  },
  {
    "code" : "0704005",
    "display" : "PROCURAMIENTO DE PIEL DE DONANTE VIVO (DV)"
  },
  {
    "code" : "0704006",
    "display" : "PROCESAMIENTO DE PIEL DE DONANTE VIVO (DV)"
  },
  {
    "code" : "0704007",
    "display" : "PROCURAMIENTO DE HOMOINJERTOS (VALVULAS CARDIACAS Y SEGMENTOS VASCULARES)"
  },
  {
    "code" : "0704008",
    "display" : "PROCESAMIENTO DE HOMOINJERTOS (VALVULAS CARDIACAS Y SEGMENTOS VASCULARES)"
  },
  {
    "code" : "0704009",
    "display" : "PROCURAMIENTO DE TEJIDO OSEO DE DONANTE VIVO (DV)"
  },
  {
    "code" : "0704010",
    "display" : "PROCURAMIENTO DE TEJIDO OSEO DE DONANTE CADAVER (DC)"
  },
  {
    "code" : "0704011",
    "display" : "PROCESAMIENTO DE TEJIDO OSEO GRANULADO"
  },
  {
    "code" : "0704012",
    "display" : "PROCESAMIENTO DE TEJIDO OSEO CONGELADO"
  },
  {
    "code" : "0704013",
    "display" : "PROCESAMIENTO DE TEJIDO OSEO LIOFILIZADO"
  },
  {
    "code" : "0201501",
    "display" : "DIA CAMA HOSPITALIZACION DOMICILIARIA CUIDADOS BASICOS"
  },
  {
    "code" : "0201502",
    "display" : "DIA CAMA HOSPITALIZACION DOMICILIARIA CUIDADOS MEDIOS"
  },
  {
    "code" : "0201503",
    "display" : "DIA CAMA HOSPITALIZACION DOMICILIARIA CUIDADOS ALTA COMPLEJIDAD"
  },
  {
    "code" : "2502031",
    "display" : "PROCURAMIENTO DE CORNEAS DE DONANTE CADAVER (DC) POR PARO CARDIORRESPIRATORIO (PCR)"
  },
  {
    "code" : "2502032",
    "display" : "PROCURAMIENTO DE CORNEAS DE DONANTE CADAVER (DC) POR MUERTE ENCEFALICA (ME)"
  },
  {
    "code" : "2502033",
    "display" : "PROCESAMIENTO DE CORNEA"
  },
  {
    "code" : "2502034",
    "display" : "SEGUIMIENTO POST TRASPLANTE DE CORNEA PRIMER AÑO"
  },
  {
    "code" : "2507039",
    "display" : "AYUDAS TÉCNICAS - PIE DIABÉTICO"
  },
  {
    "code" : "2508007",
    "display" : "TRATAMIENTO PERSONAS 65 AÑOS Y MÁS"
  },
  {
    "code" : "2508008",
    "display" : "REHABILITACIÓN EN PACIENTES CON DISRAFIA ESPINAL ABIERTA DE LOS 0 A LOS 18 MESES DE EDAD"
  },
  {
    "code" : "2508009",
    "display" : "REHABILITACIÓN EN PACIENTES CON DISRAFIA ESPINAL ABIERTA DESDE LOS 19 MESES A MENORES DE 3 AÑOS DE EDAD"
  },
  {
    "code" : "2508010",
    "display" : "REHABILITACIÓN EN PACIENTES CON DISRAFIA ESPINAL ABIERTA DE 3 AÑOS A MENORES DE 5 AÑOS DE EDAD"
  },
  {
    "code" : "2508011",
    "display" : "REHABILITACIÓN EN PACIENTES CON DISRAFIA ESPINAL ABIERTA DE 5 A 15 AÑOS DE EDAD"
  },
  {
    "code" : "2507040",
    "display" : "ÓRTESIS TOBILLO PIE A PACIENTES CON DISRAFIA ESPINAL ABIERTA"
  },
  {
    "code" : "2507041",
    "display" : "ÓRTESIS PELVIPEDIO A PACIENTES CON DISRAFIA ESPINAL ABIERTA"
  },
  {
    "code" : "2507042",
    "display" : "SITTING A PACIENTES CON DISRAFIA ESPINAL ABIERTA"
  },
  {
    "code" : "2507043",
    "display" : "CORSET A PACIENTES CON DISRAFIA ESPINAL ABIERTA"
  },
  {
    "code" : "2507044",
    "display" : "ANDADOR CON APOYO ANTEBRAQUIAL A PACIENTES CON DISRAFIA ESPINAL ABIERTA"
  },
  {
    "code" : "2507045",
    "display" : "CANALETAS A PACIENTES CON DISRAFIA ESPINAL ABIERTA"
  },
  {
    "code" : "2508012",
    "display" : "CONTROL POSTQUIRÚRGICO"
  },
  {
    "code" : "2508013",
    "display" : "REHABILITACIÓN PRECOZ HOSPITALARIA"
  },
  {
    "code" : "2508014",
    "display" : "REHABILITACIÓN AMBULATORIA"
  },
  {
    "code" : "2504140",
    "display" : "TAMIZAJE DE VIH EN PERSONAS GESTANTES"
  },
  {
    "code" : "2508015",
    "display" : "ANTIRETROVIRALES PARA RESCATE EN PERSONAS DE 18 AÑOS Y MÁS MULTIRESISTENTES"
  },
  {
    "code" : "2505187",
    "display" : "RADIOTERAPIA PALIATIVA CÁNCER DE PRÓSTATA"
  },
  {
    "code" : "2506132",
    "display" : "SEGUIMIENTO DEL PRIMER AÑO"
  },
  {
    "code" : "2507046",
    "display" : "SILLA DE RUEDAS NEUROLÓGICA BASCULANTE"
  },
  {
    "code" : "2507047",
    "display" : "SILLA DE RUEDAS NEUROLÓGICA INCLINA"
  },
  {
    "code" : "2508016",
    "display" : "REHABILITACIÓN AMBULATORIA"
  },
  {
    "code" : "2508017",
    "display" : "TRATAMIENTO ANTICOAGULANTE ORAL"
  },
  {
    "code" : "2508018",
    "display" : "REHABILITACIÓN AMBULATORIA"
  },
  {
    "code" : "2506027",
    "display" : "TRATAMIENTO MEDICAMENTOSO Y SEGUIMIENTO ACROMEGALIA"
  },
  {
    "code" : "2506032",
    "display" : "SEGUIMIENTO LEUCEMIA MIELOIDE CRÓNICA"
  },
  {
    "code" : "2506033",
    "display" : "SEGUIMIENTO LEUCEMIA LINFÁTICA CRÓNICA"
  },
  {
    "code" : "2504041",
    "display" : "CONFIRMACIÓN TEC MODERADO Y GRAVE"
  },
  {
    "code" : "2506115",
    "display" : "SEGUIMIENTO PRIMER AÑO PACIENTE QUEMADO DE 15 AÑOS Y MÁS"
  },
  {
    "code" : "2506116",
    "display" : "SEGUIMIENTO PRIMER AÑO PACIENTE QUEMADO MENOR DE 15 AÑOS"
  },
  {
    "code" : "2506117",
    "display" : "SEGUIMIENTO SEGUNDO AÑO PACIENTE QUEMADO DE 15 AÑOS Y MÁS"
  },
  {
    "code" : "2506118",
    "display" : "SEGUIMIENTO SEGUNDO AÑO PACIENTE QUEMADO MENOR DE 15 AÑOS"
  },
  {
    "code" : "2508020",
    "display" : "REHABILITACIÓN AMBULATORIA PRIMER AÑO PACIENTE QUEMADO MAYOR DE 15 AÑOS"
  },
  {
    "code" : "2508021",
    "display" : "REHABILITACIÓN AMBULATORIA PRIMER AÑO PACIENTE QUEMADO MENOR DE 15 AÑOS"
  },
  {
    "code" : "2508022",
    "display" : "REHABILITACIÓN AMBULATORIA SEGUNDO AÑO PACIENTE QUEMADO MAYOR DE 15 AÑOS"
  },
  {
    "code" : "2508023",
    "display" : "REHABILITACIÓN AMBULATORIA SEGUNDO AÑO PACIENTE QUEMADO MENOR DE 15 AÑOS"
  },
  {
    "code" : "2507048",
    "display" : "AYUDAS TÉCNICAS AMBULATORIA PRIMER AÑO PACIENTE QUEMADO MAYOR DE 15 AÑOS"
  },
  {
    "code" : "2507049",
    "display" : "AYUDAS TÉCNICAS AMBULATORIA PRIMER AÑO PACIENTE QUEMADO MENOR DE 15 AÑOS"
  },
  {
    "code" : "2507050",
    "display" : "AYUDAS TÉCNICAS AMBULATORIA SEGUNDO AÑO PACIENTE QUEMADO MAYOR DE 15 AÑOS"
  },
  {
    "code" : "2507051",
    "display" : "AYUDAS TÉCNICAS AMBULATORIA SEGUNDO AÑO PACIENTE QUEMADO MENOR DE 15 AÑOS"
  },
  {
    "code" : "2504055",
    "display" : "ECOTOMOGRAFIA TRANSVAGINAL PARA SEGUIMIENTO DE OVULACION, PROC. COMPLETO (6-8 SESIONES)"
  },
  {
    "code" : "2504056",
    "display" : "ESPERMIOGRAMA (FISICO Y MICROSCOPICO, CON O SIN OBSERVACION HASTA 24 HORAS)"
  },
  {
    "code" : "0303058",
    "display" : "HORMONA ANTIMULLERIANA"
  },
  {
    "code" : "2504058",
    "display" : "EVALUACION DIAGNOSTICA EN DROGAS A MENORES"
  },
  {
    "code" : "2908115",
    "display" : "H-ATG (LINFOGLOBULINA) (POR UNA VEZ)"
  },
  {
    "code" : "2908116",
    "display" : "R-ATG (TIMOGLOBULINA) (POR UNA VEZ)"
  },
  {
    "code" : "2908117",
    "display" : "RITUXIMAB (COMPLEMENTO)"
  },
  {
    "code" : "2908118",
    "display" : "ICE (IFOSFAMIDA + MESNA - ETOPÓSIDO - CARBOPLATINO:AUC) (CICLO)"
  },
  {
    "code" : "2908119",
    "display" : "ESHAP (ETOPÓSIDO - CISPLATINO - CITARABINA) (CICLO)"
  },
  {
    "code" : "2908120",
    "display" : "LENALIDOMIDA + DEXAMETASONA (CICLO)"
  },
  {
    "code" : "2908121",
    "display" : "PERTUZUMAB - TRASTUZUMAB -DOCETAXEL (PRIMERA DOSIS) (POR UNA VEZ)"
  },
  {
    "code" : "2908122",
    "display" : "PERTUZUMAB - TRASTUZUMAB -DOCETAXEL (DOSIS DE MANTENCIÓN) (CICLO)"
  },
  {
    "code" : "2908123",
    "display" : "PERTUZUMAB - TRASTUZUMAB - PACLITAXEL (CICLO)"
  },
  {
    "code" : "2908124",
    "display" : "PALBOCICLIB + FULVESTRAN (CICLO)"
  },
  {
    "code" : "2908125",
    "display" : "PEMBROLIZUMAB - CISPLATINO - 5 FLUOROURACILO (CICLO)"
  },
  {
    "code" : "2908126",
    "display" : "LORLATINIB (MENSUAL)"
  },
  {
    "code" : "2908127",
    "display" : "BLINATUMOMAB (POR UNA VEZ)"
  },
  {
    "code" : "2908128",
    "display" : "PEMBROLIZUMAB (CICLO)"
  },
  {
    "code" : "2908129",
    "display" : "RIBOCICLIB (CICLO)"
  },
  {
    "code" : "2908130",
    "display" : "LENVATINIB (CICLO)"
  },
  {
    "code" : "2908131",
    "display" : "PACLITAXEL (CICLO)"
  },
  {
    "code" : "2908132",
    "display" : "NIVOLUMAB (SEGUNDA LINEA DE TRATAMIENTO)"
  },
  {
    "code" : "2908133",
    "display" : "NIVOLUMAB (DESPUES DE TRATAMIENTO PREVIO)"
  },
  {
    "code" : "2908134",
    "display" : "NIVOLUMAB (TRATAMIENTO ADYUVANTE)"
  },
  {
    "code" : "2908135",
    "display" : "NIVOLUMAB (PRIMERA LINEA TRATAMIENTO PALIATIVO)"
  },
  {
    "code" : "2908136",
    "display" : "ABEMACICLIB (CICLO)"
  },
  {
    "code" : "2908137",
    "display" : "ATEZOLIZUMAB (CICLO)"
  },
  {
    "code" : "2908138",
    "display" : "BRIGATINIB (CICLO)"
  },
  {
    "code" : "030203503",
    "display" : "GENTAMICINA, NIVELES PLASMATICOS DE"
  },
  {
    "code" : "030203504",
    "display" : "VANCOMICINA, NIVELES PLASMATICOS DE"
  },
  {
    "code" : "030203505",
    "display" : "COCAINA, DETERMINACION DE"
  },
  {
    "code" : "030203506",
    "display" : "MARIHUANA, DETERMINACION DE"
  },
  {
    "code" : "030203507",
    "display" : "ANFETAMINAS, DETERMINACION DE"
  },
  {
    "code" : "030203508",
    "display" : "OPIACEOS, DETERMINACION DE"
  },
  {
    "code" : "030203509",
    "display" : "BENZODIAZEPINAS , DETERMINACION DE"
  },
  {
    "code" : "030203510",
    "display" : "TEOFILINA(AMINOFILINA), NIVELES PLASMATICOS DE"
  },
  {
    "code" : "030203511",
    "display" : "AC. VALPROICO , NIVELES PLASMATICOS DE"
  },
  {
    "code" : "030203512",
    "display" : "CARBAMAZEPINA, NIVELES PLASMATICOS DE"
  },
  {
    "code" : "030203513",
    "display" : "FENOBARBITAL, NIVELES PLASMATICOS DE"
  },
  {
    "code" : "030203514",
    "display" : "DIGOXINA, NIVELES PLASMATICOS DE"
  },
  {
    "code" : "030203515",
    "display" : "FENITOINA , NIVELES PLASMATICOS DE"
  },
  {
    "code" : "030203517",
    "display" : "METOTREXATO, NIVELES PLASMATICOS DE"
  },
  {
    "code" : "030203519",
    "display" : "PRIMIDONA, NIVELES PLASMATICOS DE"
  },
  {
    "code" : "030203520",
    "display" : "RAPAMICINA, NIVELES PLASMATICOS DE"
  },
  {
    "code" : "030203523",
    "display" : "CERTCAN NIVELES PLASMATICOS"
  },
  {
    "code" : "030206101",
    "display" : "ELECTROFORESIS DE PROTEINAS EN SUERO (EFP)"
  },
  {
    "code" : "030206102",
    "display" : "ELECTOFORESIS DE PROTEINAS EN ORINA (EFP)"
  },
  {
    "code" : "030206301",
    "display" : "TRANSAMINASAS, OXALACETICA (GOT)"
  },
  {
    "code" : "030206302",
    "display" : "TRANSAMINASAS, PIRUVICA (GPT)"
  },
  {
    "code" : "0302077",
    "display" : "VITAMINA B12 POR INMUNOENSAYO"
  },
  {
    "code" : "0302078",
    "display" : "25 OH VITAMINA D TOTAL POR INMUNOENSAYO (QUIMIOLUMINISCENCIA, ENZIMOINMUNOENSAYO, RADIO INMUNOENSAYO Y OTROS)"
  },
  {
    "code" : "0302081",
    "display" : "CALCIO IÓNICO. INCLUYE MEDICIÓN DE PH MÉTODO IÓN SELECTIVO. NO INCLUYE POINT OF CARE TESTING POCT"
  },
  {
    "code" : "0302082",
    "display" : "FENILALANINA CUANTITATIVA EN GOTAS DE SANGRE SECA"
  },
  {
    "code" : "0302083",
    "display" : "CARBOXIHEMOGLOBINA"
  },
  {
    "code" : "0302084",
    "display" : "PLOMO EN SANGRE"
  },
  {
    "code" : "0302085",
    "display" : "PREALBUMINA"
  },
  {
    "code" : "0302086",
    "display" : "HOMOCISTEÍNA"
  },
  {
    "code" : "0302095",
    "display" : "TIOPURINA METILTRANSFERASA, ACTIVIDAD ENZIMATICA"
  },
  {
    "code" : "0302097",
    "display" : "HORMONA TIROESTIMULANTE, NEONATAL"
  },
  {
    "code" : "0302098",
    "display" : "PERFIL DE AMINOÁCIDOS Y ACILCARNITINAS"
  },
  {
    "code" : "0302099",
    "display" : "PESQUISA NEONATAL AMPLIADA EN GSS (INCLUYE PERFIL DE AMINOÁCIDOS Y ACILCARNITINAS; SUCCINILACETONA; HORMONA TIROESTIMULANTE, NEONATAL; BIOTINIDASA; GALACTOSA TOTAL; GALACTOSA-1-FOSFATO URIDILTRANSFERASA; 17-HIDROXIPROGESTERONA; TRIPSINA INMUNORREACTIVA)."
  },
  {
    "code" : "0302100",
    "display" : "PROTEÍNAS TOTALES EN SANGRE"
  },
  {
    "code" : "0302101",
    "display" : "ALBÚMINAS EN SANGRE"
  },
  {
    "code" : "0302110",
    "display" : "LACTOSA, CURVA DE TOLERANCIA, (MÍNIMO CUATRO DETERMINACIONES) (NO INCLUYE LA LACTOSA QUE SE ADMINISTRA) (INCLUYE LOS VALORES DE TODAS LAS TOMAS DE MUESTRAS NECESARIAS)"
  },
  {
    "code" : "0302112",
    "display" : "PERFIL CRITICO ARTERIAL O VENOSO (POINT OF CARE)"
  },
  {
    "code" : "0302113",
    "display" : "CISTATINA C - MARCADORES RENALES - EN SANGRE"
  },
  {
    "code" : "030211601",
    "display" : "DETECCIÓN DE FACTOR V DE LEIDEN (MUTACIÓN G1691A, FVQ506)"
  },
  {
    "code" : "030211702",
    "display" : "DETECCIÓN DE MUTACIÓN DE PROTROMBINA (G20210A)"
  },
  {
    "code" : "030304801",
    "display" : "IGFBP3, (INSULINE LIKE GROWTH FACTOR BINDING PROTEIN) C/U"
  },
  {
    "code" : "030304802",
    "display" : "IGFBP1 (INSULINE LIKE GROWTH FACTOR BINDING PROTEIN) C/U"
  },
  {
    "code" : "0303052",
    "display" : "PEPTIDO C"
  },
  {
    "code" : "0303053",
    "display" : "CALCITONINA"
  },
  {
    "code" : "0303055",
    "display" : "NT-PRO BNP O BNP"
  },
  {
    "code" : "0303056",
    "display" : "CORTISOL SALIVAL"
  },
  {
    "code" : "0303057",
    "display" : "TRIYODOTIRONINA LIBRE (T3 LIBRE)"
  },
  {
    "code" : "0303123",
    "display" : "ÍNDICE ANDROGÉNICO (INCLUYE TESTOSTERONA TOTAL Y SHBG)"
  },
  {
    "code" : "0304006",
    "display" : "FISH CROMOSOMAS X E Y"
  },
  {
    "code" : "0304008",
    "display" : "AMPLIFICACIÓN POR PCR MÁS ANÁLISIS DE FRAGMENTOS FLUORESCENTES POR ELECTROFORESIS CAPILAR (HASTA 5 FRAGMENTOS)"
  },
  {
    "code" : "0304009",
    "display" : "ESTUDIO DE DELECIONES Y DUPLICACIONES POR AMPLIFICACIÓN MÚLTIPLE DE SONDAS DEPENDIENTE DE LIGACIÓN (MLPA) (1 O VARIOS GENES)"
  },
  {
    "code" : "0304010",
    "display" : "ESTUDIO DE DELECIONES Y DUPLICACIONES POR AMPLIFICACIÓN MÚLTIPLE DE SONDAS DEPENDIENTE DE LIGACIÓN (MLPA) MÁS ESTUDIO DE METILACIÓN O SEGUNDO SET DE SONDAS (1 O VARIOS GENES)"
  },
  {
    "code" : "0304012",
    "display" : "AMPLIFICACIÓN POR PCR EN TIEMPO REAL CUANTITATIVO CON SONDA"
  },
  {
    "code" : "0304013",
    "display" : "AMPLIFICACIÓN DE ADN POR PCR CONVENCIONAL DE 1 FRAGMENTO"
  },
  {
    "code" : "0304014",
    "display" : "AMPLIFICACIÓN POR PCR MÁS ANÁLISIS POR RESTRICCIÓN ENZIMÁTICA"
  },
  {
    "code" : "0304015",
    "display" : "FISH EN FROTIS FRESCOS DE MÉDULA ÓSEA, SANGRE, CONCENTRADO DE CÉLULAS PLASMÁTICAS SELECCIONADAS, BÚSQUEDA DE ALTERACIONES ADQUIRIDAS"
  },
  {
    "code" : "0304016",
    "display" : "CARIOTIPO MOLECULAR (HIBRIDACIÓN GENÓMICA COMPARATIVA EN MICROMATRICES) 60K (INCLUYE LA EXTRACCIÓN DE ADN)"
  },
  {
    "code" : "030500501",
    "display" : "ANTICUERPOS ANTINUCLEARES (ANA)"
  },
  {
    "code" : "030500502",
    "display" : "ANTICUERPOS ANTI CENTROMERO"
  },
  {
    "code" : "030500503",
    "display" : "ANTI MUSCULO LISO (AML)"
  },
  {
    "code" : "030500504",
    "display" : "ANTI CELULAS PARIETALES GASTRICAS (APCA)"
  },
  {
    "code" : "030500505",
    "display" : "ANTICUERPOS ANTI MITOCONDRIALES (AMA)"
  },
  {
    "code" : "030500507",
    "display" : "ANTICUERPOS ANTI DNA (ELISA)"
  },
  {
    "code" : "1601111",
    "display" : "APLICACIÓN DE INMUNOMODULADORES, QUÍMICOS Y SIMILARES HASTA 10 LESIONES POR SESIÓN"
  },
  {
    "code" : "1201044",
    "display" : "TOMOGRAFÍA COHERENCIA ÓPTICA, C/ OJO"
  },
  {
    "code" : "1201045",
    "display" : "PAQUIMETRÍA"
  },
  {
    "code" : "1301045",
    "display" : "EMISIONES OTOACÚSTICAS"
  },
  {
    "code" : "1601110",
    "display" : "CURETAJE DE LESIONES VIRALES Y SIMILARES HASTA 10 LESIONES POR SESIÓN"
  },
  {
    "code" : "1601115",
    "display" : "IMPLANTES SUBCUTÁNEOS, INSTALACIÓN O RETIRO"
  },
  {
    "code" : "1601116",
    "display" : "CRIOTERAPIA HASTA 5 LESIONES POR SESIÓN"
  },
  {
    "code" : "1601117",
    "display" : "CRIOTERAPIA 6 A 10 LESIONES POR SESIÓN"
  },
  {
    "code" : "1601119",
    "display" : "INYECCIÓN INTRACUTÁNEA EN ÁREAS HASTA 9 CM2 POR SESIÓN"
  },
  {
    "code" : "1601121",
    "display" : "TRATAMIENTO ABRASIVO CUTÁNEO QUÍMICO POR SESIÓN"
  },
  {
    "code" : "1601122",
    "display" : "TRICOGRAMA"
  },
  {
    "code" : "1601124",
    "display" : "TRATAMIENTO POR LÁSER, IPL O SIMILAR POR ÁREA HASTA 16 CM2 POR SESIÓN"
  },
  {
    "code" : "1601126",
    "display" : "DERMATOSCOPÍA DIGITAL CON REGISTRO GRÁFICO O DIGITAL HASTA 5 LESIONES"
  },
  {
    "code" : "2001025",
    "display" : "TOMA DE BIOPSIA CON AGUJA BAJO VISIÓN ECOGRÁFICA DE LA MAMA (BIOPSIA CORE)"
  },
  {
    "code" : "2107003",
    "display" : "LUXACIONES DE ARTICULACIONES MENORES (EL RESTO)"
  },
  {
    "code" : "2502020",
    "display" : "CLÍNICA DE LACTANCIA (0 A 6 MESES DE EDAD)"
  },
  {
    "code" : "2602001",
    "display" : "ATENCIÓN INTEGRAL DE NUTRICIONISTA (POR SESIÓN)"
  },
  {
    "code" : "2609001",
    "display" : "ATENCIÓN INTEGRAL DE ACUPUNTURA POR PROFESIONAL DE LA SALUD (POR SESIÓN)"
  },
  {
    "code" : "2701101",
    "display" : "CONSULTA ESPECIALIDAD PERIODONCIA"
  },
  {
    "code" : "2701102",
    "display" : "CONSULTA ESPECIALIDAD CIRUGÍA Y TRAUMATOLOGÍA BUCO MAXILOFACIAL"
  },
  {
    "code" : "2701103",
    "display" : "CONSULTA ESPECIALIDAD ENDODONCIA"
  },
  {
    "code" : "2701104",
    "display" : "CONSULTA ESPECIALIDAD IMAGENOLOGÍA ORAL Y MAXILOFACIAL"
  },
  {
    "code" : "2701105",
    "display" : "CONSULTA ESPECIALIDAD IMPLANTOLOGÍA BUCO MAXILOFACIAL"
  },
  {
    "code" : "2701107",
    "display" : "CONSULTA ESPECIALIDAD ORTODONCIA Y ORTOPEDIA DENTO MAXILOFACIAL"
  },
  {
    "code" : "2701108",
    "display" : "CONSULTA ESPECIALIDAD PATOLOGÍA ORAL Y MAXILOFACIAL"
  },
  {
    "code" : "2701109",
    "display" : "CONSULTA ESPECIALIDAD REHABILITACIÓN ORAL"
  },
  {
    "code" : "2701110",
    "display" : "CONSULTA ESPECIALIDAD TRASTORNOS TEMPOROMANDIBULARES Y DOLOR OROFACIAL"
  },
  {
    "code" : "2701111",
    "display" : "CONSULTA ESPECIALIDAD SOMATO-PRÓTESIS"
  },
  {
    "code" : "2701112",
    "display" : "EDUCACIÓN GRUPAL"
  },
  {
    "code" : "2701115",
    "display" : "CONSULTA DE URGENCIA ODONTOLÓGICA"
  },
  {
    "code" : "2702101",
    "display" : "RADIOGRAFÍA RETROALVEOLAR UNITARIA ADULTO (POR PLACA)"
  },
  {
    "code" : "2702103",
    "display" : "RADIOGRAFÍA BITE WING ADULTO (POR PLACA)"
  },
  {
    "code" : "2702104",
    "display" : "RADIOGRAFÍA BITE-WING NIÑO (POR PLACA)"
  },
  {
    "code" : "2702105",
    "display" : "RADIOGRAFÍA EXTRAORAL (POR PLACA)"
  },
  {
    "code" : "2702106",
    "display" : "RADIOGRAFÍA OCLUSAL (POR PLACA)"
  },
  {
    "code" : "2702107",
    "display" : "SIALOGRAFÍA (CADA LADO) (INCLUYE EL PROC.)"
  },
  {
    "code" : "2702108",
    "display" : "TELERRADIOGRAFÍA"
  },
  {
    "code" : "2702109",
    "display" : "RADIOGRAFÍA PANORÁMICA U ORTOPANTOMOGRAFÍA"
  },
  {
    "code" : "2702110",
    "display" : "RADIOGRAFÍA DE ATM BILATERAL EN BOCA CERRADA Y BOCA ABIERTA"
  },
  {
    "code" : "2702111",
    "display" : "TOMOGRAFÍA COMPUTACIONAL MAXILO FACIAL CONE BEAM ZONA DENTARIA"
  },
  {
    "code" : "2702112",
    "display" : "TOMOGRAFÍA COMPUTACIONAL MAXILO FACIAL CONE BEAM UNIMAXILAR"
  },
  {
    "code" : "2702113",
    "display" : "TOMOGRAFÍA COMPUTADA CONE BEAM BIMAXILAR, MÁXILO FACIAL, CRÁNEO COMPLETO, SIALO TC CONE BEAM"
  },
  {
    "code" : "2702114",
    "display" : "TOMOGRAFÍA COMPUTADA DE CUELLO SUPRAHIOIDEO CON CONTRASTE"
  },
  {
    "code" : "2702115",
    "display" : "SIALO TOMOGRAFÍA COMPUTADA"
  },
  {
    "code" : "2702116",
    "display" : "RESONANCIA MAGNÉTICA DE CUELLO SUPRAHIOIDEO"
  },
  {
    "code" : "2702117",
    "display" : "ESTUDIO DE LOCALIZACIÓN MAXILOFACIAL"
  },
  {
    "code" : "2703101",
    "display" : "APLICACIÓN DE SELLANTES"
  },
  {
    "code" : "2703102",
    "display" : "DESGASTES SELECTIVOS"
  },
  {
    "code" : "2703103",
    "display" : "DESTARTRAJE Y PULIDO CORONARIO"
  },
  {
    "code" : "2703105",
    "display" : "PULPOTOMÍA"
  },
  {
    "code" : "2703106",
    "display" : "APLICACIÓN TÓPICA DE FLUORUROS"
  },
  {
    "code" : "2703107",
    "display" : "EXODONCIA SIMPLE DIENTE PERMANENTE"
  },
  {
    "code" : "2703108",
    "display" : "EXODONCIA DIENTE PRIMARIO"
  },
  {
    "code" : "2703109",
    "display" : "OBTURACIÓN AMALGAMA"
  },
  {
    "code" : "2703110",
    "display" : "OBTURACIÓN COMPOSITE"
  },
  {
    "code" : "2703111",
    "display" : "OBTURACIÓN VIDRIO IONÓMERO"
  },
  {
    "code" : "2703112",
    "display" : "PROFILAXIS DENTAL"
  },
  {
    "code" : "2703113",
    "display" : "ACCESO CAVITARIO"
  },
  {
    "code" : "2703114",
    "display" : "FERULIZACIÓN POR GRUPO"
  },
  {
    "code" : "2703115",
    "display" : "RECUBRIMIENTO DIRECTO"
  },
  {
    "code" : "2703116",
    "display" : "PULPECTOMÍA (POR ODONTÓLOGO GENERAL)"
  },
  {
    "code" : "2704002",
    "display" : "DISPOSITIVO INTEROCLUSAL"
  },
  {
    "code" : "2704003",
    "display" : "PRÓTESIS DE RESTITUCIÓN (FASE CLÍNICA)"
  },
  {
    "code" : "2704004",
    "display" : "PRÓTESIS METÁLICA"
  },
  {
    "code" : "2704005",
    "display" : "PRÓTESIS DE RESTITUCIÓN (FASE LABORATORIO)"
  },
  {
    "code" : "2704006",
    "display" : "REPARACIÓN COMPUESTA DE PRÓTESIS"
  },
  {
    "code" : "2704007",
    "display" : "REPARACIÓN CORONA"
  },
  {
    "code" : "2704008",
    "display" : "REPARACIÓN O REAJUSTE PRÓTESIS"
  },
  {
    "code" : "2704009",
    "display" : "RESTITUCIÓN POR CORONA (COMBINADA)"
  },
  {
    "code" : "2704010",
    "display" : "RESTITUCIÓN POR CORONA PROVISORIA"
  },
  {
    "code" : "2704011",
    "display" : "TRATAMIENTO ORTODONCIA CON APARATOLOGÍA REMOVIBLE (INCLUYE APARATO)(AÑO 1)"
  },
  {
    "code" : "2704012",
    "display" : "TRATAMIENTO ORTODONCIA CON APARATOLOGÍA FIJA (INCLUYE APARATO) (AÑO 1)"
  },
  {
    "code" : "2704013",
    "display" : "TRATAMIENTO ORTODONCIA CON APARATOLOGÍA FIJA (INCLUYE APARATO) (AÑO 2)"
  },
  {
    "code" : "2704014",
    "display" : "ENDODONCIA MULTIRRADICULAR"
  },
  {
    "code" : "2704015",
    "display" : "ENDODONCIA BIRRADICULAR"
  },
  {
    "code" : "2704016",
    "display" : "ENDODONCIA UNIRRADICULAR"
  },
  {
    "code" : "2704017",
    "display" : "DESTARTRAJE SUBGINGIVAL Y PULIDO RADICULAR"
  },
  {
    "code" : "2704018",
    "display" : "SEDACIÓN INHALATORIA CON ÓXIDO NITROSO"
  },
  {
    "code" : "2704019",
    "display" : "CORONA METÁLICA PREFORMADA EN DIENTE TEMPORAL"
  },
  {
    "code" : "2704020",
    "display" : "SIALOMETRÍA"
  },
  {
    "code" : "2704021",
    "display" : "INYECCIÓN INTRALESIONAL DE MEDICAMENTOS EN EL TERRITORIO DE LA MUCOSA ORAL"
  },
  {
    "code" : "2704022",
    "display" : "TRATAMIENTO NO QUIRÚRGICO DE OBSTRUCCIÓN GLÁNDULA SALIVAL"
  },
  {
    "code" : "2704023",
    "display" : "CATETERISMO DE CONDUCTO EXCRETOR GLÁNDULA SALIVAL EN ADULTOS (C/U)"
  },
  {
    "code" : "2704024",
    "display" : "CATETERISMO DE CONDUCTO EXCRETOR GLÁNDULA SALIVAL EN NIÑOS (C/U)"
  },
  {
    "code" : "2704025",
    "display" : "INSTILACIÓN DE GLÁNDULA SALIVAL (C/U) (PROCEDIMIENTO)"
  },
  {
    "code" : "2704026",
    "display" : "INFILTRACIÓN DE LA ARTICULACIÓN TEMPOROMANDIBULAR, POR SESIÓN"
  },
  {
    "code" : "2704027",
    "display" : "REDUCCIÓN DE LUXACIÓN DISCAL DE LA ARTICULACIÓN TÉMPOROMANDIBULAR"
  },
  {
    "code" : "2704028",
    "display" : "TRATAMIENTO DE RONQUIDO PRIMARIO Y SAOS (DISPOSITIVOS DE AVANCE MANDIBULAR)"
  },
  {
    "code" : "2704029",
    "display" : "REPARACIÓN O REAJUSTE DE DISPOSITIVO INTEROCLUSAL"
  },
  {
    "code" : "2704030",
    "display" : "ARTROCENTESIS TEMPOROMANDIBULAR UNILATERAL"
  },
  {
    "code" : "2705011",
    "display" : "INJERTOS EN BOCA"
  },
  {
    "code" : "2705012",
    "display" : "ELEVACIÓN DE PISO DEL SENO MAXILAR"
  },
  {
    "code" : "2705013",
    "display" : "PLASTÍA DE FÍSTULA SALIVAL"
  },
  {
    "code" : "2705014",
    "display" : "PREPARACIÓN QUIRÚRGICA DE LOS MAXILARES CON FINES PROTÉSICOS"
  },
  {
    "code" : "2705015",
    "display" : "PROFUNDIZACIÓN DE VESTÍBULO O RECONSTRUCCIÓN DE REBORDES, CON O SIN INJERTO"
  },
  {
    "code" : "2705016",
    "display" : "REIMPLANTE Y TRASPLANTE DENTARIO"
  },
  {
    "code" : "1901128",
    "display" : "HEMODIÁLISIS CON BICARBONATO CON INSUMO (POR SESIÓN, SIN TRASLADO DE PACIENTE)"
  },
  {
    "code" : "2705017",
    "display" : "REMOCIÓN DE CUERPO EXTRAÑO Y SECUESTRECTOMÍA"
  },
  {
    "code" : "2705018",
    "display" : "SUTURA COMPLETA DE HERIDA MAYOR"
  },
  {
    "code" : "2705019",
    "display" : "SUTURA COMPLETA DE HERIDA MENOR"
  },
  {
    "code" : "2705020",
    "display" : "SUTURA SIMPLE DE HERIDA"
  },
  {
    "code" : "2705021",
    "display" : "TRATAMIENTO QUIRÚRGICO FRACTURAS MAXILAR SUPERIOR"
  },
  {
    "code" : "2705022",
    "display" : "TRATAMIENTO QUIRÚRGICO DE FRACTURAS EN MAXILAR INFERIOR"
  },
  {
    "code" : "2705023",
    "display" : "TRATAMIENTO DE TRAUMATISMO DENTO ALVEOLAR SIMPLE"
  },
  {
    "code" : "2705024",
    "display" : "TRATAMIENTO DE TRAUMATISMO DENTO ALVEOLAR COMPLEJO"
  },
  {
    "code" : "2705025",
    "display" : "IMPLANTE OSEOINTEGRADO"
  },
  {
    "code" : "2705026",
    "display" : "PILAR PROTÉSICO SOBRE IMPLANTES"
  },
  {
    "code" : "2905909",
    "display" : "NEUTROPENIA FEBRIL NIVEL RIESGO BAJO ATENCIÓN SECUNDARIA"
  },
  {
    "code" : "2905910",
    "display" : "NEUTROPENIA FEBRIL NIVEL RIESGO ALTO ATENCIÓN SECUNDARIA"
  },
  {
    "code" : "2905911",
    "display" : "NEUTROPENIA FEBRIL NIVEL RIESGO MUY ALTO ATENCIÓN SECUNDARIA"
  },
  {
    "code" : "0101202",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN GERIATRÍA"
  },
  {
    "code" : "0101203",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN NEUROCIRUGÍA"
  },
  {
    "code" : "0101205",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN OTORRINOLARINGOLOGÍA"
  },
  {
    "code" : "0101206",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN REUMATOLOGÍA"
  },
  {
    "code" : "0101300",
    "display" : "CONSULTA MÉDICA OTRAS ESPECIALIDADES"
  },
  {
    "code" : "0101301",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN CARDIOLOGÍA"
  },
  {
    "code" : "0101302",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN HEMATOLOGÍA"
  },
  {
    "code" : "0101303",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN INFECTOLOGÍA"
  },
  {
    "code" : "0101304",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN INMUNOLOGÍA"
  },
  {
    "code" : "0101305",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN MEDICINA FAMILIAR"
  },
  {
    "code" : "0101306",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN MEDICINA FÍSICA Y REHABILITACIÓN"
  },
  {
    "code" : "0101310",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN TRAUMATOLOGÍA Y ORTOPEDIA"
  },
  {
    "code" : "0101311",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN UROLOGÍA"
  },
  {
    "code" : "0101314",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN CIRUGÍA CARDIOVASCULAR"
  },
  {
    "code" : "0101315",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN CIRUGÍA DE TÓRAX"
  },
  {
    "code" : "0101318",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN CIRUGÍA VASCULAR PERIFÉRICA"
  },
  {
    "code" : "0101319",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN COLOPROCTOLOGÍA"
  },
  {
    "code" : "0101320",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN DIABETOLOGÍA"
  },
  {
    "code" : "0101323",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN GASTROENTEROLOGÍA ADULTO"
  },
  {
    "code" : "0101325",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN GENÉTICA CLÍNICA"
  },
  {
    "code" : "0101326",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN NEFROLOGÍA ADULTO"
  },
  {
    "code" : "0101328",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN NEONATOLOGÍA"
  },
  {
    "code" : "0101329",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN ANESTESIOLOGÍA"
  },
  {
    "code" : "0101333",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN MEDICINA MATERNO FETAL"
  },
  {
    "code" : "0101334",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN MEDICINA NUCLEAR"
  },
  {
    "code" : "0108001",
    "display" : "TELECONSULTA MEDICINA GENERAL"
  },
  {
    "code" : "0108201",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN DERMATOLOGÍA"
  },
  {
    "code" : "0108202",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN GERIATRÍA"
  },
  {
    "code" : "0108203",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN NEUROCIRUGÍA"
  },
  {
    "code" : "0108204",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN OFTALMOLOGÍA"
  },
  {
    "code" : "0108205",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN OTORRINOLARINGOLOGÍA"
  },
  {
    "code" : "0108206",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN REUMATOLOGÍA"
  },
  {
    "code" : "0108207",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN ENDOCRINOLOGÍA ADULTO"
  },
  {
    "code" : "0108209",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN NEUROLOGÍA ADULTOS"
  },
  {
    "code" : "0108211",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN ONCOLOGÍA MÉDICA"
  },
  {
    "code" : "0108212",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN PSIQUIATRÍA ADULTOS (1RA CONSULTA)"
  },
  {
    "code" : "0108301",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN CARDIOLOGÍA"
  },
  {
    "code" : "0108302",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN HEMATOLOGÍA"
  },
  {
    "code" : "0108303",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN INFECTOLOGÍA"
  },
  {
    "code" : "0108304",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN INMUNOLOGÍA"
  },
  {
    "code" : "0108305",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN MEDICINA FAMILIAR"
  },
  {
    "code" : "0108307",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN MEDICINA INTERNA"
  },
  {
    "code" : "0108308",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN OBSTETRICIA Y GINECOLOGÍA"
  },
  {
    "code" : "0108310",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN TRAUMATOLOGÍA Y ORTOPEDIA"
  },
  {
    "code" : "0108311",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN UROLOGÍA"
  },
  {
    "code" : "0108312",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN CIRUGÍA GENERAL"
  },
  {
    "code" : "0108313",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN CIRUGÍA DE CABEZA, CUELLO Y MAXILOFACIAL"
  },
  {
    "code" : "0108314",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN CIRUGÍA CARDIOVASCULAR"
  },
  {
    "code" : "0108315",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN CIRUGÍA DE TÓRAX"
  },
  {
    "code" : "0108316",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN CIRUGÍA PLÁSTICA Y REPARADORA"
  },
  {
    "code" : "0108318",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN CIRUGÍA VASCULAR PERIFÉRICA"
  },
  {
    "code" : "0108319",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN COLOPROCTOLOGÍA"
  },
  {
    "code" : "0108320",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN DIABETOLOGÍA"
  },
  {
    "code" : "0108321",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN ENFERMEDADES RESPIRATORIAS ADULTO"
  },
  {
    "code" : "0108323",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN GASTROENTEROLOGÍA ADULTO"
  },
  {
    "code" : "0108325",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN GENÉTICA CLÍNICA"
  },
  {
    "code" : "0108326",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN NEFROLOGÍA ADULTO"
  },
  {
    "code" : "0108329",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN ANESTESIOLOGÍA"
  },
  {
    "code" : "0108333",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN MEDICINA MATERNO FETAL"
  },
  {
    "code" : "0108334",
    "display" : "TELECONSULTA MÉDICA DE ESPECIALIDAD EN MEDICINA NUCLEAR"
  },
  {
    "code" : "030100201",
    "display" : "ACIDO FOLICO O FOLATOS SERICO"
  },
  {
    "code" : "030100202",
    "display" : "ACIDO FOLICO O FOLATOS ERITROCITARIO"
  },
  {
    "code" : "0301094",
    "display" : "ESTUDIO DE LA HEMOGLOBINURIA PAROXÍSTICA NOCTURNA (HPN) POR CITOMETRÍA DE FLUJO"
  },
  {
    "code" : "0301095",
    "display" : "DÍMERO-D"
  },
  {
    "code" : "0301096",
    "display" : "PROCALCITONINA"
  },
  {
    "code" : "0301099",
    "display" : "TIEMPO DE VENENO DE VÍBORA DE RUSSELL DILUÍDO"
  },
  {
    "code" : "0301102",
    "display" : "TIEMPO DE TROMBOPLASTINA PARCIAL ACTIVADO (TTPA) CON MEZCLA DE PLASMA NORMAL"
  },
  {
    "code" : "0301112",
    "display" : "ANTICUERPOS ANTIPLAQUETARIOS"
  },
  {
    "code" : "0301116",
    "display" : "HEMOGLOBINA GLICADA, A1C, TEST RÁPIDO EN EL LUGAR DE ASISTENCIA (INCLUYE TOMA DE MUESTRA SANGRE CAPILAR)"
  },
  {
    "code" : "0302027",
    "display" : "TROPONINA"
  },
  {
    "code" : "030203501",
    "display" : "CICLOSPORINA NIVELES PLASMATICOS DE"
  },
  {
    "code" : "030203502",
    "display" : "AMIKACINA, NIVELES PLASMATICOS DE"
  },
  {
    "code" : "2508121",
    "display" : "TRATAMIENTO FARMACOLÓGICO PARA EL APOYO AL CESE DEL CONSUMO DE TABACO"
  },
  {
    "code" : "2508122",
    "display" : "TRATAMIENTO NO FARMACOLÓGICO PARA EL APOYO AL CESE DEL CONSUMO DE TABACO"
  },
  {
    "code" : "2504025",
    "display" : "SOSPECHA CÁNCER GÁSTRICO PERSONAS DE 40 AÑOS Y MÁS NIVEL ESPECIALIDAD"
  },
  {
    "code" : "2504026",
    "display" : "CONFIRMACION CÁNCER GASTRICO NIVEL ESPECIALIDAD"
  },
  {
    "code" : "2508150",
    "display" : "INTERVENCION QUIRURGICA CÁNCER GASTRICO AVANZADO"
  },
  {
    "code" : "2508151",
    "display" : "INTERVENCION QUIRURGICA GASTRECTOMIA SUBTOTAL CÁNCER GASTRICO INCIPIENTE LAPAROSCOPIA"
  },
  {
    "code" : "2508153",
    "display" : "INTERVENCION QUIRURGICA GASTRECTOMIA SUBTOTAL CÁNCER GASTRICO INCIPIENTE LAPAROTOMIA"
  },
  {
    "code" : "2508154",
    "display" : "INTERVENCION QUIRURGICA GASTRECTOMIA TOTAL CÁNCER GASTRICO INCIPIENTE LAPAROTOMIA"
  },
  {
    "code" : "2508152",
    "display" : "INTERVENCION QUIRURGICA GASTRECTOMIA TOTAL CÁNCER GASTRICO INCIPIENTE LAPAROSCOPIA"
  },
  {
    "code" : "2508140",
    "display" : "TRATAMIENTO DE DESENSIBILIZACION PARA TRASPLANTE RENAL"
  },
  {
    "code" : "2508128",
    "display" : "ANGIOPLASTIA Y VALVULOPLASTÍA EN ADULTOS"
  },
  {
    "code" : "2508129",
    "display" : "CIERRE PERCUTANEO EN ADULTOS"
  },
  {
    "code" : "2508130",
    "display" : "REINTERVENCIÓN QUIRÚRGICA COMPLICADO CARDIOPATÍA CONGÉNITA EN ADULTO"
  },
  {
    "code" : "2508131",
    "display" : "REINTERVENCIÓN QUIRÚRGICA NO COMPLICADA CARDIOPATÍA CONGÉNITA EN ADULTOS"
  },
  {
    "code" : "2508132",
    "display" : "IMPLANTACIÓN DE MARCAPASOS CON DESFIBRILADOR CON/SIN RESINCRONIZADOR EN PERSONAS MENORES DE15 AÑOS"
  },
  {
    "code" : "2508133",
    "display" : "IMPLANTE DE VÁLVULAS PERCUTÁNEAS EN ADULTOS"
  },
  {
    "code" : "2508134",
    "display" : "SEGUIMIENTO PRIMER AÑO EN POBLACIÓN PEDIÁTRICA"
  },
  {
    "code" : "2508135",
    "display" : "SEGUIMIENTO DESDE SEGUNDO AÑO EN POBLACIÓN PEDIÁTRICA"
  },
  {
    "code" : "0306123",
    "display" : "TAMIZAJE CANCER CERVICOUTERINO CON PCR VIRUS PAPILOMA HUMANO (PROCESAMIENTO)"
  },
  {
    "code" : "2508136",
    "display" : "MONITOREO CONTINUO DE GLUCOSA PARA PERSONAS MENORES DE 18 AÑOS"
  },
  {
    "code" : "2508137",
    "display" : "MONITOREO CONTINUO DE GLUCOSA PARA PERSONAS GESTANTES"
  },
  {
    "code" : "2505163",
    "display" : "ETAPIFICACIÓN CÁNCER GASTRICO PERSONAS MAYORES DE 40 AÑOS Y MAS NIVEL ESPECIALIDAD"
  },
  {
    "code" : "2505174",
    "display" : "EVALUACION POST QUIRURGICA CÁNCER GASTRICO"
  },
  {
    "code" : "2508143",
    "display" : "TRATAMIENTO LEUCEMIA CRONICA POR QUIMIOTERAPIA"
  },
  {
    "code" : "2508142",
    "display" : "TRATAMIENTO LEUCEMIA AGUDA POR QUIMIOTERAPIA"
  },
  {
    "code" : "2508141",
    "display" : "TRATAMIENTO FARMACOLOGICO CON ELEXACAFTOR/ TEZACAFTOR/ IVACAFTOR PARA PERSONAS DE 6 AÑOS Y MÁS"
  },
  {
    "code" : "2508156",
    "display" : "TRATAMIENTO PARA ASMA BRONQUIAL GRAVE EN PERSONAS DE 15 AÑOS Y MÁS REFRACTARIOS A TRATAMIENTO"
  },
  {
    "code" : "2508118",
    "display" : "TRATAMIENTO HOSPITALIZACIÓN DIURNA POR EPISODIO DEPRESIVO CON RIESGO SUICIDA"
  },
  {
    "code" : "2508119",
    "display" : "TRATAMIENTO AMBULATORIO POR EPISODIO DEPRESIVO CON RIESGO SUICIDA"
  },
  {
    "code" : "2508120",
    "display" : "TRATAMIENTO DE EPISODIOS GRAVES EN PERSONAS MENORES DE 15 AÑOS CON RIESGO SUICIDA QUE INCLUYE HOSPITALIZACIÓN"
  },
  {
    "code" : "0101210",
    "display" : "CONSULTA MEDICA ESPECIALIDAD EN NEUROLOGÍA PEDIÁTRICA"
  },
  {
    "code" : "2508125",
    "display" : "TRATAMIENTO NIVEL PRIMARIO EN MENORES DE 15 AÑOS"
  },
  {
    "code" : "2508126",
    "display" : "SEGUIMIENTO NIVEL DE ESPECIALIDAD"
  },
  {
    "code" : "2504031",
    "display" : "CONFIRMACION ACCIDENTE CEREBRO VASCULAR ISQUEMICO"
  },
  {
    "code" : "200102301",
    "display" : "BIOPSIA ESTEREOTÁXICA DIGITAL DE MAMA"
  },
  {
    "code" : "3016010",
    "display" : "PROTESIS OCULAR FASE CLINICA"
  },
  {
    "code" : "13017701",
    "display" : "TTO. VICIO REFRACCION MENORES 65 AÑOS"
  },
  {
    "code" : "71065501",
    "display" : "TTO. HIPOACUSIA <65 AÑOS (INCLUYE AUDIFONOS)"
  },
  {
    "code" : "70000901",
    "display" : "SILLA DE RUEDAS, RUEDA INFLABLE TALLA 40 - 43"
  },
  {
    "code" : "70000301",
    "display" : "COJIN ANTIESCARAS DE CELDAS DE AIRE 42-43X42-43"
  },
  {
    "code" : "1602202",
    "display" : "CABEZA, CUELLO, GENITALES HASTA 3 LESIONES: EXTIRPACIÓN, REPARACIÓN O BIOPSIA, TOTAL O PARCIAL, DE LESIONES BENIGNAS CUTÁNEAS POR EXCISIÓN"
  },
  {
    "code" : "1303010",
    "display" : "EVALUACIÓN INTEGRAL DE FONOAUDIOLOGO"
  },
  {
    "code" : "1303011",
    "display" : "REHABILITACIÓN INTEGRAL DE FONOAUDIOLOGO"
  },
  {
    "code" : "2908140",
    "display" : "ADMINISTRACIÓN DE MEDICAMENTO ONCOLÓGICO"
  },
  {
    "code" : "1901035",
    "display" : "BIOPSIA ESTEREOTÁXICA DIGITAL DE PRÓSTATA"
  },
  {
    "code" : "310100101",
    "display" : "CONSULTA MÉDICA SERVICIO DE URGENCIA TIPO 1"
  },
  {
    "code" : "310100201",
    "display" : "CONSULTA MÉDICA SERVICIO DE URGENCIA TIPO 2"
  },
  {
    "code" : "310100301",
    "display" : "CONSULTA MÉDICA SERVICIO DE URGENCIA TIPO 3"
  },
  {
    "code" : "270310401",
    "display" : "MANTENEDORES DE ESPACIO"
  },
  {
    "code" : "030109001",
    "display" : "FACTOR VON WILLEBRAND ANTIGÉNICO COFACTOR RISTOCETINA (FVW:CORIS)"
  },
  {
    "code" : "030110001",
    "display" : "ANTITROMBINA III ANTIGÉNICA"
  },
  {
    "code" : "030201301",
    "display" : "BILIRRUBINA TOTAL Y CONJUGADA"
  },
  {
    "code" : "0309038",
    "display" : "CITRATO EN ORINA"
  },
  {
    "code" : "0302121",
    "display" : "TEST RESPIRATORIO DE LACTOSA, LACTULOSA, FRUCTUOSA, C/U."
  },
  {
    "code" : "30211601",
    "display" : "DETECCIÓN DE FACTOR V DE LEIDEN (MUTACIÓN G1691A, FVQ506)"
  },
  {
    "code" : "30211702",
    "display" : "DETECCIÓN DE MUTACIÓN DE PROTROMBINA (G20210A)"
  },
  {
    "code" : "30502501",
    "display" : "INMUNOFIJACION DE CADENAS PESADAS Y LIVIANAS EN SUERO"
  },
  {
    "code" : "30612801",
    "display" : "HELICOBACTER PYLORI EN DEPOSICIONES"
  },
  {
    "code" : "030212301",
    "display" : "DETECCION DE MUTACION C677T EN MTHFR"
  },
  {
    "code" : "030551901",
    "display" : "PANEL MENINGEO"
  },
  {
    "code" : "0303050",
    "display" : "METANEFRINAS URINARIAS ( INCLUYE DETERMINACION DE METANEFRINA Y NORMETANEFRINA P"
  },
  {
    "code" : "0308063",
    "display" : "TEST DE HELICOBACTER PYLORI EN DEPOSICIONES"
  },
  {
    "code" : "270400101",
    "display" : "OBTURACIÓN INLAY METAL (INCLUYE MATERIALES NO PRECIOSOS, NO INCLUYE ORO)"
  },
  {
    "code" : "270111301",
    "display" : "CONSULTA O CONTROL POR ODONTÓLOGO GENERAL"
  },
  {
    "code" : "270111401",
    "display" : "TRABAJO COMUNITARIO"
  },
  {
    "code" : "010100101",
    "display" : "CONSULTA MEDICINA GENERAL"
  },
  {
    "code" : "010120401",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN OFTALMOLOGÍA"
  },
  {
    "code" : "010131201",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN CIRUGÍA GENERAL"
  },
  {
    "code" : "0301121",
    "display" : "ANTITROMBINA III CROMOGÉNICA COAGULANTE"
  },
  {
    "code" : "0305139",
    "display" : "ANTIMITOCONDRIALES FRACCIÓN M2"
  },
  {
    "code" : "0306516",
    "display" : "AMP. DE AC. NUCLEICOS PCR PARA CLOSTRIDIUM DIFFICILE"
  },
  {
    "code" : "0306115",
    "display" : "ANTÍGENO URINARIO DE LEGIONELLA PNEUMOPHILA"
  },
  {
    "code" : "0302091",
    "display" : "COLESTEROL LDL DIRECTO"
  },
  {
    "code" : "0302111",
    "display" : "DETECCIÓN DE DNA DEL VIRUS HEPATITIS B POR PCR"
  },
  {
    "code" : "0303514",
    "display" : "DETERMINACION B - CROSS LAPS (CTX)"
  },
  {
    "code" : "0303513",
    "display" : "DETERMINACION HE - 4"
  },
  {
    "code" : "0302515",
    "display" : "FACTOR DE CRECIMIENTO PLACENTARIO (PLGF)"
  },
  {
    "code" : "0306522",
    "display" : "MULTIPLEX VIRAL RESPIRATORIO, AMPLIFICACIÓN DE ACIDOS NUCLEICOS"
  },
  {
    "code" : "0309037",
    "display" : "OXALATO EN ORINA"
  },
  {
    "code" : "0306525",
    "display" : "PCR MULTIPLEX FLU A FLU B VRS ( AH1N1/H3N2 - FLU B - VRS A/B)"
  },
  {
    "code" : "0306521",
    "display" : "PCR MULTIPLEX MYCOPLASMA, BORDETELLA, OTROS RESPIRATORIO"
  },
  {
    "code" : "0312007",
    "display" : "PML - RAR T( 15;17 ) CUALITATIVO"
  },
  {
    "code" : "0306547",
    "display" : "POLIMORFISMO PNPLA3"
  },
  {
    "code" : "0306507",
    "display" : "SARAMPION IGG"
  },
  {
    "code" : "0306099",
    "display" : "STREPTOCOCCUS GRUPO B/ AGALACTIAE EN EMBARAZADAS POR CULTIVO CON MEDIO SELECTIVO"
  },
  {
    "code" : "0301118",
    "display" : "TEST DE COOMBS MONOESPECIFICO ANTI C3D"
  },
  {
    "code" : "0301117",
    "display" : "TEST DE COOMBS MONOESPECIFICO ANTI IgG"
  },
  {
    "code" : "270500101",
    "display" : "CIRUGÍA BUCAL"
  },
  {
    "code" : "270500201",
    "display" : "CIRUGÍA DE ENFERMEDAD PERIODONTAL (POR GRUPO)"
  },
  {
    "code" : "270500301",
    "display" : "CORTICOTOMÍA"
  },
  {
    "code" : "270500401",
    "display" : "DISYUNCIÓN PALATINA QUIRÚRGICA"
  },
  {
    "code" : "270500501",
    "display" : "EXTIRPACIÓN DE PSEUDOQUISTES, QUISTES Y TUMORES"
  },
  {
    "code" : "270500601",
    "display" : "GLOSECTOMÍAS"
  },
  {
    "code" : "270500701",
    "display" : "IMPLANTE ENDODÓNTICO INTRAÓSEO"
  },
  {
    "code" : "270500801",
    "display" : "IMPLANTES SUBPERIÓSTICOS"
  },
  {
    "code" : "270500901",
    "display" : "EXODONCIA DE DIENTES RETENIDOS"
  },
  {
    "code" : "270501001",
    "display" : "EXODONCIA DE TERCER MOLAR CON OSTEOTOMÍA"
  },
  {
    "code" : "030500508",
    "display" : "ANTICUERPOS ANTI DNA (IFI CRITHIDIA LUCILAE)"
  },
  {
    "code" : "030500703",
    "display" : "ANTI TIROGLOBULINA TIROIDEA"
  },
  {
    "code" : "030500704",
    "display" : "ANTI TIROIDEOS (TPO)"
  },
  {
    "code" : "030501203",
    "display" : "COMPLEMENTO C3"
  },
  {
    "code" : "030501204",
    "display" : "COMPLEMENTO C4"
  },
  {
    "code" : "030501401",
    "display" : "CRIOGLOBULINAS"
  },
  {
    "code" : "030502501",
    "display" : "INMUNOFIJACION DE CADENAS PESADAS Y LIVIANAS EN SUERO"
  },
  {
    "code" : "030502502",
    "display" : "INMUNOFIJACION DE CADENAS PESADAS Y LIVIANAS EN ORINA"
  },
  {
    "code" : "030502701",
    "display" : "INMUNOGLOBULINA A (IGA)"
  },
  {
    "code" : "030502702",
    "display" : "INMUNOGLOBULINA G (IGG)"
  },
  {
    "code" : "030502703",
    "display" : "INMUNOGLOBULINA M (IGM)"
  },
  {
    "code" : "030502801",
    "display" : "IGE TOTAL"
  },
  {
    "code" : "030502901",
    "display" : "IGE ESPECÍFICA LECHE"
  },
  {
    "code" : "030502902",
    "display" : "IGE ESPECÍFICA HUEVO"
  },
  {
    "code" : "030502906",
    "display" : "IGE ESPECÍFICA MANÍ"
  },
  {
    "code" : "030502917",
    "display" : "IGE ESPECÍFICA MEZCLA DE ACAROS"
  },
  {
    "code" : "030502905",
    "display" : "IGE ESPECÍFICA SOYA"
  },
  {
    "code" : "030502908",
    "display" : "IGE ESPECÍFICA TRIGO"
  },
  {
    "code" : "030502914",
    "display" : "IGE ESPECÍFICA LÁTEX"
  },
  {
    "code" : "030502918",
    "display" : "IGE ESPECÍFICA ASPERGILLUS FUMIGATUS"
  },
  {
    "code" : "030502919",
    "display" : "IGE ESPECÍFICA GATO"
  },
  {
    "code" : "030502903",
    "display" : "IGE ESPECÍFICA CLARA"
  },
  {
    "code" : "030502904",
    "display" : "IGE ESPECÍFICA YEMA"
  },
  {
    "code" : "030502911",
    "display" : "IGE ESPECÍFICA PENICILINA G"
  },
  {
    "code" : "030502913",
    "display" : "IGE ESPECÍFICA SUXAMETONIO"
  },
  {
    "code" : "030503102",
    "display" : "PROTEÍNA C REACTIVA ULTRASENSIBLE"
  },
  {
    "code" : "030508101",
    "display" : "ANTICUERPOS ANTI ENDOMISIO (EMA)"
  },
  {
    "code" : "030508102",
    "display" : "ANTICUERPOS ANTI MEMBRANA BASAL GLOMERULAR (GBM)"
  },
  {
    "code" : "030508201",
    "display" : "ANTICUERPOS ANTICITOPLASMA DE NEUTRÓFILOS (ANCA POR IFI)"
  },
  {
    "code" : "030508202",
    "display" : "ANTICUERPOS ANTI PROTEINASA 3 (PR3)"
  },
  {
    "code" : "0305089",
    "display" : "LINFOCITOS B TOTALES (CD19). TÉCNICA CITOMETRÍA DE FLUJO"
  },
  {
    "code" : "0305092",
    "display" : "NATURAL KILLERS (INCLUYE CD16, CD 56). TÉCNICA CITOMETRÍA DE FLUJO"
  },
  {
    "code" : "0305093",
    "display" : "INMUNOFENOTIPO EN LEUCEMIAS AGUDAS"
  },
  {
    "code" : "0305094",
    "display" : "INMUNOFENOTIPO EN SÍNDROME LINFOPROLIFERATIVOS"
  },
  {
    "code" : "0305095",
    "display" : "INMUNOFENOTIPO EN SÍNDROME MIELODISPLÁSICOS"
  },
  {
    "code" : "0305097",
    "display" : "CUANTIFICACIÓN DE CÉLULAS PROGENITORAS HEMATOPOYÉTICAS CD 34"
  },
  {
    "code" : "0305099",
    "display" : "PÉPTIDO CÍCLICO CITRULINADO, ANTICUERPOS IGG"
  },
  {
    "code" : "0305101",
    "display" : "ANTICUERPOS ANTI-SACCHAROMYCES CEREVISIAE (ASCA) IGA E IGG, C/U"
  },
  {
    "code" : "0305104",
    "display" : "ANTÍGENO PROSTÁTICO TOTAL Y LIBRE"
  },
  {
    "code" : "0305105",
    "display" : "ANTICUERPOS ANTI-BETA 2 GLICOPROTEINA 1 (IGG, IGM), C/U"
  },
  {
    "code" : "0305106",
    "display" : "ESTUDIO INMUNOLÓGICO DE DIABETES (INCLUYE DETERMINACIÓN SIMULTÁNEA DE ANTICUERPOS ANTI-CÉLULAS DE ISLOTES (ICA), AUTO ANTICUERPO INSULINA NATIVA (IAA), ANTI-ANTÍGENO DE INSULINOMA-2 (IA2) Y ANTI-GLUTAMATO DESCARBOXILASA (GADA)."
  },
  {
    "code" : "0305107",
    "display" : "ANTICUERPOS ANTI-MPO (MIELOPEROXIDASA)"
  },
  {
    "code" : "0305108",
    "display" : "ANTICUERPOS ANTI ANTÍGENOS NUCLEARES EXTRACTABLES (A-ENA): SM, RNP, SS-A/RO, SS-B/LA, SCL-70, JO-1). C/U"
  },
  {
    "code" : "030510801",
    "display" : "ANTI-ENA (SS-A/RO)"
  },
  {
    "code" : "030510802",
    "display" : "ANTI-ENA: SS-B/LA"
  },
  {
    "code" : "030510804",
    "display" : "ANTI-ENA (SM/RNP)"
  },
  {
    "code" : "030510805",
    "display" : "ANTI-ENA (SCL-70)"
  },
  {
    "code" : "030510806",
    "display" : "ANTI-ENA (JO-1)"
  },
  {
    "code" : "030510803",
    "display" : "ANTI-ENA (SM)"
  },
  {
    "code" : "0305118",
    "display" : "HLA-B27 TIPIFICACIÓN (BIOLOGÍA MOLECULAR)"
  },
  {
    "code" : "0305120",
    "display" : "HLA-DP TIPIFICACIÓN (BIOLOGÍA MOLECULAR)"
  },
  {
    "code" : "0305121",
    "display" : "HLA-DQ TIPIFICACIÓN (BIOLOGÍA MOLECULAR)"
  },
  {
    "code" : "0305122",
    "display" : "HLA-DR TIPIFICACIÓN (BIOLOGÍA MOLECULAR)"
  },
  {
    "code" : "0305123",
    "display" : "SEROTECA MENSUAL Y MANTENCIÓN EN LISTA DE ESPERA"
  },
  {
    "code" : "0305124",
    "display" : "RECEPTOR DE TIROTROPINA (TRAB), ANTICUERPOS ANTI"
  },
  {
    "code" : "0305170",
    "display" : "ANTÍGENO CA 125, CA 15-3 Y CA 19-9, C/U"
  },
  {
    "code" : "030517001",
    "display" : "ANTIGENO CA 125"
  },
  {
    "code" : "030517002",
    "display" : "ANTIGENO CA 15-3"
  },
  {
    "code" : "030517003",
    "display" : "ANTIGENO CA 19-9"
  },
  {
    "code" : "0305181",
    "display" : "ANTICUERPOS ANTITRANSGLUTAMINASA (TTG)(INCLUYE IGG E IGA)"
  },
  {
    "code" : "030603701",
    "display" : "IGG MYCOPLASMA PNEUMONIAE"
  },
  {
    "code" : "030603702",
    "display" : "IGM MYCOPLASMA PNEUMONIAE"
  },
  {
    "code" : "030606102",
    "display" : "HIDATIDOSIS, IGG, (ELISA)"
  },
  {
    "code" : "030606104",
    "display" : "CISTICERCOSIS, IGG, (ELISA)"
  },
  {
    "code" : "030606105",
    "display" : "TOXOPLASMOSIS , IGG, (ELISA)"
  },
  {
    "code" : "030606109",
    "display" : "TOXOPLASMOSIS , IGM, (ELISA)"
  },
  {
    "code" : "030606110",
    "display" : "TOXOCARIASIS , IGG, (ELISA)"
  },
  {
    "code" : "030606112",
    "display" : "TRIQUINOSIS, IGG, (ELISA)"
  },
  {
    "code" : "030606949",
    "display" : "ANTICUERPOS ANTI- SARSCOV2 IGG"
  },
  {
    "code" : "030606901",
    "display" : "ADENOVIRUS IGG, AC VIRALES, DETERM DE"
  },
  {
    "code" : "030606902",
    "display" : "CITOMEGALOVIRUS IGG, AC VIRALES, DETERM DE"
  },
  {
    "code" : "030606903",
    "display" : "CITOMEGALOVIRUS IGM, AC VIRALES, DETERM DE"
  },
  {
    "code" : "030606904",
    "display" : "HERPES SIMPLE 1 IGG, AC VIRALES, DETERM DE"
  },
  {
    "code" : "030606905",
    "display" : "RUBEOLA IGG, AC VIRALES, DETERM DE"
  },
  {
    "code" : "030606912",
    "display" : "EPSTEIN BARR IGM, AC VIRALES, DETERM DE"
  },
  {
    "code" : "030606917",
    "display" : "PARVOVIRUS B19 IGM; ESTUDIO SEROLOGICO"
  },
  {
    "code" : "030606919",
    "display" : "ADENOVIRUS IGM, AC VIRALES, DETERM DE"
  },
  {
    "code" : "030606920",
    "display" : "HERPES SIMPLE 1 IGM, AC VIRALES, DETERM DE"
  },
  {
    "code" : "030606921",
    "display" : "HERPES SIMPLE 2 IGG, AC VIRALES, DETERM DE"
  },
  {
    "code" : "030606922",
    "display" : "HERPES SIMPLE 2 IGM, AC VIRALES, DETERM DE"
  },
  {
    "code" : "030606933",
    "display" : "EPSTEIN BARR IGG, AC VIRALES, DETERM DE"
  },
  {
    "code" : "030606936",
    "display" : "BORDETELLA PERTUSSIS IGG, AC VIRALES, DETERM DE"
  },
  {
    "code" : "030606937",
    "display" : "BORDETELLA PERTUSSIS IGM, AC VIRALES, DETERM DE"
  },
  {
    "code" : "030606938",
    "display" : "CHLAMYDIA TRACHOMATIS, IGG, AC VIRALES, DETERM DE"
  },
  {
    "code" : "030606939",
    "display" : "CHLAMYDIA PNEUMONIAE , IGG, AC VIRALES, DETERM DE"
  },
  {
    "code" : "030606942",
    "display" : "CHLAMYDIA TRACHOMATIS, IGM, AC VIRALES, DETERM DE"
  },
  {
    "code" : "030606943",
    "display" : "CHLAMYDIA PNEUMONIAE , IGM, AC VIRALES, DETERM DE"
  },
  {
    "code" : "030606945",
    "display" : "SEROLOGIA BRUCELOSIS"
  },
  {
    "code" : "030607003",
    "display" : "INFLUENZA A, AG VIRALES DETERM. DE, TEST RAPIDO"
  },
  {
    "code" : "030607010",
    "display" : "PANEL RESPIRATORIO DIRECTO, TEST RAPIDO (CADA VIRUS)"
  },
  {
    "code" : "030607011",
    "display" : "ADENOVIRUS, AG VIRALES DETERM. DE, TEST RAPIDO"
  },
  {
    "code" : "030607012",
    "display" : "INFLUENZA B, AG VIRALES DETERM. DE, TEST RAPIDO"
  },
  {
    "code" : "030607401",
    "display" : "VIRUS HEPATITIS A, ANTICUERPO IGM"
  },
  {
    "code" : "0306082",
    "display" : "REACCIÓN DE POLIMERASA EN CADENA (P.C.R.) EN TIEMPO REAL, SARS COV-2, (INCLUYE TOMA MUESTRA HISOPADO NASOFARÍNGEO)."
  },
  {
    "code" : "030608202",
    "display" : "PCR CORONAVIRUS- COVID-19"
  },
  {
    "code" : "0306083",
    "display" : "CITOMEGALOVIRUS (CMV) SHELL VIAL AISLAMIENTO RÁPIDO"
  },
  {
    "code" : "0306084",
    "display" : "HEPATITIS B, CARGA VIRAL"
  },
  {
    "code" : "0306085",
    "display" : "HEPATITIS C CARGA VIRAL. TÉCNICA PCR"
  },
  {
    "code" : "0306086",
    "display" : "VIH, CARGA VIRAL"
  },
  {
    "code" : "0306087",
    "display" : "VIRUS EPSTEIN BARR (VEB) CARGA VIRAL. TÉCNICA PCR"
  },
  {
    "code" : "0306088",
    "display" : "POLIOMA (BK) VIRUS CARGA VIRAL. TÉCNICA PCR"
  },
  {
    "code" : "0306091",
    "display" : "HEMOCULTIVO AUTOMATIZADO. INCLUYE ANTIBIOGRAMA CON CIM"
  },
  {
    "code" : "0306094",
    "display" : "ANTÍGENO GALACTOMANANO"
  },
  {
    "code" : "0306095",
    "display" : "PARÁSITOS: DETERMINACIÓN POR REACCIÓN DE POLIMERASA EN CADENA (PCR)"
  },
  {
    "code" : "0306097",
    "display" : "CHLAMYDIA TRACHOMATIS Y NEISSERIA GONORRHOEAE DETECCIÓN POR TÉCNICA DE BIOLOGÍA MOLECULAR"
  },
  {
    "code" : "0306098",
    "display" : "TOXINA CLOSTRIDIUM DIFFICILE EN DEPOSICIONES TEST RÁPIDO"
  },
  {
    "code" : "0306104",
    "display" : "TINCIÓN PARA CAMPYLOBACTER"
  },
  {
    "code" : "0306105",
    "display" : "TINCIÓN TINTA CHINA"
  },
  {
    "code" : "0306106",
    "display" : "HEMOCULTIVO AUTOMATIZADO PARA HONGOS"
  },
  {
    "code" : "0306107",
    "display" : "PNEUMOCYSTIS JIROVECCI POR TÉCNICA DE BIOLOGÍA MOLECULAR EN TIEMPO REAL"
  },
  {
    "code" : "0306109",
    "display" : "VIH, GENOTIPIFICACIÓN ANTIVIRALES"
  },
  {
    "code" : "0306111",
    "display" : "HTLV I Y II DETERMINACIÓN DE ANTICUERPOS VIRALES"
  },
  {
    "code" : "0306112",
    "display" : "VIH, ANTICUERPOS Y ANTÍGENOS VIRALES, DETERM. DE H.I.V."
  },
  {
    "code" : "0306118",
    "display" : "AMPLIFICACIÓN DE DNA DE BORDETELLA PERTUSSIS POR TÉCNICA DE BIOLOGÍA MOLECULAR EN TIEMPO REAL"
  },
  {
    "code" : "0306119",
    "display" : "INTERFERÓN GAMMA TBC"
  },
  {
    "code" : "0306120",
    "display" : "PANEL VIRAL DIARREA POR PCR (DETERMINACIÓN DE ROTAVIRUS, NOROVIRUS G1, NOROVIRUS G2, ASTROVIRUS, ADENOVIRUS)"
  },
  {
    "code" : "0306122",
    "display" : "PANEL VIRUS RESPIRATORIO MOLECULAR (15 A 17 VIRUS) (ADENOVIRUS, VRS A, VRS B, PARAINFLUENZA 1,2,3,4, INFLUENZA A Y B, INFLUENZA A H1N1, BOCAVIRUS, CORONAVIRUS (2 TIPOS), RINOVIRUS, ENTEROVIRUS."
  },
  {
    "code" : "030612801",
    "display" : "HELICOBACTER PYLORI EN DEPOSICIONES"
  },
  {
    "code" : "0306130",
    "display" : "VIRUS HEPATITIS B, ANTICUERPOS ANTI ANTÍGENO DE SUPERFICIE (TÍTULOS)"
  },
  {
    "code" : "0306132",
    "display" : "BARTONELLA HENSELAE, ANTICUERPOS IGG O IGM, C/U"
  },
  {
    "code" : "0306136",
    "display" : "DETECCIÓN DE ANTÍGENO CAPSULAR DE CRYPTOCOCCUS"
  },
  {
    "code" : "0306137",
    "display" : "RASPADO DE PIEL, EXAMEN MICROSCÓPICO PARA BÚSQUEDA DE DEMODEX"
  },
  {
    "code" : "0306138",
    "display" : "CLOSTRIDIUM DIFFICILE POR TÉCNICA DE BIOLOGÍA MOLECULAR EN TIEMPO REAL"
  },
  {
    "code" : "0306139",
    "display" : "VIRUS HEPATITIS E, ANTICUERPOS IGM"
  },
  {
    "code" : "0306142",
    "display" : "PCR PARA PARVOVIRUS B19"
  },
  {
    "code" : "0306143",
    "display" : "PCR PARA VIRUS VARICELA ZOSTER"
  },
  {
    "code" : "0306144",
    "display" : "HTLV VIRUS POR PCR"
  },
  {
    "code" : "0306145",
    "display" : "CMV, CARGA VIRAL"
  },
  {
    "code" : "0306170",
    "display" : "ANTÍGENOS VIRALES DETERM. DE ROTAVIRUS, POR CUALQUIER TÉCNICA"
  },
  {
    "code" : "0306182",
    "display" : "REACCIÓN DE POLIMERASA EN CADENA (P.C.R.) EN TIEMPO REAL, VIRUS INFLUENZA, VIRUS HERPES, CITOMEGALOVIRUS, HEPATITIS C, MYCOBACTERIA TBC, C/U (INCLUYE TOMA MUESTRA HISOPADO NASOFARÍNGEO)."
  },
  {
    "code" : "0306270",
    "display" : "ANTÍGENOS VIRALES DETERM. DE VIRUS SINCICIAL, POR CUALQUIER TÉCNICA"
  },
  {
    "code" : "030627001",
    "display" : "VIRUS SINCICIAL RESPIRATORIO, TEST RÁPIDO"
  },
  {
    "code" : "0306271",
    "display" : "TEST RÁPIDO DE DETECCIÓN DE ANTÍGENOS SARS-COV-2 (INCLUYE TOMA DE MUESTRA)"
  },
  {
    "code" : "030700502",
    "display" : "REACCIÓN CUTÁNEA DE PARCHE C/U (INC. INFORME MEDICO)"
  },
  {
    "code" : "030700503",
    "display" : "TEST DE PARCHE"
  },
  {
    "code" : "030700504",
    "display" : "TEST PARCHE BATERIAS STANDARD"
  },
  {
    "code" : "0307023",
    "display" : "ASPIRADOS NASOFARÍNGEO PARA ADULTO Y NIÑO."
  },
  {
    "code" : "0307024",
    "display" : "REACCIÓN CUTÁNEA A ALERGENOS (INCLUYE EL VALOR DE LOS ALERGENOS)"
  },
  {
    "code" : "030802301",
    "display" : "ESTUDIO DE CRISTALES EN LIQUIDO SINOVIAL"
  },
  {
    "code" : "030804401",
    "display" : "SECRECION URETRAL, ESTUDIO DE ( INCLUYE TOMA DE MUESTRA Y."
  },
  {
    "code" : "030804402",
    "display" : "FLUJO VAGINAL, ESTUDIO DE ( INCLUYE TOMA DE MUESTRA Y."
  },
  {
    "code" : "0308047",
    "display" : "ESTEATOCRITO"
  },
  {
    "code" : "0308049",
    "display" : "CALPROTECTINA CUANTITATIVA POR ELISA"
  },
  {
    "code" : "0308050",
    "display" : "PROTEÍNAS TOTALES EN EXUDADOS, SECRECIONES Y OTROS LÍQUIDOS"
  },
  {
    "code" : "0308051",
    "display" : "ALBÚMINAS EN EXUDADOS, SECRECIONES Y OTROS LÍQUIDOS"
  },
  {
    "code" : "0308060",
    "display" : "PANEL DE ENCEFALITIS AUTOINMUNE EN LCR, EN SUERO Y/O PLASMA"
  },
  {
    "code" : "0308061",
    "display" : "CRIPTOCCOCUS LATEX"
  },
  {
    "code" : "0309036",
    "display" : "COBRE EN ORINA"
  },
  {
    "code" : "0309044",
    "display" : "ÁCIDOS ORGÁNICOS, ORINA"
  },
  {
    "code" : "0309050",
    "display" : "ZINC EN ORINA"
  },
  {
    "code" : "0401073",
    "display" : "VIDEOFLUOROSCOPIA PARA ESTUDIO DE DEGLUCIÓN"
  },
  {
    "code" : "0403018",
    "display" : "TOMOGRAFÍA COMPUTARIZADA DE COLUMNA DORSAL. INCLUYE MÍNIMO 6 ESPACIOS"
  },
  {
    "code" : "0403019",
    "display" : "TOMOGRAFÍA COMPUTARIZADA DE COLUMNA LUMBAR"
  },
  {
    "code" : "0403020",
    "display" : "TOMOGRAFÍA COMPUTARIZADA DE ABDOMEN Y PELVIS"
  },
  {
    "code" : "0403021",
    "display" : "TOMOGRAFÍA COMPUTARIZADA PIELOGRAFÍA"
  },
  {
    "code" : "0403022",
    "display" : "TOMOGRAFÍA COMPUTARIZADA UROGRAFÍA"
  },
  {
    "code" : "0403023",
    "display" : "TOMOGRAFÍA COMPUTARIZADA DE COLONOSCOPÍA VIRTUAL. NO INCLUYE INSTALACIÓN DE SONDA"
  },
  {
    "code" : "0403025",
    "display" : "TOMOGRAFÍA COMPUTARIZADA DE CALCIO CORONARIO"
  },
  {
    "code" : "0403101",
    "display" : "TOMOGRAFÍA COMPUTARIZADA ANGIO DE ENCÉFALO"
  },
  {
    "code" : "0403102",
    "display" : "TOMOGRAFÍA COMPUTARIZADA ANGIO DE TÓRAX"
  },
  {
    "code" : "0403103",
    "display" : "TOMOGRAFÍA COMPUTARIZADA ANGIO DE ABDOMEN"
  },
  {
    "code" : "0403104",
    "display" : "TOMOGRAFÍA COMPUTARIZADA ANGIO DE CUELLO"
  },
  {
    "code" : "0403105",
    "display" : "TOMOGRAFÍA COMPUTARIZADA ANGIO DE PELVIS"
  },
  {
    "code" : "0403106",
    "display" : "TOMOGRAFÍA COMPUTARIZADA DE ANGIO CARDÍACO. MÍNIMO 64 CORTES"
  },
  {
    "code" : "0403107",
    "display" : "TOMOGRAFÍA COMPUTARIZADA ANGIO DE EXTREMIDADES INFERIORES (BILATERAL)"
  },
  {
    "code" : "0403108",
    "display" : "TOMOGRAFÍA COMPUTARIZADA ANGIO DE EXTREMIDAD SUPERIOR (UNILATERAL)"
  },
  {
    "code" : "0404118",
    "display" : "ECOGRAFÍA VASCULAR (ARTERIAL Y VENOSA) PERIFÉRICA (BILATERAL)"
  },
  {
    "code" : "0404119",
    "display" : "ECOGRAFÍA DOPPLER DE VASOS DEL CUELLO"
  },
  {
    "code" : "0404120",
    "display" : "ECOGRAFÍA TRANSCRANEANA"
  },
  {
    "code" : "0404121",
    "display" : "ECOGRAFÍA ABDOMINAL O DE VASOS TESTICULARES"
  },
  {
    "code" : "0404122",
    "display" : "ECOGRAFÍA DOPPLER DE VASOS PLACENTARIOS"
  },
  {
    "code" : "0404218",
    "display" : "ELASTOGRAFÍA HEPÁTICA"
  },
  {
    "code" : "0405013",
    "display" : "RESONANCIA MAGNÉTICA DE RODILLA"
  },
  {
    "code" : "0405016",
    "display" : "RESONANCIA COLUMNA TOTAL (CERVICAL, DORSAL, LUMBAR)"
  },
  {
    "code" : "0405017",
    "display" : "RESONANCIA MAGNÉTICA ANGIOGRAFÍA DE ENCÉFALO"
  },
  {
    "code" : "0405018",
    "display" : "RESONANCIA MAGNÉTICA ANGIOGRAFÍA DE CUELLO"
  },
  {
    "code" : "0405019",
    "display" : "RESONANCIA MAGNÉTICA ANGIOGRAFÍA DE TÓRAX"
  },
  {
    "code" : "0405020",
    "display" : "RESONANCIA MAGNÉTICA ANGIOGRAFÍA DE ABDOMEN"
  },
  {
    "code" : "0405021",
    "display" : "RESONANCIA MAGNÉTICA ANGIOGRAFÍA DE PELVIS"
  },
  {
    "code" : "0405022",
    "display" : "RESONANCIA MAGNÉTICA ANGIOGRAFÍA DE EXTREMIDAD SUPERIOR UNILATERAL"
  },
  {
    "code" : "0405024",
    "display" : "RESONANCIA MAGNÉTICA DE MANO O MUÑECA"
  },
  {
    "code" : "0405025",
    "display" : "RESONANCIA MAGNÉTICA DE ANTEBRAZO O BRAZO"
  },
  {
    "code" : "0405026",
    "display" : "RESONANCIA MAGNÉTICA DE CODO"
  },
  {
    "code" : "0405027",
    "display" : "RESONANCIA MAGNÉTICA DE HOMBRO"
  },
  {
    "code" : "0405028",
    "display" : "RESONANCIA MAGNÉTICA DE PIE, ANTEPIE O TOBILLO"
  },
  {
    "code" : "0405029",
    "display" : "RESONANCIA MAGNÉTICA DE PIERNA"
  },
  {
    "code" : "0405030",
    "display" : "RESONANCIA MAGNÉTICA DE MUSLO O CADERA. UNILATERAL"
  },
  {
    "code" : "0405031",
    "display" : "RESONANCIA MAGNÉTICA DE MAMA (BILATERAL)"
  },
  {
    "code" : "0405098",
    "display" : "COLANGIORESONANCIA"
  },
  {
    "code" : "0501101",
    "display" : "CINTIGRAFÍA TIROIDEA, CUALQUIER RADIOISÓTOPO"
  },
  {
    "code" : "0501102",
    "display" : "CINTIGRAFÍA GLÁNDULAS PARATIROIDES (NO INCLUYE MIBI)"
  },
  {
    "code" : "0501104",
    "display" : "CINTIGRAFÍA ÓSEA TRIFÁSICA (INCLUYE MEDICIONES FASE PRECOZ Y TARDÍA)"
  },
  {
    "code" : "0501105",
    "display" : "SPECT DE PERFUSIÓN MIOCÁRDICA ESTRÉS Y REPOSO (NO INCLUYE HONORARIOS MÉDICO CARDIÓLOGO)"
  },
  {
    "code" : "0501108",
    "display" : "LINFOCINTIGRAFÍA ISOTÓPICA (NO INCLUYE PROCEDIMIENTO)"
  },
  {
    "code" : "0501111",
    "display" : "ESTUDIO MOTILIDAD ESOFÁGICA Y/O REFLUJO GASTROESOFÁGICO"
  },
  {
    "code" : "0501112",
    "display" : "VACIAMIENTO GÁSTRICO LÍQUIDO O SÓLIDO"
  },
  {
    "code" : "0501113",
    "display" : "CINTIGRAFÍA VESÍCULA Y VÍA BILIAR"
  },
  {
    "code" : "0501115",
    "display" : "DETECCIÓN DIVERTÍCULO MECKEL"
  },
  {
    "code" : "0501117",
    "display" : "CINTIGRAFÍA RENAL CON D.M.S.A."
  },
  {
    "code" : "0501118",
    "display" : "ESTUDIO DINÁMICO RENAL CON TC 99 - DTPA"
  },
  {
    "code" : "0501119",
    "display" : "ESTUDIO DINÁMICO RENAL CON TC 99 - MAG 3 O EC"
  },
  {
    "code" : "0501121",
    "display" : "CISTOGRAFÍA ISOTÓPICA DIRECTA (NO INCLUYE PROCEDIMIENTO)"
  },
  {
    "code" : "0501122",
    "display" : "CINTIGRAFÍA PULMONAR PERFUSIÓN O VENTILACIÓN O DIFUSIÓN, C/U"
  },
  {
    "code" : "0501128",
    "display" : "DETECCIÓN Y/O MARCACIÓN DE GANGLIO CENTINELA, NO INCLUYE, PUNCIÓN NI DETECCIÓN CON GAMMAPROBE"
  },
  {
    "code" : "0501130",
    "display" : "EXPLORACIÓN SISTÉMICA CON I-131 (INCLUYE MEDICIONES FASE PRECOZ Y TARDÍA)"
  },
  {
    "code" : "0501132",
    "display" : "ESTUDIO DE TUMORES (ANTICUERPOS MONOCLONALES, OCTREOSCAN, DMSA PENTAVALENTE, PROSTACINT U OTROS) (NO INCLUYE RADIOISÓTOPO)"
  },
  {
    "code" : "0501133",
    "display" : "SPECT - TOMOGRAFÍA POR EMISIÓN FOTÓN ÚNICO, CUALQUIER ÓRGANO (NO INCLUYE RADIOISÓTOPO)"
  },
  {
    "code" : "0501134",
    "display" : "DENSITOMETRÍA ÓSEA A FOTÓN DOBLE, COLUMNA Y CADERA (UNILATERAL O BILATERAL) O CUERPO ENTERO"
  },
  {
    "code" : "0501136",
    "display" : "CINTIGRAFÍA ÓSEA COMPLETA PLANAR"
  },
  {
    "code" : "0501138",
    "display" : "CINTIGRAFÍA DE GLÁNDULAS SALIVALES"
  },
  {
    "code" : "0501139",
    "display" : "DACRIOCINTIGRAFÍA"
  },
  {
    "code" : "0502005",
    "display" : "TERAPIA PALIATIVA DEL DOLOR CON RADIOISÓTOPOS (NO INCLUYE RADIOFÁRMACO)"
  },
  {
    "code" : "0601105",
    "display" : "ATENCIÓN KINESIOLÓGICA INTEGRAL AMBULATORIA"
  },
  {
    "code" : "0602001",
    "display" : "ATENCIÓN INTEGRAL DE TERAPIA OCUPACIONAL"
  },
  {
    "code" : "0602002",
    "display" : "INTERVENCIÓN DE TERAPIA OCUPACIONAL EN AYUDAS TÉCNICAS Y TECNOLOGÍA ASISTIDA"
  },
  {
    "code" : "0602003",
    "display" : "INTERVENCIÓN TERAPIA OCUPACIONAL EN ACTIVIDADES DE LA VIDA DIARIA, BÁSICAS, INSTRUMENTALES Y AVANZADAS"
  },
  {
    "code" : "0702101",
    "display" : "PRODUCCIÓN DE GLÓBULO ROJO"
  },
  {
    "code" : "0702102",
    "display" : "PRODUCCIÓN DE CONCENTRADO DE PLAQUETAS ESTÁNDAR"
  },
  {
    "code" : "0702103",
    "display" : "PRODUCCIÓN DE PLASMA O CRIOPRECIPITADO"
  },
  {
    "code" : "0702104",
    "display" : "PRODUCCIÓN DE CONCENTRADO DE PLAQUETAS POR AFÉRESIS AUTOMÁTICA"
  },
  {
    "code" : "0702107",
    "display" : "PRODUCCIÓN DE CONCENTRADO DE PLASMA POR AFÉRESIS AUTOMÁTICA"
  },
  {
    "code" : "0702108",
    "display" : "PRODUCCIÓN DE CÉLULAS PROGENITORAS HEMATOPOYÉTICA POR AFÉRESIS AUTOMÁTICA A PARTIR DE SANGRE PERIFÉRICA"
  },
  {
    "code" : "0702109",
    "display" : "IRRADIACIÓN DE COMPONENTE SANGUÍNEO POR UNIDAD"
  },
  {
    "code" : "0702110",
    "display" : "FILTRACIÓN DE GLÓBULOS ROJOS O PLAQUETAS (INCLUYE FILTRO RECIÉN NACIDO Y POOL DE PLAQUETAS)"
  },
  {
    "code" : "0702201",
    "display" : "CALIFICACIÓN MICROBIOLÓGICA POR DONANTE ESTUDIADO, COMPONENTE SANGUÍNEO PRODUCIDO O PRODUCTO DE AFÉRESIS AUTOMÁTICA"
  },
  {
    "code" : "0702202",
    "display" : "CALIFICACIÓN INMUNOHEMATOLÓGICA POR DONANTE ESTUDIADO, COMPONENTE SANGUÍNEO PRODUCIDO O PRODUCTO DE AFÉRESIS AUTOMÁTICA"
  },
  {
    "code" : "0702203",
    "display" : "PRUEBA DE COMPATIBILIDAD POR UNIDAD DE GLÓBULOS ROJOS ESTUDIADA (PROC. AUT.)"
  },
  {
    "code" : "0702205",
    "display" : "TITULACIÓN DE ANTICUERPOS IRREGULARES ERITROCITARIOS"
  },
  {
    "code" : "0702207",
    "display" : "DETECCIÓN DE ANTICUERPOS IRREGULARES ERITROCITARIOS"
  },
  {
    "code" : "0702301",
    "display" : "TRANSFUSIÓN EN ADULTO POR UNIDAD O SUBUNIDAD DE GLÓBULOS ROJOS O UNIDAD / SUBUNIDAD O POOL DE: PLASMA, PLAQUETAS O CRIOPRECIPITADOS (ATENCIÓN AMBULATORIA, ATENCIÓN CERRADA SIEMPRE QUE LA ADMINISTRACIÓN SEA CONTROLADA POR PROFESIONAL ESPECIALISTA, TECNÓLOGO MÉDICO O MÉDICO RESPONSABLE)"
  },
  {
    "code" : "0702302",
    "display" : "TRANSFUSIÓN EN NIÑO POR UNIDAD O SUBUNIDAD DE GLÓBULOS ROJOS, O UNIDAD/SUBUNIDAD O POOL DE: PLASMA, PLAQUETAS O CRIOPRECIPITADOS (ATENCIÓN AMBULATORIA, ATENCIÓN CERRADA SIEMPRE QUE LA ADMINISTRACIÓN SEA CONTROLADA POR PROFESIONAL ESPECIALISTA, TECNÓLOGO MÉDICO O MÉDICO RESPONSABLE)"
  },
  {
    "code" : "0702303",
    "display" : "TRANSFUSIÓN POR UNIDAD DE GLÓBULOS ROJOS, O UNIDAD O POOL DE: PLASMA, PLAQUETAS O CRIOPRECIPITADOS, EN ADULTO O NIÑO EN PABELLÓN (CON ASISTENCIA PERMANENTE DEL MÉDICO O TECNOLOGO MÉDICO RESPONSABLE)(NO CORRESPONDE SU COBRO CUANDO SEA CONTROLADA POR MÉDICO ANESTESISTA, POR ESTAR INCLUIDA EN EL VALOR DE SUS HONORARIOS)"
  },
  {
    "code" : "0702304",
    "display" : "SANGRÍA (CONSIDERA EL COBRO DE UNA PRESTACIÓN POR CADA UNIDAD DE SANGRE EXTRAÍDA)"
  },
  {
    "code" : "0702305",
    "display" : "RECAMBIO PLASMÁTICO POR AFÉRESIS TERAPÉUTICA"
  },
  {
    "code" : "0801011",
    "display" : "PCR TIEMPO REAL PARA MARCADORES TUMORALES EN CORTES HISTOLÓGICOS (INCLUYE MICRODISECCIÓN Y EXTRACCIÓN DE ADN)"
  },
  {
    "code" : "0801012",
    "display" : "TÉCNICA INMUNOHISTOQUIMICA PARA MARCADORES TUMORALES (ALK-PDL1-ROS1) C/U"
  },
  {
    "code" : "0908101",
    "display" : "TELEREHABILITACIÓN: PSICÓLOGO CLÍNICO (SESIONES 45)"
  },
  {
    "code" : "0908102",
    "display" : "TELEREHABILITACIÓN: PSICOTERAPIA INDIVIDUAL"
  },
  {
    "code" : "1801050",
    "display" : "ENDOSONOGRAFÍA DIGESTIVA ALTA"
  },
  {
    "code" : "1801051",
    "display" : "ENDOSONOGRAFÍA DIGESTIVA BAJA"
  },
  {
    "code" : "3103059",
    "display" : "AUTOREFRACTOMETRIA CON O SIN CICLOPEJIA - CADA OJO - PROCEDIMIENTO COMPLETO - CUALQUIER TECNICA"
  },
  {
    "code" : "3103091",
    "display" : "RECUENTO DE CELULAS ENDOTELIALES CORNEALES"
  },
  {
    "code" : "3103124",
    "display" : "POTENCIAL VESTIBULAR MIOGENICO EVOCADO (VEMPS)"
  },
  {
    "code" : "3104034",
    "display" : "ECOCARDIOGRAMA BD DOPLLER COLOR CON STRESS"
  },
  {
    "code" : "3105058",
    "display" : "INSTALACION PROTESIS PERITONEODIALISIS"
  },
  {
    "code" : "3105061",
    "display" : "COLOCACION PIG TAIL Y/O CATETER DOBLE J"
  },
  {
    "code" : "3105073",
    "display" : "HISTEROSCOPIA TERAPEUTICA (EXTRACCION MIOMAS SUBMUCOSOS, POLIPOS, SINEQUIA O TABIQUE VAGINAL Y/O UTERINO). PROC. AUT."
  },
  {
    "code" : "3107087",
    "display" : "CAPILAROSCOPÍA"
  },
  {
    "code" : "1101502",
    "display" : "EEG VIDEO MONITOR CONTINUO (HASTA 2 HORAS)"
  },
  {
    "code" : "1201102",
    "display" : "PROCEDIMIENTO LÁGRIMAS ARTIFICIALES AUTOGÉNICAS"
  },
  {
    "code" : "1201507",
    "display" : "MICROSCOPIA ESPECULAR"
  },
  {
    "code" : "1201520",
    "display" : "INYECCION INTRAVITREA"
  },
  {
    "code" : "1301103",
    "display" : "TRATAMIENTO DE REHABILITACION VESTIBULAR"
  },
  {
    "code" : "1301104",
    "display" : "MANIOBRAS DE REPOSICION Y/O LIBERACION DE PARTICULAS"
  },
  {
    "code" : "1301511",
    "display" : "V-HIT"
  },
  {
    "code" : "1801110",
    "display" : "TEST DE REFLUJO ACIDO DE 24 HRS."
  },
  {
    "code" : "1801510",
    "display" : "IMPEDANCIOMETRIA ESOFÁGICA"
  },
  {
    "code" : "1801512",
    "display" : "TEST INMUNOLÓGICO DE DETECCIÓN DE HEMOGLOBINA HUMANA EN DEPOSICIONES"
  },
  {
    "code" : "1801519",
    "display" : "MANOMETRIA ANORECTAL 3D"
  },
  {
    "code" : "3501102",
    "display" : "PROTOCOLO ALERGIA A BETA LACTÁMICOS(C/DÍA)"
  },
  {
    "code" : "3501103",
    "display" : "PROTOCOLO AINES (ANTIINFLAMATORIOS NO ESTEROIDALES) (C/DÍA)"
  },
  {
    "code" : "0302122",
    "display" : "ZINC"
  },
  {
    "code" : "0303507",
    "display" : "INFLIXIMAB, CUANTIFICACION DE"
  },
  {
    "code" : "0303508",
    "display" : "TACROLIMUS, CUANTIFICACION DE"
  },
  {
    "code" : "0303509",
    "display" : "ANTI INFLIXIMAB, ANTICUERPOS"
  },
  {
    "code" : "0305138",
    "display" : "SUBCLASES DE IGG (1.2.3.4) C/U"
  },
  {
    "code" : "0305140",
    "display" : "ESTUDIO GENÉTICO DE HEMOCROMATOSIS (MUTACIONES C282 Y H63D)"
  },
  {
    "code" : "0305505",
    "display" : "POLIMORFISMO GENÉTICO DE LA ENZIMA TPMT"
  },
  {
    "code" : "0305506",
    "display" : "VIH, TROPISMO VIRAL"
  },
  {
    "code" : "0305515",
    "display" : "VIH, GENOTIPO DE INTEGRASA"
  },
  {
    "code" : "0305517",
    "display" : "DETERMINACION DIAMINO OXIDASA ( DAO )"
  },
  {
    "code" : "0305518",
    "display" : "ANTICUERPO ANTIRECEPTOR FOSFOLIPASA A2"
  },
  {
    "code" : "0305536",
    "display" : "TRIPTASA SERICA"
  },
  {
    "code" : "0305548",
    "display" : "POLIMORFISMO NUDT15"
  },
  {
    "code" : "0306147",
    "display" : "AMPLIFICACION DE ACIDOS NUCLEICOS EN TIEMPO REAL PARA PARVOVIRUS B 19"
  },
  {
    "code" : "0306151",
    "display" : "PCR CITOMEGALOVIRUS"
  },
  {
    "code" : "0306152",
    "display" : "PCR CUANTITATIVO PARA CITOMEGALOVIRUS"
  },
  {
    "code" : "0306163",
    "display" : "BARTONELLA HENSELAE, SEROLOGÍA IGG"
  },
  {
    "code" : "0306514",
    "display" : "CADENAS LIVIANAS LIBRES EN SUERO KAPPA Y LAMBDA"
  },
  {
    "code" : "0306520",
    "display" : "MULTIPLEX CHLAMYDIA, NEISSERIA, OTROS(7), AMPLIFICACIÓN DE ACIDOS NUCLEICOS"
  },
  {
    "code" : "0306526",
    "display" : "PANEL HEPATICO AUTOINMUNE POR INMUNOBLOT (AMA-M2, M2-3E, LKM1, GP210, SLA/LP, SP"
  },
  {
    "code" : "0306533",
    "display" : "TITULACIÓN ANTI BHS POST VACUNACIÓN"
  },
  {
    "code" : "0306534",
    "display" : "VIRUS HEPATITIS E"
  },
  {
    "code" : "0308102",
    "display" : "TEST HIDROGENO ASPIRADO CON LACTOSA"
  },
  {
    "code" : "0308103",
    "display" : "TEST HIDROGENO ASPIRADO CON LACTULOSA"
  },
  {
    "code" : "0308104",
    "display" : "MED. DE HIDROGENO, PRUEBA DE GLUCOSA"
  },
  {
    "code" : "0308112",
    "display" : "TEST DE LACTASA"
  },
  {
    "code" : "0312004",
    "display" : "PCR MUTACION JAK2"
  },
  {
    "code" : "0312005",
    "display" : "BCR - ABL T( 9;22 ) Q ( CUANTITATIVO)"
  },
  {
    "code" : "0312006",
    "display" : "BCR - ABL T( 9;22 ) CUALITATIVO ( DIAGNOSTICO)"
  },
  {
    "code" : "0404500",
    "display" : "HISTEROSONOGRAFIA"
  },
  {
    "code" : "0602006",
    "display" : "TERAPIAS DE GRUPO EN NIÑOS Y ADULTOS POR SESION"
  },
  {
    "code" : "190110705",
    "display" : "HEMODIALISIS AGUDO POR SESIÓN"
  },
  {
    "code" : "0106007",
    "display" : "OXIGENOTERAPIA HIPERBÁRICA POR SESIÓN"
  },
  {
    "code" : "1701117",
    "display" : "REPROGRAMACIÓN DE MARCAPASO"
  },
  {
    "code" : "1201027",
    "display" : "EXAMEN OPTOMÉTRICO C/S PRESCRIPCIÓN DE LENTES"
  },
  {
    "code" : "2508123",
    "display" : "INHIBIDORES DEL COTRANSPORTADOR SODIO-GLUCOSA 2 (ISGLT2)"
  },
  {
    "code" : "2508124",
    "display" : "TAMIZAJE RETINOPATÍA DIABÉTICA"
  },
  {
    "code" : "2908142",
    "display" : "PERTUZUMAB (PRIMERA DOSIS) (POR UNA VEZ)"
  },
  {
    "code" : "2508116",
    "display" : "TRATAMIENTO FARMACOLÓGICO AMBULATORIO TRAS ALTA HOSPITALARIA POR CIRROSIS HEPÁTICA"
  },
  {
    "code" : "2508117",
    "display" : "TRATAMIENTO FARMACOLÓGICO NIVEL ESPECIALIDAD TRAS ALTA HOSPITALARIA POR CIRROSIS HEPÁTICA"
  },
  {
    "code" : "2908143",
    "display" : "PERTUZUMAB (DOSIS DE MANTENCIÓN) (CICLO)"
  },
  {
    "code" : "2908141",
    "display" : "PREPARACIÓN DE MEDICAMENTO ONCOLÓGICO"
  },
  {
    "code" : "3401003",
    "display" : "BIOPSIA PERCUTANEA ÓRGANO SOLIDO"
  },
  {
    "code" : "3401004",
    "display" : "BIOPSIA ENDOBILIAR"
  },
  {
    "code" : "3401005",
    "display" : "IMPLANTE STENT BILIAR PERCUTANEO"
  },
  {
    "code" : "3401006",
    "display" : "EMBOLIZACIÓN ENDOVASCULAR"
  },
  {
    "code" : "3401007",
    "display" : "QUIMIOEMBOLIZACIÓN"
  },
  {
    "code" : "2508157",
    "display" : "PROCURAMIENTO TOS (TX ÓRGANOS SÓLIDOS"
  },
  {
    "code" : "040500901",
    "display" : "RESONANCIA MAGNÉTICA DE TÓRAX ( CORAZÓN, ESTERNÓN, CLAVÍCULAS, ARTICULACIÓN ACROMIOCLAVICULAR, ESCÁPULA, COSTILLAS O ARTICULACIÓN ESTERNOCLAVICULAR)."
  },
  {
    "code" : "040501001",
    "display" : "RESONANCIA MAGNÉTICA DE ABDOMEN"
  },
  {
    "code" : "040501101",
    "display" : "RESONANCIA MAGNÉTICA DE PELVIS. INCLUYE: OSTEOARTICULAR DE SACROILIACAS U OSTEOARTICULAR DE SACROCOXIS U OSTEOARTICULAR DE HUESOS PÉLVICOS U ÓRGANOS P"
  },
  {
    "code" : "040501201",
    "display" : "RESONANCIA MAGNÉTICA DE ABDOMEN Y PELVIS"
  },
  {
    "code" : "010120101",
    "display" : "CONSULTA MÉDICA DE ESPECIALIDAD EN DERMATOLOGÍA"
  },
  {
    "code" : "090100501",
    "display" : "ATENCIÓN PSIQUIÁTRICA O PSICOTERAPIA DE FAMILIA, INDIVIDUAL, DE RELAJACIÓN O DE MANEJO (CON FAMILIA U OTROS);(CADA SESIÓN MÍNIMO 45)"
  },
  {
    "code" : "2508144",
    "display" : "LEUCEMIA LINFÁTICA CRÓNICA CON CRITERIO PARA TRATAMIENTO, 1ERA LÍNEA, APTO- R VENETOCLAX"
  },
  {
    "code" : "2508145",
    "display" : "LEUCEMIA LINFÁTICA CRÓNICA CON CRITERIO PARA TRATAMIENTO, 2DA LÍNEA CON INHIBIDORES DE TIROSINA QUINASA DE BRUTON (BTKI)"
  },
  {
    "code" : "2506031",
    "display" : "SEGUIMIENTO LEUCEMIA AGUDA"
  },
  {
    "code" : "2508146",
    "display" : "LEUCEMIA MIELOIDE AGUDA BAJO RIESGO T(8;21), INV(16) Ó T(16;16)(+), APTO, 1ERA LÍNEA /GEMTUZUMAB OZOGAMICINA"
  },
  {
    "code" : "2508147",
    "display" : "LEUCEMIA MIELOIDE AGUDA, FRÁGIL, 1ERA LÍNEA/ VENETOCLAX MÁS AZACITIDINA"
  },
  {
    "code" : "2508148",
    "display" : "LEUCEMIA/LINFOMA LINFOBLÁSTICA AGUDA B, T(9;22)(-), >70 AÑOS/ 1ERA LÍNEA, PREFASE, INDUCCIÓN Y MANTENCIÓN"
  },
  {
    "code" : "2508149",
    "display" : "LEUCEMIA/LINFOMA LINFOBLÁSTICA AGUDA B, T(9;22)(-), 60-70 AÑOS/ 1ERA LÍNEA, PREFASE, INDUCCIÓN, CONSOLIDACIÓN Y MANTENCIÓN"
  },
  {
    "code" : "2508139",
    "display" : "TRATAMIENTO CRÓNICO CON OCTEOTRIDA, LANREOTIDA, PEGVISOMANT O PASIREOTIDA PARA ACROMEGALIA"
  }]
}

```
