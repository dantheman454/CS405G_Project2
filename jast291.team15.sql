/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.6.18-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: mysql    Database: jast291
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
-- Current Database: `jast291`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jast291` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `jast291`;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `entity_name` varchar(48) DEFAULT NULL,
  `entity_id` int(4) NOT NULL,
  `city` varchar(48) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` int(5) DEFAULT NULL,
  `street_and_number` varchar(100) DEFAULT NULL,
  `total_address` varchar(200) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES ('Mr. Ray L. Hyatt Jr.',1,'Lexington','KY',40506,'300 Rose Street Room 102 Hardymon Building','300 Rose Street Room 102 Hardymon Building Lexington, Kentucky 40506',NULL),('Mr. Ray L. Hyatt Jr.',2,'Lexington','KY',40506,'301 Hilltop Avenue, Room 102','301 Hilltop Avenue, Room 102 Lexington, Ky 40506',NULL),('John Wick',3,'New York','NY',10005,'82 Beaver St Room 1301','82 Beaver St Room 1301 New York, New York 10005','555-555-5555'),('Tony Stark',4,'New York','NY',10001,'200 Park Avenue Penthouse','200 Park Avenue Penthouse New York, New York 10001','555-555-3142'),('Dr. Stephen Strange',5,'New York','NY',10001,'117A Bleecker Street','117A Bleecker Street New York, New York 10001','(555)555-4321'),('Bob C. Smith',6,'New York','NY',10001,'200 Park Avenue Apartment 221','200 Park Avenue Apartment 221 New York, NY 10001',NULL),('Bowman F. Wildcat',7,'Lexington','KY',40506,'#1 Avenue of Champions','#1 Avenue of Champions Lexington, Ky 40506',NULL),('Bob C. Smith',8,'Lexington','KY',40507,'200 Park Avenue','200 Park Avenue Lexington, KY 40507',NULL),('Bob Porter c/o Intech',9,'Dallas','TX',12347,'1 Dead End Row Room 200','1 Dead End Row Room 200 Dallas, TX 12347','232-454-6765'),('Mr. Bob Sydell c/o Intech',10,'Dallas','TX',12347,'1 Dead End Row Room 200','1 Dead End Row Room 200 Dallas, TX 12347','232-454-6766'),('Amazon',11,'Dallas','TX',12347,'1 Dead End Row Room 400','1 Dead End Row Room 400 Dallas, TX 12347','321-444-6565'),('STARK INTERNATIONAL c/o Jarvis',12,'New York','NY',10001,'200 Park Avenue Floor #27','200 Park Avenue Floor #27 New York, New York 10001','231-654-8790'),('FOX 56 News',13,'Lexington','KY',40502,'836 Euclid Ave #201','836 Euclid Ave #201 Lexington, Kentucky 40502','859-269-5656'),('WKYT News',14,'Lexington','KY',40509,'2851 Winchester Rd','2851 Winchester Rd Lexington, KY 40509','859-270-0505'),('ABC 36 WTVQ',15,'Lexington','KY',40509,'6940 Man o War Blvd','6940 Man o War Blvd Lexington, KY 40509','859-456-0987'),('LEX18 - WLEX-TV',16,'Lexington','KY',40505,'1065 Russell Cave Rd','1065 Russell Cave Rd Lexington, KY 40505','859-557-6789'),('WDRB',17,'Louisville','KY',40203,'624 W. Muhammad Ali Blvd','624 W. Muhammad Ali Blvd Louisville, KY 40203','546-098-5678'),('NewsNation',18,'Chicago','IL',60618,'2501 West Bradley Place','2501 West Bradley Place Chicago, Illinois 60618','444-555-6666'),('Cable News Network',19,'New York','NY',10001,'30 Hudson Yards','30 Hudson Yards New York, NY 10001','333-555-4444'),('Bitcentral, Inc.',20,'Newport Beach','CA',92660,'4340 Von Karman Ave #400','4340 Von Karman Ave #400 Newport Beach, CA 92660','436-542-4678'),('ChyronHego Corporation',21,'Melville','NY',11747,'532 Broadhollow Road','532 Broadhollow Road Melville, New York 11747','251-236-5432'),('Sony Electronics Inc.',22,'Novi','MI',48375,'40000 Grand River Ave #400','40000 Grand River Ave #400 Novi, MI 48375','549-786-5865'),('Lectrosonics Inc.',23,'Rio Rancho','NM',87124,'581 Laser Rd NE','581 Laser Rd NE Rio Rancho, NM 87124','548-685-9977'),('Jets Pizza',24,'Sterling Heights','MI',48310,'37501 Mound Road','37501 Mound Road Sterling Heights, MI 48310','432-6578-6543'),('Mann Chrysler Dodge Jeep RAM of Richmond',25,'Richmond','KY',40475,'1815 Irvine Rd','1815 Irvine Rd Richmond, KY 40475','252-252-2525'),('Lake Cumberland Regional Hospital',26,'Somerset','KY',42503,'305 Langdon St','305 Langdon St Somerset, KY 42503','456-076-0066'),('Dan Cummins Chevrolet Buick of Paris',27,'Paris','KY',40361,'1020 M.L.K. Jr Blvd','1020 M.L.K. Jr Blvd Paris, KY 40361','256-567-7890'),('Bryant Heating, Cooling, Plumbing & Electric',28,'Lexington','KY',40509,'253 Blue Sky Pkwy','253 Blue Sky Pkwy Lexington, KY 40509','347-776-7777');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyers`
--

DROP TABLE IF EXISTS `buyers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buyers` (
  `buyer_name` varchar(48) DEFAULT NULL,
  `buyer_id` int(4) NOT NULL AUTO_INCREMENT,
  `buyer_address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`buyer_id`),
  UNIQUE KEY `buyer_name` (`buyer_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyers`
--

LOCK TABLES `buyers` WRITE;
/*!40000 ALTER TABLE `buyers` DISABLE KEYS */;
INSERT INTO `buyers` VALUES ('STARK INTERNATIONAL c/o Jarvis',1,'200 Park Avenue Floor #27 New York, New York 10001'),('FOX 56 News',2,'836 Euclid Ave #201 Lexington, Kentucky 40502'),('ABC 36 WTVQ',3,'6940 Man o War Blvd Lexington, KY 40509'),('WDRB',4,'624 W. Muhammad Ali Blvd Louisville, KY 40203'),('NewsNation',5,'2501 West Bradley Place Chicago, Illinois 60618'),('Jets Pizza',6,'37501 Mound Road Sterling Heights, MI 48310'),('Mann Chrysler Dodge Jeep RAM of Richmond',7,'1815 Irvine Rd Richmond, KY 40475'),('Lake Cumberland Regional Hospital',8,'305 Langdon St Somerset, KY 42503'),('Dan Cummins Chevrolet Buick of Paris',9,'1020 M.L.K. Jr Blvd Paris, KY 40361'),('Bryant Heating, Cooling, Plumbing & Electric',10,'253 Blue Sky Pkwy Lexington, KY 40509');
/*!40000 ALTER TABLE `buyers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipts`
--

DROP TABLE IF EXISTS `receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receipts` (
  `image` blob DEFAULT NULL,
  `receipt_id` int(4) NOT NULL,
  `seller_name` varchar(48) DEFAULT NULL,
  `seller_address` varchar(200) DEFAULT NULL,
  `buyer_name` varchar(48) DEFAULT NULL,
  `buyer_address` varchar(200) DEFAULT NULL,
  `date` varchar(48) DEFAULT NULL,
  `total_sale` float DEFAULT NULL,
  `num_sold` int(10) DEFAULT NULL,
  `max_price` float DEFAULT NULL,
  `min_price` float DEFAULT NULL,
  PRIMARY KEY (`receipt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipts`
--

LOCK TABLES `receipts` WRITE;
/*!40000 ALTER TABLE `receipts` DISABLE KEYS */;
INSERT INTO `receipts` VALUES ('NULL',1,'Amazon','1 Dead End Row Room 400 Dallas, TX 12347','STARK INTERNATIONAL c/o Jarvis','200 Park Avenue Floor #27 New York, New York 10001','',409.92,8,259.99,19.99),('NULL',2,'WKYT News','2851 Winchester Rd Lexington, KY 40509','FOX 56 News','836 Euclid Ave #201 Lexington, Kentucky 40502','10_10_24',499.95,5,99.99,99.99),('NULL',3,'LEX18 - WLEX-TV','1065 Russell Cave Rd Lexington, KY 40505','ABC 36 WTVQ','6940 Man o War Blvd Lexington, KY 40509','',9393.94,6,2498.99,1098.99),('NULL',4,'FOX 56 News','836 Euclid Ave #201 Lexington, Kentucky 40502','WDRB','624 W. Muhammad Ali Blvd Louisville, KY 40203','',9.99,3,9.99,0),('NULL',5,'Cable News Network','30 Hudson Yards New York, NY 10001','NewsNation','2501 West Bradley Place Chicago, Illinois 60618','',1,1,1,1),('NULL',6,'Bitcentral, Inc.','4340 Von Karman Ave #400 Newport Beach, CA 92660','FOX 56 News','836 Euclid Ave #201 Lexington, Kentucky 40502','01_01_24',7499.99,1,7499.99,7499.99),('NULL',7,'ChyronHego Corporation','532 Broadhollow Road Melville, New York 11747','FOX 56 News','836 Euclid Ave #201 Lexington, Kentucky 40502','01_01_24',5999.98,2,4999.99,999.99),('NULL',8,'Sony Electronics Inc.','40000 Grand River Ave #400 Novi, MI 48375','FOX 56 News','836 Euclid Ave #201 Lexington, Kentucky 40502','05_10_24',1745.65,4,1098.99,146.68),('NULL',9,'Lectrosonics Inc.','581 Laser Rd NE Rio Rancho, NM 87124','FOX 56 News','836 Euclid Ave #201 Lexington, Kentucky 40502','10_10_24',657.87,13,645.99,0.99),('NULL',10,'FOX 56 News','836 Euclid Ave #201 Lexington, Kentucky 40502','Jets Pizza','37501 Mound Road Sterling Heights, MI 48310','',19999,1,20000,20000),('NULL',11,'FOX 56 News','836 Euclid Ave #201 Lexington, Kentucky 40502','Mann Chrysler Dodge Jeep RAM of Richmond','1815 Irvine Rd Richmond, KY 40475','',4999.99,1,4999.99,4999.99),('NULL',12,'FOX 56 News','836 Euclid Ave #201 Lexington, Kentucky 40502','Lake Cumberland Regional Hospital','305 Langdon St Somerset, KY 42503','',4999.99,1,4999.99,4999.99),('NULL',13,'FOX 56 News','836 Euclid Ave #201 Lexington, Kentucky 40502','Dan Cummins Chevrolet Buick of Paris','1020 M.L.K. Jr Blvd Paris, KY 40361','',4999.99,1,4999.99,4999.99),('NULL',14,'FOX 56 News','836 Euclid Ave #201 Lexington, Kentucky 40502','Bryant Heating, Cooling, Plumbing & Electric','253 Blue Sky Pkwy Lexington, KY 40509','',20000,1,20000,20000),('NULL',15,'LEX18 - WLEX-TV','1065 Russell Cave Rd Lexington, KY 40505','Bryant Heating, Cooling, Plumbing & Electric','253 Blue Sky Pkwy Lexington, KY 40509','',9999.99,1,9999.99,9999.99),('NULL',16,'WKYT News','2851 Winchester Rd Lexington, KY 40509','Bryant Heating, Cooling, Plumbing & Electric','253 Blue Sky Pkwy Lexington, KY 40509','',13000,1,13000,13000);
/*!40000 ALTER TABLE `receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellers`
--

DROP TABLE IF EXISTS `sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sellers` (
  `seller_name` varchar(48) DEFAULT NULL,
  `seller_id` int(4) NOT NULL AUTO_INCREMENT,
  `seller_address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`seller_id`),
  UNIQUE KEY `seller_name` (`seller_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellers`
--

LOCK TABLES `sellers` WRITE;
/*!40000 ALTER TABLE `sellers` DISABLE KEYS */;
INSERT INTO `sellers` VALUES ('Amazon',1,'1 Dead End Row Room 400 Dallas, TX 12347'),('WKYT News',2,'2851 Winchester Rd Lexington, KY 40509'),('LEX18 - WLEX-TV',3,'1065 Russell Cave Rd Lexington, KY 40505'),('FOX 56 News',4,'836 Euclid Ave #201 Lexington, Kentucky 40502'),('Cable News Network',5,'30 Hudson Yards New York, NY 10001'),('Bitcentral, Inc.',6,'4340 Von Karman Ave #400 Newport Beach, CA 92660'),('ChyronHego Corporation',7,'532 Broadhollow Road Melville, New York 11747'),('Sony Electronics Inc.',8,'40000 Grand River Ave #400 Novi, MI 48375'),('Lectrosonics Inc.',9,'581 Laser Rd NE Rio Rancho, NM 87124');
/*!40000 ALTER TABLE `sellers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-07 10:07:43
