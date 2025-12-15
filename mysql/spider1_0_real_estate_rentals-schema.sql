-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_real_estate_rentals
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
-- Table structure for table `Addresses`
--
DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `age_category_code` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_category_code` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_address_id` int NOT NULL,
  `is_buyer` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_seller` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `login_name` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(8) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_registered` datetime DEFAULT NULL,
  `first_name` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `middle_name` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `other_user_details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
DROP TABLE IF EXISTS `Addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Addresses` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `line_1_number_building` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `line_2_number_street` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `line_3_area_locality` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `town_city` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `zip_postcode` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `county_state_province` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `other_address_details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Features`
--

DROP TABLE IF EXISTS `Features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Features` (
  `feature_id` int NOT NULL AUTO_INCREMENT,
  `feature_name` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `feature_description` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`feature_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `Ref_Age_Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ref_Age_Categories` (
  `age_category_code` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `age_category_description` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`age_category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Ref_Property_Types`
--

DROP TABLE IF EXISTS `Ref_Property_Types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ref_Property_Types` (
  `property_type_code` INT NOT NULL,
  `property_type_description` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`property_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS `Ref_Room_Types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ref_Room_Types` (
  `room_type_code` INT NOT NULL,
  `room_type_description` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`room_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Ref_User_Categories`
--

DROP TABLE IF EXISTS `Ref_User_Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ref_User_Categories` (
  `user_category_code` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `user_category_description` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`user_category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--
-- Table structure for table `Properties`
--

DROP TABLE IF EXISTS `Properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Properties` (
  `property_id` int NOT NULL AUTO_INCREMENT,
  `property_address_id` int NOT NULL,
  `owner_user_id` int NOT NULL,
  `property_type_code` INT NOT NULL,
  `date_on_market` datetime DEFAULT NULL,
  `date_off_market` datetime DEFAULT NULL,
  `property_name` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `property_description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `garage_yn` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parking_lots` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `room_count` int DEFAULT NULL,
  `vendor_requested_price` double DEFAULT NULL,
  `price_min` double DEFAULT NULL,
  `price_max` double DEFAULT NULL,
  `other_property_details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`property_id`),
  KEY `Properties_FK_0_0` (`property_type_code`),
  KEY `Properties_FK_1_0` (`property_address_id`),
  KEY `Properties_FK_2_0` (`owner_user_id`),
  CONSTRAINT `Properties_FK_0_0` FOREIGN KEY (`property_type_code`) REFERENCES `Ref_Property_Types` (`property_type_code`),
  CONSTRAINT `Properties_FK_1_0` FOREIGN KEY (`property_address_id`) REFERENCES `Addresses` (`address_id`),
  CONSTRAINT `Properties_FK_2_0` FOREIGN KEY (`owner_user_id`) REFERENCES `Users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Property_Features`
--

DROP TABLE IF EXISTS `Property_Features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Property_Features` (
  `property_id` int NOT NULL,
  `feature_id` int NOT NULL,
  `feature_value` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `property_feature_description` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  KEY `Property_Features_FK_0_0` (`property_id`),
  KEY `Property_Features_FK_1_0` (`feature_id`),
  CONSTRAINT `Property_Features_FK_0_0` FOREIGN KEY (`property_id`) REFERENCES `Properties` (`property_id`),
  CONSTRAINT `Property_Features_FK_1_0` FOREIGN KEY (`feature_id`) REFERENCES `Features` (`feature_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Property_Photos`
--

DROP TABLE IF EXISTS `Property_Photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Property_Photos` (
  `property_id` int NOT NULL,
  `photo_seq` int NOT NULL,
  `photo_title` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo_description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo_filename` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  KEY `Property_Photos_FK_0_0` (`property_id`),
  CONSTRAINT `Property_Photos_FK_0_0` FOREIGN KEY (`property_id`) REFERENCES `Properties` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Ref_Age_Categories`
--

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Ref_Room_Types`
--

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Rooms`
--

DROP TABLE IF EXISTS `Rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rooms` (
  `property_id` int NOT NULL,
  `room_number` INT NOT NULL,
  `room_type_code` INT NOT NULL,
  `room_size` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `other_room_details` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  KEY `Rooms_FK_0_0` (`room_type_code`),
  KEY `Rooms_FK_1_0` (`property_id`),
  CONSTRAINT `Rooms_FK_0_0` FOREIGN KEY (`room_type_code`) REFERENCES `Ref_Room_Types` (`room_type_code`),
  CONSTRAINT `Rooms_FK_1_0` FOREIGN KEY (`property_id`) REFERENCES `Properties` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `User_Property_History`
--

DROP TABLE IF EXISTS `User_Property_History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User_Property_History` (
  `user_id` int NOT NULL,
  `property_id` int NOT NULL,
  `datestamp` datetime NOT NULL,
  KEY `User_Property_History_FK_0_0` (`property_id`),
  KEY `User_Property_History_FK_1_0` (`user_id`),
  CONSTRAINT `User_Property_History_FK_0_0` FOREIGN KEY (`property_id`) REFERENCES `Properties` (`property_id`),
  CONSTRAINT `User_Property_History_FK_1_0` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `User_Searches`
--

DROP TABLE IF EXISTS `User_Searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User_Searches` (
  `user_id` int NOT NULL,
  `search_seq` int NOT NULL,
  `search_datetime` datetime DEFAULT NULL,
  `search_string` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  KEY `User_Searches_FK_0_0` (`user_id`),
  CONSTRAINT `User_Searches_FK_0_0` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Users`
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

-- Dump completed on 2025-12-10  9:43:01
