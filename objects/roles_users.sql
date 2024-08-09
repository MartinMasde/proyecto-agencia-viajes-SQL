USE agencia_viajes;

DROP ROLE IF EXISTS administrador, encargado, empleado;

-- CREACIÓN DE ROLES
CREATE ROLE administrador;
CREATE ROLE encargado;
CREATE ROLE empleado;

-- ASIGNACIÓN DE PRIVILEGIOS AL ROL administrador
GRANT ALL ON agencia_viajes.* TO administrador;

-- ASIGNACIÓN DE PRIVILEGIOS AL ROL encargado
GRANT SELECT, INSERT, UPDATE, DELETE ON agencia_viajes.* TO encargado;

-- ASIGNACIÓN DE PRIVILEGIOS AL ROL empleado
GRANT SELECT, INSERT, UPDATE ON agencia_viajes.* TO empleado;

-- ELIMINAR LOS USUARIOS SI EXISTEN
DROP USER IF EXISTS 'admin'@'%', 'encargado1'@'%', 'empleado1'@'%', 'empleado2'@'%';

-- CREACIÓN DE USUARIOS Y ASIGNACIÓN A ROLES
CREATE USER 'admin'@'%' IDENTIFIED BY 'password';
GRANT administrador TO 'admin'@'%';

CREATE USER 'encargado1'@'%' IDENTIFIED BY 'password';
GRANT encargado TO 'encargado1'@'%';

CREATE USER 'empleado1'@'%' IDENTIFIED BY 'password';
CREATE USER 'empleado2'@'%' IDENTIFIED BY 'password';

GRANT empleado TO 'empleado1'@'%', 'empleado2'@'%';

-- VERIFICACIÓN DE PRIVILEGIOS
SHOW GRANTS FOR 'admin'@'%';
SHOW GRANTS FOR 'encargado1'@'%';
SHOW GRANTS FOR 'empleado1'@'%';
