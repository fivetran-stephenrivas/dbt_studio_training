select
    id as order_id,
    user_id as customer_id,
    order_date,
    status

from comm_se_sandbox.dbt_jaffle_shop.orders