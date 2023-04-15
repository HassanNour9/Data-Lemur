SELECT P.page_id  FROM pages P
WHERE P.page_id NOT IN ( SELECT Pa.page_id FROM page_likes Pa );