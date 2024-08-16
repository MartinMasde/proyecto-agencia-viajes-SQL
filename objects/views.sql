USE agencia_viajes;

DROP VIEW IF EXISTS ReservasCliente;
DROP VIEW IF EXISTS DestinoConMasReservas;
DROP VIEW IF EXISTS CantidadReservasPorEmpleado;

-- Vista para mostrar las Reservas de Viajes de un Cliente
-- Dado el nombre de un cliente se mostraran las reservas que dicho cliente tiene hechas ordenas por fechas de manera ascendente
CREATE VIEW 
	ReservasCliente AS
SELECT 
	CONCAT (C.Nombre, ' ', C.Apellido) AS NombreCompleto,
	C.Direccion,
	C.Telefono,
	C.Email,
	C.TipoCliente,
	R.FechaReserva,
	V.Destino,
	V.FechaSalida,
	V.FechaRegreso,
	V.Descripcion AS DescripcionViaje,
	V.Precio
FROM 
	Cliente C
	JOIN Reserva R ON C.idCliente = R.idCliente
	JOIN Viaje V ON R.idViaje = V.idViaje
ORDER BY 
	R.FechaReserva ASC;

-- Vista para los Destinos de Viaje con mas Reservas
-- Esta vista mostrara los destinos de viaje con mas cantidad de reservas hechas
CREATE VIEW 
	DestinoConMasReservas AS
SELECT 
	V.Destino,
	COUNT(R.idReserva) AS TotalReservas
FROM 
	Viaje V
	JOIN Reserva R ON V.idViaje = R.idViaje
GROUP BY 
	V.Destino;

-- Vista cantidad Reservas hechas por los Empleados
-- Esta vista mostrara el total de reservas hechas por cada empleado de la agencia
CREATE VIEW 
	CantidadReservasPorEmpleado AS
SELECT
	E.Nombre,
	E.Email,
	COUNT(R.idReserva) AS TotalReservas
FROM
	Empleado E
	JOIN Reserva R On E.idEmpleado = R.idEmpleado
GROUP BY 
	E.Nombre, 
	E.Email;

-- Vista para mostrar los 10 clientes con menos reservas hechas

CREATE VIEW 
	ClientesConMenosReservas AS
SELECT
	C.idCliente,
	C.Nombre,
	C.Apellido,
	COUNT(R.idReserva) AS TotalReservas
FROM
	Cliente C
	LEFT JOIN Reserva R ON C.idCliente = R.idCliente
GROUP BY
	C.Nombre,
	C.Apellido
ORDER BY
	TotalReservas ASC
LIMIT 10;

-- Vista para mostrar los 10 clientes con mas reservas hechas y el detalle de las mismas ordenadas por fecha de reserva de manera ascendente

CREATE VIEW 
	ClientesConMasReservas AS
SELECT
	C.idCliente,
	C.Nombre,
	C.Apellido,
	COUNT(R.idReserva) AS TotalReservas
FROM
	Cliente C
	LEFT JOIN Reserva R ON C.idCliente = R.idCliente
GROUP BY
	C.Nombre,
	C.Apellido
ORDER BY
	TotalReservas DESC
LIMIT 10;

