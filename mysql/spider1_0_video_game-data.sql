-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_video_game
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
-- Dumping data for table `Game`
--
LOCK TABLES `Platform` WRITE;
/*!40000 ALTER TABLE `Platform` DISABLE KEYS */;
INSERT INTO `Platform` VALUES (1,'Game Boy','Asia',2),(2,'SNES','USA',3),(3,'PlayStation','Europe',1),(4,'Nintendo 64','Brazil',4);
/*!40000 ALTER TABLE `Platform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Player`
--

LOCK TABLES `Player` WRITE;
/*!40000 ALTER TABLE `Player` DISABLE KEYS */;
INSERT INTO `Player` VALUES (1976,1,'Lee Roy Selmon','Defensive end','Oklahoma'),(1977,1,'Ricky Bell *','Running back','USC'),(1978,17,'Doug Williams','Quarterback','Grambling'),(1980,22,'Ray Snell','Guard','Wisconsin'),(1981,7,'Hugh Green','Linebacker','Pittsburgh'),(1982,18,'Sean Farrell','Guard','Penn State'),(1985,8,'Ron Holmes','Defensive end','Washington'),(1986,1,'Bo Jackson *','Running back','Auburn'),(1987,1,'Vinny Testaverde *','Quarterback','Miami'),(1988,4,'Paul Gruber','Offensive tackle','Wisconsin'),(1989,6,'Broderick Thomas','Linebacker','Nebraska'),(1990,4,'Keith McCants','Linebacker','Alabama'),(1991,7,'Charles McRae','Offensive tackle','Tennessee'),(1993,6,'Eric Curry','Defensive end','Alabama'),(1994,6,'Trent Dilfer','Quarterback','Fresno State'),(1995,12,'Warren Sapp †','Defensive tackle','Miami'),(1996,12,'Regan Upshaw','Defensive end','California'),(1997,12,'Warrick Dunn','Running back','Florida State'),(2004,15,'Michael Clayton','Wide receiver','LSU'),(2005,5,'Carnell Williams','Running Back','Auburn'),(2006,23,'Davin Joseph','Guard','Oklahoma');
/*!40000 ALTER TABLE `Player` ENABLE KEYS */;
UNLOCK TABLES;
LOCK TABLES `Game` WRITE;
/*!40000 ALTER TABLE `Game` DISABLE KEYS */;
INSERT INTO `Game` VALUES (1,'Pokémon Red / Green / Blue Version','27 February 1996','Pokémon','Nintendo / GameFreak',1,31),(2,'Pokémon Gold / Silver Version','21 November 1999','Pokémon','Nintendo/GameFreak',1,23),(3,'Super Mario World','21 November 1990','Super Mario Bros.','Nintendo',2,21),(4,'Pokémon Yellow: Special Pikachu Edition','12 September 1998','Pokémon','Nintendo/GameFreak',1,15),(5,'Super Mario 64','23 June 1996','Super Mario Bros.','Nintendo',3,12),(6,'Super Mario Land 2: 6 Golden Coins','21 October 1992','Super Mario Bros.','Nintendo',1,11),(7,'Gran Turismo','23 December 1997','Gran Turismo','Polyphony Digital',4,11),(8,'Super Mario All-Stars','14 July 1993','Super Mario Bros.','Nintendo',2,11),(9,'Mario Kart 64','14 December 1996','Mario Kart','Nintendo',3,10);
/*!40000 ALTER TABLE `Game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Game_Player`
--

LOCK TABLES `Game_Player` WRITE;
/*!40000 ALTER TABLE `Game_Player` DISABLE KEYS */;
INSERT INTO `Game_Player` VALUES (1976,1,0),(1976,2,0),(1981,3,0),(1986,1,0),(1996,3,0),(1997,2,0),(1997,3,0),(1997,4,0),(2005,4,0),(2006,3,0);
/*!40000 ALTER TABLE `Game_Player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Platform`
--


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:36
