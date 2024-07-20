USE agencia_viajes;

DROP PROCEDURE IF EXISTS sp_nueva_reserva;

DELIMITER //

CREATE PROCEDURE sp_nueva_reserva(
    IN p_fechaViaje DATETIME,
    IN p_idCliente INT,
    IN p_idViaje INT,
    IN p_idEmpleado INT
)
BEGIN
  DECLARE existeCliente INT;
  DECLARE existeEmpleado INT;
    
    -- Verificar si existe el Cliente
  SELECT COUNT(*) INTO existeCliente
  FROM Cliente
  WHERE idCliente = p_idCliente;
    
	SELECT COUNT(*) INTO existeEmpleado
  FROM Empleado
  WHERE idEmpleado = p_idEmpleado;
    
  IF existeCliente = 0 THEN
	-- Si no existe el cliente, devolver un mensaje de error
    SELECT 'El idCliente ingresado no existe';
	ELSEIF existeEmpleado = 0 THEN
		SELECT 'El idEmpleado ingresado no existe';
	ELSE 
		INSERT INTO Reserva (FechaReserva, FechaViaje, idCliente, idViaje, idEmpleado)
		VALUES (NOW(), p_fechaViaje, p_idCliente, p_idViaje, p_idEmpleado);
        
    -- Devuelvo el ID de la reserva creada
		SELECT LAST_INSERT_ID() AS ID_Reserva;
	END IF;
END //

DELIMITER ;
