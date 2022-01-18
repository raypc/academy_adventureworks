with
    source as (
        select 
            creditcardid,
            cardtype,
            cardnumber,
            expmonth,
            expyear,
            modifieddate
        from {{ source('adventureworks', 'creditcard') }}
    )

select * from source