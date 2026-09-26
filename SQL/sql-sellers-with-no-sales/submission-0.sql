-- Write your query below
-- filter by date first
-- join by seller id
-- in order table, see what sellers made orders in 2020
-- then compare with seller table, and report missing one

with cte_sellers as(
    select seller_id
    from orders
    where sale_date >= '2020-01-01' and sale_date < '2021-01-01' -- or we can use date range
    group by seller_id
)

select seller_name
from seller
where seller_id not in (select seller_id from cte_sellers)
order by seller_name