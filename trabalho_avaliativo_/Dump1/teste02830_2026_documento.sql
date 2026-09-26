-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: teste02830_2026
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `documento`
--

DROP TABLE IF EXISTS `documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documento` (
  `num_documento` int NOT NULL,
  `cliente` int DEFAULT NULL,
  `data_documento` date DEFAULT NULL,
  `estado_documento` int DEFAULT NULL,
  PRIMARY KEY (`num_documento`),
  KEY `cliente` (`cliente`),
  KEY `estado_documento` (`estado_documento`),
  CONSTRAINT `documento_ibfk_1` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`num_cliente`),
  CONSTRAINT `documento_ibfk_2` FOREIGN KEY (`estado_documento`) REFERENCES `estado_documento` (`cod_estado_documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documento`
--

LOCK TABLES `documento` WRITE;
/*!40000 ALTER TABLE `documento` DISABLE KEYS */;
INSERT INTO `documento` VALUES (1,1,'2018-01-05',2),(2,3,'2018-01-05',1),(3,8,'2018-01-06',3),(4,7,'2018-01-07',3),(5,6,'2018-01-08',2),(6,8,'2018-01-08',1),(7,6,'2018-01-09',2),(8,5,'2018-01-09',3),(9,5,'2018-01-10',2),(10,2,'2018-01-10',2),(11,4,'2018-01-11',3),(12,2,'2018-01-11',1),(13,1,'2018-01-12',1),(14,1,'2018-01-12',2),(15,8,'2018-01-13',3),(16,6,'2018-01-13',2),(17,4,'2018-01-14',1),(18,3,'2018-01-14',3),(19,7,'2018-01-15',3),(20,7,'2018-01-15',2);
/*!40000 ALTER TABLE `documento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-25 15:17:20
