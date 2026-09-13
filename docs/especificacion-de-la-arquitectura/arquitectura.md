---
layout: default
title: Arquitectura
parent: Especificación de la Arquitectura
nav_order: 1
---

# Introducción

Para lograr la interoperabilidad se define una estrategia tecnológica basada en gobernanza transversal, estándares compartidos y un modelo híbrido para el manejo de activos de información. Este enfoque permite la movilidad de la información dentro de la red asistencial, manteniendo una arquitectura coherente, sostenible, confiable y resiliente.

<div class="doc-summary">
	<p class="doc-summary__eyebrow">Modelo híbrido</p>
	<p>Las capacidades nacionales comunes se combinan con los sistemas distribuidos de la red asistencial. La información se intercambia mediante estándares, sin centralizar innecesariamente los sistemas que la originan.</p>
</div>

![Representación del modelo federado híbrido]({{ '/assets/images/ModeloFederadoHibrido.jpg' | relative_url }})

## Gobernanza y responsabilidades

La responsabilidad de ejecutar estos lineamientos de interoperabilidad descansa principalmente en el Departamento de Tecnologías de la Información y Comunicaciones del Ministerio de Salud, junto con los departamentos TIC de los Servicios de Salud.

La dimensión estratégica del modelo de gobernanza de interoperabilidad en salud recae en una comisión de nivel directivo conformada por un representante de la Subsecretaría de Salud Pública, un representante de la Subsecretaría de Redes Asistenciales, un representante del Departamento de Estadísticas e Información en Salud (DEIS), un representante del Departamento de Tecnologías de la Información y las Comunicaciones, un representante del Departamento de Salud Digital y es presidida por el o la Ministro(a) de Salud o quien él o ella delegue. Esta comisión considerará las estrategias prioritarias, procesos de inversión, asuntos que requieran colaboración del intersector y estará a cargo de la toma de decisiones de largo plazo.  

La implementación de procesos clínicos interoperables será coordinada por un comité con representación del Departamento TIC para la dimensión técnica, del Departamento de Estadísticas e Información en Salud para la dimensión semántica y de las áreas técnicas de cada proceso clínico para la dimensión organizacional. Como resultado de este trabajo se desarrollarán normas técnicas, guías de implementación y procesos de control de la adopción de estándares.

<div class="doc-grid">
	<div class="doc-card">
		<span class="doc-card__label">Estratégica</span>
		<strong>Comisión directiva</strong>
		<span>Define prioridades, inversiones, colaboración intersectorial y decisiones de largo plazo.</span>
	</div>
	<div class="doc-card">
		<span class="doc-card__label">Técnica</span>
		<strong>Comité de interoperabilidad</strong>
		<span>Coordina las dimensiones funcional, sintáctica, semántica y organizacional de cada proceso.</span>
	</div>
	<div class="doc-card">
		<span class="doc-card__label">Implementación</span>
		<strong>Red asistencial</strong>
		<span>Adopta los estándares y las guías en los sistemas que producen y consumen información clínica.</span>
	</div>
</div>

## Modelo de Arquitectura

![Diagrama de la Arquitectura Nacional de Interoperabilidad]({{ '/assets/images/diagramaArquitectura.jpg' | relative_url }})

{: .nota }
> El modelo describe cómo se relacionan capacidades compartidas, estándares y sistemas de la red. Su implementación se concreta mediante guías y normas técnicas para cada proceso clínico.