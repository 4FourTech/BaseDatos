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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `nomUsuario` varchar(40) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `nomPerfil` varchar(40) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `fotoPerfil` varchar(255) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `pais` varchar(40) NOT NULL,
  `genero` varchar(9) DEFAULT NULL,
  `telefono` int(9) DEFAULT NULL,
  `estado` varchar(8) NOT NULL DEFAULT 'activo',
  PRIMARY KEY (`nomUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('German','28561c6b68fca875e23c3e7832ec04e9de88fc97ca07420b7855fc4abd9438c9','German Pereira','german08gmail.com','026bd12a-bf39-47c9-b20d-56be20d2fd61.jpg','2000-08-18','Chile','Masculino',95778698,'activo'),('Ivan','cd0b9452fc376fc4c35a60087b366f70d883fc901524daf1f122fbd319384f6a','Ivan Mendez','ivanmendez01@gmail.com','7133ba48-02cc-4d37-bb02-fdb5c21ab748.jpg','2000-03-25','Agentina','Masculino',95886688,'activo'),('Joaquin','5065fb9ca95ac79ffc4cfc8b30e99c975bccea5d0e245ddec9b3eefdf86087ac','Joaquin Rey','joaquinrey@gmail.com','a21da6e7-f3d6-4981-a6a4-9689cf74c34f.jpg','2003-03-20','Agentina','Masculino',95446683,'activo'),('Matias','602a0abb57d67c562bcda242a6733514c7aac60e4b179cc6e7ff6f769371a6da','Matias Barreiro','matiasbar@gmail.com','0611865f-003b-4bfd-bf1d-69c2fac58f59.jpg','1991-03-15','España','Masculino',95443321,'activo');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
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
