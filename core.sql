-- phpMyAdmin SQL Dump
-- version 2.8.2.4
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generatie Tijd: 29 Dec 2006 om 08:28
-- Server versie: 4.1.14
-- PHP Versie: 4.4.4
-- 
-- Database: `dawebmaste_taxi`
-- 

-- --------------------------------------------------------

-- 
-- Tabel structuur voor tabel `bank`
-- 

CREATE TABLE `bank` (
  `id` int(11) NOT NULL auto_increment,
  `owner` int(11) NOT NULL default '0',
  `cash` int(15) NOT NULL default '0',
  `loan` int(15) NOT NULL default '0',
  `pct` double NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Gegevens worden uitgevoerd voor tabel `bank`
-- 

INSERT INTO `bank` VALUES (1, 1, 999299, 0, 0);
INSERT INTO `bank` VALUES (2, 2, 101, 0, 0);

-- --------------------------------------------------------

-- 
-- Tabel structuur voor tabel `banken`
-- 

CREATE TABLE `banken` (
  `id` int(11) NOT NULL auto_increment,
  `owner` int(11) NOT NULL default '1',
  `regio` int(3) NOT NULL default '0',
  `pct` double NOT NULL default '0',
  `reserve` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- 
-- Gegevens worden uitgevoerd voor tabel `banken`
-- 

INSERT INTO `banken` VALUES (1, 1, 1, 3.15, 10000000);
INSERT INTO `banken` VALUES (2, 1, 2, 3.15, 10000000);
INSERT INTO `banken` VALUES (3, 1, 3, 3.15, 10000000);
INSERT INTO `banken` VALUES (4, 1, 4, 3.15, 10000000);
INSERT INTO `banken` VALUES (5, 1, 5, 3.15, 10000000);
INSERT INTO `banken` VALUES (6, 1, 6, 3.15, 10000000);
INSERT INTO `banken` VALUES (7, 1, 7, 3.15, 10000000);
INSERT INTO `banken` VALUES (8, 1, 8, 3.15, 10000000);
INSERT INTO `banken` VALUES (9, 1, 9, 3.15, 10000000);
INSERT INTO `banken` VALUES (10, 1, 10, 3.15, 10000000);
INSERT INTO `banken` VALUES (11, 1, 11, 3.15, 10000000);
INSERT INTO `banken` VALUES (12, 1, 12, 3.15, 10000000);
INSERT INTO `banken` VALUES (13, 1, 13, 3.15, 10000000);
INSERT INTO `banken` VALUES (14, 1, 14, 3.15, 10000000);
INSERT INTO `banken` VALUES (15, 1, 15, 3.15, 10000000);

-- --------------------------------------------------------

-- 
-- Tabel structuur voor tabel `car`
-- 

CREATE TABLE `car` (
  `id` int(11) NOT NULL auto_increment,
  `merk` varchar(50) NOT NULL default '',
  `type` varchar(50) NOT NULL default '',
  `prijs` int(7) NOT NULL default '0',
  `maxkm` int(7) NOT NULL default '0',
  `verbruik` double NOT NULL default '0',
  `stor` enum('1','2','3','4','5','6','7','8','9') NOT NULL default '1',
  `cap` int(3) NOT NULL default '0',
  `klasse` enum('1','2','3','4','5','6','7','8','9') NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

-- 
-- Gegevens worden uitgevoerd voor tabel `car`
-- 

INSERT INTO `car` VALUES (1, 'Mercedes', 'E200 CDI', 50000, 800000, 6.25, '2', 4, '1');
INSERT INTO `car` VALUES (2, 'Mercedes', 'A160 CDI', 38000, 600000, 7.5, '6', 4, '1');
INSERT INTO `car` VALUES (3, 'Smart', 'ForTwo', 18000, 250000, 6.5, '5', 1, '1');
INSERT INTO `car` VALUES (4, 'Smart', 'ForFour', 27500, 300000, 7, '5', 4, '1');
INSERT INTO `car` VALUES (5, 'Opel', 'Omega', 40000, 450000, 7.5, '3', 4, '1');
INSERT INTO `car` VALUES (6, 'Chrysler', 'Voyager', 80000, 800000, 9, '1', 7, '1');
INSERT INTO `car` VALUES (7, 'Mercedes', 'Sprinter', 50000, 500000, 11, '6', 8, '2');
INSERT INTO `car` VALUES (8, 'Ford', 'Transit', 54000, 700000, 7, '4', 8, '2');
INSERT INTO `car` VALUES (9, 'Skoda', 'Octavia', 25000, 300000, 7.5, '3', 4, '1');
INSERT INTO `car` VALUES (10, 'Berkhof', 'Axial 50', 125000, 1500000, 25, '4', 45, '3');
INSERT INTO `car` VALUES (11, 'Volkswagen', 'Passat', 39000, 500000, 7, '3', 4, '1');
INSERT INTO `car` VALUES (12, 'Chrysler', '300', 50000, 800000, 8.25, '4', 4, '1');
INSERT INTO `car` VALUES (13, 'Alfa Romeo', '159', 40000, 600000, 8.25, '8', 4, '1');
INSERT INTO `car` VALUES (14, 'Van Hool', 'Astromega TD927', 175000, 1500000, 33.25, '2', 93, '3');
INSERT INTO `car` VALUES (15, 'Ford', 'Lincoln', 50000, 500000, 12.5, '6', 6, '1');
INSERT INTO `car` VALUES (16, 'BMW', '530d', 75000, 700000, 7, '2', 4, '1');
INSERT INTO `car` VALUES (17, 'Peugeot', '405', 35000, 800000, 9, '3', 4, '1');
INSERT INTO `car` VALUES (18, 'Peugeot', '407', 40000, 800000, 8.25, '3', 4, '1');
INSERT INTO `car` VALUES (19, 'Audi', 'A6', 50000, 600000, 8.25, '2', 4, '1');
INSERT INTO `car` VALUES (20, 'Jaguar', 'S-Type', 60000, 600000, 7, '4', 4, '1');
INSERT INTO `car` VALUES (21, 'Lexus', 'IS250', 45000, 400000, 6.25, '4', 4, '1');
INSERT INTO `car` VALUES (22, 'Citroën', 'DS', 45000, 300000, 10, '8', 4, '1');
INSERT INTO `car` VALUES (23, 'MG', 'ZS', 25000, 250000, 5.25, '9', 4, '1');
INSERT INTO `car` VALUES (24, 'Maybach', 'Maybach', 650000, 5000000, 1, '1', 4, '9');
INSERT INTO `car` VALUES (25, 'Mazda', 'Mazda6', 32500, 600000, 6, '3', 4, '1');
INSERT INTO `car` VALUES (26, 'Volkswagen', 'Transporter', 30000, 600000, 10, '2', 8, '2');
INSERT INTO `car` VALUES (27, 'Opel', 'Vivaro', 20000, 400000, 8.5, '7', 8, '2');
INSERT INTO `car` VALUES (28, 'Nissan', 'Primera', 25000, 450000, 6.25, '7', 4, '1');
INSERT INTO `car` VALUES (29, 'Toyota', 'Avensis', 32500, 500000, 6.25, '2', 4, '1');
INSERT INTO `car` VALUES (30, 'Toyota', 'Corolla', 27500, 400000, 5.5, '3', 4, '1');
INSERT INTO `car` VALUES (31, 'Volvo', 'V50', 40000, 700000, 7.25, '3', 4, '1');
INSERT INTO `car` VALUES (32, 'Rolls Royce', 'Limousine', 175000, 1500000, 16.5, '2', 6, '9');
INSERT INTO `car` VALUES (33, 'Ford', 'Lincoln Stretched Limo', 75000, 500000, 12.5, '6', 8, '9');
INSERT INTO `car` VALUES (34, 'Cadillac', 'Silverstone 130', 140000, 1000000, 12.5, '3', 8, '9');
INSERT INTO `car` VALUES (35, 'Van Hool', 'Astromega TD924', 150000, 1500000, 30, '1', 55, '3');
INSERT INTO `car` VALUES (36, 'Scania', 'Irizar PB', 150000, 1000000, 25, '1', 55, '3');
INSERT INTO `car` VALUES (37, 'Berkhof', 'Axial 100 DD', 200000, 2500000, 25, '1', 79, '3');
INSERT INTO `car` VALUES (38, 'Setra', 'S 417 GT-HD', 250000, 2500000, 25, '2', 57, '3');
INSERT INTO `car` VALUES (39, 'Setra', 'S 431 DT', 300000, 5000000, 30, '1', 89, '3');
INSERT INTO `car` VALUES (40, 'Scania', 'Irizar InterCentury', 125000, 1000000, 20, '3', 37, '3');
INSERT INTO `car` VALUES (41, 'VDL', 'Ambassador 200', 140000, 2000000, 17, '2', 60, '4');
INSERT INTO `car` VALUES (42, 'VDL', 'Ambassador 120', 120000, 2000000, 17, '2', 40, '4');
INSERT INTO `car` VALUES (43, 'Mercedes-Benz', 'Citaro', 150000, 2000000, 16.5, '3', 65, '4');
INSERT INTO `car` VALUES (44, 'Scania', 'OmniLine', 175000, 2000000, 20, '1', 65, '4');
INSERT INTO `car` VALUES (45, 'Volvo', '7700', 100000, 1000000, 25, '4', 55, '4');
INSERT INTO `car` VALUES (46, 'Bell', '429', 1200000, 9000000, 22.5, '3', 5, '8');

-- --------------------------------------------------------

-- 
-- Tabel structuur voor tabel `cars`
-- 

CREATE TABLE `cars` (
  `id` int(11) NOT NULL auto_increment,
  `car` int(11) NOT NULL default '0',
  `type` enum('1','2','3','4','5','6','7','8','9') NOT NULL default '1',
  `owner` int(11) NOT NULL default '0',
  `driver` int(11) NOT NULL default '0',
  `kenteken` varchar(10) NOT NULL default '00-00-00',
  `schade` int(3) NOT NULL default '0',
  `km` int(10) NOT NULL default '0',
  `score` int(3) NOT NULL default '0',
  `waarde` int(10) NOT NULL default '0',
  `cap` int(3) NOT NULL default '0',
  `apk` enum('0','1') NOT NULL default '0',
  `nav` enum('0','1') NOT NULL default '0' COMMENT 'Navigatie',
  `rde` enum('0','1') NOT NULL default '0' COMMENT 'Radar Detector',
  `psc` enum('0','1') NOT NULL default '0' COMMENT 'Politie Scanner',
  `twr` enum('0','1') NOT NULL default '0' COMMENT 'Tweeweg Radio',
  `muz` enum('0','1') NOT NULL default '0' COMMENT 'Muziek',
  `dvd` enum('0','1') NOT NULL default '0' COMMENT 'DVD Speler',
  `zon` enum('0','1') NOT NULL default '0' COMMENT 'Zonnedak',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Gegevens worden uitgevoerd voor tabel `cars`
-- 


-- --------------------------------------------------------

-- 
-- Tabel structuur voor tabel `company`
-- 

CREATE TABLE `company` (
  `id` int(11) NOT NULL auto_increment,
  `owner` int(11) NOT NULL default '0',
  `naam` varchar(50) NOT NULL default '',
  `cash` int(50) NOT NULL default '0',
  `regio` int(3) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Gegevens worden uitgevoerd voor tabel `company`
-- 

INSERT INTO `company` VALUES (1, 1, 'BTax', 1, 1);
INSERT INTO `company` VALUES (2, 2, 'MusTax', 1, 1);

-- --------------------------------------------------------

-- 
-- Tabel structuur voor tabel `driver`
-- 

CREATE TABLE `driver` (
  `id` int(11) NOT NULL auto_increment,
  `owner` int(11) NOT NULL default '0',
  `vn` varchar(30) NOT NULL default '',
  `an` varchar(30) NOT NULL default '',
  `leeftijd` int(2) NOT NULL default '0',
  `car` int(11) NOT NULL default '0',
  `soc` int(3) NOT NULL default '0' COMMENT 'Sociaal',
  `tec` int(3) NOT NULL default '0' COMMENT 'Technisch',
  `vbe` int(3) NOT NULL default '0' COMMENT 'Voertuigbeheersing',
  `str` int(3) NOT NULL default '0' COMMENT 'Stressbestendigheid',
  `vki` int(3) NOT NULL default '0' COMMENT 'Verkeersinzicht',
  `tot` int(3) NOT NULL default '0' COMMENT 'Totaal',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Gegevens worden uitgevoerd voor tabel `driver`
-- 


-- --------------------------------------------------------

-- 
-- Tabel structuur voor tabel `messages`
-- 

CREATE TABLE `messages` (
  `id` int(11) NOT NULL auto_increment,
  `to` int(11) NOT NULL default '0',
  `from` int(11) NOT NULL default '0',
  `message` text NOT NULL,
  `date` varchar(10) NOT NULL default '',
  `new` enum('0','1') NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Gegevens worden uitgevoerd voor tabel `messages`
-- 


-- --------------------------------------------------------

-- 
-- Tabel structuur voor tabel `regio`
-- 

CREATE TABLE `regio` (
  `id` int(11) NOT NULL auto_increment,
  `naam` varchar(50) NOT NULL default '',
  `toll` int(11) NOT NULL default '1000',
  `start` int(11) NOT NULL default '250000',
  `adv` double NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- 
-- Gegevens worden uitgevoerd voor tabel `regio`
-- 

INSERT INTO `regio` VALUES (1, 'Amsterdam', 1000, 250000, 0.85);
INSERT INTO `regio` VALUES (2, 'Rotterdam', 1000, 250000, 0.95);
INSERT INTO `regio` VALUES (3, 'Den Haag', 1000, 250000, 0.95);
INSERT INTO `regio` VALUES (4, 'Utrecht', 1000, 250000, 0.9);
INSERT INTO `regio` VALUES (5, 'Haarlem', 1000, 250000, 1.15);
INSERT INTO `regio` VALUES (6, 'Alkmaar', 1000, 250000, 1.1);
INSERT INTO `regio` VALUES (7, 'Leeuwarden', 1000, 250000, 1.05);
INSERT INTO `regio` VALUES (8, 'Groningen', 1000, 250000, 1.05);
INSERT INTO `regio` VALUES (9, 'Assen', 1000, 250000, 1.15);
INSERT INTO `regio` VALUES (10, 'Zwolle', 1000, 250000, 1.1);
INSERT INTO `regio` VALUES (11, 'Arnhem', 1000, 250000, 1.05);
INSERT INTO `regio` VALUES (12, 'Maastricht', 1000, 250000, 1);
INSERT INTO `regio` VALUES (13, 'Den Bosch', 1000, 250000, 0.95);
INSERT INTO `regio` VALUES (14, 'Helmond', 1000, 250000, 1.15);
INSERT INTO `regio` VALUES (15, 'Middelburg', 1000, 250000, 1.25);

-- --------------------------------------------------------

-- 
-- Tabel structuur voor tabel `users`
-- 

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `login` varchar(25) NOT NULL default '',
  `pass` varchar(32) NOT NULL default '',
  `realname` varchar(50) NOT NULL default '',
  `online` enum('0','1') NOT NULL default '0',
  `email` varchar(80) NOT NULL default '',
  `level` enum('0','1','2','3','4','5','6','7','8','9') NOT NULL default '0',
  `note` text NOT NULL,
  `lang` char(2) NOT NULL default '',
  `created` varchar(15) NOT NULL default '',
  `cash` int(50) NOT NULL default '0',
  `regio` int(3) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Gegevens worden uitgevoerd voor tabel `users`
-- 

INSERT INTO `users` VALUES (1, 'admin', '', 'Firstname Lastname', '0', 'xxx@xxx.xxx', '9', 'Game Admin & Developer', 'nl', '1', 800, 1);

