<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem-"+id+".xml");
  else if (id == "CSEspecialidadFarma")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CodeSystem-CSEspecialidadFarma.html");
  else if (id == "PueblosOriginariosCS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CodeSystem-PueblosOriginariosCS.html");
  else if (id == "CSEspecialidadOdont")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CodeSystem-CSEspecialidadOdont.html");
  else if (id == "CSUNivelAprob")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CodeSystem-CSUNivelAprob.html");
  else if (id == "CSReligion")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CodeSystem-CSReligion.html");
  else if (id == "CScalificacionPrevisional")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CodeSystem-CScalificacionPrevisional.html");
  else if (id == "CSOrigenDiscapacidad")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CodeSystem-CSOrigenDiscapacidad.html");
  else if (id == "CSTituloProfesional")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CodeSystem-CSTituloProfesional.html");
  else if (id == "CSEspecialidadBioqca")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CodeSystem-CSEspecialidadBioqca.html");
  else if (id == "CSClasesDeCobertura")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CodeSystem-CSClasesDeCobertura.html");
  else if (id == "CSPrevision")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CodeSystem-CSPrevision.html");
  else if (id == "CSOcupacionesDet")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CodeSystem-CSOcupacionesDet.html");
  else if (id == "CSIdentidadDeGenero")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CodeSystem-CSIdentidadDeGenero.html");
  else if (id == "CSLeyPrevisionales")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CodeSystem-CSLeyPrevisionales.html");
  else if (id == "CSEspecialidadMed")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CodeSystem-CSEspecialidadMed.html");
  else if (id == "CSEstadoCivil")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CodeSystem-CSEstadoCivil.html");
  else if (id == "CSTipoObservacion")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CodeSystem-CSTipoObservacion.html");
  else if (id == "CSTramosFONASA")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CodeSystem-CSTramosFONASA.html");
  else if (id == "CSLeyReparacion")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CodeSystem-CSLeyReparacion.html");
  else if (id == "CSNivelEducacionalDesc")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CodeSystem-CSNivelEducacionalDesc.html");
  else if (id == "CSGrupoMarcas")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CodeSystem-CSGrupoMarcas.html");
  else if (id == "CSValoracionDesempeno")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CodeSystem-CSValoracionDesempeno.html");
  else if (id == "CSComponenteDiscapacidad")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CodeSystem-CSComponenteDiscapacidad.html");
  else if (id == "index")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/CodeSystem.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /0.4.5/crcodesystem.asp) .
</body>
</html>