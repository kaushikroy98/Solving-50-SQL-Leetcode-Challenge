-- Find Users With Valid E-Mails

--Solution 1:

select user_id, name, mail from Users
where mail COLLATE utf8_bin regexp '^[A-Za-z][A-Za-z0-9._-]*@leetcode\\.com$';


-- Solution 2:

select *
from Users
where mail regexp '^[A-Za-z][A-Za-z0-9_.-]*@leetcode\\.com$';
