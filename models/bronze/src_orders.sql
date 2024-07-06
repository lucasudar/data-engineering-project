with src_orders as (select * from {{ source("surfalytics", "orders") }})

select
    {{
        dbt_utils.generate_surrogate_key(
            ["order_id", "order_date", "customer_name", "country"]
        )
    }} as dwh_id,
    order_id,
    order_date,
    ship_date,
    ship_mode,
    customer_id,
    customer_name,
    segment,
    country,
    city,
    state,
    postal_code,
    region,
    product_id,
    category,
    sub_category,
    product_name,
    sales,
    quantity,
    discount,
    profit,
    current_timestamp as etl_timestamp
from src_orders
