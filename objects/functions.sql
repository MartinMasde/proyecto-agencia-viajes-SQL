USE agencia_viajes;

DROP FUNCTION IF EXISTS reservas_empleado_periodo;
DROP FUNCTION IF EXISTS CalcularPrecioConDescuento;

-- Funcion para contar las reservas de un empleado en un intervalo de tiempo:

DELIMITER //
	
CREATE FUNCTION reservas_empleado_periodo(empleado_id INT, fecha_inicio DATETIME, fecha_fin DATETIME) RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN
	DECLARE reservas_count INT;
    
    SELECT COUNT(*) INTO reservas_count
    FROM Reserva
    WHERE empleado_id = idEmpleado
    AND FechaReserva >= fecha_inicio
    AND FechaReserva <= fecha_fin;
    
    RETURN reservas_count;
END //

DELIMITER ;

-- Función para calcular el precio por noche de una habitación de hotel, con descuento de 10% por mas de 5 noches

DELIMITER //
	
CREATE FUNCTION CalcularPrecioConDescuento(Hotel_id INT, FechaCheckIn DATE, FechaCheckOut DATE) RETURNS DECIMAL(10, 2)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE PrecioOriginal DECIMAL(10, 2);
    DECLARE TotalNoches INT;
    DECLARE PrecioConDescuento DECIMAL(10, 2);

    -- Obtener el precio por noche del hotel y guardarlo en PrecioOriginal
    SELECT PrecioPorNoche
    INTO PrecioOriginal
    FROM Hotel
    WHERE Hotel_id = idHotel;

    -- Calcular el total de noches
    SET TotalNoches = DATEDIFF(FechaCheckOut, FechaCheckIn);

    -- Si las noches son más de 5, aplicar descuento del 10%
    IF TotalNoches > 5 THEN
        SET PrecioConDescuento = PrecioOriginal * 0.9;
    ELSE
        SET PrecioConDescuento = PrecioOriginal;
    END IF;

    RETURN PrecioConDescuento;
END //

DELIMITER ;
