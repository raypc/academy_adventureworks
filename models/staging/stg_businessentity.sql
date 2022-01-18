with
    source as (
        select
            businessentityid,
            modifieddate,

            rowguid
        from {{ source('adventureworks', 'businessentity') }}
    )

select * from source