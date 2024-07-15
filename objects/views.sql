USE agencia_viajes;

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

