-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_vehicle_rent
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
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (1,'Griffiths',26,100),(2,'Silluzio',34,1200),(3,'Woodman',35,2000),(4,'Poulter',63,43500),(5,'Smith',45,5399);
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Discount`
--

LOCK TABLES `Discount` WRITE;
/*!40000 ALTER TABLE `Discount` DISABLE KEYS */;
INSERT INTO `Discount` VALUES (1,'no discount',0),(2,'20% off',1000),(3,'40% off for over $6000',2000),(4,'50% off',4000),(5,'70% off',400000);
/*!40000 ALTER TABLE `Discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Renting_History`
--



--
-- Dumping data for table `Vehicles`
--

LOCK TABLES `Vehicles` WRITE;
/*!40000 ALTER TABLE `Vehicles` DISABLE KEYS */;
INSERT INTO `Vehicles` VALUES (1,'Chevrolet Spark EV',2014,'Electric',119,128,109,0.87,500,'See (1)'),(2,'Honda Fit EV',2013,'hybrid',118,132,105,0.87,500,'See (1)'),(3,'Fiat 500e',2013,'Electric',116,122,108,0.87,500,'See (1)'),(4,'Nissan Leaf',2013,'Electric',115,129,102,0.87,500,'See (1)'),(5,'Mitsubishi i',2012,'hybrid',112,126,99,0.9,550,'best selling of the year'),(6,'Ford Focus Electric',2012,'electric',105,110,99,0.96,600,'See (2)'),(7,'BMW ActiveE',2011,'Electric',102,107,96,0.99,600,'See (1)');
/*!40000 ALTER TABLE `Vehicles` ENABLE KEYS */;
UNLOCK TABLES;
LOCK TABLES `Renting_History` WRITE;
/*!40000 ALTER TABLE `Renting_History` DISABLE KEYS */;
INSERT INTO `Renting_History` VALUES (1,1,1,2,1),(2,2,2,5,10),(3,3,3,7,24),(4,4,4,3,24),(5,1,1,5,36),(6,2,2,1,24),(7,5,4,4,72);
/*!40000 ALTER TABLE `Renting_History` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:35
