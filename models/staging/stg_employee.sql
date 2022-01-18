with
    source as (
        select
            businessentityid as employeeid,
            nationalidnumber,
            loginid,
            jobtitle,
            currentflag,
            salariedflag,
            hiredate,
            gender,
            birthdate,
            maritalstatus,
            vacationhours,
            sickleavehours,
            organizationnode,
            modifieddate,

            rowguid
        from {{ source('adventureworks', 'employee') }}
    )

select * from source