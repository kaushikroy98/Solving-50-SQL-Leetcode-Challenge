-- Rising Temperature

with difference as
(
select id, recordDate, temperature ,
temperature  - lag(temperature) over(order by recordDate) temp_diff,
datediff(recordDate,lag(recordDate) over(order by recordDate)) date_diff
from Weather),
high_temp as(
select id,
case when temp_diff>0 then 1 else 0 end check_high,
case when date_diff=1 then 1 else 0 end check_previous_day
from difference)


select id from high_temp
where check_high>0 and check_previous_day=1;
