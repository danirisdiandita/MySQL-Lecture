SELECT 
    customerName, 
    country, 
    creditLimit 
FROM classicmodels.customers 
WHERE 
    (country = 'USA'
    OR country = 'France')
    AND creditLimit > 100000
ORDER BY customerName; 