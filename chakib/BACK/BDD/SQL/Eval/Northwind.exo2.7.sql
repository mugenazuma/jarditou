SELECT SUM(`order details`.UnitPrice * `order details`.Quantity) AS "Montant Ventes 97"
FROM `order details`
JOIN orders ON orders.OrderID = `order details`.OrderID
WHERE OrderDate LIKE "1997%";
