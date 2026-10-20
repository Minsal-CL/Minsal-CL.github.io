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

      <p class="fb-error" id="fb-error" role="alert" hidden></p>

      <div class="fb-actions">
        <button type="submit" class="btn btn--primary" data-channel="github">Continuar en GitHub ↗</button>
        {%- if fb.email and fb.email != "" %}
        <button type="submit" class="btn btn--ghost" data-channel="email">Enviar por correo</button>
        {%- endif %}
      </div>
      <p class="fb-status" id="fb-status" role="status" hidden></p>
    </form>

    <aside class="fb-aside">
      <h2>Cómo funciona</h2>
      <ol>
        <li>Completa el formulario. Si llegaste desde una guía, la guía, la versión y la página ya vienen seleccionadas.</li>
        <li>Se abre GitHub con el comentario prellenado en el repositorio
          <a href="https://github.com/{{ fb.repo }}/issues?q=label%3Afeedback-guia" target="_blank" rel="noopener">{{ fb.repo }}</a>.
          Revisa y pulsa <b>Create</b>.</li>
        <li>El equipo responsable lo revisa, lo etiqueta y responde en el mismo hilo. Puedes seguir su estado.</li>
      </ol>
      <p class="fb-note">
        Los comentarios en GitHub son <b>públicos</b> y requieren una cuenta GitHub.
        {%- if fb.email and fb.email != "" %}
        Si no tienes cuenta, usa <b>Enviar por correo</b> ({{ fb.email }}).
        {%- endif %}
      </p>
      <p><a class="lnk" href="https://github.com/{{ fb.repo }}/issues?q=label%3Afeedback-guia" target="_blank" rel="noopener">Ver comentarios de la red ↗</a></p>
    </aside>
  </div>
</section>

<script>
(function () {
  var form = document.getElementById('fb-form');
  if (!form) return;

  var CFG = {
    repo: {{ fb.repo | jsonify }},
    template: {{ fb.template | jsonify }},
    email: {{ fb.email | default: "" | jsonify }}
  };
  // Longitud máxima segura de URL para GitHub / clientes de correo.
  var MAX_URL = 7500;

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
  function guideLabel() {
    return guia.value ? guia.options[guia.selectedIndex].text : '';
  }
  function guideShort() {
    var l = guideLabel(), m = l.match(/\(([^)]+)\)/);
    return m ? m[1] : l;
  }
  function typeLabel() {
    var r = form.querySelector('input[name="tipo"]:checked');
    return r ? r.getAttribute('data-label') : '';
  }
  function title() {
    return '[' + guideShort() + '] ' + typeLabel() + ': ' + val('resumen');
  }

  function githubUrl() {
    var p = new URLSearchParams();
    p.set('template', CFG.template);
    p.set('title', title());
    p.set('guia', guideLabel());
    if (val('version')) p.set('version', val('version'));
    p.set('tipo', typeLabel());
    if (val('seccion')) p.set('seccion', val('seccion'));
    p.set('descripcion', val('descripcion'));
    if (val('institucion')) p.set('institucion', val('institucion'));
    return 'https://github.com/' + CFG.repo + '/issues/new?' + p.toString();
  }

  function emailUrl() {
    var body = [
      'Guía: ' + guideLabel(),
      'Versión: ' + (val('version') || '—'),
      'Tipo: ' + typeLabel(),
      'Página / recurso: ' + (val('seccion') || '—'),
      'Institución / equipo: ' + (val('institucion') || '—'),
      '',
      val('descripcion')
    ].join('\n');
    return 'mailto:' + CFG.email +
      '?subject=' + encodeURIComponent(title()) +
      '&body=' + encodeURIComponent(body);
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
    var channel = (ev.submitter && ev.submitter.getAttribute('data-channel')) || 'github';
    var url = channel === 'email' ? emailUrl() : githubUrl();
    if (url.length > MAX_URL) {
      showError('La descripción es demasiado larga para enviarla prellenada. ' +
        'Acórtala (por ejemplo, reemplaza recursos completos por el fragmento relevante) e inténtalo de nuevo.');
      return;
    }
    if (channel === 'email') {
      window.location.href = url;
      statusBox.textContent = 'Se abrió tu cliente de correo con el mensaje prellenado. Revisa y envíalo.';
    } else {
      window.open(url, '_blank', 'noopener');
      statusBox.textContent = 'Se abrió GitHub en una pestaña nueva con tu comentario prellenado. ' +
        'Revisa los campos y pulsa «Create» para registrarlo.';
    }
    statusBox.hidden = false;
  });
})();
</script>
