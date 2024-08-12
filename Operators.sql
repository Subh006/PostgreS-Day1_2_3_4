SELECT * FROM products
WHERE price=31.00;

SELECT * FROM products
WHERE price>=31.00;

SELECT * FROM products
WHERE price<=31.00;

SELECT * FROM products
WHERE product_name LIKE 'N%'; -- NOT LIKE (DOES OPPOSITE OF THIS)

SELECT * FROM products
WHERE product_name ILIKE 'g%'; -- NOT ILIKE (DOES OPPOSITE OF THIS)

SELECT * FROM products
WHERE product_name ILIKE 'g%' AND price<23;

SELECT * FROM products
WHERE product_name LIKE '_u%' OR category_id=5;

SELECT * FROM products
WHERE category_id IN (1,3,7); -- NOT IN (DOES OPPOSITE OF THIS)

SELECT * FROM products
WHERE category_id BETWEEN 1 And 4; -- NOT BETWEEN (DOES OPPOSITE OF THIS)

SELECT * FROM products
WHERE unit IS NULL; -- IS NOT NULL (DOES OPPOSITE OF THIS)
