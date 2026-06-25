select
o.order_id,
c.customer_id,
o.order_date,
c.name,
{{ get_date_parts('o.order_date') }} as dateextract

from `iconic-post-500208-i7.raw.orders` o
join {{ ref("stg_customers") }} c on c.customer_id=o.customer_id
