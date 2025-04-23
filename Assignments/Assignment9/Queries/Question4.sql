-- Question4 Null Query: Are there any customers that do nit have addresses in the system
-- Tables used: custoemrs

SELECT *
FROM customers
WHERE Address1 IS NULL;
