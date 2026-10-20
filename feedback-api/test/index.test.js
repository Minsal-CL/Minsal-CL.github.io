import { test, beforeEach, afterEach } from "node:test";
import assert from "node:assert/strict";
import { generateKeyPairSync, createVerify } from "node:crypto";
import worker, { validate, issuePayload, appJwt } from "../src/index.js";

const { privateKey, publicKey } = generateKeyPairSync("rsa", { modulusLength: 2048 });
const PEM = privateKey.export({ type: "pkcs8", format: "pem" });

const ENV = {
  GITHUB_REPO: "Minsal-CL/Minsal-CL.github.io",
  ALLOWED_ORIGINS: "https://interoperabilidad.minsal.cl",
  GITHUB_APP_ID: "123",
  GITHUB_APP_INSTALLATION_ID: "456",
  GITHUB_APP_PRIVATE_KEY: PEM,
};

const VALID = {
  guia: "snre",
  tipo: "error",
  version: "0.9.6",
  resumen: "Ejemplo no valida",
  seccion: "https://interoperabilidad.minsal.cl/fhir/ig/snre/0.9.6/x.html",
  descripcion: "Falla @alguien <!-- oculto -->",
  institucion: "SS Metropolitano",
  sin_datos: true,
};

function req(body, origin = "https://interoperabilidad.minsal.cl", method = "POST") {
  return new Request("https://api.example/issues", {
    method,
    headers: { Origin: origin, "Content-Type": "application/json", "CF-Connecting-IP": "1.2.3.4" },
    body: method === "POST" ? JSON.stringify(body) : undefined,
  });
}

let realFetch, calls;
beforeEach(() => {
  realFetch = globalThis.fetch;
  calls = [];
  globalThis.fetch = async (url, init = {}) => {
    calls.push({ url: String(url), init });
    if (String(url).endsWith("/access_tokens")) return Response.json({ token: "inst-token" });
    if (String(url).endsWith("/issues")) {
      return Response.json({ number: 42, html_url: "https://github.com/x/y/issues/42" }, { status: 201 });
    }
    return new Response("not found", { status: 404 });
  };
});
afterEach(() => { globalThis.fetch = realFetch; });

test("validate acepta datos válidos y rechaza inválidos", () => {
  assert.ok(validate(VALID).value);
  assert.match(validate({ ...VALID, guia: "x" }).error, /guía/);
  assert.match(validate({ ...VALID, tipo: "x" }).error, /tipo/);
  assert.match(validate({ ...VALID, descripcion: " " }).error, /descripción/);
  assert.match(validate({ ...VALID, sin_datos: false }).error, /pacientes/);
  assert.match(validate({ ...VALID, resumen: "a".repeat(121) }).error, /resumen/);
});

test("issuePayload arma título, etiquetas y neutraliza menciones", () => {
  const p = issuePayload(validate(VALID).value);
  assert.equal(p.title, "[SNRE] Error en la guía: Ejemplo no valida");
  assert.deepEqual(p.labels, ["feedback-guia", "guia:snre", "tipo:error"]);
  assert.ok(p.body.includes("@​alguien"));
  assert.ok(!p.body.includes("<!--"));
});

test("appJwt firma RS256 verificable con la clave pública", async () => {
  const jwt = await appJwt("123", PEM);
  const [h, p, s] = jwt.split(".");
  const payload = JSON.parse(Buffer.from(p, "base64url"));
  assert.equal(payload.iss, "123");
  const ok = createVerify("RSA-SHA256").update(`${h}.${p}`).verify(publicKey, Buffer.from(s, "base64url"));
  assert.ok(ok);
});

test("POST /issues crea el Issue con token de instalación", async () => {
  const res = await worker.fetch(req(VALID), ENV);
  assert.equal(res.status, 201);
  assert.deepEqual(await res.json(), { ok: true, number: 42 });
  assert.equal(res.headers.get("Access-Control-Allow-Origin"), "https://interoperabilidad.minsal.cl");
  const issueCall = calls.find((c) => c.url.endsWith("/repos/Minsal-CL/Minsal-CL.github.io/issues"));
  assert.equal(issueCall.init.headers.Authorization, "Bearer inst-token");
});

test("rechaza origen no permitido sin llamar a GitHub", async () => {
  const res = await worker.fetch(req(VALID, "https://evil.example"), ENV);
  assert.equal(res.status, 403);
  assert.equal(calls.length, 0);
});

test("campo trampa responde ok sin crear Issue", async () => {
  const res = await worker.fetch(req({ ...VALID, website: "spam" }), ENV);
  assert.equal(res.status, 200);
  assert.equal(calls.length, 0);
});

test("Turnstile obligatorio cuando hay secreto", async () => {
  const res = await worker.fetch(req(VALID), { ...ENV, TURNSTILE_SECRET: "s" });
  assert.equal(res.status, 400);
  assert.equal(calls.filter((c) => c.url.includes("github")).length, 0);
});

test("límite por IP devuelve 429", async () => {
  const env = { ...ENV, RATE_LIMITER: { limit: async () => ({ success: false }) } };
  const res = await worker.fetch(req(VALID), env);
  assert.equal(res.status, 429);
});

test("error de GitHub devuelve 502 sin filtrar detalles", async () => {
  globalThis.fetch = async () => new Response("bad credentials", { status: 401 });
  const orig = console.error; console.error = () => {};
  const res = await worker.fetch(req(VALID), ENV);
  console.error = orig;
  assert.equal(res.status, 502);
  assert.ok(!(await res.text()).includes("credentials"));
});
