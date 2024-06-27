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
-- Table structure for table `lineasproductos`
--

DROP TABLE IF EXISTS `lineasproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lineasproductos` (
  `id_lineaproducto` int NOT NULL,
  `nombreLinea` varchar(50) DEFAULT NULL,
  `textoDescripcion` varchar(4000) DEFAULT NULL,
  `htmlDescripcion` varchar(200) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `categoria` enum('Accesorios','Ropa','Hogar','Zapatos','Bebida') DEFAULT NULL,
  `marcaProducto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_lineaproducto`),
  UNIQUE KEY `marcaProducto` (`marcaProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineasproductos`
--

LOCK TABLES `lineasproductos` WRITE;
/*!40000 ALTER TABLE `lineasproductos` DISABLE KEYS */;
INSERT INTO `lineasproductos` VALUES (10,'Bebidas','Bebidas para todas las edades','<html><head><style>dl {display: block;margin-top: 1em;margin-bottom: 1em;margin-left: 0;margin-right: 0;}</style></head><body><dl><dt>Coca-cola</dt><dd>Bebidas</dd></dl></body></html>','https://ams3.digitaloceanspaces.com/graffica/2023/02/cocacola-logo.jpeg','Bebida','CocaCola'),(11,'Zapatillas','Buenas para deportes','<html><head><style>dl {display: block;margin-top: 1em;margin-bottom: 1em;margin-left: 0;margin-right: 0;}</style></head><body><dl><dt>Nike</dt><dd>Zapatillas</dd></dl></body></html>','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/a3e7dead-1ad2-4c40-996d-93ebc9df0fca/dunk-low-retro-zapatillas-wwlDHh.png','Zapatos','Nike'),(12,'Ropa','Comodas de uso casual','<html><head><style>dl {display: block;margin-top: 1em;margin-bottom: 1em;margin-left: 0;margin-right: 0;}</style></head><body><dl><dt>Camiseta de Algodón</dt><dd>Ropa</dd></dl></body></html>','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFfj04Gl1bcR-YiyoehYbxRb20N4ArHqpcTQ&s','Ropa','Patagonia'),(13,'Relojes','Elegantes para caballeros','<html><head><style>dl {display: block;margin-top: 1em;margin-bottom: 1em;margin-left: 0;margin-right: 0;}</style></head><body><dl><dt>Casio</dt><dd>Reloj</dd></dl></body></html>','https://images-cdn.ubuy.co.in/65229217a39c1b2fb0693551-casio-unisex-digital-watch-with-resin.jpg','Accesorios','Casio'),(14,'Decoración','Bueno para la casa','<html><head><style>dl {display: block;margin-top: 1em;margin-bottom: 1em;margin-left: 0;margin-right: 0;}</style></head><body><dl><dt>Taza de Cerámica</dt><dd>Decoración</dd></dl></body></html>','https://images.finenordic.com/image/69873-large-1671572257/greengate-latte-cup-alma-pale-blue.jpg','Hogar','GreenGate');
/*!40000 ALTER TABLE `lineasproductos` ENABLE KEYS */;
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
