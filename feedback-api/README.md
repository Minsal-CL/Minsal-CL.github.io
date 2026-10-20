# feedback-api

Cloudflare Worker que recibe el formulario de `/comentarios.html` y crea un
Issue en `Minsal-CL/Minsal-CL.github.io` autenticado como **GitHub App**.
El visitante nunca sale del portal ni ve GitHub: recibe solo un número de
seguimiento (el número del Issue). El token vive solo en el Worker.

> **Repositorio privado (recomendado):** como el visitante no entra a GitHub,
> los Issues pueden vivir en un repo privado (p. ej. `Minsal-CL/feedback-guias`)
> para no exponer comentarios. Basta cambiar `GITHUB_REPO` en `wrangler.toml` e
> instalar la App en ese repo.

```
Portal (GitHub Pages) ──POST /issues──▶ Worker ──JWT──▶ GitHub App ──▶ Issue
                                         │                               etiquetas:
                                         ├─ CORS: solo orígenes del portal   feedback-guia
                                         ├─ límite 5 envíos/min por IP      guia:<id>
                                         ├─ campo trampa + Turnstile (opc.) tipo:<id>
                                         └─ validación de campos y largo
```

## Puesta en marcha (una vez)

### 1. Crear la GitHub App

En la organización **Minsal-CL** → Settings → Developer settings → GitHub Apps → *New GitHub App*:

- Nombre: `minsal-feedback` (los Issues aparecerán como `minsal-feedback[bot]`)
- Homepage URL: `https://interoperabilidad.minsal.cl`
- Webhook: **desactivado**
- Permisos → Repository → **Issues: Read and write** (nada más)
- Where can this app be installed: *Only on this account*

Luego:

1. Anota el **App ID**.
2. *Generate a private key* → descarga `app.pem`.
3. *Install App* → solo el repositorio `Minsal-CL.github.io`. El número al final
   de la URL de la instalación (`/settings/installations/<ID>`) es el
   **Installation ID**.
4. Convierte la clave a PKCS#8 (Web Crypto no lee PKCS#1):

   ```bash
   openssl pkcs8 -topk8 -nocrypt -in app.pem -out app-pkcs8.pem
   ```

### 2. (Opcional, recomendado) Cloudflare Turnstile

Cloudflare → Turnstile → *Add widget* con dominio `interoperabilidad.minsal.cl`.
Anota **site key** (pública) y **secret key**.

### 3. Desplegar el Worker

```bash
cd feedback-api
npm install
npx wrangler login
npx wrangler secret put GITHUB_APP_ID
npx wrangler secret put GITHUB_APP_INSTALLATION_ID
npx wrangler secret put GITHUB_APP_PRIVATE_KEY < app-pkcs8.pem
npx wrangler secret put TURNSTILE_SECRET        # solo si usas Turnstile
npx wrangler deploy
```

`wrangler deploy` imprime la URL, p. ej. `https://minsal-feedback-api.<cuenta>.workers.dev`.
Borra `app.pem` / `app-pkcs8.pem` de tu equipo una vez cargado el secreto.

### 4. Conectar el portal

En `_config.yml`:

```yaml
feedback:
  endpoint: "https://minsal-feedback-api.<cuenta>.workers.dev"
  turnstile_sitekey: "<site key>"   # vacío si no usas Turnstile
```

Si `endpoint` está vacío, el botón de envío queda deshabilitado.

## Desarrollo

```bash
npm test               # pruebas unitarias (node --test, sin dependencias)
npx wrangler dev       # Worker local en http://localhost:8787
```

Para probar contra el portal local, usa `endpoint: "http://localhost:8787"`
(`http://localhost:4000` ya está en `ALLOWED_ORIGINS`) y crea un archivo
`.dev.vars` con los mismos secretos (está en `.gitignore`).

## Mantención

- Guías y tipos válidos: `GUIDES` y `TYPES` en `src/index.js`. Deben coincidir
  con `_data/feedback.yml` del portal.
- Orígenes permitidos: `ALLOWED_ORIGINS` en `wrangler.toml`.
- Rotar la clave: generar otra en la GitHub App, volver a cargar
  `GITHUB_APP_PRIVATE_KEY` y revocar la anterior.
