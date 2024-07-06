create or replace view surfalytics.prod.src_returns

as (
    with raw_returns as (
        select *
        from
            surfalytics.raw.returns
    )

    select
        order_id,
        returned
    from
        raw_returns
);
