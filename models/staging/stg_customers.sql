{{
    config(
        as_columnstore=false
        )
}}

with source as (

    select * from SalesLT.Customer

),

renamed as (

    select
        CustomerID as customer_id,
        FirstName as first_name,
        LastName as last_name

    from source

)

select * from renamed
