---
layout: portal
title: Norma Técnica N.° 231 — Tablas de codificación
nav_exclude: true
description: >-
  Descarga individual de las tablas de codificación (CSV) de la Norma Técnica
  N.° 231 del Ministerio de Salud: identificación, datos sociodemográficos,
  previsión, territorio, prestadores y profesionales.
---
{%- assign nt = site.data.nt231 -%}
{%- assign base = '/assets/nt231/v' | append: nt.version | append: '/' -%}
{%- assign total = 0 -%}
{%- for g in nt.groups -%}{%- assign total = total | plus: g.tables.size -%}{%- endfor -%}

<section class="page-hero">
  <div class="wrap">
    <p class="kicker">Recursos · Estándares de información</p>
    <h1>Norma Técnica N.° 231</h1>
    <p class="page-hero__lead">
      Tablas de codificación para registrar e intercambiar información de salud
      con los mismos códigos en toda la red. Descarga cada tabla por separado en
      formato CSV.
    </p>
  </div>
</section>

<section class="band">
  <div class="wrap">
    <div class="nt-bar">
      <div class="nt-bar__info">
        <span class="nt-chip">Versión {{ nt.version }}</span>
        <span class="nt-chip nt-chip--soft">{{ total }} tablas · CSV</span>
      </div>
      <label class="nt-search">
        <span class="sr-only">Buscar una tabla</span>
        <input type="search" id="nt-filter" placeholder="Buscar tabla (ej.: comuna, previsión…)" autocomplete="off">
      </label>
      <a class="btn btn--ghost" href="{{ nt.zip | relative_url }}" download>{% include portal/ico.html name="download" %} Descargar todas (.zip)</a>
    </div>

    <div class="nt-grid">
      {%- for g in nt.groups %}
      <article class="nt-group">
        <h2>{{ g.title }}</h2>
        <p>{{ g.desc }}</p>
        <ul class="nt-list">
          {%- for t in g.tables %}
          <li data-q="{{ t.label | downcase }} {{ t.file | downcase }}">
            <div class="nt-item__text">
              <b>{{ t.label }}</b>
              <span>{{ t.rows }} códigos · separador «{{ t.sep }}»</span>
            </div>
            <a class="nt-dl" href="{{ base | append: t.file | relative_url }}" download
               aria-label="Descargar {{ t.label }} (CSV)">{% include portal/ico.html name="download" %}<span>CSV</span></a>
          </li>
          {%- endfor %}
        </ul>
      </article>
      {%- endfor %}
    </div>
    <p class="nt-empty" id="nt-empty" hidden>No hay tablas que coincidan con la búsqueda.</p>
  </div>
</section>

<section class="band band--tint">
  <div class="wrap wrap--narrow">
    <h2>Cómo usar los archivos</h2>
    <ul class="nt-notes">
      <li>Cada archivo tiene dos columnas: <b>Código</b> y <b>Valor</b>. El código es el dato que se registra e intercambia; el valor es su descripción.</li>
      <li>Algunas tablas usan coma (<code>,</code>) y otras punto y coma (<code>;</code>) como separador. Se indica en cada tabla.</li>
      <li>Los archivos se publican tal como fueron entregados en la versión {{ nt.version }} de la norma.</li>
      <li>Para consumir estos catálogos desde un sistema, revisa los <a href="{{ '/docs/componentes-de-la-arquitectura/terminologicos.html' | relative_url }}">Servicios Terminológicos</a>.</li>
    </ul>
  </div>
</section>

<script>
(function () {
  var input = document.getElementById('nt-filter');
  if (!input) return;
  var norm = function (s) { return s.normalize('NFD').replace(/[̀-ͯ]/g, '').toLowerCase(); };
  var empty = document.getElementById('nt-empty');
  input.addEventListener('input', function () {
    var q = norm(input.value.trim()), any = false;
    document.querySelectorAll('.nt-group').forEach(function (g) {
      var shown = 0;
      g.querySelectorAll('li[data-q]').forEach(function (li) {
        var ok = !q || norm(li.dataset.q).indexOf(q) !== -1;
        li.hidden = !ok; if (ok) shown++;
      });
      g.hidden = shown === 0; if (shown) any = true;
    });
    empty.hidden = any;
  });
})();
</script>
