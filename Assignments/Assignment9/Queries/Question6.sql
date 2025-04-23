-- Question 6 MaxMin Query: What is the largest and smallest diameter found in species 1, 3, and 7 
-- Tables used invetory 
SELECT
    MAX(DIA) AS max_dia,
    MIN(DIA) AS min_dia
FROM inventory
WHERE Species_ID IN ('SP01', 'SP03', 'SP07');
