-- Number of Unique Subjects Taught by Each Teacher

select teacher_id, count(distinct subject_id) as cnt
from Teacher
group by teacher_id
order by teacher_id;
