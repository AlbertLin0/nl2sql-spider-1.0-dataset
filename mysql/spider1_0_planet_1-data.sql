-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_planet_1
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
-- Dumping data for table `Client`
--
LOCK TABLES `Planet` WRITE;
/*!40000 ALTER TABLE `Planet` DISABLE KEYS */;
INSERT INTO `Planet` VALUES (1,'Omicron Persei 8',89475345.3545),(2,'Decapod X',65498463216.3466),(3,'Mars',32435021.65468),(4,'Omega III',98432121.5464),(5,'Tarantulon VI',849842198.354654),(6,'Cannibalon',654321987.21654),(7,'DogDoo VII',65498721354.688),(8,'Nintenduu 64',6543219894.1654),(9,'Amazonia',65432135979.6547);
/*!40000 ALTER TABLE `Planet` ENABLE KEYS */;
UNLOCK TABLES;
LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
INSERT INTO `Client` VALUES (1,'Zapp Brannigan'),(2,'Al Gore\'s Head'),(3,'Barbados Slim'),(4,'Ogden Wernstrom'),(5,'Leo Wong'),(6,'Lrrr'),(7,'John Zoidberg'),(8,'John Zoidfarb'),(9,'Morbo'),(10,'Judge John Whitey'),(11,'Calculon');
/*!40000 ALTER TABLE `Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,'Phillip J. Fry','Delivery boy',7500,'Not to be confused with the Philip J. Fry from Hovering Squid World 97a'),(2,'Turanga Leela','Captain',10000,NULL),(3,'Bender Bending Rodriguez','Robot',7500,NULL),(4,'Hubert J. Farnsworth','CEO',20000,NULL),(5,'John A. Zoidberg','Physician',25,NULL),(6,'Amy Wong','Intern',5000,NULL),(7,'Hermes Conrad','Bureaucrat',10000,NULL),(8,'Scruffy Scruffington','Janitor',5000,NULL);
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Has_Clearance`
--

LOCK TABLES `Has_Clearance` WRITE;
/*!40000 ALTER TABLE `Has_Clearance` DISABLE KEYS */;
INSERT INTO `Has_Clearance` VALUES (1,1,2),(1,2,3),(2,3,2),(2,4,4),(3,5,2),(3,6,4),(4,7,1);
/*!40000 ALTER TABLE `Has_Clearance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Package`
--
LOCK TABLES `Shipment` WRITE;
/*!40000 ALTER TABLE `Shipment` DISABLE KEYS */;
INSERT INTO `Shipment` VALUES (1,'3004-05-11',1,1),(2,'3004-05-11',1,2),(3,NULL,2,3),(4,NULL,2,4),(5,NULL,7,5);
/*!40000 ALTER TABLE `Shipment` ENABLE KEYS */;
UNLOCK TABLES;
LOCK TABLES `Package` WRITE;
/*!40000 ALTER TABLE `Package` DISABLE KEYS */;
INSERT INTO `Package` VALUES (1,1,'Undeclared',1.5,1,2),(2,1,'Undeclared',10,2,3),(2,2,'A bucket of krill',2,8,7),(3,1,'Undeclared',15,3,4),(3,2,'Undeclared',3,5,1),(3,3,'Undeclared',7,2,3),(4,1,'Undeclared',5,4,5),(4,2,'Undeclared',27,1,2),(5,1,'Undeclared',100,5,1);
/*!40000 ALTER TABLE `Package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Planet`
--



--
-- Dumping data for table `Shipment`
--


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:30
