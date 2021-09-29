select 
      a.order_id
    , a.customer_id
    , b.amount
from {{ref('stg_order')}} a
join {{ref('stg_payment')}} b on a.order_id = b.order_id