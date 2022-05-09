USE classicmodels; 
SELECT 
    t1.customerNumber, 
    t1.customerName, 
    t2.orderNumber, 
    t2.status
FROM
    customers t1
LEFT JOIN orders t2
ON 
    t2.customerNumber = t1.customerNumber;