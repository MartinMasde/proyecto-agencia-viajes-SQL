USE agencia_viajes;

SET GLOBAL local_infile = true;

-- INYECCION DE DATOS POR CONSOLA
-- Al conectarme por terminal a el servidor
-- debo agregarle al flag (parametro) --local-infile=1
-- mysql -u root -p --host 127.0.0.1 --port 3306 --local-infile=1;


-- Cliente 100 records  
LOAD DATA LOCAL INFILE '/structure/data-csv/Cliente.csv'
INTO TABLE Cliente  
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Nombre, Apellido, Direccion, Telefono, Email, TipoCliente);

-- Empleado 20 records  
LOAD DATA LOCAL INFILE '/structure/data-csv/Empleado.csv'
INTO TABLE Empleado  
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Nombre, Telefono, Email);

-- Hotel 200 records
LOAD DATA LOCAL INFILE '/structure/data-csv/Hotel.csv'
INTO TABLE Hotel  
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Nombre, Direccion, Telefono, PrecioPorNoche);

-- Viaje 150 records
LOAD DATA LOCAL INFILE '/structure/data-csv/Viaje.csv'
INTO TABLE Viaje  
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Destino, FechaSalida, FechaRegreso, Descripcion, Precio);

-- Vuelo 200 records
LOAD DATA LOCAL INFILE '/structure/data-csv/Vuelo.csv'
INTO TABLE Vuelo 
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Aerolinea, NumeroVuelo, FechaSalida, FechaLlegada, Origen, Destino, Precio);

-- Tour_Paquete 30 records
LOAD DATA LOCAL INFILE '/structure/data-csv/Tour_Paquete.csv'
INTO TABLE Tour_Paquete  
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Nombre, Descripcion, FechaReserva, Precio);

-- Reserva 200 records
LOAD DATA LOCAL INFILE '/structure/data-csv/Reserva.csv'
INTO TABLE Reserva  
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(FechaReserva, FechaViaje, idCliente, idViaje, idEmpleado);

-- Reserva_Hotel 125 records
LOAD DATA LOCAL INFILE '/structure/data-csv/Reserva_Hotel.csv'
INTO TABLE Reserva_Hotel  
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(idReserva, idHotel, FechaCheckIn, FechaCheckOut);

-- Reserva_Vuelo 100 records
LOAD DATA LOCAL INFILE '/structure/data-csv/Reserva_Vuelo.csv'
INTO TABLE Reserva_Vuelo  
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(idReserva, idVuelo);

-- Cliente_Tour_Paquete 50 records
LOAD DATA LOCAL INFILE '/structure/data-csv/Cliente_Tour_Paquete.csv'
INTO TABLE Cliente_Tour_Paquete  
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(idTourPaquete, idCliente);

-- Tour_Paquete_Viaje 50 records
LOAD DATA LOCAL INFILE '/structure/data-csv/Tour_Paquete_Viaje.csv'
INTO TABLE Tour_Paquete_Viaje  
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(idTourPaquete, idViaje);
