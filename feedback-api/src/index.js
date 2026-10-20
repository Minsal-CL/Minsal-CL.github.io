// Cloudflare Worker: recibe el formulario de /comentarios.html y crea un Issue
// en GitHub autenticado como GitHub App. El visitante no necesita cuenta
// GitHub; el token nunca llega al navegador.
//
// Secretos (wrangler secret put):
//   GITHUB_APP_ID, GITHUB_APP_INSTALLATION_ID, GITHUB_APP_PRIVATE_KEY (PKCS#8 PEM)
//   TURNSTILE_SECRET (opcional; si existe, el captcha es obligatorio)
// Variables (wrangler.toml [vars]):
//   GITHUB_REPO      "owner/repo"
//   ALLOWED_ORIGINS  orígenes permitidos para CORS, separados por coma
// Binding opcional: RATE_LIMITER (Workers Rate Limiting) — límite por IP.

const GITHUB_API = "https://api.github.com";

// Deben coincidir con _data/feedback.yml del portal.
export const GUIDES = {
  snre: "Receta Electrónica (SNRE)",
  tei: "Tiempos de Espera (TEI)",
  mpi: "Índice Maestro de Pacientes (MPI)",
  hpd: "Directorio de Prestadores (HPD)",
  mfr: "Maestro Prestadores Institucionales (MFR)",
  nid: "Núcleo de Interoperabilidad de Datos (NID)",
  laboratorio: "Laboratorio",
  terminologia: "Servicios Terminológicos",
  otra: "Otra / general",
};

export const TYPES = {
  funciona: "Funciona bien",
  error: "Error en la guía",
  ambiguedad: "Ambigüedad o falta de claridad",
  sugerencia: "Sugerencia de mejora",
  consulta: "Consulta de implementación",
};

const LIMITS = { resumen: 120, version: 30, seccion: 500, descripcion: 5000, institucion: 150 };

export default {
  async fetch(request, env) {
    const cors = corsHeaders(request, env);
    if (request.method === "OPTIONS") {
      return new Response(null, { status: cors ? 204 : 403, headers: cors || {} });
    }
    if (!cors) return json({ error: "Origen no permitido." }, 403);
    if (request.method !== "POST" || new URL(request.url).pathname !== "/issues") {
      return json({ error: "No encontrado." }, 404, cors);
    }

    const ip = request.headers.get("CF-Connecting-IP") || "unknown";
    if (env.RATE_LIMITER) {
      const { success } = await env.RATE_LIMITER.limit({ key: ip });
      if (!success) return json({ error: "Demasiados envíos. Intenta de nuevo en unos minutos." }, 429, cors);
    }

    let data;
    try {
      data = await request.json();
    } catch {
      return json({ error: "Solicitud inválida." }, 400, cors);
    }

    // Campo trampa: los bots lo rellenan, las personas no lo ven.
    if (data.website) return json({ ok: true }, 200, cors);

    const result = validate(data);
    if (result.error) return json({ error: result.error }, 400, cors);

    if (env.TURNSTILE_SECRET) {
      const ok = await verifyTurnstile(env.TURNSTILE_SECRET, data.turnstile, ip);
      if (!ok) return json({ error: "No se pudo verificar que no eres un robot. Recarga la página e intenta de nuevo." }, 400, cors);
    }

    try {
      const token = await installationToken(env);
      const issue = await createIssue(env.GITHUB_REPO, token, result.value);
      return json({ ok: true, number: issue.number, url: issue.html_url }, 201, cors);
    } catch (err) {
      console.error(err);
      return json({ error: "No se pudo registrar el comentario. Intenta más tarde." }, 502, cors);
    }
  },
};

// --- Validación ------------------------------------------------------------

export function validate(d) {
  const str = (k) => (typeof d[k] === "string" ? d[k].trim() : "");
  const v = {
    guia: str("guia"),
    tipo: str("tipo"),
    version: str("version"),
    resumen: str("resumen"),
    seccion: str("seccion"),
    descripcion: str("descripcion"),
    institucion: str("institucion"),
  };
  if (!GUIDES[v.guia]) return { error: "Selecciona una guía válida." };
  if (!TYPES[v.tipo]) return { error: "Selecciona un tipo de comentario válido." };
  if (!v.resumen) return { error: "El resumen es obligatorio." };
  if (!v.descripcion) return { error: "La descripción es obligatoria." };
  if (d.sin_datos !== true) return { error: "Debes confirmar que el comentario no incluye datos de pacientes." };
  for (const [k, max] of Object.entries(LIMITS)) {
    if (v[k].length > max) return { error: `El campo ${k} supera ${max} caracteres.` };
  }
  return { value: v };
}

// Evita menciones (@usuario, #123 sigue permitido) y comentarios HTML ocultos.
function sanitize(text) {
  return text.replace(/@(?=[A-Za-z0-9])/g, "@​").replace(/<!--/g, "&lt;!--");
}

export function issuePayload(v) {
  const guide = GUIDES[v.guia];
  const short = (guide.match(/\(([^)]+)\)/) || [, guide])[1];
  const row = (label, value) => `**${label}:** ${value ? sanitize(value) : "—"}`;
  const body = [
    row("Guía", guide),
    row("Versión", v.version),
    row("Tipo", TYPES[v.tipo]),
    row("Página / recurso", v.seccion),
    row("Institución / equipo", v.institucion),
    "",
    "### Descripción",
    "",
    sanitize(v.descripcion),
    "",
    "---",
    "_Enviado desde el formulario de comentarios del Portal de Interoperabilidad._",
  ].join("\n");
  return {
    title: `[${short}] ${TYPES[v.tipo]}: ${sanitize(v.resumen)}`,
    body,
    labels: ["feedback-guia", `guia:${v.guia}`, `tipo:${v.tipo}`],
  };
}

// --- GitHub ----------------------------------------------------------------

async function gh(path, token, init = {}) {
  const res = await fetch(GITHUB_API + path, {
    ...init,
    headers: {
      Accept: "application/vnd.github+json",
      Authorization: `Bearer ${token}`,
      "User-Agent": "minsal-feedback-api",
      "X-GitHub-Api-Version": "2022-11-28",
      ...(init.body ? { "Content-Type": "application/json" } : {}),
    },
  });
  if (!res.ok) throw new Error(`GitHub ${path} → ${res.status}: ${await res.text()}`);
  return res.json();
}

async function createIssue(repo, token, v) {
  return gh(`/repos/${repo}/issues`, token, { method: "POST", body: JSON.stringify(issuePayload(v)) });
}

async function installationToken(env) {
  const jwt = await appJwt(env.GITHUB_APP_ID, env.GITHUB_APP_PRIVATE_KEY);
  const res = await gh(`/app/installations/${env.GITHUB_APP_INSTALLATION_ID}/access_tokens`, jwt, { method: "POST" });
  return res.token;
}

// JWT RS256 firmado con la clave privada de la GitHub App (formato PKCS#8).
export async function appJwt(appId, pem) {
  const now = Math.floor(Date.now() / 1000);
  const enc = (obj) => b64url(new TextEncoder().encode(JSON.stringify(obj)));
  const unsigned = `${enc({ alg: "RS256", typ: "JWT" })}.${enc({ iat: now - 60, exp: now + 540, iss: String(appId) })}`;
  const key = await crypto.subtle.importKey(
    "pkcs8",
    pemToDer(pem),
    { name: "RSASSA-PKCS1-v1_5", hash: "SHA-256" },
    false,
    ["sign"],
  );
  const sig = await crypto.subtle.sign("RSASSA-PKCS1-v1_5", key, new TextEncoder().encode(unsigned));
  return `${unsigned}.${b64url(new Uint8Array(sig))}`;
}

function pemToDer(pem) {
  if (pem.includes("BEGIN RSA PRIVATE KEY")) {
    throw new Error("La clave está en PKCS#1. Conviértela: openssl pkcs8 -topk8 -nocrypt -in app.pem -out app-pkcs8.pem");
  }
  const b64 = pem.replace(/-----[^-]+-----/g, "").replace(/\s+/g, "");
  return Uint8Array.from(atob(b64), (c) => c.charCodeAt(0)).buffer;
}

function b64url(bytes) {
  let s = "";
  for (const b of bytes) s += String.fromCharCode(b);
  return btoa(s).replace(/\+/g, "-").replace(/\//g, "_").replace(/=+$/, "");
}

// --- Utilidades --------------------------------------------------------------

async function verifyTurnstile(secret, token, ip) {
  if (!token) return false;
  const form = new FormData();
  form.append("secret", secret);
  form.append("response", token);
  form.append("remoteip", ip);
  const res = await fetch("https://challenges.cloudflare.com/turnstile/v0/siteverify", { method: "POST", body: form });
  const out = await res.json();
  return out.success === true;
}

function corsHeaders(request, env) {
  const origin = request.headers.get("Origin");
  const allowed = (env.ALLOWED_ORIGINS || "").split(",").map((s) => s.trim()).filter(Boolean);
  if (!origin || !allowed.includes(origin)) return null;
  return {
    "Access-Control-Allow-Origin": origin,
    "Access-Control-Allow-Methods": "POST, OPTIONS",
    "Access-Control-Allow-Headers": "Content-Type",
    "Access-Control-Max-Age": "86400",
    Vary: "Origin",
  };
}

function json(obj, status, headers = {}) {
  return new Response(JSON.stringify(obj), {
    status,
    headers: { "Content-Type": "application/json; charset=utf-8", ...headers },
  });
}
