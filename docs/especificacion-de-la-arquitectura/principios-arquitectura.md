---
layout: portal
title: Principios Arquitecturales
nav_exclude: true
description: >-
  Los criterios que guían el diseño, la implementación y la evolución de las
  soluciones que intercambian información de salud.
breadcrumbs:
  - title: "Arquitectura"
    url: "/arquitectura.html"
  - title: "Especificación de la Arquitectura"
    url: "/docs/especificacion-de-la-arquitectura"
---

<section class="hero">
  <div class="wrap">
    <p class="hero__eyebrow">Documentación técnica</p>
    <h2>Principios Arquitecturales</h2>
    <p class="page">
      Para elevar la madurez del sistema de salud chileno, acelerar la
      adopción y favorecer nuevos modelos de atención, la arquitectura se
      guía por los siguientes principios rectores.
    </p>
  </div>
</section>

<section class="band prose-band">
  <div class="wrap doc-body" markdown="1">

<div class="doc-summary">
	<p class="doc-summary__eyebrow">Criterios de diseño</p>
	<p>Estos principios deben orientar las decisiones de arquitectura, adquisición, implementación y evolución de las soluciones que intercambian información de salud.</p>
</div>

<div class="doc-grid">
	<div class="doc-card">
		<span class="doc-card__label">01</span>
		<strong>Disponibilidad y accesibilidad de la información</strong>
		<span>Es esencial eliminar las barreras que puedan dificultar o restringir el acceso, tales como las barreras físicas, tecnológicas o de comunicación.</span>
	</div>
	<div class="doc-card">
		<span class="doc-card__label">02</span>
		<strong>Implementabilidad</strong>
		<span>Es fundamental simplificar la implementación eficaz de los estándares vigentes, teniendo en cuenta la posibilidad de futuras actualizaciones de estos estándares, las cuales deberán ser consensuadas.</span>
	</div>
	<div class="doc-card">
		<span class="doc-card__label">03</span>
		<strong>Privacidad</strong>
		<span>El derecho fundamental de una persona a controlar su información personal y decidir cómo se recopila, utiliza, almacena y comparte, incorporado desde el inicio del diseño y desarrollo de sistemas y tecnologías: consentimiento, acceso a la información personal y transparencia en su uso.</span>
	</div>
	<div class="doc-card">
		<span class="doc-card__label">04</span>
		<strong>Seguridad de la información y ciberseguridad</strong>
		<span>Estándares y protocolos compartidos, con cifrado y autenticación en las comunicaciones para prevenir accesos no autorizados, verificar integridad de los datos, y planes de contingencia y recuperación que mantengan la seguridad en situaciones de fallo.</span>
	</div>
	<div class="doc-card">
		<span class="doc-card__label">05</span>
		<strong>Neutralidad tecnológica</strong>
		<span>Seleccionar las tecnologías más adecuadas según necesidades y requisitos, sin dependencias de conocimiento, información o datos involucradas en la elección.</span>
	</div>
	<div class="doc-card">
		<span class="doc-card__label">06</span>
		<strong>Actualización</strong>
		<span>Mantener las plataformas al día con tecnologías que no estén obsoletas ni carezcan de soporte, y preservar los contenidos de formatos de archivo electrónicos que queden en desuso.</span>
	</div>
	<div class="doc-card">
		<span class="doc-card__label">07</span>
		<strong>Equivalencia funcional</strong>
		<span>Los actos suscritos de manera electrónica son válidos y generan los mismos efectos legales que si hubieran sido realizados en formato físico en papel.</span>
	</div>
	<div class="doc-card">
		<span class="doc-card__label">08</span>
		<strong>Fidelidad</strong>
		<span>La información debe registrarse y conservarse de manera íntegra y en orden sucesivo, asegurando su exactitud, preservación y posibilidad de reproducción.</span>
	</div>
	<div class="doc-card">
		<span class="doc-card__label">09</span>
		<strong>Cooperación</strong>
		<span>Es esencial cooperar efectivamente entre instituciones en la utilización de medios electrónicos.</span>
	</div>
	<div class="doc-card">
		<span class="doc-card__label">10</span>
		<strong>Identificación y autenticación unívoca</strong>
		<span>Verificar de manera inequívoca la identidad de un usuario o entidad antes de otorgarle acceso a un sistema, aplicación o recurso: que quien intenta acceder es quien afirma ser.</span>
	</div>
	<div class="doc-card">
		<span class="doc-card__label">11</span>
		<strong>Confidencialidad</strong>
		<span>Proteger la información sensible o privada de manera que solo las personas o entidades autorizadas tengan acceso a ella.</span>
	</div>
</div>

<div class="doc-summary">
	<p class="doc-summary__eyebrow">Marco legal</p>
	<p>La protección de la información y el resguardo de datos sensibles se exige desde el diseño, conforme a la Ley N.° 21.663 (Ciberseguridad) y la Ley N.° 21.719 (Protección de Datos Personales).</p>
</div>

  </div>
</section>

<section class="band next-band">
  <div class="wrap">
    <h2>Enlaces de interés</h2>
    <p>Sigue explorando la especificación de la arquitectura.</p>
    <div class="routes">
      <a class="route" href="{{ '/docs/especificacion-de-la-arquitectura/estandares-perfiles.html' | relative_url }}">
        <b>Estándares y Perfiles</b>
        <span>Los estándares técnicos y semánticos adoptados →</span>
      </a>
      <a class="route" href="{{ '/arquitectura.html' | relative_url }}">
        <b>Arquitectura</b>
        <span>La Arquitectura Nacional de Interoperabilidad →</span>
      </a>
    </div>
  </div>
</section>
