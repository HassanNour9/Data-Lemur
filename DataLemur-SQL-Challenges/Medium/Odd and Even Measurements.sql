SELECT measurement_day,SUM(
CASE
WHEN rn%2!=0 THEN measurement_value
ELSE 0
END
) as odd_sum,
SUM(
CASE
WHEN rn%2=0 THEN measurement_value
ELSE 0
END
) as even_sum

FROM(
SELECT CAST(measurement_time as date) as measurement_day ,measurement_value,
ROW_NUMBER() OVER(PARTITION BY cast(measurement_time as Date) ORDER BY measurement_time ASC) AS rn
FROM measurements)as ran_meas
GROUP BY measurement_day;