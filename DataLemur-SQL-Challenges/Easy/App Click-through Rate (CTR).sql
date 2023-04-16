SELECT app_id,ROUND(100.0*click_count/impression_count,2) as ctr from
(SELECT app_id,SUM(CASE when event_type='click' then 1 ELSE 0 END) as click_count,
SUM(CASE when event_type='impression' then 1 ELSE 0 END) as impression_count
from events 
WHERE date_part('year',timestamp ::Date)=2022
GROUP BY app_id) as APPP;
