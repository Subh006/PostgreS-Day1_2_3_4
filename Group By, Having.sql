SELECT customers.customer_name, COUNT(orders.order_id)
FROM orders
jOIN customers ON orders.customer_id = customers.customer_id
GROUP BY customer_name;

SELECT order_details.order_id, SUM(products.price)
FROM order_details
JOIN products ON order_details.product_id = products.product_id
GROUP BY order_id
HAVING SUM(products.price) > 40.00;
