-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_district_spokesman
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
-- Dumping data for table `District`
--

LOCK TABLES `District` WRITE;
/*!40000 ALTER TABLE `District` DISABLE KEYS */;
INSERT INTO `District` VALUES (1,'Pozo Almonte',13765.8,10830,0.8,'linke.gov'),(2,'Pica',8934.3,6178,0.7,'linkd.gov'),(3,'Huara',10474.6,2599,0.2,'linka.gov'),(4,'Colchane',4015.6,1649,0.4,'linkg.gov'),(5,'Camiña',2200.2,1275,0.6,'abc.com');
/*!40000 ALTER TABLE `District` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Spokesman`
--

LOCK TABLES `Spokesman` WRITE;
/*!40000 ALTER TABLE `Spokesman` DISABLE KEYS */;
INSERT INTO `Spokesman` VALUES (1,'Rocco Granata',45,'Life and Freedom',1,498),(3,'Elvis Presley',29,'Now or Never',1,438),(4,'Lolita',32,'Happiness',1,402),(5,'Connie Francis',47,'Everybody\'s Somebody\'s Fool',1,365),(6,'Don Gibson',46,'I Can\'t Stop Loving my People',2,358),(7,'Jack Scott',38,' What in the World\'s Come Over You',2,354),(8,'Billy Vaughn Orchestra',48,'Be with the People',1,350),(9,'Nora Brockstedt',36,'People',1,304),(10,'Inger Jacobsen',38,'Public Health',1,287),(11,'Bob Luman',43,'Let\'s Think About Living',3,240),(12,'Elvis Presley',39,'Public Health',2,227),(13,'Roy Orbison',34,'Freedom',4,223);
/*!40000 ALTER TABLE `Spokesman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Spokesman_District`
--

LOCK TABLES `Spokesman_District` WRITE;
/*!40000 ALTER TABLE `Spokesman_District` DISABLE KEYS */;
INSERT INTO `Spokesman_District` VALUES (1,1,'2003'),(3,1,'2005'),(4,2,'2006'),(5,4,'2007'),(6,1,'2012'),(10,5,'2004');
/*!40000 ALTER TABLE `Spokesman_District` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:24
