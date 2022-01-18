with
    source as (
        select
            salesreasonid,
            name,
            reasontype,
            modifieddate
        from {{ source('adventureworks', 'salesreason') }}
    )

select * from source