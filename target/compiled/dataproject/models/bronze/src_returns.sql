with src_returns as (select * from surfalytics.raw.returns)

select order_id, returned
from src_returns
