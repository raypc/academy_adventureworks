with
    source as (
        select
            salesorderid,
            salesreasonid,
            modifieddate
        from {{ source('adventureworks', 'salesorderheadersalesreason') }}
    )

select * from source