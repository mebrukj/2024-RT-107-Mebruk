SELECT productName AS "Name",
buyPrice AS "Buy Price", 
productLine AS "Product Line" 
FROM products
ORDER BY buyPrice DESC;

SELECT contactFirstName AS "First Name", 
contactLastName AS "Last Name",
city AS "City"
FROM customers
WHERE country = 'Germany'
ORDER BY "Last Name" ASC;

SELECT DISTINCT status
FROM orders
ORDER BY status ASC;

SELECT paymentDate
FROM payments
WHERE paymentDate >= "2005-01-01"
ORDER BY paymentDate DESC;

SELECT 
    lastName AS "Last Name", 
    firstName AS "First Name", 
    email AS "Email Address", 
    jobTitle AS "Job Title" 
FROM employees
WHERE officeCode = 1
ORDER BY lastName;

SELECT
    productName AS Name,
    productLine AS Product_Line,
    productScale AS Scale,
    productVendor AS Vendor
FROM products
WHERE productLine IN ('Vintage Cars', 'Classic Cars')
ORDER BY 
    CASE WHEN productLine = 'Vintage Cars' THEN 1 ELSE 2 END,
    productName



