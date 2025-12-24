with payments as (

    select status, amount from {{ ref('stg_stripe__payments') }} 
    where status = 'success'

),

final as (

    select
        sum(amount) as total_revenue

    from payments

)

select * from final