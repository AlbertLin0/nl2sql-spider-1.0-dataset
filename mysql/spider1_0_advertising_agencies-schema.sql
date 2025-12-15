-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_advertising_agencies
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
-- Table structure for table `Agencies`
--
DROP TABLE IF EXISTS `Staff_In_Meetings`;
DROP TABLE IF EXISTS `Payments`;
DROP TABLE IF EXISTS `Meetings`;
DROP TABLE IF EXISTS `Invoices`;
DROP TABLE IF EXISTS `Clients`;
DROP TABLE IF EXISTS `Agencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Agencies` (
  `agency_id` int NOT NULL AUTO_INCREMENT COMMENT '机构id',
  `agency_details` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`agency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Clients`
--


/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Clients` (
  `client_id` int NOT NULL AUTO_INCREMENT COMMENT '客户id',
  `agency_id` int NOT NULL,
  `sic_code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `client_details` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`client_id`),
  KEY `Clients_FK_0_0` (`agency_id`),
  CONSTRAINT `Clients_FK_0_0` FOREIGN KEY (`agency_id`) REFERENCES `Agencies` (`agency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Invoices`
--


/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Invoices` (
  `invoice_id` int NOT NULL AUTO_INCREMENT COMMENT '发票id',
  `client_id` int NOT NULL,
  `invoice_status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `invoice_details` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`invoice_id`),
  KEY `Invoices_FK_0_0` (`client_id`),
  CONSTRAINT `Invoices_FK_0_0` FOREIGN KEY (`client_id`) REFERENCES `Clients` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Meetings`
--


/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Meetings` (
  `meeting_id` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `meeting_outcome` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `meeting_type` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `billable_yn` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `start_date_time` datetime DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `purpose_of_meeting` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `other_details` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`meeting_id`),
  KEY `Meetings_FK_0_0` (`client_id`),
  CONSTRAINT `Meetings_FK_0_0` FOREIGN KEY (`client_id`) REFERENCES `Clients` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Payments`
--


/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Payments` (
  `payment_id` int NOT NULL,
  `invoice_id` int NOT NULL,
  `payment_details` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  KEY `Payments_FK_0_0` (`invoice_id`),
  CONSTRAINT `Payments_FK_0_0` FOREIGN KEY (`invoice_id`) REFERENCES `Invoices` (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Staff`
--

DROP TABLE IF EXISTS `Staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Staff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `agency_id` int NOT NULL,
  `staff_details` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Staff_In_Meetings`
--

DROP TABLE IF EXISTS `Staff_In_Meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Staff_In_Meetings` (
  `meeting_id` int NOT NULL,
  `staff_id` int NOT NULL,
  KEY `Staff_in_Meetings_FK_0_0` (`staff_id`),
  KEY `Staff_in_Meetings_FK_1_0` (`meeting_id`),
  CONSTRAINT `Staff_in_Meetings_FK_0_0` FOREIGN KEY (`staff_id`) REFERENCES `Staff` (`staff_id`),
  CONSTRAINT `Staff_in_Meetings_FK_1_0` FOREIGN KEY (`meeting_id`) REFERENCES `Meetings` (`meeting_id`)
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

-- Dump completed on 2025-12-10  9:42:45
