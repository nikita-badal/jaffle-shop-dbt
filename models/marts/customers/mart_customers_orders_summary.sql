with orders as (
    select * from {{ ref('int_js__orders_joined_items') }}
)

select
    customer_id,
    count(order_id) as total_orders,
    sum(order_total) as total_spent,
    min(ordered_at) as first_order,
    max(ordered_at) as last_order
from
    orders
group by
    customer_id
