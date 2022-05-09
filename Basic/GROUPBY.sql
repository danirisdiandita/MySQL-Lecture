use classicmodels; 

SELECT 
    status, COUNT(*) AS statuscount 
FROM 
    orders
GROUP BY status; 