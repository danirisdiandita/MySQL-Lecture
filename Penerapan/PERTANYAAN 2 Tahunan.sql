USE classicmodels; 

SELECT
	EXTRACT (year FROM paymentDate) AS tahun, 
    SUM (amount) AS omset_tahunan
FROM 
	payments
GROUP BY
	tahun
ORDER BY tahun; 
