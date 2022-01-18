with
    source as (
        select
            businessentityid,
            addressid,
            addresstypeid,
            modifieddate,

            rowguid
        from {{ source('adventureworks', 'businessentityaddress') }}
    )

select * from source