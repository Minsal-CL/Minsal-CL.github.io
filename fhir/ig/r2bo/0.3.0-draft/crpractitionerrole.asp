<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/PractitionerRole-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/PractitionerRole-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/PractitionerRole-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/PractitionerRole-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/PractitionerRole-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/PractitionerRole-"+id+".xml");
  else if (id == "ProfesionalHospital")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.0-draft/PractitionerRole-ProfesionalHospital.html");
  else if (id == "r2bo-anatopatologo-hospital")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.0-draft/PractitionerRole-r2bo-anatopatologo-hospital.html");
  else if (id == "index")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/PractitionerRole.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \0.3.0-draft\crpractitionerrole.asp) .
</body>
</html>
