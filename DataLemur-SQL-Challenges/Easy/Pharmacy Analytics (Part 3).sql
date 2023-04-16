SELECT manufacturer ,concat('$',ROUND((SUM(total_sales)/1000000),0),' million') as sale FROM pharmacy_sales 
GROUP BY manufacturer
ORDER BY SUM(total_sales) DESC;
