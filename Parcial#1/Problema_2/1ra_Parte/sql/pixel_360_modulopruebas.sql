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
-- Table structure for table `modulopruebas`
--

DROP TABLE IF EXISTS `modulopruebas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modulopruebas` (
  `referencia` int NOT NULL,
  `descripcion` varchar(2000) DEFAULT NULL,
  `fechaIngreso` date DEFAULT NULL,
  `estado` enum('activo','desactivado') DEFAULT NULL,
  `nombreEmpleado` varchar(20) DEFAULT NULL,
  `apellidoEmpleado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`referencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulopruebas`
--

LOCK TABLES `modulopruebas` WRITE;
/*!40000 ALTER TABLE `modulopruebas` DISABLE KEYS */;
INSERT INTO `modulopruebas` VALUES (1001,'Prueba de Reconocimiento','2024-06-15','activo','Carlos','Carlos'),(1002,'Analisis de vulnerabilidades','2024-07-02','desactivado','Ana','López'),(1003,'Prueba de explotación','2024-08-20','activo','Juan','Martínez'),(1004,'Pruebas de escalar privilegios','2024-09-10','activo','María','González'),(1005,'Pruebas de reembolsos','2024-10-05','desactivado','Luis','Fernández'),(1006,'Pruevas de cancelaciones','2024-01-15','activo','Laura','Pérez'),(1007,'Pruebas de límites','2024-01-02','desactivado','José','Sánchez'),(1008,'Pruebas de Restricciones','2024-11-25','activo','Elena','Elena '),(1009,'Prueba de concuerrencia','2023-09-13','activo','Pedro','Díaz'),(1010,'Prueba de carga','2023-10-18','desactivado','Carmen','Morales'),(1011,'Pago con tarjeta expirada','2023-11-19','desactivado','Andrés','Romero'),(1012,'Prueba con cuenta sin suficientes fontos','2022-12-20','activo','Sofía','Torres'),(1013,'Pago con tarjeta de Débito','2022-05-16','activo','Diego','Vargas'),(1014,'Pago con Pay-Pal','2024-01-23','desactivado','Marta','Castro'),(1015,'Pago con datos equivocados','2020-03-21','activo','Javier','Rivas'),(1016,'Pago parcialmente completado','2022-05-12','activo','Natalia','Silva'),(1017,'Pago con diferentes monedas','2024-01-11','desactivado','Sergio','Ortiz'),(1018,'Pago con código promocional','2020-05-03','desactivado','Claudia','Flores'),(1019,'Pago con cheque electrónico','2024-02-27','activo','Miguel','Herrera'),(1020,'Pago con tarjeta de regalo','2023-05-18','desactivado','Isabel','Cruz');
/*!40000 ALTER TABLE `modulopruebas` ENABLE KEYS */;
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
