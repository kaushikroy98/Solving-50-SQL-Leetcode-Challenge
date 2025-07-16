-- Swap Salary

update Salary
set sex = Case
when sex='m' then 'f'
when sex='f' then 'm'
End;
