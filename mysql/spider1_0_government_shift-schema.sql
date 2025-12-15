-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_government_shift
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
-- Table structure for table `Channels`
--
DROP TABLE IF EXISTS `Integration_Platform`;
DROP TABLE IF EXISTS `Customer_Interactions`;
DROP TABLE IF EXISTS `Analytical_Layer`;
DROP TABLE IF EXISTS `Customers_And_Services`;
DROP TABLE IF EXISTS `Customers`;
DROP TABLE IF EXISTS `Services`;
DROP TABLE IF EXISTS `Channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Channels` (
  `Channel_ID` int NOT NULL AUTO_INCREMENT,
  `Channel_Details` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Channel_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Table structure for table `Services`
--


/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Services` (
  `Service_ID` int NOT NULL AUTO_INCREMENT,
  `Service_Details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Service_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=829 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Table structure for table `Customers`
--


/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customers` (
  `Customer_ID` int NOT NULL AUTO_INCREMENT,
  `Customer_Details` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Table structure for table `Customers_And_Services`
--


/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customers_And_Services` (
  `Customers_and_Services_ID` int NOT NULL AUTO_INCREMENT,
  `Customer_ID` int DEFAULT NULL,
  `Service_ID` int DEFAULT NULL,
  `Customers_and_Services_Details` char(15) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Customers_and_Services_ID`),
  KEY `Customers_and_Services_FK_0_0` (`Customer_ID`),
  KEY `Customers_and_Services_FK_1_0` (`Service_ID`),
  CONSTRAINT `Customers_and_Services_FK_0_0` FOREIGN KEY (`Customer_ID`) REFERENCES `Customers` (`Customer_ID`),
  CONSTRAINT `Customers_and_Services_FK_1_0` FOREIGN KEY (`Service_ID`) REFERENCES `Services` (`Service_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=984 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `Analytical_Layer`
--


/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Analytical_Layer` (
  `Analytical_ID` int NOT NULL AUTO_INCREMENT,
  `Customers_and_Services_ID` int NOT NULL,
  `Pattern_Recognition` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Analytical_Layer_Type_Code` char(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Analytical_ID`),
  KEY `Analytical_Layer_FK_0_0` (`Customers_and_Services_ID`),
  CONSTRAINT `Analytical_Layer_FK_0_0` FOREIGN KEY (`Customers_and_Services_ID`) REFERENCES `Customers_And_Services` (`Customers_and_Services_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;





--
-- Table structure for table `Customer_Interactions`
--


/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer_Interactions` (
  `Customer_Interaction_ID` int NOT NULL AUTO_INCREMENT,
  `Channel_ID` int DEFAULT NULL,
  `Customer_ID` int DEFAULT NULL,
  `Service_ID` int DEFAULT NULL,
  `Status_Code` char(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Services_and_Channels_Details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Customer_Interaction_ID`),
  KEY `Customer_Interactions_FK_0_0` (`Customer_ID`),
  KEY `Customer_Interactions_FK_1_0` (`Channel_ID`),
  KEY `Customer_Interactions_FK_2_0` (`Service_ID`),
  CONSTRAINT `Customer_Interactions_FK_0_0` FOREIGN KEY (`Customer_ID`) REFERENCES `Customers` (`Customer_ID`),
  CONSTRAINT `Customer_Interactions_FK_1_0` FOREIGN KEY (`Channel_ID`) REFERENCES `Channels` (`Channel_ID`),
  CONSTRAINT `Customer_Interactions_FK_2_0` FOREIGN KEY (`Service_ID`) REFERENCES `Services` (`Service_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=872 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `Integration_Platform`
--


/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Integration_Platform` (
  `Integration_Platform_ID` int NOT NULL AUTO_INCREMENT,
  `Customer_Interaction_ID` int NOT NULL,
  `Integration_Platform_Details` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Integration_Platform_ID`),
  KEY `Integration_Platform_FK_0_0` (`Customer_Interaction_ID`),
  CONSTRAINT `Integration_Platform_FK_0_0` FOREIGN KEY (`Customer_Interaction_ID`) REFERENCES `Customer_Interactions` (`Customer_Interaction_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=834 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


-- Dump completed on 2025-12-10  9:42:57
