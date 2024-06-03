/* SELECT customerName, country, salesrepemployeenumber
FROM   classicmodels.customers
WHERE salesrepemployeenumber IS NULL
ORDER BY country,  customerName; */

-- SELECT * FROM Customers WHERE country = 'USA' OR country = 'France';
-- this does the exact same thing as the OR function above SELECT * FROM Customers WHERE country IN ('USA ', 'France ');
#2. Summarize the total payments receiver from Atelier graphique
/*select sum(p.amount) as "Total payments from Atelier"
from payments p join customers c on p.customerNumber = c.customerNumber
where c.customerName = "Atelier graphique";*/

select c.customerName as "Customer", concat(e.firstName , " ", e.lastName) as "Representative Name"
from customers c join employees e on c.salesRepEmployeeNumber = e.employeeNumber
order by c.customerName;

-- calculate the cumulative payments received on each date.
