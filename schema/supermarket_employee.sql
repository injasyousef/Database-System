-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: supermarket
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Emp_id` int NOT NULL,
  `Emp_name` varchar(45) NOT NULL,
  `Gender` varchar(7) NOT NULL,
  `hiredate` date NOT NULL,
  `firedate` date DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `Dep_id` int DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  `Salary` double NOT NULL,
  PRIMARY KEY (`Emp_id`),
  KEY `Dep_id_idx` (`Dep_id`),
  CONSTRAINT `Dep_id` FOREIGN KEY (`Dep_id`) REFERENCES `department` (`Dep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (51,'yosef','M','2020-09-09',NULL,'2001-12-12','0595465',11,'ramallah','123321',4000),(52,'tarek','M','2020-12-06',NULL,'2000-12-12','05964565',12,'ramallah','123321',3500),(53,'salah','M','2020-12-12',NULL,'2000-12-12','05689565',13,'ramallah','12344321',5000),(54,'issa','M','2020-06-06',NULL,'2002-12-12','05964854',13,'ramallah','123321',2500),(55,'hamad','M','2020-10-12',NULL,'2000-12-12','05664545561',12,'ramallah','123321',3000),(56,'wahbeh','M','2021-06-06',NULL,'1985-05-11','059556564',12,'ramallah','123321',5000),(57,'ali','M','2021-06-06',NULL,'1989-05-09','0595665',13,'gaza','123321',4300);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

