-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_car_road_race
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
-- Dumping data for table `Driver`
--

LOCK TABLES `Driver` WRITE;
/*!40000 ALTER TABLE `Driver` DISABLE KEYS */;
INSERT INTO `Driver` VALUES (1,'Ernst-Günther Burggaller','German Bugatti Team','Bugatti','Bugatti T35B','2.3 L8',18),(2,'Hermann zu Leiningen','German Bugatti Team','Bugatti','Bugatti T35C','2.0 L8',20),(3,'Heinrich-Joachim von Morgen','German Bugatti Team','Bugatti','Bugatti T35B','2.3 L8',23),(4,'Rudolf Caracciola','Private entry','Mercedes-Benz','Mercedes-Benz SSK L','7.1 L6',24),(5,'Earl Howe','Private entry','Bugatti','Bugatti T51','2.3 L8',26),(6,'Clifton Penn-Hughes','Private entry','Bugatti','Bugatti T35','2.0 L8',21),(7,'Henry Birkin','Private entry','Maserati','Maserati 26M','2.5 L8',28),(8,'Bernhard Ackerl','Private entry','Bugatti','Bugatti T37','1.5 L4',29),(9,'Juan Zanelli','Private entry','Bugatti','Bugatti T35B','2.3 L8',26),(10,'Guy Bouriat','Automobiles Ettore Bugatti','Bugatti','Bugatti T51','2.3 L8',28),(11,'Louis Chiron','Automobiles Ettore Bugatti','Bugatti','Bugatti T51','2.3 L8',35);
/*!40000 ALTER TABLE `Driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Race`
--

LOCK TABLES `Race` WRITE;
/*!40000 ALTER TABLE `Race` DISABLE KEYS */;
INSERT INTO `Race` VALUES (2,1,'Monterey Festival of Speed','James Hinchcliffe','Douglas Soares','James Hinchcliffe','Forsythe Pettit Racing','Report'),(3,2,'Sommet des Legends','Junior Strous','Junior Strous','Junior Strous','Condor Motorsports','Report'),(4,1,'Rexall Grand Prix of Edmonton - Race 1','James Hinchcliffe','David Garza Pérez','Jonathan Bomarito','Mathiasen Motorsports','Report'),(5,3,'Rexall Grand Prix of Edmonton - Race 2','Carl Skerlong','Carl Skerlong','Jonathan Summerton','Newman Wachs Racing','Report'),(6,4,'Road Race Showcase/Road America - Race 1','Dane Cameron','Tõnis Kasemets','Jonathan Bomarito','Mathiasen Motorsports','Report'),(7,9,'Road Race Showcase/Road America - Race 2','Jonathan Bomarito','Dane Cameron','Jonathan Summerton','Newman Wachs Racing','Report'),(8,10,'Grand Prix de Trois-Rivières','Jonathan Bomarito','Jonathan Summerton','Jonathan Bomarito','Mathiasen Motorsports','Report'),(9,1,'Mazda Formula Zoom Zoom','Carl Skerlong','Carl Skerlong','Carl Skerlong','Pacific Coast Motorsports','Report'),(10,2,'SunRichGourmet.com 1000','Markus Niemelä','Carl Skerlong','Markus Niemelä','Brooks Associates Racing','Report');
/*!40000 ALTER TABLE `Race` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:17
