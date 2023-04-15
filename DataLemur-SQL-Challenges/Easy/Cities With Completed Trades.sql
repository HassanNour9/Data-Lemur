select U.city,COUNT(status) as total_orders FROM trades T JOIN users U
on T.user_id=U.user_id
where status ='Completed'
GROUP BY U.city
ORDER BY COUNT(status) DESC
LIMIT 3