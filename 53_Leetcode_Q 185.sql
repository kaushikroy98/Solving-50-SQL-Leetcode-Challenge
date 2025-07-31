-- Department Top Three Salaries

with top_3_dept_salary as
(
select d.name as Department, e.name as Employee, e.salary as Salary,
dense_rank() over(partition by d.name order by e.salary desc) as salary_rank
from Employee e
join Department d on d.id= e.departmentId
)
select Department, Employee, Salary from top_3_dept_salary
where salary_rank in (1,2,3);
