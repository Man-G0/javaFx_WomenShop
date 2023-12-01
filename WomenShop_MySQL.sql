DROP DATABASE IF EXISTS womenshop;
CREATE DATABASE IF NOT EXISTS womenshop;
USE womenshop;

show variables like 'sql_safe_updates' ;
set sql_safe_updates = 0 ;

drop table if exists shoes;
drop table if exists accessories;
drop table if exists clothes;

CREATE TABLE `womenshop`.`shoes` (
`id_shoes` INT NOT NULL AUTO_INCREMENT,
`name_shoes` VARCHAR(40) NOT NULL,
`price_shoes` DOUBLE NOT NULL,
`nbItems_shoes` INT NOT NULL,
`shoesSize`INT NOT NULL CHECK (`shoesSize`>36 and `shoesSize`<50),
PRIMARY KEY (`id_shoes`))
AUTO_INCREMENT = 1;

CREATE TABLE `womenshop`.`accessories` (
`id_accessories` INT NOT NULL AUTO_INCREMENT,
`name_accessories` VARCHAR(40) NOT NULL,
`price_accessories` DOUBLE NOT NULL,
`nbItems_accessories` INT NOT NULL,
PRIMARY KEY (`id_accessories`))
AUTO_INCREMENT = 1;

CREATE TABLE `womenshop`.`clothes` (
`id_clothes` INT NOT NULL AUTO_INCREMENT,
`name_clothes` VARCHAR(40) NOT NULL,
`price_clothes` DOUBLE NOT NULL,
`nbItems_clothes` INT NOT NULL,
`clothesSize`INT NOT NULL CHECK (`clothesSize`>34 and `clothesSize`<54),
PRIMARY KEY (`id_clothes`))
AUTO_INCREMENT = 1;

INSERT INTO `womenshop`.`clothes`(`name_clothes`, `price_clothes`, `nbItems_clothes`, `clothesSize`) VALUES ('Chemisier', 20.50, 15, 37);
INSERT INTO `womenshop`.`clothes`(`name_clothes`, `price_clothes`, `nbItems_clothes`, `clothesSize`) VALUES ('T-shirt blanc', 15.75, 10, 39);
INSERT INTO `womenshop`.`clothes`(`name_clothes`, `price_clothes`, `nbItems_clothes`, `clothesSize`) VALUES ('T-shirt rouge', 7.00, 30, 38);
INSERT INTO `womenshop`.`clothes`(`name_clothes`, `price_clothes`, `nbItems_clothes`, `clothesSize`) VALUES ('T-shirt noir', 8, 5, 37);

INSERT INTO `womenshop`.`shoes`(`name_shoes`, `price_shoes`, `nbItems_shoes`, `shoesSize`) VALUES ('Baskets', 36.25, 15, 37);
INSERT INTO `womenshop`.`shoes`(`name_shoes`, `price_shoes`, `nbItems_shoes`, `shoesSize`) VALUES ('Converse', 40.15, 10, 39);
INSERT INTO `womenshop`.`shoes`(`name_shoes`, `price_shoes`, `nbItems_shoes`, `shoesSize`) VALUES ('Bottes', 67.12, 30, 37);
INSERT INTO `womenshop`.`shoes`(`name_shoes`, `price_shoes`, `nbItems_shoes`, `shoesSize`) VALUES ('Talons', 30, 5, 38);

INSERT INTO `womenshop`.`accessories`(`name_accessories`, `price_accessories`, `nbItems_accessories`) VALUES ('Echarpe', 15, 15);
INSERT INTO `womenshop`.`accessories`(`name_accessories`, `price_accessories`, `nbItems_accessories`) VALUES ('Bracelet', 6, 10);
INSERT INTO `womenshop`.`accessories`(`name_accessories`, `price_accessories`, `nbItems_accessories`) VALUES ('Boucles d\'oreilles', 30, 30);
INSERT INTO `womenshop`.`accessories`(`name_accessories`, `price_accessories`, `nbItems_accessories`) VALUES ('Collier', 100.11, 5);
