-- MySQL dump 10.17  Distrib 10.3.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: versicherungen
-- ------------------------------------------------------
-- Server version	10.3.25-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Abteilung`
--

DROP TABLE IF EXISTS `Abteilung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Abteilung` (
  `ID` int(11) NOT NULL,
  `Kuerzel` varchar(10) NOT NULL,
  `Bezeichnung` varchar(30) NOT NULL,
  `Ort` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Abteilung`
--

LOCK TABLES `Abteilung` WRITE;
/*!40000 ALTER TABLE `Abteilung` DISABLE KEYS */;
INSERT INTO `Abteilung` VALUES (1,'Fibu','Finanzbuchhaltung','Dortmund'),(2,'Albu','Anlagenbuchhaltung','Dortmund'),(3,'Kore','Kostenrechnung','Dortmund'),(4,'Kopl','Kostenplanung','Dortmund'),(5,'Vert','Vertrieb','Essen'),(6,'Lagh','Lagerhaltung','Bochum'),(7,'Prod','Produktion','Bochum'),(8,'ScAb','Schadensabwicklung','Essen'),(9,'Pers','Personalverwaltung','Essen'),(10,'Soz','Sozialverwaltung','Essen'),(11,'Ausb','Ausbildung','Herne'),(12,'Fue','Forschung und Entwicklung','Bochum');
/*!40000 ALTER TABLE `Abteilung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Dienstwagen`
--

DROP TABLE IF EXISTS `Dienstwagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dienstwagen` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Kennzeichen` varchar(10) NOT NULL,
  `Farbe` varchar(30) DEFAULT NULL,
  `Fahrzeugtyp_ID` int(11) NOT NULL,
  `Mitarbeiter_ID` int(11) DEFAULT NULL,
  `Kilometerstand` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dienstwagen`
--

LOCK TABLES `Dienstwagen` WRITE;
/*!40000 ALTER TABLE `Dienstwagen` DISABLE KEYS */;
INSERT INTO `Dienstwagen` VALUES (1,'DO-WB 421','elfenbein',14,1,37526.00),(2,'DO-WB 422','elfenbein',14,3,37930.00),(3,'DO-WB 423','elfenbein',14,5,37966.00),(4,'DO-WB 424','elfenbein',14,7,37638.00),(5,'DO-WB 425','elfenbein',14,9,37829.00),(6,'DO-WB 426','elfenbein',14,13,13370.00),(7,'DO-WB 427','elfenbein',14,15,46886.00),(8,'DO-WB 428','elfenbein',14,17,28129.00),(9,'DO-WB 429','elfenbein',14,21,37759.00),(10,'DO-WB 4210','elfenbein',14,23,37782.00),(11,'DO-WB 4211','elfenbein',14,25,23238.00),(12,'DO-WB 4212','elfenbein',14,27,37957.00),(16,'DO-WB 111','elfenbein',16,NULL,37722.00),(17,'DO-WB 352','gelb',2,10,37960.00),(18,'DO-WB 353','gelb',3,11,37735.00),(19,'DO-WB 354','gelb',4,12,37677.00),(20,'DO-WB 382','gelb',2,18,24752.00),(21,'DO-WB 383','gelb',3,19,37687.00),(22,'DO-WB 384','gelb',4,20,11833.00);
/*!40000 ALTER TABLE `Dienstwagen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fahrzeug`
--

DROP TABLE IF EXISTS `Fahrzeug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fahrzeug` (
  `ID` int(11) NOT NULL,
  `Kennzeichen` varchar(10) NOT NULL,
  `Farbe` varchar(30) DEFAULT NULL,
  `Fahrzeugtyp_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fahrzeug`
--

LOCK TABLES `Fahrzeug` WRITE;
/*!40000 ALTER TABLE `Fahrzeug` DISABLE KEYS */;
INSERT INTO `Fahrzeug` VALUES (1,'RE-LM 901','ocker',5),(2,'RE-LM 902','ocker',5),(3,'RE-LM 903','ocker',5),(4,'GE-AB 123','schwarz',22),(5,'RE-CD 456','ocker',21),(6,'HER-EF 789','gelb',20),(7,'BO-GH 102','rot',19),(8,'E-IJ 345','bordeaux',18),(9,'BO-KL 678','blau',17),(10,'RE-MN 901','elfenbein',16),(11,'RE-OP 234','ocker',15),(12,'RE-QR 567','gelb',14),(13,'RE-ST 890','rot',13),(14,'RE-UV 135','bordeaux',12),(15,'RE-WX 791','ocker',11),(16,'RE-YZ 369','rot',10),(17,'GE-AC 246','elfenbein',9),(18,'GE-EG 892','blau',8),(19,'OB-FH 470','elfenbein',7),(20,'BOT-KI 357','rot',6),(21,'BOR-NO 234','gelb',4),(22,'BOR-PQ 567','elfenbein',3),(23,'BOR-RS 890','gelb',2),(24,'K-XR 147',NULL,6),(25,'HH-MM 783','schwarz',7);
/*!40000 ALTER TABLE `Fahrzeug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fahrzeughersteller`
--

DROP TABLE IF EXISTS `Fahrzeughersteller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fahrzeughersteller` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Land` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fahrzeughersteller`
--

LOCK TABLES `Fahrzeughersteller` WRITE;
/*!40000 ALTER TABLE `Fahrzeughersteller` DISABLE KEYS */;
INSERT INTO `Fahrzeughersteller` VALUES (1,'Volkswagen','Deutschland'),(2,'Opel','Deutschland'),(3,'Ford','Deutschland'),(4,'BMW','Deutschland'),(5,'Audi','Deutschland'),(6,'Mercedes-Benz','Deutschland'),(7,'Sachsenring','Deutschland'),(8,'Saab','Schweden'),(9,'Volvo',NULL),(10,'Renault','Frankreich'),(11,'Seat',NULL);
/*!40000 ALTER TABLE `Fahrzeughersteller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fahrzeugtyp`
--

DROP TABLE IF EXISTS `Fahrzeugtyp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fahrzeugtyp` (
  `ID` int(11) NOT NULL,
  `Bezeichnung` varchar(30) NOT NULL,
  `Hersteller_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ist_vom_Hersteller` (`Hersteller_ID`),
  CONSTRAINT `ist_vom_Hersteller` FOREIGN KEY (`Hersteller_ID`) REFERENCES `Fahrzeughersteller` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fahrzeugtyp`
--

LOCK TABLES `Fahrzeugtyp` WRITE;
/*!40000 ALTER TABLE `Fahrzeugtyp` DISABLE KEYS */;
INSERT INTO `Fahrzeugtyp` VALUES (1,'Polo',1),(2,'Golf',1),(3,'Passat',1),(4,'Kadett',2),(5,'Corsa',2),(6,'Focus',3),(7,'Trabant',7),(8,'Fiesta',3),(9,'325',4),(10,'525',4),(11,'Z3',4),(12,'A3',5),(13,'A4',5),(14,'A160',6),(15,'W204 (C-Klasse)',6),(16,'W211 (E-Klasse)',6),(17,'Saab 9-3',8),(18,'S40',9),(19,'C30',9),(20,'Clio',10),(21,'ZOE',10),(22,'Twingo',10),(23,'Ibiza',11),(24,'Leon',11);
/*!40000 ALTER TABLE `Fahrzeugtyp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mitarbeiter`
--

DROP TABLE IF EXISTS `Mitarbeiter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mitarbeiter` (
  `ID` int(11) NOT NULL,
  `Personalnummer` varchar(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Vorname` varchar(30) NOT NULL,
  `Geburtsdatum` date NOT NULL,
  `Telefon` varchar(30) DEFAULT NULL,
  `Mobil` varchar(30) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Raum` varchar(10) DEFAULT NULL,
  `Ist_Leiter` char(1) NOT NULL,
  `Abteilung_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `MAB_ABT` (`Abteilung_ID`),
  CONSTRAINT `MAB_ABT` FOREIGN KEY (`Abteilung_ID`) REFERENCES `Abteilung` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mitarbeiter`
--

LOCK TABLES `Mitarbeiter` WRITE;
/*!40000 ALTER TABLE `Mitarbeiter` DISABLE KEYS */;
INSERT INTO `Mitarbeiter` VALUES (1,'10001','Müller','Kurt','1977-01-05','0231/5554987','','kurt.mueller@unserefirma.de','112','J',1),(2,'10002','Schneider','Daniela','1980-02-16','0231/5554988',NULL,'daniela.schneider@unserefirma.de','113','N',1),(3,'20001','Meyer','Walter','1963-07-02','0231/5553967','','walter.meyer@unserefirma.de','212','J',2),(4,'20002','Schmitz','Michael','1959-08-25','0231/5556187',NULL,'michael.schmitz@unserefirma.de','212','N',2),(5,'30001','Wagner','Gaby','1970-01-18','0231/5554787','','gaby.wagner@unserefirma.de','312','J',3),(6,'30002','Feyerabend','Werner','1982-04-01','0231/5554997',NULL,'werner.feyerabend@unserefirma.de','316','N',3),(7,'40001','Langmann','Matthias','1976-03-28','0231/5551927','','matthias.langmann@unserefirma.de','412','J',4),(8,'40002','Peters','Michael','1973-11-15','0231/5554237',NULL,'michael.peters@unserefirma.de','412','N',4),(9,'50001','Pohl','Helmut','1980-10-27','0201/4014186','(0171) 4123456','helmut.pohl@unserefirma.de','152','J',5),(10,'50002','Braun','Christian','1966-09-05','0201/4014726','(0170) 8351647','christian.braun@unserefirma.de','153','N',5),(11,'50003','Polovic','Frantisek','1961-11-26','0201/4014727','(0161) 5124793','frantisek.polovic@unserefirma.de','154','N',5),(12,'50004','Kalman','Aydin','1976-12-17','0201/4014728','(0161) 4486319','aydin.kalman@unserefirma.de','155','N',5),(13,'60001','Aagenau','Karolin','1950-01-02','0234/66006001','','Karolin.Aagenau@unserefirma.de','48','J',6),(14,'60002','Pinkart','Petra','1953-03-04','0234/66006002',NULL,'Petra.Pinkart@unserefirma.de','43','N',6),(15,'70001','Olschewski','Pjotr','1956-05-06','0234/66007001','','Pjotr.Olschewski@unserefirma.de','28','J',7),(16,'70002','Nordmann','Jörg','1959-07-08','0234/66007002',NULL,'Joerg.Nordmann@unserefirma.de','27','N',7),(17,'80001','Schindler','Christina','1962-09-10','0201/4012151','(0173) 7513901','Christina.Schindler@unserefirma.de','101','J',8),(18,'80002','Aliman','Zafer','1965-11-12','0201/4012161','(0171) 9416755','Zafer.Aliman@unserefirma.de','102','N',8),(19,'80003','Langer','Norbert','1968-01-13','0201/4012171','(0162) 1357902','Norbert.Langer@unserefirma.de','103','N',8),(20,'80004','Kolic','Ivana','1971-02-14','0201/4012181','(0172) 4680135','Ivana.Kolic@unserefirma.de','104','N',8),(21,'90001','Janssen','Bernhard','1974-03-15','0201/4013111','','Bernhard.Janssen@unserefirma.de','201','J',9),(22,'90002','Hinkel','Martina','1977-04-16','0201/4013110',NULL,'Martina.Hinkel@unserefirma.de','203','N',9),(23,'100001','Grosser','Horst','1980-05-17','0201/4013344','','Horst.Grosser@unserefirma.de','271','J',10),(24,'100002','Friedrichsen','Angelina','1983-06-20','0201/4013345',NULL,'Angelina.Friedrichsen@unserefirma.de','273','N',10),(25,'110001','Eggert','Louis','1986-07-23','02323/381456','','Louis.Eggert@unserefirma.de','14','J',11),(26,'110002','Deiters','Gisela','1989-08-26','02323/381457',NULL,'Gisela.Deiters@unserefirma.de','18','N',11),(27,'120001','Carlsen','Zacharias','1965-09-29','0234/66012001','','Zacharias.Carlsen@unserefirma.de','61','J',12),(28,'120002','Baber','Yvonne','1957-10-02','0234/66012002',NULL,'Yvonne.Baber@unserefirma.de','62','N',12);
/*!40000 ALTER TABLE `Mitarbeiter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Schadensfall`
--

DROP TABLE IF EXISTS `Schadensfall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Schadensfall` (
  `ID` int(11) NOT NULL,
  `Datum` date NOT NULL,
  `Ort` varchar(200) NOT NULL,
  `Beschreibung` varchar(1000) NOT NULL,
  `Schadenshoehe` decimal(16,2) DEFAULT NULL,
  `Verletzte` char(1) NOT NULL,
  `Mitarbeiter_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Schadensfall`
--

LOCK TABLES `Schadensfall` WRITE;
/*!40000 ALTER TABLE `Schadensfall` DISABLE KEYS */;
INSERT INTO `Schadensfall` VALUES (1,'2007-02-03','Recklinghausen, Bergknappenstr. 144','Gartenzaun gestreift',1234.50,'N',14),(2,'2007-07-11','Haltern, Hauptstr. 46','beim Ausparken hat BO-GH 102 die Vorfahrt von RE-CD 456 missachtet',2066.00,'N',15),(3,'2007-12-19','Marl, Rathausstr./Halterner Allee','beim Abbiegen nach links hat ein fremder Wagen die Vorfahrt missachtet',3715.60,'J',14),(4,'2008-05-27','Recklinghausen, Südgrabenstr. 23','Fremdes parkendes Auto gestreift',1438.75,'N',16),(5,'2008-10-05','Dorsten, Oberhausener Str. 18','beim Ausparken hat ein fremder Wagen die Vorfahrt missachtet',1983.00,'N',14),(6,'2009-03-13','Marl, Rathausstr./Halterner Allee','beim Abbiegen nach links hat ein fremder Wagen die Vorfahrt missachtet',4092.15,'J',15),(7,'2009-08-21','Recklinghausen, Bergknappenstr. 144','Laternenpfahl umgefahren',865.00,'N',14),(8,'2009-08-01','L318 Hamm-Flaesheim','Wildunfall mit Reh; 10% Wertverlust',2471.50,'N',16);
/*!40000 ALTER TABLE `Schadensfall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tankstelle`
--

DROP TABLE IF EXISTS `Tankstelle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tankstelle` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Addresse` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tankstelle`
--

LOCK TABLES `Tankstelle` WRITE;
/*!40000 ALTER TABLE `Tankstelle` DISABLE KEYS */;
INSERT INTO `Tankstelle` VALUES (1,'Aral','Bambusweg 4'),(2,'Shell','Apfelstrasse 652'),(3,'Shell','Birnenbaum 21'),(4,'Shell','Pflaumenweg 345'),(5,'Aral','Bananbrotalee 2'),(6,'Star','Musterstrasse 1'),(7,'Esso','Bahnhofstrasse 331'),(8,'Star','Hauptrasse 98'),(9,'Star','Nebenstrasse 2'),(10,'Aral','Kleine Gasse 38'),(11,'Shell','Dorfstrasse 954');
/*!40000 ALTER TABLE `Tankstelle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tankvorgaenge`
--

DROP TABLE IF EXISTS `Tankvorgaenge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tankvorgaenge` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TankstellenId` int(11) DEFAULT NULL,
  `Tankmenge` decimal(4,2) DEFAULT NULL,
  `DienstwagenId` int(11) DEFAULT NULL,
  `Kilometerstand` decimal(7,2) DEFAULT NULL,
  `Tankkosten` decimal(16,2) DEFAULT NULL,
  `Datum` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `TV_TS` (`TankstellenId`),
  KEY `TV_DW` (`DienstwagenId`),
  CONSTRAINT `TV_DW` FOREIGN KEY (`DienstwagenId`) REFERENCES `Dienstwagen` (`ID`),
  CONSTRAINT `TV_TS` FOREIGN KEY (`TankstellenId`) REFERENCES `Tankstelle` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tankvorgaenge`
--

LOCK TABLES `Tankvorgaenge` WRITE;
/*!40000 ALTER TABLE `Tankvorgaenge` DISABLE KEYS */;
INSERT INTO `Tankvorgaenge` VALUES (1,2,78.00,19,37721.00,107.64,'2020-01-19'),(2,4,78.00,10,37935.00,126.36,'2020-02-23'),(3,5,51.00,21,37889.00,78.80,'2020-03-11'),(4,7,57.00,12,37740.00,83.79,'2020-04-20'),(5,1,69.00,5,37987.00,112.82,'2020-05-07'),(6,9,54.00,10,37680.00,77.76,'2020-06-09'),(7,6,51.00,17,37960.00,83.39,'2020-07-02'),(8,3,77.00,2,37930.00,105.11,'2020-08-09'),(9,5,76.00,21,37995.00,124.26,'2020-09-02'),(10,3,51.00,21,37687.00,78.80,'2020-10-14'),(11,3,77.00,18,37735.00,112.04,'2020-11-25'),(12,4,77.00,19,37790.00,110.88,'2020-12-09'),(13,5,75.00,9,37801.00,119.25,'2020-01-25'),(14,10,60.00,5,37829.00,86.40,'2020-02-07'),(15,1,55.00,12,37867.00,86.63,'2020-03-25'),(16,9,72.00,12,37957.00,114.48,'2020-04-17'),(17,8,65.00,4,37638.00,97.50,'2020-05-14'),(18,4,78.00,19,37695.00,125.19,'2020-06-26'),(19,1,72.00,16,37722.00,112.32,'2020-07-10'),(20,8,66.00,3,37932.00,104.94,'2020-08-10'),(21,8,74.00,10,37782.00,102.12,'2020-09-20'),(22,2,56.00,19,37677.00,84.00,'2020-10-19'),(23,8,65.00,9,37759.00,98.48,'2020-11-21'),(24,2,65.00,3,37966.00,98.48,'2020-12-19');
/*!40000 ALTER TABLE `Tankvorgaenge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Versicherungsgesellschaft`
--

DROP TABLE IF EXISTS `Versicherungsgesellschaft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Versicherungsgesellschaft` (
  `ID` int(11) NOT NULL,
  `Bezeichnung` varchar(30) NOT NULL,
  `Ort` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Versicherungsgesellschaft`
--

LOCK TABLES `Versicherungsgesellschaft` WRITE;
/*!40000 ALTER TABLE `Versicherungsgesellschaft` DISABLE KEYS */;
INSERT INTO `Versicherungsgesellschaft` VALUES (1,'Deutsches Kontor','Frankfurt a.M.'),(2,'Rheinischer Vers.-Verein','Oberhausen'),(3,'Knappschaftshilfe','Essen'),(4,'Hannoversche Gesellschaft','Lehrte'),(5,'Westfalen-Bruderhilfe','Recklinghausen');
/*!40000 ALTER TABLE `Versicherungsgesellschaft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Versicherungsnehmer`
--

DROP TABLE IF EXISTS `Versicherungsnehmer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Versicherungsnehmer` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Vorname` varchar(30) DEFAULT NULL,
  `Geburtsdatum` date DEFAULT NULL,
  `Fuehrerschein` date DEFAULT NULL,
  `Ort` varchar(30) NOT NULL,
  `PLZ` char(5) NOT NULL,
  `Strasse` varchar(30) NOT NULL,
  `Hausnummer` varchar(10) NOT NULL,
  `Eigener_Kunde` char(1) NOT NULL,
  `Versicherungsgesellschaft_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `VN_VG` (`Versicherungsgesellschaft_ID`),
  CONSTRAINT `VN_VG` FOREIGN KEY (`Versicherungsgesellschaft_ID`) REFERENCES `Versicherungsgesellschaft` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Versicherungsnehmer`
--

LOCK TABLES `Versicherungsnehmer` WRITE;
/*!40000 ALTER TABLE `Versicherungsnehmer` DISABLE KEYS */;
INSERT INTO `Versicherungsnehmer` VALUES (1,'Heckel Obsthandel GmbH','',NULL,NULL,'Dorsten','46282','Gahlener Str.','40','J',NULL),(2,'Antonius','Bernhard','1950-02-01','1972-04-03','Gelsenkirchen','45892','Coesfelder Str.','23','J',NULL),(3,'Cornelsen','Dorothea','1951-06-05','1974-08-07','Castrop-Rauxel','44577','Kiefernweg','9','J',NULL),(4,'Elberfeld','Fritz','1952-10-09','1976-12-11','Herne','44625','Haberstr.','13','J',NULL),(5,'Geissler','Helga','1953-01-13','1978-02-14','Bochum','44809','Steinbankstr.','15','J',NULL),(6,'Westermann','Yvonne','1961-08-07','1994-10-09','Oer-Erkenschwick','45739','Ackerstr.','34','J',NULL),(7,'Karlovich','Liane','1955-05-19','1982-06-20','Hattingen','45525','Raabestr.','21','J',NULL),(8,'Meier','Norbert','1956-07-22','1984-08-23','Recklinghausen','45665','Idastr.','24','J',NULL),(9,'Ottensen','Petra','1957-09-25','1986-10-26','Herten','45699','Gablonzer Weg','27','J',NULL),(10,'Quantz','Reinhard','1958-11-28','1988-01-29','Datteln','45711','Halterner Allee','30','J',NULL),(11,'Schiller','Theresia','1959-03-31','1990-02-01','Haltern','45721','Am Freibad','32','J',NULL),(12,'Untermann','Volker','1960-04-02','1992-06-05','Waltrop','45731','Goethestr.','33','J',NULL),(13,'Westermann','Yvonne','1961-08-07','1994-10-09','Oer-Erkenschwick','45739','Ackerstr.','34','J',NULL),(14,'Xanh','Wu Dao','1962-12-11','1996-01-13','Marl','45772','Bachackerweg','35','J',NULL),(15,'Zenep','Altun','1963-02-14','1998-03-15','Gelsenkirchen','45888','Cheruskerstr.','36','J',NULL),(16,'Bronkovic','Cecilia','1964-04-16','2000-05-17','Gladbeck','45966','Dechenstr.','37','J',NULL),(17,'Deutschmann','Evelyn','1965-06-18','2002-07-19','Oberhausen','46147','Ebereschenweg','38','J',NULL),(18,'Friedrichsen','Gustav','1966-08-20','2004-09-21','Bottrop','46244','Falkenweg','39','J',NULL),(19,'Jaspers','Karol','1968-12-24','2008-01-25','Borken','46325','Heimser Weg','1','J',NULL),(20,'Liebermann','Maria','1970-02-26','1988-03-27','Velen','46342','Inselstr.','4','J',NULL),(21,'Grube','Claire','1977-07-05','1990-04-27','Velen','46342','Inselstr.','4','J',NULL),(22,'Netep','Osman','1971-05-28','1990-06-29','Raesfeld','46348','Juister Str.','7','J',NULL),(23,'Chwielorz','Kathrin','1981-08-18','2002-12-15','Köln','50173','Gartenfelder Str.','23','N',3),(24,'Schwichting','Eberhard','1985-06-27','2003-08-08','Hamburg','20444','Harvestehuder Weg','23 a','N',2);
/*!40000 ALTER TABLE `Versicherungsnehmer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Versicherungsvertrag`
--

DROP TABLE IF EXISTS `Versicherungsvertrag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Versicherungsvertrag` (
  `ID` int(11) NOT NULL,
  `Vertragsnummer` varchar(20) NOT NULL,
  `Abschlussdatum` date NOT NULL,
  `Art` char(2) NOT NULL,
  `Mitarbeiter_ID` int(11) NOT NULL,
  `Fahrzeug_ID` int(11) NOT NULL,
  `Versicherungsnehmer_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Versicherungsvertrag`
--

LOCK TABLES `Versicherungsvertrag` WRITE;
/*!40000 ALTER TABLE `Versicherungsvertrag` DISABLE KEYS */;
INSERT INTO `Versicherungsvertrag` VALUES (1,'DG-01','1974-05-03','TK',9,1,1),(2,'DG-01','1974-05-03','TK',9,2,1),(3,'DG-01','1974-05-03','TK',9,3,1),(4,'DH-02','1990-02-01','HP',10,12,10),(5,'DO-03','1994-10-09','HP',9,14,12),(6,'DB-04','2008-01-25','HP',9,21,19),(7,'RH-01','1976-12-11','VK',10,5,3),(8,'RD-02','1988-01-29','HP',9,11,9),(9,'RM-03','1996-01-13','HP',9,15,13),(10,'RD-04','2006-11-23','HP',9,20,18),(11,'RR-05','1990-06-29','TK',9,23,21),(12,'KH-02','1986-10-26','HP',9,10,8),(13,'KG-03','1998-03-15','HP',9,16,14),(14,'KV-04','1988-03-27','HP',10,22,20),(15,'HE-01','1980-04-17','HP',10,7,5),(16,'HR-02','1984-08-23','HP',9,9,7),(17,'HG-03','2000-05-17','HP',9,17,15),(18,'HB-04','2004-09-21','HP',9,19,17),(19,'XC-01','1974-08-07','HP',10,4,2),(20,'XH-02','1982-06-20','VK',9,8,6),(21,'XW-03','1992-06-05','VK',10,13,11),(22,'XO-04','2002-07-19','VK',9,18,16),(23,'KNH-234','2007-03-16','TK',9,24,22),(24,'RVV-845','2003-08-08','HP',10,25,23),(25,'KB-01','1978-02-14','TK',10,6,4);
/*!40000 ALTER TABLE `Versicherungsvertrag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Zuordnung_SF_FZ`
--

DROP TABLE IF EXISTS `Zuordnung_SF_FZ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Zuordnung_SF_FZ` (
  `ID` int(11) NOT NULL,
  `Schadensfall_ID` int(11) NOT NULL,
  `Fahrzeug_ID` int(11) NOT NULL,
  `Schadenshoehe` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Zuordnung_SF_FZ`
--

LOCK TABLES `Zuordnung_SF_FZ` WRITE;
/*!40000 ALTER TABLE `Zuordnung_SF_FZ` DISABLE KEYS */;
INSERT INTO `Zuordnung_SF_FZ` VALUES (1,1,2,1234.50),(2,2,7,852.00),(3,2,5,1214.00),(4,3,4,1438.75),(5,3,24,2276.85),(6,4,1,1234.50),(7,4,5,1983.00),(8,5,2,1251.50),(9,5,25,731.50),(10,6,3,2653.40),(11,6,7,1438.75),(12,7,6,865.00),(13,8,7,NULL);
/*!40000 ALTER TABLE `Zuordnung_SF_FZ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guestbook`
--

DROP TABLE IF EXISTS `guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  `comment` varchar(600) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guestbook`
--

LOCK TABLES `guestbook` WRITE;
/*!40000 ALTER TABLE `guestbook` DISABLE KEYS */;
INSERT INTO `guestbook` VALUES (1,'eduard','e@e.de','http://ggg.de','sdfsdf','male');
/*!40000 ALTER TABLE `guestbook` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-04 11:07:35
