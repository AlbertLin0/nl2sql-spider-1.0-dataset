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
-- Dumping data for table `Achievements`
--

LOCK TABLES `Achievements` WRITE;
/*!40000 ALTER TABLE `Achievements` DISABLE KEYS */;
INSERT INTO `Achievements` VALUES (153,'Athletic',777,'0000-00-00 00:00:00.000','Gold',NULL),(159,'Athletic',415,'0000-00-00 00:00:00.000','Gold',NULL),(262,'Scholastic',415,'0000-00-00 00:00:00.000','Gold',NULL),(264,'Scholastic',471,'0000-00-00 00:00:00.000','Silver',NULL),(316,'Scholastic',648,'0000-00-00 00:00:00.000','Gold',NULL),(340,'Scholastic',276,'0000-00-00 00:00:00.000','Bronze',NULL),(450,'Athletic',669,'0000-00-00 00:00:00.000','Bronze',NULL),(602,'Scholastic',824,'0000-00-00 00:00:00.000','Silver',NULL),(650,'Athletic',777,'0000-00-00 00:00:00.000','Silver',NULL),(672,'Athletic',984,'0000-00-00 00:00:00.000','Gold',NULL),(697,'Scholastic',762,'0000-00-00 00:00:00.000','Gold',NULL),(702,'Scholastic',325,'0000-00-00 00:00:00.000','Gold',NULL),(717,'Athletic',567,'0000-00-00 00:00:00.000','Silver',NULL),(722,'Athletic',777,'0000-00-00 00:00:00.000','Silver',NULL),(753,'Scholastic',325,'0000-00-00 00:00:00.000','Silver',NULL),(770,'Athletic',287,'0000-00-00 00:00:00.000','Silver',NULL),(877,'Athletic',471,'0000-00-00 00:00:00.000','Gold',NULL),(885,'Scholastic',811,'0000-00-00 00:00:00.000','Gold',NULL),(933,'Athletic',648,'0000-00-00 00:00:00.000','Gold',NULL),(964,'Scholastic',811,'0000-00-00 00:00:00.000','Gold',NULL);
/*!40000 ALTER TABLE `Achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Addresses`
--

LOCK TABLES `Addresses` WRITE;
/*!40000 ALTER TABLE `Addresses` DISABLE KEYS */;
INSERT INTO `Addresses` VALUES (1,'607 Nikita Cape Suite 449'),(4,'4474 Dina Park'),(5,'19571 Garrett Manor'),(34,'423 Rosenbaum Shores Apt. 812'),(47,'100 Hayes Point'),(51,'0773 Kaci Villages'),(66,'33376 Terry Mews Suite 922'),(72,'90147 Greenholt Springs Apt. 497'),(74,'1951 Beatty Oval'),(76,'41082 Calista Mountains'),(85,'4240 Enrico Grove'),(90,'7127 Ressie Plains'),(94,'222 Chase Union Apt. 747'),(97,'564 Aaliyah Trace'),(98,'033 Robel Courts Apt. 312');
/*!40000 ALTER TABLE `Addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Behaviour_Monitoring`
--

LOCK TABLES `Behaviour_Monitoring` WRITE;
/*!40000 ALTER TABLE `Behaviour_Monitoring` DISABLE KEYS */;
INSERT INTO `Behaviour_Monitoring` VALUES (142,435,'A'),(220,811,'A'),(248,567,'A'),(265,984,'B'),(376,648,'B'),(434,777,'B'),(448,567,'C'),(477,287,'C'),(572,287,'A'),(674,361,'C'),(701,669,'D'),(705,435,'A'),(834,984,'E'),(873,325,'A'),(994,648,'B');
/*!40000 ALTER TABLE `Behaviour_Monitoring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (114,435,253,'databases'),(195,471,274,'english'),(235,811,282,'writing'),(248,471,252,'statistics'),(294,762,234,'math 100'),(354,287,302,'math 300'),(387,325,316,'statistics 100'),(411,811,316,'databases 200'),(424,669,252,'computer science 100'),(429,669,195,'data structure'),(451,762,274,'programming'),(455,471,274,'art 300'),(493,824,252,'music 100'),(529,567,127,'computer science 300'),(552,984,234,'law 200'),(553,762,226,'art 100'),(579,276,282,'debate'),(600,361,195,'networks'),(613,435,212,'dancing'),(621,811,234,'acting');
/*!40000 ALTER TABLE `Classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Detention`
--

LOCK TABLES `Detention` WRITE;
/*!40000 ALTER TABLE `Detention` DISABLE KEYS */;
INSERT INTO `Detention` VALUES (133,'Lunch',361,'2012-03-18 09:49:33.000','2011-09-15 05:58:59.000',NULL,NULL),(141,'After Scho',811,'2012-06-07 15:01:05.000','2009-05-23 17:33:31.000',NULL,NULL),(211,'Break',762,'2011-04-24 17:23:32.000','2013-09-06 15:49:53.000',NULL,NULL),(242,'After Scho',648,'2014-01-16 00:49:33.000','2013-04-07 15:42:52.000',NULL,NULL),(384,'Illness',762,'2016-12-28 21:44:59.000','2013-04-20 13:13:40.000',NULL,NULL),(401,'Break',415,'2011-03-22 20:51:56.000','2013-10-06 03:49:35.000',NULL,NULL),(451,'After Scho',361,'2014-02-03 00:18:05.000','2012-05-09 00:54:20.000',NULL,NULL),(478,'Illness',762,'2010-03-14 06:33:25.000','2015-10-16 19:21:09.000',NULL,NULL),(492,'Break',471,'2018-03-16 04:10:29.000','2008-06-03 01:53:37.000',NULL,NULL),(545,'Illness',276,'2013-06-24 06:36:47.000','2014-05-18 21:10:48.000',NULL,NULL),(576,'After Scho',471,'2010-08-24 04:11:35.000','2015-12-13 06:27:13.000',NULL,NULL),(646,'Illness',984,'2017-08-12 03:26:18.000','2013-12-02 02:48:47.000',NULL,NULL),(796,'Illness',415,'2010-08-16 18:17:43.000','2013-10-18 09:56:25.000',NULL,NULL),(804,'After Scho',648,'2015-07-11 17:47:17.000','2014-10-14 11:25:12.000',NULL,NULL),(860,'Illness',435,'2009-07-29 16:16:12.000','2016-06-03 08:58:25.000',NULL,NULL),(868,'Illness',435,'2017-01-09 13:20:45.000','2016-06-03 07:14:46.000',NULL,NULL),(876,'After Scho',669,'2008-04-12 06:33:01.000','2009-10-12 19:06:35.000',NULL,NULL),(904,'Break',648,'2013-03-02 16:45:53.000','2010-11-06 02:41:01.000',NULL,NULL),(907,'After Scho',762,'2011-03-27 16:53:25.000','2015-01-29 21:12:58.000',NULL,NULL),(962,'After Scho',435,'2011-05-19 23:10:25.000','2015-12-14 01:07:11.000',NULL,NULL);
/*!40000 ALTER TABLE `Detention` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Ref_Achievement_Type`
--

LOCK TABLES `Ref_Achievement_Type` WRITE;
/*!40000 ALTER TABLE `Ref_Achievement_Type` DISABLE KEYS */;
INSERT INTO `Ref_Achievement_Type` VALUES ('Athletic','Athletic'),('Scholastic','Scholastic');
/*!40000 ALTER TABLE `Ref_Achievement_Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Ref_Address_Types`
--

LOCK TABLES `Ref_Address_Types` WRITE;
/*!40000 ALTER TABLE `Ref_Address_Types` DISABLE KEYS */;
INSERT INTO `Ref_Address_Types` VALUES ('CO','College'),('HM','Home');
/*!40000 ALTER TABLE `Ref_Address_Types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Ref_Detention_Type`
--

LOCK TABLES `Ref_Detention_Type` WRITE;
/*!40000 ALTER TABLE `Ref_Detention_Type` DISABLE KEYS */;
INSERT INTO `Ref_Detention_Type` VALUES ('After Scho','After School'),('Break','On break'),('Illness','Leave for illness'),('Lunch','During lunchtime');
/*!40000 ALTER TABLE `Ref_Detention_Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Ref_Event_Types`
--

LOCK TABLES `Ref_Event_Types` WRITE;
/*!40000 ALTER TABLE `Ref_Event_Types` DISABLE KEYS */;
INSERT INTO `Ref_Event_Types` VALUES ('Exam','Exam'),('Registrati','Registration');
/*!40000 ALTER TABLE `Ref_Event_Types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Student_Events`
--

LOCK TABLES `Student_Events` WRITE;
/*!40000 ALTER TABLE `Student_Events` DISABLE KEYS */;
INSERT INTO `Student_Events` VALUES (146,'Exam',287,'2008-08-15 22:16:17.000',''),(161,'Exam',777,'2014-07-15 18:18:15.000',''),(189,'Exam',361,'2013-04-14 04:14:10.000',''),(227,'Registrati',669,'2012-12-06 06:44:53.000','');
/*!40000 ALTER TABLE `Student_Events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Student_Loans`
--

LOCK TABLES `Student_Loans` WRITE;
/*!40000 ALTER TABLE `Student_Loans` DISABLE KEYS */;
INSERT INTO `Student_Loans` VALUES (165,777,'1980-01-06 00:00:00.000',2216.1500,NULL),(169,669,'1991-03-24 00:00:00.000',5223.1800,NULL),(188,777,'1983-08-01 00:00:00.000',3221.4900,NULL),(205,777,'1977-08-27 00:00:00.000',3358.8700,NULL),(267,435,'2018-01-17 00:00:00.000',5174.7600,NULL),(269,361,'1989-05-07 00:00:00.000',3803.6000,NULL),(287,984,'1989-04-23 00:00:00.000',1561.5700,NULL),(366,361,'1992-11-14 00:00:00.000',4190.3200,NULL),(408,762,'1994-02-24 00:00:00.000',4213.1300,NULL),(550,762,'2004-04-11 00:00:00.000',1644.6500,NULL),(574,325,'1975-07-21 00:00:00.000',1419.9700,NULL),(596,824,'1978-08-01 00:00:00.000',4454.3000,NULL),(652,984,'2001-07-31 00:00:00.000',4407.2700,NULL),(684,415,'1993-11-23 00:00:00.000',3768.4900,NULL),(718,325,'1981-05-31 00:00:00.000',2312.5300,NULL),(824,824,'2012-11-19 00:00:00.000',1785.4400,NULL),(837,984,'1994-02-10 00:00:00.000',2645.7600,NULL),(850,287,'1973-10-22 00:00:00.000',5006.9400,NULL),(889,567,'2014-01-06 00:00:00.000',3685.7400,NULL),(965,824,'1983-05-03 00:00:00.000',4528.5000,NULL);
/*!40000 ALTER TABLE `Student_Loans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Students`
--

LOCK TABLES `Students` WRITE;
/*!40000 ALTER TABLE `Students` DISABLE KEYS */;
INSERT INTO `Students` VALUES (276,'Camila','Suite 076'),(287,'Dino','Suite 970'),(325,'Pansy','Apt. 149'),(361,'Louvenia','Suite 218'),(415,'Leora','Apt. 748'),(435,'Vanessa','Suite 684'),(471,'Antone','Suite 303'),(567,'Arturo','Apt. 491'),(648,'Leonard','Suite 505'),(669,'Brenden','Apt. 305'),(762,'Edison','Apt. 763'),(777,'Houston','Apt. 040'),(811,'Felipa','Apt. 253'),(824,'Stephon','Suite 839'),(984,'Keshawn','Suite 889');
/*!40000 ALTER TABLE `Students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Students_Addresses`
--

LOCK TABLES `Students_Addresses` WRITE;
/*!40000 ALTER TABLE `Students_Addresses` DISABLE KEYS */;
INSERT INTO `Students_Addresses` VALUES (11,94,'HM',984,'2011-06-29 09:45:39.000','2018-03-22 07:50:48.000'),(15,76,'HM',415,'2011-10-04 09:58:41.000','2018-03-14 18:32:37.000'),(20,97,'CO',777,'2015-02-01 00:20:42.000','2018-03-04 09:58:38.000'),(23,72,'CO',361,'2015-03-14 15:55:46.000','2018-03-08 08:41:07.000'),(33,97,'HM',762,'2017-05-18 23:15:01.000','2018-03-20 08:06:53.000'),(35,98,'HM',762,'2009-04-27 17:42:38.000','2018-02-28 07:36:43.000'),(45,90,'HM',777,'2014-03-28 08:03:34.000','2018-03-11 19:21:54.000'),(56,94,'HM',777,'2009-08-24 22:57:30.000','2018-03-10 09:05:12.000'),(59,98,'HM',777,'2013-05-27 16:51:49.000','2018-02-27 11:03:50.000'),(67,0,'HM',361,'2011-04-29 03:20:26.000','2018-03-02 04:33:35.000'),(73,34,'CO',471,'2008-04-20 04:24:19.000','2018-03-18 22:15:17.000'),(80,85,'HM',471,'2009-02-23 20:33:05.000','2018-03-06 22:42:42.000'),(84,76,'HM',415,'2008-09-21 02:28:34.000','2018-03-03 17:46:12.000'),(91,66,'HM',276,'2012-12-17 20:22:50.000','2018-03-22 10:12:26.000'),(92,97,'HM',361,'2009-06-21 04:28:15.000','2018-03-04 23:55:53.000');
/*!40000 ALTER TABLE `Students_Addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Teachers`
--

LOCK TABLES `Teachers` WRITE;
/*!40000 ALTER TABLE `Teachers` DISABLE KEYS */;
INSERT INTO `Teachers` VALUES (115,'Jon'),(127,'Tyson'),(164,'Trinity'),(172,'Viva'),(195,'Osvaldo'),(212,'Isabel'),(226,'Adella'),(234,'Chasity'),(252,'Wilfredo'),(253,'Marielle'),(274,'Beverly'),(282,'Nicholaus'),(298,'Arianna'),(302,'Angie'),(316,'Hertha');
/*!40000 ALTER TABLE `Teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Transcripts`
--

LOCK TABLES `Transcripts` WRITE;
/*!40000 ALTER TABLE `Transcripts` DISABLE KEYS */;
INSERT INTO `Transcripts` VALUES (131,669,'1973-08-09 00:00:00.000','Good'),(138,824,'1973-11-05 00:00:00.000','Good'),(145,361,'2002-11-23 00:00:00.000','Good'),(167,276,'2017-03-17 00:00:00.000','Pass'),(177,811,'2010-12-14 00:00:00.000','Good'),(224,567,'1973-05-05 00:00:00.000','Pass'),(264,824,'2005-06-04 00:00:00.000','Good'),(276,415,'2002-02-26 00:00:00.000','Pass'),(283,287,'1979-04-05 00:00:00.000','Good'),(293,276,'2017-10-31 00:00:00.000','Pass'),(307,648,'1981-12-01 00:00:00.000','Good'),(309,777,'1979-02-07 00:00:00.000','Pass'),(325,361,'2015-07-24 00:00:00.000','Good'),(330,669,'2014-09-13 00:00:00.000','Pass'),(377,984,'1982-12-04 00:00:00.000','Pass');
/*!40000 ALTER TABLE `Transcripts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:22
