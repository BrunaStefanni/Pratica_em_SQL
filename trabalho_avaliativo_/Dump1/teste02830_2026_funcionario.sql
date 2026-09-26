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
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `num_funcionario` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `morada` varchar(200) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `localidade` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `cod_tipo_funcionario` int DEFAULT NULL,
  PRIMARY KEY (`num_funcionario`),
  KEY `cod_tipo_funcionario` (`cod_tipo_funcionario`),
  CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`cod_tipo_funcionario`) REFERENCES `tipo_funcionario` (`cod_tipo_funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (101,'Manuel Silva da Costa','Apartado 5432','3100-123','Pombal','236987123','1983-11-06',1112.50,2),(102,'Antoinne Villanova Teixeira','Praceta da Rainha Dona Leonor lote nº25','2480-567','Porto de Mós','244435645','1989-03-15',800.00,1),(103,'Ana Sofia Giao Simões','Rua da Marinha nº30','2400-567','Leiria','244765226','1980-04-05',944.71,1),(104,'João António Cabeças','Largo do Rio Seco nº8 1º Esq','2430-789','Marinha Grande','244987663','1944-06-19',800.00,1),(105,'Sonia Isabel Martins Toledo','Rua de Baixo nº1','2400-987','Leiria','244765632','2000-01-31',870.24,1),(106,'Filipe Sofio Jacinto','Monte do Fundo do Saco EN 109','2400-005','Leiria','244762549','1974-12-24',800.00,1),(107,'Maria Duarte Cravo','Largo Cova da Banha nº16','2450-543','Nazaré','262631348','1991-09-27',1270.32,1),(108,'Pedro Antão das Neves','Quinta California EN 242','2400-651','Leiria','244631348','2001-05-01',931.90,1);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-25 15:17:19
