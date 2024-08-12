select category_id as catId, sum(price) as tot_pr from products group by category_id;

select avg(tot_pr) from (select category_id as catId, sum(price) as tot_pr from products group by category_id)x;

--subquery

select * from (select category_id as catId, sum(price) as tot_pr from products group by category_id) tp
	join (select avg(tot_pr) as avg_pr from (select category_id as catId, sum(price) as tot_pr from products group by category_id) x) ap
	on tp.tot_pr>ap.avg_pr;

---- common table expression

with total_price (catId, tot_pr) as (select category_id as catId, sum(price) as tot_pr from products group by category_id),
	 avg_price (avg_pr) as (select avg(tot_pr) as avg_pr from  total_price)
select * from total_price tp
join avg_price ap
on tp.tot_pr>ap.avg_pr;


--recursion function

with recursive numbers as
(
	select 1 as n
	union
	select n+1 from numbers where n <10
)
select * from numbers