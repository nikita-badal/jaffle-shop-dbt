with source as (

    select
        id as supply_id,
        name as supply_name,
        cost,
        perishable,
        sku as product_sku

    from 
        {{ source('raw_nikita','raw_supplies') }}

)

select * from source