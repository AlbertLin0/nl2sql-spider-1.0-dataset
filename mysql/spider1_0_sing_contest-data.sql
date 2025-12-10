-- MySQL dump 10.13  Distrib 9.5.0, for macos15.7 (arm64)
--
-- Host: 10.16.41.190    Database: spider1_0_sing_contest
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
-- Dumping data for table `Participants`
--

LOCK TABLES `Participants` WRITE;
/*!40000 ALTER TABLE `Participants` DISABLE KEYS */;
INSERT INTO `Participants` VALUES (1,'Freeway',30.71),(2,'Biby Michael\'s Friend',7.47),(3,'Iskren Petsov',5.81),(4,'Sunay Chalakov',53.11),(5,'Tsetso Vlaykov',2.9);
/*!40000 ALTER TABLE `Participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Performance_Score`
--

LOCK TABLES `Performance_Score` WRITE;
/*!40000 ALTER TABLE `Performance_Score` DISABLE KEYS */;
INSERT INTO `Performance_Score` VALUES (1,12,8,8,8),(1,13,10,9,8),(2,22,7,4,5),(2,23,2,5,10),(3,5,8,7,8),(3,7,7,10,8),(4,7,6,8,9),(4,18,9,9,7),(4,22,10,10,10),(5,25,9,8,6);
/*!40000 ALTER TABLE `Performance_Score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Songs`
--

LOCK TABLES `Songs` WRITE;
/*!40000 ALTER TABLE `Songs` DISABLE KEYS */;
INSERT INTO `Songs` VALUES (1,'English , Russian','Sasha Son',' Love ','—'),(2,'English , Hebrew , Arabic','Noa and Mira Awad',' There Must Be Another Way ','—'),(3,'French','Patricia Kaas',' Et s\\\'il fallait le faire ','And if it had to be done'),(4,'French , English','Malena Ernman',' La voix ','The voice'),(5,'Croatian','Igor Cukrov feat. Andrea',' Lijepa Tena ','Beautiful Tena'),(6,'Portuguese','Flor-de-Lis',' Todas as ruas do amor ','All the streets of love'),(7,'English','Yohanna',' Is It True? ','—'),(8,'English','Sakis Rouvas',' This Is Our Night ','—'),(9,'English , Armenian','Inga and Anush',' Jan Jan ','My dear'),(10,'Russian , Ukrainian','Anastasiya Prikhodko',' Mamo (Мамо)','Mum'),(11,'English','AySel and Arash',' Always ','—'),(12,'Bosnian','Regina',' Bistra voda ','Clear water'),(13,'Romanian , English','Nelly Ciobanu',' Hora din Moldova ','Dance from Moldova'),(14,'English','Chiara',' What If We ','—'),(15,'Estonian','Urban Symphony',' Rändajad ','Nomads'),(16,'English','Niels Brinck',' Believe Again ','—'),(17,'English','Alex Swings Oscar Sings!',' Miss Kiss Kiss Bang ','—'),(18,'English','Hadise',' Düm Tek Tek ','— [A]'),(19,'English','Kejsi Tola',' Carry Me in Your Dreams ','—'),(20,'English','Alexander Rybak',' Fairytale ','—'),(21,'English','Svetlana Loboda',' Be My Valentine ','—'),(22,'English','Elena',' The Balkan Girls ','—'),(23,'English','Jade Ewen',' It is My Time ','—'),(24,'English','Waldo\\\'s People',' Lose Control ','—'),(25,'Spanish , English','Soraya Arnelas',' La noche es para mi ','The night is for me');
/*!40000 ALTER TABLE `Songs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-10  9:46:33
