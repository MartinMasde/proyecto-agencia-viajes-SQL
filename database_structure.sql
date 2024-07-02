DROP DATABASE IF EXISTS agencia_viajes;

CREATE DATABASE agencia_viajes;

USE agencia_viajes;

-- TABLAS DIMENSIONALES

-- TABLA CLIENTE
CREATE TABLE Cliente(
      idCliente INT AUTO_INCREMENT,
      Nombre VARCHAR(100),
      Apellido VARCHAR(100),
      Direccion VARCHAR(100),
      Telefono  VARCHAR(20) NOT NULL,
      Email VARCHAR(100) UNIQUE NOT NULL,
      TipoCLiente VARCHAR(10) NOT NULL COMMENT "INDICA SI ES UN CLIENTE TIPO PERSONA O AGENCIA",
  PRIMARY KEY (idCliente)
);

-- TABLA EMPLEADO
CREATE TABLE Empleado (
		idEmpleado INT AUTO_INCREMENT,
		Nombre VARCHAR(100) NOT NULL,
		Telefono VARCHAR(20) NOT NULL,
		Email VARCHAR(100) UNIQUE NOT NULL,
	PRIMARY KEY (idEmpleado)
);

-- TABLA VIAJE
CREATE TABLE Viaje (
		idViaje INT AUTO_INCREMENT,
		Destino VARCHAR(100),
		FechaSalida DATETIME,
		FechaRegreso DATETIME,
		Descripcion VARCHAR(250),
		Precio DECIMAL(10,2),
	PRIMARY KEY (idViaje)
);

-- TABLA RESERVA HOTEL
CREATE TABLE Reserva_Hotel (
		idReservaHotel INT AUTO_INCREMENT,
		idReserva INT,
		idHotel INT,
		FechaCheckIn DATETIME,
		FechaCheckOut DATETIME,
	PRIMARY KEY (idReservaHotel)
);

-- TABLA HOTEL
CREATE TABLE Hotel (
		idHotel INT AUTO_INCREMENT,
		Nombre VARCHAR(100) NOT NULL,
		Direccion VARCHAR(100),
		Telefono VARCHAR(20),
		PrecioPorNoche DECIMAL(10,2),
	PRIMARY KEY (idHotel)
);

-- TABLA RESERVA VUELO
CREATE TABLE Reserva_Vuelo (
		idReservaVuelo INT AUTO_INCREMENT,
		idReserva INT,
		idVuelo INT,
	PRIMARY KEY (idReservaVuelo)
);

-- TABLA VUELO
CREATE TABLE Vuelo (
		idVuelo INT AUTO_INCREMENT,
		Aerolinea VARCHAR(100) NOT NULL,
		NumeroVuelo VARCHAR(50) NOT NULL,
		FechaSalida DATETIME,
		FechaLlegada DATETIME,
		Origen VARCHAR(100),
		Destino VARCHAR(100),
		Precio DECIMAL (10,2),
	PRIMARY KEY (idVuelo)
);

-- TABLA RESERVA
CREATE TABLE Reserva (
		idReserva INT AUTO_INCREMENT,
		FechaReserva DATETIME,
		FechaViaje DATETIME,
		idCliente INT,
		idViaje INT,
		idEmpleado INT,
	PRIMARY KEY (idReserva)
);

-- TABLA TOUR_PAQUETE
CREATE TABLE Tour_Paquete (
		idTourPaquete INT AUTO_INCREMENT,
		Nombre VARCHAR(100),
		Descripcion VARCHAR(250),
		RechaReserva DATETIME,
		Precio DECIMAL(10,2),
	PRIMARY KEY (idTourPaquete)
);

-- TABLA CLIENTE_TOUR_PAQUETE
CREATE TABLE Cliente_Tour_Paquete (
		idClienteTourPaquete INT AUTO_INCREMENT,
		idTourPaquete INT,
		idCliente  INT,
	PRIMARY KEY (idClienteTourPaquete)
);

-- TABLA TOUR_PAQUETE_VIAJE
CREATE TABLE Tour_Paquete_viaje (
		idTourPaqueteViaje INT AUTO_INCREMENT,
		idTourPaquete INT,
		idViaje INT,
	PRIMARY KEY (idTourPaqueteViaje)
);


-- FOREIGN KEYS DEFINITION

-- RESERVAS
ALTER TABLE Reserva ADD CONSTRAINT fk_reserva_cliente FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente);
ALTER TABLE Reserva ADD CONSTRAINT fk_reserva_viaje FOREIGN KEY (idViaje) REFERENCES Viaje (idViaje);
ALTER TABLE Reserva ADD CONSTRAINT fk_reserva_empleado FOREIGN KEY (idEmpleado) REFERENCES Empleado (idEmpleado);

-- RESERVA HOTEL
ALTER TABLE Reserva_Hotel ADD CONSTRAINT fk_reserva_hotel_reserva FOREIGN KEY (idReserva) REFERENCES Reserva (idReserva);
ALTER TABLE Reserva_Hotel ADD CONSTRAINT fk_reserva_hotel_hotel FOREIGN KEY (idHotel) REFERENCES Hotel (idHotel);

-- RESERVA VUELO
ALTER TABLE Reserva_Vuelo  ADD CONSTRAINT fk_reserva_vuelo_reserva FOREIGN KEY (idReserva) REFERENCES Reserva (idReserva);
ALTER TABLE Reserva_Vuelo  ADD CONSTRAINT fk_reserva_vuelo_vuelo FOREIGN KEY (idVuelo) REFERENCES Vuelo (idVuelo);

-- CLIENTE TOUR PAQUETE
ALTER TABLE Cliente_Tour_Paquete ADD CONSTRAINT fk_Cliente_Tour_Paquete_Tour_Paquete FOREIGN KEY (idTourPaquete) REFERENCES Tour_Paquete (idTourPaquete);
ALTER TABLE Cliente_Tour_Paquete ADD CONSTRAINT fk_Cliente_Tour_Paquete_Cliente FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente);

-- TOUR PAQUETE VIAJE
ALTER TABLE Tour_Paquete_Viaje ADD CONSTRAINT fk_Tour_Paquete_Viaje_Tour_Paquete FOREIGN KEY (idTourPaquete) REFERENCES Tour_Paquete (idTourPaquete);
ALTER TABLE Tour_Paquete_Viaje ADD CONSTRAINT fk_Tour_Paquete_Viaje_Viaje FOREIGN KEY (idViaje) REFERENCES Viaje (idViaje);
