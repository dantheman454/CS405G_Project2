/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.6.18-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: mysql.cs.uky.edu    Database: gadi224
-- ------------------------------------------------------
-- Server version	10.6.18-MariaDB-0ubuntu0.22.04.1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `gadi224`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `gadi224` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `gadi224`;

--
-- Table structure for table `Addresses`
--

DROP TABLE IF EXISTS `Addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Addresses` (
  `unique_id` smallint(6) NOT NULL,
  `prefix` varchar(25) DEFAULT NULL,
  `first` varchar(25) DEFAULT NULL,
  `middle` varchar(25) DEFAULT NULL,
  `last` varchar(25) DEFAULT NULL,
  `suffix` varchar(25) DEFAULT NULL,
  `company_affiliation` varchar(50) DEFAULT NULL,
  `name` varchar(250) GENERATED ALWAYS AS (concat(`prefix`,' ',`first`,' ',`middle`,' ',`last`,' ',`suffix`,' ',`company_affiliation`)) STORED,
  `street_addr` varchar(512) DEFAULT NULL,
  `room_specification` varchar(25) DEFAULT NULL,
  `Building_name` varchar(50) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `address` varchar(250) GENERATED ALWAYS AS (concat(`street_addr`,' ',`room_specification`,' ',`Building_name`,' ',`city`,' ',`state`,' ',`zip_code`)) STORED,
  PRIMARY KEY (`unique_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Addresses`
--

LOCK TABLES `Addresses` WRITE;
/*!40000 ALTER TABLE `Addresses` DISABLE KEYS */;
INSERT INTO `Addresses` VALUES (9001,'','Emma','','Hargis','MD','Amazon',' Emma  Hargis MD Amazon','1 Dead End Row','400','','Dallas','TX','12347','1 Dead End Row 400  Dallas TX 12347'),(9002,'Excellency','Kadin','','Nguyen','','Chick Fil a','Excellency Kadin  Nguyen  Chick Fil a','1863 Plaudit Pl','','','Lexington','KY','40509','1863 Plaudit Pl   Lexington KY 40509'),(9003,'','Naleah','','Seabright','','Southland Lanes',' Naleah  Seabright  Southland Lanes','205 Southland Dr','','','Lexington','KY','40503','205 Southland Dr   Lexington KY 40503'),(9004,'Lord','Augustine','L.','Fortsworth','the 4th','Michaels','Lord Augustine L. Fortsworth the 4th Michaels','1953 Pavilion Way','','','Lexington','KY','40509','1953 Pavilion Way   Lexington KY 40509'),(9005,'Dutchess','Elizabetta','Kansas','Montgomery','','HomeGoods','Dutchess Elizabetta Kansas Montgomery  HomeGoods','1555 E New Circle Rd','','','Lexington','KY','40509','1555 E New Circle Rd   Lexington KY 40509'),(9006,'Lady In Waiting','Caroline','','Leech','','Target','Lady In Waiting Caroline  Leech  Target','1940 Pavilion Way','','','Lexington','KY','40509','1940 Pavilion Way   Lexington KY 40509'),(9007,'','Quandale','','Dingle','III','TJMAXX',' Quandale  Dingle III TJMAXX','150 W Lowry Ln','','','Lexington','KY','40503','150 W Lowry Ln   Lexington KY 40503'),(9008,'Justice','John','Gerald','Jacobs','','Walmart','Justice John Gerald Jacobs  Walmart','500 W New Circle Rd','','','Lexington','KY','40511','500 W New Circle Rd   Lexington KY 40511'),(9009,'','Avery','B.','Carrico','MBA','Kroger',' Avery B. Carrico MBA Kroger','3101 Richmond Rd','','','Lexington','KY','40509','3101 Richmond Rd   Lexington KY 40509'),(9010,'Majesty','Harold','J.','Jones','X','Aldi','Majesty Harold J. Jones X Aldi','1300 US Hwy 127','','','Frankfort','KY','40601','1300 US Hwy 127   Frankfort KY 40601'),(9011,'Mr.','Ray','L.','Hyatt','Jr.','','Mr. Ray L. Hyatt Jr. ','300 Rose Street','Room 102','Hardymon Building','Lexington','KY','40506','300 Rose Street Room 102 Hardymon Building Lexington KY 40506'),(9012,'Mr.','Ray','L.','Hyatt','Jr.','','Mr. Ray L. Hyatt Jr. ','301 Hilltop Avenue','102','','Lexington','KY','40506','301 Hilltop Avenue 102  Lexington KY 40506'),(9013,'','John','','Wick','','',' John  Wick  ','82 Beaver St','1301','','New York','NY','10005','82 Beaver St 1301  New York NY 10005'),(9014,'','Tony','','Stark','','Stark International',' Tony  Stark  Stark International','200 Park Avenue','Penthouse','','New York','NY','10001','200 Park Avenue Penthouse  New York NY 10001'),(9015,'Dr.','Stephen','','Strange','','','Dr. Stephen  Strange  ','117A Bleecker Street','','','New York','NY','10001','117A Bleecker Street   New York NY 10001'),(9016,'','Bob','C.','Smith','','',' Bob C. Smith  ','200 Park Avenue','221','','New York','NY','10001','200 Park Avenue 221  New York NY 10001'),(9017,'','Bowman','F.','Wildcat','','',' Bowman F. Wildcat  ','#1 Avenue of Champions','','','Lexington','KY','40507','#1 Avenue of Champions   Lexington KY 40507'),(9018,'','Bob','C.','Smith','','',' Bob C. Smith  ','200 Park Avenue','','','Lexington','KY','40507','200 Park Avenue   Lexington KY 40507'),(9019,'','Bob','','Porter','','Intech',' Bob  Porter  Intech','1 Dead End Row','200','','Dallas','TX','12347','1 Dead End Row 200  Dallas TX 12347'),(9020,'Mr.','Bob','','Sydell','','Intech','Mr. Bob  Sydell  Intech','1 Dead End Row','200','','Dallas','TX','12347','1 Dead End Row 200  Dallas TX 12347'),(9021,'Senior Researcher','Harriet','','Style','PI','Cool Research Org Inc.','Senior Researcher Harriet  Style PI Cool Research Org Inc.','101 E 4th St','Apt 137','','Newport','KY','41071','101 E 4th St Apt 137  Newport KY 41071'),(9022,'Father','Norman','','Fisher','','','Father Norman  Fisher  ','720 Northwestern Ave','Apt. 346','Fuse Apartments','West Lafayette','IN','47906','720 Northwestern Ave Apt. 346 Fuse Apartments West Lafayette IN 47906'),(9023,'','Carlos','','Kyle','The Lamented','',' Carlos  Kyle The Lamented ','68 SE 6th St','455','','Miami','FL','33131','68 SE 6th St 455  Miami FL 33131'),(9024,'President','Kalie','Linda','Miley','','Yellowstone Fan Club','President Kalie Linda Miley  Yellowstone Fan Club','1231 W Reynolds Rd','','','Lexington','KY','40503','1231 W Reynolds Rd   Lexington KY 40503'),(9025,'','Brent','','Gusher','Jr.','Lure Salon',' Brent  Gusher Jr. Lure Salon','3839 McKinney Ave','#100','','Dallas','TX','75204','3839 McKinney Ave #100  Dallas TX 75204');
/*!40000 ALTER TABLE `Addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Phone_Numbers`
--

DROP TABLE IF EXISTS `Phone_Numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Phone_Numbers` (
  `person_ID` smallint(6) DEFAULT NULL,
  `phone_number` bigint(20) DEFAULT NULL,
  KEY `person_ID` (`person_ID`),
  CONSTRAINT `Phone_Numbers_ibfk_1` FOREIGN KEY (`person_ID`) REFERENCES `Addresses` (`unique_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Phone_Numbers`
--

LOCK TABLES `Phone_Numbers` WRITE;
/*!40000 ALTER TABLE `Phone_Numbers` DISABLE KEYS */;
INSERT INTO `Phone_Numbers` VALUES (9001,8595525698),(9002,8595825697),(9003,8597525696),(9004,8595525895),(9005,8595525694),(9006,8595525693),(9007,8595525692),(9008,8595525691),(9009,8594525698),(9010,8593525698),(9011,8585525698),(9012,8575525698),(9013,8565525698),(9014,8555525698),(9015,8545525698),(9016,8535525698),(9017,8525525698),(9018,8515525698),(9019,8505525698),(9020,8500525698),(9021,8511525698),(9022,8577525698),(9023,8599525698),(9024,8513525628),(9025,8000525618),(9023,5130945678),(9010,5130983445),(9009,5130345678);
/*!40000 ALTER TABLE `Phone_Numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Receipts`
--

DROP TABLE IF EXISTS `Receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Receipts` (
  `transaction_ID` char(4) NOT NULL,
  `customer_ID` smallint(6) DEFAULT NULL,
  `business_ID` smallint(6) DEFAULT NULL,
  `Receipt` blob DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Total_Sale` float DEFAULT NULL,
  `Num_Items` smallint(6) DEFAULT NULL,
  `H_Priced_Item` varchar(32) DEFAULT NULL,
  `L_Priced_Item` varchar(32) DEFAULT NULL,
  `H_Price` float(8,2) DEFAULT NULL,
  `L_Price` float(8,2) DEFAULT NULL,
  PRIMARY KEY (`transaction_ID`),
  KEY `customer_ID` (`customer_ID`),
  KEY `business_ID` (`business_ID`),
  CONSTRAINT `Receipts_ibfk_1` FOREIGN KEY (`customer_ID`) REFERENCES `Addresses` (`unique_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Receipts_ibfk_2` FOREIGN KEY (`business_ID`) REFERENCES `Addresses` (`unique_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Receipts`
--

LOCK TABLES `Receipts` WRITE;
/*!40000 ALTER TABLE `Receipts` DISABLE KEYS */;
INSERT INTO `Receipts` VALUES ('1000',9014,9001,NULL,NULL,409.92,8,'Alarm Clock','Baking Soda',99.99,2.32),('1001',9015,9002,NULL,'2024-10-16',9.89,1,'Salad','Salad',9.89,9.89),('1002',9016,9003,NULL,'2024-04-12',7.42,3,'Bowling','Shoes',7.42,0.00),('1003',9017,9004,NULL,'2024-01-13',13.77,1,'Wood Glue','Wood Glue',13.77,13.77),('1004',9018,9005,NULL,'2024-04-15',7.93,2,'Candle','Dog Bone',6.96,0.97),('1005',9019,9006,NULL,'2023-10-23',27.18,2,'Flex Tap','WD-40',20.00,7.18),('1006',9020,9004,NULL,'2024-10-15',15.45,1,'Wreath','Wreath',15.45,15.45),('1007',9021,9007,NULL,'2024-04-15',20.12,2,'Mug','Toothpicks',14.99,5.13),('1008',9022,9008,NULL,'2024-10-13',66.45,10,'Pan','Almond Joy',26.98,0.99),('1009',9023,9006,NULL,'2024-09-11',289.1,12,'Bicycle','Tuna Can',175.59,0.50),('1010',9024,9009,NULL,'2024-03-12',2.97,1,'Chips','Chips',2.97,2.97),('1011',9025,9008,NULL,'2024-09-05',123.33,1,'Vacuum','Vacuum',123.33,123.33),('1012',9011,9010,NULL,'2024-09-22',36.29,5,'Knife Set','Apple',25.00,1.50),('1013',9012,9001,NULL,'2024-09-22',3.89,1,'Yarn','Yarn',3.89,3.89),('1014',9013,9009,NULL,'2024-09-27',112.5,1,'Bicycle','Bicycle',112.50,112.50),('1015',9014,9006,NULL,'2024-10-16',82.5,1,'Microwave','Microwave',82.50,82.50);
/*!40000 ALTER TABLE `Receipts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-22 14:36:46
