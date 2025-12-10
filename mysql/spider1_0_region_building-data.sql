-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_region_building
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
-- Dumping data for table `Building`
--

LOCK TABLES `Building` WRITE;
/*!40000 ALTER TABLE `Building` DISABLE KEYS */;
INSERT INTO `Building` VALUES (1,1,'La Renaissance Apartments','424 Spadina Crescent E',24,1983),(2,2,'Hallmark Place','311 6th Ave N',27,1984),(3,4,'Saskatoon Square','410 22nd St E',17,1979),(4,5,'The Terrace Apartments','315 5th Ave N',22,1980),(5,6,'Radisson Hotel','405 20th St E',12,1983),(6,8,'The View on Fifth','320 5th Ave N',22,1968),(7,9,'The Luther','1223 Temperance St',9,1978),(8,10,'Marquis Towers','241 5th Ave N',36,1966);
/*!40000 ALTER TABLE `Building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Region`
--

LOCK TABLES `Region` WRITE;
/*!40000 ALTER TABLE `Region` DISABLE KEYS */;
INSERT INTO `Region` VALUES (1,'Abruzzo','L\'Aquila',10763,1342177),(2,'Aosta Valley','Aosta',3263,128129),(3,'Apulia','Bari',19358,4090577),(4,'Basilicata','Potenza',9995,587680),(5,'Calabria','Catanzaro',15080,2011537),(6,'Campania','Naples',13590,5833131),(7,'Emilia-Romagna','Bologna',22446,4429766),(8,'Friuli-Venezia Giulia','Trieste',7858,1235761),(9,'Lazio','Rome',17236,5724365),(10,'Liguria','Genoa',5422,1616993),(11,'Lombardy','Milan',23844,9909348);
/*!40000 ALTER TABLE `Region` ENABLE KEYS */;
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
