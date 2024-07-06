create or replace view SURFALYTICS.DEV.SRC_ORDERS

   as (
    with SRC_ORDERS as (select * from SURFALYTICS.RAW.ORDERS)

select
    ORDER_ID,
    ORDER_DATE,
    SHIP_DATE,
    SHIP_MODE,
    CUSTOMER_ID,
    CUSTOMER_NAME,
    SEGMENT,
    COUNTRY,
    CITY,
    STATE,
    POSTAL_CODE,
    REGION,
    PRODUCT_ID,
    CATEGORY,
    SUB_CATEGORY,
    PRODUCT_NAME,
    SALES,
    QUANTITY,
    DISCOUNT,
    PROFIT,
    md5(
        cast(
            coalesce(cast(ORDER_ID as TEXT), '_dbt_utils_surrogate_key_null_')
            || '-'
            || coalesce(cast(ORDER_DATE as TEXT), '_dbt_utils_surrogate_key_null_')
            || '-'
            || coalesce(cast(CUSTOMER_NAME as TEXT), '_dbt_utils_surrogate_key_null_')
            || '-'
            || coalesce(cast(COUNTRY as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT
        )
    ) as DWH_ID,
    current_timestamp as ETL_TIMESTAMP
from SRC_ORDERS
  );
