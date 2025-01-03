# Write your MySQL query statement below
select event_day as day, emp_id,SUM(ABS(in_time - out_time)) AS total_time
from employees
group by event_day,emp_id