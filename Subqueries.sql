SELECT product_name, price FROM products
WHERE PRICE>(SELECT AVG(price) FROM products) 