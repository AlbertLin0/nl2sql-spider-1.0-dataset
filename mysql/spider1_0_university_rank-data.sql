-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_university_rank
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
-- Dumping data for table `Major`
--

LOCK TABLES `Major` WRITE;
/*!40000 ALTER TABLE `Major` DISABLE KEYS */;
INSERT INTO `Major` VALUES (1,'Accounting',1054),(2,'Advertising',1053),(3,'Healthcare Management',1154),(4,'Journalism',1059),(5,'Urban Education',1041);
/*!40000 ALTER TABLE `Major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Major_Ranking`
--
LOCK TABLES `University` WRITE;
/*!40000 ALTER TABLE `University` DISABLE KEYS */;
INSERT INTO `University` VALUES (1,'Augustana College','Rock Island','Illinois','Vikings','Private_Lutheran',2500,'CCIW'),(2,'Aurora University','Aurora','Illinois','Spartans','Private_Non-sectarian',4400,'Northern'),(3,'Beloit College','Beloit','Wisconsin','Buccaneers','Private_United Church of Christ',1000,'Midwest'),(4,'Benedictine University','Lisle','Illinois','Eagles','Private_Catholic',1300,'Northern'),(5,'Carroll University ','Waukesha','Wisconsin','Pioneers','Private_Presbyterian',2789,'Midwest'),(6,'Carthage College','Kenosha','Wisconsin','Red Men','Private_Lutheran',2188,'CCIW'),(7,'Concordia University Wisconsin','Mequon','Wisconsin','Falcons','Private_Lutheran',1608,'Northern'),(8,'Cornell College','Mount Vernon','Iowa','Rams','Private_United Methodist',1176,'Midwest'),(9,'Defiance College','Defiance','Ohio','Yellow Jackets','Private_United Church of Christ',1000,'HCAC'),(10,'Elmhurst College','Elmhurst','Illinois','Bluejays','Private_United Church of Christ',3400,'CCIW'),(11,'Fontbonne University','St. Louis','Missouri','Griffins','Private_Catholic',2924,'SLIAC'),(12,'Hanover College','Hanover','Indiana','Panthers','Private_Presbyterian',975,'HCAC'),(13,'Milwaukee School of Engineering','Milwaukee','Wisconsin','Raiders','Private_Non-sectarian',1929,'Northern');
/*!40000 ALTER TABLE `University` ENABLE KEYS */;
UNLOCK TABLES;
LOCK TABLES `Major_Ranking` WRITE;
/*!40000 ALTER TABLE `Major_Ranking` DISABLE KEYS */;
INSERT INTO `Major_Ranking` VALUES (1,1,1),(1,3,1),(4,4,1),(1,2,3),(2,1,3),(2,1,4),(3,2,4),(2,1,5);
/*!40000 ALTER TABLE `Major_Ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Overall_Ranking`
--

LOCK TABLES `Overall_Ranking` WRITE;
/*!40000 ALTER TABLE `Overall_Ranking` DISABLE KEYS */;
INSERT INTO `Overall_Ranking` VALUES (1,1,5,2,0,7),(1,2,5,1,1,7),(3,3,4,0,0,4),(4,4,1,3,2,6),(5,5,1,2,0,3),(6,6,1,0,2,3),(7,7,1,0,1,2),(7,8,1,0,1,2),(9,9,1,0,0,1),(9,10,1,0,0,1),(9,11,1,0,0,1),(9,12,1,0,0,1),(13,13,0,0,1,1);
/*!40000 ALTER TABLE `Overall_Ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `University`
--


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:34
