-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: sale-system
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `sale_customer`
--

DROP TABLE IF EXISTS `sale_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_customer` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL,
  `PHONE` bigint NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `GRADE` varchar(100) NOT NULL,
  `NOTE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_customer`
--

LOCK TABLES `sale_customer` WRITE;
/*!40000 ALTER TABLE `sale_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_goods`
--

DROP TABLE IF EXISTS `sale_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_goods` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL,
  `SOURCE` varchar(100) NOT NULL,
  `PRICE` double NOT NULL,
  `DATE` date NOT NULL,
  `NOTE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_goods`
--

LOCK TABLES `sale_goods` WRITE;
/*!40000 ALTER TABLE `sale_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_order`
--

DROP TABLE IF EXISTS `sale_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_order` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CUSTOMER_PHONE` bigint NOT NULL,
  `GOODS_ID` int NOT NULL,
  `AMOUNT` int NOT NULL,
  `DATE` datetime NOT NULL,
  `NOTE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_order`
--

LOCK TABLES `sale_order` WRITE;
/*!40000 ALTER TABLE `sale_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_store`
--

DROP TABLE IF EXISTS `sale_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_store` (
  `ADDRESS` varchar(100) NOT NULL,
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL,
  `STORAGE` varchar(100) NOT NULL,
  `GOODS_NUMBER` int NOT NULL,
  `NOTE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_store`
--

LOCK TABLES `sale_store` WRITE;
/*!40000 ALTER TABLE `sale_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_store_goods`
--

DROP TABLE IF EXISTS `sale_store_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_store_goods` (
  `STORE_ID` int NOT NULL,
  `GOODS_ID` int NOT NULL,
  `AMOUNT` int NOT NULL,
  `NOTE` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_store_goods`
--

LOCK TABLES `sale_store_goods` WRITE;
/*!40000 ALTER TABLE `sale_store_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_store_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_user`
--

DROP TABLE IF EXISTS `sale_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_user` (
  `PHONE` bigint NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `POSITION` varchar(100) NOT NULL,
  `NOTE` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_user`
--

LOCK TABLES `sale_user` WRITE;
/*!40000 ALTER TABLE `sale_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'sale-system'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-01 19:06:00
