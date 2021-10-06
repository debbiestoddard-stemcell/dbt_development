with orders as (
    select * from {{ref('stg_order')}}
),
daily as (
    select order_date,
count(*) as num_orders
from orders
group by 1)

select * from daily
