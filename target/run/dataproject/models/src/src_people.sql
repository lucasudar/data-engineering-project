create or replace view surfalytics.prod.src_people

as (
    with raw_people as (
        select *
        from
            surfalytics.raw.people
    )

    select
        person,
        region
    from
        raw_people
);
