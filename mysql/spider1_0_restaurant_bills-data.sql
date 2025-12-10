-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_restaurant_bills
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
-- Dumping data for table `Branch`
--

LOCK TABLES `Branch` WRITE;
/*!40000 ALTER TABLE `Branch` DISABLE KEYS */;
INSERT INTO `Branch` VALUES (1,'Ashby Lazale',5,'Hartford'),(2,'Breton Robert',4,'Waterbury'),(3,'Campbell Jessie',6,'Hartford'),(4,'Cobb Sedrick',2,'Waterbury'),(5,'Hayes Steven',3,'Cheshire'),(6,'Komisarjevsky Joshua',2,'Cheshire'),(7,'Peeler Russell',6,'Bridgeport'),(8,'Reynolds Richard',8,'Waterbury'),(9,'Rizzo Todd',4,'Waterbury'),(10,'Webb Daniel',2,'Hartford');
/*!40000 ALTER TABLE `Branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'Arthur Morris','Australia',87,3),(2,'Denis Compton','England',62.44,2),(3,'Donald Bradman','Australia',72.57,2),(4,'Cyril Washbrook','England',50.85,1),(5,'Len Hutton','England',42.75,0),(6,'Sid Barnes','Australia',82.25,1),(7,'Bill Edrich','England',31.9,1),(8,'Lindsay Hassett','Australia',44.28,1);
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Customer_Order`
--

LOCK TABLES `Customer_Order` WRITE;
/*!40000 ALTER TABLE `Customer_Order` DISABLE KEYS */;
INSERT INTO `Customer_Order` VALUES (1,10,'Spring Rolls',4),(2,9,'Kung Pao Chicken',2),(2,10,'Ma Po Tofu',1),(3,10,'Peking Roasted Duck',1),(4,6,'Chow Mein',2),(5,6,'Chow Mein',1);
/*!40000 ALTER TABLE `Customer_Order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:32
