USE agencia_viajes;

DROP TRIGGER IF EXISTS trg_after_update_reserva;

-- Crear la tabla Log_Auditoria para guardar los cambios realizados en las tablas de la BD
CREATE TABLE Log_Auditoria (
    idLog INT AUTO_INCREMENT,
    NombreTabla VARCHAR(100),
    NombreColumna VARCHAR(100),
    ValorAnterior VARCHAR(255),
    ValorNuevo VARCHAR(255),
    Usuario VARCHAR(100),
    FechaActualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (idLog)
) COMMENT 'Tabla para registrar los cambios realizados en las tablas de la BD';

-- Trigger para registrar cambios (UPDATE) en la tabla Reserva y respaldar los cambios en la tabla Log_Auditoria
DELIMITER //

CREATE TRIGGER trg_after_update_reserva
AFTER UPDATE ON Reserva
FOR EACH ROW
BEGIN
    DECLARE colName VARCHAR(100);
    DECLARE oldValue VARCHAR(255);
    DECLARE newValue VARCHAR(255);
    
    -- Verificar y registrar cambios en FechaReserva
    IF OLD.FechaReserva <> NEW.FechaReserva THEN
        SET colName = 'FechaReserva';
        SET oldValue = OLD.FechaReserva;
        SET newValue = NEW.FechaReserva;
        INSERT INTO Log_Auditoria (NombreTabla, NombreColumna, ValorAnterior, ValorNuevo, Usuario, FechaActualizacion)
        VALUES ('Reserva', colName, oldValue, newValue, CURRENT_USER(), NOW());
    END IF;

    -- Verificar y registrar cambios en FechaViaje
    IF OLD.FechaViaje <> NEW.FechaViaje THEN
        SET colName = 'FechaViaje';
        SET oldValue = OLD.FechaViaje;
        SET newValue = NEW.FechaViaje;
        INSERT INTO Log_Auditoria (NombreTabla, NombreColumna, ValorAnterior, ValorNuevo, Usuario, FechaActualizacion)
        VALUES ('Reserva', colName, oldValue, newValue, CURRENT_USER(), NOW());
    END IF;

    -- Verificar y registrar cambios en idViaje
    IF OLD.idViaje <> NEW.idViaje THEN
        SET colName = 'idViaje';
        SET oldValue = OLD.idViaje;
        SET newValue = NEW.idViaje;
        INSERT INTO Log_Auditoria (NombreTabla, NombreColumna, ValorAnterior, ValorNuevo, Usuario, FechaActualizacion)
        VALUES ('Reserva', colName, oldValue, newValue, CURRENT_USER(), NOW());
    END IF;
END //

DELIMITER ;


-- Trigger para verificar si el correos electrónico de un empleado es único al instertar un nuevo empleado

DELIMITER //

CREATE TRIGGER trg_before_insert_empleado
BEFORE INSERT ON Empleado
FOR EACH ROW 
BEGIN 
	DECLARE email_count INT;
	
	SELECT COUNT(1) INTO email_count
		FROM Empleado  
	WHERE Email = NEW.Email;

	IF email_count > 0 THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El email indicado corresponde a un empleado.';
	END IF;
END //

DELIMITER ;
