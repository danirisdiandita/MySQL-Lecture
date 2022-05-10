USE classicmodels; 

SELECT
	CONCAT(CONVERT(MONTH(paymentDate), CHAR),' - ' , CONVERT(YEAR(paymentDate), CHAR)) as tanggal_perbulan, 
    SUM(amount) as omset_perbulan
FROM 
	payments
GROUP BY 
	YEAR(paymentDate), MONTH(paymentDate), CONCAT(CONVERT(MONTH(paymentDate), CHAR),' - ' , CONVERT(YEAR(paymentDate), CHAR)) 

ORDER BY 
	YEAR(paymentDate), MONTH(paymentDate)
