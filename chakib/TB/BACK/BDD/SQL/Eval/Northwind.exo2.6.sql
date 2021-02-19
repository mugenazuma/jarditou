SELECT `orders`.`ShipCountry` AS `country`
FROM `orders`
INNER JOIN `order details` ON `order details`.`OrderID` = `orders`.`OrderID`
INNER JOIN `products` ON `products`.`ProductID` = `order details`.`ProductID`
INNER JOIN `suppliers` ON `suppliers`.`SupplierID` = `products`.`SupplierID`
WHERE `suppliers`.`CompanyName` = "Exotic Liquids"
ORDER BY `Country` ASC
;