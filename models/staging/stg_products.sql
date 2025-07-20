with 
    raw_products as (
        select *
        from {{ ref('raw_products') }}
    )

select *
from raw_products
