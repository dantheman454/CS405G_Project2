/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.6.18-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: mysql.cs.uky.edu    Database: lrry223
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
-- Current Database: `lrry223`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `lrry223` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `lrry223`;

--
-- Table structure for table `ADDRESS`
--

DROP TABLE IF EXISTS `ADDRESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ADDRESS` (
  `primary` varchar(30) DEFAULT NULL,
  `secondary` varchar(30) DEFAULT NULL,
  `zip` int(5) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `agentID` int(5) DEFAULT NULL,
  `BusinessName` varchar(50) DEFAULT NULL,
  `addrID` int(5) NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `unique_addrID` (`addrID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADDRESS`
--

LOCK TABLES `ADDRESS` WRITE;
/*!40000 ALTER TABLE `ADDRESS` DISABLE KEYS */;
INSERT INTO `ADDRESS` VALUES ('300 Rose Street','Room 102 Hardymon Building',40506,'Lexington','KY',1,NULL,1),('82 Beaver St','Room 1301',10005,'New York','NY',4,NULL,2),('200 Park Avenue Penthouse',NULL,10001,'New York','NY',208,'Stark International',3),('117A Bleecker Street',NULL,10001,'New York','NY',117,NULL,4),('200 Park Avenue','Apartment 221',10001,'New York','NY',21,NULL,5),('#1 Avenue of Champions',NULL,40506,'Lexington','KY',90,NULL,6),('412 S Mountain Pass',NULL,81722,'Mount Vernon','OH',400,NULL,7),('1 Dead End Row','Room 200',12347,'Dallas','TX',123,NULL,8),('301 Hilltop Avenue','Room 102',40506,'Lexington','KY',1,NULL,9),('1 Dead End Row','Room 200',12347,'Dallas','TX',122,NULL,10),('200 Park Avenue',NULL,40507,'Lexington','KY',21,NULL,11),('61 Broadway','Suite #7',41035,'Dry Ridge','KY',42,'Papa Johns',12),('201 S Clinton St','#120',52240,'Iowa City','IA',534,'Buffalo Wild Wings',13),('500 South Buena Vista Street',NULL,91521,'Burbank','CA',333,'Walt Disney',14),('1050 Techwood Drive NW',NULL,30318,'Atlanta','GA',2,'Cartoon Network',15),('4600 150th Ave NE',NULL,98052,'Redmond','WA',5,'Nintendo',16),('13050 South Cicero Ave',NULL,60418,'Crestwood','IL',7,'Chik fil A',17),('8400 Fairway Place',NULL,53562,'Middleton','WI',127,'American Girl',18),('1832 Alysheba Way',NULL,40509,'Lexington','KY',44,'Steak n Shake',19),('591 Joseph Dr',NULL,40330,'Harrodsburg','KY',535,'Walmart',20),('5199 Schollsville rd',NULL,40391,'Winchester','KY',3,NULL,21),('694 Beth Ln',NULL,40503,'Lexington','KY',27,NULL,22),('1857 N Newland Ave',NULL,60707,'Chicago','IL',3,NULL,23),('6240 S Kedvale Ave',NULL,60629,'Chicago','IL',500,NULL,24),('5737 N Oriole Ave',NULL,60631,'Chicago','IL',400,NULL,25),('610 E Fernwood Dr',NULL,43964,'Toronto','OH',922,NULL,26),('5149 35th Ave S',NULL,55417,'Minneapolis','MN',934,NULL,27),('1 Dead End Row','Room 400',12347,'Dallas','TX',850,'Amazon',28),('200 Park Avenue','Floor #27',10001,'New York','NY',700,'STARK INTERNATIONAL',29);
/*!40000 ALTER TABLE `ADDRESS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AGENTS`
--

DROP TABLE IF EXISTS `AGENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AGENTS` (
  `agentID` int(3) NOT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(24) DEFAULT NULL,
  `mInitial` varchar(1) DEFAULT NULL,
  `prefix` varchar(5) DEFAULT NULL,
  `suffix` varchar(20) DEFAULT NULL,
  `company` varchar(20) DEFAULT NULL,
  `PhoneNumbers` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`agentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AGENTS`
--

LOCK TABLES `AGENTS` WRITE;
/*!40000 ALTER TABLE `AGENTS` DISABLE KEYS */;
INSERT INTO `AGENTS` VALUES (1,'Ray','Hyatt','L','Mr.','Jr.',NULL,NULL,'Mr. Ray L. Hyatt Jr. '),(2,'Michael','Ouweleen',NULL,NULL,'president','Cartoon Network','847-163-5982','Michael Ouweleen president '),(3,'Billy','Joe','B','Mr.','Jr.',NULL,'980-285-9062','Mr. Billy B. Joe Jr. '),(4,'John','Wick',NULL,NULL,NULL,NULL,'555-555-5555','John Wick '),(5,'Doug','Bowser','S','Mr.','president','Nintendo','213-555-7890','Mr. Doug S. Bowser president '),(7,'Ximena','Pena-Rogers',NULL,NULL,'Manager','Chik fil A','972-345-5678','Ximena Pena-Rogers Manager '),(21,'Bob','Smith','C',NULL,NULL,NULL,'858-234-1234','Bob C. Smith '),(27,'James','Kirk','T','Mr.','Sr.',NULL,'617-789-3456','Mr. James T. Kirk Sr. '),(42,'Kristina','Myrick',NULL,NULL,'Manager','Papa Johns','847-555-7654','Kristina Myrick Manager '),(44,'Tyra','Johnson',NULL,NULL,'Manager','Steak n Shake','832-345-2345','Tyra Johnson Manager '),(90,'Bowman','Wildcat','F',NULL,NULL,NULL,NULL,'Bowman F. Wildcat '),(117,'Stephen','Strange',NULL,'Dr.',NULL,NULL,'(555)555-4321','Dr. Stephen Strange '),(122,'Bob','Porter',NULL,NULL,NULL,'InTech',NULL,'Bob Porter '),(123,'Bob','Sydell',NULL,'Mr.',NULL,'InTech',NULL,'Mr. Bob Sydell '),(127,'Jamie','Cygielman',NULL,NULL,'president','American Girl','617-345-9876','Jamie Cygielman president '),(208,'Tony','Stark',NULL,NULL,NULL,'Stark International','555-555-3142','Tony Stark '),(333,'Robert','Iger','A','Mr.','CEO','Walt Disney','920-555-1122','Mr. Robert A. Iger CEO '),(400,'Natasha','Romanoff','A',NULL,NULL,NULL,'305-678-3456','Natasha A. Romanoff '),(500,'Maria','Holmes','A','Dr.','Sr.',NULL,'719-567-4321','Dr. Maria A. Holmes Sr. '),(534,'Naja','Hanna',NULL,NULL,'Manager','Buffalo Wild Wings','212-876-5432','Naja Hanna Manager '),(535,'Sean','Cain',NULL,NULL,'Manager','Walmart','516-555-0987','Sean Cain Manager '),(700,'Jarvis',NULL,NULL,NULL,NULL,'STARK INTERNATIONAL','480-234-7654','Jarvis '),(850,NULL,NULL,NULL,NULL,NULL,'Amazon','312-987-6543',''),(922,'Nick','Fury','J','Mr.','Jr.',NULL,'718-789-4567','Mr. Nick J. Fury Jr. '),(934,'Barney','Fife','P','Mr.','Jr.',NULL,'646-555-4321','Mr. Barney P. Fife Jr. ');
/*!40000 ALTER TABLE `AGENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RECEIPTS`
--

DROP TABLE IF EXISTS `RECEIPTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RECEIPTS` (
  `datablob` int(5) DEFAULT NULL,
  `sellerID` int(5) NOT NULL,
  `buyerID` int(5) NOT NULL,
  `location` varchar(100) NOT NULL,
  `receiptID` varchar(20) NOT NULL,
  `businessName` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `Total Sale` varchar(100) NOT NULL,
  `Number_of_Items` int(11) DEFAULT NULL,
  `HighestItemPrice` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`receiptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RECEIPTS`
--

LOCK TABLES `RECEIPTS` WRITE;
/*!40000 ALTER TABLE `RECEIPTS` DISABLE KEYS */;
/*!40000 ALTER TABLE `RECEIPTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `lname` varchar(24) DEFAULT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `cid` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('smith','john',2),('smith','bob',3),('smith','joe',4);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipts`
--

DROP TABLE IF EXISTS `receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receipts` (
  `SellerID` int(11) NOT NULL,
  `BuyerID` int(11) NOT NULL,
  `SellerAddressID` int(11) NOT NULL,
  `ReceiptID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `NumOfItems` int(11) DEFAULT NULL,
  `HighestCost` varchar(15) DEFAULT NULL,
  `LowestCost` varchar(15) DEFAULT NULL,
  `TotalCost` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ReceiptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipts`
--

LOCK TABLES `receipts` WRITE;
/*!40000 ALTER TABLE `receipts` DISABLE KEYS */;
INSERT INTO `receipts` VALUES (700,850,10,1,'2020-10-31',8,'259.99','19.99','409.92'),(1,127,1,2,'2005-01-15',2,'42','24','64'),(534,535,13,3,'2014-01-16',8,'118.29','20.41','220.24'),(922,2,26,4,'2012-12-12',5,'50','1.99','75.99'),(5,333,16,5,'2020-01-06',8,'30','0.75','45.75'),(535,122,20,6,'2016-11-06',3,'500','15','535'),(44,4,19,7,'1956-04-26',10,'21.26','1.26','30.46'),(934,400,27,8,'1492-05-25',5,'14.26','1.31','34.96'),(500,127,24,9,'1841-02-12',6,'30.46','1.21','56.31'),(850,208,28,10,'2024-10-21',40,'199.99','10.99','1120.49'),(42,400,12,11,'2024-10-22',13,'57','4','122.69'),(123,535,8,12,'1999-11-11',19,'34','2','156.75'),(7,922,17,13,'2015-06-11',2,'400','20','420'),(44,934,19,14,'2004-06-01',20,'15','1','150'),(1,90,1,15,'2000-01-01',12,'112','12','200');
/*!40000 ALTER TABLE `receipts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-23 20:23:51
