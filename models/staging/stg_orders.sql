with source as (

    select * from SalesLT.SalesOrderHeader

),

renamed as (

    select
        SalesOrderID as order_id,
        CustomerID as customer_id,
        OrderDate as order_date,
        Status as status

    from source

)

select * from renamed
