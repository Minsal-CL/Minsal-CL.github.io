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
  else if (id == "CSEspecialidadFarma")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSEspecialidadFarma.html");
  else if (id == "CSConsultaMedEspecialidad")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSConsultaMedEspecialidad.html");
  else if (id == "CSTramosFonasa")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSTramosFonasa.html");
  else if (id == "CSSituacionDiscapacidadOrigen")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSSituacionDiscapacidadOrigen.html");
  else if (id == "CSTipoPertinenciaEstab")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSTipoPertinenciaEstab.html");
  else if (id == "CSTipoPrestador")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSTipoPrestador.html");
  else if (id == "CSTipoEstabPubEspec")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSTipoEstabPubEspec.html");
  else if (id == "CSIdentidadGenero")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSIdentidadGenero.html");
  else if (id == "CSOcupacionesDetalladas")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSOcupacionesDetalladas.html");
  else if (id == "CSTipoEstabPubAtenPrim")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSTipoEstabPubAtenPrim.html");
  else if (id == "CSDiagnostico")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSDiagnostico.html");
  else if (id == "CSEspecialidadOdontologica")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSEspecialidadOdontologica.html");
  else if (id == "CSConsultaMed")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSConsultaMed.html");
  else if (id == "CSOcupaciones")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSOcupaciones.html");
  else if (id == "CSModalidadAtencionFonasa")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSModalidadAtencionFonasa.html");
  else if (id == "CSReligion")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSReligion.html");
  else if (id == "CSSituacionDiscapacidadNivel")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSSituacionDiscapacidadNivel.html");
  else if (id == "CSTipoOtroTelefono")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSTipoOtroTelefono.html");
  else if (id == "CSTipoSistemaSalud")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSTipoSistemaSalud.html");
  else if (id == "CSTituloProfesional")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSTituloProfesional.html");
  else if (id == "CSEspecialidadBioquimica")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSEspecialidadBioquimica.html");
  else if (id == "CSNivelInstruccion")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSNivelInstruccion.html");
  else if (id == "CSInstitucionEmiteTitulo")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSInstitucionEmiteTitulo.html");
  else if (id == "CSPrevision")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSPrevision.html");
  else if (id == "CSServiciosdeSalud")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSServiciosdeSalud.html");
  else if (id == "CSNivelComplejidad")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSNivelComplejidad.html");
  else if (id == "CSInstitucionEmiteEspecialidad")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSInstitucionEmiteEspecialidad.html");
  else if (id == "CSProvincia")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSProvincia.html");
  else if (id == "CSSexoBiologico")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSSexoBiologico.html");
  else if (id == "CSLeyPrevisionales")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSLeyPrevisionales.html");
  else if (id == "CSAreaUrbanoCensal")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSAreaUrbanoCensal.html");
  else if (id == "CSEstadoCivil")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSEstadoCivil.html");
  else if (id == "CSConsultaOdontoEspecialidad")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSConsultaOdontoEspecialidad.html");
  else if (id == "CSNivelAtencion")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSNivelAtencion.html");
  else if (id == "CSPaises")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSPaises.html");
  else if (id == "CSEspecialidadMedica")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSEspecialidadMedica.html");
  else if (id == "CSSEREMI")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSSEREMI.html");
  else if (id == "CSCondiciondelaActividad")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSCondiciondelaActividad.html");
  else if (id == "CSAnamnesis")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSAnamnesis.html");
  else if (id == "CSComunas")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSComunas.html");
  else if (id == "CSTipoEstabHospitalario")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSTipoEstabHospitalario.html");
  else if (id == "CSTipoVia")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSTipoVia.html");
  else if (id == "CSPueblosOriginarios")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSPueblosOriginarios.html");
  else if (id == "CSTipoAtencionEstablecimiento")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSTipoAtencionEstablecimiento.html");
  else if (id == "CSUCursoAprobado")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSUCursoAprobado.html");
  else if (id == "CSTipoEstablecimientosPublicos")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSTipoEstablecimientosPublicos.html");
  else if (id == "CSOtroTipoEstabAsistenciales")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSOtroTipoEstabAsistenciales.html");
  else if (id == "CSRegion")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSRegion.html");
  else if (id == "CSTiposDocumentosDEIS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/CodeSystem-CSTiposDocumentosDEIS.html");
  else if (id == "index")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/CodeSystem.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \0.1.0\crcodesystem.asp) .
</body>
</html>
