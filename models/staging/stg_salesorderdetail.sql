with
    source as (
        select
            salesorderdetailid,
            salesorderid,
            productid,
            specialofferid,
            unitprice,
            unitpricediscount,
            orderqty,
            carriertrackingnumber,
            modifieddate,

            rowguid
        from {{ source('adventureworks', 'salesorderdetail') }}
    )

select * from source