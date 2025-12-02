<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet-"+id+".xml");
  else if (id == "VSEspecialidadMed")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSEspecialidadMed.html");
  else if (id == "PueblosOriginariosVS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-PueblosOriginariosVS.html");
  else if (id == "VSReligion")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSReligion.html");
  else if (id == "VSIdentidadDeGenero")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSIdentidadDeGenero.html");
  else if (id == "VSClasesDeCobertura")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSClasesDeCobertura.html");
  else if (id == "VSLeyPrevisionales")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSLeyPrevisionales.html");
  else if (id == "VSNivelEducacionalDesc")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSNivelEducacionalDesc.html");
  else if (id == "VScalificacionPrevisional")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VScalificacionPrevisional.html");
  else if (id == "VSEspecialidadOdont")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSEspecialidadOdont.html");
  else if (id == "VSUNivelAprob")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSUNivelAprob.html");
  else if (id == "VSTipoObservacion")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSTipoObservacion.html");
  else if (id == "VSEspecialidadFarma")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSEspecialidadFarma.html");
  else if (id == "VSLeyReparacion")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSLeyReparacion.html");
  else if (id == "VSPrevision")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSPrevision.html");
  else if (id == "VSTiposIdentificadorPaciente")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSTiposIdentificadorPaciente.html");
  else if (id == "VSIdentificadorPrestador")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSIdentificadorPrestador.html");
  else if (id == "VSTituloProfesional")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSTituloProfesional.html");
  else if (id == "VSTramosFONASA")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSTramosFONASA.html");
  else if (id == "VSComponenteDiscapacidad")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSComponenteDiscapacidad.html");
  else if (id == "VSOrigenDiscapacidad")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSOrigenDiscapacidad.html");
  else if (id == "VSOcupacionesDet")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSOcupacionesDet.html");
  else if (id == "VSEstadoCivil")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSEstadoCivil.html");
  else if (id == "VSValoracionDesempeno")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSValoracionDesempeno.html");
  else if (id == "VSGrupoMarcas")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSGrupoMarcas.html");
  else if (id == "VSEspecialidadBioqca")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSEspecialidadBioqca.html");
  else if (id == "VSSistemasComunicacion")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/ValueSet-VSSistemasComunicacion.html");
  else if (id == "index")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/ValueSet.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /0.4.5/crvalueset.asp) .
</body>
</html>
