---
layout: portal
title: Proyectos
nav_exclude: true
description: >-
  Portafolio de proyectos de interoperabilidad en salud: estado, componentes
  involucrados y documentación oficial de cada uno.
---

<section class="page-hero">
  <div class="wrap">
    <p class="kicker">Proyectos</p>
    <h1>Portafolio de procesos clínicos interoperables</h1>
    <p class="page-hero__lead">
      Cada proyecto lleva la interoperabilidad a un proceso clínico concreto,
      reutilizando los componentes comunes de la arquitectura nacional.
    </p>
  </div>
</section>

<section class="band">
  <div class="wrap">
    <div class="filters" role="group" aria-label="Filtrar proyectos por estado">
      <button type="button" class="filter is-active" data-filter="all">Todos</button>
      {%- for s in site.data.status -%}
      <button type="button" class="filter" data-filter="{{ s[0] }}">
        <span class="badge__dot" style="background:{{ s[1].dot }}"></span>{{ s[1].label }}
      </button>
      {%- endfor -%}
    </div>

    <div class="pcard-grid" id="pcard-grid">
      {%- for p in site.data.projects -%}
        {% include portal/project_card.html p=p %}
      {%- endfor -%}
    </div>
    <p class="empty-msg" hidden>No hay proyectos en ese estado.</p>

    <p class="disclaimer">
      El avance, los hitos y las fechas de cada proyecto los aporta el
      Ministerio de Salud. Mientras tanto se muestra la versión publicada de la
      Guía de Implementación como señal de madurez.
    </p>
  </div>
</section>

<script>
(function () {
  var grid = document.getElementById('pcard-grid');
  if (!grid) return;
  var cards = [].slice.call(grid.querySelectorAll('.pcard'));
  var buttons = [].slice.call(document.querySelectorAll('.filter'));
  var empty = document.querySelector('.empty-msg');
  buttons.forEach(function (btn) {
    btn.addEventListener('click', function () {
      buttons.forEach(function (b) { b.classList.remove('is-active'); });
      btn.classList.add('is-active');
      var f = btn.getAttribute('data-filter');
      var shown = 0;
      cards.forEach(function (c) {
        var ok = f === 'all' || c.getAttribute('data-estado') === f;
        c.hidden = !ok;
        if (ok) shown++;
      });
      if (empty) empty.hidden = shown !== 0;
    });
  });
})();
</script>
