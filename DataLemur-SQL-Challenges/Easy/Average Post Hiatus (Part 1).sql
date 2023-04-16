select user_id,(max(post_date :: Date)-min(post_date ::Date)) as days_between FROM posts 
where Date_part('year',post_date :: Date)=2021
GROUP BY user_id
HAVING COUNT(post_id)>1;