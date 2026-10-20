# PortalWeb — Refresh de experiencia y arquitectura visual

> Documento de trabajo. Registra la auditoría, la visión aplicada y las
> decisiones que **requieren validación institucional o editorial** antes de
> ejecutarse. No sustituye a la documentación del sitio.

---

## 1. Stack (lo que existe)

| Capa | Tecnología |
|---|---|
| Generador | Jekyll 4.3 (Ruby 3.2.6, `sassc`/libSass) |
| Tema | `just-the-docs` 0.4.2 como **gem** (`theme:`) |
| Estilos | SCSS del tema + capa propia en `_sass/` |
| JS | Ninguno propio (solo el del tema: buscador lunr, nav) |
| Contenido | 13 páginas Markdown + árbol publicado `fhir/ig/` (excluido de nav) |
| Deploy | GitHub Pages vía `.github/workflows/pages.yml` |
| Hosting | `interoperabilidad.minsal.cl` (CNAME) |

**No se cambió el stack.** Jekyll + just-the-docs es adecuado para
documentación técnica: buscador, navegación jerárquica, anclas, tablas y
resaltado de código sin mantenimiento. El refresh se hace **sobre** el tema,
no reemplazándolo.

---

## 2. Diagnóstico

### 2.1 Bloqueantes (resueltos antes del refresh)

1. **No cargaban los estilos.** `_config.yml` usaba
   `remote_theme: pmarsceill/just-the-docs` sin el plugin
   `jekyll-remote-theme`. Jekyll ignoraba el tema en silencio → HTML sin
   layout ni CSS, en local y en producción. → Se pasó a `theme: just-the-docs`
   (el gem ya estaba en el `Gemfile`).
2. **Build roto en Ruby 3.2.** `liquid` 4.0.3 llama a `Object#tainted?`,
   eliminado en Ruby 3.2 (`undefined method 'tainted?'`). → `liquid` 4.0.4.

### 2.2 Visual

- Sin identidad: portada = tema por defecto (morado, tipografía de sistema
  a 16px, sin jerarquía). No comunicaba "Ministerio de Salud".
- Portada = un `<h1>` + seis párrafos de texto corrido. Sin puerta de
  entrada, sin jerarquía, sin llamadas a la acción.
- Interlínea corta (`1.4`) y ancho de columna sin límite → lectura fatigosa
  en pantallas anchas.
- Imágenes de diagramas sin marco ni tratamiento, "pegadas" al texto.
- Tablas y bloques de código sin contorno; se confunden con el cuerpo.

### 2.3 UX / arquitectura de información

- La navegación lateral mezcla niveles muy dispares: "Proyectos" (2 enlaces
  externos) al mismo nivel que "Especificación de la Arquitectura" (rama con
  hijos y nietos).
- No hay forma de entender, desde la portada, **qué contiene el sitio** ni
  **por dónde empezar**.
- `Servicios Terminológicos` y sus hijos (`CodeSystem`, `ValueSet`,
  `ConceptMap`) son **referencia de API extensa** (cientos de líneas de
  JSON). Están al mismo peso visual que páginas conceptuales de una frase.
- Enlaces a las Guías de Implementación (FHIR IG) dispersos dentro del texto;
  no existen como destino de primer nivel.

### 2.4 Técnico

- `_config.yml` con bloques comentados de front-matter que no hacían nada.
- Sin `lang` → el sitio se declaraba `en-US` siendo íntegramente en español
  (afecta SEO, lectores de pantalla y guionado).
- `Manuales/` (6 PDF), `README.md` y ficheros de trabajo entraban al build.
- `.github/workflows/pages.yml`: `branches: [$default-branch]` es un
  marcador de plantilla sin sustituir → **el workflow no se dispara nunca**.
  Además fija Ruby 3.1 mientras `.ruby-version` es 3.2.6.

---

## 3. Visión aplicada

> **Qué resuelve PortalWeb:** es el punto único donde los equipos técnicos de
> la red de salud entienden *cómo* Chile hace interoperabilidad y encuentran
> las guías para implementarla.

En los primeros segundos, una persona debe entender: **(1)** es del
Ministerio de Salud, **(2)** trata de interoperabilidad en salud a escala
nacional, **(3)** hay tres cuerpos de contenido —arquitectura, componentes,
guías de implementación— y **(4)** por dónde entrar.

Identidad: **moderna + institucional + tecnológica + confiable + humana.**
Se traduce en: azul institucional sobrio, acento turquesa para lo técnico,
mucho espacio en blanco, tipografía clara, cero decoración gratuita.

---

## 4. Arquitectura de información (propuesta y parcialmente aplicada)

Aplicado ahora (sin tocar URLs ni contenido):

- **Portada como índice**, no como ensayo. Presenta las tres áreas con una
  frase cada una y enlaza directo.
- Las Guías de Implementación (FHIR IG) pasan a ser **acción principal** en
  el héroe y enlace fijo en la cabecera y el pie.
- El árbol `fhir/ig` se excluye también del **buscador** (antes lo
  contaminaba con cientos de páginas de bajo valor de navegación).

Propuesto (requiere decisión — ver §7):

- Separar **"Conceptos"** (páginas explicativas cortas) de **"Referencia de
  API"** (`CodeSystem`, `ValueSet`, `ConceptMap`, operaciones FHIR). Hoy
  conviven en la misma rama con el mismo peso.
- Reordenar la navegación lateral: `Especificación` → `Componentes` →
  `Guías de Implementación` → `Proyectos`.

---

## 5. Dirección visual

| Elemento | Decisión | Por qué |
|---|---|---|
| Tipografía | **Inter** (con *system-ui* de reserva), un solo tipo | Neutral, institucional, excelente en pantalla; la reserva del sistema hace que el sitio nunca dependa de la fuente para ser legible |
| Escala | 1rem base, interlínea 1.6, columna de lectura máx. 44rem | Lectura de documentación larga sin fatiga |
| Color | Azul `#0b4ea2` (primario) · turquesa `#0091a6` (acento técnico) · tinta `#1b1f24` · rojo `#d52b1e` **solo** en la franja de identidad de gobierno | Sobrio, alineado a identidad de Estado, un único acento |
| Layout | Portada a ancho completo con secciones separadas por línea de 1px; documentación en la grilla del tema | Ritmo editorial en la portada, densidad útil en la doc |
| Componentes | Franja de gobierno, héroe, encabezado de sección, tarjeta, chip, lista de principios, pie | Los mínimos necesarios; nada que no se use |
| Sombras / bordes | Borde 1px + sombra apenas perceptible; radio 7–10px | "Confiable" ≠ plano y duro, pero sin dramatismo |
| Movimiento | `translateY(-2px)` al pasar sobre tarjetas; respeta `prefers-reduced-motion` | Discreto, informativo, no decorativo |

---

## 6. Design system (implementado)

Un único punto de verdad en **custom properties** `--mn-*`
(`_sass/custom/custom.scss`) + esquema de color del tema
(`_sass/color_schemes/minsal.scss`).

- **Color:** paleta de marca mapeada a las variables SCSS de just-the-docs
  (`$link-color`, `$btn-primary-color`, `$sidebar-color`, `$border-color`…),
  y expuesta como `--mn-*` para los componentes de la portada.
- **Tipografía:** escala `--mn-step--1 … --mn-step-5` + `--mn-hero` fluido.
- **Espaciado:** `--pad-x` fluido para los márgenes de sección; ritmo
  vertical por `clamp()`.
- **Radios y sombras:** `--mn-radius`, `--mn-radius-sm`, `--mn-shadow-sm/md`.
- **Componentes de portada:** `.gov-strip`, `.hero`, `.section` + `.kicker`,
  `.card-grid`/`.card`, `.chip`, `.principles`, `.landing-footer`.
- **Accesibilidad:** `:focus-visible` unificado (contorno azul 2px),
  `prefers-reduced-motion`, `lang=es-CL` (guionado y lectores de pantalla),
  jerarquía de encabezados respetada, contraste AA en texto y botones.

### Ficheros nuevos / modificados

```
_config.yml                              reescrito: theme, lang, buscador, callouts,
                                         aux_links, footer, exclusiones
_sass/color_schemes/minsal.scss          NUEVO — esquema de color de marca
_sass/custom/custom.scss                 NUEVO — capa de diseño completa
_includes/head_custom.html               NUEVO — fuente, theme-color, meta
_includes/nav_footer_custom.html         NUEVO — pie de la barra lateral
_layouts/home.html                       SOBRESCRITO — portada como experiencia
_layouts/default.html                    SOBRESCRITO — añade cabecera de página +
                                         riel TOC (resto igual al tema)
_includes/components/header.html         SOBRESCRITO — barra superior de producto
                                         (marca + navegación de secciones + buscador)
_includes/components/page_header.html    NUEVO — eyebrow + título + bajada + hairline
_includes/components/toc_rail.html       NUEVO — "En esta página" (riel derecho, JS
                                         sin dependencias, resalta al hacer scroll)
_includes/toc_heading_custom.html        NUEVO — "En esta sección" en español
_data/home.yml                           NUEVO — contenido de portada (reorganizado)
index.md                                 reducido a front-matter
```

Ninguna URL cambia. Ningún texto de las páginas de documentación se modificó.

### 6.1 Rediseño del shell de documentación (2ª iteración)

Las páginas internas dejaban de sentirse como "plantilla" porque conservaban
el chrome desnudo de just-the-docs (buscador flotante arriba, columna
estrecha). Ahora usan un layout de **3 paneles** tipo documentación de
producto moderno:

- **Barra superior propia**, sticky, con marca (logo + "Interoperabilidad ·
  MINSAL"), navegación de secciones (Especificación / Componentes / Proyectos
  / Guías FHIR) con estado activo, y buscador compacto. En móvil colapsa a
  solo el buscador (el logo y el menú viven en la barra lateral).
- **Barra lateral** con etiqueta "Documentación", tipografía más fina,
  ítem activo azul sólido, sin el crédito del tema.
- **Cabecera de página**: eyebrow con la sección padre + título grande +
  bajada (`page.description`) + línea divisoria. Oculta el `<h1>` duplicado
  del cuerpo.
- **Riel derecho "En esta página"** generado desde los `h2`/`h3`, sticky,
  con resaltado de la sección visible (IntersectionObserver). Se oculta si
  hay menos de 2 encabezados o bajo 1200px.
- **"En esta sección"** (navegación de hijos) como grilla de tarjetas.
- Tipografía de cuerpo más alta (interlínea 1.72), medida de lectura 44rem,
  `h2` con aire y filete, tablas/código/citas con contorno.

Todo scopeado a `.main-content--doc`; la portada (`layout: home`) no se
ve afectada.

---

## 6.2 De "documentación técnica" a "Portal de Interoperabilidad" (3ª iteración)

Se reconstruyó la capa pública como un **portal por audiencias**, no como una
wiki. El menú lateral permanente **desaparece** de las páginas públicas y queda
solo en la documentación técnica (`/docs/**`).

### Arquitectura de información

- **Navegación superior** (`_data/portal_nav.yml`): Inicio · Qué hacemos ·
  Arquitectura · Componentes · Proyectos · Recursos + buscador (overlay,
  atajo `/` o `⌘K`) + acceso directo a Guías FHIR.
- **Home** = narrativa: hero → rutas por audiencia (autoridades / técnicos /
  desarrolladores) → Qué hacemos (4 capacidades) → Cómo lo hacemos
  (visualización del ecosistema) → Proyectos → CTA a Recursos.
- **Progressive disclosure** en Arquitectura: 1 ¿Qué es? → 2 ¿Por qué? →
  3 ¿Cómo funciona? (ecosistema) → 4 Componentes → 5 Información técnica
  (enlaces a `/docs`). El diagrama técnico existente aparece al final como
  "vista técnica".
- **Grafo Componentes ⇄ Proyectos ⇄ Estándares**: modelado con IDs en
  `_data/*.yml`; cada ficha enlaza en ambos sentidos.
- **Vocabulario de estado único** (`_data/status.yml`): Operativo /
  En implementación / En desarrollo / Planificado — mismos colores en
  componentes y proyectos.
- **Recursos** = puerta única a la capa técnica (`/docs/**` + Guías FHIR +
  accesos). Ahí vive el menú lateral contextual.

### Todo es data-driven (escalabilidad)

```
_data/portal_nav.yml     navegación superior
_data/capabilities.yml   "Qué hacemos" (4)
_data/components.yml      catálogo de componentes
_data/projects.yml        portafolio de proyectos
_data/status.yml          vocabulario de estado + colores
_data/resources.yml       hub de recursos
```
Agregar un componente, proyecto o recurso = editar YAML. Sin tocar plantillas.

### Ficheros nuevos

```
_layouts/portal.html                    layout público (nav superior, sin sidebar)
_includes/portal/nav.html               navegación + overlay de búsqueda + JS
_includes/portal/footer.html            pie del portal
_includes/portal/ecosystem.html         visualización "Cómo lo hacemos"
_includes/portal/badge.html             estado (punto + etiqueta)
_includes/portal/component_card.html    ficha de componente (catálogo vivo)
_includes/portal/project_card.html      ficha de proyecto (portafolio + filtro)
_sass/custom/_portal.scss               sistema visual del portal (~430 líneas)
index.md · que-hacemos.md · arquitectura.md · componentes.md ·
proyectos.md · recursos.md              páginas del portal (layout: portal)
```

`_includes/components/header.html` (barra de las páginas `/docs`) ahora usa la
misma `portal_nav`, para continuidad entre portal y documentación.

Quedan sin uso (superados, se pueden borrar): `_layouts/home.html`,
`_data/home.yml`.

### Datos que faltan — los debe aportar MINSAL

El portafolio de proyectos y el catálogo de componentes tienen la estructura
completa, pero varios campos **no se inventaron**:

- `avance` (%), `hito` (último hito), `periodo` — vacíos en los 4 proyectos.
  La tarjeta muestra "por definir" y la barra de progreso solo aparece cuando
  hay `avance`.
- `estado` de componentes/proyectos: inferido de artefactos públicos (versión
  del IG, servicio en línea). Requiere confirmación.
- Contenido en lenguaje simple de `capabilities.yml`, `components.yml` y los
  textos de sección: redactados a partir de las páginas técnicas actuales; hay
  que validarlos con comunicaciones / las áreas dueñas.

---

## 6.3 Retroalimentación de la red sobre las Guías

Canal para que la red reporte qué funciona y qué no de cada Guía de
Implementación. **Sin servicios nuevos ni backend:** `/comentarios.html`
incrusta un **Microsoft Form** (MINSAL ya usa Forms para el acceso a Servicios
Terminológicos). La persona no sale del portal ni necesita cuenta; las
respuestas quedan en Forms/Excel con número correlativo para el seguimiento.
Funciona igual en GitHub Pages, en otro servidor o en local.

```
comentarios.md              página: Form incrustado + prellenado de guía/versión/página
_data/feedback.yml          guías (id = carpeta fhir/ig/<id>; label = opción exacta del Form)
_config.yml → feedback:     form_url, prefill_url, prefill_sample
FORMULARIO-COMENTARIOS.md   cómo crear el Form, conectarlo y hacer seguimiento (no se publica)
```

- **Prellenado:** `?guia=snre&version=0.9.6&seccion=<url>`, o automático si se
  llega desde una página `/fhir/ig/<guía>/<versión>/…` (referrer). Las tarjetas
  de proyecto ya enlazan con guía y versión.
- **Puntos de entrada:** tarjetas de Proyectos, Recursos (banda + enlace), pie
  del portal, índice `/fhir/ig/`.
- **Para activarlo:** crear el Form y pegar sus URLs en `_config.yml`
  (`FORMULARIO-COMENTARIOS.md`). Sin `form_url` la página muestra un aviso.
- **Pendiente (otro repo):** agregar en el pie/menú de cada IG un enlace a
  `/comentarios.html`; con el referrer la guía y versión se preseleccionan.

---

## 7. Cambios que **NO** se hicieron: requieren decisión

Estos puntos afectan contenido o estructura institucional. Se documentan;
no se ejecutan sin visto bueno.

### 7.1 Texto introductorio de la portada
El `index.md` tenía 6 párrafos de introducción. En la portada nueva se usa
una versión **condensada** (2 frases, tomadas del mismo texto) en
`_data/home.yml`. El texto largo original **sigue en el historial de git**.

- **Recomendación:** trasladar el texto completo a
  `docs/especificacion-de-la-arquitectura/especificacion-de-la-arquitectura.md`
  (hoy tiene una sola frase) como página "Introducción / Contexto".
- **Decisión necesaria:** ¿es correcta esa ubicación? ¿el texto está vigente?

### 7.2 Separar "Referencia de API" de "Conceptos"
`CodeSystem`, `ValueSet`, `ConceptMap` y las operaciones FHIR son
documentación de API (peticiones, parámetros, ejemplos JSON largos).

- **Recomendación:** nueva sección de primer nivel "Servicios Terminológicos —
  Referencia" o mover ese contenido bajo las Guías de Implementación.
- **Decisión necesaria:** dónde debe vivir esta referencia y quién la mantiene.

### 7.3 Contenido redundante / de una frase
`docs/componentes-de-la-arquitectura/componentes-de-la-arquitectura.md` y
`.../especificacion-de-la-arquitectura.md` son casi vacías (0–1 frase).
`hpd.md` (Directorio de Prestadores) es una sola línea con un enlace.

- **Recomendación:** o se desarrollan a un párrafo útil, o se convierten en
  páginas-índice que listen a sus hijos sin fingir ser contenido.
- **Decisión necesaria:** ¿hay material para desarrollarlas?

### 7.4 "Proyectos" como enlaces externos
`docs/proyectos.md` son 2 enlaces a `interoperabilidad.minsal.cl/fhir/ig/...`.

- **Recomendación:** mantener "Proyectos" como página, pero con una ficha por
  proyecto (estado, alcance, a quién aplica) en vez de solo el enlace.
- **Decisión necesaria:** ¿existe esa información y está publicable?

### 7.5 Enlace "Run in Postman" en `terminologicos.md`
Es un botón de terceros con una colección embebida (base64 larga). Funciona,
pero rompe el tono institucional y no está versionado.

- **Recomendación:** enlazar a una página propia de "cómo consumir el
  servicio" y dejar Postman como recurso secundario.
- **Decisión necesaria:** ¿la colección Postman es la vía oficial soportada?

### 7.6 Infra de despliegue
- `pages.yml` no se dispara (`$default-branch` literal). **Arreglo trivial**
  (`branches: ["main"]`) — pendiente de confirmar rama de publicación, dado
  que el trabajo actual está en `v2.0.0`.
- Alinear Ruby del workflow (3.1) con `.ruby-version` (3.2.6).
- **Recomendación adicional:** evaluar subir `just-the-docs` a la línea 0.10.x
  (mismo tema, mejor accesibilidad y opciones); es cambio de versión, no de
  stack, y conviene hacerlo en su propia rama con revisión visual.

### 7.7 Fuente autoalojada
`head_custom.html` carga Inter desde Google Fonts. Para un sitio de Estado lo
correcto es **autoalojar** la fuente (privacidad, disponibilidad).

- **Recomendación:** añadir los `.woff2` de Inter a `assets/fonts/` y
  servirlos con `@font-face`. Mientras tanto, la reserva *system-ui* cubre
  cualquier fallo de carga.

---

## 8. Validación

- `bundle exec jekyll build` — **OK** (local, `JEKYLL_ENV=production`).
- Revisado en 1440px, 1280px y 390–414px: portada, página de concepto y
  página de referencia larga.
- Sin desbordamiento horizontal; navegación por teclado con foco visible;
  `lang` correcto; enlaces y botones con contraste AA.
- Pendiente: revisión con lectores de pantalla reales y auditoría Lighthouse
  en producción.
