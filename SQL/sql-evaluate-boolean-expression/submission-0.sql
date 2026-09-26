-- Write your query below
select e.left_operand, e.operator, e.right_operand,
case
when e.operator = '<' and l.value < r.value then 'true'
when e.operator = '>' and l.value > r.value then 'true'
when e.operator = '=' and l.value = r.value then 'true'
else 'false' end as value
from expressions e
join variables l on e.left_operand = l.name
join variables r on e.right_operand = r.name;

--same table 2 different jobs -> 2 different joins
