-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: pixel_360
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `id_pagos` int NOT NULL,
  `numeroTarjeta` varchar(20) DEFAULT NULL,
  `CVC` int DEFAULT NULL,
  `fechaExpiracion` varchar(10) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `nombre_usuario` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_pagos`),
  KEY `nombre_usuario` (`nombre_usuario`),
  CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`nombre_usuario`) REFERENCES `usuario` (`nombre_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (101,'4532015112226789',123,'06-2029','Juan','Pérez','JuanP1'),(102,'3714496353984312',98,'09-2031','María','Rodríguez','MariaR5858'),(103,'6011111111111117',456,'12-2028','Carlos','Gómez','CarlosG7878'),(104,'5555555555554444',765,'03-2026','Ana','López','AnaLop1234'),(105,'4111111111111111',789,'07-2030','Pedro','Martínez','PedroM789'),(106,'5105105105105100',321,'11-2035','Juan','Rodríguez','JuanR321'),(107,'6011000990139424',234,'04-2027','María','Pérez','MariaP234'),(108,'3530111333300000',987,'08-2037','Laura','García','LauraG987'),(109,'6011601160116611',567,'01-2039','Diego','Fernández','DiegoF567'),(110,'6011000995500000',654,'06-2042','Sofía','Torres','SofiaT654'),(111,'6011000995500011',890,'11-2041','Martín','Sánchez','MartinS890'),(112,'6011000995500002',210,'05-2040','Valentina','Ramírez','ValentinaR210'),(113,'6011000995500112',345,'12-2036','Andrés','González','AndresG345'),(114,'6011000995500125',876,'10-2033','Camila','Morales','CamilaM876'),(115,'6011000995500130',678,'11-2028','Alejandro','Castro','AlejandroC678'),(116,'6011000995500145',543,'01-2031','Lucía','Jiménez','LuciaJ543'),(117,'6011000995500052',901,'04-2026','Daniel','Silva','DanielS901'),(118,'6011000995500100',98,'01-2028','Luisa','Torres','LuisaT098'),(119,'6011000995500190',432,'04-2029','Javier','Ramírez','JavierR432'),(120,'6011000995500070',765,'11-2031','Isabella','González','IsabellaG765');
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-27  2:04:43
