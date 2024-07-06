with src_people as (select * from {{ source("surfalytics", "people") }})

select person, region
from src_people
