WITH tap_null AS(
SELECT COUNT(case_id) as count_null
FROM callers
WHERE call_category is NULL or call_category='n/a'
)

SELECT ROUND(100*count_null/(SELECT COUNT(case_id) FROM callers),1) as uncategorised_call_pct
FROM tap_null;