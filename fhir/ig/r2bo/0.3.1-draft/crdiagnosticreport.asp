<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/DiagnosticReport-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/DiagnosticReport-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/DiagnosticReport-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/DiagnosticReport-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/DiagnosticReport-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/DiagnosticReport-"+id+".xml");
  else if (id == "r2bo-informe-biopsia-ex")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.1-draft/DiagnosticReport-r2bo-informe-biopsia-ex.html");
  else if (id == "index")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/DiagnosticReport.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \0.3.1-draft\crdiagnosticreport.asp) .
</body>
</html>
