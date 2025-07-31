-- The Number of Employees Which Report to Each Employee

select e1.employee_id employee_id, e1.name name, 
count(e2.employee_id) reports_count, round(avg(e2.age)) average_age from Employees e1
join Employees e2 on e2.reports_to=e1.employee_id
group by 1,2
order by 1;
