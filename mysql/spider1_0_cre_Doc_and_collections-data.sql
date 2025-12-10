-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_cre_Doc_and_collections
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
-- Dumping data for table `Collection_Subset_Members`
--

LOCK TABLES `Collection_Subset_Members` WRITE;
/*!40000 ALTER TABLE `Collection_Subset_Members` DISABLE KEYS */;
INSERT INTO `Collection_Subset_Members` VALUES (6,6,717),(7,6,851),(7,7,851),(6,7,981);
/*!40000 ALTER TABLE `Collection_Subset_Members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Collection_Subsets`
--

LOCK TABLES `Collection_Subsets` WRITE;
/*!40000 ALTER TABLE `Collection_Subsets` DISABLE KEYS */;
INSERT INTO `Collection_Subsets` VALUES (684,'UK album',''),(717,'US album',''),(741,'Canadian album',''),(813,'History collection',''),(851,'Art collection',''),(981,'Top collection',''),(997,'Fine set','');
/*!40000 ALTER TABLE `Collection_Subsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Collections`
--

LOCK TABLES `Collections` WRITE;
/*!40000 ALTER TABLE `Collections` DISABLE KEYS */;
INSERT INTO `Collections` VALUES (6,6,'Best',NULL),(7,6,'Nice',NULL);
/*!40000 ALTER TABLE `Collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Document_Objects`
--

LOCK TABLES `Document_Objects` WRITE;
/*!40000 ALTER TABLE `Document_Objects` DISABLE KEYS */;
INSERT INTO `Document_Objects` VALUES (5,5,'Ransom','Ransom Collection',NULL),(8,9,'Marlin','Marlin Collection',NULL),(9,9,'Braeden','Braeden Collection',NULL);
/*!40000 ALTER TABLE `Document_Objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Document_Subset_Members`
--

LOCK TABLES `Document_Subset_Members` WRITE;
/*!40000 ALTER TABLE `Document_Subset_Members` DISABLE KEYS */;
INSERT INTO `Document_Subset_Members` VALUES (9,5,171),(9,8,171),(5,8,183),(8,5,183),(8,9,216),(5,5,547),(5,9,653),(8,8,653);
/*!40000 ALTER TABLE `Document_Subset_Members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Document_Subsets`
--

LOCK TABLES `Document_Subsets` WRITE;
/*!40000 ALTER TABLE `Document_Subsets` DISABLE KEYS */;
INSERT INTO `Document_Subsets` VALUES (171,'Best for 2000',''),(183,'Best for 2001',''),(216,'Best for 2002',''),(488,'Best for 2003',''),(535,'Best for 2004',''),(547,'Best for 2005',''),(640,'Best for 2006',''),(653,'Best for 2007','');
/*!40000 ALTER TABLE `Document_Subsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Documents_In_Collections`
--

LOCK TABLES `Documents_In_Collections` WRITE;
/*!40000 ALTER TABLE `Documents_In_Collections` DISABLE KEYS */;
INSERT INTO `Documents_In_Collections` VALUES (5,6),(8,6),(9,6),(5,7),(8,7),(9,7);
/*!40000 ALTER TABLE `Documents_In_Collections` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:20
