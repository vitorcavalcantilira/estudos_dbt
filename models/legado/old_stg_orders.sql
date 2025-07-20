with 
    old_raw_orders as (
        select *
        from {{ ref('old_raw_orders') }}
    )

select *
from old_raw_orders
