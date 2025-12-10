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
-- Dumping data for table `Addresses`
--

LOCK TABLES `Addresses` WRITE;
/*!40000 ALTER TABLE `Addresses` DISABLE KEYS */;
INSERT INTO `Addresses` VALUES (1,'6207 Marks Trafficway','Apt. 516',NULL,'Port Miafurt','349','Utah','United States Minor Outlying Islands',NULL),(2,'518 Dean Village','Apt. 261',NULL,'New Juliana','979','Maryland','South Georgia and the South Sandwich Islands',NULL),(3,'88324 Medhurst Parkway Suite 832','Suite 435',NULL,'Jaquanmouth','937','RhodeIsland','Hungary',NULL),(4,'44916 Hand Branch','Apt. 237',NULL,'New Augusta','385','Alaska','Jersey',NULL),(5,'929 Hermiston Vista Suite 955','Apt. 235',NULL,'New Zachariahport','416','Louisiana','Western Sahara',NULL),(6,'8559 Birdie Mountain','Suite 515',NULL,'East Percivalfurt','298','Maryland','Ethiopia',NULL),(7,'0548 Xavier Ridge Apt. 397','Apt. 802',NULL,'South Jakob','356','Oklahoma','Christmas Island',NULL),(8,'6355 Maida Shores Suite 839','Apt. 058',NULL,'Lake Ezraborough','269','Nevada','Marshall Islands',NULL),(9,'0182 Schuppe Ferry','Suite 619',NULL,'Mckenzieton','595','Illinois','Turkey',NULL),(10,'80901 Lakin Point','Apt. 948',NULL,'Adityaport','684','Wyoming','Aruba',NULL),(11,'15594 Nicholaus Ports','Apt. 284',NULL,'Port Forest','697','Michigan','Djibouti',NULL),(12,'11179 Price Junctions','Apt. 295',NULL,'South Brandtport','146','Colorado','Svalbard & Jan Mayen Islands',NULL),(13,'1592 Marielle Throughway','Suite 482',NULL,'Hermistonburgh','772','Illinois','Grenada',NULL),(14,'340 Cleta Orchard Apt. 866','Apt. 226',NULL,'South Raymond','394','Missouri','Macedonia',NULL),(15,'5740 Maxwell Union Suite 546','Suite 073',NULL,'Port Johan','179','Oklahoma','Guam',NULL);
/*!40000 ALTER TABLE `Addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Features`
--

LOCK TABLES `Features` WRITE;
/*!40000 ALTER TABLE `Features` DISABLE KEYS */;
INSERT INTO `Features` VALUES (1,'kichen','ea'),(2,'rooftop','vel'),(3,'garden','et'),(4,'swimming pool','id'),(5,'high building','facere');
/*!40000 ALTER TABLE `Features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Properties`
--

LOCK TABLES `Properties` WRITE;
/*!40000 ALTER TABLE `Properties` DISABLE KEYS */;
INSERT INTO `Properties` VALUES (1,9,13,'7','2015-06-16 01:43:42','1978-11-17 22:49:30','garden','dolores','1','','7',2454.682,20835877.439261,352563032.06431,NULL),(2,8,5,'8','2014-10-10 10:17:36','2006-09-25 06:39:14','studio','quis','','1','8',409217.49906266,498.39,55837.914362,NULL),(3,7,10,'2','2011-12-15 01:52:28','2017-05-27 20:55:25','garden','facere','1','1','9',60571695.39357,3897.55448,1887,NULL),(4,12,7,'7','1971-01-17 04:08:35','1971-08-25 01:13:02','studio','ut','','1','4',3.009911,208147.904976,227.624634182,NULL),(5,4,9,'8','1996-12-17 20:53:52','2000-03-16 23:04:27','garden','perspiciatis','1','1','1',47605468.125659,335.875884731,0,NULL),(6,14,6,'7','1989-04-04 17:34:41','1981-08-03 12:46:34','studio','dolorum','1','','1',46382985.88415,0.0866,0,NULL),(7,2,4,'8','2000-09-08 06:54:00','2002-10-13 04:52:26','park','earum','1','1','8',428517.1,22130.13,0,NULL),(8,15,13,'7','2010-09-27 19:19:44','1998-08-19 19:29:50','studio','ad','1','','3',3076499.25,0,7.4,NULL),(9,8,10,'2','2002-01-06 18:44:23','1978-09-24 13:42:49','park','magni','','','7',19.917482,407995518.00153,194724.15425105,NULL),(10,14,2,'7','1996-10-13 18:04:10','1981-02-04 02:00:30','park','libero','','','8',0.15837612,2855,2734817.1574795,NULL),(11,5,10,'2','1976-08-01 00:52:48','1970-11-22 02:09:50','house','dolorem','1','','9',294154.455,18123757.317,471.9874856,NULL),(12,9,3,'7','1985-09-03 23:35:59','2011-11-28 01:18:51','house','eum','','1','7',551.53493622,24001489.487911,1,NULL),(13,2,9,'2','2010-06-02 05:49:21','1990-01-25 07:42:34','garage','perspiciatis','1','1','9',1222.603328,6628.9,0,NULL),(14,13,6,'7','2001-04-15 21:14:41','1981-09-12 05:26:47','garage','vel','','1','8',1435608.608,1.3248,40172.49,NULL),(15,15,9,'2','1992-09-12 03:18:04','1992-06-20 14:37:39','garage','expedita','1','1','8',0,14323.3095,94621091.987512,NULL);
/*!40000 ALTER TABLE `Properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Property_Features`
--

LOCK TABLES `Property_Features` WRITE;
/*!40000 ALTER TABLE `Property_Features` DISABLE KEYS */;
INSERT INTO `Property_Features` VALUES (14,3,'temporibus','est'),(4,2,'et','nam'),(4,2,'necessitatibus','voluptates'),(2,2,'quo','et'),(8,3,'fuga','esse'),(1,4,'unde','ipsam'),(3,3,'est','ratione'),(12,2,'aspernatur','explicabo'),(3,3,'voluptas','omnis'),(3,4,'at','ut'),(13,5,'eligendi','quasi'),(9,2,'harum','vel'),(9,5,'asperiores','quod'),(5,1,'delectus','molestiae'),(13,5,'eligendi','commodi');
/*!40000 ALTER TABLE `Property_Features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Property_Photos`
--

LOCK TABLES `Property_Photos` WRITE;
/*!40000 ALTER TABLE `Property_Photos` DISABLE KEYS */;
INSERT INTO `Property_Photos` VALUES (5,0,'front','reiciendis','repellat'),(15,61822,'front','aut','iste'),(8,0,'front','officiis','id'),(14,0,'back','in','error'),(14,3961,'back','eum','sed'),(9,2,'back','rerum','ea'),(6,1591,'kitchen','iusto','accusantium'),(14,42490707,'kitchen','commodi','sed'),(14,13182,'bathroom','modi','eos'),(9,98,'bathroom','ut','corporis'),(10,0,'bedroom','accusamus','dolor'),(14,28,'bedroom','ullam','quo'),(7,42,'bedroom','aut','sunt'),(12,66905,'living room','dolor','et'),(11,180487,'living room','omnis','et');
/*!40000 ALTER TABLE `Property_Photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Ref_Age_Categories`
--

LOCK TABLES `Ref_Age_Categories` WRITE;
/*!40000 ALTER TABLE `Ref_Age_Categories` DISABLE KEYS */;
INSERT INTO `Ref_Age_Categories` VALUES ('18-25','18 - 25 years old.'),('25-60','25 - 60 years old.'),('Over 60','Over 60 years of age.');
/*!40000 ALTER TABLE `Ref_Age_Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Ref_Property_Types`
--

LOCK TABLES `Ref_Property_Types` WRITE;
/*!40000 ALTER TABLE `Ref_Property_Types` DISABLE KEYS */;
INSERT INTO `Ref_Property_Types` VALUES ('2','apt'),('7','flat'),('8','house');
/*!40000 ALTER TABLE `Ref_Property_Types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Ref_Room_Types`
--

LOCK TABLES `Ref_Room_Types` WRITE;
/*!40000 ALTER TABLE `Ref_Room_Types` DISABLE KEYS */;
INSERT INTO `Ref_Room_Types` VALUES ('2','living'),('3','bedroom'),('4','bath'),('8','kitchen');
/*!40000 ALTER TABLE `Ref_Room_Types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Ref_User_Categories`
--

LOCK TABLES `Ref_User_Categories` WRITE;
/*!40000 ALTER TABLE `Ref_User_Categories` DISABLE KEYS */;
INSERT INTO `Ref_User_Categories` VALUES ('Senior Citizen','Senior Citizen'),('Single Mother','Single Mother'),('Student','Student');
/*!40000 ALTER TABLE `Ref_User_Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Rooms`
--

LOCK TABLES `Rooms` WRITE;
/*!40000 ALTER TABLE `Rooms` DISABLE KEYS */;
INSERT INTO `Rooms` VALUES (14,'2','8','s','praesentium'),(1,'1','2','s','repudiandae'),(15,'7','2','l','enim'),(4,'5','2','l','nemo'),(1,'8','4','s','adipisci'),(13,'2','4','m','quibusdam'),(6,'4','2','m','eum'),(10,'9','3','m','maxime'),(6,'5','4','s','itaque'),(8,'4','4','m','qui'),(3,'3','3','m','non'),(9,'7','3','s','impedit'),(5,'6','4','l','nesciunt'),(7,'1','8','l','ullam'),(13,'9','8','let','totam');
/*!40000 ALTER TABLE `Rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `User_Property_History`
--

LOCK TABLES `User_Property_History` WRITE;
/*!40000 ALTER TABLE `User_Property_History` DISABLE KEYS */;
INSERT INTO `User_Property_History` VALUES (11,2,'2014-07-18 19:21:51'),(2,7,'1992-07-19 19:34:27'),(8,7,'2005-11-02 07:47:38'),(4,9,'1985-12-16 11:41:27'),(15,13,'2018-02-10 21:19:14'),(7,15,'2004-02-24 14:27:34'),(7,8,'2011-10-08 00:04:34'),(8,3,'2014-10-02 05:34:09'),(12,12,'1993-08-16 03:26:05'),(2,4,'2001-09-05 04:01:41'),(12,1,'1982-10-11 13:46:08'),(13,15,'1977-03-13 18:50:48'),(4,2,'2006-10-30 22:13:52'),(5,3,'1982-08-06 07:39:40'),(1,4,'1997-07-08 09:25:24');
/*!40000 ALTER TABLE `User_Property_History` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `User_Searches`
--

LOCK TABLES `User_Searches` WRITE;
/*!40000 ALTER TABLE `User_Searches` DISABLE KEYS */;
INSERT INTO `User_Searches` VALUES (13,50636,'2014-04-28 20:21:54','optio'),(1,203,'1981-11-21 22:02:12','assumenda'),(11,5054,'1972-04-13 22:48:13','consequatur'),(4,923800,'2007-09-11 14:19:26','laudantium'),(5,82475512,'1981-01-01 16:48:00','laboriosam'),(13,24321735,'1971-04-24 20:18:31','repellat'),(15,85717,'1994-11-07 23:31:00','maiores'),(2,45340,'1989-12-21 19:39:20','facilis'),(4,56003,'2004-04-08 09:29:30','inventore'),(2,778216600,'2015-10-18 18:21:09','nesciunt'),(5,1551910,'2014-08-31 08:26:53','aliquam'),(11,0,'1975-11-17 19:59:16','at'),(10,7,'2000-07-17 14:19:27','hic'),(4,45181074,'1983-05-12 23:48:23','est'),(3,327708,'1985-11-06 17:10:05','fugiat');
/*!40000 ALTER TABLE `User_Searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'18-25','Senior Citizen',5,'1','','dolor','a9dc84fe','1980-12-28 20:26:12','Madonna','Kristoffer','Jaskolski',NULL),(2,'25-60','Senior Citizen',6,'1','','et','7daed599','1985-06-02 00:10:47','Miguel','Dovie','Harber',NULL),(3,'Over 60','Senior Citizen',15,'1','','repellat','7061d718','1977-09-28 23:37:31','Robbie','Angelo','Keeling',NULL),(4,'18-25','Single Mother',4,'1','','laboriosam','f78651d8','2016-12-01 10:47:14','Phoebe','Mike','Kohler',NULL),(5,'Over 60','Senior Citizen',10,'','1','corrupti','073f78a2','1975-12-17 05:04:32','Brielle','Mariane','Haley',NULL),(6,'18-25','Senior Citizen',14,'1','','omnis','6d1ed7a2','1999-02-25 13:45:33','Reggie','Eulah','Ernser',NULL),(7,'25-60','Student',9,'1','','qui','a44394fb','1988-08-11 19:23:27','Brett','Jaylon','Runte',NULL),(8,'Over 60','Senior Citizen',9,'','1','ratione','6af1990c','2015-07-29 08:52:10','Porter','Creola','Mohr',NULL),(9,'Over 60','Single Mother',1,'1','','ut','b865e655','1993-10-17 04:08:26','Jameson','Jaylin','Rippin',NULL),(10,'18-25','Single Mother',1,'1','','in','bdad75c8','1980-07-04 17:28:15','Dane','Casey','Fritsch',NULL),(11,'Over 60','Single Mother',11,'1','','doloremque','14567850','1976-05-19 04:53:59','Gudrun','Brock','West',NULL),(12,'18-25','Senior Citizen',5,'','1','harum','223970d3','2006-01-19 12:22:54','Ruby','Trenton','Schulist',NULL),(13,'25-60','Student',14,'','1','culpa','b264c8b7','1979-03-14 08:07:49','Antonio','Kitty','Cronin',NULL),(14,'Over 60','Senior Citizen',10,'1','','consequatur','bd0a8b12','2006-08-20 02:16:04','D\'angelo','Brisa','Nienow',NULL),(15,'25-60','Student',1,'1','','omnis','81cce049','2001-04-26 09:27:50','Theresa','Thurman','Bartell',NULL);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:31
