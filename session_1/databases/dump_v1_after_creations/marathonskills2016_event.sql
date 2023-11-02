-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: marathonskills2016
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `EventId` char(6) NOT NULL,
  `EventName` varchar(50) NOT NULL,
  `EventTypeId` char(2) NOT NULL,
  `MarathonId` tinyint NOT NULL,
  `StartDateTime` datetime DEFAULT NULL,
  `Cost` decimal(10,2) DEFAULT NULL,
  `MaxParticipants` smallint DEFAULT NULL,
  PRIMARY KEY (`EventId`),
  KEY `EventTypeId` (`EventTypeId`),
  KEY `MarathonId` (`MarathonId`),
  CONSTRAINT `event_ibfk_1` FOREIGN KEY (`EventTypeId`) REFERENCES `eventtype` (`EventTypeId`),
  CONSTRAINT `event_ibfk_2` FOREIGN KEY (`MarathonId`) REFERENCES `marathon` (`MarathonId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES ('11_1FM','Ouse Marathon','FM',1,'2011-08-09 09:00:00',135.00,500),('11_1FR','Humber Fun Run','FR',1,'2011-08-10 10:00:00',15.00,800),('11_1HM','Foss Half Marathon','HM',1,'2011-08-09 14:00:00',70.00,650),('12_2FR','Hanoi 5km Fun Run','FR',2,'2012-06-16 15:00:00',25.00,1500),('12_2HM','Hanoi Half Marathon','HM',2,'2012-06-16 10:00:00',55.00,1500),('13_3FM','Bach Full Marathon','FM',3,'2013-08-25 10:00:00',130.00,1250),('13_3HM','Wagner Half Marathon','HM',3,'2013-08-25 09:00:00',70.00,800),('14_4FM','Honshu Marathon','FM',4,'2014-05-07 09:00:00',160.00,2680),('14_4FR','Honshu Fun Run','FR',4,'2014-05-08 11:00:00',20.00,1500),('14_4HM','Honshu Half Marathon','HM',4,'2014-05-08 09:00:00',60.00,2680),('15_5FM','Samba Full Marathon','FM',5,'2015-09-05 06:00:00',145.00,2200),('15_5FR','Capoeira 5km Fun Run','FR',5,'2015-09-06 15:00:00',20.00,5000),('15_5HM','Jongo Half Marathon','HM',5,'2015-09-06 07:00:00',75.00,2500);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-02 12:17:44
