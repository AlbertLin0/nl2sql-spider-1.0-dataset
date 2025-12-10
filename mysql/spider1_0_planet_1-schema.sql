-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_planet_1
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
-- Table structure for table `Client`
--

DROP TABLE IF EXISTS `Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Client` (
  `AccountNumber` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`AccountNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Position` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Salary` double NOT NULL,
  `Remarks` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Has_Clearance`
--

DROP TABLE IF EXISTS `Has_Clearance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Has_Clearance` (
  `Employee` int NOT NULL,
  `Planet` int NOT NULL,
  `Level` int NOT NULL,
  PRIMARY KEY (`Employee`,`Planet`),
  KEY `Has_Clearance_FK_0_0` (`Planet`),
  CONSTRAINT `Has_Clearance_FK_0_0` FOREIGN KEY (`Planet`) REFERENCES `Planet` (`PlanetID`),
  CONSTRAINT `Has_Clearance_FK_1_0` FOREIGN KEY (`Employee`) REFERENCES `Employee` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Package`
--

DROP TABLE IF EXISTS `Package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Package` (
  `Shipment` int NOT NULL,
  `PackageNumber` int NOT NULL,
  `Contents` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Weight` double NOT NULL,
  `Sender` int NOT NULL,
  `Recipient` int NOT NULL,
  PRIMARY KEY (`Shipment`,`PackageNumber`),
  KEY `Package_FK_0_0` (`Recipient`),
  KEY `Package_FK_1_0` (`Sender`),
  CONSTRAINT `Package_FK_0_0` FOREIGN KEY (`Recipient`) REFERENCES `Client` (`AccountNumber`),
  CONSTRAINT `Package_FK_1_0` FOREIGN KEY (`Sender`) REFERENCES `Client` (`AccountNumber`),
  CONSTRAINT `Package_FK_2_0` FOREIGN KEY (`Shipment`) REFERENCES `Shipment` (`ShipmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Planet`
--

DROP TABLE IF EXISTS `Planet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Planet` (
  `PlanetID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Coordinates` double NOT NULL,
  PRIMARY KEY (`PlanetID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Shipment`
--

DROP TABLE IF EXISTS `Shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Shipment` (
  `ShipmentID` int NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `Manager` int NOT NULL,
  `Planet` int NOT NULL,
  PRIMARY KEY (`ShipmentID`),
  KEY `Shipment_FK_0_0` (`Planet`),
  KEY `Shipment_FK_1_0` (`Manager`),
  CONSTRAINT `Shipment_FK_0_0` FOREIGN KEY (`Planet`) REFERENCES `Planet` (`PlanetID`),
  CONSTRAINT `Shipment_FK_1_0` FOREIGN KEY (`Manager`) REFERENCES `Employee` (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:43:00
