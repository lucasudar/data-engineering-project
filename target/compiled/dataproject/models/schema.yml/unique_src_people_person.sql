select person as unique_field, count(*) as n_records

from surfalytics.dev.src_people
where person is not null
group by person
having count(*) > 1
