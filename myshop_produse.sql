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
-- Table structure for table `produse`
--

DROP TABLE IF EXISTS `produse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produse` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nume_produs` varchar(30) DEFAULT NULL,
  `categorie_produs` varchar(40) DEFAULT NULL,
  `pret_vanzare` float(5,2) DEFAULT NULL,
  `stoc_disponibil` int DEFAULT NULL,
  `descriere_produs` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produse`
--

LOCK TABLES `produse` WRITE;
/*!40000 ALTER TABLE `produse` DISABLE KEYS */;
INSERT INTO `produse` VALUES (1,'Antemergator','Jucarii Montessori',450.00,22,'Antemergator 6 in 1 cu ceas labirint, abac, forme geometrice, puzzle 3D, din lemn'),(2,'Ceas copii','Jucarii Monteessori',173.00,41,'Ceas educativ Montessori, multicolor, lemn, 15 cm diametru'),(3,'Puzzle 3D','Jucarii Montessori',31.00,73,'Puzzle educativ Montessori cu 6 fete, caracatita, delfin, broasca testoasa, rac, crab, rechin. Jucarie din lemn cu dimensiuni 15x15x5, 9 piese'),(4,'Joc educativ matematic','Jucarii Montessori',82.00,20,'Joc educativ matematic Montessori abac, cu cercuri si coloane, lemne, multicolor. Dimensiuni 35x5x12 cm, 56 piese.'),(5,'Balance Board','Mobilier copii',480.00,17,'Placa de echilibru din lemn, ce ajuta imbunatatirea coordonarii motrice. Design minimalist. Adecvat pentru toate varstele. Sarcina maxima 200kg.'),(6,'Pink Lemon','Jucarii organice',159.00,36,'Jucarie muzicala din bumbac organic, ce ii permite copilului sa adoarma mai usor'),(7,'Marsupiu ISARA','Marsupii ergonomice',859.00,36,'Marsupiu ajustabil, marime unica, realizat din bumbac organic, potrivit inca de la nastere. Sarcina maxima: 15 kg');
/*!40000 ALTER TABLE `produse` ENABLE KEYS */;
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
