with source as (

    select
        id as customer_id,
        name as customer_name
    from 
        {{ source('raw_nikita','raw_customers') }}

)

select * from source