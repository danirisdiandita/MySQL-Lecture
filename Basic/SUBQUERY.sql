SELECT 
  lastName, 
  firstName 
FROM 
  employees 
WHERE 
  officeCode in (
    SELECT 
      officeCode 
    FROM 
      offices 
    WHERE 
      country = 'USA'
  );
