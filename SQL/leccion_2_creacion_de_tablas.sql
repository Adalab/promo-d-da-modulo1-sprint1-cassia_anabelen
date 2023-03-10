-- PAIR PROGRAMMING LECCION 2 - CREACION DE TABLAS

 CREATE SCHEMA `tienda_zapatillas`;
 
 USE `tienda_zapatillas`;
 
 -- CREAR TABLA ZAPATILLAS
CREATE TABLE `zapatillas` (
	`id_zapatilla` INT NOT NULL AUTO_INCREMENT,
	`modelo` VARCHAR(45) NOT NULL,
	`color` VARCHAR(45) NOT NULL,
	PRIMARY KEY (`id_zapatilla`)
	);
  
  -- CREAR TABLA CLIENTES
  CREATE TABLE `clientes` (
	`id_cliente` INT NOT NULL AUTO_INCREMENT,
	`nombre` VARCHAR(45) NOT NULL,
	`numero_telefono` INT(9) NOT NULL,
	`email` VARCHAR(45) NOT NULL,
	`direccion` VARCHAR(45) NOT NULL,
	`ciudad` VARCHAR(45) DEFAULT NULL,
	`provincia` VARCHAR(45) NOT NULL,
	`pais` VARCHAR(45) NOT NULL,
	`codigo_postal` VARCHAR (45) NOT NULL,
	PRIMARY KEY (`id_cliente`)
	);
 
 -- CREAR TABLA EMPLEADOS
 CREATE TABLE `empleados` (
  `id_empleado` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `tienda` VARCHAR(45) NOT NULL,
  `salario` INT NOT NULL,
  `fecha_incorporacion` DATE NOT NULL,
  PRIMARY KEY (`id_empleado`)
  );
  
  -- CREAR TABLA FACTURAS CON FOREIGN KEY Y REFERENCES
  CREATE TABLE `facturas` (
	`id_factura` INT NOT NULL AUTO_INCREMENT,
	`numero_factura` VARCHAR(45) NOT NULL,
	`fecha` DATE NOT NULL,
	`id_zapatilla` INT NOT NULL,
	`id_empleado` INT NOT NULL,
	`id_cliente` INT NOT NULL,
	`total` FLOAT DEFAULT NULL,
	PRIMARY KEY (`id_factura`),
	KEY `fk_facturas_zapatillas` (`id_zapatilla`),
	KEY `fk_facturas_cliente` (`id_cliente`),
	KEY `fk_facturas_empleados` (`id_empleado`),
	CONSTRAINT `fk_facturas_cliente` 
		FOREIGN KEY (`id_cliente`) 
		REFERENCES `clientes` (`id_cliente`) 
		ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT `fk_facturas_empleados` 
		FOREIGN KEY (`id_empleado`) 
		REFERENCES `empleados` (`id_empleado`) 
        ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT `fk_facturas_zapatillas` 
		FOREIGN KEY (`id_zapatilla`) 
		REFERENCES `zapatillas` (`id_zapatilla`) 
        ON DELETE CASCADE ON UPDATE CASCADE
	);