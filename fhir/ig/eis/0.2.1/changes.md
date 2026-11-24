# Historial de Cambios - Guía de Estandares de Información de Salud v0.2.1

* [**Table of Contents**](toc.md)
* **Historial de Cambios**

## Historial de Cambios

### Versión 0.2.1

Corrección técnica de la 0.2.0. No cambia códigos, sistemas de códigos, nombres de artefactos, identificadores (OID) ni dependencias; esos cambios requieren el acuerdo de DEIS y una versión nueva de EIS. Es necesaria para que las guías que dependen de EIS, como NID, puedan validar la dirección con una versión publicada.

Correcciones de errores:

* El ValueSet de regiones (eis-regiones-vs) incluye los códigos del CodeSystem de regiones (eis-regiones-cs) y no los de previsión de salud.

Correcciones de empaquetado, para que la fuente compile y reproduzca el paquete publicado:

* La extensión de coordenadas de la dirección (eis-direccion) usa geolocation sin versión fija, porque la versión 5.3.0 no se resuelve.
* El tipo del identificador se asigna como CodeableConcept y no por `coding`, y las coordenadas del modelo lógico de dirección son de tipo Element.
* Las dependencias de terminología (7.3.0) y extensiones (5.3.0) quedan fijas en las versiones con que se publicó la 0.2.0.
* La raíz de OID automáticos vuelve a ser `2.16.840.1.113883.2.22`, la de la 0.2.0 publicada, para que los recursos conserven sus identificadores.
* El título y la descripción del ValueSet de nacionalidad, y el idioma y la inclusión de ISO 3166 numérico del ValueSet de país de emisión, vuelven a ser los del paquete publicado: la fuente se había apartado de él.

### Versión 0.2.0

Actualización segun norma en espera de validacion del DEIS

### Versión 0.1.1

Primera versión de prueba para la publicación

