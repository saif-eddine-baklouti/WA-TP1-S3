-- MySQL Workbench Synchronization
-- Generated: 2023-10-16 15:01
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: PC

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE TABLE IF NOT EXISTS `ecole`.`class` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `categorie_id` INT(11) NOT NULL,
  `salle_class_id` INT(11) NOT NULL,
  `professeur_id` INT(11) NOT NULL,
  `periode` VARCHAR(100) NULL DEFAULT NULL,
  `duree` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_class_categorie1_idx` (`categorie_id` ASC),
  INDEX `fk_class_salle_class1_idx` (`salle_class_id` ASC),
  INDEX `fk_class_professeur1_idx` (`professeur_id` ASC),
  CONSTRAINT `fk_class_categorie1`
    FOREIGN KEY (`categorie_id`)
    REFERENCES `ecole`.`matiere` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_class_professeur1`
    FOREIGN KEY (`professeur_id`)
    REFERENCES `ecole`.`professeur` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_class_salle_class1`
    FOREIGN KEY (`salle_class_id`)
    REFERENCES `ecole`.`salle_class` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `ecole`.`class_liste` (
  `etudiant_id` INT(11) NOT NULL,
  `class_id` INT(11) NOT NULL,
  PRIMARY KEY (`etudiant_id`, `class_id`),
  INDEX `fk_etudiant_has_class_class1_idx` (`class_id` ASC),
  INDEX `fk_etudiant_has_class_etudiant1_idx` (`etudiant_id` ASC),
  CONSTRAINT `fk_etudiant_has_class_class1`
    FOREIGN KEY (`class_id`)
    REFERENCES `ecole`.`class` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_etudiant_has_class_etudiant1`
    FOREIGN KEY (`etudiant_id`)
    REFERENCES `ecole`.`etudiant` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `ecole`.`etudiant` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(50) NOT NULL,
  `prenom` VARCHAR(50) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `ville` VARCHAR(70) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `ecole`.`matiere` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `ecole`.`professeur` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(50) NOT NULL,
  `prenom` VARCHAR(50) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `ville` VARCHAR(70) NOT NULL,
  `salaire` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `ecole`.`salle_class` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `bloc` VARCHAR(45) NOT NULL,
  `capacity` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `bloc_UNIQUE` (`bloc` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;









--ALTER TABLE `condidat`
  -- ADD CONSTRAINT `fk_condidat_programme1` FOREIGN KEY (`programme_id`) REFERENCES `programme` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
