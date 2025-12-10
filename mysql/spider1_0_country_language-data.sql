-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_country_language
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
-- Dumping data for table `Countries`
--

LOCK TABLES `Countries` WRITE;
/*!40000 ALTER TABLE `Countries` DISABLE KEYS */;
INSERT INTO `Countries` VALUES (1,'Iceland',100,100,90.5,96.7,88,92.8),(2,'Sweden',99.2,90.8,94.8,95.5,90.3,93.1),(3,'Canada',96.6,100,92.7,92,91,66.9),(4,'Denmark',95.3,86.1,94.9,97.6,88.5,78.4),(5,'Finland',92.8,80.2,91.4,91.3,86.8,100),(6,'Switzerland',91.9,87.9,94.4,97.3,82.6,74.6),(7,'Norway',91.3,79.3,100,74,93.5,93.9),(8,'United States',89.8,82.9,92.8,97.3,83.9,68.6),(9,'Australia',88.2,80.7,93.3,93.9,85.3,65.1);
/*!40000 ALTER TABLE `Countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Languages`
--

LOCK TABLES `Languages` WRITE;
/*!40000 ALTER TABLE `Languages` DISABLE KEYS */;
INSERT INTO `Languages` VALUES (1,'Icelandic'),(2,'Swedish'),(3,'English'),(4,'Danish'),(5,'Finnish'),(6,'German'),(7,'French'),(8,'Norwegian'),(9,'Italian'),(10,'Romansh');
/*!40000 ALTER TABLE `Languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Official_Languages`
--

LOCK TABLES `Official_Languages` WRITE;
/*!40000 ALTER TABLE `Official_Languages` DISABLE KEYS */;
INSERT INTO `Official_Languages` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,6),(9,6),(10,6),(8,7),(3,8),(3,9);
/*!40000 ALTER TABLE `Official_Languages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:18
