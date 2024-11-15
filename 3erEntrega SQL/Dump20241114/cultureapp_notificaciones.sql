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
-- Table structure for table `notificaciones`
--

DROP TABLE IF EXISTS `notificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificaciones` (
  `idNotificacion` int(11) NOT NULL AUTO_INCREMENT,
  `usuarioDestino` varchar(50) NOT NULL,
  `mensaje` text NOT NULL,
  `fechaEnvio` datetime NOT NULL DEFAULT current_timestamp(),
  `estado` varchar(20) NOT NULL DEFAULT 'No Leída',
  PRIMARY KEY (`idNotificacion`),
  KEY `CLE_UsuarioDestino_a_Usuario` (`usuarioDestino`),
  CONSTRAINT `CLE_UsuarioDestino_a_Usuario` FOREIGN KEY (`usuarioDestino`) REFERENCES `usuario` (`nomUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificaciones`
--

LOCK TABLES `notificaciones` WRITE;
/*!40000 ALTER TABLE `notificaciones` DISABLE KEYS */;
INSERT INTO `notificaciones` VALUES (12,'German','Nueva publicación creada con el hashtag #Comida','2024-11-14 14:25:26','No Leída'),(13,'Ivan','Nueva publicación creada con el hashtag #Comida','2024-11-14 14:25:26','Leida'),(14,'Joaquin','Nueva publicación creada con el hashtag #Comida','2024-11-14 14:25:26','No Leída'),(15,'Matias','Nueva publicación creada con el hashtag #Comida','2024-11-14 14:25:26','No Leída'),(16,'German','Nueva publicación creada con el hashtag #Comida','2024-11-14 14:41:59','No Leída'),(17,'Ivan','Nueva publicación creada con el hashtag #Comida','2024-11-14 14:41:59','No Leída'),(18,'Joaquin','Nueva publicación creada con el hashtag #Comida','2024-11-14 14:41:59','No Leída'),(19,'Matias','Nueva publicación creada con el hashtag #Comida','2024-11-14 14:41:59','No Leída'),(20,'German','Nueva publicación creada con el hashtag #Animales','2024-11-14 14:42:36','No Leída'),(21,'Ivan','Nueva publicación creada con el hashtag #Animales','2024-11-14 14:42:36','No Leída'),(22,'Joaquin','Nueva publicación creada con el hashtag #Animales','2024-11-14 14:42:36','No Leída'),(23,'Matias','Nueva publicación creada con el hashtag #Animales','2024-11-14 14:42:36','No Leída'),(24,'German','Nueva publicación creada con el hashtag #Turismo','2024-11-14 14:42:55','No Leída'),(25,'Ivan','Nueva publicación creada con el hashtag #Turismo','2024-11-14 14:42:55','No Leída'),(26,'Joaquin','Nueva publicación creada con el hashtag #Turismo','2024-11-14 14:42:55','No Leída'),(27,'Matias','Nueva publicación creada con el hashtag #Turismo','2024-11-14 14:42:55','No Leída'),(28,'German','Nueva publicación creada con el hashtag #Ciudades','2024-11-14 14:43:19','No Leída'),(29,'Ivan','Nueva publicación creada con el hashtag #Ciudades','2024-11-14 14:43:19','Leida'),(30,'Joaquin','Nueva publicación creada con el hashtag #Ciudades','2024-11-14 14:43:19','No Leída'),(31,'Matias','Nueva publicación creada con el hashtag #Ciudades','2024-11-14 14:43:19','No Leída'),(32,'German','Nueva publicación creada con el hashtag #Tecnología','2024-11-14 14:43:35','No Leída'),(33,'Ivan','Nueva publicación creada con el hashtag #Tecnología','2024-11-14 14:43:35','No Leída'),(34,'Joaquin','Nueva publicación creada con el hashtag #Tecnología','2024-11-14 14:43:35','No Leída'),(35,'Matias','Nueva publicación creada con el hashtag #Tecnología','2024-11-14 14:43:35','No Leída');
/*!40000 ALTER TABLE `notificaciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-14 22:29:55
