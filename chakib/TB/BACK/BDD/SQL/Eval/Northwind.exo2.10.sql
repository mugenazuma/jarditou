SELECT
ROUND (AVG(DATEDIFF(`orders`.`ShippedDate`, `orders`.`OrderDate`)), 0) AS 'Délai moyen de livraison en jours'
FROM `orders`;