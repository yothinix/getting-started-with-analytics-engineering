with

order_per_hour as (
  select 
    date_trunc('hour', created_at), 
    count(order_id) as order_per_hour
  from {{ source('greenery', 'orders') }}
  group by 1
),

avg_order_per_hour as (
  select 
    avg(order_per_hour) 
  from order_per_hour
),

final as (
  select * from avg_order_per_hour
)

select * from final