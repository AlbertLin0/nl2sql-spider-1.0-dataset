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
-- Dumping data for table `Exams`
--

LOCK TABLES `Exams` WRITE;
/*!40000 ALTER TABLE `Exams` DISABLE KEYS */;
INSERT INTO `Exams` VALUES (1,'Art History','2016-01-28 02:03:40','2016 Spring AH'),(2,'Art History','2017-11-17 09:21:31','2017 Fall AH'),(3,'English','2016-12-19 02:40:33','2016 Winter ENG'),(4,'Database','2016-06-17 07:20:06','2016 Summer DB'),(5,'Database','2017-02-26 11:19:52','2017 Spring DB'),(6,'Art History','2016-08-10 21:39:15','2016 Summer AH'),(7,'Database','2017-08-25 07:48:19','2017 Summer DB'),(8,'Database','2015-08-21 22:15:06','2015 Summer DB'),(9,'Data Structure','2017-08-04 05:43:39','2017 Summer DS');
/*!40000 ALTER TABLE `Exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Questions`
--

LOCK TABLES `Questions` WRITE;
/*!40000 ALTER TABLE `Questions` DISABLE KEYS */;
INSERT INTO `Questions` VALUES (285,'Single Choice','When is middle age period'),(321,'Multiple Choice','Who are from Renaissance age'),(585,'Multiple Choice','Which are the works from Picasso'),(603,'Multiple Choice','Which are the works from Van Gogh'),(613,'Multiple Choice','Which are answers for the blanks in the passage'),(655,'Multiple Choice','Which are answers for the blanks in the passage'),(682,'Multiple Choice','Which are answers for the blanks in the passage?'),(710,'Free Text','Is it true that queue is FIFO'),(721,'Multiple Choice','Choose which structures are linear'),(839,'Single Choice','Choose the definition of a foreign key'),(856,'Single Choice','Choose the definition of SQL'),(863,'Free Text','What is a join'),(948,'Multiple Choice','Choose the definition of a primary key'),(996,'Multiple Choice','What is a table');
/*!40000 ALTER TABLE `Questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Questions_In_Exams`
--

LOCK TABLES `Questions_In_Exams` WRITE;
/*!40000 ALTER TABLE `Questions_In_Exams` DISABLE KEYS */;
INSERT INTO `Questions_In_Exams` VALUES (1,285),(1,321),(2,585),(2,603),(3,613),(3,655),(3,682),(9,710),(9,721),(8,839),(8,856),(7,863),(4,948),(5,996);
/*!40000 ALTER TABLE `Questions_In_Exams` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `Valid_Answers` WRITE;
/*!40000 ALTER TABLE `Valid_Answers` DISABLE KEYS */;
INSERT INTO `Valid_Answers` VALUES (1,321,'ABC'),(2,721,'ABC'),(3,996,'C'),(4,839,'C'),(5,285,'C'),(6,613,'ABC'),(7,603,'ABC'),(8,721,'ABC'),(9,285,'C'),(10,655,'ABC');
/*!40000 ALTER TABLE `Valid_Answers` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Dumping data for table `Student_Answers`
--
LOCK TABLES `Student_Assessments` WRITE;
/*!40000 ALTER TABLE `Student_Assessments` DISABLE KEYS */;
INSERT INTO `Student_Assessments` VALUES ('162',3,'B','0','Very Good'),('172',4,'B','0','Excellent'),('2',3,'A','1','Very Good'),('307',2,'True','0','Very Good'),('340',3,'False','1','OK'),('421',1,'B','1','Excellent'),('438',2,'True','0','Excellent'),('518',3,'B','0','OK'),('536',4,'A','1','Excellent'),('540',5,'True','1','OK'),('565',6,'True','1','Excellent'),('9',7,'A','0','OK'),('956',10,'A','1','Excellent'),('961',10,'False','0','OK'),('980',10,'A','1','Excellent');
/*!40000 ALTER TABLE `Student_Assessments` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `Students` WRITE;
/*!40000 ALTER TABLE `Students` DISABLE KEYS */;
INSERT INTO `Students` VALUES (5,'Wilbert','Mia','Conroy','F','2908 Breana Streets Suite 638','rjast@example.com','620.962.4384x340','017-084-5752x96504'),(6,'Abdul','Era','Renner','M','009 Vandervort Ferry','green.jesus@example.net','03437137203','(054)515-8842x4046'),(11,'Ari','Jacinthe','Kessler','M','053 Candido Port Suite 568','oschamberger@example.net','207-458-7971','220.735.2352x52387'),(15,'Cassidy','Karson','Gerhold','U','25250 Alexander Spring Apt. 106','alvera52@example.com','1-077-467-7564','715.670.8396x276'),(17,'Alfreda','Queen','Schuster','M','1110 Kaylee Greens Apt. 491','bogan.barton@example.net','038-482-3730x66922','1-400-038-3818x39652'),(22,'Betsy','Larue','Orn','M','71938 Dickinson Summit Suite 683','jana90@example.com','1-922-743-4349','377-581-9036'),(24,'Yadira','Matteo','Rohan','U','3679 Huels Ranch','gusikowski.retta@example.net','084-076-8037x1728','743.322.8573x380'),(35,'Deven','Gino','Deckow','U','49860 Cesar Pine','ezekiel53@example.com','+08(7)2834974200','+23(7)3611361591'),(37,'Haylie','Rupert','Wiegand','U','988 Hettinger Pine Apt. 005','kschroeder@example.org','1-185-860-6666x236','048.938.2113x0806'),(38,'Jeromy','Rebekah','Torp','F','59773 Misty Loop','dhermiston@example.net','1-197-438-2369','015.452.3914'),(40,'Cloyd','Rolando','Kertzmann','F','437 Ambrose Flats Apt. 321','albin40@example.org','(304)107-3579','1-838-315-5041x9245'),(41,'Adam','Caden','Roob','M','1551 Petra Terrace','kane.o\'conner@example.net','1-309-808-1855','(868)144-5163'),(45,'Flavio','Arnaldo','Conroy','F','06494 Felipa Ranch','raleigh28@example.net','(846)394-0048x51720','983-853-1844x3209'),(52,'Jaylen','Nicola','Cummerata','U','713 Loyal Road','sfahey@example.org','(275)623-3304','383-313-3627x634'),(93,'Lindsey','Therese','Lehner','U','6279 Vicky Ridges','hahn.elza@example.com','(651)517-2936x38712','(467)314-3743');
/*!40000 ALTER TABLE `Students` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `Student_Answers` WRITE;
/*!40000 ALTER TABLE `Student_Answers` DISABLE KEYS */;
INSERT INTO `Student_Answers` VALUES (127,1,321,52,'2017-08-13 06:03:03','Normal','0','D'),(149,1,285,22,'2017-07-27 06:34:17','Normal','1','ABC'),(169,2,585,40,'2017-07-30 12:07:59','Normal','1','ABC'),(284,2,603,35,'2018-02-21 09:14:48','Normal','1','ABC'),(374,3,655,6,'2017-12-04 10:10:48','Normal','1','ABC'),(397,3,613,52,'2017-12-21 16:40:17','Normal','0','BCD'),(455,3,682,15,'2017-05-13 07:29:20','Normal','1','ABC'),(460,9,721,93,'2018-01-10 21:22:57','Normal','0','AC'),(544,8,839,6,'2017-11-04 00:23:29','Normal','1','C'),(564,8,856,22,'2017-07-27 18:22:08','Normal','1','C'),(577,5,996,38,'2017-10-11 18:29:01','Absent','0','Student absent'),(701,7,863,37,'2017-05-20 03:44:40','Absent','0','Student absent'),(778,4,948,38,'2017-07-08 17:36:15','Absent','1','ABC');
/*!40000 ALTER TABLE `Student_Answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Student_Assessments`
--



--
-- Dumping data for table `Students`
--



--
-- Dumping data for table `Valid_Answers`
--


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:28
