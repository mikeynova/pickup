CREATE DATABASE IF NOT EXISTS `polls_db`;

CREATE TABLE IF NOT EXISTS `Polls` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(50) NULL DEFAULT NULL,
  `text` VARCHAR(200) NULL DEFAULT NULL,
  `vote_score` VARCHAR(5) NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `user_id` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
  
);

CREATE TABLE IF NOT EXISTS `Users` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `session_id` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

ALTER TABLE `Polls` ADD CONSTRAINT FOREIGN KEY (user_id) REFERENCES `Users`(`id`);