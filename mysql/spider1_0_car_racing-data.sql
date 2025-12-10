-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_car_racing
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
-- Dumping data for table `Country`
--

LOCK TABLES `Country` WRITE;
/*!40000 ALTER TABLE `Country` DISABLE KEYS */;
INSERT INTO `Country` VALUES (1,'Japan','Tokyo','Japanese','Asia'),(2,'USA','Washington','English','North America'),(3,'China','Beijing','Chinese','Asia'),(4,'Ireland','Dublin','Irish English','Europe'),(5,'Isle of Man','Douglas','English Manx','Europe'),(6,'Britain','London','British English','Europe');
/*!40000 ALTER TABLE `Country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Driver`
--

LOCK TABLES `Driver` WRITE;
/*!40000 ALTER TABLE `Driver` DISABLE KEYS */;
INSERT INTO `Driver` VALUES (1,'Kasey Kahne',2,23,9,'Dodge','185',334,'$530,164'),(2,'Matt Kenseth',2,21,17,'Ford','175',334,'$362,491'),(3,'Tony Stewart',2,19,20,'Chevrolet','175',334,'$286,386'),(4,'Denny Hamlin *',2,25,11,'Chevrolet','165',334,'$208,500'),(5,'Kevin Li',3,23,29,'Chevrolet','160',334,'$204,511'),(6,'Jeff Chen',3,25,31,'Chevrolet','150',334,'$172,220'),(7,'Scott Riggs',1,22,10,'Dodge','146',334,'$133,850'),(8,'Mali Lu Jr. *',3,29,1,'Chevrolet','147',334,'$156,608'),(9,'Mark Martin',5,21,6,'Ford','143',334,'$151,850'),(10,'Bobby Labonte',4,25,43,'Dodge','134',334,'$164,211');
/*!40000 ALTER TABLE `Driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Team`
--

LOCK TABLES `Team` WRITE;
/*!40000 ALTER TABLE `Team` DISABLE KEYS */;
INSERT INTO `Team` VALUES (1,'Arrington Racing','Chrysler Imperial','Buddy Arrington','Arrington Racing','Buddy Arrington'),(2,'Benfield Racing','Buick Regal','Joe Ruttman','Levi Garrett','Ron Benfield'),(3,'Blue Max Racing','Pontiac Grand Prix','Tim Richmond','Old Milwaukee','Raymond Beadle'),(4,'Bobby Hawkins Racing','Chevrolet Monte Carlo','David Pearson','Chattanooga Chew','Bobby Hawkins'),(5,'Bud Moore Engineering','Ford Thunderbird','Dale Earnhardt','Wrangler Jeans','Bud Moore'),(6,'Cliff Stewart Racing','Pontiac Grand Prix','Geoff Bodine','Gatorade','Cliff Stewart'),(7,'DiGard Motorsports','Buick Regal','Bobby Allison','Miller American','Bill Gardner'),(8,'Donlavey Racing','Ford Thunderbird','Dick Brooks','Chameleon Sunglasses','Junie Donlavey'),(9,'Ellington Racing','Chevrolet Monte Carlo','Lake Speed','UNO / Bull Frog Knits','Hoss Ellington'),(10,'Hagan Racing','Chevrolet Monte Carlo','Terry Labonte','Budweiser','Billy Hagan'),(11,'Hamby Motorsports','Pontiac Grand Prix','Sterling Marlin (R)','Hesco Exhaust Systems','Roger Hamby'),(12,'Henderson Motorsports','Chevrolet Monte Carlo Buick Regal','Ronnie Hopkins (R)','Food Country USA','Charlie Henderson');
/*!40000 ALTER TABLE `Team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Team_Driver`
--

LOCK TABLES `Team_Driver` WRITE;
/*!40000 ALTER TABLE `Team_Driver` DISABLE KEYS */;
INSERT INTO `Team_Driver` VALUES (1,1),(1,2),(2,3),(5,4),(1,5),(9,6),(10,7),(1,8),(1,9),(1,10);
/*!40000 ALTER TABLE `Team_Driver` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:16
