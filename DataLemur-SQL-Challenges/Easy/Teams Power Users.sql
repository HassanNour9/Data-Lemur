SELECT DISTINCT(sender_id),COUNT(message_id) OVER(PARTITION BY sender_id ) as message_count
from messages 
WHERE EXTRACT(year FROM sent_date) =2022 and EXTRACT(month from sent_date)=8 
ORDER BY message_count DESC
LIMIT 2;
