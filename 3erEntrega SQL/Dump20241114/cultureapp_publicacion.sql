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
-- Table structure for table `publicacion`
--

DROP TABLE IF EXISTS `publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicacion` (
  `idPublicacion` int(11) NOT NULL AUTO_INCREMENT,
  `contenido` varchar(100) NOT NULL,
  `usuario` varchar(40) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idPublicacion`),
  UNIQUE KEY `contenido` (`contenido`),
  KEY `CLE_idUsuario_a_Usuario` (`usuario`),
  CONSTRAINT `CLE_idUsuario_a_Usuario` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`nomUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion`
--

LOCK TABLES `publicacion` WRITE;
/*!40000 ALTER TABLE `publicacion` DISABLE KEYS */;
INSERT INTO `publicacion` VALUES (3,'250aee29-0ac0-4cdd-9cf1-45b4d30e388b.txt','Ivan','2024-11-13 17:16:46'),(4,'a1c7b0ab-fa4c-4f6f-b180-e679bfe3f361.txt','Ivan','2024-11-13 17:18:42'),(5,'8eb42c24-7e2a-4d13-a36e-d0fa2f37d214.txt','Ivan','2024-11-13 17:20:29'),(6,'a97d18cd-58fa-45a0-ac77-964c3b66355f.txt','Ivan','2024-11-13 17:24:59'),(7,'a8e77f37-2f68-40b5-ba48-19a1ba569970.txt','Ivan','2024-11-13 17:38:17'),(8,'15434816-befa-4542-92b0-1c547a920a6b.txt','Ivan','2024-11-14 14:10:10'),(9,'cf59aa80-f942-4818-b1e3-18bca3d47323.txt','Ivan','2024-11-14 14:10:50'),(10,'e1b6760f-226b-4b5f-a09b-13b3a0566ead.txt','Ivan','2024-11-14 14:12:08'),(11,'84e3c68d-0a4f-4b38-ad0a-1dbb24580d84.txt','Ivan','2024-11-14 14:12:43'),(12,'31262350-5f23-489d-97d8-086ef93ebc00.txt','Ivan','2024-11-14 14:25:26'),(13,'27e7fd68-95a2-4979-9f66-aa6dadab2101.txt','Matias','2024-11-14 14:41:59'),(14,'3f8b13d4-62b3-417d-a593-190f91f807cd.txt','Matias','2024-11-14 14:42:36'),(15,'d9e2e101-e774-4e11-b30f-05e71bd844ae.txt','Matias','2024-11-14 14:42:55'),(16,'e11a124a-6c45-44c5-976e-4f60b23810c6.txt','Matias','2024-11-14 14:43:19'),(17,'12e9db4d-4a3f-41a7-b25b-a532e78f8b7f.txt','Matias','2024-11-14 14:43:35'),(18,'19c43a19-3930-4e83-8e2a-89f9ecfc2461.txt','German','2024-11-14 16:19:37'),(19,'bf792111-ffc7-4179-8f2a-4068ed777ee4.txt','Ivan','2024-11-14 16:20:04'),(20,'5181730e-7a9f-4b5e-a862-d96b79a9aa6e.txt','German','2024-11-14 18:50:18'),(21,'0ce843f5-a958-4ada-b540-a51dc05a5ef2.txt','German','2024-11-14 18:50:54'),(22,'cf7d5c1d-8a9b-4415-8f86-bf52f55d612f.txt','German','2024-11-14 18:51:08'),(23,'c3f864c8-3ce0-4231-8ad5-c7fb00fbd87a.txt','Santiago','2024-11-14 22:25:34'),(24,'7dbb8e4b-7182-4596-b879-a349acf9fc66.txt','Santiago','2024-11-14 22:26:07'),(25,'f491f22c-18d9-4ba8-94b3-864005152a04.txt','Santiago','2024-11-14 22:26:32'),(26,'fc91116d-eb0c-4420-8f0c-ea7e66575ab1.txt','Santiago','2024-11-14 22:27:35'),(27,'15b6f5db-c8a8-4de3-9a95-b3883048ffef.txt','Santiago','2024-11-14 22:27:46'),(28,'bbe8be27-73b7-4232-b766-4a2a57af69fb.txt','Santiago','2024-11-14 22:28:09'),(29,'e86db033-bbf5-413f-b460-04f7e50e45cb.txt','Santiago','2024-11-14 22:28:35');
/*!40000 ALTER TABLE `publicacion` ENABLE KEYS */;
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
