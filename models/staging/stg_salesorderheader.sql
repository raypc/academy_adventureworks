with
    source as (
        select 
            salesorderid,
            customerid,
            salespersonid,
            shipmethodid,
            billtoaddressid,
            shiptoaddressid,
            territoryid,
            currencyrateid,
            creditcardid,

            purchaseordernumber,
            taxamt,
            onlineorderflag,
            status,
            orderdate,
            creditcardapprovalcode,
            subtotal,
            revisionnumber,
            freight,
            duedate,
            totaldue,
            shipdate,
            accountnumber,
            modifieddate,

            rowguid
        from {{ source('adventureworks', 'salesorderheader') }}
    )

select * from source