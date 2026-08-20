<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition-"+id+".xml");
  else if (id == "r2bo-bundle-generar-notificacion")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.0-draft/StructureDefinition-r2bo-bundle-generar-notificacion.html");
  else if (id == "r2bo-categoria-tnm")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.0-draft/StructureDefinition-r2bo-categoria-tnm.html");
  else if (id == "r2bo-tnm-categoria-tumor-primario")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.0-draft/StructureDefinition-r2bo-tnm-categoria-tumor-primario.html");
  else if (id == "r2bo-solicitud-informe-apa")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.0-draft/StructureDefinition-r2bo-solicitud-informe-apa.html");
  else if (id == "ModeloLogicoInformePatologicoR2BO")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.0-draft/StructureDefinition-ModeloLogicoInformePatologicoR2BO.html");
  else if (id == "r2bo-muestra-biopsia")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.0-draft/StructureDefinition-r2bo-muestra-biopsia.html");
  else if (id == "r2bo-tnm-categoria-metastasis-distante")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.0-draft/StructureDefinition-r2bo-tnm-categoria-metastasis-distante.html");
  else if (id == "r2bo-Addenda-Reportebiopsia")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.0-draft/StructureDefinition-r2bo-Addenda-Reportebiopsia.html");
  else if (id == "r2bo-informe-biopsia")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.0-draft/StructureDefinition-r2bo-informe-biopsia.html");
  else if (id == "r2bo-servicio-solicitante")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.0-draft/StructureDefinition-r2bo-servicio-solicitante.html");
  else if (id == "ModeloLogicoPacienteR2BO")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.0-draft/StructureDefinition-ModeloLogicoPacienteR2BO.html");
  else if (id == "r2bo-resultados-reporte-biopsia")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.0-draft/StructureDefinition-r2bo-resultados-reporte-biopsia.html");
  else if (id == "r2bo-rol-profesional-minsal")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.0-draft/StructureDefinition-r2bo-rol-profesional-minsal.html");
  else if (id == "r2bo-estadificacion-tnm")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.0-draft/StructureDefinition-r2bo-estadificacion-tnm.html");
  else if (id == "r2bo-extension-grado-diferenciacion")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.0-draft/StructureDefinition-r2bo-extension-grado-diferenciacion.html");
  else if (id == "r2bo-tnm-categoria-nodo-regional")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.0-draft/StructureDefinition-r2bo-tnm-categoria-nodo-regional.html");
  else if (id == "index")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/StructureDefinition.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from \0.3.0-draft\crstructuredefinition.asp) .
</body>
</html>
