with
    source as (
        select
            specialofferid,
            description,
            discountpct,
            type,
            category,
            startdate,
            enddate,
            minqty,
            maxqty,
            modifieddate,

            rowguid
        from {{ source('adventureworks', 'specialoffer') }}
    )

select * from source