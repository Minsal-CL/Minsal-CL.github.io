---
layout: default
title: Estándares y Perfiles
parent: Especificación de la Arquitectura
nav_order: 3
---

# Estándares y Perfiles

Con el objetivo de sustentar la implementación de esta estrategia que asegure la calidad y disponibilidad de los datos clínicos y de las aplicaciones que los procesan y con ello que la información esté disponible de forma segura cuando y donde se necesite, se ha definido una arquitectura orientada a servicios y elástica basada en estándares sintácticos y semánticos desarrollado por organizaciones internacionales y de amplio uso a nivel mundial, como HL7 FHIR® (por su nombre en inglés Health Level Seven – Fast Health Interoperability Resources), DICOM, la familia de clasificaciones internacionales de la OMS, SNOMED-CT, LOINC o la Terminología Farmaceútica Chilena. Será el comité técnico el encargado de definir cuales serán los estándares más adecuados de utilizar para cada proceso clínico.  

El Ministerio deberá revisar, al menos cada dos años, los estándares definidos a través de este lineamiento a fin de determinar si éstas requieren o no de actualización. La revisión de los estándares definidos debe considerar los siguientes criterios:  

1. Adoptar los estándares internacionales emitidos por organismos reconocidos en la materia, en su ausencia se considerará los estándares de carácter regional y, sólo cuando ninguno de ellos se encuentre disponible, observará los de desarrollo nacional. 

2. Adoptar los estándares técnicos, sintácticos y semánticos que sean de uso frecuente en el sector salud.

3. Realizar los procesos de adopción con la gradualidad necesaria que permita a los prestadores de salud adecuarse a los cambios y su correcta implementación. 

Una de las principales áreas de preocupación que aborda la nueva estrategia de salud digital que se está implementando, es la facilidad y la velocidad de integración de los distintos sistemas de información. Como se señaló anteriormente, es importante que cada vez que un paciente se trate en cualquier lugar de Chile, los equipos médicos clínicos tratantes y el paciente tengan acceso a toda la información que se ha generado en su historial clínico, independientemente de dónde se registró esta información. Esto incluye datos de otros establecimientos de salud, instituciones aseguradoras, laboratorios, sistemas de imágenes, equipamiento y dispositivos clínicos, entre otros. 

## ESTÁNDARES TÉCNICOS. 

### Estándares Sintácticos  

#### HL7 Fast Healthcare Interoperability Resources 

FHIR es el acrónimo de Fast Healthcare Interoperability Resources (FHIR), estándar que fue creado en 2011 por HL7 Internacional. Es una especificación técnica para intercambio de datos, basada en tecnologías y formatos estándar (JSON, XML, REST, etc.), define objetos de datos estándar (recursos) que pueden componerse para formar cualquier tipo de comunicación, desde la notificación de una medición de la presión arterial hasta la consulta de artículos disponibles en un inventario. Los recursos son la unidad básica de interoperabilidad, la unidad más pequeña a intercambiar y contiene información computable. Su implementación es fácil y de bajo costo y cuenta con el apoyo de una amplia comunidad global. 

El Ministerio de Salud ha decidido usar FHIR en su versión R4 como estándar sintáctico, ya que es la versión más actualizada y robusta respecto de sus revisiones por la organización HL7. 

#### Digital Imaging and Communications in Medicine (DICOM)

Digital Imaging and Communications in Medicine (DICOM), creado originalmente por American College of Radiology (ACR) y National Electrical Manufacturers Association (NEMA), es un estándar internacional para transmitir, almacenar, recuperar, imprimir, procesar y mostrar información de imagenología médica.  

Este estándar surge a partir de la necesidad de diseñar un formato que fuera capaz de incluir toda la información (texto e imágenes) en un único archivo capaz de transmitir esta información en un protocolo de comunicación común de trabajo para todos los equipos imagenología. 

Entre las características más importantes de este estándar destacan:  

Se presenta como un protocolo estándar de comunicación entre sistemas de información y a la vez un formato de almacenamiento de imágenes médicas. 

Facilita la interoperabilidad del equipamiento de imagenología médica específica. 

Describe los medios de formato e intercambio de imágenes médicas y la información relacionada del paciente, estableciendo normas que deben ser respetadas por todos los fabricantes para facilitar la conectividad entre dispositivos utilizados en el ámbito de la imagenología. 

Dispone de un conjunto de protocolos y servicio de almacenamiento de medios, para dispositivos que declaran operar en conformidad bajo el estándar, así como también en formato de archivo y una estructura de directorio médico para facilitar el acceso a las imágenes y a la información almacenada en los medios de intercambio.  

En lo que respecta a las funcionalidades o servicios que entrega el protocolo DICOM destacan:  

Almacenamiento o archivo (storage) 

Consulta y recuperación (query/retrieve) 

Impresión (print management) y  

Gestión de lista de trabajo (Basic work list management) 

 

### Estándares Semánticos  


#### Clasificación Internacional y Estadística de Enfermedades y Problemas Relacionados con la Salud. 

La Clasificación Internacional y Estadística de Enfermedades y Problemas Relacionados con la Salud también conocida como Clasificación Internacional de Enfermedades (CIE; ICD, en inglés), es una herramienta para registrar, informar y agrupar las afecciones y los factores que influyen en la salud. Contiene categorías para enfermedades y trastornos, condiciones relacionadas con la salud, causas externas de enfermedad o muerte, anatomía, lugares, actividades, medicamentos, vacunas, entre otras dimensiones. Existen tres clasificaciones de referencia que abarcan los principales parámetros del sistema de salud: enfermedad (CIE), discapacidad, funcionamiento y salud (CIF) e intervenciones de salud (CIIS). Además, existen clasificaciones derivadas como la Clasificación Internacional de Atención Primaria (CIAP). 

El propósito de la CIE es permitir el registro, el análisis, la interpretación y la comparación sistemática de los datos de morbilidad y mortalidad recogidos en diferentes países o regiones y en diferentes momentos. Su décima revisión, CIE-10, se desarrolló en 1992 y ha sido actualizada anualmente por parte de la OMS. Actualmente, la versión en uso en Chile es la CIE-10, edición 2018 con actualización 2022. 

La CIE-10 se considera un sistema legado y los países están transitando a su undécima revisión o CIE-11. Esta versión está diseñada para servir a la interoperabilidad semántica de los datos individuales, la reutilización de los datos registrados para casos de uso distintos de las estadísticas sanitarias, incluido el apoyo a la toma de decisiones, la asignación de recursos, el reembolso, las directrices, entre otros. 

Los Estados miembros de la OMS, entre los que se incluye Chile, se comprometieron en la Asamblea Mundial de la Salud N° 72 del año 2019 a avanzar en el proceso de implementación de su nueva versión. En Chile se están realizando pilotos para la adopción de su uso estadístico. 

#### Systematized Nomenclature of Medicine – Clinical Terms 

SNOMED CT (Systematized Nomenclature of Medicine – Clinical Terms) es la terminología clínica integral, multilingüe y codificada de mayor amplitud y precisión desarrollada en el mundo, y Chile es miembro de SNOMED Internacional desde el 1 de noviembre de 2013. SNOMED-CT es también un producto terminológico que puede usarse para codificar, recuperar, comunicar y analizar datos clínicos permitiendo a los profesionales de la salud representar la información de forma adecuada, precisa e inequívoca. 

Esta terminología se constituye, de forma básica, por conceptos, descripciones y relaciones. Estos elementos tienen como fin representar con precisión la información y conocimiento clínico en el ámbito de la asistencia sanitaria. A su vez, permite la codificación de estos datos en clasificaciones con fines estadísticos a través de mapeos oficiales, los cuales serán liberados semestralmente por la Oficina FIC y estándares del DEIS. El Ministerio de Salud ha definido que SNOMED CT podrá ser utilizada como terminología de referencia para uso en los Registros Clínicos Electrónicos (RCE) implementados en los establecimientos de la red asistencial del Sistema Público y Privado, según casos de uso particulares, debido a que es una terminología completa, flexible, vinculable a otros vocabularios y tiene una forma de administración que no introduce problemas de sistema por reutilización de códigos.  

#### Logical Observation Identifiers Names and Codes. 

Logical Observation Identifiers Names and Codes (LOINC), es una base de datos y el estándar más difundido para identificación de pruebas de los laboratorio, observaciones clínicas y documentos de salud. Fue desarrollado en 1994, y es mantenido por el Regenstrief Institute de los Estados Unidos de América (EE. UU.), una organización sin fines de lucro para la investigación médica. 

LOINC es una representación de una pregunta sobre un fenómeno clínico que puede ser observado o medido. Utiliza nombres de códigos universales (término LOINC) e identificadores para terminología médica relacionada (Código LOINC).  

El código LOINC es un identificador único y permanente que sirve de representación procesable computacionalmente de un término LOINC y entre sus características esenciales destaca que son secuenciales, el último carácter es un digito verificador, no tiene significado intrínseco y una vez liberado, o puede ser removido, sólo inactivado y se pueden ordenar en paneles, lo que les provee un orden secuencial.  

El propósito es facilitar el intercambio electrónico y registro de resultados de laboratorio clínicos (tales como pruebas de laboratorio, observaciones clínicas, gestión de resultados e investigación).  