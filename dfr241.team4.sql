/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.6.18-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: mysql    Database: dfr241
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
-- Current Database: `dfr241`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dfr241` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `dfr241`;

--
-- Table structure for table `participants`
--

DROP TABLE IF EXISTS `participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participants` (
  `usrid` int(11) NOT NULL,
  `city` varchar(40) NOT NULL,
  `zip` char(5) NOT NULL,
  `state_abbr` char(2) NOT NULL,
  `street_address` varchar(60) NOT NULL,
  `title` varchar(10) DEFAULT NULL,
  `pname` varchar(60) NOT NULL,
  `middle_initial` char(1) DEFAULT NULL,
  `lname` varchar(60) DEFAULT NULL,
  `suffix` varchar(8) DEFAULT NULL,
  `roomnum` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`usrid`),
  UNIQUE KEY `UC1` (`usrid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participants`
--

LOCK TABLES `participants` WRITE;
/*!40000 ALTER TABLE `participants` DISABLE KEYS */;
INSERT INTO `participants` VALUES (1,'lexington','40506','ky','300 rose street','mr.','ray','l','hyatt','jr.',102),(2,'lexington','40506','ky','301 hilltop avenue','mr.','ray','l','hyatt','jr.',102),(3,'new york','10005','ny','82 beaver street',NULL,'john',NULL,'wick','',1301),(4,'new york','10001','ny','200 park avenue',NULL,'tony',NULL,'stark','',NULL),(5,'new york','10001','ny','117A bleecker street','dr.','stephen',NULL,'strange','',NULL),(6,'new york','10001','ny','200 park avenue',NULL,'bob','c','smith','',221),(7,'lexington','40506','ky','1 avenue of champions',NULL,'bowman','f','wildcat','',221),(8,'lexington','40507','ky','200 park avenue',NULL,'bob','c','smith','',NULL),(9,'dallas','12347','tx','1 dead end row',NULL,'bob',NULL,'porter','',200),(10,'dallas','12347','tx','1 dead end row','mr.','bob',NULL,'sydell','',200),(11,'falmouth','41040','ky','1405 straight shoot road',NULL,'gina',NULL,'gilbert','',NULL),(12,'falmouth','41040','ky','1405 straight shoot road',NULL,'bud',NULL,'gilbert','',NULL),(13,'falmouth','41040','ky','1405 straight shoot road',NULL,'shiloh',NULL,'williams','',NULL),(14,'alexandria','41001','ky','8 meadow ln',NULL,'mark',NULL,'freudenberg','',NULL),(15,'science hill','42553','ky','1801 west highway 635',NULL,'charles',NULL,'oakes','',NULL),(16,'eubank','42567','ky','9081 north highway 1247',NULL,'charles',NULL,'oakes','',NULL),(17,'eubank','42567','ky','9081 north highway 1247',NULL,'kaylee',NULL,'oakes','',NULL),(18,'eubank','42567','ky','9081 north highway 1247',NULL,'vanessa',NULL,'dykes','',NULL),(19,'somerset','42503','ky','327 normandy lane',NULL,'charles',NULL,'oakes','',NULL),(20,'somerset','42503','ky','327 normandy lane',NULL,'lovena',NULL,'oakes','',NULL),(21,'lexington','40503','ky','171 west lowry lane',NULL,'pho bc',NULL,NULL,'',168),(22,'lexington','40505','ky','904 liberty road',NULL,'big kahuna hawaiian barbeque',NULL,NULL,'',NULL),(23,'dallas','12347','tx','1 dead end row',NULL,'intech',NULL,NULL,'',NULL),(24,'lexington','40507','ky','348 east main street',NULL,'awesome inc',NULL,NULL,'',NULL),(25,'lexington','40508','ky','1170 manchester street',NULL,'brevede coffee distillery district',NULL,NULL,'',110),(26,'new york','10001','ny','200 park avenue',NULL,'stark international',NULL,NULL,'',27),(27,'dallas','12347','tx','1 dead end row',NULL,'amazon',NULL,NULL,'',400);
/*!40000 ALTER TABLE `participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_nums`
--

DROP TABLE IF EXISTS `phone_nums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_nums` (
  `usrid` int(11) NOT NULL,
  `number` char(10) NOT NULL,
  PRIMARY KEY (`usrid`,`number`),
  CONSTRAINT `phone_nums_ibfk_1` FOREIGN KEY (`usrid`) REFERENCES `participants` (`usrid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_nums`
--

LOCK TABLES `phone_nums` WRITE;
/*!40000 ALTER TABLE `phone_nums` DISABLE KEYS */;
INSERT INTO `phone_nums` VALUES (3,'5555555555'),(4,'5555553142'),(11,'8593138857'),(12,'9096765431'),(13,'8598600069'),(14,'8598141131'),(15,'6064252096'),(16,'6064252096'),(17,'9098788868'),(18,'9994567654'),(19,'6064252096'),(20,'8597689901'),(21,'8596788876'),(22,'5461112222'),(23,'7390127777'),(24,'4546765656'),(25,'6788766789'),(25,'9999999999'),(26,'9876665555'),(27,'1000000000');
/*!40000 ALTER TABLE `phone_nums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receipt` (
  `recnum` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `hprice` float DEFAULT NULL,
  `lprice` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `photo` blob DEFAULT NULL,
  PRIMARY KEY (`recnum`),
  UNIQUE KEY `RC1` (`recnum`),
  KEY `bid` (`bid`),
  KEY `uid` (`uid`),
  CONSTRAINT `receipt_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `participants` (`usrid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `receipt_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `participants` (`usrid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES `receipt` WRITE;
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
INSERT INTO `receipt` VALUES (1,26,27,NULL,8,259.99,19.99,409.92,NULL),(2,21,5,NULL,3,19.99,1.99,37.99,NULL),(3,21,9,NULL,1,8.99,8.99,8.99,NULL),(4,22,3,NULL,4,29.99,0.99,42.42,NULL),(5,27,1,NULL,1,51.49,51.49,51.49,NULL),(6,24,10,NULL,10,500,51.59,1000,NULL),(7,24,11,NULL,11,378.78,0.01,1000,NULL),(8,26,20,NULL,4,33,0.05,33.33,NULL),(9,27,20,NULL,8,100,7.34,307.34,NULL),(10,27,25,NULL,4,23.44,16.79,66.66,NULL),(11,21,22,NULL,1,0.01,0.01,0.01,NULL),(12,23,24,NULL,30,1000,99,10000,NULL),(13,25,26,NULL,8,88.88,11.92,409.92,NULL),(14,26,27,NULL,3,100,22.22,222.22,NULL),(15,27,2,NULL,6,100,22.22,409.91,NULL),(16,26,25,NULL,2,60,30,90,NULL);
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-23 13:40:49
