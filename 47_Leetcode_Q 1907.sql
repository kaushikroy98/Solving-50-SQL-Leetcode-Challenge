-- Count Salary Categories

select 'Low Salary' as category,sum( case when income < 20000 then 1 else 0 end )accounts_count from Accounts
union all
select 'Average Salary' as category, sum(case when income between 20000 and 50000 then 1 else 0 end) accounts_count from Accounts
union all
select 'High Salary' as category, sum(case when income > 50000 then 1 else 0 end )accounts_count from Accounts
order by accounts_count desc;
