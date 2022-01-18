with
    source as (
        select 
            shipmethodid,
            name,
            shipbase,
            shiprate,
            modifieddate,

            rowguid
        from {{ source('adventureworks', 'shipmethod') }}
    )

select * from source