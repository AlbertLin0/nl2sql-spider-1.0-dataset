-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_book_1
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
-- Table structure for table `Author`
--
DROP TABLE IF EXISTS `Books_Order`;
DROP TABLE IF EXISTS `Orders`;
DROP TABLE IF EXISTS `Author_Book`;
DROP TABLE IF EXISTS `Author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Author` (
  `idAuthor` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`idAuthor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Book`
--

DROP TABLE IF EXISTS `Book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Book` (
  `ISBN` char(15) COLLATE utf8mb4_general_ci NOT NULL,
  `Title` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `Author` char(4) COLLATE utf8mb4_general_ci NOT NULL,
  `PurchasePrice` decimal(10,2) DEFAULT '0.00',
  `SalePrice` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Table structure for table `Author_Book`
--


/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Author_Book` (
  `ISBN` char(15) COLLATE utf8mb4_general_ci NOT NULL,
  `Author` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ISBN`,`Author`),
  KEY `Author` (`Author`),
  CONSTRAINT `Author_Book_ibfk_1` FOREIGN KEY (`Author`) REFERENCES `Author` (`idAuthor`),
  CONSTRAINT `Author_Book_ibfk_2` FOREIGN KEY (`ISBN`) REFERENCES `Book` (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `Client`
--

DROP TABLE IF EXISTS `Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Client` (
  `IdClient` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `Address` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `NumCC` char(16) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`IdClient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Orders`
--


/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `IdOrder` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `IdClient` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `DateOrder` date DEFAULT NULL,
  `DateExped` date DEFAULT NULL,
  PRIMARY KEY (`IdOrder`),
  KEY `Orders_FK_0_0` (`IdClient`),
  CONSTRAINT `Orders_FK_0_0` FOREIGN KEY (`IdClient`) REFERENCES `Client` (`IdClient`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

--
-- Table structure for table `Books_Order`
--


/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Books_Order` (
  `ISBN` char(15) COLLATE utf8mb4_general_ci NOT NULL,
  `IdOrder` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `amount` int DEFAULT NULL,
  PRIMARY KEY (`ISBN`,`IdOrder`),
  KEY `pedido_FK` (`IdOrder`),
  CONSTRAINT `Book_FK` FOREIGN KEY (`ISBN`) REFERENCES `Book` (`ISBN`) ON DELETE CASCADE,
  CONSTRAINT `pedido_FK` FOREIGN KEY (`IdOrder`) REFERENCES `Orders` (`IdOrder`) ON DELETE CASCADE,
  CONSTRAINT `Books_Order_chk_1` CHECK ((`amount` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:42:48
