with source as (

    select
        id as payment_id,
        order_id,
        payment_method,
        amount
    from 
        {{ source('raw_nikita','raw_payments') }}

)

select * from source