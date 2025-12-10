-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_headphone_store
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
-- Dumping data for table `Headphone`
--

LOCK TABLES `Headphone` WRITE;
/*!40000 ALTER TABLE `Headphone` DISABLE KEYS */;
INSERT INTO `Headphone` VALUES (1,'iGrado','Prestige',0.1,'Plastic','Comfort Pads',49),(2,'SR60i','Prestige',0.1,'Plastic','Comfort Pads',79),(3,'SR80i','Prestige',0.1,'Plastic','Comfort Pads',99),(4,'SR125i','Prestige',0.1,'Plastic','Comfort Pads',150),(5,'SR225i','Prestige',0.05,'Plastic','Bowls',200),(6,'SR325i','Prestige',0.05,'Aluminum alloy/ Plastic inner sleeve','Bowls',295),(7,'RS2i','Reference',0.05,'Hand-Crafted Mahogany','Bowls',495),(8,'RS1i','Reference',0.05,'Hand-Crafted Mahogany','Bowls',695),(9,'GS1000i','Statement',0.05,'Hand-Crafted Mahogany','Circumaural Bowls',995),(10,'PS500','Professional',0.05,'Hand-Crafted Mahogany / Aluminum','Bowls',595),(11,'PS1000','Professional',0.05,'Hand-Crafted Mahogany / Aluminum','Circumaural Bowls',1695);
/*!40000 ALTER TABLE `Headphone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Stock`
--

LOCK TABLES `Stock` WRITE;
/*!40000 ALTER TABLE `Stock` DISABLE KEYS */;
INSERT INTO `Stock` VALUES (1,6,100),(2,2,170),(2,3,300),(3,1,34),(3,4,14),(4,3,50),(5,5,100),(7,4,116);
/*!40000 ALTER TABLE `Stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Store`
--

LOCK TABLES `Store` WRITE;
/*!40000 ALTER TABLE `Store` DISABLE KEYS */;
INSERT INTO `Store` VALUES (1,'Laurel Canyon','Valley Village','None','October 29, 2005'),(2,'Woodman','Valley Glen','None','October 29, 2005'),(3,'Sepulveda','Van Nuys','1,205 Spaces','October 29, 2005'),(4,'Woodley','Van Nuys','None','October 29, 2005'),(5,'Reseda','Tarzana','522 Spaces','October 29, 2005'),(6,'Tampa','Tarzana','n/a','October 29, 2005'),(7,'Pierce College','Winnetka','373 Spaces','October 29, 2005'),(8,'Sherman Way','Canoga Park','Park & Ride Lot','June 30, 2012'),(9,'Roscoe','Canoga Park','None','June 30, 2012');
/*!40000 ALTER TABLE `Store` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:26
