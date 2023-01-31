select 
  count(distinct user_id) 
from {{ source('greenery', 'users') }}