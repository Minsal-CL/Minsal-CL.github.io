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
  else if (id == "VSOcupacionesDetalladas")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSOcupacionesDetalladas.html");
  else if (id == "VSConsultaMedEspecialidad")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSConsultaMedEspecialidad.html");
  else if (id == "VSEspecialidadOdontologica")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSEspecialidadOdontologica.html");
  else if (id == "VSOtroTipoEstabAsistenciales")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSOtroTipoEstabAsistenciales.html");
  else if (id == "VSTipoVia")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSTipoVia.html");
  else if (id == "VSProvincia")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSProvincia.html");
  else if (id == "VSPaises")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSPaises.html");
  else if (id == "VSTipoEstabPubEspec")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSTipoEstabPubEspec.html");
  else if (id == "VSConsultaMed")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSConsultaMed.html");
  else if (id == "VSTipoEstablecimientosPublicos")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSTipoEstablecimientosPublicos.html");
  else if (id == "VSReligion")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSReligion.html");
  else if (id == "VSEspecialidadMedica")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSEspecialidadMedica.html");
  else if (id == "VSSexoBiologico")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSSexoBiologico.html");
  else if (id == "VSSituacionDiscapacidadNivel")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSSituacionDiscapacidadNivel.html");
  else if (id == "VSSeremi")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSSeremi.html");
  else if (id == "VSTramosFonasa")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSTramosFonasa.html");
  else if (id == "VSLeyPrevisionales")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSLeyPrevisionales.html");
  else if (id == "VSNivelAtencion")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSNivelAtencion.html");
  else if (id == "VSInstitucionEmiteTitulo")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSInstitucionEmiteTitulo.html");
  else if (id == "VSModalidadAtencionFonasa")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSModalidadAtencionFonasa.html");
  else if (id == "VSAreaUrbanoCensal")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSAreaUrbanoCensal.html");
  else if (id == "VSTipoSistemaSalud")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSTipoSistemaSalud.html");
  else if (id == "VSTipoOtroTelefono")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSTipoOtroTelefono.html");
  else if (id == "VSDiagnostico")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSDiagnostico.html");
  else if (id == "VSEspecialidadBioquimica")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSEspecialidadBioquimica.html");
  else if (id == "VSPueblosOriginarios")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSPueblosOriginarios.html");
  else if (id == "VSCondiciondelaActividad")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSCondiciondelaActividad.html");
  else if (id == "VSIdentidadGenero")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSIdentidadGenero.html");
  else if (id == "VSNivelInstruccion")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSNivelInstruccion.html");
  else if (id == "VSEspecialidadFarma")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSEspecialidadFarma.html");
  else if (id == "VSConsultaOdontoEspecialidad")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSConsultaOdontoEspecialidad.html");
  else if (id == "VSTipoPrestador")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSTipoPrestador.html");
  else if (id == "VSComunas")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSComunas.html");
  else if (id == "VSSituacionDiscapacidadOrigen")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSSituacionDiscapacidadOrigen.html");
  else if (id == "VSPrevision")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSPrevision.html");
  else if (id == "VSTipoAtencionEstablecimiento")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSTipoAtencionEstablecimiento.html");
  else if (id == "VSRegion")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSRegion.html");
  else if (id == "VSTipoPertinenciaEstab")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSTipoPertinenciaEstab.html");
  else if (id == "VSTituloProfesional")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSTituloProfesional.html");
  else if (id == "VSOcupaciones")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSOcupaciones.html");
  else if (id == "VSInstitucionEmiteEspecialidad")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSInstitucionEmiteEspecialidad.html");
  else if (id == "VSUCursoAprobado")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSUCursoAprobado.html");
  else if (id == "VSServiciosdeSalud")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSServiciosdeSalud.html");
  else if (id == "VSEstadoCivil")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSEstadoCivil.html");
  else if (id == "VSAnamnesis")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSAnamnesis.html");
  else if (id == "VSNivelComplejidad")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSNivelComplejidad.html");
  else if (id == "VSTipoEstabHospitalario")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSTipoEstabHospitalario.html");
  else if (id == "VSTipoEstabPubAtenPrim")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSTipoEstabPubAtenPrim.html");
  else if (id == "VSTiposDocumentosDEIS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.1.0/ValueSet-VSTiposDocumentosDEIS.html");
  else if (id == "index")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/ValueSet.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \0.1.0\crvalueset.asp) .
</body>
</html>
