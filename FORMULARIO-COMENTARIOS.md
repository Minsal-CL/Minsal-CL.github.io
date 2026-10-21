# Formulario de comentarios sobre las Guías — Microsoft Forms

La página `/comentarios.html` del portal incrusta un Microsoft Form. La persona
nunca sale del portal ni necesita cuenta. Las respuestas quedan en Forms y en
un Excel de SharePoint/OneDrive con número correlativo y fecha, para el
seguimiento del equipo.

Este documento indica cómo crear el Form y conectarlo al portal. No se publica
en el sitio (excluido en `_config.yml`).

---

## 1. Crear el formulario

En <https://forms.office.com> con la cuenta institucional → **Nuevo formulario**.

**Título:** Comentarios sobre las Guías de Implementación
**Descripción:** Cuéntanos qué funciona y qué no de las Guías de Implementación FHIR. No incluyas datos personales o clínicos de pacientes, credenciales ni tokens.

Preguntas, en este orden:

| # | Pregunta | Tipo | Obligatoria | Opciones / notas |
|---|---|---|---|---|
| 1 | Tipo de comentario | Elección (una) | Sí | Funciona bien · Error en la guía · Ambigüedad o falta de claridad · Sugerencia de mejora · Consulta de implementación |
| 2 | Guía | Elección (una) | Sí | Ver lista exacta abajo |
| 3 | Versión de la guía | Texto | No | Subtítulo: "Ej.: 0.9.6" |
| 4 | Resumen | Texto | Sí | Subtítulo: "Una línea. Ej.: El ejemplo de MedicationRequest no valida contra el perfil" |
| 5 | Página, perfil o recurso | Texto | No | Subtítulo: "URL de la página de la guía o nombre del perfil, ejemplo o ValueSet" |
| 6 | Descripción | Texto, **respuesta larga** | Sí | Subtítulo: "Qué funciona o qué no, qué esperabas y qué ocurrió. Si aplica, incluye el mensaje del validador (sin datos reales)." |
| 7 | Institución o equipo | Texto | No | |
| 8 | Correo de contacto | Texto | No | Subtítulo: "Solo si quieres que te contactemos." |
| 9 | Confirmación | Elección (una) | Sí | Única opción: "Confirmo que el comentario no incluye datos de pacientes, credenciales ni tokens" |

**Opciones de la pregunta 2 "Guía"** — copiar exactamente (el portal las usa
para prellenar; están en `_data/feedback.yml`):

```
Receta Electrónica (SNRE)
Tiempos de Espera (TEI)
Índice Maestro de Pacientes (MPI)
Directorio de Prestadores (HPD)
Maestro Prestadores Institucionales (MFR)
Núcleo de Interoperabilidad de Datos (NID)
Laboratorio
Servicios Terminológicos
Otra / general
```

Si se agrega una guía nueva: agregarla en el Form **y** en `_data/feedback.yml`
con el mismo texto.

## 2. Configuración del formulario

En **⋯ → Configuración**:

- **Quién puede rellenar este formulario:** *Cualquier persona puede responder*.
- **Opciones de respuesta:** activar *Aceptar respuestas*.
- **Personalizar mensaje de agradecimiento:** "Gracias. Tu comentario quedó
  registrado y lo revisará el equipo responsable de la guía."
- **Notificaciones (opcional):** *Recibir notificación por correo electrónico de cada respuesta*.

## 3. Conectar con el portal

### 3.1 URL del formulario (obligatoria)

**Recopilar respuestas → Incrustar (`</>`)** → copiar solo la URL del
atributo `src` del código, sin `&embed=true`. Tiene la forma:

```
https://forms.office.com/Pages/ResponsePage.aspx?id=XXXXXXXX
```

### 3.2 URL rellenada previamente (opcional, recomendada)

Permite que, al llegar desde una tarjeta de proyecto o desde una guía, el Form
aparezca con la guía, versión y página ya marcadas.

1. **⋯ → Obtener URL rellenada previamente** → activar *Habilitar respuestas
   rellenadas previamente*.
2. Responder **solo** estas tres preguntas con estos valores de ejemplo:
   - **Guía:** `Receta Electrónica (SNRE)`
   - **Versión de la guía:** `VERSION`
   - **Página, perfil o recurso:** `PAGINA`
3. **Obtener vínculo prellenado** → copiar la URL.

El portal reemplaza esos valores de ejemplo por los reales, así que no
importa cómo Forms los codifique.

### 3.3 Pegar en `_config.yml`

```yaml
feedback:
  form_url: "https://forms.office.com/Pages/ResponsePage.aspx?id=XXXXXXXX"
  prefill_url: "https://forms.office.com/Pages/ResponsePage.aspx?id=XXXXXXXX&r...=..."
  prefill_sample:
    guia: "Receta Electrónica (SNRE)"
    version: "VERSION"
    pagina: "PAGINA"
```

Si en el paso 3.2 usaste otros valores de ejemplo, actualiza `prefill_sample`.

### 3.4 Probar

- `/comentarios.html` → el formulario aparece incrustado.
- `/comentarios.html?guia=tei&version=0.2.0` → Guía "Tiempos de Espera (TEI)" y
  versión 0.2.0 ya marcadas.
- Proyectos → "Comentar la guía" en cualquier tarjeta.

> Forms a veces ignora el prellenado si el mismo navegador ya abrió el Form
> antes (caché). Para probar, usa una ventana privada.

## 4. Seguimiento

**Respuestas → Abrir en Excel** crea un libro vinculado que se actualiza solo
con cada respuesta (columna `Id` = número correlativo). Agregar a la derecha
las columnas de gestión, por ejemplo:

| Estado | Responsable | Respuesta / acción | Versión en que se corrige |
|---|---|---|---|

Estados sugeridos: *Nuevo · En revisión · Aceptado · Corregido · Descartado*.

**Opcional, más adelante:** un flujo de Power Automate ("Cuando se envía una
respuesta nueva" → GitHub "Crear una incidencia") puede crear un Issue por
cada respuesta, sin cambios en el portal.
