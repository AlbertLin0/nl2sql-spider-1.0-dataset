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
-- Table structure for table `Channel`
--

DROP TABLE IF EXISTS `Channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Channel` (
  `Channel_ID` int NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_general_ci,
  `Analogue_terrestrial_channel` text COLLATE utf8mb4_general_ci,
  `Digital_terrestrial_channel` text COLLATE utf8mb4_general_ci,
  `Internet` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`Channel_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Director`
--

DROP TABLE IF EXISTS `Director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Director` (
  `Director_ID` int NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_general_ci,
  `Age` int DEFAULT NULL,
  PRIMARY KEY (`Director_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Director_Admin`
--

DROP TABLE IF EXISTS `Director_Admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Director_Admin` (
  `Director_ID` int NOT NULL,
  `Channel_ID` int NOT NULL,
  `Is_first_director` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Director_ID`,`Channel_ID`),
  KEY `director_admin_FK_0_0` (`Channel_ID`),
  CONSTRAINT `director_admin_FK_0_0` FOREIGN KEY (`Channel_ID`) REFERENCES `Channel` (`Channel_ID`),
  CONSTRAINT `director_admin_FK_1_0` FOREIGN KEY (`Director_ID`) REFERENCES `Director` (`Director_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Program`
--

DROP TABLE IF EXISTS `Program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Program` (
  `Program_ID` int NOT NULL AUTO_INCREMENT,
  `Start_Year` double DEFAULT NULL,
  `Title` text COLLATE utf8mb4_general_ci,
  `Director_ID` int DEFAULT NULL,
  `Channel_ID` int DEFAULT NULL,
  PRIMARY KEY (`Program_ID`),
  KEY `program_FK_0_0` (`Channel_ID`),
  KEY `program_FK_1_0` (`Director_ID`),
  CONSTRAINT `program_FK_0_0` FOREIGN KEY (`Channel_ID`) REFERENCES `Channel` (`Channel_ID`),
  CONSTRAINT `program_FK_1_0` FOREIGN KEY (`Director_ID`) REFERENCES `Director` (`Director_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:42:46
