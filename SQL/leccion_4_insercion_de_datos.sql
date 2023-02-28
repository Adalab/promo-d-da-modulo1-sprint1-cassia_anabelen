-- PAIR PROGRAMMING DE LECCION 4 - INSERCION DE DATOS
-- ANA Y CASSIA

-- ACTIVIDAD 1
-- INSERCION DE DATOS EN LAS CUATRO TABLAS

-- DATOS INSERTADOS EN LA TABLA ZAPATILLAS

INSERT INTO zapatillas (id_zapatilla, modelo, color, marca, talla)
	VALUES (1, "XQYUN", "negro", "Nike", 42),
			(2, "UOPMN", "rosas", "Nike", 39),
			(3, "UPNYT", "verdes", "Adidas", 35);

-- DATOS INSERTADOS EN LA TABLA EMPLEADOS

INSERT INTO empleados (id_empleado, nombre, tienda, salario, fecha_incorporacion)
	VALUES (1, 'Laura', 'Alcobendas', 25987, '2010-09-03'),
			(2, 'Maria', 'Sevilla', "0.0", '2001-04-11'),
            (3, 'Ester', 'Oviedo', 30165.98, '2000-11-29');

-- DATOS INSERTADOS EN LA TABLA CLIENTES

INSERT INTO clientes (id_cliente, nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
	VALUES (1, 'Monica', '1234567289', 'monica@email.com', 'Calle Felicidad', 'Mostoles', 'Madrid', '28176'),
			(2, 'Lorena', '289345678', 'lorena@email.com', 'Calle Alegria', 'Barcelona', 'Barcelona', '12346'),
            (3, 'Carmen', '298463759', 'carmen@email.com', 'Calle del Color', 'Vigo', 'Pontevedra', '23456');

-- DATOS INSERTADOS EN LA TABLA FACTURAS

INSERT INTO facturas (id_factura, numero_factura, fecha, id_zapatilla, id_empleado, id_cliente, total)
	VALUES (1, 123, '2001-12-11', 1, 2, 1, 54.98),
			(2, 1234, '2005-05-23', 1, 1, 3, 89.91),
            (3, 12345, '2015-09-18', 2, 3, 3, 76.23);

-- ACTIVIDAD 2
-- ACTUALIZACION DE DATOS

-- CAMBIAR COLOR DE AMARILLAS A ROSAS            
UPDATE zapatillas
SET color = "amarillas"
WHERE id_zapatilla = 2;

-- CAMBIAR CIUDAD DE ALCOBENDAS A A CORUNA
UPDATE empleados
SET tienda = 'A Coruña'
WHERE id_empleado = 1;

-- CAMBIAR TELEFONO
UPDATE clientes
SET numero_telefono = "123456728"
WHERE id_cliente = 1;

-- CAMBIAR TOTAL
UPDATE facturas
SET total = 89.91
WHERE id_zapatilla = 2;