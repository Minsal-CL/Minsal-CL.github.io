---
layout: portal
title: Comentarios sobre las Guías
nav_exclude: true
description: >-
  Cuéntanos qué funciona y qué no de las Guías de Implementación FHIR. Tus
  comentarios ayudan a mejorar las próximas versiones.
---
{%- assign fb = site.feedback -%}

<section class="page-hero">
  <div class="wrap">
    <p class="kicker">Retroalimentación</p>
    <h1>¿Qué funciona y qué no en las Guías?</h1>
    <p class="page-hero__lead">
      Si implementaste —o estás implementando— una Guía de Implementación,
      cuéntanos tu experiencia. Cada comentario queda registrado y lo revisa el
      equipo responsable de la guía.
    </p>
  </div>
</section>

<section class="band">
  <div class="wrap fb-layout">
    <div class="fb-embed">
      {%- if fb.form_url != "" %}
      <iframe id="fb-iframe" title="Formulario de comentarios sobre las Guías de Implementación"
              src="{{ fb.form_url }}{% if fb.form_url contains '?' %}&amp;{% else %}?{% endif %}embed=true"
              loading="lazy" allowfullscreen></iframe>
      <p class="fb-note">
        ¿No ves el formulario?
        <a id="fb-direct" class="lnk" href="{{ fb.form_url }}" target="_blank" rel="noopener">Ábrelo en una pestaña nueva ↗</a>
      </p>
      {%- else %}
      <p class="fb-note">El formulario aún no está configurado: falta definir <code>feedback.form_url</code> en <code>_config.yml</code>.</p>
      {%- endif %}
    </div>

    <aside class="fb-aside">
      <h2>Cómo funciona</h2>
      <ol>
        <li>Completa el formulario. Si llegaste desde una guía, la guía y la versión ya vienen marcadas.</li>
        <li>Al enviarlo, tu comentario queda registrado con fecha y número correlativo.</li>
        <li>El equipo responsable de la guía lo revisa y, si dejaste un correo, te contacta.</li>
      </ol>
      <p class="fb-note">
        No incluyas datos personales o clínicos de pacientes, credenciales ni tokens.
      </p>
    </aside>
  </div>
</section>

{%- if fb.form_url != "" and fb.prefill_url != "" %}
<script>
// Prellenado del Microsoft Form. prefill_url es una URL generada en Forms
// ("Obtener URL rellenada previamente") con valores de ejemplo; aquí se
// reemplazan por la guía, versión y página reales. Ver FORMULARIO-COMENTARIOS.md.
(function () {
  var PREFILL = {{ fb.prefill_url | jsonify }};
  var SAMPLE = {{ fb.prefill_sample | jsonify }};
  var GUIDES = {
    {%- for g in site.data.feedback.guides %}
    {{ g.id | jsonify }}: {{ g.label | jsonify }}{% unless forloop.last %},{% endunless %}
    {%- endfor %}
  };

  // Contexto: ?guia=snre&version=0.9.6&seccion=... o la página de la guía de origen.
  var q = new URLSearchParams(window.location.search);
  var ctx = { guia: q.get('guia'), version: q.get('version'), pagina: q.get('seccion') };
  if (!ctx.guia && document.referrer) {
    try {
      var ref = new URL(document.referrer);
      var m = ref.pathname.match(/\/fhir\/ig\/([^\/]+)\/(?:v?(\d+\.\d+\.\d+[^\/]*)\/)?/);
      if (m) {
        ctx.guia = m[1];
        ctx.version = ctx.version || m[2];
        ctx.pagina = ctx.pagina || ref.href;
      }
    } catch (e) { /* referrer inválido: se ignora */ }
  }
  if (!GUIDES[ctx.guia]) return;

  // Claves en minúsculas: Forms conserva el texto tal como se escribió al
  // generar la URL ("Version" o "VERSION" da igual).
  var values = {};
  values[SAMPLE.guia.toLowerCase()] = GUIDES[ctx.guia];
  values[SAMPLE.version.toLowerCase()] = ctx.version || '';
  values[SAMPLE.pagina.toLowerCase()] = ctx.pagina || '';

  var url = new URL(PREFILL);
  var params = url.searchParams;
  var updates = [];
  params.forEach(function (raw, key) {
    // Forms puede entregar el valor entre comillas; se respeta ese formato.
    var quoted = /^".*"$/.test(raw);
    var plain = (quoted ? raw.slice(1, -1) : raw).toLowerCase();
    if (Object.prototype.hasOwnProperty.call(values, plain)) {
      var v = values[plain];
      updates.push([key, v === '' ? null : (quoted ? '"' + v + '"' : v)]);
    }
  });
  updates.forEach(function (u) { if (u[1] === null) params.delete(u[0]); else params.set(u[0], u[1]); });

  // Espacios como %20 (no "+"), igual que los enlaces que genera Forms.
  function build() {
    var qs = [];
    params.forEach(function (v, k) { qs.push(encodeURIComponent(k) + '=' + encodeURIComponent(v)); });
    return url.origin + url.pathname + '?' + qs.join('&');
  }
  var direct = document.getElementById('fb-direct');
  if (direct) direct.href = build();
  params.set('embed', 'true');
  var iframe = document.getElementById('fb-iframe');
  if (iframe) iframe.src = build();
})();
</script>
{%- endif %}
