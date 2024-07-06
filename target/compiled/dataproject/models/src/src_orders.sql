with raw_orders as (select * from surfalytics.raw.orders)

select
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
    md5(
        cast(
            coalesce(cast(order_id as text), '_dbt_utils_surrogate_key_null_')
            || '-'
            || coalesce(cast(order_date as text), '_dbt_utils_surrogate_key_null_')
            || '-'
            || coalesce(cast(customer_name as text), '_dbt_utils_surrogate_key_null_')
            || '-'
            || coalesce(cast(country as text), '_dbt_utils_surrogate_key_null_') as text
        )
    ) as dwh_id,
    current_timestamp as etl_timestamp
from raw_orders
