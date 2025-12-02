<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/Patient-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/Patient-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/Patient-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/Patient-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/Patient-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/Patient-"+id+".xml");
  else if (id == "MinsalPacienteEjemplo")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/Patient-MinsalPacienteEjemplo.html");
  else if (id == "EjemploPacienteBusqueda")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/Patient-EjemploPacienteBusqueda.html");
  else if (id == "DuplicadoMPIPaciente")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.1/Patient-DuplicadoMPIPaciente.html");
  else if (id == "index")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/Patient.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /0.4.1/crpatient.asp) .
</body>
</html>
