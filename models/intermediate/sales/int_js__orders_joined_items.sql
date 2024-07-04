with orders as (
    select * from {{ ref('stg_jaffle_shop__orders') }}
),

items as (
    select * from {{ ref('stg_jaffle_shop__items') }}
)

select
    o.order_id,
    o.customer_id,
    o.ordered_at,
    o.store_id,
    o.order_subtotal,
    o.order_tax_paid,
    o.order_total,
    i.product_id,
    i.product_sku
from
    orders as o
join
    items as i
on
    o.order_id = i.order_id
