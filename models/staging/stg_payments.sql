select
    orderid as order_id,
    status,
    amount/100 as amount_in_dollars
from raw.stripe.payment