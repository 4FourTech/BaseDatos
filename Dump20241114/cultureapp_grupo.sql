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
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo` (
  `nomGrupo` varchar(40) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `fechaCreacion` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `UsuarioCreador` varchar(40) NOT NULL,
  PRIMARY KEY (`nomGrupo`),
  KEY `CLE_idUsuarioCreadorGrupo_a_Usuario` (`UsuarioCreador`),
  CONSTRAINT `CLE_idUsuarioCreadorGrupo_a_Usuario` FOREIGN KEY (`UsuarioCreador`) REFERENCES `usuario` (`nomUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES ('Artistas','3dc1cf7c-226c-4f32-bd50-9486559a28b9.txt','2024-11-13 19:03:13','Joaquin'),('Bilingues','18ce5ce5-8a5b-4561-850b-c58e30d30b4c.txt','2024-11-13 18:55:31','Ivan'),('Ciudades del Mundo','e1569a9d-a716-45b7-8a1c-8b8248d50db1.txt','2024-11-13 19:09:54','German'),('Historiadores','391b397b-a8b4-4958-a72a-557bc1d05d29.txt','2024-11-13 19:14:16','Matias'),('Paseando','b6fd1393-a5a6-47f9-90cc-c5475624822c.txt','2024-11-14 18:59:53','German'),('Tecnotop','cfe2e4bf-cb71-4024-bf5f-bdf696ebcfd2.txt','2024-11-14 18:58:25','German');
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-14 19:01:42
