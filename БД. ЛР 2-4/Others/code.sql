-- MySQL Workbench Synchronization
-- Generated: 2021-10-17 17:54
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: User

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `OnlineShop` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE IF NOT EXISTS `OnlineShop`.`Goods` (
  `idGoods` INT(11) NOT NULL AUTO_INCREMENT,
  `goodCode` INT(11) NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `pirice` INT(11) NOT NULL,
  `unit` ENUM("шт.", "кг", "л") NOT NULL,
  `quantityInStcok` INT(11) NOT NULL,
  PRIMARY KEY (`idGoods`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `OnlineShop`.`Customers` (
  `idCustomers` INT(11) NOT NULL AUTO_INCREMENT,
  `customerCode` INT(11) NOT NULL,
  `surname` VARCHAR(45) NOT NULL,
  `firstname` VARCHAR(45) NOT NULL,
  `middlename` VARCHAR(45) NULL DEFAULT NULL,
  `address` VARCHAR(45) NOT NULL,
  `phoneNumber` VARCHAR(10) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `isRegularCustomer` TINYINT(4) NOT NULL,
  PRIMARY KEY (`idCustomers`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `OnlineShop`.`Sells` (
  `idSells` INT(11) NOT NULL AUTO_INCREMENT,
  `sellСode` INT(11) NOT NULL,
  `Goods_id` INT(11) NOT NULL,
  `quantity` INT(11) NOT NULL,
  `сost` INT(11) NOT NULL,
  `Orders_id` INT(11) NOT NULL,
  PRIMARY KEY (`idSells`),
  INDEX `fk_Sells_Goods_idx` (`Goods_id` ASC) VISIBLE,
  INDEX `fk_Sells_Orders1_idx` (`Orders_id` ASC) VISIBLE,
  CONSTRAINT `fk_Sells_Goods`
    FOREIGN KEY (`Goods_id`)
    REFERENCES `OnlineShop`.`Goods` (`idGoods`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Sells_Orders1`
    FOREIGN KEY (`Orders_id`)
    REFERENCES `OnlineShop`.`Orders` (`idOrders`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `OnlineShop`.`Orders` (
  `idOrders` INT(11) NOT NULL AUTO_INCREMENT,
  `orderCode` INT(11) NOT NULL,
  `Customers_id` INT(11) NOT NULL,
  `costOfOrder` INT(11) NOT NULL,
  `dateOfSale` DATE NOT NULL,
  `dateOfDelivery` DATE NOT NULL,
  PRIMARY KEY (`idOrders`),
  INDEX `fk_Orders_Customers1_idx` (`Customers_id` ASC) VISIBLE,
  CONSTRAINT `fk_Orders_Customers1`
    FOREIGN KEY (`Customers_id`)
    REFERENCES `OnlineShop`.`Customers` (`idCustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
