# Write your MySQL query statement below
(select name as results
from users 
inner join movierating using(user_id)
group by user_id
order by count(rating) desc,name
limit 1)

UNION ALL

(select title as results
from movies
inner join movierating using(movie_id)
where MONTH(created_at) = '02' and year(created_at)='2020'
group by title
order by AVG(rating) desc,title
limit 1)