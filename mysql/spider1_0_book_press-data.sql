-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_book_press
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
-- Dumping data for table `Author`
--

LOCK TABLES `Author` WRITE;
/*!40000 ALTER TABLE `Author` DISABLE KEYS */;
INSERT INTO `Author` VALUES (1,'Derrick Kosinski',45,'Male'),(2,'Evelyn Smith',32,'Female'),(3,'Johnny Devenanzio',54,'Male'),(4,'Kenny Santucci',21,'Male'),(5,'Jenn Grijalva',19,'Female'),(6,'Paula Meronek',23,'Female'),(7,'Robin Hibbard',52,'Female');
/*!40000 ALTER TABLE `Author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Book`
--

LOCK TABLES `Book` WRITE;
/*!40000 ALTER TABLE `Book` DISABLE KEYS */;
INSERT INTO `Book` VALUES (1,'Book Revue','LT',1,1,'1234','2016-01-05'),(2,'Baseball Bugs','LT',2,2,'1214','2016-02-02'),(3,'Holiday for Shoestrings','MM',3,3,'714','2016-02-23'),(4,'Quentin Quail','MM',4,4,'615','2016-03-02'),(5,'Baby Bottleneck','LT',5,5,'1256','2016-03-16'),(6,'Hare Remover','MM',5,4,'1014','2016-03-23'),(7,'Daffy Doodles','MM',1,9,'1307','2016-04-06'),(8,'Hollywood Canine Canteen','MM',1,2,'1114','2016-04-20'),(9,'Hush My Mouse','LT',2,3,'1258','2016-05-04'),(10,'Hair-Raising Hare','MM',5,2,'115','2016-05-25');
/*!40000 ALTER TABLE `Book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Press`
--

LOCK TABLES `Press` WRITE;
/*!40000 ALTER TABLE `Press` DISABLE KEYS */;
INSERT INTO `Press` VALUES (1,'Accor',0.65,6.02),(2,'Air Liquide',4.08,29.49),(3,'Alstom',0.96,9.4),(4,'ArcelorMittal',1.69,15.4),(5,'STMicroelectronics',0.54,5.25),(6,'Technip',1.18,9.24),(7,'Total',11.96,86.94),(8,'Unibail-Rodamco',2.31,16.8),(9,'Vallourec',0.58,4.56),(10,'Veolia Environnement',0.44,5.01);
/*!40000 ALTER TABLE `Press` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:15
