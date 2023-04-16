SELECT category,product,total_spend 
FROM (
SELECT * ,dense_rank() OVER(PARTITION BY category ORDER BY total_spend DESC) as rn 
FROM
(SELECT category,product,SUM(spend) as total_spend 
FROM product_spend 
WHERE transaction_date BETWEEN '01/01/2022' AND '01/01/2023'
GROUP BY category,product) as tot_sp) as top_spend
WHERE rn<=2;