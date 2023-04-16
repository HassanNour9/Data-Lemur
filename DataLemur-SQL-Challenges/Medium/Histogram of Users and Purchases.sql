SELECT transaction_date,user_id,COUNT(product_id) as pruchase_count
FROM
(SELECT transaction_date,user_id,product_id,
dense_rank() OVER(PARTITION BY user_id 
ORDER BY transaction_date DESC) as rn
FROM user_transactions ) as recent_trans
WHERE rn=1
GROUP BY transaction_date, user_id ;