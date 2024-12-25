# Write your MySQL query statement below
select (d.name) as Department , (e.name) as Employee,(e.salary) as Salary 
from Employee e
left join department d
on e.departmentid = d.id
where(
    select count(distinct salary)
    from employee e2
    WHERE e2.departmentId = e.departmentId AND e2.salary >= e.salary

)<=3
order by Department,Salary desc