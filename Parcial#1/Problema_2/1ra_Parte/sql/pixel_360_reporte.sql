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
-- Table structure for table `reporte`
--

DROP TABLE IF EXISTS `reporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reporte` (
  `id_reporte` int NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(25) DEFAULT NULL,
  `referencia_prueba` int DEFAULT NULL,
  `fecha_reporte` date DEFAULT NULL,
  `detalles` text,
  `nivel_riesgo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_reporte`),
  KEY `nombre_usuario` (`nombre_usuario`),
  KEY `referencia_prueba` (`referencia_prueba`),
  CONSTRAINT `reporte_ibfk_1` FOREIGN KEY (`nombre_usuario`) REFERENCES `usuario` (`nombre_usuario`),
  CONSTRAINT `reporte_ibfk_2` FOREIGN KEY (`referencia_prueba`) REFERENCES `modulopruebas` (`referencia`)
) ENGINE=InnoDB AUTO_INCREMENT=20024 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporte`
--

LOCK TABLES `reporte` WRITE;
/*!40000 ALTER TABLE `reporte` DISABLE KEYS */;
INSERT INTO `reporte` VALUES (20004,'JuanP1',1001,'2024-01-15','Prueba de Reconocimiento completada con observaciones menores.','Bajo'),(20005,'MariaR5858',1002,'2024-01-16','Análisis de vulnerabilidades encontró varias vulnerabilidades críticas en el sistema.','Alto'),(20006,'CarlosG7878',1003,'2024-01-17','Prueba de explotación realizada sin problemas significativos.','Medio'),(20007,'AnaLop1234',1004,'2024-01-18','Pruebas de escalar privilegios completadas, vulnerabilidades menores corregidas.','Bajo'),(20008,'PedroM789',1005,'2024-01-19','Pruebas de reembolsos realizadas con riesgo moderado.','Medio'),(20009,'JuanR321',1006,'2024-01-20','Pruebas de cancelaciones identificaron puntos de entrada no autorizados en la red.','Alto'),(20010,'MariaP234',1007,'2024-01-21','Pruebas de límites completadas sin problemas importantes.','Bajo'),(20011,'LauraG987',1008,'2024-01-22','Pruebas de restricciones realizadas, vulnerabilidades menores encontradas.','Medio'),(20012,'DiegoF567',1009,'2024-01-23','Prueba de concurrencia encontró problemas críticos, se requiere atención inmediata.','Alto'),(20013,'SofiaT654',1010,'2024-01-24','Prueba de carga realizada, algunos riesgos identificados.','Medio'),(20014,'MartinS890',1011,'2024-01-25','Pago con tarjeta expirada completado sin vulnerabilidades significativas.','Bajo'),(20015,'ValentinaR210',1012,'2024-01-26','Prueba con cuenta sin suficientes fondos detectó riesgos moderados en la infraestructura de seguridad.','Medio'),(20016,'AndresG345',1013,'2024-01-27','Pago con tarjeta de Débito reveló vulnerabilidades críticas.','Alto'),(20017,'CamilaM876',1014,'2024-01-28','Pago con Pay-Pal completado, algunos problemas menores corregidos.','Bajo'),(20018,'AlejandroC678',1015,'2024-01-29','Pago con datos equivocados muestra riesgo moderado en el sistema.','Medio'),(20019,'LuciaJ543',1016,'2024-01-30','Pago parcialmente completado encontró varios problemas críticos en la red.','Alto'),(20020,'DanielS901',1017,'2024-01-31','Pago con diferentes monedas completado, vulnerabilidades menores encontradas.','Bajo'),(20021,'LuisaT098',1018,'2024-02-01','Pago con código promocional realizado con algunos problemas moderados.','Medio'),(20022,'JavierR432',1019,'2024-02-02','Pago con cheque electrónico identificó vulnerabilidades críticas.','Alto'),(20023,'IsabellaG765',1020,'2024-02-03','Pago con tarjeta de regalo completado sin problemas significativos.','Bajo');
/*!40000 ALTER TABLE `reporte` ENABLE KEYS */;
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
