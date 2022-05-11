SELECT 
    customerName, 
    country, 
    state 
FROM 
    classicmodels.customers 
WHERE 
    country = 'USA' AND state = 'CA'
ORDER BY customerName; 