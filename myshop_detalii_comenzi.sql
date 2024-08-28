CREATE DATABASE  IF NOT EXISTS `myshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `myshop`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: myshop
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `detalii_comenzi`
--

DROP TABLE IF EXISTS `detalii_comenzi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalii_comenzi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_comanda` int DEFAULT NULL,
  `id_produs` int DEFAULT NULL,
  `cantitate` int DEFAULT NULL,
  `pret_total` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_produs` (`id_produs`),
  KEY `id_comanda` (`id_comanda`),
  CONSTRAINT `detalii_comenzi_ibfk_1` FOREIGN KEY (`id_produs`) REFERENCES `produse` (`id`),
  CONSTRAINT `detalii_comenzi_ibfk_2` FOREIGN KEY (`id_produs`) REFERENCES `produse` (`id`),
  CONSTRAINT `detalii_comenzi_ibfk_3` FOREIGN KEY (`id_comanda`) REFERENCES `comenzi` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalii_comenzi`
--

LOCK TABLES `detalii_comenzi` WRITE;
/*!40000 ALTER TABLE `detalii_comenzi` DISABLE KEYS */;
INSERT INTO `detalii_comenzi` VALUES (1,1,3,1,73),(2,2,4,2,164),(4,4,1,1,450),(5,5,2,2,346),(6,6,7,1,859);
/*!40000 ALTER TABLE `detalii_comenzi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-28  8:49:49
