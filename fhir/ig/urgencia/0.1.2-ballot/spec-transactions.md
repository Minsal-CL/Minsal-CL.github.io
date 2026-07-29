# Transacciones - Atención de Urgencia Interoperable v0.1.2-ballot

* [**Table of Contents**](toc.md)
* **Transacciones**

## Transacciones

El perfil transversal para todo el proceso de Urgencia será el encounter con el `identifier` del encuentro (idurgencia).

### Transacción evento Admisión

#### Descripción

| | | |
| :--- | :--- | :--- |
| Admisión | Según la Norma Técnica NGT 149 indica que: La Admisión es el subproceso auxiliar y administrativo del proceso de atención de urgencias, de soporte, que tributa al principal proceso correspondiente a la atención. En él se lleva a cabo la recepción del usuario, apertura del Dato de Atención de Urgencia (DAU) e instalación de brazalete de identificación con doble verificador, esto a partir del registro de datos sociodemográficos relevantes, habilitando así el registro de los cuidados y prestaciones ejecutados durante el subproceso clínico de atención de urgencias. (MINSAL, Norma Técnica Estándares de Datos de atención de Urgencia (No Oficial), 2023) | La respuesta debe indicar si hay errores o indicar que los recursos han sido creados exitosamente |

#### Diagrama de secuencia

El evento admisión debe soportar la siguiente secuencia:

#### Semántica del mensaje

##### Request

La semántica del mensaje para la transacción del evento Admisión usa el `bundle` que es un bundle de tipo `transaction`, que incluye toda la información asociada al evento `Admisión`, esta información va representada de manera general en el `Encounter`.

##### Response

La respuesta al mensaje enviado debe ser un `OperationOutcome` que contiene los detalles de la transacción.

#### Precondiciones

No existen precondiciones para este evento.

#### Acciones esperadas

* Creación de una admisión de urgencia para un paciente

### Transacción evento Categorización

#### Descripción

| | | |
| :--- | :--- | :--- |
| Categorización | Corresponde a la “priorización de los pacientes de manera de identificar aquellos que no pueden esperar a ser atendidos”. Esta priorización de la atención permite gestionar la demanda, identificando cuánto tiempo pueden esperar los pacientes su atención médica, en base a la información clínica registrada se puede realizar la categorización en 5 niveles posibles de priorización, Pacientes en situación de alto riesgo (C1, C2), paciente complejo(C3), paciente de menor complejidad (C4, C5). (MINSAL, Norma Técnica Estándares de Datos de atención de Urgencia (No Oficial), 2023) | La respuesta debe indicar si hay errores o indicar que los recursos han sido creados exitosamente |

#### Diagrama de secuencia

El evento Categorización debe soportar la siguiente secuencia:

#### Semántica del mensaje

##### Request

La semántica del mensaje para la transacción del evento Categorización usa el `bundle` que es un bundle de tipo `transaction`, que incluye toda la información asociada al evento `Categorización`, esta información va representada de manera general en el `Encounter`.

##### Response

La respuesta al mensaje enviado debe ser un `OperationOutcome` que contiene los detalles de la transacción.

#### Precondiciones

* Debe existir un paciente creado
* Debe haber sido creada una admisión de paciente

#### Acciones esperadas

* Creación de una categorización de urgencia para un paciente

### Transacción evento Atención

#### Descripción

| | | |
| :--- | :--- | :--- |
| Atención | Este evento corresponde al conjunto de actividades clínicas y administrativas que se llevan a cabo en la urgencia con el fin de diagnosticar y reestablecer el estado de salud del usuario. Estas actividades son realizadas por parte del equipo clínico a cargo de la urgencia, durante el proceso de atención el paciente puede sufrir interconsultas a múltiples profesionales dependiendo de su condición de salud. | La respuesta debe indicar si hay errores o indicar que los recursos han sido creados exitosamente |

#### Diagrama de secuencia

El evento Atención debe soportar la siguiente secuencia:

#### Semántica del mensaje

##### Request

La semántica del mensaje para la transacción del evento Atención usa el `bundle` que es un bundle de tipo `transaction`, que incluye toda la información asociada al evento `Atención`, esta información va representada de manera general en el `Encounter`. Adicionalmente, para aquellos establecimientos que puedan generar encuentros de atención diferenciados por profesional durante la atención del paciente, estos pueden ser incluidos como parte del encuentro general.

##### Response

La respuesta al mensaje enviado debe ser un `OperationOutcome` que contiene los detalles de la transacción.

#### Precondiciones

* Debe existir un paciente creado
* Debe haber sido creada una admisión de paciente

#### Acciones esperadas

* Creación de una atención de urgencia para un paciente

### Transacción evento Egreso

#### Descripción

| | | |
| :--- | :--- | :--- |
| Egreso | El evento de egreso se realiza al finalizar la atención del paciente, en donde posterior a hacer la evaluación y tratamiento, el profesional toma la decisión de terminar con la atención. El hito es el cierre del dato de urgencia (DAU), el cual debe ser entregado al usuario o tutor, en el caso de destino ambulatorio o adjuntar a la documentación en caso de derivación u hospitalización (ficha clínica). | La respuesta debe indicar si hay errores o indicar que los recursos han sido creados exitosamente |

#### Diagrama de secuencia

El evento Egreso debe soportar la siguiente secuencia:

#### Semántica del mensaje

##### Request

La semántica del mensaje para la transacción del evento Egreso usa el `bundle` que es un bundle de tipo `transaction`, que incluye toda la información asociada al evento `Egreso`, esta información va representada de manera general en el `Encounter`.

##### Response

La respuesta al mensaje enviado debe ser un `OperationOutcome` que contiene los detalles de la transacción.

#### Precondiciones

* Debe existir un paciente creado
* Debe haber sido creada una admisión de paciente

#### Acciones esperadas

* Creación de un egreso de urgencia para un paciente

