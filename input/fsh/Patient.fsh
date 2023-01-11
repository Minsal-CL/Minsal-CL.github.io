Profile: PacienteLP
Parent: PatientCL
Id: PacienteLP
Title: "PacienteLP"
Description: "PacienteLP"

// EXTESIONES
* extension contains PaisOrigenNacionalidadCl named nacionalidad 1..1 MS
* extension contains PaisOrigenNacionalidadCl named paisOrigen 1..1 MS
* extension contains IdentidadGenero named IdentidadGenero 1..1 MS
* extension contains PertenecienteEtnia named PertenecienteEtnia 1..1 MS
* extension contains Etnia named Etnia 1..1 MS
* extension contains Etniatexto named Etniatexto 1..1 MS
* extension contains Afrodescendiente named Afrodescendiente 1..1 MS

// FIN EXTENSIONES





* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice creado para almacenar diferentes tipos de identificación"
* identifier contains identificacionPrincipal 1..1 MS and otraIdentificacion 0..1 MS

//* identifier[ide] MS
  //* use and type MS
    //* coding MS
      //* system and code MS
* identifier[identificacionPrincipal] MS
* identifier[identificacionPrincipal].type 1..1 MS
* identifier[identificacionPrincipal].value 1..1 MS

* identifier[otraIdentificacion] MS
* identifier[otraIdentificacion].type 1..1 MS
* identifier[otraIdentificacion].value 1..1 MS

* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name ^slicing.description = "Slice creado para almacenar nombre y nombresocial"
* name contains identificacionPrincipal 1..1 MS and otraIdentificacion 0..1 MS

* name 1..1 MS
  * given 1..1 MS
  * text 1..1 MS
* name.use = #official  
* birthDate 1..1 MS

* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "use"
* telecom ^slicing.rules = #open
* telecom ^slicing.description = "Slice creado para almacenar diferentes contactos"
* telecom contains contacto1 1..1 MS and contacto2 1..1 MS and contacto3 1..1 MS

* telecom[contacto1].rank = 1
* telecom[contacto1].system = #hone  
* telecom[contacto2].rank = 2
* telecom[contacto3].rank = 3
