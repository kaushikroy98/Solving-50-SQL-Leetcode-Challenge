-- Friend Requests II: Who Has the Most Friends

select a.id,count(a.id) num from
(select requester_id as id from RequestAccepted
union all
select accepter_id as id from RequestAccepted
order by id) a
group by id
order by num desc
limit 1;
