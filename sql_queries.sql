SELECT * FROM new_schema.orders LIMIT 10;

SELECT Country, SUM(Quantity * UnitPrice) AS total_sales
FROM new_schema.orders
GROUP BY Country
ORDER BY total_sales DESC;

SELECT Description, SUM(Quantity) AS total_quantity
FROM new_schema.orders
GROUP BY Description
ORDER BY total_quantity DESC
LIMIT 10;

SELECT Country, COUNT(*) AS total_orders
FROM new_schema.orders
GROUP BY Country
ORDER BY total_orders DESC;

SELECT AVG(UnitPrice) AS average_price
FROM new_schema.orders;

SELECT Description, AVG(UnitPrice) AS average_price
FROM new_schema.orders
GROUP BY Description
ORDER BY average_price DESC
LIMIT 10;

CREATE VIEW top_products AS
SELECT Description, SUM(Quantity) AS total_quantity
FROM new_schema.orders
GROUP BY Description
ORDER BY total_quantity DESC;

SELECT * FROM top_products LIMIT 10;