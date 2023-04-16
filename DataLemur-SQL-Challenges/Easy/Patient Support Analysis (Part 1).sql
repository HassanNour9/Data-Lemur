SELECT COUNT(policy_holder_id) as member_count
FROM
(SELECT policy_holder_id
FROM callers
GROUP BY policy_holder_id
HAVING COUNT(case_id)>=3)as pol_hol;    