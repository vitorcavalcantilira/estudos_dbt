with 
    raw_orders as (
        select *
        from {{ ref('raw_orders') }}
    )

    /*
    Inserindo colunas para analisar o comando dbt source freshness.
        ordered_at as et_loaded_at 
        current_timestamp as system_loaded_at
    */
    , final_load_time as (
        select 
            id	
            , customer	
            , store_id	
            , subtotal	
            , tax_paid	
            , order_total
            , ordered_at	
            , ordered_at as et_loaded_at 
            , current_timestamp as system_loaded_at
        from raw_orders
    )
    
select *
from final_load_time
