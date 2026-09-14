<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/CapabilityStatement-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/CapabilityStatement-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/CapabilityStatement-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/CapabilityStatement-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/CapabilityStatement-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/CapabilityStatement-"+id+".xml");
  else if (id == "r2bo-minsal-consumidor")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/CapabilityStatement-r2bo-minsal-consumidor.html");
  else if (id == "r2bo-minsal-analisis")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/CapabilityStatement-r2bo-minsal-analisis.html");
  else if (id == "r2bo-minsal-server")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/CapabilityStatement-r2bo-minsal-server.html");
  else if (id == "r2bo-minsal-cliente-informe")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/CapabilityStatement-r2bo-minsal-cliente-informe.html");
  else if (id == "index")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/CapabilityStatement.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \0.3.2\crcapabilitystatement.asp) .
</body>
</html>
