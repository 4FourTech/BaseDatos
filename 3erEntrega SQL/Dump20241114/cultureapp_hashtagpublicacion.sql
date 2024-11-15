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
-- Table structure for table `hashtagpublicacion`
--

DROP TABLE IF EXISTS `hashtagpublicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hashtagpublicacion` (
  `idPublicacion` int(11) NOT NULL,
  `nomHashtag` varchar(15) NOT NULL,
  PRIMARY KEY (`idPublicacion`,`nomHashtag`),
  CONSTRAINT `CLE_IdPublicacionHashtag_a_Publicacion` FOREIGN KEY (`idPublicacion`) REFERENCES `publicacion` (`idPublicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hashtagpublicacion`
--

LOCK TABLES `hashtagpublicacion` WRITE;
/*!40000 ALTER TABLE `hashtagpublicacion` DISABLE KEYS */;
INSERT INTO `hashtagpublicacion` VALUES (3,'Ciudades'),(4,'Localidades'),(5,'Historia'),(6,'Religiones'),(7,'Arte'),(8,'Religiones'),(12,'Comida'),(13,'Comida'),(14,'Animales'),(15,'Turismo'),(16,'Ciudades'),(17,'Tecnología'),(18,'Arte'),(20,'Religiones'),(21,'Historia'),(22,'Historia'),(23,'Turismo'),(24,'Historia'),(25,'Ciudades'),(26,'Historia'),(27,'Historia'),(28,'Turismo'),(29,'Paisajes');
/*!40000 ALTER TABLE `hashtagpublicacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-14 22:29:56
