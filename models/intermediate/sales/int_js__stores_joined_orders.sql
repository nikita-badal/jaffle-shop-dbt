with orders as (
    select * from {{ ref('stg_jaffle_shop__orders') }}
),

stores as (
    select * from {{ ref('stg_jaffle_shop__stores') }}
)

select
    o.order_id,
    o.customer_id,
    o.ordered_at,
    s.store_id,
    s.store_name,
    s.store_opened_at,
    s.store_tax_rate,
    o.order_subtotal,
    o.order_tax_paid,
    o.order_total
from
    orders as o
join
    stores as s
on
    o.store_id = s.store_id
