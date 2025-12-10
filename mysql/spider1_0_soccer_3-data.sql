-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_soccer_3
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
-- Dumping data for table `Club`
--

LOCK TABLES `Club` WRITE;
/*!40000 ALTER TABLE `Club` DISABLE KEYS */;
INSERT INTO `Club` VALUES (1,'Arsenal','Arsène Wenger','Cesc Fàbregas','Nike','Fly Emirates'),(2,'Aston Villa','Martin O\'Neill','Martin Laursen','Nike','Acorns'),(3,'Blackburn Rovers','Sam Allardyce','Ryan Nelsen','Umbro','Crown Paints'),(4,'Bolton Wanderers','Gary Megson','Kevin Davies','Reebok','Reebok'),(5,'Chelsea','Guus Hiddink','John Terry','adidas','Samsung'),(6,'Everton','David Moyes','Phil Neville','Umbro','Chang'),(7,'Fulham','Roy Hodgson','Danny Murphy','Nike','LG'),(8,'Hull City','Phil Brown','Ian Ashbee','Umbro','Karoo (H) / Kingston Communications (A, 3rd)'),(9,'Liverpool','Rafael Benítez','Steven Gerrard','adidas','Carlsberg');
/*!40000 ALTER TABLE `Club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Player`
--

LOCK TABLES `Player` WRITE;
/*!40000 ALTER TABLE `Player` DISABLE KEYS */;
INSERT INTO `Player` VALUES (1,'Nick Price','Zimbabwe',1478557,18,4,1),(2,'Paul Azinger','United States',1458456,24,3,3),(3,'Greg Norman','Australia',1359653,15,2,5),(4,'Jim Gallagher, Jr.','United States',1078870,27,2,6),(5,'David Frost','South Africa',1030717,22,2,7);
/*!40000 ALTER TABLE `Player` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:33
