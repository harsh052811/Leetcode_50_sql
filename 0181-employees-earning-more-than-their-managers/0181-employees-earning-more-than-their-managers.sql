# Write your MySQL query statement below
select r.name  as Employee
from employee e
inner join employee r
on e.id=r.managerID
where e.salary<r.salary