with
    raw_supplies as (
        select *
        from {{ ref('raw_supplies') }}
    )

select *
from raw_supplies