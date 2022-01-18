with
    source as (
        select
            productid,
            name,
            productnumber,
            productmodelid,
            productsubcategoryid,
            standardcost,
            listprice,
            daystomanufacture,
            productline,
            safetystocklevel,
            makeflag,
            finishedgoodsflag,
            class,
            reorderpoint,
            color,
            style,
            size,
            sizeunitmeasurecode,
            weight,
            weightunitmeasurecode,
            sellstartdate,
            sellenddate,
            modifieddate,

            rowguid
        from {{ source('adventureworks', 'product') }}
    )

select * from source