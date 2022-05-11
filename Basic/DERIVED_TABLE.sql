WITH top5products2003 AS (
  SELECT 
    productCode, 
    ROUND(
      SUM(quantityOrdered * priceEach)
    ) sales 
  FROM 
    orderdetails 
    INNER JOIN orders USING (orderNumber) 
  WHERE 
    YEAR(shippedDate) = 2003 
  GROUP BY 
    productCode 
  ORDER BY 
    sales DESC 
  LIMIT 
    5
) 
SELECT 
  productName, 
  sales 
FROM 
  top5products2003 
  INNER JOIN products USING (productCode);
