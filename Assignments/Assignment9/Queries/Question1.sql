-- Question 1 Case Query: Which states have the highest volume of customers 
-- Tables used: customers 

WITH state_totals AS (
    SELECT 
        State,
        COUNT(id) AS total_customers
    FROM 
        customers
    GROUP BY 
        State
),
overall_total AS (
    SELECT 
        SUM(total_customers) AS total_all_customers
    FROM 
        state_totals
)
SELECT 
    s.State,
    s.total_customers,
    CASE 
        WHEN s.total_customers < 0.02 * o.total_all_customers THEN 'low'
        WHEN s.total_customers BETWEEN 0.02 * o.total_all_customers AND 0.1 * o.total_all_customers THEN 'medium'
        ELSE 'high'
    END AS volume
FROM 
    state_totals s,
    overall_total o
Order By State;
