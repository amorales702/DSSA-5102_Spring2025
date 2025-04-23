-- Question 2 Case Query: How many sales resulted in a fast inventory turn around
-- Tables used: logs and invetory 
-- This is also used for the Max, Min, Case Query
SELECT
    l.sales_id AS sale,
    MIN(i.harvested_dt) AS first_tree,
    MAX(i.harvested_dt) AS last_tree,
    DATEDIFF(MAX(i.harvested_dt), MIN(i.harvested_dt)) AS days_between,
    CASE
        WHEN DATEDIFF(MAX(i.harvested_dt), MIN(i.harvested_dt)) < 100 THEN 'Fast'
        WHEN DATEDIFF(MAX(i.harvested_dt), MIN(i.harvested_dt)) BETWEEN 101 AND 200 THEN 'Average'
        ELSE 'Slow'
    END AS turn_around
FROM logs AS l
JOIN inventory i ON l.Tree_ID = i.Tree_ID
GROUP BY l.sales_id
ORDER BY sale;
