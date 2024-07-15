USE agencia_viajes;

-- Vista para mostrar las Reservas de Viajes de un CLiente
-- Dado el nombre de un cliente se mostraran las reservas que dicho cliente tiene hechas ordenas por fechas de manera ascendente
CREATE VIEW ReservasCliente AS
SELECT 
    CONCAT (Cliente.Nombre, ' ', Cliente.Apellido) AS NombreCompleto,
    Cliente.Direccion,
    Cliente.Telefono,
    Cliente.Email,
    Cliente.TipoCliente,
    Reserva.FechaReserva,
	  Viaje.Destino,
    Viaje.FechaSalida,
    Viaje.FechaRegreso,
    Viaje.Descripcion AS DescripcionViaje,
    Viaje.Precio
FROM 
    Cliente
JOIN 
    Reserva ON Cliente.idCliente = Reserva.idCliente
JOIN 
	Viaje ON Reserva.idViaje = Viaje.idViaje
ORDER BY Reserva.FechaReserva ASC;
