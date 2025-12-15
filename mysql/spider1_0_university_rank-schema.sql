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
-- Table structure for table `Major`
--

DROP TABLE IF EXISTS `Major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Major` (
  `Major_ID` int NOT NULL AUTO_INCREMENT,
  `Major_Name` text COLLATE utf8mb4_general_ci,
  `Major_Code` int DEFAULT NULL,
  PRIMARY KEY (`Major_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `University`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `University` (
  `University_ID` int NOT NULL AUTO_INCREMENT,
  `University_Name` text COLLATE utf8mb4_general_ci,
  `City` text COLLATE utf8mb4_general_ci,
  `State` text COLLATE utf8mb4_general_ci,
  `Team_Name` text COLLATE utf8mb4_general_ci,
  `Affiliation` text COLLATE utf8mb4_general_ci,
  `Enrollment` int DEFAULT NULL,
  `Home_Conference` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`University_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Table structure for table `Major_Ranking`
--

DROP TABLE IF EXISTS `Major_Ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Major_Ranking` (
  `Rank` int NOT NULL,
  `University_ID` int NOT NULL,
  `Major_ID` int NOT NULL,
  PRIMARY KEY (`Rank`,`University_ID`,`Major_ID`),
  KEY `major_ranking_FK_0_0` (`Major_ID`),
  KEY `major_ranking_FK_1_0` (`University_ID`),
  CONSTRAINT `major_ranking_FK_0_0` FOREIGN KEY (`Major_ID`) REFERENCES `Major` (`Major_ID`),
  CONSTRAINT `major_ranking_FK_1_0` FOREIGN KEY (`University_ID`) REFERENCES `University` (`University_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Overall_Ranking`
--

DROP TABLE IF EXISTS `Overall_Ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Overall_Ranking` (
  `Rank` int DEFAULT NULL,
  `University_ID` int NOT NULL AUTO_INCREMENT,
  `Reputation_point` int DEFAULT NULL,
  `Research_point` int DEFAULT NULL,
  `Citation_point` int DEFAULT NULL,
  `Total` int DEFAULT NULL,
  PRIMARY KEY (`University_ID`),
  CONSTRAINT `overall_ranking_FK_0_0` FOREIGN KEY (`University_ID`) REFERENCES `University` (`University_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `University`
--


/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:43:05
