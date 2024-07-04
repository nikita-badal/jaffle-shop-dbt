with source as (

    select
        sku as product_sku,
        name as product_name,
        type as product_type,
        price,
        description
    from 
        {{ source('raw_nikita','raw_products') }}

)

select * from source