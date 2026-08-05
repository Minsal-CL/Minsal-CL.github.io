<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet-"+id+".xml");
  else if (id == "eis-EstadoCivil-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-EstadoCivil-VS.html");
  else if (id == "SexoBiologicoVS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-SexoBiologicoVS.html");
  else if (id == "eis-CondiciondelaActividadLaboral-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-CondiciondelaActividadLaboral-VS.html");
  else if (id == "LeyesAtencionSaludVS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-LeyesAtencionSaludVS.html");
  else if (id == "eis-modalidad-atencion-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-modalidad-atencion-vs.html");
  else if (id == "eis-pais-nacimiento-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-pais-nacimiento-vs.html");
  else if (id == "eis-especialidades-odontologicas-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-especialidades-odontologicas-vs.html");
  else if (id == "eis-PrevisiondeSalud-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-PrevisiondeSalud-VS.html");
  else if (id == "eis-establecimientoscodigodeis-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-establecimientoscodigodeis-VS.html");
  else if (id == "eis-NiveldeDiscapacidad-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-NiveldeDiscapacidad-VS.html");
  else if (id == "eis-especialidades-enfermeria-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-especialidades-enfermeria-vs.html");
  else if (id == "eis-PueblosOriginarios-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-PueblosOriginarios-VS.html");
  else if (id == "eis-tipo-via-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-tipo-via-vs.html");
  else if (id == "eis-OrigendeDiscapacidad-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-OrigendeDiscapacidad-VS.html");
  else if (id == "eis-tipo-proceso-asistencial-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-tipo-proceso-asistencial-VS.html");
  else if (id == "eis-GruposdeOcupaciones-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-GruposdeOcupaciones-VS.html");
  else if (id == "eis-regiones-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-regiones-vs.html");
  else if (id == "eis-identidad-genero-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-identidad-genero-vs.html");
  else if (id == "eis-comunas-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-comunas-vs.html");
  else if (id == "eis-tramos-fonasa-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-tramos-fonasa-vs.html");
  else if (id == "eis-especialidades-bioquimicas-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-especialidades-bioquimicas-vs.html");
  else if (id == "eis-paises-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-paises-vs.html");
  else if (id == "eis-OcupacionesDesagregadas-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-OcupacionesDesagregadas-VS.html");
  else if (id == "eis-servicios-salud-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-servicios-salud-vs.html");
  else if (id == "eis-pais-emision-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-pais-emision-vs.html");
  else if (id == "eis-PuebloAfrodescendienteChileno-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-PuebloAfrodescendienteChileno-VS.html");
  else if (id == "eis-tipo-identificador-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-tipo-identificador-vs.html");
  else if (id == "eis-consultaclinica-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-consultaclinica-vs.html");
  else if (id == "eis-religion-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-religion-vs.html");
  else if (id == "eis-titulo-profesional-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-titulo-profesional-vs.html");
  else if (id == "eis-especialidades-farmaceuticas-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-especialidades-farmaceuticas-vs.html");
  else if (id == "eis-tipo-especifico-prestador-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-tipo-especifico-prestador-vs.html");
  else if (id == "eis-ModalidaddeAtencionFONASA-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-ModalidaddeAtencionFONASA-VS.html");
  else if (id == "eis-seremi-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-seremi-vs.html");
  else if (id == "eis-NiveldeInstruccion-CS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-NiveldeInstruccion-CS.html");
  else if (id == "eis-pertenencia-sistema-nacional-servicios-salud-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-pertenencia-sistema-nacional-servicios-salud-vs.html");
  else if (id == "eis-tipo-prestador-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-tipo-prestador-vs.html");
  else if (id == "eis-EspecialidadesySubespecialidadesMedicas-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-EspecialidadesySubespecialidadesMedicas-VS.html");
  else if (id == "SexoRegistralVS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-SexoRegistralVS.html");
  else if (id == "eis-nacionalidad-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-nacionalidad-vs.html");
  else if (id == "eis-provincias-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-provincias-vs.html");
  else if (id == "eis-establecimientos-nivel-complejidad-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/ValueSet-eis-establecimientos-nivel-complejidad-vs.html");
  else if (id == "index")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \0.2.0\crvalueset.asp) .
</body>
</html>
