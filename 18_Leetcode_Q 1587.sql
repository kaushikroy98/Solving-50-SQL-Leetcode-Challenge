-- Bank Account Summary II

select name, sum(amount) as balance from Users
left join Transactions
on Users.account=Transactions.account
group by name
having balance > 10000;
