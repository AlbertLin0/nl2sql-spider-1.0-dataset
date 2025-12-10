-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_tv_shows
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
-- Dumping data for table `City_Channel`
--

LOCK TABLES `City_Channel` WRITE;
/*!40000 ALTER TABLE `City_Channel` DISABLE KEYS */;
INSERT INTO `City_Channel` VALUES (1,'Phoenix','KNXV-TV',1985,'ABC'),(2,'Bakersfield, California','KERO-TV',2011,'ABC'),(3,'Bakersfield, California','KZKC-LP',2011,'Azteca América'),(4,'San Diego','KGTV',2011,'ABC'),(5,'San Diego','KZSD-LP',2011,'Azteca América'),(6,'Colorado Springs, Colorado','KZKS-LP',2011,'Azteca América'),(7,'Denver','KMGH-TV',2011,'ABC'),(8,'Denver','KZCO-LP',2011,'Azteca América'),(9,'Fort Collins, Colorado','KZFC-LP',2011,'Azteca América'),(10,'Tampa – St. Petersburg','WFTS-TV',1986,'ABC'),(11,'West Palm Beach','WPTV',1961,'NBC'),(12,'Indianapolis','WRTV',2011,'ABC'),(13,'Baltimore','WMAR-TV',1991,'ABC'),(14,'Detroit','WXYZ-TV',1986,'ABC');
/*!40000 ALTER TABLE `City_Channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `City_Channel_Radio`
--

LOCK TABLES `City_Channel_Radio` WRITE;
/*!40000 ALTER TABLE `City_Channel_Radio` DISABLE KEYS */;
INSERT INTO `City_Channel_Radio` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(4,6,0),(6,1,0),(7,5,0),(8,3,0),(10,1,0),(12,2,0);
/*!40000 ALTER TABLE `City_Channel_Radio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `City_Channel_Tv_Show`
--

LOCK TABLES `City_Channel_Tv_Show` WRITE;
/*!40000 ALTER TABLE `City_Channel_Tv_Show` DISABLE KEYS */;
INSERT INTO `City_Channel_Tv_Show` VALUES (1,2,0,0),(2,3,0,0),(5,1,0,0),(7,2,0,0),(11,4,0,0),(12,2,0,0),(13,1,0,0),(14,1,0,0);
/*!40000 ALTER TABLE `City_Channel_Tv_Show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Radio`
--

LOCK TABLES `Radio` WRITE;
/*!40000 ALTER TABLE `Radio` DISABLE KEYS */;
INSERT INTO `Radio` VALUES (1,'Cairn Hill','89.8','N/A','N/A','N/A','16'),(2,'Clermont Carn','87.8','97.0','102.7','95.2','40'),(3,'Kippure','89.1','91.3','93.5','98.7','40'),(4,'Maghera','88.8','91.0','93.2','98.4','160'),(5,'Mount Leinster','89.6','91.8','94.0','99.2','100'),(6,'Mullaghanish','90.0','92.2','94.4','99.6','160'),(7,'Three Rock','88.5','90.7','92.9','96.7','12.5');
/*!40000 ALTER TABLE `Radio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Tv_Show`
--

LOCK TABLES `Tv_Show` WRITE;
/*!40000 ALTER TABLE `Tv_Show` DISABLE KEYS */;
INSERT INTO `Tv_Show` VALUES (1,'Peace and Quiet','Wanted: Wade','Garfield Goes an Hawaii','September17,1988'),(2,'Box O\' Fun','Unidentified Flying Orson','School Daze','September24,1988'),(3,'Nighty Nightmare','Banana Nose','Ode to Odie','October1,1988'),(4,'Fraidy Cat','Shell Shocked Sheldon','Nothing to Sneeze At','October8,1988'),(5,'Garfield\'s Moving Experience','Wade: You\'re Afraid','Good Mouse-keeping','October15,1988'),(6,'Identity Crisis','The Bad Sport','Up a Tree','October22,1988'),(7,'Weighty Problem','The Worm Turns','Good Cat, Bad Cat','October29,1988'),(8,'Cabin Fever','Return of Power Pig','Fair Exchange','November5,1988'),(9,'The Binky Show','Keeping Cool','Don\'t Move','November12,1988'),(10,'Magic Mutt','Short Story','Monday Misery','November19,1988'),(11,'Best of Breed','National Tapioca Pudding Day','All About Odie','November26,1988'),(12,'Caped Avenger','Shy Fly Guy','Green Thumbs Down','December3,1988');
/*!40000 ALTER TABLE `Tv_Show` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:34
