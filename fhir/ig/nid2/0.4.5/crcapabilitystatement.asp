<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement-"+id+".xml");
  else if (id == "NID.IHE.HPD.Consumer")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CapabilityStatement-NID.IHE.HPD.Consumer.html");
  else if (id == "MPI.IHE.PIXm.PDQm.Manager")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CapabilityStatement-MPI.IHE.PIXm.PDQm.Manager.html");
  else if (id == "MPI.IHE.PDQm.Search.Cliente.Match")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CapabilityStatement-MPI.IHE.PDQm.Search.Cliente.Match.html");
  else if (id == "MPI.IHE.PIXm.Origen")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CapabilityStatement-MPI.IHE.PIXm.Origen.html");
  else if (id == "NID.IHE.HPD.Manager")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CapabilityStatement-NID.IHE.HPD.Manager.html");
  else if (id == "MPI.IHE.PIXm.Buscador")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CapabilityStatement-MPI.IHE.PIXm.Buscador.html");
  else if (id == "MPI.IHE.PDQm.Search.Cliente")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CapabilityStatement-MPI.IHE.PDQm.Search.Cliente.html");
  else if (id == "NID.IHE.HPD.Source")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/0.4.5/CapabilityStatement-NID.IHE.HPD.Source.html");
  else if (id == "index")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/nid/CapabilityStatement.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from /0.4.5/crcapabilitystatement.asp) .
</body>
</html>
