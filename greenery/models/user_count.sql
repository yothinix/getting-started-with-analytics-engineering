select 
  count(distinct user_id) as value
from {{ source('greenery', 'users') }}