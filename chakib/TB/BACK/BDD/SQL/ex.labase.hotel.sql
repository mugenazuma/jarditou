DROP DATABASE `Hotel`;
CREATE DATABASE `Hotel`;
USE `Hotel`;

CREATE TABLE `Station`(
stat_num INT PRIMARY KEY,
stat_nom VARCHAR (30)
);

CREATE TABLE `Hotel`(
`num_hotel` int primary key,
`nom_hotel` varchar (30),
`adresse_hotel` varchar (100),
`categorie_hotel` varchar (30),
`capacite_hotel` INT,
`num_station` int references station(num_station)
);

CREATE TABLE `Chambre`(
`chamb_num_hotel` INT PRIMARY KEY,
`chamb_capacite` INT NOT NULL,
`chamb_degre_confort` INT NOT NULL,
`chamb_exposition` Varchar(50) NOT NULL,
`chamb_type` Varchar(50) NOT NULL
);

CREATE TABLE `Clients`(
`cli_num` INT PRIMARY KEY,
`cli_adresse` VARCHAR(100),
`cli_nom` VARCHAR(50) NOT NULL,
`cli_prenom` VARCHAR(50) NOT NULL
);

CREATE TABLE `Réservation`(
`reser_num_chambre` INT PRIMARY KEY NOT NULL,
`reser_num_client` INT NOT NULL,
`reser_date_debut` INT NOT NULL,
`reser_date_fin` INT NOT NULL,
`reser_date_reservation` INT NOT NULL,
`reser_montant_arrhes` INT,
`reser_prix_total` INT
);