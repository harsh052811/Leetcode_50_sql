SELECT 
    r.contest_id,
    ROUND(COUNT(r.user_id) * 100 / 3, 2) AS percentage
FROM 
    register r
JOIN 
    users u 
ON 
    r.user_id = u.user_id
GROUP BY 
    r.contest_id
ORDER BY 
     
    percentage DESC,
    r.contest_id ASC
