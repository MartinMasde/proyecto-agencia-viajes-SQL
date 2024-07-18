USE agencia_viajes;

DROP FUNCTION IF EXISTS reservas_empleado_periodo;

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
