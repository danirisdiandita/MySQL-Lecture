SELECT 
    officeCode, 
    city, 
    phone, 
    country 
FROM 
    classicmodels.offices 
WHERE
    country IN ('USA', 'France'); 