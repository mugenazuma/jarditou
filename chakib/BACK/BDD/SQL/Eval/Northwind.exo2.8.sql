SELECT MONTH(orders.OrderDate) AS "Mois 97",
SUM(`order details`.UnitPrice * `order details`.Quantity) AS "Montant Ventes"
FROM orders
JOIN `order details` ON `order details`.OrderID = orders.OrderID
WHERE OrderDate LIKE "1997%"
GROUP BY `Mois 97`;