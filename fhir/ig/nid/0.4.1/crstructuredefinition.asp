<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition-"+id+".xml");
  else if (id == "MINSALPrestadorOrganizacional")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-MINSALPrestadorOrganizacional.html");
  else if (id == "BundleSearchProfHPD")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-BundleSearchProfHPD.html");
  else if (id == "MINSALOcupacion")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-MINSALOcupacion.html");
  else if (id == "BundleSearchINSHPD")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-BundleSearchINSHPD.html");
  else if (id == "MINSALCobertura")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-MINSALCobertura.html");
  else if (id == "MINSALAgrupacionPorMarcas")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-MINSALAgrupacionPorMarcas.html");
  else if (id == "PueblosOriginarios")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-PueblosOriginarios.html");
  else if (id == "SituacionCalle")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-SituacionCalle.html");
  else if (id == "ParametrosSalidaPixmMpi")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-ParametrosSalidaPixmMpi.html");
  else if (id == "ParametrosEntradaPixmMpi")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-ParametrosEntradaPixmMpi.html");
  else if (id == "BundleSearchMPI")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-BundleSearchMPI.html");
  else if (id == "MINSALSituacionDiscapacidad")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-MINSALSituacionDiscapacidad.html");
  else if (id == "PaisOrigenMPI")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-PaisOrigenMPI.html");
  else if (id == "NIDAddress")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-NIDAddress.html");
  else if (id == "PueblosAfrodescendiente")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-PueblosAfrodescendiente.html");
  else if (id == "ValorDeLaClase")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-ValorDeLaClase.html");
  else if (id == "ParametrosEntradaPDQmMpi")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-ParametrosEntradaPDQmMpi.html");
  else if (id == "MINSALAcompanante")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-MINSALAcompanante.html");
  else if (id == "MINSALNivelEducacional")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-MINSALNivelEducacional.html");
  else if (id == "Religion")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-Religion.html");
  else if (id == "BundleSearchMPIMatch")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-BundleSearchMPIMatch.html");
  else if (id == "Mencion")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-Mencion.html");
  else if (id == "MINSALPaciente")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-MINSALPaciente.html");
  else if (id == "MINSALPrestadorProfesional")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-MINSALPrestadorProfesional.html");
  else if (id == "MINSALPacienteBusqueda")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-MINSALPacienteBusqueda.html");
  else if (id == "MINSALPractitionerAdministrativo")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/StructureDefinition-MINSALPractitionerAdministrativo.html");
  else if (id == "index")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/StructureDefinition.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /0.4.1/crstructuredefinition.asp) .
</body>
</html>
