with
    source as (
        select 
            addressid,
            addressline1,
            addressline2,
            city,
            stateprovinceid,
            postalcode,
            spatiallocation,
            modifieddate,

            rowguid
        from {{ source('adventureworks', 'address') }}
    )

select * from source