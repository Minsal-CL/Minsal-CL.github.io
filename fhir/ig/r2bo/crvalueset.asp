<%@ language="javascript"%>

<%
  var s = String(Request.ServerVariables("HTTP_ACCEPT"));
  var id = Request.QueryString("id");
  if (s.indexOf("application/json+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet-"+id+".json2");
  else if (s.indexOf("application/fhir+json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet-"+id+".json1");
  else if (s.indexOf("application/xml+fhir") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet-"+id+".xml2");
  else if (s.indexOf("application/fhir+xml") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet-"+id+".xml1");
  else if (s.indexOf("json") > -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet-"+id+".json");
  else if (s.indexOf("html") == -1) 
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet-"+id+".xml");
  else if (id == "r2bo-hallazgos-clinicos-cie10-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/ValueSet-r2bo-hallazgos-clinicos-cie10-VS.html");
  else if (id == "r2bo-topografica-cieo-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/ValueSet-r2bo-topografica-cieo-VS.html");
  else if (id == "r2bo-morfologicosct-cieo-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/ValueSet-r2bo-morfologicosct-cieo-VS.html");
  else if (id == "r2bo-profesional-autorizado-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/ValueSet-r2bo-profesional-autorizado-VS.html");
  else if (id == "r2bo-observaciones-biopsia-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/ValueSet-r2bo-observaciones-biopsia-VS.html");
  else if (id == "r2bo-reporte-biopsia-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/ValueSet-r2bo-reporte-biopsia-vs.html");
  else if (id == "r2bo-tnm-categoria-tumor-primario-patologico-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/ValueSet-r2bo-tnm-categoria-tumor-primario-patologico-vs.html");
  else if (id == "r2bo-categoria-reporte-biopsia-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/ValueSet-r2bo-categoria-reporte-biopsia-vs.html");
  else if (id == "r2bo-procedimientos-biopsias-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/ValueSet-r2bo-procedimientos-biopsias-VS.html");
  else if (id == "r2bo-tnm-categoria-nodo-regional-patologico-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/ValueSet-r2bo-tnm-categoria-nodo-regional-patologico-vs.html");
  else if (id == "r2bo-hallazgos-clinicos-cie11-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/ValueSet-r2bo-hallazgos-clinicos-cie11-VS.html");
  else if (id == "r2bo-tipo-especimen-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/ValueSet-r2bo-tipo-especimen-vs.html");
  else if (id == "r2bo-categorias-pTNM-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/ValueSet-r2bo-categorias-pTNM-VS.html");
  else if (id == "r2bo-grado-diferenciacion-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/ValueSet-r2bo-grado-diferenciacion-vs.html");
  else if (id == "r2bo-morfologicos-cie11-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/ValueSet-r2bo-morfologicos-cie11-VS.html");
  else if (id == "r2bo-topografica-cie11-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/ValueSet-r2bo-topografica-cie11-VS.html");
  else if (id == "r2bo-tnm-categoria-metastasis-distante-patologico-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/ValueSet-r2bo-tnm-categoria-metastasis-distante-patologico-vs.html");
  else if (id == "r2bo-estructuras-anatomicas-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/ValueSet-r2bo-estructuras-anatomicas-VS.html");
  else if (id == "r2bo-especialistas-autorizado-VS")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/ValueSet-r2bo-especialistas-autorizado-VS.html");
  else if (id == "r2bo-Estadificacion-patologico-vs")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/0.3.2/ValueSet-r2bo-Estadificacion-patologico-vs.html");
  else if (id == "index")
    Response.Redirect("https://interoperabilidad.minsal.cl/fhir/ig/r2bo/ValueSet.html");

%>

<!DOCTYPE html>
<html>
<body>
Internal Error - unknown id <%= Request.QueryString("id") %> (from .minsal.r2bo#0.3.2-milestone\output\crvalueset.asp) .
</body>
</html>
