select COUNT(comid) as com_num
from(
select company_id as comid  from job_listings
GROUP BY company_id,title
HAVING COUNT(description) >1
) as x;