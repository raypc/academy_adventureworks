with
    source as (
        select
            customerid,
            personid,
            storeid,
            territoryid,
            modifieddate,

            rowguid
        from {{ source('adventureworks', 'customer') }}
    )

select * from source