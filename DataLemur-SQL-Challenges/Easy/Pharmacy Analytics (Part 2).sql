SELECT manufacturer,COUNT(drug) as druf_cout,ROUND((SUM(cogs)-sum(total_sales)),2) as total_loss
FROM pharmacy_sales
WHERE cogs>total_sales
GROUP BY manufacturer
ORDER BY total_loss DESC;