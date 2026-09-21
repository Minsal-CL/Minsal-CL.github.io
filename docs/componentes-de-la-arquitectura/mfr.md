---
layout: default
title: Maestro Prestadores Institucionales
parent: Componentes de la Arquitectura
nav_order: 4
description: Directorio de establecimientos de salud, con identificación única y datos de ubicación de las instituciones de la red.
---

# Maestro Prestadores Institucionales

El MFR (<em>Master Facility Registry</em>) es el directorio de establecimientos de salud: identifica de forma única a las instituciones y organizaciones que participan en la red asistencial, junto con su dirección y datos de ubicación necesarios para el intercambio de información.

<div class="doc-summary">
	<p class="doc-summary__eyebrow">Directorio de establecimientos</p>
	<p>Una fuente común de establecimientos evita que la misma institución quede identificada de forma distinta en cada sistema, y permite enrutar correctamente la información hacia el lugar correcto.</p>
</div>

## Información que organiza

<div class="doc-grid">
	<div class="doc-card">
		<span class="doc-card__label">Instituciones</span>
		<strong>Identificación de establecimientos</strong>
		<span>Identificador único para organizaciones y establecimientos de la red asistencial.</span>
	</div>
	<div class="doc-card">
		<span class="doc-card__label">Ubicación</span>
		<strong>Direcciones normalizadas</strong>
		<span>Datos de dirección y ubicación de cada establecimiento, mediante un perfil de dirección específico.</span>
	</div>
</div>

<p class="disclaimer">
	El MFR complementa al <a href="{{ '/docs/componentes-de-la-arquitectura/hpd.html' | relative_url }}">Directorio de Prestadores de Salud</a>: mientras ese registro identifica a las personas que prestan atención, el MFR identifica a las instituciones y establecimientos donde se presta.
</p>

## Guía de implementación

La [Guía de Implementación del Maestro Prestadores Institucionales](https://interoperabilidad.minsal.cl/fhir/ig/mfr/) describe los perfiles y reglas técnicas para integrar esta capacidad, incluyendo el perfil de prestador institucional y la extensión de dirección para establecimientos.
