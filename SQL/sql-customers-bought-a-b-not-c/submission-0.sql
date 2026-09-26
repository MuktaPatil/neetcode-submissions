-- Write your query below

-- # left join
-- # cte to get people who bought a and b but not c using group by
-- # we return id and names

with cte_ab as
( select o.customer_id
from orders o
group by o.customer_id
having count (case when product_name = 'A' then 1 end) >0
and count (case when product_name = 'B' then 1 end)>0
and count (case when product_name = 'C' then 1 end) = 0
)

select c.customer_id, c.customer_name
from customers c
join cte_ab ab
on ab.customer_id = c.customer_id
order by customer_name