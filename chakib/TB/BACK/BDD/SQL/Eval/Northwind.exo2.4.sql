SELECT customers.CompanyName, COUNT(orders.OrderID)
FROM customers
	INNER JOIN orders ON orders.CustomerID = customers.CustomerID
WHERE Country ='FRANCE'
GROUP BY customers.CustomerID
HAVING COUNT(orders.OrderID) > 10