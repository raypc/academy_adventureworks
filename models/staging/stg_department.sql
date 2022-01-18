with
    source as (
        select
            departmentid,
            name,
            groupname,
            modifieddate
        from {{ source('adventureworks', 'department') }}
    )

select * from source