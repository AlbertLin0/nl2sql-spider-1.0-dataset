-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_e_commerce
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
-- Table structure for table `Customer_Payment_Methods`
--

DROP TABLE IF EXISTS `Customer_Payment_Methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `gender_code` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_first_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `customer_middle_initial` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `customer_last_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `login_name` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `login_password` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address_line_1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `town_city` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `county` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Invoices`
--

DROP TABLE IF EXISTS `Invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Invoices` (
  `invoice_number` int NOT NULL AUTO_INCREMENT,
  `invoice_status_code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `invoice_date` datetime DEFAULT NULL,
  PRIMARY KEY (`invoice_number`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `parent_product_id` int DEFAULT NULL,
  `product_name` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product_price` decimal(19,4) DEFAULT '0.0000',
  `product_color` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product_size` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product_description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
CREATE TABLE `Customer_Payment_Methods` (
  `customer_id` int NOT NULL,
  `payment_method_code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  KEY `Customer_Payment_Methods_FK_0_0` (`customer_id`),
  CONSTRAINT `Customer_Payment_Methods_FK_0_0` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Table structure for table `Order_Items`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `order_status_code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `date_order_placed` datetime NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `Orders_FK_0_0` (`customer_id`),
  CONSTRAINT `Orders_FK_0_0` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
DROP TABLE IF EXISTS `Order_Items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Order_Items` (
  `order_item_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `order_id` int NOT NULL,
  `order_item_status_code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `Order_Items_FK_0_0` (`order_id`),
  KEY `Order_Items_FK_1_0` (`product_id`),
  CONSTRAINT `Order_Items_FK_0_0` FOREIGN KEY (`order_id`) REFERENCES `Orders` (`order_id`),
  CONSTRAINT `Order_Items_FK_1_0` FOREIGN KEY (`product_id`) REFERENCES `Products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Orders`
--

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Products`
--


/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Shipment_Items`
--
DROP TABLE IF EXISTS `Shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Shipments` (
  `shipment_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `invoice_number` int NOT NULL,
  `shipment_tracking_number` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shipment_date` datetime DEFAULT NULL,
  PRIMARY KEY (`shipment_id`),
  KEY `Shipments_FK_0_0` (`order_id`),
  KEY `Shipments_FK_1_0` (`invoice_number`),
  CONSTRAINT `Shipments_FK_0_0` FOREIGN KEY (`order_id`) REFERENCES `Orders` (`order_id`),
  CONSTRAINT `Shipments_FK_1_0` FOREIGN KEY (`invoice_number`) REFERENCES `Invoices` (`invoice_number`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
DROP TABLE IF EXISTS `Shipment_Items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Shipment_Items` (
  `shipment_id` int NOT NULL,
  `order_item_id` int NOT NULL,
  PRIMARY KEY (`shipment_id`,`order_item_id`),
  KEY `Shipment_Items_FK_0_0` (`order_item_id`),
  CONSTRAINT `Shipment_Items_FK_0_0` FOREIGN KEY (`order_item_id`) REFERENCES `Order_Items` (`order_item_id`),
  CONSTRAINT `Shipment_Items_FK_1_0` FOREIGN KEY (`shipment_id`) REFERENCES `Shipments` (`shipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Shipments`
--


/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:42:56
