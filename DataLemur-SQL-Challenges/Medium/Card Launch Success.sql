SELECT card_name,issued_amount FROM(
SELECT * ,dense_rank() OVER(PARTITION BY card_name ORDER BY issue_year,issue_month) as rn
FROM monthly_cards_issued)as top_iss
WHERE rn=1
ORDER BY issued_amount DESC;