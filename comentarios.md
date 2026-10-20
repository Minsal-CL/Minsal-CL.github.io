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
    <form class="fb-form" id="fb-form" novalidate>
      <fieldset class="fb-field">
        <legend>Tipo de comentario <span class="fb-req" aria-hidden="true">*</span></legend>
        <div class="fb-types">
          {%- for t in site.data.feedback.types -%}
          <label class="fb-type">
            <input type="radio" name="tipo" value="{{ t.id }}" data-label="{{ t.label }}" required{% if forloop.first %} checked{% endif %}>
            <span class="fb-type__box">
              <span class="fb-type__icon fb-type__icon--{{ t.id }}" aria-hidden="true">{{ t.icon }}</span>
              <b>{{ t.label }}</b>
              <small>{{ t.hint }}</small>
            </span>
          </label>
          {%- endfor -%}
        </div>
      </fieldset>

      <div class="fb-row">
        <div class="fb-field">
          <label for="fb-guia">Guía de Implementación <span class="fb-req" aria-hidden="true">*</span></label>
          <select id="fb-guia" name="guia" required>
            <option value="">Selecciona una guía…</option>
            {%- for g in site.data.feedback.guides -%}
            <option value="{{ g.id }}">{{ g.label }}</option>
            {%- endfor -%}
          </select>
        </div>
        <div class="fb-field fb-field--sm">
          <label for="fb-version">Versión</label>
          <input id="fb-version" name="version" type="text" placeholder="Ej.: 0.9.6" autocomplete="off">
        </div>
      </div>

      <div class="fb-field">
        <label for="fb-resumen">Resumen <span class="fb-req" aria-hidden="true">*</span></label>
        <input id="fb-resumen" name="resumen" type="text" required maxlength="120"
               placeholder="Ej.: El ejemplo de MedicationRequest no valida contra el perfil">
      </div>

      <div class="fb-field">
        <label for="fb-seccion">Página, perfil o recurso</label>
        <input id="fb-seccion" name="seccion" type="text" autocomplete="off"
               placeholder="URL de la página de la guía o nombre del perfil, ejemplo o ValueSet">
      </div>

      <div class="fb-field">
        <label for="fb-descripcion">Descripción <span class="fb-req" aria-hidden="true">*</span></label>
        <textarea id="fb-descripcion" name="descripcion" rows="7" required maxlength="5000"
                  placeholder="Qué funciona o qué no, qué esperabas y qué ocurrió. Si aplica, incluye el mensaje del validador o un fragmento del recurso (sin datos reales)."></textarea>
        <p class="fb-help"><span id="fb-count">0</span>/5000 caracteres</p>
      </div>

      <div class="fb-field">
        <label for="fb-institucion">Institución o equipo <span class="fb-opt">(opcional)</span></label>
        <input id="fb-institucion" name="institucion" type="text" autocomplete="organization"
               placeholder="Ej.: Servicio de Salud, establecimiento, proveedor de software">
      </div>

      <label class="fb-check">
        <input type="checkbox" name="sin_datos" required>
        <span>Confirmo que el comentario <b>no incluye datos personales o clínicos de pacientes</b>, credenciales ni tokens.</span>
      </label>

      <!-- Campo trampa anti-bots: las personas no lo ven -->
      <div class="fb-hp" aria-hidden="true">
        <label>No completar <input type="text" name="website" tabindex="-1" autocomplete="off"></label>
      </div>

      {%- if fb.turnstile_sitekey != "" %}
      <div class="cf-turnstile" data-sitekey="{{ fb.turnstile_sitekey }}" data-language="es"></div>
      {%- endif %}

      <p class="fb-error" id="fb-error" role="alert" hidden></p>

      <div class="fb-actions">
        <button type="submit" class="btn btn--primary"{% if fb.endpoint == "" %} disabled{% endif %}>Enviar comentario</button>
      </div>
      {%- if fb.endpoint == "" %}
      <p class="fb-note">El envío aún no está habilitado: falta configurar <code>feedback.endpoint</code>.</p>
      {%- endif %}
      <p class="fb-status" id="fb-status" role="status" hidden></p>
    </form>

    <aside class="fb-aside">
      <h2>Cómo funciona</h2>
      <ol>
        <li>Completa el formulario. Si llegaste desde una guía, la guía, la versión y la página ya vienen seleccionadas.</li>
        <li>Al enviarlo, tu comentario queda registrado y asignado al equipo responsable de la guía.</li>
        <li>Recibes un <b>número de seguimiento</b>. Menciónalo si necesitas consultar por tu comentario.</li>
      </ol>
      <p class="fb-note">
        No incluyas datos personales o clínicos de pacientes, credenciales ni tokens.
      </p>
    </aside>
  </div>
</section>

<script>
(function () {
  var form = document.getElementById('fb-form');
  if (!form) return;

  var endpoint = {{ fb.endpoint | default: "" | jsonify }};

  var $ = function (id) { return document.getElementById(id); };
  var guia = $('fb-guia'), version = $('fb-version'), seccion = $('fb-seccion');
  var desc = $('fb-descripcion'), count = $('fb-count');
  var errorBox = $('fb-error'), statusBox = $('fb-status');

  // --- Prellenado: ?guia=snre&version=0.9.6&seccion=...&tipo=error ----------
  // o, sin parámetros, desde la página de la guía de origen (/fhir/ig/<id>/<versión>/...).
  function selectGuide(id) {
    if (!id) return false;
    var opt = guia.querySelector('option[value="' + id.replace(/"/g, '') + '"]');
    if (opt) { guia.value = id; return true; }
    return false;
  }
  var q = new URLSearchParams(window.location.search);
  selectGuide(q.get('guia'));
  if (q.get('version')) version.value = q.get('version');
  if (q.get('seccion')) seccion.value = q.get('seccion');
  if (q.get('tipo')) {
    var r = form.querySelector('input[name="tipo"][value="' + q.get('tipo').replace(/"/g, '') + '"]');
    if (r) r.checked = true;
  }
  if (!q.get('guia') && document.referrer) {
    try {
      var ref = new URL(document.referrer);
      var m = ref.pathname.match(/\/fhir\/ig\/([^\/]+)\/(?:v?(\d+\.\d+\.\d+[^\/]*)\/)?/);
      if (m && selectGuide(m[1])) {
        if (m[2] && !version.value) version.value = m[2];
        if (!seccion.value) seccion.value = ref.href;
      }
    } catch (e) { /* referrer inválido: se ignora */ }
  }

  desc.addEventListener('input', function () { count.textContent = desc.value.length; });

  // --- Envío ---------------------------------------------------------------
  function val(name) {
    var el = form.elements[name];
    return el ? String(el.value || '').trim() : '';
  }
  function payload() {
    var r = form.querySelector('input[name="tipo"]:checked');
    var ts = form.querySelector('[name="cf-turnstile-response"]');
    return {
      guia: guia.value,
      tipo: r ? r.value : '',
      version: val('version'),
      resumen: val('resumen'),
      seccion: val('seccion'),
      descripcion: val('descripcion'),
      institucion: val('institucion'),
      sin_datos: form.elements['sin_datos'].checked,
      website: val('website'),
      turnstile: ts ? ts.value : ''
    };
  }

  function sendApi(btn) {
    btn.disabled = true;
    var label = btn.textContent;
    btn.textContent = 'Enviando…';
    fetch(endpoint.replace(/\/$/, '') + '/issues', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(payload())
    }).then(function (res) {
      return res.json().catch(function () { return {}; }).then(function (out) {
        if (!res.ok) throw new Error(out.error || 'No se pudo registrar el comentario.');
        return out;
      });
    }).then(function (out) {
      form.reset();
      count.textContent = '0';
      statusBox.textContent = out.number
        ? '¡Gracias! Tu comentario quedó registrado con el número de seguimiento #' + out.number + '.'
        : '¡Gracias! Tu comentario quedó registrado.';
      statusBox.hidden = false;
    }).catch(function (err) {
      showError(err.message || 'No se pudo registrar el comentario. Intenta más tarde.');
    }).then(function () {
      btn.disabled = false;
      btn.textContent = label;
      if (window.turnstile) window.turnstile.reset();
    });
  }

  function showError(msg) {
    errorBox.textContent = msg;
    errorBox.hidden = !msg;
  }

  form.addEventListener('submit', function (ev) {
    ev.preventDefault();
    showError('');
    statusBox.hidden = true;
    if (!form.checkValidity()) {
      form.reportValidity();
      return;
    }
    if (!endpoint) return;
    sendApi(ev.submitter || form.querySelector('button[type="submit"]'));
  });
})();
</script>
{%- if fb.turnstile_sitekey != "" %}
<script src="https://challenges.cloudflare.com/turnstile/v0/api.js" async defer></script>
{%- endif %}
