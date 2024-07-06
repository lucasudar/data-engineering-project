create or replace view SURFALYTICS.DEV.SRC_PEOPLE

   as (
    with SRC_PEOPLE as (select * from SURFALYTICS.RAW.PEOPLE)

select PERSON, REGION
from SRC_PEOPLE
  );
