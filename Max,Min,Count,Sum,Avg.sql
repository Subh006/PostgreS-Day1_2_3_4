select max(price) as highest_price from products;

select min(price) as lowest_price from products;

Select count(product_id) from products
where category_id=6;

Select sum(price) from products
where category_id=4;

SELECT AVG(price) FROM products;

SELECT AVG(price)::DECIMAL(10,2) FROM products;