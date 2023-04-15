SELECT user_id,spend,transaction_date
FROM
(SELECT user_id,spend,transaction_date,row_number() OVER(PARTITION BY user_id ORDER BY transaction_date ASC) as rn 
FROM transactions) as ranked
WHERE rn=3;