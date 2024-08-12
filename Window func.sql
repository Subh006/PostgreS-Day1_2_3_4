Select category_id, avg(price) from products group by category_id;

select * , avg(price) over (partition by category_id order by product_name) from products;

-- row_number, rank, dense_rank, lead, lag

select * , rank() over (partition by category_id order by product_name) as ranking from products;

select * , dense_rank() over (partition by category_id order by product_name) as Dranking from products;

select * , row_number() over (partition by category_id order by product_id) as rn from products;

Select * from (select * , row_number() over (partition by category_id order by product_id) as rn from products) p
where p.rn<3;