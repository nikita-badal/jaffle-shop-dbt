with stores as (

select count(distinct store_id) as unique_stores
from {{ref('stg_jaffle_shop__stores')}}

)

select *
from stores
where 1=1
    and unique_stores > 6