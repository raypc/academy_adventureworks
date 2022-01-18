with
    source as (
        select
            businessentityid,
            name,
            salespersonid,
            modifieddate,

            rowguid
        from {{ source('adventureworks', 'store') }}
    )

select * from source