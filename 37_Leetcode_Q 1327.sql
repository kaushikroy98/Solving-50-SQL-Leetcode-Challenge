-- List the Products Ordered in a Period

select p.product_name, sum(o.unit) as unit from Products p
inner join Orders o
on p.product_id=o.product_id
where month(order_date)=2 and year(order_date)=2020
group by p.product_name
having unit>=100;
