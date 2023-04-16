SELECT date_part('month',submit_date ::date) as mth,
product_id as product ,
ROUND(AVG(stars),2) as avg_stars

FROM reviews 
GROUP BY product_id, date_part('month',submit_date ::date)
ORDER BY mth,product_id;