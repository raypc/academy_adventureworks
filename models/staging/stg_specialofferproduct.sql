with
    source as (
        select
            specialofferid,
            productid,
            modifieddate,

            rowguid
        from {{ source('adventureworks', 'specialofferproduct') }}
    )

select * from source