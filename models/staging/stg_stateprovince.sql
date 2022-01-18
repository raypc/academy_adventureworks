with
    source as (
        select
            stateprovinceid,
            name,
            stateprovincecode,
            countryregioncode,
            territoryid,
            isonlystateprovinceflag,
            modifieddate,

            rowguid
        from {{ source('adventureworks', 'stateprovince') }}
    )

select * from source