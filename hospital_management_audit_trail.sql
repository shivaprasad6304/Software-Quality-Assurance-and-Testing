-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital_management
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `audit_trail`
--

DROP TABLE IF EXISTS `audit_trail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_trail` (
  `audit_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `entity_type` varchar(50) DEFAULT NULL,
  `entity_id` int DEFAULT NULL,
  `old_value` text,
  `new_value` text,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`audit_id`),
  KEY `idx_audit_user` (`user_id`),
  KEY `idx_audit_timestamp` (`timestamp`),
  CONSTRAINT `audit_trail_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_trail`
--

LOCK TABLES `audit_trail` WRITE;
/*!40000 ALTER TABLE `audit_trail` DISABLE KEYS */;
INSERT INTO `audit_trail` VALUES (1,1,'LOGIN','user',1,'','Logged in successfully','2026-04-18 09:39:49'),(2,1,'LOGOUT','user',1,'','Logged out','2026-04-18 09:40:04'),(3,2,'LOGIN','user',2,'','Logged in successfully','2026-04-18 09:50:42'),(4,2,'UPDATE','patient',1,'','ppp opopo','2026-04-18 09:51:57'),(5,2,'LOGOUT','user',2,'','Logged out','2026-04-18 09:52:12'),(6,3,'LOGIN','user',3,'','Logged in successfully','2026-04-18 09:52:54'),(7,3,'LOGOUT','user',3,'','Logged out','2026-04-18 10:02:32'),(8,4,'LOGIN','user',4,'','Logged in successfully','2026-04-18 10:03:02'),(9,4,'LOGOUT','user',4,'','Logged out','2026-04-18 10:03:17'),(10,1,'LOGIN','user',1,'','Logged in successfully','2026-04-18 10:03:23'),(11,1,'LOGOUT','user',1,'','Logged out','2026-04-18 10:04:16'),(12,3,'LOGIN','user',3,'','Logged in successfully','2026-04-18 10:04:21'),(13,3,'CREATE','medication',1,'','aspirin','2026-04-18 10:04:52'),(14,3,'LOGOUT','user',3,'','Logged out','2026-04-18 10:05:08'),(15,4,'LOGIN','user',4,'','Logged in successfully','2026-04-18 10:05:12'),(16,4,'LOGOUT','user',4,'','Logged out','2026-04-18 10:05:42'),(17,2,'LOGIN','user',2,'','Logged in successfully','2026-04-18 10:05:46'),(18,2,'LOGOUT','user',2,'','Logged out','2026-04-18 10:06:03'),(19,1,'LOGIN','user',1,'','Logged in successfully','2026-04-18 10:06:24'),(20,1,'LOGIN','user',1,'','Logged in successfully','2026-04-18 10:12:03'),(21,1,'CREATE','prescription',1,'','Patient ID: 1, Medications: 1','2026-04-18 10:14:08'),(22,1,'LOGOUT','user',1,'','Logged out','2026-04-18 10:14:20'),(23,4,'LOGIN','user',4,'','Logged in successfully','2026-04-18 10:14:25'),(24,1,'CREATE','prescription',2,'','Patient ID: 1, Medications: 1','2026-04-18 11:40:53'),(25,5,'LOGIN','user',5,'','Logged in successfully','2026-04-18 11:50:01'),(26,5,'LOGOUT','user',5,'','Logged out','2026-04-18 11:51:48'),(27,6,'LOGIN','user',6,'','Logged in successfully','2026-04-18 11:52:44'),(28,6,'UPDATE','patient',2,'','hammy ham','2026-04-18 11:53:50'),(29,6,'LOGOUT','user',6,'','Logged out','2026-04-18 11:54:10'),(30,5,'LOGIN','user',5,'','Logged in successfully','2026-04-18 11:54:17'),(31,5,'CREATE','prescription',3,'','Patient ID: 2, Medications: 1','2026-04-18 11:55:08'),(32,5,'LOGOUT','user',5,'','Logged out','2026-04-18 11:55:23'),(33,7,'LOGIN','user',7,'','Logged in successfully','2026-04-18 11:56:17'),(34,7,'CREATE','medication',2,'','p650','2026-04-18 11:57:06'),(35,7,'LOGOUT','user',7,'','Logged out','2026-04-18 11:57:09'),(36,4,'LOGIN','user',4,'','Logged in successfully','2026-04-18 11:57:18'),(37,1,'CREATE','prescription',4,'','Patient ID: 1, Medications: 1','2026-04-18 12:03:11');
/*!40000 ALTER TABLE `audit_trail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-18 20:29:15
