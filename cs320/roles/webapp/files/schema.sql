-- Schema for the mariadb-developers/php-quickstart sample app.
-- Adapted to be idempotent (IF NOT EXISTS) so the playbook can be re-run
-- safely. The application database itself is created by the lamp role;
-- this script just makes sure the table exists.

CREATE DATABASE IF NOT EXISTS `rolodex`;

CREATE TABLE IF NOT EXISTS `rolodex`.`contacts` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `age` INT(3) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`)
);
