select 
  count(distinct user_id) as value

from {{ ref('stg_greenery__users') }}