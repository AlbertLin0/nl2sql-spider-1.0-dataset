-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_cre_Students_Information_Systems
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
-- Table structure for table `Addresses`
--

DROP TABLE IF EXISTS `Addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Addresses` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `address_details` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `Teachers`
--

DROP TABLE IF EXISTS `Teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Teachers` (
  `teacher_id` int NOT NULL AUTO_INCREMENT,
  `teacher_details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `Students`
--

DROP TABLE IF EXISTS `Students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Students` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `bio_data` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `student_details` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=985 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Ref_Achievement_Type`
--

DROP TABLE IF EXISTS `Ref_Achievement_Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ref_Achievement_Type` (
  `achievement_type_code` char(15) COLLATE utf8mb4_general_ci NOT NULL,
  `achievement_type_description` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`achievement_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Behaviour_Monitoring`
--

DROP TABLE IF EXISTS `Behaviour_Monitoring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Behaviour_Monitoring` (
  `behaviour_monitoring_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `behaviour_monitoring_details` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`behaviour_monitoring_id`),
  KEY `Behaviour_Monitoring_FK_0_0` (`student_id`),
  CONSTRAINT `Behaviour_Monitoring_FK_0_0` FOREIGN KEY (`student_id`) REFERENCES `Students` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=995 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Table structure for table `Ref_Address_Types`
--

DROP TABLE IF EXISTS `Ref_Address_Types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ref_Address_Types` (
  `address_type_code` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `address_type_description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`address_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Ref_Detention_Type`
--

DROP TABLE IF EXISTS `Ref_Detention_Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ref_Detention_Type` (
  `detention_type_code` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `detention_type_description` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`detention_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;




--
-- Table structure for table `Ref_Event_Types`
--

DROP TABLE IF EXISTS `Ref_Event_Types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ref_Event_Types` (
  `event_type_code` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `event_type_description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`event_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Table structure for table `Achievements`
--

DROP TABLE IF EXISTS `Achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Achievements` (
  `achievement_id` int NOT NULL AUTO_INCREMENT,
  `achievement_type_code` char(15) COLLATE utf8mb4_general_ci NOT NULL,
  `student_id` int NOT NULL,
  `date_achievement` datetime(3) DEFAULT NULL,
  `achievement_details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `other_details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`achievement_id`),
  KEY `Achievements_FK_0_0` (`achievement_type_code`),
  KEY `Achievements_FK_1_0` (`student_id`),
  CONSTRAINT `Achievements_FK_0_0` FOREIGN KEY (`achievement_type_code`) REFERENCES `Ref_Achievement_Type` (`achievement_type_code`),
  CONSTRAINT `Achievements_FK_1_0` FOREIGN KEY (`student_id`) REFERENCES `Students` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=965 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Student_Events`
--

DROP TABLE IF EXISTS `Student_Events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Student_Events` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `event_type_code` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `student_id` int NOT NULL,
  `event_date` datetime(3) DEFAULT NULL,
  `other_details` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `Student_Events_FK_0_0` (`event_type_code`),
  KEY `Student_Events_FK_1_0` (`student_id`),
  CONSTRAINT `Student_Events_FK_0_0` FOREIGN KEY (`event_type_code`) REFERENCES `Ref_Event_Types` (`event_type_code`),
  CONSTRAINT `Student_Events_FK_1_0` FOREIGN KEY (`student_id`) REFERENCES `Students` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Student_Loans`
--

DROP TABLE IF EXISTS `Student_Loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Student_Loans` (
  `student_loan_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `date_of_loan` datetime(3) DEFAULT NULL,
  `amount_of_loan` decimal(15,4) DEFAULT NULL,
  `other_details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`student_loan_id`),
  KEY `Student_Loans_FK_0_0` (`student_id`),
  CONSTRAINT `Student_Loans_FK_0_0` FOREIGN KEY (`student_id`) REFERENCES `Students` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=966 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Classes`
--

DROP TABLE IF EXISTS `Classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Classes` (
  `class_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  `class_details` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`class_id`),
  KEY `Classes_FK_0_0` (`teacher_id`),
  KEY `Classes_FK_1_0` (`student_id`),
  CONSTRAINT `Classes_FK_0_0` FOREIGN KEY (`teacher_id`) REFERENCES `Teachers` (`teacher_id`),
  CONSTRAINT `Classes_FK_1_0` FOREIGN KEY (`student_id`) REFERENCES `Students` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=622 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Detention`
--

DROP TABLE IF EXISTS `Detention`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Detention` (
  `detention_id` int NOT NULL AUTO_INCREMENT,
  `detention_type_code` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `student_id` int NOT NULL,
  `datetime_detention_start` datetime(3) DEFAULT NULL,
  `datetime_detention_end` datetime(3) DEFAULT NULL,
  `detention_summary` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `other_details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`detention_id`),
  KEY `Detention_FK_0_0` (`detention_type_code`),
  KEY `Detention_FK_1_0` (`student_id`),
  CONSTRAINT `Detention_FK_0_0` FOREIGN KEY (`detention_type_code`) REFERENCES `Ref_Detention_Type` (`detention_type_code`),
  CONSTRAINT `Detention_FK_1_0` FOREIGN KEY (`student_id`) REFERENCES `Students` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=963 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Students_Addresses`
--

DROP TABLE IF EXISTS `Students_Addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Students_Addresses` (
  `student_address_id` int NOT NULL AUTO_INCREMENT,
  `address_id` int NOT NULL,
  `address_type_code` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `student_id` int NOT NULL,
  `date_from` datetime(3) DEFAULT NULL,
  `date_to` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`student_address_id`),
  KEY `Students_Addresses_FK_0_0` (`address_type_code`),
  KEY `Students_Addresses_FK_1_0` (`address_id`),
  KEY `Students_Addresses_FK_2_0` (`student_id`),
  CONSTRAINT `Students_Addresses_FK_0_0` FOREIGN KEY (`address_type_code`) REFERENCES `Ref_Address_Types` (`address_type_code`),
  CONSTRAINT `Students_Addresses_FK_1_0` FOREIGN KEY (`address_id`) REFERENCES `Addresses` (`address_id`),
  CONSTRAINT `Students_Addresses_FK_2_0` FOREIGN KEY (`student_id`) REFERENCES `Students` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `Transcripts`
--

DROP TABLE IF EXISTS `Transcripts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Transcripts` (
  `transcript_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `date_of_transcript` datetime(3) DEFAULT NULL,
  `transcript_details` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`transcript_id`),
  KEY `Transcripts_FK_0_0` (`student_id`),
  CONSTRAINT `Transcripts_FK_0_0` FOREIGN KEY (`student_id`) REFERENCES `Students` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=378 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:42:54
