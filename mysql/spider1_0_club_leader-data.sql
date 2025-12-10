-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_club_leader
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
INSERT INTO `Club` VALUES (1,5,'Mack Mitchell','Houston'),(2,119,'Jim Cope','Ohio State'),(3,57,'Oscar Roan','SMU'),(4,82,'Tony Peters','Oklahoma'),(5,109,'John Zimba','Villanova'),(6,150,'Charles Miller','West Virginia'),(7,161,'Merle Wang','TCU'),(8,186,'Barry Santini','Purdue'),(9,213,'Larry Poole','Kent State'),(10,238,'Stan Lewis','Wayne'),(16,154,'Henry Hynoski','Temple'),(19,215,'Floyd Hogan','Arkansas');
/*!40000 ALTER TABLE `Club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Club_Leader`
--

LOCK TABLES `Club_Leader` WRITE;
/*!40000 ALTER TABLE `Club_Leader` DISABLE KEYS */;
INSERT INTO `Club_Leader` VALUES (1,1988,'2018'),(4,1990,'2018'),(6,1985,'2015'),(6,1999,'2018'),(8,1984,'2017'),(10,1991,'2017');
/*!40000 ALTER TABLE `Club_Leader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Member`
--

LOCK TABLES `Member` WRITE;
/*!40000 ALTER TABLE `Member` DISABLE KEYS */;
INSERT INTO `Member` VALUES (1984,'Wally Lewis','Australia',23),(1985,'Brett Kenny','Australia',19),(1986,'Garry Jack','Australia',18),(1987,'Hugh McGahan Peter Sterling','New Zealand Australia',24),(1988,'Ellery Hanley','England',19),(1989,'Mal Meninga','Australia',22),(1990,'Garry Schofield','England',21),(1991,'No award given','No award given',20),(1999,'Andrew Johns','Australia',19),(2000,'Brad Fittler','Australia',17);
/*!40000 ALTER TABLE `Member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:17
