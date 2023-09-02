CREATE TABLE `hermes`.`user_data`(
`id_user` INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(60) NOT NULL,
`password` VARCHAR(60) NOT NULL,
PRIMARY KEY(`id_user`)) ENGINE = InnoDB;

CREATE TABLE `hermes`.`entry_data`(
`id_entry` INT NOT NULL AUTO_INCREMENT,
`entry` VARCHAR(4096) NOT NULL,
`create_at` timestamp NULL,
PRIMARY KEY(`id_entry`)) ENGINE = InnoDB;

CREATE TABLE `hermes`.`journal_entry`(
`id_j_entry` INT NOT NULL AUTO_INCREMENT,
`id_user` INT NOT NULL,
`id_entry` INT NOT NULL,
`start_date` DATETIME NOT NULL,
`due_date` DATETIME NOT NULL,
PRIMARY KEY(`id_j_entry`)) ENGINE = InnoDB;

ALTER TABLE `journal_entry`
ADD CONSTRAINT fk_user_id FOREIGN KEY (`id_user`) REFERENCES user_data (`id_user`);

ALTER TABLE `journal_entry`
ADD CONSTRAINT fk_entry_id FOREIGN KEY (`id_entry`) REFERENCES entry_data (`id_entry`);