SELECT  
    customerNumber, 
    checkNumber, 
    paymentDate, 
    amount 
FROM classicmodels.payments 
ORDER BY amount DESC LIMIT 10; 