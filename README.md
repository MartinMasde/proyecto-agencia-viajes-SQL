# Agencia de Viajes Mayorista ✈
 <br> 
 
## Tematica del proyecto

Nuestro equipo de desarrollo esta trabajando en un sistema de gestión de reservas para una agencia de viajes mayorista. Nuestro objetivo es diseñar una base de datos eficiente que pueda manejar todas las operaciones relacionadas con las reservas, de una manera óptima y eficiente.

## Descripción del problema:

Gestión de Clientes y Empleados: Necesitamos una base de datos que nos permita registrar la información de los clientes que realizan reservas en nuestra agencias, ya sea individuos o agencias de viaje. Ademas es esencial poder gestionar la información de los empleados involucrados en el proceso de reserva.
Gestión de Reservas: Necesitamos un sistema que pueda registrar cada reserva realizada, incluyendo la fecha y la hora de la reserva, el cliente que la realizo, el empleado encargado de dicha reserva y que viaje reservo.
Gestión de Viajes y Paquetes Turísticos: Es importante poder clasificar y organizar los diferentes viajes y paquetes turísticos que ofrecemos, incluyendo detalles sobre, nombre, descripción, fechas y precio.
Gestión de Proveedores y Servicios: La base de datos debe permitirnos registrar y gestionar la información de los proveedores de servicios turísticos, como aerolíneas y hoteles.
Registro de inscripciones a Paquetes: Registra la inscripción de los clientes a los diferentes paquetes turísticos ofrecidos.

## Objetivo:
Diseñar e implementar una base de datos relacional que satisfaga todas las necesidades de gestión de reservas para nuestra agencia de viajes. Esta base de datos deberá ser eficiente, escalable y fácil de mantener, permitiendo una gestión ágil y precisa de todas las operaciones relacionadas con las reservas y la oferta de paquetes turísticos.

## Diagrama entidad relacion (DER)

![DER_AgenciaViajes](https://github.com/MartinMasde/proyecto-agencia-viajes-masdeayala/assets/132627081/2447c799-58d8-4059-af70-1332a849f285)

## Listado de Tablas

1.1 Tabla Cliente

1.2 Tabla Empleado

1.3 Tabla Reserva

1.4 Tabla Viaje

1.5 Tabla Reserva_Hotel

1.6 Tabla Hotel

1.7 Tabla Reserva_Vuelo

1.8 Tabla Vuelo

1.9 Tabla Cliente_Tour_Paquete

1.10 Tabla Tour_Paquete

1.11 Tabla Tour_Paquete_Viaje






## 1.1 Tabla Cliente

La tabla Cliente muestra información de todos los clientes.

La primary key de la tabla Cliente aparece como foreign key en las tablas, Reserva y Cliente_Tour_Paquete.

La tabla Cliente se une a la tabla Tour_Paquete mediante la tabla Cliente_Tour_Paquete.

### Columnas

![Captura de pantalla 2024-06-26 a la(s) 22 31 51](https://github.com/MartinMasde/proyecto-agencia-viajes-masdeayala/assets/132627081/86cef600-538c-40fd-afec-b669a1d250e5)


## 1.2 Tabla Empleado

La tabla Empleado muestra información de todos los empleados de la agencia que trabajan en atención al cliente, en reservas de viajes.

La primary key de la tabla Empleado aparece como foreign key en la tabla Reserva.

### Columnas

![Captura de pantalla 2024-06-26 a la(s) 22 50 44](https://github.com/MartinMasde/proyecto-agencia-viajes-masdeayala/assets/132627081/6cf17845-6e99-4fa6-96ae-34d0eb6a3d50)



## 1.3 Tabla Reserva

La tabla Reserva contiene información de las reservas de viajes hechas por un cliente.

La primary key de la tabla Reserva aparece como foreign key en las tablas Reserva_Vuelo y Reserva_Hotel

### Columnas

![Captura de pantalla 2024-06-26 a la(s) 22 51 48](https://github.com/MartinMasde/proyecto-agencia-viajes-masdeayala/assets/132627081/17062a62-a90a-4a88-a6e9-a4d893680735)



## 1.4 Tabla Viaje

La tabla Viaje representa un conjunto específico de servicios turísticos que la agencia de viajes organiza y ofrece.

La primary key de la tabla Viaje aparece como foreign key en las tablas Reserva y Tour_Paquete_Viaje.

### Columnas

![Captura de pantalla 2024-06-26 a la(s) 22 53 14](https://github.com/MartinMasde/proyecto-agencia-viajes-masdeayala/assets/132627081/eb6542ad-46bb-4532-b8f2-f13242bcc377)


## 1.5 Tabla Reserva_Hotel

La tabla Reserva_Hotel es una tabla intermedia entre Reserva y Hotel.

### Columnas

![Captura de pantalla 2024-06-27 a la(s) 17 33 41](https://github.com/MartinMasde/proyecto-agencia-viajes-masdeayala/assets/132627081/0c50fcb8-c6f3-4f91-8446-1e078f5be731)

## 1.6 Tabla Hotel

La tabla Hotel contiene la información relevante de los Hoteles.

La primary key de la tabla Hotel aparece como foreign key en la tabla intermedia Reserva_Hotel

### Columnas

![Captura de pantalla 2024-06-27 a la(s) 17 26 00](https://github.com/MartinMasde/proyecto-agencia-viajes-masdeayala/assets/132627081/c90ed26d-53f8-457a-80e0-4d9ae90f143c)

## 1.7 Tabla Reserva_Vuelo

La tabla Reserva_Vuelo es una tabla intermedia entre Reserva y Vuelo.


### Columnas

![Captura de pantalla 2024-06-27 a la(s) 17 26 26](https://github.com/MartinMasde/proyecto-agencia-viajes-masdeayala/assets/132627081/afd700da-9141-4fb0-95b1-e18f1434a2be)

## 1.8 Tabla Vuelo

La tabla contiene información relevante de los vuelos.

La primary key de la tabla Vuelo aparece como foreign key en la tabla intermedia Reserva_Vuelo.

### Columnas

![Captura de pantalla 2024-06-27 a la(s) 17 26 47](https://github.com/MartinMasde/proyecto-agencia-viajes-masdeayala/assets/132627081/207a24a1-b90e-4ef2-9950-de117a5fca1b)

## 1.9 Tabla Tour_Paquete

La tabla contiene información sobre los distintos paquetes de tour que se pueden hacer en determinado destino.

La primary key de la tabla Tour_Paquete aparece como foreign key en las tablas intermedias Cliente_Tour_Paquete y Tour_Paquete_Viaje.

### Columnas

![Captura de pantalla 2024-06-27 a la(s) 17 27 13](https://github.com/MartinMasde/proyecto-agencia-viajes-masdeayala/assets/132627081/ffc402a2-3519-4286-8978-ec6d1e9fe9d9)


















