-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_conference
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
-- Dumping data for table `Conference`
--

LOCK TABLES `Conference` WRITE;
/*!40000 ALTER TABLE `Conference` DISABLE KEYS */;
INSERT INTO `Conference` VALUES (1,'ACL',2003,'Philippines'),(2,'ACL',2004,'Philippines'),(3,'Naccl',2003,'Japan'),(4,'Naccl',2004,'China'),(5,'AICS',2003,'England'),(6,'AICS',2004,'USA');
/*!40000 ALTER TABLE `Conference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Conference_Participation`
--

LOCK TABLES `Conference_Participation` WRITE;
/*!40000 ALTER TABLE `Conference_Participation` DISABLE KEYS */;
INSERT INTO `Conference_Participation` VALUES (1,1,'Sponsor'),(1,2,'Sponsor'),(1,4,'Speaker'),(1,6,'Speaker'),(2,5,'Sponsor'),(2,7,'Speaker'),(4,5,'Participant'),(5,5,'Speaker'),(6,5,'Participant');
/*!40000 ALTER TABLE `Conference_Participation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Institution`
--

LOCK TABLES `Institution` WRITE;
/*!40000 ALTER TABLE `Institution` DISABLE KEYS */;
INSERT INTO `Institution` VALUES (1,'Illinois State University','Normal, Illinois',1857),(2,'Bradley University','Peoria, Illinois',1897),(3,'Eureka College','Eureka, Illinois',1855),(4,'Hedding College (defunct)','Abingdon, Illinois',1855),(5,'Illinois College','Jacksonville, Illinois',1829),(6,'Illinois Wesleyan University','Bloomington, Illinois',1850),(7,'Lincoln College, Illinois','Lincoln, Illinois',1865),(8,'Lombard College (defunct)','Galesburg, Illinois',1853),(9,'Millikin University','Decatur, Illinois',1901),(10,'Shurtleff College (defunct)','Alton, Illinois',1827);
/*!40000 ALTER TABLE `Institution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Staff`
--

LOCK TABLES `Staff` WRITE;
/*!40000 ALTER TABLE `Staff` DISABLE KEYS */;
INSERT INTO `Staff` VALUES (1,'Bobby Jackson',24,'United States',1),(2,'Casey Jacobsen',23,'United States',2),(3,'Alexander Johnson',42,'United Kindom',3),(4,'Chris Johnson',34,'Canada',4),(5,'Bobby Jones',28,'United States',5),(6,'Dahntay Jones',30,'United Kindom',10),(7,'Damon Jones',41,'United Kindom',8);
/*!40000 ALTER TABLE `Staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:18
