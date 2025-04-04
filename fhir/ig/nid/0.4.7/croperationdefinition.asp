<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/OperationDefinition-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/OperationDefinition-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/OperationDefinition-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/OperationDefinition-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/OperationDefinition-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/OperationDefinition-"+id+".xml");
  else if (id == "MPI.PDQm.match")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.7/OperationDefinition-MPI.PDQm.match.html");
  else if (id == "MPI.PIXm.pix")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.7/OperationDefinition-MPI.PIXm.pix.html");
  else if (id == "index")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/OperationDefinition.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /0.4.7/croperationdefinition.asp) .
</body>
</html>
