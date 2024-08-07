USE mysql;

-- CREATE USER IF NOT EXISTS
CREATE USER IF NOT EXISTS 'admin_super'@'%' IDENTIFIED BY 'password';

-- GRANT ALL PRIVILEGES ON coderhouse_generico.* TO 'admin_super'@'%'
GRANT ALL PRIVILEGES ON agencia_viajes.* TO 'admin_super'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;

USE agencia_viajes;

-- CREACIÓN DE ROLES
CREATE ROLE role_select_vistas;
CREATE ROLE role_crud_reservas;
CREATE ROLE role_creacion_usuarios;

-- ASIGNACIÓN DE PRIVILEGIOS AL ROL role_select_vistas
GRANT SELECT ON Cliente TO role_select_vistas;
GRANT SELECT ON Reserva TO role_select_vistas;
GRANT SELECT ON Empleado TO role_select_vistas;
GRANT SELECT ON Viaje TO role_select_vistas;
GRANT SELECT ON Hotel TO role_select_vistas;
GRANT SELECT ON Vuelo TO role_select_vistas;
GRANT SELECT ON Tour_Paquete TO role_select_vistas;

-- ASIGNACIÓN DE PRIVILEGIOS AL ROL role_crud_reservas
GRANT ALL PRIVILEGES ON Reserva TO role_crud_reservas;
GRANT ALL PRIVILEGES ON Cliente TO role_crud_reservas;
GRANT ALL PRIVILEGES ON Empleado TO role_crud_reservas;
GRANT ALL PRIVILEGES ON Viaje TO role_crud_reservas;




-- CREACIÓN DE USUARIOS Y ASIGNACIÓN A ROLES
CREATE USER 'usuario_vistas'@'%' IDENTIFIED BY 'password_vistas';
GRANT role_select_vistas TO 'usuario_vistas'@'%';

CREATE USER 'usuario_crud'@'%' IDENTIFIED BY 'password_crud';
GRANT role_crud_reservas TO 'usuario_crud'@'%';

FLUSH PRIVILEGES;
