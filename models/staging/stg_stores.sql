with 
    raw_stores as (
        select *
        from {{ ref('raw_stores') }}
    )

select *
from raw_stores
