CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(30) NOT NULL,
  `last_name` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB

CREATE TABLE IF NOT EXISTS `mydb`.`customer_order` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `order_details` VARCHAR(100) NOT NULL,
  `customers_id` INT NOT NULL,
  PRIMARY KEY (`id`, `customers_id`),
  INDEX `fk_customer_order_customers_idx` (`customers_id` ASC) VISIBLE,
  CONSTRAINT `fk_customer_order_customers`
    FOREIGN KEY (`customers_id`)
    REFERENCES `mydb`.`customers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB