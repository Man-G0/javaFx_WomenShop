DROP DATABASE IF EXISTS womenshop;
CREATE DATABASE IF NOT EXISTS womenshop;
USE womenshop;

show variables like 'sql_safe_updates' ;
set sql_safe_updates = 0 ;

drop table if exists shoes;
drop table if exists accessories;
drop table if exists clothes;

CREATE TABLE `womenshop`.`product`(
`id` INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(40) NOT NULL,
`price` DOUBLE NOT NULL,
`purchasePrice`DOUBLE NOT NULL,
`nbItems` INT NOT NULL,
primary key(`id`))
AUTO_INCREMENT = 1;

CREATE TABLE `womenshop`.`shoes` (
`id` INT NOT NULL,
`shoesSize`INT NOT NULL CHECK (`shoesSize`>36 and `shoesSize`<50),
PRIMARY KEY (`id`),
FOREIGN KEY (`id`) REFERENCES `womenshop`.`product`(`id`));

CREATE TABLE `womenshop`.`accessories` (
`id` INT NOT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`id`) REFERENCES `womenshop`.`product`(`id`));

CREATE TABLE `womenshop`.`clothes` (
`id` INT NOT NULL,
`clothesSize`INT NOT NULL CHECK (`clothesSize`>34 and `clothesSize`<54),
PRIMARY KEY (`id`),
FOREIGN KEY (`id`) REFERENCES `womenshop`.`product`(`id`));


INSERT INTO `womenshop`.`product`(`name`, `price`, `nbItems`, `purchasePrice`) VALUES ('Chemisier', 20.50, 15, 19.5);
INSERT INTO `womenshop`.`product`(`name`, `price`, `nbItems`, `purchasePrice`) VALUES ('T-shirt blanc', 15.75, 10, 13);
INSERT INTO `womenshop`.`product`(`name`, `price`, `nbItems`, `purchasePrice`) VALUES ('T-shirt rouge', 7.00, 38,4);
INSERT INTO `womenshop`.`product`(`name`, `price`, `nbItems`, `purchasePrice`) VALUES ('T-shirt noir', 8, 5,7.5);
INSERT INTO `womenshop`.`product`(`name`, `price`, `nbItems`, `purchasePrice`) VALUES ('Baskets', 36.25, 15, 35);
INSERT INTO `womenshop`.`product`(`name`, `price`, `nbItems`, `purchasePrice`) VALUES ('Converse', 40.15, 10, 38);
INSERT INTO `womenshop`.`product`(`name`, `price`, `nbItems`, `purchasePrice`) VALUES ('Bottes', 67.12, 30,60);
INSERT INTO `womenshop`.`product`(`name`, `price`, `nbItems`, `purchasePrice`) VALUES ('Talons', 30, 5,25);
INSERT INTO `womenshop`.`product`(`name`, `price`, `nbItems`, `purchasePrice`) VALUES ('Echarpe', 15, 15, 12);
INSERT INTO `womenshop`.`product`(`name`, `price`, `nbItems`, `purchasePrice`) VALUES ('Bracelet', 6, 10, 3);
INSERT INTO `womenshop`.`product`(`name`, `price`, `nbItems`, `purchasePrice`) VALUES ('Boucles d\'oreilles', 30, 30, 25);
INSERT INTO `womenshop`.`product`(`name`, `price`, `nbItems`, `purchasePrice`) VALUES ('Collier', 100.11, 5, 98);

INSERT INTO `womenshop`.`clothes`(`id`, `clothesSize`) VALUES (1, 36);
INSERT INTO `womenshop`.`clothes`(`id`, `clothesSize`) VALUES (2, 37);
INSERT INTO `womenshop`.`clothes`(`id`, `clothesSize`) VALUES (3, 38);
INSERT INTO `womenshop`.`clothes`(`id`, `clothesSize`) VALUES (4, 39);

INSERT INTO `womenshop`.`accessories`(`id`) VALUES (9);
INSERT INTO `womenshop`.`accessories`(`id`) VALUES (10);
INSERT INTO `womenshop`.`accessories`(`id`) VALUES (11);
INSERT INTO `womenshop`.`accessories`(`id`) VALUES (12);

INSERT INTO `womenshop`.`shoes`(`id`, `shoesSize`) VALUES (5, 37);
INSERT INTO `womenshop`.`shoes`(`id`, `shoesSize`) VALUES (6, 38);
INSERT INTO `womenshop`.`shoes`(`id`, `shoesSize`) VALUES (7, 39);
INSERT INTO `womenshop`.`shoes`(`id`, `shoesSize`) VALUES (8, 40);
