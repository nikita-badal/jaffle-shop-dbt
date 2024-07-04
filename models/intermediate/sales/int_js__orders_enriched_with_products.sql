with order_items as (
    select * from {{ ref('int_js__orders_joined_items') }}
),

products as (
    select * from {{ ref('stg_jaffle_shop__products') }}
)

select
    o.order_id,
    o.customer_id,
    o.ordered_at,
    o.store_id,
    o.order_subtotal,
    o.order_tax_paid,
    o.order_total,
    o.product_id,
    p.product_name,
    p.product_type,
    p.price as product_price,
    p.description as product_description
from
    order_items as o
join
    products as p
on
    o.product_sku = p.product_sku
