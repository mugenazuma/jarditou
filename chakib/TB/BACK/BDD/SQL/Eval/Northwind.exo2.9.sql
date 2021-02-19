SELECT *
FROM Customers
JOIN Orders ON Orders.CustomerID=Customers.CustomerID
WHERE companyName='Du monde entier'
ORDER BY OrderDate desc
LIMIT 1





