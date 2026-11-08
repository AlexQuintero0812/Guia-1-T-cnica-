---------FUNCIONES DE TEXTO-------
SELECT *
FROM customers 
SELECT * 
FROM customers

SELECT state, customerName,
    UPPER(customerName) AS nombre_mayusculas,
    addressLine1,
    LOWER(addressLine1) AS direccion_minusculas,
    phone, REPLACE(phone, ' ', '') AS telefono_limpio
    --REPLACE(telefono_limpio, '.', '') AS telefono_limpio
FROM customers
WHERE state = 'NULL'

UPDATE customers
SET phone = REPLACE(phone, ' ', '')
WHERE state = 'NULL';

SELECT phone
FROM customers
WHERE state = 'NULL';


SELECT orderDate, shippedDate,
    STRFTIME('%Y', orderDate) AS anio_order,
    STRFTIME('%Y-%d', orderDate) AS anio_dia_order,
    STRFTIME('%m', shippedDate) AS mes_envio,
    DATETIME(),
    requiredDate,
    DATE(requiredDate, '+10 days') AS fecha_10_dias
FROM orders
WHERE mes_envio IS NOT NULL

 SELECT UPPER(customerName) AS nombre_mayusculas, 
       LOWER(city) AS ciudad_minusculas
FROM customers;

SELECT contactFirstName || ' ' || contactLastName AS contacto_apellido
FROM customers;

SELECT SUBSTR(productCode, 1, 5) AS primeros_cinco_catacteres
FROM products;

SELECT orderNumber, 
       productCode, 
       (quantityOrdered * priceEach) AS valor_total_facturado
FROM orderdetails;

SELECT productCode, 
       ABS(MSRP - buyPrice) AS diferencia_absoluta_precio_sugerido_precio_compra
FROM products;

SELECT orderNumber, 
       (JULIANDAY(shippedDate) - JULIANDAY(orderDate)) AS diasquepasaron_orden_envio
FROM orders
WHERE shippedDate IS NOT NULL;