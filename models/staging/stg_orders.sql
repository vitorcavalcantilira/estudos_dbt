with 
    raw_orders as (
        select *
        from {{ ref('raw_orders') }}
    )

select *
from raw_orders
