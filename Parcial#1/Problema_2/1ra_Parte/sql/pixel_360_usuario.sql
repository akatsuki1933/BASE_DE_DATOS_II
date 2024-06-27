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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `nombre_usuario` varchar(25) NOT NULL,
  `token` int DEFAULT NULL,
  `contraseña` varchar(20) DEFAULT NULL,
  `ciudad` varchar(20) DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `estado_civil` enum('soltero','casado','viudo','divorciado') DEFAULT NULL,
  `tipo_empresa` enum('pública','privada') DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`nombre_usuario`),
  KEY `token` (`token`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`token`) REFERENCES `autenticacion` (`Token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('Alejandro','Castro','AlejandroC678',6078,'Ac@3456#','Colón','M','soltero','privada','calle 9 Este'),('Ana','López','AnaLop1234',1234,'Al#12$34','Santiago','F','casado','pública','Avenida Santiago Barraza, Barrio Balboa'),('Andrés','González','AndresG345',3495,'Ag&4321!','Santiago','M','casado','privada','calle 2 Sur'),('Camila','Morales','CamilaM876',4876,'Cm*6789^','Chitré','F','divorciado','pública','calle 5 Norte'),('Carlos','Gómez','CarlosG7878',7878,'Cg*9876^','Panamá','M','divorciado','privada','calle Riba Smith Quinta Ana'),('Daniel','Silva','DanielS901',9601,'Ds*4321$','David','M','divorciado','privada','calle 8 Oeste'),('Diego','Fernández','DiegoF567',5667,'Df*6789%','La Chorrera','M','soltero','privada','calle Principal'),('Isabella','González','IsabellaG765',7265,'Ig*2109$','Panamá','F','divorciado','pública','calle 12'),('Javier','Ramírez','JavierR432',9432,'Jr&8765%','Chitré','M','casado','privada','calle 6 Norte'),('Juan','Pérez','JuanP1',4545,'Jp#2021!','Panamá','M','casado','privada','Avenida B calle 7'),('Juan','Rodríguez','JuanR321',3921,'Jr!@345^','David','M','casado','pública','Avenida 4 Norte'),('Laura','García','LauraG987',9587,'Lg&5432#','Colón','F','divorciado','pública','calle 11 Este'),('Lucía','Jiménez','LuciaJ543',5463,'Lj#9876!','Panamá','F','casado','pública','calle 10'),('Luisa','Torres','LuisaT098',1548,'Lt@5432!','Santiago','F','soltero','pública','calle 7 Sur'),('María','Pérez','MariaP234',2341,'Mp#8765!','Chitré','F','soltero','privada','calle Central'),('María','Rodríguez','MariaR5858',5858,'Mr@P4n4m@','Panamá','F','soltero','privada','calle Andres casa Azul'),('Martín','Sánchez','MartinS890',8950,'Ms!0987^','David','M','divorciado','privada','calle 3 Norte'),('Pedro','Martínez','PedroM789',7879,'Pm@8907!','Ciudad de Panamá','M','soltero','privada','calle 7 Oeste'),('Sofía','Torres','SofiaT654',6547,'St@4321!','Panamá','F','casado','pública','calle 50'),('Valentina','Ramírez','ValentinaR210',2710,'Vr#7654%','Penonomé','F','soltero','pública','calle 4 Oeste');
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

-- Dump completed on 2024-06-27  2:04:43
