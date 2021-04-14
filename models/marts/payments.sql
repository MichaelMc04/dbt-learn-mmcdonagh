 with payments as (
    select * from {{ ref('stg_payments') }}
)

select 
    order_id,
    SUM(amount_in_dollars) as amount
 from payments
 where payments.status = 'success'
 group by payments.order_id