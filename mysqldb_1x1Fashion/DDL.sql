CREATE DATABASE `1x1fashion` /*!40100 DEFAULT CHARACTER SET utf8 */;

CREATE TABLE `etsyClothiers` (
  `ClothierId` smallint(1) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `About` text,
  `StoreURL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ClothierId`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `etsyClothierWebsites` (
  `ClothierId` smallint(1) DEFAULT NULL,
  `Url` varchar(255) DEFAULT NULL,
  `UrlType` varchar(255) DEFAULT NULL,
  KEY `ClothierId_idx` (`ClothierId`),
  CONSTRAINT `ClothierId` FOREIGN KEY (`ClothierId`) REFERENCES `etsyClothiers` (`ClothierId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
