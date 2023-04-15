SELECT twe_num, COUNT(usid) as us_num
FROM 
(
SELECT user_id as usid, COUNT(tweet_id) as twe_num
FROM tweets
WHERE DATE_PART('YEAR', tweet_date) = 2022
GROUP BY user_id
) as x
GROUP BY twe_num
;