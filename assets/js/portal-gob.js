/* Controles de accesibilidad de la barra de Gobierno: tamaño de texto y contraste. */
(function () {
  var root = document.documentElement;
  var STEPS = [100, 112.5, 125, 137.5];
  function read(k) { try { return localStorage.getItem(k); } catch (e) { return null; } }
  function save(k, v) { try { localStorage.setItem(k, v); } catch (e) { /* sin almacenamiento */ } }

  var step = Math.max(0, Math.min(STEPS.length - 1, parseInt(read('a11y-font') || '0', 10) || 0));
  var contrast = read('a11y-contrast') === '1';

  function apply() {
    root.style.fontSize = step ? STEPS[step] + '%' : '';
    root.classList.toggle('a11y-contrast', contrast);
    var b = document.querySelector('[data-a11y="contrast"]');
    if (b) b.setAttribute('aria-pressed', contrast ? 'true' : 'false');
  }
  apply();

  document.addEventListener('click', function (e) {
    var btn = e.target.closest && e.target.closest('[data-a11y]');
    if (!btn) return;
    var a = btn.getAttribute('data-a11y');
    if (a === 'font-up') step = Math.min(STEPS.length - 1, step + 1);
    if (a === 'font-down') step = Math.max(0, step - 1);
    if (a === 'contrast') contrast = !contrast;
    save('a11y-font', String(step));
    save('a11y-contrast', contrast ? '1' : '0');
    apply();
  });
})();
