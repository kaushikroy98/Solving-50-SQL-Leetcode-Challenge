-- Fix Names in a Table

select user_id,
concat(upper(left(name,1)),
lower(substring(name,2,length(name)-1)))as name
from Users
order by user_id;
