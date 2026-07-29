<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/Bundle-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/Bundle-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/Bundle-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/Bundle-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/Bundle-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/Bundle-"+id+".xml");
  else if (id == "EjemploBusquedaProf")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/Bundle-EjemploBusquedaProf.html");
  else if (id == "EjemploBusquedaAdm")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/Bundle-EjemploBusquedaAdm.html");
  else if (id == "EjemploBusqueda")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/Bundle-EjemploBusqueda.html");
  else if (id == "EjemploBusquedaMatch")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/Bundle-EjemploBusquedaMatch.html");
  else if (id == "EjemploBusquedaOrg")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/Bundle-EjemploBusquedaOrg.html");
  else if (id == "EjemploBusquedaMatchOutcomeOperation")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/Bundle-EjemploBusquedaMatchOutcomeOperation.html");
  else if (id == "index")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/Bundle.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \0.4.6\crbundle.asp) .
</body>
</html>
