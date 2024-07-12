with stores as (

select * from {{ ref('stg_jaffle_shop__stores') }}

)

, orders as (

    select * from {{ ref('stg_jaffle_shop__orders') }}

)

select
    s.store_id,
    s.store_name,
    s.store_opened_at,
    s.store_tax_rate,
    o.order_id,
    o.customer_id,
    o.ordered_at,
    o.order_subtotal,
    o.order_tax_paid,
    o.order_total
from
    stores as s
left join
    orders as o
on
    o.store_id = s.store_id
