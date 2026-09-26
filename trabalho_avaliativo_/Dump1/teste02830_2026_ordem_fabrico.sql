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
-- Table structure for table `ordem_fabrico`
--

DROP TABLE IF EXISTS `ordem_fabrico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordem_fabrico` (
  `num_ordem` varchar(100) NOT NULL,
  `num_documento` int DEFAULT NULL,
  `num_funcionario` int DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  PRIMARY KEY (`num_ordem`),
  KEY `num_documento` (`num_documento`),
  KEY `num_funcionario` (`num_funcionario`),
  CONSTRAINT `ordem_fabrico_ibfk_1` FOREIGN KEY (`num_documento`) REFERENCES `documento` (`num_documento`),
  CONSTRAINT `ordem_fabrico_ibfk_2` FOREIGN KEY (`num_funcionario`) REFERENCES `funcionario` (`num_funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordem_fabrico`
--

LOCK TABLES `ordem_fabrico` WRITE;
/*!40000 ALTER TABLE `ordem_fabrico` DISABLE KEYS */;
INSERT INTO `ordem_fabrico` VALUES ('OF001/2018',1,101,'2018-01-05','2018-02-19'),('OF002/2018',5,105,'2018-01-08','2018-04-08'),('OF003/2018',7,104,'2018-01-09','2018-02-08'),('OF004/2018',9,103,'2018-01-10','2018-04-10'),('OF005/2018',10,108,'2018-01-10','2018-02-24'),('OF006/2018',14,102,'2018-01-12','2018-02-26'),('OF007/2018',16,107,'2018-01-13','2018-02-27'),('OF008/2018',20,106,'2018-01-15','2018-02-14');
/*!40000 ALTER TABLE `ordem_fabrico` ENABLE KEYS */;
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
