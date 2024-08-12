SELECT * FROM CONTACTS;

SELECT * FROM CONTACTS
	WHERE name='John Doe';

CREATE INDEX contact_name
ON CONTACTS(name);

--btree,hash,gist,gin,brin

CREATE INDEX btree_index
ON CONTACTS USING BTREE (name);

CREATE INDEX hash_index
ON CONTACTS USING HASH (name);

------ EXPLAIN/EXPLAIN ANALYZE

EXPLAIN with total_price (catId, tot_pr) as (select category_id as catId, sum(price) as tot_pr from products group by category_id),
	 avg_price (avg_pr) as (select avg(tot_pr) as avg_pr from  total_price)
select * from total_price tp
join avg_price ap
on tp.tot_pr>ap.avg_pr;

EXPLAIN ANALYZE with total_price (catId, tot_pr) as (select category_id as catId, sum(price) as tot_pr from products group by category_id),
	 avg_price (avg_pr) as (select avg(tot_pr) as avg_pr from  total_price)
select * from total_price tp
join avg_price ap
on tp.tot_pr>ap.avg_pr;