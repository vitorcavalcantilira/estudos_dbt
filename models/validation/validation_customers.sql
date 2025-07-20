{{
  config(
    materialized = 'table'
  )
}}

{% set old_query %}
select *
from {{ ref('old_stg_customers') }}
{% endset %}

{% set new_query %}
select *
from {{ ref('stg_customers') }}
{% endset %}

{{ audit_helper.compare_queries(
    a_query=old_query
    , b_query=new_query
    , primary_key="id"
) }}