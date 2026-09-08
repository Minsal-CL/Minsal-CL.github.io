<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/Observation-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/Observation-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/Observation-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/Observation-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/Observation-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/Observation-"+id+".xml");
  else if (id == "r2bo-estadificacion-tnm-ex")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.1-draft/Observation-r2bo-estadificacion-tnm-ex.html");
  else if (id == "r2bo-tnm-categoria-tumor-primario-ex")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.1-draft/Observation-r2bo-tnm-categoria-tumor-primario-ex.html");
  else if (id == "r2bo-tnm-categoria-nodo-regional-ex")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.1-draft/Observation-r2bo-tnm-categoria-nodo-regional-ex.html");
  else if (id == "r2bo-tnm-categoria-metastasis-distantel-ex")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.1-draft/Observation-r2bo-tnm-categoria-metastasis-distantel-ex.html");
  else if (id == "index")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/Observation.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \0.3.1-draft\crobservation.asp) .
</body>
</html>
