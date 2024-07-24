-- MySQL Workbench Forward Engineering
-- drop database AerolineaFinal


SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema AerolineaFinal
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema AerolineaFinal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `AerolineaFinal` DEFAULT CHARACTER SET utf8 ;
USE `AerolineaFinal` ;

-- -----------------------------------------------------
-- Table `AerolineaFinal`.`administradores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AerolineaFinal`.`administradores` (
  `idAdmin` INT NOT NULL auto_increment,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `codigo` INT(9) NULL,
  `pass` VARCHAR(45) NULL,
  PRIMARY KEY (`idAdmin`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AerolineaFinal`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AerolineaFinal`.`clientes` (
  `idCliente` INT NOT NULL auto_increment,
  `nombreCliente` VARCHAR(45) NULL,
  `apellidoCliente` VARCHAR(45) NULL,
  `edadCliente` VARCHAR(45) NULL,
  `telefonoCliente` VARCHAR(45) NULL,
  `correoCliente` VARCHAR(45) NULL,
  PRIMARY KEY (`idCliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AerolineaFinal`.`trabajadores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AerolineaFinal`.`trabajadores` (
  `idPersonal` INT NOT NULL auto_increment,
  `nombrePersonal` VARCHAR(45) NULL,
  `apellidoPersonal` VARCHAR(45) NULL,
  `edadPersonal` VARCHAR(45) NULL,
  `telefonoPersonal` VARCHAR(45) NULL,
  `correoPersonal` VARCHAR(45) NULL,
  `cargo` VARCHAR(45) NULL,
  PRIMARY KEY (`idPersonal`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AerolineaFinal`.`compañia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AerolineaFinal`.`compañia` (
  `idCompania` INT NOT NULL auto_increment,
  `nombreCompania` VARCHAR(45) NULL,
  `direccionCompania` VARCHAR(45) NULL,
  `telefonoCompania` VARCHAR(45) NULL,
  `correoCompania` VARCHAR(45) NULL,
  PRIMARY KEY (`idCompania`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AerolineaFinal`.`origen`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AerolineaFinal`.`origen` (
  `idOrigen` INT NOT NULL auto_increment,
  `nombreAeropuertoOrigen` VARCHAR(45) NULL,
  `ciudadOrigen` VARCHAR(45) NULL,
  `codCiudadOrigen` VARCHAR(45) NULL,
  PRIMARY KEY (`idOrigen`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AerolineaFinal`.`destino`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AerolineaFinal`.`destino` (
  `idDestino` INT NOT NULL auto_increment,
  `nombreAeropuertoDestino` VARCHAR(45) NULL,
  `ciudadDestino` VARCHAR(45) NULL,
  `codCiudadDestino` VARCHAR(45) NULL,
  PRIMARY KEY (`idDestino`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AerolineaFinal`.`itinerario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AerolineaFinal`.`itinerario` (
  `idItirenario` INT NOT NULL auto_increment,
  `horaItirenario` TIME NULL,
  `fechaItirenario` DATE NULL,
  `origen_idOrigen` INT NOT NULL,
  `destino_idDestino` INT NOT NULL,
  PRIMARY KEY (`idItirenario`),
  INDEX `fk_itinerario_origen1_idx` (`origen_idOrigen` ASC) VISIBLE,
  INDEX `fk_itinerario_destino1_idx` (`destino_idDestino` ASC) VISIBLE,
  CONSTRAINT `fk_itinerario_origen1`
    FOREIGN KEY (`origen_idOrigen`)
    REFERENCES `AerolineaFinal`.`origen` (`idOrigen`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_itinerario_destino1`
    FOREIGN KEY (`destino_idDestino`)
    REFERENCES `AerolineaFinal`.`destino` (`idDestino`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AerolineaFinal`.`vuelo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AerolineaFinal`.`vuelo` (
  `idVuelo` INT NOT NULL auto_increment,
  `capacidadVuelo` VARCHAR(45) NULL,
  `numeroVuelo` VARCHAR(45) NULL,
  `compañia_idCompania` INT NOT NULL,
  `itinerario_idItirenario` INT NOT NULL,
  PRIMARY KEY (`idVuelo`),
  INDEX `fk_vuelo_compañia1_idx` (`compañia_idCompania` ASC) VISIBLE,
  INDEX `fk_vuelo_itinerario1_idx` (`itinerario_idItirenario` ASC) VISIBLE,
  CONSTRAINT `fk_vuelo_compañia1`
    FOREIGN KEY (`compañia_idCompania`)
    REFERENCES `AerolineaFinal`.`compañia` (`idCompania`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_vuelo_itinerario1`
    FOREIGN KEY (`itinerario_idItirenario`)
    REFERENCES `AerolineaFinal`.`itinerario` (`idItirenario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `AerolineaFinal`.`pasaje`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AerolineaFinal`.`pasaje` (
  `idPasaje` INT NOT NULL auto_increment,
  `clasePasaje` VARCHAR(45) NULL,
  `asientoPasaje` VARCHAR(45) NULL,
  `precioPasaje` VARCHAR(45) NULL,
  `clientes_idCliente` INT NOT NULL,
  `clientes_nombreCliente` VARCHAR(45) NULL,
  `vuelo_idVuelo` INT NOT NULL,
   `vuelo_numeroVuelo`  VARCHAR(45) NULL,
  `trabajadores_idPersonal` INT NOT NULL,
    `trabajadores_nombrePersonal`  VARCHAR(45) NULL,
  PRIMARY KEY (`idPasaje`),
  INDEX `fk_pasaje_trabajadores1_idx` (`trabajadores_idPersonal` ASC) VISIBLE,
  INDEX `fk_pasaje_clientes1_idx` (`clientes_idCliente` ASC) VISIBLE,
  INDEX `fk_pasaje_vuelo1_idx` (`vuelo_idVuelo` ASC) VISIBLE,
  CONSTRAINT `fk_pasaje_trabajadores1`
    FOREIGN KEY (`trabajadores_idPersonal`)
    REFERENCES `AerolineaFinal`.`trabajadores` (`idPersonal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pasaje_clientes1`
    FOREIGN KEY (`clientes_idCliente`)
    REFERENCES `AerolineaFinal`.`clientes` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pasaje_vuelo1`
    FOREIGN KEY (`vuelo_idVuelo`)
    REFERENCES `AerolineaFinal`.`vuelo` (`idVuelo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `AerolineaFinal`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AerolineaFinal`.`categoria` (
  `idcategoria` INT NOT NULL auto_increment,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idcategoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AerolineaFinal`.`producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AerolineaFinal`.`producto` (
  `idproducto` INT NOT NULL auto_increment,
  `nombre` VARCHAR(45) NULL,
  `marca` VARCHAR(45) NULL,
  `precio` VARCHAR(45) NULL,
  `stock` VARCHAR(45) NULL,
  `categoria_idcategoria` INT NOT NULL,
  PRIMARY KEY (`idproducto`),
  INDEX `fk_producto_categoria1_idx` (`categoria_idcategoria` ASC) VISIBLE,
  CONSTRAINT `fk_producto_categoria1`
    FOREIGN KEY (`categoria_idcategoria`)
    REFERENCES `AerolineaFinal`.`categoria` (`idcategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AerolineaFinal`.`boleta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AerolineaFinal`.`boleta` (
  `idboleta` INT NOT NULL auto_increment,
  `fecha` DATE NULL,
  `boletacol` VARCHAR(45) NULL,
  `clientes_idCliente` INT NOT NULL,
  `administradores_idAdmin` INT NOT NULL,
  PRIMARY KEY (`idboleta`),
  INDEX `fk_boleta_administradores_idx` (`administradores_idAdmin` ASC) VISIBLE,
  INDEX `fk_boleta_clientes1_idx` (`clientes_idCliente` ASC) VISIBLE,
  CONSTRAINT `fk_boleta_administradores`
    FOREIGN KEY (`administradores_idAdmin`)
    REFERENCES `AerolineaFinal`.`administradores` (`idAdmin`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_boleta_clientes1`
    FOREIGN KEY (`clientes_idCliente`)
    REFERENCES `AerolineaFinal`.`clientes` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AerolineaFinal`.`producto_has_boleta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AerolineaFinal`.`producto_has_boleta` (
  `producto_idproducto` INT NOT NULL auto_increment,
  `boleta_idboleta` INT NOT NULL,
  `precio` DOUBLE NULL,
  `cantidad` INT NULL,
  PRIMARY KEY (`producto_idproducto`, `boleta_idboleta`),
  INDEX `fk_producto_has_boleta_producto1_idx` (`producto_idproducto` ASC) VISIBLE,
  INDEX `fk_producto_has_boleta_boleta1_idx` (`boleta_idboleta` ASC) VISIBLE,
  CONSTRAINT `fk_producto_has_boleta_producto1`
    FOREIGN KEY (`producto_idproducto`)
    REFERENCES `AerolineaFinal`.`producto` (`idproducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_has_boleta_boleta1`
    FOREIGN KEY (`boleta_idboleta`)
    REFERENCES `AerolineaFinal`.`boleta` (`idboleta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
