---
layout: default
title: Estándares y Perfiles
parent: Especificación de la Arquitectura
nav_order: 3
last_reviewed: 2026-09-18
---

# Estándares y Perfiles

Para asegurar la calidad, disponibilidad y uso seguro de los datos clínicos, se ha definido una arquitectura orientada a servicios basada en estándares sintácticos y semánticos de amplio uso internacional. El comité técnico define los estándares más adecuados para cada proceso clínico.

<div class="doc-summary">
	<p class="doc-summary__eyebrow">Intercambio con significado</p>
	<p>Los estándares sintácticos definen cómo viajan los datos; los estándares semánticos aseguran que diagnósticos, observaciones y conceptos clínicos mantengan el mismo significado entre sistemas.</p>
</div>

<div class="doc-grid">
	<div class="doc-card">
		<span class="doc-card__label">Sintácticos</span>
		<strong>FHIR, DICOM y GS1</strong>
		<span>Definen estructuras, servicios y formatos para intercambiar e identificar datos clínicos, imágenes y productos.</span>
	</div>
	<div class="doc-card">
		<span class="doc-card__label">Semánticos</span>
		<strong>CIE, CIE-O, SNOMED CT y LOINC</strong>
		<span>Permiten codificar, recuperar y comparar información clínica de forma consistente.</span>
	</div>
</div>

## Resumen de estándares adoptados

Vista rápida de los estándares descritos en esta página. El desarrollo completo de cada uno está más abajo, y el detalle más extenso está disponible bajo demanda en los bloques "Ver desarrollo completo".

<table>
<colgroup>
<col style="width: 10%">
<col style="width: 13%">
<col style="width: 27%">
<col style="width: 22%">
<col style="width: 28%">
</colgroup>
<thead>
<tr><th>Estándar</th><th>Tipo</th><th>Versión adoptada en Chile</th><th>Organismo responsable</th><th>Para qué se usa</th></tr>
</thead>
<tbody>
<tr><td>FHIR</td><td>Sintáctico</td><td>R4</td><td>HL7 Internacional</td><td>Intercambio de datos clínicos mediante recursos estandarizados</td></tr>
<tr><td>DICOM</td><td>Sintáctico</td><td><em>No especifica versión en el documento</em></td><td>ACR / NEMA (creadores originales)</td><td>Transmisión, almacenamiento, impresión y recuperación de imágenes médicas</td></tr>
<tr><td>GS1</td><td>Sintáctico — identificación</td><td>GTIN / GLN, según Norma Técnica N.° 226 (2022) y su actualización, N.° 247 (2025)</td><td>GS1 Internacional; en Chile, Minsal (normas técnicas)</td><td>Trazabilidad de medicamentos y dispositivos médicos en la cadena de suministro</td></tr>
<tr><td>CIE</td><td>Semántico</td><td>CIE-10, edición 2018 con actualización 2022 (transición a CIE-11 en pilotos desde 2025)</td><td>OMS</td><td>Clasificación de morbilidad y mortalidad</td></tr>
<tr><td>CIE-O</td><td>Semántico</td><td>CIE-O, 3.ª edición (edición vigente a nivel internacional)</td><td>OMS</td><td>Clasificación de casos de cáncer (Registro Nacional del Cáncer)</td></tr>
<tr><td>SNOMED CT</td><td>Semántico</td><td><em>No especifica versión particular; Chile es miembro desde 2013</em></td><td>SNOMED International</td><td>Terminología clínica de referencia para Registros Clínicos Electrónicos</td></tr>
<tr><td>LOINC</td><td>Semántico</td><td><em>No especifica versión en el documento</em></td><td>Regenstrief Institute (EE. UU.)</td><td>Identificación de pruebas de laboratorio y observaciones clínicas</td></tr>
</tbody>
</table>

## Estándares Técnicos

El Ministerio deberá revisar, al menos cada dos años, los estándares definidos a través de este lineamiento para determinar si requieren actualización. La revisión debe considerar los siguientes criterios:

<ol>
<li>Adoptar los estándares internacionales emitidos por organismos reconocidos en la materia, en su ausencia se considerará los estándares de carácter regional y, sólo cuando ninguno de ellos se encuentre disponible, observará los de desarrollo nacional.</li>
<li>Adoptar los estándares técnicos, sintácticos y semánticos que sean de uso frecuente en el sector salud.</li>
<li>Realizar los procesos de adopción con la gradualidad necesaria que permita a los prestadores de salud adecuarse a los cambios y su correcta implementación.</li>
</ol>

Esta necesidad de integración rápida entre sistemas responde a uno de los fundamentos de la Arquitectura Nacional de Interoperabilidad: que la información clínica de una persona esté disponible donde se atienda, sin importar dónde se generó. Ese argumento se desarrolla en [¿Por qué existe la Arquitectura?]({{ '/arquitectura.html#por-que-existe' | relative_url }}).

### Estándares Sintácticos

#### FHIR — HL7 Fast Healthcare Interoperability Resources

FHIR es el acrónimo de Fast Healthcare Interoperability Resources (FHIR), estándar que fue creado en 2011 por HL7 Internacional. Es una especificación técnica para intercambio de datos, basada en tecnologías y formatos estándar (JSON, XML, REST, etc.), define objetos de datos estándar (recursos) que pueden componerse para formar cualquier tipo de comunicación, desde la notificación de una medición de la presión arterial hasta la consulta de artículos disponibles en un inventario. Los recursos son la unidad básica de interoperabilidad, la unidad más pequeña a intercambiar y contiene información computable. Su implementación es fácil y de bajo costo y cuenta con el apoyo de una amplia comunidad global.

El Ministerio de Salud ha decidido usar FHIR en su versión R4 como estándar sintáctico, por ser una versión madura y ampliamente adoptada.

#### DICOM — Digital Imaging and Communications in Medicine

Digital Imaging and Communications in Medicine (DICOM), creado originalmente por American College of Radiology (ACR) y National Electrical Manufacturers Association (NEMA), es un estándar internacional para transmitir, almacenar, recuperar, imprimir, procesar y mostrar información de imagenología médica.

<details class="technical-details">
<summary>Ver desarrollo completo de DICOM</summary>
<div class="technical-details__body">

<p>Este estándar surge a partir de la necesidad de diseñar un formato que fuera capaz de incluir toda la información (texto e imágenes) en un único archivo capaz de transmitir esta información en un protocolo de comunicación común de trabajo para todos los equipos imagenología.</p>

<p>Entre las características más importantes de este estándar destacan:</p>
<ul>
<li>Se presenta como un protocolo estándar de comunicación entre sistemas de información y a la vez un formato de almacenamiento de imágenes médicas.</li>
<li>Facilita la interoperabilidad del equipamiento de imagenología médica específica.</li>
<li>Describe los medios de formato e intercambio de imágenes médicas y la información relacionada del paciente, estableciendo normas que deben ser respetadas por todos los fabricantes para facilitar la conectividad entre dispositivos utilizados en el ámbito de la imagenología.</li>
<li>Dispone de un conjunto de protocolos y servicio de almacenamiento de medios, para dispositivos que declaran operar en conformidad bajo el estándar, así como también en formato de archivo y una estructura de directorio médico para facilitar el acceso a las imágenes y a la información almacenada en los medios de intercambio.</li>
</ul>

<p>En lo que respecta a las funcionalidades o servicios que entrega el protocolo DICOM destacan:</p>
<ul>
<li>Almacenamiento o archivo (storage)</li>
<li>Consulta y recuperación (query/retrieve)</li>
<li>Impresión (print management)</li>
<li>Gestión de lista de trabajo (Basic work list management)</li>
</ul>

</div>
</details>

#### GS1

GS1 es una organización internacional que administra un sistema de estándares globales de identificación y codificación —entre ellos el Número Global de Artículo Comercial (GTIN) y el Número Global de Localización (GLN)— utilizado para identificar de forma única productos, ubicaciones y lotes a lo largo de la cadena de suministro.

<details class="technical-details">
<summary>Ver desarrollo completo de GS1</summary>
<div class="technical-details__body">

<p>En Chile, el uso de estándares GS1 para la trazabilidad de medicamentos y dispositivos médicos está regulado por el Ministerio de Salud a través de la Norma Técnica N.° 226 (aprobada por Decreto Exento N.° 63 de 2022) y su actualización, la Norma Técnica N.° 247 (2025). Ambas normas exigen identificar de forma inequívoca cada producto, su lote o serie y su fecha de vencimiento, desde la fabricación hasta la dispensación al paciente, alineándose con la definición de trazabilidad de la norma ISO 9000:2015 y con los estándares GS1 Healthcare.</p>

</div>
</details>

### Estándares Semánticos

#### CIE — Clasificación Internacional y Estadística de Enfermedades y Problemas Relacionados con la Salud

<details class="technical-details">
<summary>Ver desarrollo completo de CIE</summary>
<div class="technical-details__body">

<p>La Clasificación Internacional y Estadística de Enfermedades y Problemas Relacionados con la Salud también conocida como Clasificación Internacional de Enfermedades (CIE; ICD, en inglés), es una herramienta para registrar, informar y agrupar las afecciones y los factores que influyen en la salud. Contiene categorías para enfermedades y trastornos, condiciones relacionadas con la salud, causas externas de enfermedad o muerte, anatomía, lugares, actividades, medicamentos, vacunas, entre otras dimensiones. Existen tres clasificaciones de referencia que abarcan los principales parámetros del sistema de salud: enfermedad (CIE), discapacidad, funcionamiento y salud (CIF) e intervenciones de salud (CIIS). Además, existen clasificaciones derivadas como la Clasificación Internacional de Atención Primaria (CIAP).</p>

</div>
</details>

El propósito de la CIE es permitir el registro, el análisis, la interpretación y la comparación sistemática de los datos de morbilidad y mortalidad recogidos en diferentes países o regiones y en diferentes momentos. Su décima revisión, CIE-10, se desarrolló en 1992 y ha sido actualizada anualmente por parte de la OMS. Actualmente, la versión en uso en Chile es la CIE-10, edición 2018 con actualización 2022.

La CIE-10 se considera un sistema legado y los países están transitando a su undécima revisión o CIE-11. Esta versión está diseñada para servir a la interoperabilidad semántica de los datos individuales, la reutilización de los datos registrados para casos de uso distintos de las estadísticas sanitarias, incluido el apoyo a la toma de decisiones, la asignación de recursos, el reembolso, las directrices, entre otros.

Los Estados miembros de la OMS, entre los que se incluye Chile, se comprometieron en la Asamblea Mundial de la Salud N° 72 del año 2019 a avanzar en el proceso de implementación de su nueva versión. En Chile se están realizando pilotos para la adopción de su uso estadístico. Durante 2025, el Ministerio de Salud desarrolló dos pilotos de codificación con CIE-11: uno de codificación de mortalidad, con adecuada concordancia y comparabilidad respecto de la CIE-10, y otro de codificación de egresos hospitalarios en el Hospital San Juan de Dios de Curicó (marzo–junio de 2025), usando la plataforma nacional Deisy CIE-11 desarrollada por el DEIS. Ambos pilotos identificaron brechas de capacitación en poscoordinación, registro de causas externas y estandarización de criterios de revisión, insumos para la fase de implementación nacional.

#### CIE-O — Clasificación Internacional de Enfermedades para Oncología

La Clasificación Internacional de Enfermedades para Oncología (CIE-O), desarrollada por la OMS, es un sistema de doble codificación para casos de cáncer: un código de topografía (sitio anatómico de origen del tumor, con las mismas categorías de tres y cuatro caracteres que el capítulo de neoplasias de la CIE-10) y un código de morfología (tipo celular y comportamiento biológico del tumor). Su edición vigente a nivel internacional es la tercera (CIE-O-3).

<details class="technical-details">
<summary>Ver desarrollo completo de CIE-O</summary>
<div class="technical-details__body">

<p>En Chile, la codificación de casos de cáncer se ha realizado con base en la CIE-O en el marco del Registro Nacional del Cáncer, impulsado por el Plan Nacional de Cáncer 2018-2028 y la Ley Nacional del Cáncer.</p>

</div>
</details>

#### SNOMED CT — Systematized Nomenclature of Medicine – Clinical Terms

SNOMED CT (Systematized Nomenclature of Medicine – Clinical Terms) es la terminología clínica integral, multilingüe y codificada de mayor amplitud y precisión desarrollada en el mundo, y Chile es miembro de SNOMED Internacional desde el 1 de noviembre de 2013. SNOMED CT es también un producto terminológico que puede usarse para codificar, recuperar, comunicar y analizar datos clínicos permitiendo a los profesionales de la salud representar la información de forma adecuada, precisa e inequívoca.

<details class="technical-details">
<summary>Ver desarrollo completo de SNOMED CT</summary>
<div class="technical-details__body">

<p>Esta terminología se constituye, de forma básica, por conceptos, descripciones y relaciones. Estos elementos tienen como fin representar con precisión la información y conocimiento clínico en el ámbito de la asistencia sanitaria. A su vez, permite la codificación de estos datos en clasificaciones con fines estadísticos a través de mapeos oficiales, los cuales serán liberados semestralmente por la Oficina FIC y estándares del DEIS. El Ministerio de Salud ha definido que SNOMED CT podrá ser utilizada como terminología de referencia para uso en los Registros Clínicos Electrónicos (RCE) implementados en los establecimientos de la red asistencial del Sistema Público y Privado, según casos de uso particulares, debido a que es una terminología completa, flexible, vinculable a otros vocabularios y tiene una forma de administración que no introduce problemas de sistema por reutilización de códigos.</p>

</div>
</details>

#### LOINC — Logical Observation Identifiers Names and Codes

Logical Observation Identifiers Names and Codes (LOINC), es una base de datos y el estándar más difundido para identificación de pruebas de laboratorio, observaciones clínicas y documentos de salud. Fue desarrollado en 1994, y es mantenido por el Regenstrief Institute de los Estados Unidos de América (EE. UU.), una organización sin fines de lucro para la investigación médica.

<details class="technical-details">
<summary>Ver desarrollo completo de LOINC</summary>
<div class="technical-details__body">

<p>LOINC es una representación de una pregunta sobre un fenómeno clínico que puede ser observado o medido. Utiliza nombres de códigos universales (término LOINC) e identificadores para terminología médica relacionada (Código LOINC).</p>

<p>El código LOINC es un identificador único y permanente que sirve de representación procesable computacionalmente de un término LOINC y entre sus características esenciales destaca que son secuenciales, el último carácter es un dígito verificador, no tiene significado intrínseco y una vez liberado, no puede ser removido, sólo inactivado y se pueden ordenar en paneles, lo que les provee un orden secuencial.</p>

</div>
</details>

El propósito es facilitar el intercambio electrónico y registro de resultados de laboratorio clínicos (tales como pruebas de laboratorio, observaciones clínicas, gestión de resultados e investigación).

<div class="doc-summary">
	<p class="doc-summary__eyebrow">Vigencia de esta información</p>
	<p>Esta página se actualizó por última vez el {{ page.last_reviewed }}. Los siguientes datos cambian con el tiempo y conviene verificarlos con la fuente oficial antes de tomar decisiones de implementación: la edición de <a href="#cie--clasificación-internacional-y-estadística-de-enfermedades-y-problemas-relacionados-con-la-salud">CIE-10 en uso</a> y el estado de los pilotos de CIE-11, la periodicidad de los mapeos semestrales de la <a href="#snomed-ct--systematized-nomenclature-of-medicine--clinical-terms">Oficina FIC para SNOMED CT</a>, y las normas técnicas vigentes de <a href="#gs1">GS1</a> para trazabilidad (actualmente NT 226 y NT 247).</p>
</div>
