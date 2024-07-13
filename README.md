![agenciaimagen](https://github.com/MartinMasde/proyecto-agencia-viajes-masdeayala/assets/132627081/e28e1bcc-9a59-4068-a63e-7fc5618a5949)


# <center>Primera Entrega </center>

@Alumno: Martin Mas de Ayala

@Comision: #57190

@Tutor: Ariel Annone

@Docente: Anderson Michel Torres


# Agencia de Viajes Mayorista ✈
 <br> 
 
## Tematica del proyecto

Nuestro equipo de desarrollo esta trabajando en un sistema de gestión de reservas para una agencia de viajes mayorista. Nuestro objetivo es diseñar una base de datos eficiente que pueda manejar todas las operaciones relacionadas con las reservas, de una manera óptima y eficiente.

## Modelo de negocio:

**Gestión de Clientes y Empleados:** Necesitamos una base de datos que nos permita registrar la información de los clientes que realizan reservas en nuestra agencias, ya sea individuos o agencias de viaje. Ademas es esencial poder gestionar la información de los empleados involucrados en el proceso de reserva.

**Gestión de Reservas:** Necesitamos un sistema que pueda registrar cada reserva realizada, incluyendo la fecha y la hora de la reserva, el cliente que la realizo, el empleado encargado de dicha reserva y que viaje reservo.

**Gestión de Viajes y Paquetes Turísticos:** Es importante poder clasificar y organizar los diferentes viajes y paquetes turísticos que ofrecemos, incluyendo detalles sobre, nombre, descripción, fechas y precio.
**Gestión de Proveedores y Servicios:** La base de datos debe permitirnos registrar y gestionar la información de los proveedores de servicios turísticos, como aerolíneas y hoteles.

**Registro de inscripciones a Paquetes:** Registra la inscripción de los clientes a los diferentes paquetes turísticos ofrecidos.

## Objetivo:
Diseñar e implementar una base de datos relacional que satisfaga todas las necesidades de gestión de reservas para nuestra agencia de viajes. Esta base de datos deberá ser eficiente, escalable y fácil de mantener, permitiendo una gestión ágil y precisa de todas las operaciones relacionadas con las reservas y la oferta de paquetes turísticos.

## Diagrama entidad relacion (DER)

![DERAgenciaViajes](https://github.com/MartinMasde/proyecto-agencia-viajes-masdeayala/assets/132627081/08069573-26b5-4146-8ddd-8e1fc4580116)

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

![Captura de pantalla 2024-07-01 a la(s) 19 26 52](https://github.com/MartinMasde/proyecto-agencia-viajes-masdeayala/assets/132627081/3533b159-6569-43ec-8b1a-5ffb7f587027)


## 1.2 Tabla Empleado

La tabla Empleado muestra información de todos los empleados de la agencia que trabajan en atención al cliente, en reservas de viajes.

La primary key de la tabla Empleado aparece como foreign key en la tabla Reserva.

### Columnas

![Captura de pantalla 2024-07-01 a la(s) 19 27 35](https://github.com/MartinMasde/proyecto-agencia-viajes-masdeayala/assets/132627081/1fa8930d-bb12-4eeb-9931-cbba888d719b)


## 1.3 Tabla Reserva

La tabla Reserva contiene información de las reservas de viajes hechas por un cliente.

La primary key de la tabla Reserva aparece como foreign key en las tablas Reserva_Vuelo y Reserva_Hotel

### Columnas

![Captura de pantalla 2024-07-01 a la(s) 19 28 19](https://github.com/MartinMasde/proyecto-agencia-viajes-masdeayala/assets/132627081/43c31042-e2e7-4e69-a2ae-fdb620b080be)


## 1.4 Tabla Viaje

La tabla Viaje representa un conjunto específico de servicios turísticos que la agencia de viajes organiza y ofrece.

La primary key de la tabla Viaje aparece como foreign key en las tablas Reserva y Tour_Paquete_Viaje.

### Columnas

![Captura de pantalla 2024-07-01 a la(s) 19 28 49](https://github.com/MartinMasde/proyecto-agencia-viajes-masdeayala/assets/132627081/a57d12de-9305-4ce3-8186-97f16d5703cc)


## 1.5 Tabla Reserva_Hotel

La tabla Reserva_Hotel es una tabla intermedia entre Reserva y Hotel.

### Columnas

![Captura de pantalla 2024-07-01 a la(s) 19 29 29](https://github.com/MartinMasde/proyecto-agencia-viajes-masdeayala/assets/132627081/f3750ad8-95dd-42a5-b784-d870095786ec)

## 1.6 Tabla Hotel

La tabla Hotel contiene la información relevante de los Hoteles.

La primary key de la tabla Hotel aparece como foreign key en la tabla intermedia Reserva_Hotel

### Columnas

![Captura de pantalla 2024-07-01 a la(s) 19 29 56](https://github.com/MartinMasde/proyecto-agencia-viajes-masdeayala/assets/132627081/c0b76852-20d4-453d-91a9-0aa79fc69699)

## 1.7 Tabla Reserva_Vuelo

La tabla Reserva_Vuelo es una tabla intermedia entre Reserva y Vuelo.


### Columnas

![Captura de pantalla 2024-07-01 a la(s) 19 30 42](https://github.com/MartinMasde/proyecto-agencia-viajes-masdeayala/assets/132627081/f54a0a63-5c46-484d-8850-f52a22743d34)

## 1.8 Tabla Vuelo

La tabla contiene información relevante de los vuelos.

La primary key de la tabla Vuelo aparece como foreign key en la tabla intermedia Reserva_Vuelo.

### Columnas

![Captura de pantalla 2024-07-01 a la(s) 19 31 24](https://github.com/MartinMasde/proyecto-agencia-viajes-masdeayala/assets/132627081/48afb241-8970-47eb-a29b-7291698efa6a)


## 1.9 Tabla Tour_Paquete

La tabla contiene información sobre los distintos paquetes de tour que se pueden hacer en determinado destino.

La primary key de la tabla Tour_Paquete aparece como foreign key en las tablas intermedias Cliente_Tour_Paquete y Tour_Paquete_Viaje.

### Columnas

![Captura de pantalla 2024-07-01 a la(s) 19 32 13](https://github.com/MartinMasde/proyecto-agencia-viajes-masdeayala/assets/132627081/c8d635ce-3b85-4c5b-b14c-6c6cbe707622)

## 1.10 Tabla Cliente_Tour_Paquete

La tabla Cliente_Tour_Paquete es una tabla intermedia entre Cliente y Tour_Paquete

### Columnas

![Captura de pantalla 2024-07-01 a la(s) 19 59 50](https://github.com/MartinMasde/proyecto-agencia-viajes-masdeayala/assets/132627081/ab236ce9-65e0-45d3-998a-aabd0bf5f140)

## 1.11 Tabla Tour_Paquete_Viaje

La tabla Tour_Paquete_Viaje es una tabla intermedia entre Viaje y Tour_Paquete

### Columnas

![Captura de pantalla 2024-07-01 a la(s) 20 01 16](https://github.com/MartinMasde/proyecto-agencia-viajes-masdeayala/assets/132627081/fa641c38-fa01-40fc-bcd5-15386271c4f7)


## Estructura e ingesta de datos
* Se realiza principalemte por medio del archivo data_ingestion.sql
* Las carga de las tablas: Reserva, Viaje, Hotel, Vuelo, Tour_Paquete, Cliente_Tour_Paquete y Tour_Paquete_Viaje se realizan por medio de sus archivos .csv respectivos, dichos archivos se encuentran en el directorio ./structure/data-csv

## Objetos de la base de datos


## Documentación de Vistas
### Vista: ReservasPorFecha















