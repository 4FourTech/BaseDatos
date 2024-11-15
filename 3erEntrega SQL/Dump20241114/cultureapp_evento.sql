-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: cultureapp
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento` (
  `nomEvento` varchar(40) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFinalizacion` date NOT NULL,
  `UsuarioCreador` varchar(40) NOT NULL,
  PRIMARY KEY (`nomEvento`),
  KEY `CLE_idUsuarioCreadorEvento_a_Usuario` (`UsuarioCreador`),
  CONSTRAINT `CLE_idUsuarioCreadorEvento_a_Usuario` FOREIGN KEY (`UsuarioCreador`) REFERENCES `usuario` (`nomUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES ('Allah','b737cc70-b213-4272-8c2a-f6e6ec38b41a.txt','2024-11-22','2024-11-23','Joaquin'),('Iglesia','2714b0e2-3f3e-4a1c-80ad-3c0d5713156d.txt','2024-11-28','2024-12-07','Ivan'),('LibrosH','8c0bd3e6-f2c1-46cf-b821-2c03289ccb9b.txt','2024-11-21','2024-11-22','German'),('Museo','a029f3f6-36bd-43e1-8549-74feacd820ef.txt','2024-11-28','2024-11-29','Ivan'),('Pablo','0c0eaba0-8767-4c52-a58b-3e8494bb9ae0.txt','2024-11-29','2024-11-30','Ivan'),('Paisajista','4ae94c7c-020e-4eb6-bc78-3b19e2e440db.txt','2024-11-21','2024-11-23','Joaquin'),('Pepe','bddf169d-7abf-4bb2-84fa-31e36d9c2a4a.txt','2024-11-20','2024-11-21','Joaquin'),('Restaurante','3990eb62-cfc1-44a4-97ad-157c32567cab.txt','2024-11-30','2025-03-07','Ivan'),('Silvestre','79671c2d-8f26-49db-8a3b-d675724c30cc.txt','2024-11-20','2024-11-27','German'),('Viajecito','0f7aa5cc-4263-48bd-94b5-052896da6d39.txt','2024-11-20','2024-11-21','German');
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-14 19:01:41
