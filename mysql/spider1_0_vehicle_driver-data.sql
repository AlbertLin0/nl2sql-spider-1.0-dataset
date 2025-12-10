-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_vehicle_driver
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
INSERT INTO `Driver` VALUES (1,'Jeff Gordon','United States','NASCAR'),(2,'Jimmie Johnson','United States','NASCAR'),(3,'Tony Stewart','United States','NASCAR'),(4,'Ryan Hunter-Reay','United States','IndyCar Series');
/*!40000 ALTER TABLE `Driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Vehicle`
--

LOCK TABLES `Vehicle` WRITE;
/*!40000 ALTER TABLE `Vehicle` DISABLE KEYS */;
INSERT INTO `Vehicle` VALUES (1,'AC4000','1996',120,4000,'Zhuzhou','1'),(2,'DJ ','2000',200,4800,'Zhuzhou','2'),(3,'DJ1','2000–2001',120,6400,'Zhuzhou Siemens , Germany','20'),(4,'DJ2','2001',200,4800,'Zhuzhou','3'),(5,'Tiansuo','2003',200,4800,'Datong','1'),(6,'HXD1','2006–2010',120,9600,'Zhuzhou Siemens , Germany','220'),(7,'HXD1.1','2012–',120,9600,'Zhuzhou','50'),(8,'HXD1.6','2012',120,9600,'Ziyang','1');
/*!40000 ALTER TABLE `Vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Vehicle_Driver`
--

LOCK TABLES `Vehicle_Driver` WRITE;
/*!40000 ALTER TABLE `Vehicle_Driver` DISABLE KEYS */;
INSERT INTO `Vehicle_Driver` VALUES (1,1),(3,1),(4,1),(2,2),(4,2),(1,3),(1,5),(2,6),(4,6),(2,7),(2,8);
/*!40000 ALTER TABLE `Vehicle_Driver` ENABLE KEYS */;
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
