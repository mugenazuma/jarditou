-- Cas gescom : les requêtes 

-- Q1. Afficher dans l'ordre alphabétique et sur une seule colonne les noms et prénoms des employés qui ont des enfants, présenter d'abord ceux qui en ont le plus.

SELECT emp_lastname,'',emp_firstname,emp_children
FROM employees
WHERE emp_children >=1
ORDER BY emp_children DESC


-- Q2. Y-a-t-il des clients étrangers ? Afficher leur nom, prénom et pays de résidence.

SELECT cus_lastname,cus_firstname
FROM customers
WHERE cus_countries_id NOT IN
               -- sous-requete ici : 
               (SELECT cus_countries_id FROM countries WHERE cus_countries_id = 'FR')



-- Q3. Afficher par ordre alphabétique les villes de résidence des clients ainsi que le code (ou le nom) du pays.

SELECT cus_countries_id
FROM customers
ORDER BY cus_city ASC


-- Q4. Afficher le nom des clients dont les fiches ont été modifiées

SELECT cus_lastname
FROM customers
WHERE cus_update_date is NOT NULL


-- Q5. La commerciale Coco Merce veut consulter la fiche d'un client, mais la seule chose dont elle se souvienne 
-- est qu'il habite une ville genre 'divos'. Pouvez-vous l'aider ?

SELECT cus_countries_id,cus_city
FROM customers
WHERE cus_city like '%divos%'


-- Q6. Quel est le produit vendu le moins cher ? Afficher le prix, l'id et le nom du produit.


SELECT pro_id,pro_name,pro_price
FROM products
ORDER BY pro_price ASC LIMIT 1


-- Q7. Lister les produits qui n'ont jamais été vendus

SELECT pro_id,pro_ref,pro_name
FROM products
WHERE pro_id NOT IN
               -- sous-requete ici : 
               (SELECT ode_pro_id FROM orders_details)


-- Q8. Afficher les produits commandés par Madame Pikatchien.

SELECT pro_id,pro_ref,pro_name,cus_id,ord_id,ode_id
FROM orders
JOIN orders_details ON ord_id = ode_ord_id
JOIN products ON ode_pro_id = pro_id
JOIN customers ON ord_cus_id = cus_id
WHERE pro_name='Pikatchien'


-- Q9. Afficher le catalogue des produits par catégorie, le nom des produits et de la catégorie doivent être affichés.

SELECT cat_id,cat_name,pro_name
FROM products
INNER JOIN categories ON pro_id = cat_id
ORDER BY cat_name ASC

-- Q10. Afficher l'organigramme hiérarchique (nom et prénom et poste des employés) du magasin de Compiègne, classer par ordre alphabétique. 
-- Afficher le nom et prénom des employés, éventuellement le poste (si vous y parvenez).

SELECT employees1.emp_lastname,employees1.emp_firstname,pos_libelle,employeessup.emp_lastname,employeessup.emp_firstname
FROM employees AS employees1
INNER JOIN employees AS employeessup on employeessup.emp_id = employees1.emp_superior_id
INNER JOIN posts ON employees1.emp_pos_id = pos_id
WHERE employees1.emp_city = 'Compiègne'
ORDER BY employees1.emp_lastname ASC


-- Q11. Quel produit a été vendu avec la remise la plus élevée ? Afficher le montant de la remise, le numéro et le nom du produit, le numéro de commande et de ligne de commande.

SELECT ode_discount,pro_id,pro_name,ode_pro_id
FROM orders_details,products
ORDER BY ode_discount DESC LIMIT 1

-- Q13 Combien y-a-t-il de clients canadiens ? Afficher dans une colonne intitulée 'Nb clients Canada'

SELECT COUNT('Nb clients Canada') cus_id,cou_name
FROM customers
JOIN countries ON cus_countries_id= cou_id
WHERE cou_name = 'Canada' 


-- Q16. Afficher le détail des commandes de 2020.

SELECT ode_id,ode_unit_price,ode_discount,ode_ord_id,ode_pro_id,ord_order_date
FROM orders
JOIN orders_details ON ode_ord_id= ord_id
WHERE ord_order_date BETWEEN '2020/1/1' AND '2020/12/31'
ORDER BY ord_order_date DESC


-- Q17. Afficher les coordonnées des fournisseurs pour lesquels des commandes ont été passées.

SELECT DISTINCT sup_id,sup_name,sup_address,sup_city,sup_phone,sup_mail
FROM suppliers
JOIN products ON sup_id= pro_sup_id
JOIN orders_details ON pro_id= ode_pro_id


-- Q18. Quel est le chiffre d'affaires de 2020 ?

SELECT sum(ode_unit_price * ode_quantity)
FROM orders_details
join orders on ord_id = ode_ord_id
WHERE year(ord_order_date)=2020


-- Q19. Quel est le panier moyen ?

SELECT AVG(ode_unit_price)
FROM orders_details


-- Q20. Lister le total de chaque commande par total décroissant (Afficher numéro de commande, date, total et nom du client)

SELECT sum(ode_unit_price * ode_quantity)
FROM customers


