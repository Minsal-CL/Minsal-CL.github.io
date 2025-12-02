<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/Parameters-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/Parameters-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/Parameters-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/Parameters-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/Parameters-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/Parameters-"+id+".xml");
  else if (id == "ParametroEntradaIhe-PDQm")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/Parameters-ParametroEntradaIhe-PDQm.html");
  else if (id == "ParametroEntradaIhe-PIXm")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/Parameters-ParametroEntradaIhe-PIXm.html");
  else if (id == "ParametroSalidaIhe-PIXm")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.6/Parameters-ParametroSalidaIhe-PIXm.html");
  else if (id == "index")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/Parameters.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \0.4.6\crparameters.asp) .
</body>
</html>
