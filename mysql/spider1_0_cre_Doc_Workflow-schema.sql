-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_cre_Doc_Workflow
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
-- Table structure for table `Authors`
--

DROP TABLE IF EXISTS `Authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Authors` (
  `author_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `other_details` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`author_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Business_Processes`
--

DROP TABLE IF EXISTS `Business_Processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Business_Processes` (
  `process_id` int NOT NULL AUTO_INCREMENT,
  `next_process_id` int DEFAULT NULL,
  `process_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `process_description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `other_details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Documents`
--

DROP TABLE IF EXISTS `Documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Documents` (
  `document_id` int NOT NULL AUTO_INCREMENT,
  `author_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `document_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `document_description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `other_details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`document_id`),
  KEY `Documents_FK_0_0` (`author_name`),
  CONSTRAINT `Documents_FK_0_0` FOREIGN KEY (`author_name`) REFERENCES `Authors` (`author_name`)
) ENGINE=InnoDB AUTO_INCREMENT=948678384 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Documents_Processes`
--

DROP TABLE IF EXISTS `Documents_Processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Documents_Processes` (
  `document_id` int NOT NULL,
  `process_id` int NOT NULL,
  `process_outcome_code` char(15) COLLATE utf8mb4_general_ci NOT NULL,
  `process_status_code` char(15) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`document_id`,`process_id`),
  KEY `Documents_Processes_FK_0_0` (`process_status_code`),
  KEY `Documents_Processes_FK_1_0` (`process_outcome_code`),
  KEY `Documents_Processes_FK_2_0` (`process_id`),
  CONSTRAINT `Documents_Processes_FK_0_0` FOREIGN KEY (`process_status_code`) REFERENCES `Process_Status` (`process_status_code`),
  CONSTRAINT `Documents_Processes_FK_1_0` FOREIGN KEY (`process_outcome_code`) REFERENCES `Process_Outcomes` (`process_outcome_code`),
  CONSTRAINT `Documents_Processes_FK_2_0` FOREIGN KEY (`process_id`) REFERENCES `Business_Processes` (`process_id`),
  CONSTRAINT `Documents_Processes_FK_3_0` FOREIGN KEY (`document_id`) REFERENCES `Documents` (`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Process_Outcomes`
--

DROP TABLE IF EXISTS `Process_Outcomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Process_Outcomes` (
  `process_outcome_code` char(15) COLLATE utf8mb4_general_ci NOT NULL,
  `process_outcome_description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`process_outcome_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Process_Status`
--

DROP TABLE IF EXISTS `Process_Status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Process_Status` (
  `process_status_code` char(15) COLLATE utf8mb4_general_ci NOT NULL,
  `process_status_description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`process_status_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Ref_Staff_Roles`
--

DROP TABLE IF EXISTS `Ref_Staff_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ref_Staff_Roles` (
  `staff_role_code` char(15) COLLATE utf8mb4_general_ci NOT NULL,
  `staff_role_description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`staff_role_code`)
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
  `staff_details` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Staff_In_Processes`
--

DROP TABLE IF EXISTS `Staff_In_Processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Staff_In_Processes` (
  `document_id` int NOT NULL,
  `process_id` int NOT NULL,
  `staff_id` int NOT NULL,
  `staff_role_code` char(15) COLLATE utf8mb4_general_ci NOT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `other_details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`document_id`,`process_id`,`staff_id`),
  KEY `Staff_in_Processes_FK_0_0` (`staff_role_code`),
  KEY `Staff_in_Processes_FK_2_0` (`staff_id`),
  CONSTRAINT `Staff_in_Processes_FK_0_0` FOREIGN KEY (`staff_role_code`) REFERENCES `Ref_Staff_Roles` (`staff_role_code`),
  CONSTRAINT `Staff_in_Processes_FK_1_0` FOREIGN KEY (`document_id`, `process_id`) REFERENCES `Documents_Processes` (`document_id`, `process_id`),
  CONSTRAINT `Staff_in_Processes_FK_2_0` FOREIGN KEY (`staff_id`) REFERENCES `Staff` (`staff_id`)
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

-- Dump completed on 2025-12-10  9:42:52
