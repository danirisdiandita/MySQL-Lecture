USE classicmodels; 
SELECT * from payments limit 5; 

SELECT
	MIN(paymentDate) as startDate, 
    MAX(paymentDate) as endDate
FROM 
	payments; 