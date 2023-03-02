-- Ejercicio 1--

SELECT employee_id, last_name, first_name
FROM employees;

-- Ejercicio 2 --

SELECT product_name, unit_price
FROM products
WHERE unit_price < 5;


-- Ejercicio 3--

SELECT product_name, unit_price
FROM products
WHERE unit_price = 18 OR unit_price = 19 OR unit_price = 20;

-- Ejercicio 4 --

SELECT product_name, unit_price
FROM products
WHERE unit_price >= 15 AND unit_price <=50;

-- Ejercicio 5 --

SELECT product_name, unit_price
FROM products
WHERE unit_price IS NULL;

-- Ejercicio 6 ---

SELECT product_name, unit_price
FROM products
WHERE unit_price < 15 AND product_id < 10;

-- Ejercicio 7 ---

SELECT product_name, unit_price, product_id
FROM products
WHERE unit_price > 15 AND product_id > 10;


-- Ejercicio 8 ---

SELECT DISTINCT ship_country 
FROM orders;


