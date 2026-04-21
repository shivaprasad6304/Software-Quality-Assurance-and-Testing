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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `role` varchar(20) NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  KEY `idx_user_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'harry','WJklINULm237Ccq20U7iPw==:P0SwOKr/amcs+Qb9/3W5vww6bEsoIYo0bq1IHleKVzg=','ADIKIOSEA314324L@GMAIL.COM','doctor',1,'2026-04-18 09:39:24','2026-04-18 09:39:24'),(2,'rrr','ClSZvsEHXXZ4NqEFniSUoA==:fn6mbgKZddTfiOc27L8jLa8FkrHB4FRCb3Ckwhyig6A=','r@gmail.com','patient',1,'2026-04-18 09:50:37','2026-04-18 09:50:37'),(3,'staff','Svp7E9+z+fRpvS+SO307Tg==:TxswHyLZRngvq6U9JeIdmw91wwQw+NulmZdwjkwKATs=','s@gmail.com','pharmacist',1,'2026-04-18 09:52:52','2026-04-18 09:52:52'),(4,'nurse','UIXzjFN7GbPHIQCOJRhDHw==:ilPjazGVBXcMEK/K7RCZ3GlHg9tYIyOhCB6Zd87zM5s=','n@gmail.com','nurse',1,'2026-04-18 10:02:59','2026-04-18 10:02:59'),(5,'poppy','fNkOC5rTML8It16G/7Q3yg==:jMwze9Ox7+FuVpmbNev0PkEdZsZpCfjvVO3i/FQVqt8=','p@gmail.com','doctor',1,'2026-04-18 11:49:55','2026-04-18 11:49:55'),(6,'pat67','0wQdb5bI4bhLjg2VvuQxRA==:n3V9g70luZZOMbQhZQp7b9CDLYc97311LtvAaXjoPUA=','p11@gmail.com','patient',1,'2026-04-18 11:52:41','2026-04-18 11:52:41'),(7,'phar','Yj1wT+UNOqPQp8PJLjqsFw==:UPVbYtON19zZOIrbF9c0n+5Lcg0L7N3F+k1G1G8vhVE=','ph@gmail.com','pharmacist',1,'2026-04-18 11:56:15','2026-04-18 11:56:15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
