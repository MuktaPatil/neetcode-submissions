-- Write your query below

with ranked_exams as
(select *, row_number() over (partition by student_id
order by score desc, exam_id ASC) as rn
from exam_results)

select student_id, exam_id, score
from ranked_exams 
where rn= 1
order by student_id ASC

