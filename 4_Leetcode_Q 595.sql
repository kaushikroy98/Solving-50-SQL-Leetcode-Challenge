-- Big Countries

select name, population, area from World
where area>= 300000 and population >= 25000000;
