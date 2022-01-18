with
    source as (
        select
            countryregioncode,
            name,
            modifieddate,

            _sdc_sequence
        from {{ source('adventureworks', 'countryregion') }}
    )

select * from source