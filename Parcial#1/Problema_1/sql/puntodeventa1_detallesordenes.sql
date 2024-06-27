-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: puntodeventa1
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
-- Table structure for table `detallesordenes`
--

DROP TABLE IF EXISTS `detallesordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detallesordenes` (
  `id_orden` int NOT NULL,
  `id_producto` varchar(15) NOT NULL,
  `cantidadPedida` int NOT NULL,
  `valorUnitario` double NOT NULL,
  `ordenEntrega` int NOT NULL,
  `numeroDetalle` varchar(20) DEFAULT NULL,
  `estadoEntrega` enum('Pendiente','En tránsito','Entregado') DEFAULT NULL,
  PRIMARY KEY (`id_orden`,`id_producto`),
  UNIQUE KEY `numeroDetalle` (`numeroDetalle`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `detallesordenes_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  CONSTRAINT `detallesordenes_ibfk_2` FOREIGN KEY (`id_orden`) REFERENCES `ordenes` (`id_orden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallesordenes`
--

LOCK TABLES `detallesordenes` WRITE;
/*!40000 ALTER TABLE `detallesordenes` DISABLE KEYS */;
INSERT INTO `detallesordenes` VALUES (1,'21',50,1.85,1,'EE001','Pendiente'),(2,'22',10,110.95,2,'EE002','En tránsito'),(3,'23',50,25.99,3,'EE003','Entregado'),(4,'24',100,49.99,4,'EE004','Pendiente'),(5,'25',30,19.99,5,'EE005','Pendiente');
/*!40000 ALTER TABLE `detallesordenes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-27  2:05:42
