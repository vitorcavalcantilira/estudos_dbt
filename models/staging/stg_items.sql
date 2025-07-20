with
    raw_items as (
        select *
        from {{ ref('raw_items') }}
    )

select *
from raw_items