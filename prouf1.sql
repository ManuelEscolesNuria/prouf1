CREATE TABLE `Items` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`Item` VARCHAR(255) NOT NULL,
	`Completado` BOOLEAN NOT NULL,
	`Task` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Tasks` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`descrip` varchar(255) NOT NULL,
	`users` INT NOT NULL,
	`Fecha` DATETIME NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Users` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`email` varchar(255) NOT NULL,
	`nombreu` varchar(255) NOT NULL,
	`passw` varchar(255) NOT NULL,
	`Rol` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Roles` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`Rol` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Items` ADD CONSTRAINT `Items_fk0` FOREIGN KEY (`Task`) REFERENCES `Tasks`(`id`);

ALTER TABLE `Tasks` ADD CONSTRAINT `Tasks_fk0` FOREIGN KEY (`users`) REFERENCES `Users`(`id`);

ALTER TABLE `Users` ADD CONSTRAINT `Users_fk0` FOREIGN KEY (`Rol`) REFERENCES `Roles`(`id`);

