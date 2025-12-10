-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_car_racing
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
-- Table structure for table `Country`
--

DROP TABLE IF EXISTS `Country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Country` (
  `Country_Id` int NOT NULL AUTO_INCREMENT,
  `Country` text COLLATE utf8mb4_general_ci,
  `Capital` text COLLATE utf8mb4_general_ci,
  `Official_native_language` text COLLATE utf8mb4_general_ci,
  `Regoin` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`Country_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Driver`
--

DROP TABLE IF EXISTS `Driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Driver` (
  `Driver_ID` int NOT NULL AUTO_INCREMENT,
  `Driver` text COLLATE utf8mb4_general_ci,
  `Country` int DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Car_#` double DEFAULT NULL,
  `Make` text COLLATE utf8mb4_general_ci,
  `Points` text COLLATE utf8mb4_general_ci,
  `Laps` double DEFAULT NULL,
  `Winnings` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`Driver_ID`),
  KEY `driver_FK_0_0` (`Country`),
  CONSTRAINT `driver_FK_0_0` FOREIGN KEY (`Country`) REFERENCES `Country` (`Country_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Team`
--

DROP TABLE IF EXISTS `Team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Team` (
  `Team_ID` int NOT NULL AUTO_INCREMENT,
  `Team` text COLLATE utf8mb4_general_ci,
  `Make` text COLLATE utf8mb4_general_ci,
  `Manager` text COLLATE utf8mb4_general_ci,
  `Sponsor` text COLLATE utf8mb4_general_ci,
  `Car_Owner` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`Team_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Team_Driver`
--

DROP TABLE IF EXISTS `Team_Driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Team_Driver` (
  `Team_ID` int NOT NULL,
  `Driver_ID` int NOT NULL,
  PRIMARY KEY (`Team_ID`,`Driver_ID`),
  KEY `team_driver_FK_0_0` (`Driver_ID`),
  CONSTRAINT `team_driver_FK_0_0` FOREIGN KEY (`Driver_ID`) REFERENCES `Driver` (`Driver_ID`),
  CONSTRAINT `team_driver_FK_1_0` FOREIGN KEY (`Team_ID`) REFERENCES `Team` (`Team_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:42:49
