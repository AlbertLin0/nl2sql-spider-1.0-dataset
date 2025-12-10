-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_online_exams
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
-- Table structure for table `Exams`
--

DROP TABLE IF EXISTS `Exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Exams` (
  `Exam_ID` int NOT NULL AUTO_INCREMENT,
  `Subject_Code` char(15) COLLATE utf8mb4_general_ci NOT NULL,
  `Exam_Date` datetime DEFAULT NULL,
  `Exam_Name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Exam_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Questions`
--

DROP TABLE IF EXISTS `Questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Questions` (
  `Question_ID` int NOT NULL AUTO_INCREMENT,
  `Type_of_Question_Code` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `Question_Text` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Question_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=997 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Questions_In_Exams`
--

DROP TABLE IF EXISTS `Questions_In_Exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Questions_In_Exams` (
  `Exam_ID` int NOT NULL,
  `Question_ID` int NOT NULL,
  PRIMARY KEY (`Exam_ID`,`Question_ID`),
  KEY `Questions_in_Exams_FK_1_0` (`Question_ID`),
  CONSTRAINT `Questions_in_Exams_FK_0_0` FOREIGN KEY (`Exam_ID`) REFERENCES `Exams` (`Exam_ID`),
  CONSTRAINT `Questions_in_Exams_FK_1_0` FOREIGN KEY (`Question_ID`) REFERENCES `Questions` (`Question_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Student_Answers`
--

DROP TABLE IF EXISTS `Student_Answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Student_Answers` (
  `Student_Answer_ID` int NOT NULL AUTO_INCREMENT,
  `Exam_ID` int NOT NULL,
  `Question_ID` int NOT NULL,
  `Student_ID` int NOT NULL,
  `Date_of_Answer` datetime DEFAULT NULL,
  `Comments` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Satisfactory_YN` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Student_Answer_Text` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Student_Answer_ID`),
  KEY `Student_Answers_FK_0_0` (`Exam_ID`,`Question_ID`),
  KEY `Student_Answers_FK_1_0` (`Student_ID`),
  CONSTRAINT `Student_Answers_FK_0_0` FOREIGN KEY (`Exam_ID`, `Question_ID`) REFERENCES `Questions_In_Exams` (`Exam_ID`, `Question_ID`),
  CONSTRAINT `Student_Answers_FK_1_0` FOREIGN KEY (`Student_ID`) REFERENCES `Students` (`Student_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=779 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Student_Assessments`
--

DROP TABLE IF EXISTS `Student_Assessments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Student_Assessments` (
  `Student_Answer_ID` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Valid_Answer_ID` int NOT NULL,
  `Student_Answer_Text` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Satisfactory_YN` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Assessment` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Student_Answer_ID`),
  KEY `Student_Assessments_FK_0_0` (`Valid_Answer_ID`),
  CONSTRAINT `Student_Assessments_FK_0_0` FOREIGN KEY (`Valid_Answer_ID`) REFERENCES `Valid_Answers` (`Valid_Answer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Students`
--

DROP TABLE IF EXISTS `Students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Students` (
  `Student_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Middle_Name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Last_Name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Gender_MFU` char(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Student_Address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Email_Adress` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Cell_Mobile_Phone` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Home_Phone` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Valid_Answers`
--

DROP TABLE IF EXISTS `Valid_Answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Valid_Answers` (
  `Valid_Answer_ID` int NOT NULL AUTO_INCREMENT,
  `Question_ID` int NOT NULL,
  `Valid_Answer_Text` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Valid_Answer_ID`),
  KEY `Valid_Answers_FK_0_0` (`Question_ID`),
  CONSTRAINT `Valid_Answers_FK_0_0` FOREIGN KEY (`Question_ID`) REFERENCES `Questions` (`Question_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:42:59
