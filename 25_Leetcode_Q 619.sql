-- Biggest Single Number

–-Sol 1
select ifnull((select num from MyNumbers
group by num
having count(num)=1
order by num desc
limit 1),null) as num;


—- Sol 2
select max(num) as num from
(select num from Mynumbers
group by num
having count(num)=1 ) as num;
