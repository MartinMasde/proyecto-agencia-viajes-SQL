USE agencia_viajes;

DROP PROCEDURE IF EXISTS sp_nueva_reserva;
DROP PROCEDURE IF EXISTS sp_agregar_cliente;

-- Procedimiento almacenado para agregar una nueva reserva a la base de datos

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

	-- Verificar si existe el Empleado
	SELECT COUNT(*) INTO existeEmpleado
	FROM Empleado
	WHERE idEmpleado = p_idEmpleado;
    
	IF existeCliente = 0 THEN
    		-- Si no existe el cliente, devolver un mensaje de error
    		SELECT 'El idCliente ingresado no existe';
	ELSEIF existeEmpleado = 0 THEN
		-- Si no existe el empleado, devolver un mensaje de error
		SELECT 'El idEmpleado ingresado no existe';
	ELSE 
		INSERT INTO Reserva (FechaReserva, FechaViaje, idCliente, idViaje, idEmpleado)
		VALUES (NOW(), p_fechaViaje, p_idCliente, p_idViaje, p_idEmpleado);
        
                -- Devuelvo el ID de la reserva creada
		SELECT 'Reserva creada exitosamente, su idReserva es: ', LAST_INSERT_ID() AS id_Reserva_Nueva;
	END IF;
END //

DELIMITER ;


-- Procedimiento almacenado para agregar un nuevo cliente a la base de datos

DELIMITER //

CREATE PROCEDURE sp_agregar_cliente (
	IN p_Nombre VARCHAR(100),
	IN p_Apellido VARCHAR(100),
	IN p_Direccion VARCHAR(200),
	IN p_Telefono VARCHAR(100),
	IN p_Email VARCHAR(100),
	IN p_TipoCliente VARCHAR(10)
)
BEGIN
	DECLARE existeCliente INT;

	-- Verifico si ya existe el cliente a traves de su Email
	SELECT COUNT(*) INTO existeCliente
	FROM Cliente
	WHERE Email = p_Email;
    
	IF existeCliente = 1 THEN
		-- Si existe el cliente, devolver un mensaje de error
		SELECT 'El cliente con el Email ', p_Email, ' ya se encuentra registrado en la Base de Datos.';
   	ELSE 
		INSERT INTO Cliente (Nombre, Apellido, Direccion, Telefono, Email, TipoCliente)
		VALUES (p_Nombre, p_Apellido, p_Direccion, p_Telefono, p_Email, p_TipoCliente);
		-- Devuelvo el ID de la reserva creada
		SELECT 'Cliente creado exitosamente, su idCliente es: ', LAST_INSERT_ID() AS id_cliente_nuevo;
	END IF;
END //

DELIMITER ;

-- Procedimiento almacenado para eliminar un cliente de la base de datos si no tiene reservas asociadas

DELIMITER //

CREATE PROCEDURE sp_eliminar_cliente (
	IN p_idCliente INT
)

BEGIN
	START TRANSACTION;

	DECLARE existeReserva INT;

	-- Verifico si el cliente tiene reservas asociadas
	SELECT COUNT(*) INTO existeReserva
	FROM Reserva
	WHERE idCliente = p_idCliente;

	IF existeReserva = 0 THEN
		-- Si no tiene reservas asociadas, elimino el cliente
		DELETE FROM Cliente
		WHERE idCliente = p_idCliente;
		SELECT 'Cliente eliminado exitosamente';
	ELSE
		-- Si tiene reservas asociadas, devuelvo un mensaje de error
		SELECT 'El cliente tiene reservas asociadas, no se puede eliminar';
	END IF;

	IF @@ERROR_COUNT > 0 THEN
		ROLLBACK;
		SELECT 'Error al eliminar el cliente';
	ELSE
		COMMIT;
	END IF;
END //

DELIMITER ;
	
	