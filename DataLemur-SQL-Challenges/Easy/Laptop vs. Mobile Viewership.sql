select sum(CASE when device_type='laptop' then 1 else 0 end) as laptop_views ,

sum (CASE when device_type ='phone' or device_type='tablet' then 1 else 0 end) as mobile_views

from viewership;