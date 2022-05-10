# select * from payments; 
WITH mytable as (
SELECT 
	t1.customerNumber, 
	t1.country, 
    t2.amount
FROM customers t1
INNER JOIN 
payments t2
ON t1.customerNumber = t2.customerNumber

)


SELECT 
	country, 
    SUM(amount) as total_spent
FROM mytable
GROUP BY country
ORDER BY total_spent DESC; 