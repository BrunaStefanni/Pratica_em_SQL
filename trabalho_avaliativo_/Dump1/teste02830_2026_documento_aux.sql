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
-- Table structure for table `documento_aux`
--

DROP TABLE IF EXISTS `documento_aux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documento_aux` (
  `num_ordem` varchar(50) NOT NULL,
  `referencia` varchar(50) NOT NULL,
  `quantidade` int NOT NULL,
  PRIMARY KEY (`num_ordem`,`referencia`),
  KEY `referencia` (`referencia`),
  CONSTRAINT `documento_aux_ibfk_1` FOREIGN KEY (`num_ordem`) REFERENCES `ordem_fabrico` (`num_ordem`),
  CONSTRAINT `documento_aux_ibfk_2` FOREIGN KEY (`referencia`) REFERENCES `referencia_peca` (`referencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documento_aux`
--

LOCK TABLES `documento_aux` WRITE;
/*!40000 ALTER TABLE `documento_aux` DISABLE KEYS */;
INSERT INTO `documento_aux` VALUES ('OF001/2018','STG001',16),('OF001/2018','STG002',5),('OF002/2018','STG003',23),('OF003/2018','STG001',31),('OF004/2018','STG002',2),('OF004/2018','STG003',4),('OF005/2018','STG003',47),('OF006/2018','STG002',19),('OF007/2018','STG001',49),('OF007/2018','STG002',78),('OF008/2018','STG003',65);
/*!40000 ALTER TABLE `documento_aux` ENABLE KEYS */;
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
