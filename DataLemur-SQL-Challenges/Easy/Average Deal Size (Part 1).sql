SELECT ROUND(SUM(cus_rev)/COUNT(cusid),2) as average_deal_size
from (
SELECT customer_id as cusid,(num_seats*yearly_seat_cost::DECIMAL) as cus_rev
FROM contracts) as x ;