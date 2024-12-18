# Write your MySQL query statement below
select pr.product_name,s.year,s.price from Product as pr inner join Sales as s
on pr.product_id=s.product_id 