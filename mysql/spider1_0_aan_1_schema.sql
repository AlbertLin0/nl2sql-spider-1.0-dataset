-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0
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
-- Table structure for table `Affiliation`
--

DROP TABLE IF EXISTS `Affiliation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Affiliation` (
  `affiliation_id` int NOT NULL AUTO_INCREMENT COMMENT '机构id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '机构名称',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '机构地址',
  PRIMARY KEY (`affiliation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2431 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='机构信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Author`
--

DROP TABLE IF EXISTS `Author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Author` (
  `author_id` int NOT NULL AUTO_INCREMENT COMMENT '作者id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '作者名称',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '作者邮箱',
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21486 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='作者表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Author_List`
--

DROP TABLE IF EXISTS `Author_List`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Author_List` (
  `paper_id` varchar(25) COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章id',
  `author_id` int NOT NULL COMMENT '作者id',
  `affiliation_id` int DEFAULT NULL COMMENT '机构id',
  PRIMARY KEY (`paper_id`,`author_id`),
  KEY `idx_Author_list_affiliation_id` (`affiliation_id`),
  KEY `idx_Author_list_author_id` (`author_id`),
  CONSTRAINT `Author_list_FK_0_0` FOREIGN KEY (`affiliation_id`) REFERENCES `Affiliation` (`affiliation_id`),
  CONSTRAINT `Author_list_FK_1_0` FOREIGN KEY (`author_id`) REFERENCES `Author` (`author_id`),
  CONSTRAINT `Author_list_FK_2_0` FOREIGN KEY (`paper_id`) REFERENCES `Paper` (`paper_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='作者、机构、文章关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Citation`
--

DROP TABLE IF EXISTS `Citation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Citation` (
  `paper_id` varchar(25) COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章id',
  `cited_paper_id` varchar(25) COLLATE utf8mb4_general_ci NOT NULL COMMENT '被引用的文章id',
  PRIMARY KEY (`paper_id`,`cited_paper_id`),
  KEY `idx_Citation_cited_paper_id` (`cited_paper_id`),
  CONSTRAINT `Citation_FK_0_0` FOREIGN KEY (`cited_paper_id`) REFERENCES `Paper` (`paper_id`),
  CONSTRAINT `Citation_FK_1_0` FOREIGN KEY (`paper_id`) REFERENCES `Paper` (`paper_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='引用信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Paper`
--

DROP TABLE IF EXISTS `Paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Paper` (
  `paper_id` varchar(25) COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章id',
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文章标题',
  `venue` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '发表会议',
  `year` int DEFAULT NULL COMMENT '发表时间-年',
  PRIMARY KEY (`paper_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='文章信息表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:30:28
