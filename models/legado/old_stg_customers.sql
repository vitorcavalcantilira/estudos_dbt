with 
    old_raw_customers as (
        select *
        from {{ ref('old_raw_customers') }}
    )

select *
from old_raw_customers
