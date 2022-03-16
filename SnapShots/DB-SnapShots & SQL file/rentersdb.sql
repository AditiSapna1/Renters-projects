-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: localhost    Database: rentersdb
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_login` (
  `id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_login`
--

LOCK TABLES `admin_login` WRITE;
/*!40000 ALTER TABLE `admin_login` DISABLE KEYS */;
INSERT INTO `admin_login` VALUES ('admin','admin');
/*!40000 ALTER TABLE `admin_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `renter_id` int(11) NOT NULL,
  `month` varchar(45) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_date` date NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (2,2,'September-2021',5200,'2021-09-19'),(3,1,'February-2021',5400,'2021-09-19'),(4,1,'March-2021',5400,'2021-09-03'),(5,1,'April-2021',5400,'2021-09-04');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `renters`
--

DROP TABLE IF EXISTS `renters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `renters` (
  `renter_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `aadhaar` varchar(15) NOT NULL,
  `address` varchar(300) NOT NULL,
  `room_no` varchar(45) NOT NULL,
  `rent` int(11) NOT NULL,
  `security` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`renter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renters`
--

LOCK TABLES `renters` WRITE;
/*!40000 ALTER TABLE `renters` DISABLE KEYS */;
INSERT INTO `renters` VALUES (1,'Ram Kumar','9879879879','Ramesh Kumar','Male','789678567234','sdfdsf  frf rw gr gerger','a103',5400,5000,'2021-09-01',NULL,'Active'),(2,'Golu Singh','7897897897','Bholu Singh','Male','878797798778','jhgfjh dfgkv fgivgkduf','a103',5200,6000,'2021-09-01',NULL,'Active'),(3,'Tina Gupta','9876987698','Mohan Gupta','Female','876787887545','dfgfg nrkkfgf sdjgjvsdg','b101',4500,5000,'2021-09-02','2021-09-19','deactive');
/*!40000 ALTER TABLE `renters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `room_no` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `ac` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `floor` int(11) NOT NULL,
  `vacant_bed` int(11) NOT NULL,
  PRIMARY KEY (`room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES ('a101',6000,'AC','Double',0,2),('a102',6500,'AC','Single',0,1),('a103',5500,'Non-AC','Triple',0,1),('a104',4500,'Non-AC','Double',0,2),('b101',4500,'Non-AC','Triple',1,3),('b102',6000,'AC','Double',1,2),('c101',4500,'Non-AC','Triple',2,3);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-20 11:51:32
