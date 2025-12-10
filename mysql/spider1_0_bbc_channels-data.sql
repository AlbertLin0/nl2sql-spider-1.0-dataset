-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_bbc_channels
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
-- Dumping data for table `Channel`
--

LOCK TABLES `Channel` WRITE;
/*!40000 ALTER TABLE `Channel` DISABLE KEYS */;
INSERT INTO `Channel` VALUES (1,'BBC One','1','HD','bbc.co.uk'),(2,'ITV','3','HD','ITV - itv.com'),(3,'BBC Two','2','2','bbc.co.uk'),(4,'Channel 4','4','8','channel4.com'),(5,'Channel 5','5','44','unavailable'),(6,'ITV3','unavailable','10','itv.com'),(7,'ITV2','unavailable','6','itv.com'),(8,'E4','unavailable','28','e4.com'),(9,'Sky Sports 1','unavailable','unavailable','skysports.com'),(10,'Sky1','unavailable','unavailable','sky.com'),(11,'CBeebies','unavailable','71','bbc.co.uk'),(12,'ITV4','unavailable','24','itv.com'),(13,'BBC Three','unavailable','7','bbc.co.uk'),(14,'Dave','unavailable','12','dave.uktv.co.uk');
/*!40000 ALTER TABLE `Channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Director`
--

LOCK TABLES `Director` WRITE;
/*!40000 ALTER TABLE `Director` DISABLE KEYS */;
INSERT INTO `Director` VALUES (1,'DeSean Jackson',60),(2,'Hank Baskett',90),(3,'Greg Lewis',52),(4,'Brent Celek',44),(5,'Correll Buckhalter',59),(6,'Reggie Brown',40),(7,'Brian Westbrook',47),(8,'Jason Avant',31),(9,'Kevin Curtis',32),(10,'L.J. Smith',43);
/*!40000 ALTER TABLE `Director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Director_Admin`
--

LOCK TABLES `Director_Admin` WRITE;
/*!40000 ALTER TABLE `Director_Admin` DISABLE KEYS */;
INSERT INTO `Director_Admin` VALUES (1,14,0),(3,14,0),(4,7,0),(5,14,0),(6,7,0);
/*!40000 ALTER TABLE `Director_Admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Program`
--

LOCK TABLES `Program` WRITE;
/*!40000 ALTER TABLE `Program` DISABLE KEYS */;
INSERT INTO `Program` VALUES (1,2002,'The Angry Brigade',1,14),(2,2006,'Dracula',2,10),(3,2006,'Another Country',3,3),(4,2007,'Caesar III: An Empire Without End',5,14),(5,2008,'Othello',3,7),(6,2008,'The Leopard',6,7),(7,2008,'Cyrano de Bergerac',10,14),(8,2009,'Carnival',9,10);
/*!40000 ALTER TABLE `Program` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:13
