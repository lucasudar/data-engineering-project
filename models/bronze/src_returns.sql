with src_returns as (select * from {{ source("surfalytics", "returns") }})

select order_id, returned
from src_returns
