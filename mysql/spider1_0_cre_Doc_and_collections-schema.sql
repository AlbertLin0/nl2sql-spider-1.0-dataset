-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_cre_Doc_and_collections
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
-- Table structure for table `Collection_Subset_Members`
--
DROP TABLE IF EXISTS `Documents_In_Collections`;
DROP TABLE IF EXISTS `Document_Subset_Members`;
DROP TABLE IF EXISTS `Collection_Subset_Members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Collection_Subsets`
--

DROP TABLE IF EXISTS `Collection_Subsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Collection_Subsets` (
  `Collection_Subset_ID` int NOT NULL AUTO_INCREMENT,
  `Collection_Subset_Name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Collecrtion_Subset_Details` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Collection_Subset_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=998 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Collections`
--

DROP TABLE IF EXISTS `Collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Collections` (
  `Collection_ID` int NOT NULL AUTO_INCREMENT,
  `Parent_Collection_ID` int DEFAULT NULL,
  `Collection_Name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Collection_Description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Collection_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Document_Objects`
--

DROP TABLE IF EXISTS `Document_Objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Document_Objects` (
  `Document_Object_ID` int NOT NULL AUTO_INCREMENT,
  `Parent_Document_Object_ID` int DEFAULT NULL,
  `Owner` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Other_Details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Document_Object_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Document_Subset_Members`
--


/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Document_Subsets`
--

DROP TABLE IF EXISTS `Document_Subsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Document_Subsets` (
  `Document_Subset_ID` int NOT NULL AUTO_INCREMENT,
  `Document_Subset_Name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Document_Subset_Details` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Document_Subset_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=654 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
CREATE TABLE `Collection_Subset_Members` (
  `Collection_ID` int NOT NULL,
  `Related_Collection_ID` int NOT NULL,
  `Collection_Subset_ID` int NOT NULL,
  PRIMARY KEY (`Collection_ID`,`Related_Collection_ID`),
  KEY `Collection_Subset_Members_FK_0_0` (`Collection_Subset_ID`),
  KEY `Collection_Subset_Members_FK_1_0` (`Related_Collection_ID`),
  CONSTRAINT `Collection_Subset_Members_FK_0_0` FOREIGN KEY (`Collection_Subset_ID`) REFERENCES `Collection_Subsets` (`Collection_Subset_ID`),
  CONSTRAINT `Collection_Subset_Members_FK_1_0` FOREIGN KEY (`Related_Collection_ID`) REFERENCES `Collections` (`Collection_ID`),
  CONSTRAINT `Collection_Subset_Members_FK_2_0` FOREIGN KEY (`Collection_ID`) REFERENCES `Collections` (`Collection_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Table structure for table `Documents_In_Collections`
--
CREATE TABLE `Document_Subset_Members` (
  `Document_Object_ID` int NOT NULL,
  `Related_Document_Object_ID` int NOT NULL,
  `Document_Subset_ID` int NOT NULL,
  PRIMARY KEY (`Document_Object_ID`,`Related_Document_Object_ID`),
  KEY `Document_Subset_Members_FK_0_0` (`Document_Subset_ID`),
  KEY `Document_Subset_Members_FK_1_0` (`Related_Document_Object_ID`),
  CONSTRAINT `Document_Subset_Members_FK_0_0` FOREIGN KEY (`Document_Subset_ID`) REFERENCES `Document_Subsets` (`Document_Subset_ID`),
  CONSTRAINT `Document_Subset_Members_FK_1_0` FOREIGN KEY (`Related_Document_Object_ID`) REFERENCES `Document_Objects` (`Document_Object_ID`),
  CONSTRAINT `Document_Subset_Members_FK_2_0` FOREIGN KEY (`Document_Object_ID`) REFERENCES `Document_Objects` (`Document_Object_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Documents_In_Collections` (
  `Document_Object_ID` int NOT NULL,
  `Collection_ID` int NOT NULL,
  PRIMARY KEY (`Document_Object_ID`,`Collection_ID`),
  KEY `Documents_in_Collections_FK_0_0` (`Collection_ID`),
  CONSTRAINT `Documents_in_Collections_FK_0_0` FOREIGN KEY (`Collection_ID`) REFERENCES `Collections` (`Collection_ID`),
  CONSTRAINT `Documents_in_Collections_FK_1_0` FOREIGN KEY (`Document_Object_ID`) REFERENCES `Document_Objects` (`Document_Object_ID`)
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

-- Dump completed on 2025-12-10  9:42:53
