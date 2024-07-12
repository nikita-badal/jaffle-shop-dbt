{% test unique_ids(model,column_name,limits=6) %}

with stores as (

select count(distinct {{column_name}}) as unique_stores
from {{model}}

)

select *
from stores
where 1=1
    and unique_stores > {{limits}}

{% endtest %}