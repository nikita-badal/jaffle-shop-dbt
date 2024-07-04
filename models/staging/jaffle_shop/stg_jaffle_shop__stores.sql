with source as (

    select
        id as store_id,
        name as store_name,
        opened_at as store_opened_at,
        tax_rate as store_tax_rate
    from 
        {{ source('raw_nikita','raw_stores') }}

)

select * from source