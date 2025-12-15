-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_address_1
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
-- Table structure for table `City`
--
DROP TABLE IF EXISTS `Student`;
DROP TABLE IF EXISTS `Direct_Distance`;
DROP TABLE IF EXISTS `City`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `City` (
  `city_code` varchar(3) COLLATE utf8mb4_general_ci NOT NULL COMMENT '城市字母代码',
  `city_name` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '城市名称',
  `state` varchar(2) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '所在省份/州',
  `country` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '城市所在国家',
  `latitude` DECIMAL(10,3) DEFAULT NULL COMMENT '纬度',
  `longitude` DECIMAL(10,3) DEFAULT NULL COMMENT '经度',
  PRIMARY KEY (`city_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Direct_Distance`
--

DROP TABLE IF EXISTS `Direct_Distance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Direct_Distance` (
  `city1_code` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '城市1字母代码',
  `city2_code` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '城市2字母代码',
  `distance` int DEFAULT NULL COMMENT '两个城市之间的距离',
  KEY `Direct_distance_FK_0_0` (`city2_code`),
  KEY `Direct_distance_FK_1_0` (`city1_code`),
  CONSTRAINT `Direct_distance_FK_0_0` FOREIGN KEY (`city2_code`) REFERENCES `City` (`city_code`),
  CONSTRAINT `Direct_distance_FK_1_0` FOREIGN KEY (`city1_code`) REFERENCES `City` (`city_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Student`
--

DROP TABLE IF EXISTS `Student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Student` (
  `StuID` int NOT NULL AUTO_INCREMENT COMMENT '学生id',
  `LName` varchar(12) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'last name',
  `Fname` varchar(12) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'first name',
  `Age` int DEFAULT NULL COMMENT '年龄',
  `Sex` varchar(1) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '性别',
  `Major` int DEFAULT NULL COMMENT '所学专业',
  `Advisor` int DEFAULT NULL COMMENT '导师id',
  `city_code` varchar(3) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '城市字母代码',
  PRIMARY KEY (`StuID`),
  KEY `Student_FK_0_0` (`city_code`),
  CONSTRAINT `Student_FK_0_0` FOREIGN KEY (`city_code`) REFERENCES `City` (`city_code`)
) ENGINE=InnoDB AUTO_INCREMENT=1036 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:42:44
