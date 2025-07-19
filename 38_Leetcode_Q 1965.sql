-- Employees With Missing Information

(select e.employee_id as employee_id from Employees e
left join Salaries s
on e.employee_id=s.employee_id
where s.salary is null
order by employee_id)
union all
select s.employee_id as employee_id from Salaries s
left join Employees e
on e.employee_id=s.employee_id
where e.name is null
order by employee_id;
