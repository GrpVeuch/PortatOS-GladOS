-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 25 Janvier 2016 à 16:32
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `db_gesproj`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_brand`
--

CREATE TABLE IF NOT EXISTS `t_brand` (
  `idBrand` int(11) NOT NULL AUTO_INCREMENT,
  `braName` varchar(25) CHARACTER SET latin1 NOT NULL,
  `braOS` varchar(25) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`idBrand`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=16 ;

--
-- Contenu de la table `t_brand`
--

INSERT INTO `t_brand` (`idBrand`, `braName`, `braOS`) VALUES
(1, 'Apple', 'IOS'),
(2, 'Samsung', 'Android'),
(3, 'Huawei', 'Android'),
(4, 'Sony', 'Android'),
(5, 'LG', 'Android'),
(6, 'HTC', 'Android'),
(7, 'Asus', 'Android'),
(8, 'OnePlus', 'Android'),
(9, 'Archos', 'Android'),
(10, 'Motorola', 'Android'),
(11, 'Microsoft', 'Windows Phone'),
(12, 'Acer', 'Android'),
(13, 'BlackBerry', 'BlackBerry OS'),
(14, 'Google', 'Android'),
(15, 'Yota Devices', 'Android');

-- --------------------------------------------------------

--
-- Structure de la table `t_smartphones`
--

CREATE TABLE IF NOT EXISTS `t_smartphones` (
  `idSmartphone` int(11) NOT NULL AUTO_INCREMENT,
  `smaName` varchar(25) NOT NULL,
  `smaScreenSize` int(11) NOT NULL,
  `smaCPU` float NOT NULL,
  `smaMultiHeart` int(11) NOT NULL,
  `smaRAM` int(11) NOT NULL,
  `smaBatteryLife` varchar(25) NOT NULL,
  `smaReleasePrice` float NOT NULL,
  `smaActualPrice` float NOT NULL,
  `fkBrand` int(11) NOT NULL,
  PRIMARY KEY (`idSmartphone`),
  KEY `fkBrand` (`fkBrand`),
  KEY `fkBrand_2` (`fkBrand`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Contenu de la table `t_smartphones`
--

INSERT INTO `t_smartphones` (`idSmartphone`, `smaName`, `smaScreenSize`, `smaCPU`, `smaMultiHeart`, `smaRAM`, `smaBatteryLife`, `smaReleasePrice`, `smaActualPrice`, `fkBrand`) VALUES
(1, 'Galaxy S6 Edge+', 6, 2.1, 8, 4, '3000', 799, 725, 2),
(2, 'HONOR 7', 5, 1.85, 8, 3, '3100', 349, 349, 3),
(3, 'XPERIA Z5', 5, 1.75, 8, 3, '2900', 699, 575, 4),
(4, 'LG G4', 6, 1.8, 6, 3, '3000', 649, 498.5, 5),
(5, 'Desire Eye', 5, 2.3, 4, 2, '2100', 499, 289.9, 6),
(6, 'Zenfone 2 ZE551ML ', 6, 2.3, 4, 4, '3000', 349, 299, 7),
(7, 'OnePlus 2', 6, 1.8, 8, 3, '3300', 339, 427.49, 8),
(8, '50 Diamond', 5, 1.7, 8, 2, '2700', 199, 198, 9),
(9, 'Galaxy S6', 5, 2.1, 8, 3, '2550', 699, 490, 2),
(10, 'XPERIA Z3', 5, 2.5, 4, 3, '3100', 549, 430, 4),
(11, 'Moto X Play', 6, 1.7, 8, 2, '3630', 379, 354.99, 10),
(12, 'Galaxy A5', 5, 1.2, 4, 2, '2300', 399, 279.99, 2),
(13, 'HONOR 6 Plus', 6, 1.8, 8, 3, '3600', 399, 349.49, 3),
(14, 'Lumia 640 4G SI', 5, 1.2, 4, 1, '2500', 179, 168.9, 11),
(15, 'IPhone 6 (16 Go)', 5, 1.4, 2, 1, '1810', 709, 599, 1),
(16, 'IPhone 6s (16Go)', 5, 1.7, 2, 2, '1715', 749, 699, 1),
(17, 'IPhone 6s Plus (16 Go)', 6, 1.7, 2, 2, '1800', 859, 848, 1),
(18, 'Lumia 950 XL 4G', 6, 2, 8, 3, '3340', 699, 649, 11),
(19, 'LG Nexus 5X', 5, 1.85, 8, 2, '2700', 479, 437.9, 5),
(20, 'Liquid Z530', 5, 1.3, 4, 2, '2420', 129, 129, 12),
(21, 'Liquid Z630', 6, 1.3, 4, 2, '4000', 199, 154.9, 12),
(22, 'Galaxy Note 4', 6, 2.7, 4, 3, '3220', 749, 499, 2),
(23, 'BlackBerry Passport', 5, 2.2, 4, 3, '3450', 649, 460, 13),
(24, 'BlackBerry Priv', 5, 1.8, 6, 3, '3410', 799, 739, 13),
(25, 'Moto X Force', 5, 2, 8, 3, '3760', 699, 699, 10),
(26, 'Ascend Mate 7', 6, 1.8, 8, 2, '4100', 499, 395.68, 3),
(27, 'Nexus 6 (32Go)', 6, 2.7, 4, 3, '3220', 649, 469, 14),
(28, 'One M9', 5, 2, 8, 3, '2840', 749, 509, 6),
(29, 'Galaxy Alpha', 5, 1.8, 8, 2, '1860', 619, 209.9, 2),
(30, 'YotaPhone 2', 5, 2.26, 4, 2, '2500', 699, 529.74, 15);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `t_smartphones`
--
ALTER TABLE `t_smartphones`
  ADD CONSTRAINT `t_smartphones_ibfk_1` FOREIGN KEY (`fkBrand`) REFERENCES `t_brand` (`idBrand`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
