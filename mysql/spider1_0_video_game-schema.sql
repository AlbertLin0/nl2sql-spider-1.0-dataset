-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_video_game
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
-- Table structure for table `Game`
--

DROP TABLE IF EXISTS `Game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Game` (
  `Game_ID` int NOT NULL AUTO_INCREMENT,
  `Title` text COLLATE utf8mb4_general_ci,
  `Release_Date` text COLLATE utf8mb4_general_ci,
  `Franchise` text COLLATE utf8mb4_general_ci,
  `Developers` text COLLATE utf8mb4_general_ci,
  `Platform_ID` int DEFAULT NULL,
  `Units_sold_Millions` int DEFAULT NULL,
  PRIMARY KEY (`Game_ID`),
  KEY `game_FK_0_0` (`Platform_ID`),
  CONSTRAINT `game_FK_0_0` FOREIGN KEY (`Platform_ID`) REFERENCES `Platform` (`Platform_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Game_Player`
--

DROP TABLE IF EXISTS `Game_Player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Game_Player` (
  `Player_ID` int NOT NULL,
  `Game_ID` int NOT NULL,
  `If_active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Player_ID`,`Game_ID`),
  KEY `game_player_FK_0_0` (`Game_ID`),
  CONSTRAINT `game_player_FK_0_0` FOREIGN KEY (`Game_ID`) REFERENCES `Game` (`Game_ID`),
  CONSTRAINT `game_player_FK_1_0` FOREIGN KEY (`Player_ID`) REFERENCES `Player` (`Player_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Platform`
--

DROP TABLE IF EXISTS `Platform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Platform` (
  `Platform_ID` int NOT NULL AUTO_INCREMENT,
  `Platform_name` text COLLATE utf8mb4_general_ci,
  `Market_district` text COLLATE utf8mb4_general_ci,
  `Download_rank` int DEFAULT NULL,
  PRIMARY KEY (`Platform_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Player`
--

DROP TABLE IF EXISTS `Player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Player` (
  `Player_ID` int NOT NULL AUTO_INCREMENT,
  `Rank_of_the_year` int DEFAULT NULL,
  `Player_name` text COLLATE utf8mb4_general_ci,
  `Position` text COLLATE utf8mb4_general_ci,
  `College` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`Player_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2007 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:43:06
