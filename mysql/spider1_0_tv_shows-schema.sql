-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_tv_shows
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
-- Table structure for table `City_Channel`
--

DROP TABLE IF EXISTS `City_Channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `City_Channel` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `City` text COLLATE utf8mb4_general_ci,
  `Station_name` text COLLATE utf8mb4_general_ci,
  `Owned_Since` double DEFAULT NULL,
  `Affiliation` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `City_Channel_Radio`
--

DROP TABLE IF EXISTS `City_Channel_Radio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `City_Channel_Radio` (
  `City_channel_ID` int NOT NULL,
  `Radio_ID` int NOT NULL,
  `Is_online` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`City_channel_ID`,`Radio_ID`),
  KEY `city_channel_radio_FK_0_0` (`Radio_ID`),
  CONSTRAINT `city_channel_radio_FK_0_0` FOREIGN KEY (`Radio_ID`) REFERENCES `Radio` (`Radio_ID`),
  CONSTRAINT `city_channel_radio_FK_1_0` FOREIGN KEY (`City_channel_ID`) REFERENCES `City_Channel` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `City_Channel_Tv_Show`
--

DROP TABLE IF EXISTS `City_Channel_Tv_Show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `City_Channel_Tv_Show` (
  `City_channel_ID` int NOT NULL,
  `tv_show_ID` int NOT NULL,
  `Is_online` tinyint(1) DEFAULT NULL,
  `Is_free` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`City_channel_ID`,`tv_show_ID`),
  KEY `city_channel_tv_show_FK_0_0` (`tv_show_ID`),
  CONSTRAINT `city_channel_tv_show_FK_0_0` FOREIGN KEY (`tv_show_ID`) REFERENCES `Tv_Show` (`tv_show_ID`),
  CONSTRAINT `city_channel_tv_show_FK_1_0` FOREIGN KEY (`City_channel_ID`) REFERENCES `City_Channel` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Radio`
--

DROP TABLE IF EXISTS `Radio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Radio` (
  `Radio_ID` int NOT NULL AUTO_INCREMENT,
  `Transmitter` text COLLATE utf8mb4_general_ci,
  `Radio_MHz` text COLLATE utf8mb4_general_ci,
  `2FM_MHz` text COLLATE utf8mb4_general_ci,
  `RnaG_MHz` text COLLATE utf8mb4_general_ci,
  `Lyric_FM_MHz` text COLLATE utf8mb4_general_ci,
  `ERP_kW` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`Radio_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Tv_Show`
--

DROP TABLE IF EXISTS `Tv_Show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tv_Show` (
  `tv_show_ID` int NOT NULL AUTO_INCREMENT,
  `tv_show_name` text COLLATE utf8mb4_general_ci,
  `Sub_tittle` text COLLATE utf8mb4_general_ci,
  `Next_show_name` text COLLATE utf8mb4_general_ci,
  `Original_Airdate` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`tv_show_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:43:04
