USE classicmodels; 
SELECT 
	t1.productCode,
    t1.productName, 
    t2.textDescription as productDescription 
FROM 
	products t1 
INNER JOIN productlines t2 
	ON t1.productLine = t2.productLine; 

