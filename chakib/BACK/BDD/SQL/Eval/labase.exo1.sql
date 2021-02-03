DROP DATABASE `labase exo1`;
CREATE DATABASE `labase exo1`;
USE `labase exo1`;

CREATE TABLE `Commande`(
`com_num` INT PRIMARY KEY,
`cli_num` INT references client(cli_num),
`com_date`DATETIME,
`com_obs`VARCHAR(50)
);

CREATE TABLE `Produit`(
`pro_num` INT PRIMARY KEY,
`pro_libelle`VARCHAR(50),
`pro_description`VARCHAR(50)
);

CREATE TABLE `Client`(
`cli_num` INT PRIMARY KEY,
`cli_nom`VARCHAR(50),
`cli_adresse`VARCHAR(50),
`cli_tel` VARCHAR(50)
);

CREATE TABLE `Est_compose`(
`com_num` INT references commande(com_num),
`pro_num` INT references produit(pro_num),
`est_qte` INT,
PRIMARY KEY(com_num,pro_num)
);

create index indexcli on client (cli_nom);
SHOW INDEX FROM `Client`;
