<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition-"+id+".xml");
  else if (id == "eis-nombre-social")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/StructureDefinition-eis-nombre-social.html");
  else if (id == "deis-identifier")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/StructureDefinition-deis-identifier.html");
  else if (id == "ModeloLogicoEISRUN")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/StructureDefinition-ModeloLogicoEISRUN.html");
  else if (id == "eis-comunas")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/StructureDefinition-eis-comunas.html");
  else if (id == "eis-paises")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/StructureDefinition-eis-paises.html");
  else if (id == "eis-regiones")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/StructureDefinition-eis-regiones.html");
  else if (id == "ModeloLogicoEISNombre")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/StructureDefinition-ModeloLogicoEISNombre.html");
  else if (id == "eis-nombre-oficial")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/StructureDefinition-eis-nombre-oficial.html");
  else if (id == "ModeloLogicoEISDireccion")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/StructureDefinition-ModeloLogicoEISDireccion.html");
  else if (id == "eis-provincias")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/StructureDefinition-eis-provincias.html");
  else if (id == "SegundoApellido")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/StructureDefinition-SegundoApellido.html");
  else if (id == "eis-tipo-de-via")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/StructureDefinition-eis-tipo-de-via.html");
  else if (id == "eis-direccion")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/0.2.0/StructureDefinition-eis-direccion.html");
  else if (id == "index")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/eis/StructureDefinition.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \0.2.0\crstructuredefinition.asp) .
</body>
</html>
