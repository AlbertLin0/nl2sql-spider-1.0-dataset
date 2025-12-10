-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_bike_racing
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
-- Dumping data for table `Bike`
--

LOCK TABLES `Bike` WRITE;
/*!40000 ALTER TABLE `Bike` DISABLE KEYS */;
INSERT INTO `Bike` VALUES (1,'BIANCHI SPECIALISSIMA',780,9999,'Carbon CC'),(2,'CANNONDALE SUPERSIX EVO HI-MOD DURA ACE',850,5330,'carbon fiber'),(3,'CANYON AEROAD CF SLX 8.0 DI2',880,3050,'Toray T700 and T800 carbon fiber'),(4,'GIANT TCR ADVANCED SL 0',750,9000,'Carbon CC'),(5,'Ibis',800,3599,'Carbon CC'),(6,'Ibis ||',760,5000,'carbon fiber');
/*!40000 ALTER TABLE `Bike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Cyclist`
--

LOCK TABLES `Cyclist` WRITE;
/*!40000 ALTER TABLE `Cyclist` DISABLE KEYS */;
INSERT INTO `Cyclist` VALUES (1,4,'Bradley Wiggins','Great Britain',4),(2,3,'Hayden Roulston','New Zealand',4),(3,1,'Steven Burke','Great Britain',4),(4,2,'Alexei Markov','Russia',4),(5,1,'Volodymyr Dyudya','Ukraine',4),(6,2,'Antonio Tauler','Spain',4),(7,4,'Alexander Serov','Russia',4),(8,3,'Taylor Phinney','United States',4);
/*!40000 ALTER TABLE `Cyclist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Cyclists_Own_Bikes`
--

LOCK TABLES `Cyclists_Own_Bikes` WRITE;
/*!40000 ALTER TABLE `Cyclists_Own_Bikes` DISABLE KEYS */;
INSERT INTO `Cyclists_Own_Bikes` VALUES (1,2,2011),(1,3,2015),(2,3,2017),(2,4,2018),(2,5,2013),(3,4,2017),(4,4,2017),(5,5,2016),(6,5,2016),(7,1,2013),(7,2,2012),(7,3,2014),(7,4,2011),(7,5,2010);
/*!40000 ALTER TABLE `Cyclists_Own_Bikes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:13
