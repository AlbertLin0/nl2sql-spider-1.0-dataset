-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_art_1
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
-- Dumping data for table `Artists`
--

LOCK TABLES `Artists` WRITE;
/*!40000 ALTER TABLE `Artists` DISABLE KEYS */;
INSERT INTO `Artists` VALUES (111,'Seurat','Georges',1859,1891),(222,'Picasso','Pablo',1881,1973),(333,'van Gogh','Vincent',1853,1890),(444,'Cassatt','Mary',1844,1926),(555,'Degas','Edgar',1834,1917);
/*!40000 ALTER TABLE `Artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Paintings`
--

LOCK TABLES `Paintings` WRITE;
/*!40000 ALTER TABLE `Paintings` DISABLE KEYS */;
INSERT INTO `Paintings` VALUES (80,'A Sunday on La Grande Jatte',1884,2076,3080,'oil','canvas','Gallery 240',111),(81,'Final Study for \"Bathers at Asnieres\"',1883,159,251,'oil','panel','Gallery 240',111),(82,'Tree Trunks (study for La Grande Jatte)',1884,474,615,'conte crayon','ivory laid paper',NULL,111),(83,'Abstraction: Background with Blue Cloudy Sky',1930,660,492,'oil','panel','Rice Building Special Exhibition Galleries',222),(84,'Head of Young Girl',1945,271,210,'lithograph','ivory wove paper',NULL,222),(85,'Still Life',1922,816,1006,'oil','canvas','Rice Building Special Exhibition Galleries',222),(86,'A Peasant Woman Digging in Front of Her Cottage',1885,313,419,'oil','canvas','Gallery 241',333),(87,'The Bedroom',1889,313,419,'oil','canvas','Gallery 241',333),(88,'The Drinkers',1890,568,733,'oil','canvas','Gallery 241',333),(89,'Terrace and Observation Deck at the Moulin de Blute-Fin, Montmartre',1887,435,330,'oil','canvas','Gallery 241',333),(90,'On a Balcony',1878,899,652,'oil','canvas','Gallery 273',444),(91,'The Child\'s Bath',1893,1003,661,'oil','canvas','Gallery 273',444),(92,'After the Bullfight',1873,825,640,'oil','canvas',NULL,444),(93,'Cafe Singer',1879,535,418,'oil','canvas','Gallery 226',555);
/*!40000 ALTER TABLE `Paintings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Sculptures`
--

LOCK TABLES `Sculptures` WRITE;
/*!40000 ALTER TABLE `Sculptures` DISABLE KEYS */;
INSERT INTO `Sculptures` VALUES (20,'Female Figure',1945,'bronze',NULL,222),(21,'Arabesque',1885,'bronze','Gallery 226',555),(22,'Spanish Dance',1883,'bronze','Gallery 226',555),(23,'The Tub',1889,'bronze','Gallery 226',555);
/*!40000 ALTER TABLE `Sculptures` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:11
