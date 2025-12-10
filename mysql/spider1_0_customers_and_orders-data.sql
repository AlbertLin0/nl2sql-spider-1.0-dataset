-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_customers_and_orders
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
INSERT INTO `Addresses` VALUES (1,'2632 Ofelia Stream Apt. 537\nRueckerborough, NV 78430-4096'),(2,'481 Tyrique Junction\nWest Kali, UT 16070-1379'),(3,'4363 Otilia Hill\nLandenshire, ND 45637'),(4,'1734 Klocko Views Suite 840\nSchusterfort, WY 34067-3366'),(5,'001 Eliza Ferry Suite 929\nSchillerfurt, WI 60335-2125'),(6,'8013 O\'Keefe Harbors\nNew Baronview, AR 57984'),(7,'50445 Gerhold Springs\nJaleelstad, IL 16333-3222'),(8,'13460 Rylee Green\nSouth Domenicamouth, NM 36408-2902'),(9,'59479 Eladio Cliff\nWymanside, PA 69696-5826'),(10,'4959 Dixie Oval\nNorth Timothyberg, OK 88659'),(11,'80770 Borer Square\nLillianaborough, NE 46012-9033'),(12,'83114 Vanessa Mountains Suite 788\nNorth Kara, CA 25470-9357'),(13,'078 Jameson Avenue\nCyrusberg, MN 88459-2009'),(14,'0335 Ferne Dale\nEast Lura, AZ 62151-8685'),(15,'140 Norene Ford\nPort Buddymouth, MA 08157-7414');
/*!40000 ALTER TABLE `Addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Customer_Orders`
--

LOCK TABLES `Customer_Orders` WRITE;
/*!40000 ALTER TABLE `Customer_Orders` DISABLE KEYS */;
INSERT INTO `Customer_Orders` VALUES (1,12,'2016-05-14 22:08:41','Part'),(2,3,'1991-02-26 11:32:39','Part'),(3,3,'2000-06-26 05:17:11','Part'),(4,1,'1987-06-28 09:12:32','Completed'),(5,15,'1994-12-17 22:49:09','Completed'),(6,13,'1978-09-08 23:31:23','Part'),(7,15,'2009-11-20 18:18:29','Completed'),(8,9,'1994-02-07 07:27:57','Part'),(9,5,'2007-11-23 04:32:19','Completed'),(10,14,'1986-01-30 15:27:58','Part'),(11,8,'2005-11-10 16:19:29','Part'),(12,13,'2016-03-01 07:51:02','Part'),(13,4,'2016-02-19 18:07:06','Completed'),(14,12,'2013-08-10 03:01:33','Completed'),(15,14,'1993-11-03 13:47:02','Part');
/*!40000 ALTER TABLE `Customer_Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (1,9,'Credit Card','601','Jeromy','422 Bode Mount Apt. 688','1-968-453-3485','everett.kautzer@example.com'),(2,8,'Credit Card','920','Edmond','0965 Dickens Springs','+92(8)6677749570','maegan54@example.net'),(3,3,'Credit Card','990','Twila','878 Joy Fields Apt. 366','(291)441-3432','dedric.bailey@example.org'),(4,11,'Credit Card','037','Madelynn','9128 Berry Mountains Suite 608','1-909-419-5704x7658','white.barney@example.net'),(5,7,'Credit Card','949','Nya','689 Wilkinson Coves Apt. 107','739-333-7916','eldred44@example.net'),(6,1,'Credit Card','892','Kenna','5425 Vern Rue Suite 490','804-701-9307','thomas67@example.org'),(7,10,'Credit Card','707','Katrina','73546 Gaylord Harbors Suite 881','239.351.4998x35742','hoyt80@example.org'),(8,9,'Credit Card','979','Jaylan','76957 Kohler Via Suite 315','+10(8)9243074470','penelope.koepp@example.com'),(9,7,'Credit Card','025','Jeremie','97464 Greenholt Tunnel','1-766-484-5984x4558','kuhn.mable@example.org'),(10,9,'Direct Debit','319','Lenny','869 Anastasia Knoll Apt. 100','457.149.5849','brooks08@example.org'),(11,2,'Direct Debit','102','Gunner','44535 Lisette Valleys Apt. 520','09657208451','katelynn81@example.net'),(12,13,'Credit Card','759','Abe','022 Turner Shore Suite 221','+96(9)6593071847','floyd.boyer@example.net'),(13,1,'Direct Debit','769','Kennith','047 Lang Island Apt. 977','100-037-1493x19148','tromp.maye@example.net'),(14,2,'Credit Card','431','Mittie','31742 Grant Plain Suite 093','+22(4)3215644293','daniel.hilma@example.net'),(15,15,'Direct Debit','202','Alexandrine','85441 Frieda Skyway','183.800.7178x7079','marguerite93@example.net');
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Order_Items`
--

LOCK TABLES `Order_Items` WRITE;
/*!40000 ALTER TABLE `Order_Items` DISABLE KEYS */;
INSERT INTO `Order_Items` VALUES (1,8,13,'2'),(2,1,10,'2'),(3,13,11,'4'),(4,8,1,'7'),(5,2,7,'7'),(6,5,5,'4'),(7,14,2,'1'),(8,1,1,'9'),(9,2,8,'7'),(10,6,4,'7'),(11,12,15,'7'),(12,1,12,'8'),(13,8,4,'5'),(14,8,15,'1'),(15,1,12,'7');
/*!40000 ALTER TABLE `Order_Items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES (1,'Hardware','Monitor',2084.944172129),(2,'Clothes','Topping',26045678.098468),(3,'Clothes','Black Jeans',7312007.4430563),(4,'Clothes','Blue Jeans',473.92262166875),(5,'Clothes','Yellow Jeans',34529451.515631),(6,'Clothes','Gray Jeans',6897489.4162472),(7,'Hardware','Mouse',196066792.36835),(8,'Clothes','White Topping',705.9133468689),(9,'Hardware','Keyboard',495.99319506948),(10,'Hardware','Drive',37993003.400391),(11,'Clothes','Purple Topping',7194641.5117043),(12,'Clothes','Black Topping',201509245.10256),(13,'Clothes','Yellow Topping',840.34678227843),(14,'Hardware','DVD',870.50471411809),(15,'Clothes','Blue Topping',2825.6814780336);
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:23
