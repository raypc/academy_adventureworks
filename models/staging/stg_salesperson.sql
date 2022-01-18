with
    source as (
        select
            businessentityid,
            salesquota,
            commissionpct,
            bonus,
            salesytd,
            saleslastyear,
            territoryid,
            modifieddate,

            rowguid
        from {{ source('adventureworks', 'salesperson') }}
    )

select * from source