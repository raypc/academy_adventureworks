with
    source as (
        select
            businessentityid as personid,
            persontype,
            namestyle,
            title,
            firstname,
            middlename,
            lastname,
            suffix,
            emailpromotion,
            modifieddate,

            rowguid
        from {{ source('adventureworks', 'person') }}
    )

select * from source