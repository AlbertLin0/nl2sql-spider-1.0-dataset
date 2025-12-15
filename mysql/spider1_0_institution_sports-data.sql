-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_institution_sports
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
-- Dumping data for table `Championship`
--


--
-- Dumping data for table `Institution`
--

LOCK TABLES `Institution` WRITE;
/*!40000 ALTER TABLE `Institution` DISABLE KEYS */;
INSERT INTO `Institution` VALUES (1,'University of British Columbia','Thunderbirds','Vancouver','BC',1908,'Public',43579,'$1.01B','Thunderbird Stadium',3500),(2,'University of Calgary','Dinos','Calgary','AB',1966,'Public',28196,'$444M','McMahon Stadium',35650),(3,'University of Alberta','Golden Bears','Edmonton','AB',1908,'Public',36435,'$751M','Foote Field',3500),(4,'University of Saskatchewan','Huskies','Saskatoon','SK',1907,'Public',19082,'$136.7M','Griffiths Stadium',4997),(5,'University of Regina','Rams','Regina','SK',1911,'Public',12800,'$25.9M','Mosaic Stadium',30048);
/*!40000 ALTER TABLE `Institution` ENABLE KEYS */;
UNLOCK TABLES;
LOCK TABLES `Championship` WRITE;
/*!40000 ALTER TABLE `Championship` DISABLE KEYS */;
INSERT INTO `Championship` VALUES (1,'Colonials',1993,0),(2,'Terrapins',1994,0),(3,'Wildcats',1995,1),(4,'Tar Heels',1995,5);
/*!40000 ALTER TABLE `Championship` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:27
