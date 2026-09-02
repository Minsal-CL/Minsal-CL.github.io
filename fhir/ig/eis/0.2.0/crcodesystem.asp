<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem-"+id+".xml");
  else if (id == "eis-tipo-prestador-cs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-tipo-prestador-cs.html");
  else if (id == "eis-NiveldeDiscapacidad-CS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-NiveldeDiscapacidad-CS.html");
  else if (id == "eis-especialidades-farmaceuticas-cs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-especialidades-farmaceuticas-cs.html");
  else if (id == "eis-CondiciondelaActividadLaboral-CS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-CondiciondelaActividadLaboral-CS.html");
  else if (id == "eis-SexoBiologico-CS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-SexoBiologico-CS.html");
  else if (id == "eis-ModalidaddeAtencionFONASA-CS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-ModalidaddeAtencionFONASA-CS.html");
  else if (id == "eis-comunas-cs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-comunas-cs.html");
  else if (id == "eis-seremi-cs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-seremi-cs.html");
  else if (id == "eis-tipo-via-cs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-tipo-via-cs.html");
  else if (id == "eis-tipo-identificador-cs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-tipo-identificador-cs.html");
  else if (id == "eis-OrigendeDiscapacidad-CS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-OrigendeDiscapacidad-CS.html");
  else if (id == "eis-pertenencia-sistema-nacional-servicios-salud-cs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-pertenencia-sistema-nacional-servicios-salud-cs.html");
  else if (id == "eis-EstadoCivil-CS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-EstadoCivil-CS.html");
  else if (id == "eis-especialidades-enfermeria-cs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-especialidades-enfermeria-cs.html");
  else if (id == "eis-provincias-cs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-provincias-cs.html");
  else if (id == "eis-establecimientos-nivel-complejidad-cs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-establecimientos-nivel-complejidad-cs.html");
  else if (id == "eis-OcupacionesDesagregadas-CS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-OcupacionesDesagregadas-CS.html");
  else if (id == "eis-tipo-especifico-prestador-cs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-tipo-especifico-prestador-cs.html");
  else if (id == "LeyesAtencionSaludCS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-LeyesAtencionSaludCS.html");
  else if (id == "eis-regiones-cs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-regiones-cs.html");
  else if (id == "eis-especialidades-odontologicas-cs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-especialidades-odontologicas-cs.html");
  else if (id == "eis-tramos-fonasa-cs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-tramos-fonasa-cs.html");
  else if (id == "eis-paises-cs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-paises-cs.html");
  else if (id == "eis-modalidad-atencion-cs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-modalidad-atencion-cs.html");
  else if (id == "eis-PuebloAfrodescendienteChileno-CS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-PuebloAfrodescendienteChileno-CS.html");
  else if (id == "eis-NiveldeInstruccion-CS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-NiveldeInstruccion-CS.html");
  else if (id == "eis-especialidades-bioquimicas-cs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-especialidades-bioquimicas-cs.html");
  else if (id == "eis-religion-cs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-religion-cs.html");
  else if (id == "eis-PrevisiondeSalud-CS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-PrevisiondeSalud-CS.html");
  else if (id == "eis-titulo-profesional-cs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-titulo-profesional-cs.html");
  else if (id == "eis-GruposdeOcupaciones-CS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-GruposdeOcupaciones-CS.html");
  else if (id == "eis-identidadgenero-cs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-identidadgenero-cs.html");
  else if (id == "eis-servicios-salud-cs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-servicios-salud-cs.html");
  else if (id == "eis-SexoRegistral-CS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-SexoRegistral-CS.html");
  else if (id == "eis-PueblosOriginarios-CS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-PueblosOriginarios-CS.html");
  else if (id == "eis-EspecialidadesySubespecialidadesMedicas-CS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-EspecialidadesySubespecialidadesMedicas-CS.html");
  else if (id == "eis-establecimientoscodigodeis-CS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-establecimientoscodigodeis-CS.html");
  else if (id == "eis-tipo-proceso-asistencial-CS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-tipo-proceso-asistencial-CS.html");
  else if (id == "eis-consultaclinica-cs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/CodeSystem-eis-consultaclinica-cs.html");
  else if (id == "index")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \0.2.0\crcodesystem.asp) .
</body>
</html>
