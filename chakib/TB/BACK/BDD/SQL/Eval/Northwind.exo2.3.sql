SELECT CompanyName,COUNT(UnitsOnOrder) as 'Nombre produits'
FROM Suppliers
Join Products on Products.SupplierID = Suppliers.SupplierID
WHERE Country ='France'
GROUP BY companyname
ORDER BY COUNT(unitsonorder) DESC
