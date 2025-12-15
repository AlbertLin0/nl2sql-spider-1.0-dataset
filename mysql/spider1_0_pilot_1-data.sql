-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_pilot_1
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `Hangar`
--
LOCK TABLES `Hangar` WRITE;
/*!40000 ALTER TABLE `Hangar` DISABLE KEYS */;
INSERT INTO `Hangar` VALUES ('B-1 Bomber','Chicago'),('B-52 Bomber','Austin'),('F-14 Fighter','Boston'),('Piper Cub','Seattle');
/*!40000 ALTER TABLE `Hangar` ENABLE KEYS */;
UNLOCK TABLES;
LOCK TABLES `Pilotskills` WRITE;
/*!40000 ALTER TABLE `Pilotskills` DISABLE KEYS */;
INSERT INTO `Pilotskills` VALUES ('Celko','Piper Cub',23),('Higgins','B-52 Bomber',34),('Higgins','F-14 Fighter',50),('Higgins','Piper Cub',30),('Jones','B-52 Bomber',24),('Jones','F-14 Fighter',32),('Smith','B-1 Bomber',41),('Smith','B-52 Bomber',26),('Smith','F-14 Fighter',45),('Wilson','B-1 Bomber',52),('Wilson','B-52 Bomber',34),('Wilson','F-14 Fighter',24);
/*!40000 ALTER TABLE `Pilotskills` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping data for table `Pilotskills`
--


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:29
