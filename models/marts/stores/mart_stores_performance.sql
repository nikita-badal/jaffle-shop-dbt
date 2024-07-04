{{
  config(
    materialized='table'
  )
}}

with store_orders as (
    select * from {{ ref('int_js__stores_joined_orders') }}
)

select
    store_id,
    store_name,
    count(order_id) as total_orders,
    sum(order_total) as total_revenue,
    avg(order_total) as avg_order_value
from
    store_orders
group by
    store_id, store_name