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
-- Dumping data for table `Agencies`
--

LOCK TABLES `Agencies` WRITE;
/*!40000 ALTER TABLE `Agencies` DISABLE KEYS */;
INSERT INTO `Agencies` VALUES (1,'Heller-Muller'),(2,'Bergstrom, Koss and Ebert'),(3,'Douglas-Langworth'),(4,'Fadel Group'),(5,'White, Corwin and Rath'),(6,'Beatty-Sipes'),(7,'West, Grady and Durgan'),(8,'Hickle-Durgan'),(9,'Grant, Jaskolski and Brekke'),(10,'Muller, Klein and Kunde'),(11,'Bins-Strosin'),(12,'Emard-Fisher'),(13,'Upton, Hayes and Schumm'),(14,'Renner LLC'),(15,'Cartwright, Ullrich and Gulgowski');
/*!40000 ALTER TABLE `Agencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Clients`
--

LOCK TABLES `Clients` WRITE;
/*!40000 ALTER TABLE `Clients` DISABLE KEYS */;
INSERT INTO `Clients` VALUES (1,8,'Mutual','Alta'),(2,5,'Bad','Mac'),(3,3,'Bad','Johnpaul'),(4,5,'Bad','Taurean'),(5,14,'Bad','Lucie'),(6,8,'Mutual','Rosa'),(7,9,'Mutual','Kirsten'),(8,1,'Mutual','Vincent'),(9,9,'Mutual','Heber'),(10,9,'Mutual','Callie'),(11,14,'Bad','Vaughn'),(12,7,'Mutual','Rae'),(13,9,'Mutual','Eloise'),(14,11,'Bad','Philip'),(15,1,'Bad','Maximo');
/*!40000 ALTER TABLE `Clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Invoices`
--

LOCK TABLES `Invoices` WRITE;
/*!40000 ALTER TABLE `Invoices` DISABLE KEYS */;
INSERT INTO `Invoices` VALUES (1,5,'Working','excellent'),(2,9,'Starting','good'),(3,15,'Starting','excellent'),(4,8,'Starting','ok'),(5,7,'Finish','excellent'),(6,8,'Working','excellent'),(7,7,'Finish','excellent'),(8,14,'Finish','excellent'),(9,12,'Starting','good'),(10,2,'Finish','excellent'),(11,11,'Working','excellent'),(12,9,'Starting','good'),(13,4,'Starting','excellent'),(14,14,'Working','excellent'),(15,14,'Working','excellent');
/*!40000 ALTER TABLE `Invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Meetings`
--

LOCK TABLES `Meetings` WRITE;
/*!40000 ALTER TABLE `Meetings` DISABLE KEYS */;
INSERT INTO `Meetings` VALUES (1,15,'Report','Team','0','2018-03-06 05:07:33','2018-03-21 09:26:41','get proposal done','0'),(2,3,'Summary','Group','0','2018-03-16 02:24:10','2018-03-21 17:57:59','vote for solutions','0'),(3,4,'Summary','Team','1','2018-03-06 21:02:06','2018-03-01 05:10:01','get proposal done','0'),(4,5,'Vote resul','Company','1','2018-03-10 05:03:46','2018-02-25 23:20:12','weekly report','0'),(5,14,'Summary','Company','1','2018-02-26 18:35:24','2018-03-12 18:48:55','weekly report','0'),(6,8,'Vote resul','Team','0','2018-03-20 08:56:47','2018-02-24 22:36:35','weekly report','absent staff'),(7,13,'Vote resul','Group','1','2018-03-01 22:20:09','2018-03-21 04:24:57','vote for solutions','0'),(8,8,'Report','Company','0','2018-03-16 06:38:16','2018-03-20 12:24:04','weekly report','0'),(9,4,'Report','Group','1','2018-03-18 15:35:54','2018-03-05 13:33:21','weekly report','0'),(10,7,'Summary','Team','0','2018-02-27 07:43:53','2018-02-27 02:40:21','vote for solutions','0'),(11,6,'Summary','Team','1','2018-03-21 19:18:39','2018-03-17 15:38:01','get proposal done','0'),(12,10,'Summary','Company','0','2018-03-17 09:56:49','2018-03-03 21:51:07','monthly report','absent staff'),(13,2,'Report','Team','1','2018-02-28 15:39:03','2018-03-17 13:09:45','weekly report','0'),(14,2,'Vote resul','Group','1','2018-03-02 19:04:27','2018-03-15 04:21:40','weekly report','0'),(15,2,'Vote resul','Company','0','2018-02-25 07:06:48','2018-02-25 09:39:29','weekly report','');
/*!40000 ALTER TABLE `Meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Payments`
--

LOCK TABLES `Payments` WRITE;
/*!40000 ALTER TABLE `Payments` DISABLE KEYS */;
INSERT INTO `Payments` VALUES (1,3,'MasterCard'),(2,5,'Visa'),(3,8,'Discover Card'),(4,11,'MasterCard'),(5,12,'Visa'),(6,9,'Visa'),(7,14,'Visa'),(8,2,'American Express'),(9,8,'Visa'),(10,8,'Visa'),(11,12,'Visa'),(12,11,'Visa'),(13,2,'MasterCard'),(14,6,'Visa'),(15,3,'Visa');
/*!40000 ALTER TABLE `Payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Staff`
--

LOCK TABLES `Staff` WRITE;
/*!40000 ALTER TABLE `Staff` DISABLE KEYS */;
INSERT INTO `Staff` VALUES (1,6,'Rubie'),(2,7,'Sheridan'),(3,10,'Annabell'),(4,2,'Kendra'),(5,7,'Amara'),(6,15,'Lolita'),(7,2,'Hailie'),(8,14,'Armando'),(9,10,'Elroy'),(10,8,'Parker'),(11,11,'Clarissa'),(12,5,'Joaquin'),(13,14,'Antone'),(14,14,'Marques'),(15,15,'Margaret');
/*!40000 ALTER TABLE `Staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Staff_In_Meetings`
--

LOCK TABLES `Staff_In_Meetings` WRITE;
/*!40000 ALTER TABLE `Staff_In_Meetings` DISABLE KEYS */;
INSERT INTO `Staff_In_Meetings` VALUES (6,7),(14,3),(4,5),(1,11),(2,10),(9,1),(8,3),(8,7),(8,6),(3,5),(11,2),(10,12),(2,8),(6,4),(14,3);
/*!40000 ALTER TABLE `Staff_In_Meetings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:10
