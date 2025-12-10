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
-- Dumping data for table `City`
--

LOCK TABLES `City` WRITE;
/*!40000 ALTER TABLE `City` DISABLE KEYS */;
INSERT INTO `City` VALUES ('ATL','Atlanta','GA','USA',33.763,-84.317),('BAL','Baltimore','MD','USA',39.288,-76.617),('BKK','Bangkok','XX','THAILAND',13.733,100.5),('BOS','Boston','MA','USA',42.362,-71.05),('CHI','Chicago','IL','USA',41.883,-87.617),('CPK','College Park','MD','USA',38.987,-76.933),('DAL','Dallas','TX','USA',32.777,-96.8),('DEL','Delhi','DE','INDIA',28.617,77.217),('DET','Detroit','MI','USA',42.323,-83.167),('EWR','Newark','NJ','USA',40.737,-74.167),('FRE','Frederick','MD','USA',39.415,-77.417),('HKG','Hong Kong','HK','CHINA',22.25,114.167),('HON','Honolulu','HI','USA',21.313,-157.85),('HOU','Houston','TX','USA',29.834,-95),('JNB','Johannesburg','XX','SAFRICA',-25.55,28),('LON','London','EN','UK',51.5,-0.167),('LOS','Los Angeles','CA','USA',34.058,-118.25),('MIA','Miami','FL','USA',25.465,-80.15),('NAR','Newark','DE','USA',39.683,-75.75),('NYC','New York','NY','USA',40.849,-73.867),('PAR','Paris','XX','FRANCE',48.867,2.333),('PEK','Beijing','BE','CHINA',39.917,116.417),('PHL','Philadelphia','PA','USA',39.95,-75.15),('PIT','Pittsburgh','PA','USA',40.437,-80),('PVD','Providence','RI','USA',41.817,-71.4),('ROC','Rochester','NY','USA',43.158,-77.6),('SAN','San Diego','CA','USA',32.713,-117.15),('SFO','San Francisco','CA','USA',37.775,-122.417),('TYO','Tokyo','XX','JAPAN',35.7,139.767),('WAS','Washington','DC','USA',38.892,-77.017),('YYZ','Toronto','ON','CANADA',43.65,-79.333);
/*!40000 ALTER TABLE `City` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Direct_Distance`
--

LOCK TABLES `Direct_Distance` WRITE;
/*!40000 ALTER TABLE `Direct_Distance` DISABLE KEYS */;
INSERT INTO `Direct_Distance` VALUES ('BAL','ATL',576),('BAL','BAL',0),('BAL','BKK',9631),('BAL','BOS',370),('BAL','CHI',621),('BAL','CPK',21),('BAL','DAL',1217),('BAL','DEL',7469),('BAL','DET',408),('BAL','EWR',169),('BAL','FRE',35),('BAL','HKG',8409),('BAL','HON',4832),('BAL','HOU',1240),('BAL','JNB',7850),('BAL','LON',3652),('BAL','LOS',2329),('BAL','MIA',946),('BAL','NAR',71),('BAL','NYC',185),('BAL','PAR',3800),('BAL','PEK',8041),('BAL','PHL',105),('BAL','PIT',210),('BAL','PVD',328),('BAL','ROC',277),('BAL','SAN',2295),('BAL','SFO',2457),('BAL','TYO',6740),('BAL','WAS',35),('BAL','YYZ',347),('ATL','BAL',576),('ATL','PHL',665),('BKK','BAL',9631),('BOS','BAL',370),('BOS','EWR',200),('BOS','PAR',3448),('BOS','PHL',280),('CHI','BAL',621),('CHI','PHL',678),('CPK','BAL',21),('DAL','BAL',1217),('DEL','BAL',7469),('DET','BAL',408),('DET','EWR',488),('DET','PHL',453),('EWR','BAL',169),('EWR','BOS',200),('EWR','DET',488),('EWR','LON',3458),('EWR','LOS',2454),('EWR','LOS',2454),('EWR','PHL',89),('EWR','SAN',2425),('EWR','WAS',199),('FRE','BAL',35),('HKG','BAL',8409),('HON','BAL',4832),('HOU','BAL',1240),('HOU','LOS',1385),('HOU','PHL',1324),('HOU','SAN',1270),('HOU','SFO',1635),('JNB','BAL',7850),('LON','BAL',3652),('LON','EWR',3458),('LON','NYC',3452),('LON','PHL',3546),('LON','TYO',5975),('LON','WAS',3650),('LOS','BAL',2329),('LOS','EWR',2454),('LOS','EWR',2454),('LOS','HOU',1385),('LOS','PHL',2401),('LOS','SAN',109),('MIA','BAL',946),('NAR','BAL',71),('NYC','BAL',185),('NYC','LON',3452),('PAR','BAL',3800),('PAR','BOS',3448),('PEK','BAL',8041),('PHL','ATL',665),('PHL','BAL',105),('PHL','BOS',280),('PHL','CHI',678),('PHL','DET',453),('PHL','EWR',89),('PHL','HOU',1324),('PHL','LON',3546),('PHL','LOS',2401),('PHL','PIT',267),('PHL','SAN',2369),('PHL','SFO',2521),('PHL','WAS',119),('PIT','BAL',210),('PIT','PHL',267),('PIT','SAN',2106),('PVD','BAL',328),('ROC','BAL',277),('ROC','WAS',296),('SAN','BAL',2295),('SAN','EWR',2425),('SAN','HOU',1270),('SAN','LOS',109),('SAN','PHL',2369),('SAN','PIT',2106),('SFO','BAL',2457),('SFO','HOU',1635),('SFO','PHL',2521),('TYO','BAL',6740),('TYO','LON',5975),('WAS','BAL',35),('WAS','EWR',199),('WAS','LON',3650),('WAS','PHL',119),('WAS','ROC',296),('YYZ','BAL',347);
/*!40000 ALTER TABLE `Direct_Distance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Student`
--

LOCK TABLES `Student` WRITE;
/*!40000 ALTER TABLE `Student` DISABLE KEYS */;
INSERT INTO `Student` VALUES (1001,'Smith','Linda',18,'F',600,1121,'BAL'),(1002,'Kim','Tracy',19,'F',600,7712,'HKG'),(1003,'Jones','Shiela',21,'F',600,7792,'WAS'),(1004,'Kumar','Dinesh',20,'M',600,8423,'CHI'),(1005,'Gompers','Paul',26,'M',600,1121,'YYZ'),(1006,'Schultz','Andy',18,'M',600,1148,'BAL'),(1007,'Apap','Lisa',18,'F',600,8918,'PIT'),(1008,'Nelson','Jandy',20,'F',600,9172,'BAL'),(1009,'Tai','Eric',19,'M',600,2192,'YYZ'),(1010,'Lee','Derek',17,'M',600,2192,'HOU'),(1011,'Adams','David',22,'M',600,1148,'PHL'),(1012,'Davis','Steven',20,'M',600,7723,'PIT'),(1014,'Norris','Charles',18,'M',600,8741,'DAL'),(1015,'Lee','Susan',16,'F',600,8721,'HKG'),(1016,'Schwartz','Mark',17,'M',600,2192,'DET'),(1017,'Wilson','Bruce',27,'M',600,1148,'LON'),(1018,'Leighton','Michael',20,'M',600,1121,'PIT'),(1019,'Pang','Arthur',18,'M',600,2192,'WAS'),(1020,'Thornton','Ian',22,'M',520,7271,'NYC'),(1021,'Andreou','George',19,'M',520,8722,'NYC'),(1022,'Woods','Michael',17,'M',540,8722,'PHL'),(1023,'Shieber','David',20,'M',520,8722,'NYC'),(1024,'Prater','Stacy',18,'F',540,7271,'BAL'),(1025,'Goldman','Mark',18,'M',520,7134,'PIT'),(1026,'Pang','Eric',19,'M',520,7134,'HKG'),(1027,'Brody','Paul',18,'M',520,8723,'LOS'),(1028,'Rugh','Eric',20,'M',550,2311,'ROC'),(1029,'Han','Jun',17,'M',100,2311,'PEK'),(1030,'Cheng','Lisa',21,'F',550,2311,'SFO'),(1031,'Smith','Sarah',20,'F',550,8772,'PHL'),(1032,'Brown','Eric',20,'M',550,8772,'ATL'),(1033,'Simms','William',18,'M',550,8772,'NAR'),(1034,'Epp','Eric',18,'M',50,5718,'BOS'),(1035,'Schmidt','Sarah',26,'F',50,5718,'WAS');
/*!40000 ALTER TABLE `Student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:09
