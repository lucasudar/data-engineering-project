create or replace view SURFALYTICS.DEV.SRC_RETURNS

   as (
    with SRC_RETURNS as (select * from SURFALYTICS.RAW.RETURNS)

select ORDER_ID, RETURNED
from SRC_RETURNS
  );
