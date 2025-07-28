-- Rank Scores

with rank_cte as(
select id, score,
dense_rank() over(order by score desc) as dense_rank_num
from Scores)


select score, dense_rank_num as 'rank'
from rank_cte;
