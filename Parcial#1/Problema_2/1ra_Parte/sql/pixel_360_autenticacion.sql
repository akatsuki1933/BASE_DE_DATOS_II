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
-- Table structure for table `autenticacion`
--

DROP TABLE IF EXISTS `autenticacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autenticacion` (
  `nombre_usuario` varchar(25) DEFAULT NULL,
  `Token` int NOT NULL,
  `contraseña` varchar(20) DEFAULT NULL,
  `agente_usuario` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autenticacion`
--

LOCK TABLES `autenticacion` WRITE;
/*!40000 ALTER TABLE `autenticacion` DISABLE KEYS */;
INSERT INTO `autenticacion` VALUES ('AnaLop1234',1234,'Al#12$34','Android Browser'),('LuisaT098',1548,'Lt@5432!','OneNote'),('MariaP234',2341,'Mp#8765!','Nintendo Browser'),('ValentinaR210',2710,'Vr#7654%','Edge'),('AndresG345',3495,'Ag&4321!','iBrowser'),('JuanR321',3921,'Jr!@345^','OneNote'),('JuanP1',4545,'Jp#2021!','Chrome'),('CamilaM876',4876,'Cm*6789^','iBrowser'),('LuciaJ543',5463,'Lj#9876!','Opera'),('DiegoF567',5667,'Df*6789%','Chrome'),('MariaR5858',5858,'Mr@P4n4m@','Opera'),('AlejandroC678',6078,'Ac@3456#','Android Browser'),('SofiaT654',6547,'St@4321!','Cyberfox'),('IsabellaG765',7265,'Ig*2109$','iBrowser'),('CarlosG7878',7878,'Cg*9876^','WeChat'),('PedroM789',7879,'Pm@8907!','Edge'),('MartinS890',8950,'Ms!0987^','WeChat'),('JavierR432',9432,'Jr&8765%','Android Browser'),('LauraG987',9587,'Lg&5432#','Opera'),('DanielS901',9601,'Ds*4321$','Chrome');
/*!40000 ALTER TABLE `autenticacion` ENABLE KEYS */;
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
