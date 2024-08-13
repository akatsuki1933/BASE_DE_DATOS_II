-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: tallervista
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
-- Temporary view structure for view `proveedores_totalpartes`
--

DROP TABLE IF EXISTS `proveedores_totalpartes`;
/*!50001 DROP VIEW IF EXISTS `proveedores_totalpartes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `proveedores_totalpartes` AS SELECT 
 1 AS `Nombre_Proveedor`,
 1 AS `Total_Partes_Suministradas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `reporteproveedorespartes`
--

DROP TABLE IF EXISTS `reporteproveedorespartes`;
/*!50001 DROP VIEW IF EXISTS `reporteproveedorespartes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `reporteproveedorespartes` AS SELECT 
 1 AS `Proveedor`,
 1 AS `Parte`,
 1 AS `Color`,
 1 AS `Peso`,
 1 AS `Ciudad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `partes_caras`
--

DROP TABLE IF EXISTS `partes_caras`;
/*!50001 DROP VIEW IF EXISTS `partes_caras`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `partes_caras` AS SELECT 
 1 AS `Id_P`,
 1 AS `Parte`,
 1 AS `Color`,
 1 AS `Peso`,
 1 AS `Precio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `movimientos_londres`
--

DROP TABLE IF EXISTS `movimientos_londres`;
/*!50001 DROP VIEW IF EXISTS `movimientos_londres`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `movimientos_londres` AS SELECT 
 1 AS `Proveedor`,
 1 AS `Parte`,
 1 AS `Cantidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `proveedores_paris`
--

DROP TABLE IF EXISTS `proveedores_paris`;
/*!50001 DROP VIEW IF EXISTS `proveedores_paris`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `proveedores_paris` AS SELECT 
 1 AS `Id_V`,
 1 AS `Proveedor`,
 1 AS `Statuss`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `proveedores_totalpartes`
--

/*!50001 DROP VIEW IF EXISTS `proveedores_totalpartes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `proveedores_totalpartes` AS select `p`.`Proveedor` AS `Nombre_Proveedor`,sum(`t`.`Cantidad`) AS `Total_Partes_Suministradas` from (`taller` `t` join `proveedores` `p` on((`t`.`ProveedorId` = `p`.`Id_V`))) group by `p`.`Proveedor` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reporteproveedorespartes`
--

/*!50001 DROP VIEW IF EXISTS `reporteproveedorespartes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reporteproveedorespartes` AS select `pro`.`Proveedor` AS `Proveedor`,`part`.`Parte` AS `Parte`,`part`.`Color` AS `Color`,`part`.`Peso` AS `Peso`,`part`.`Ciudad` AS `Ciudad` from ((`proveedores` `pro` join `taller` `t` on((`pro`.`Id_V` = `t`.`ProveedorId`))) join `partes` `part` on((`t`.`NumeroParte` = `part`.`Id_P`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `partes_caras`
--

/*!50001 DROP VIEW IF EXISTS `partes_caras`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `partes_caras` AS select `partes`.`Id_P` AS `Id_P`,`partes`.`Parte` AS `Parte`,`partes`.`Color` AS `Color`,`partes`.`Peso` AS `Peso`,`partes`.`Precio` AS `Precio` from `partes` where (`partes`.`Precio` > 500) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `movimientos_londres`
--

/*!50001 DROP VIEW IF EXISTS `movimientos_londres`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `movimientos_londres` AS select `p`.`Proveedor` AS `Proveedor`,`pa`.`Parte` AS `Parte`,`t`.`Cantidad` AS `Cantidad` from ((`taller` `t` join `proveedores` `p` on((`t`.`ProveedorId` = `p`.`Id_V`))) join `partes` `pa` on((`t`.`NumeroParte` = `pa`.`Id_P`))) where ((`p`.`Ciudad` = 'Londres') and (`pa`.`Ciudad` = 'Londres')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `proveedores_paris`
--

/*!50001 DROP VIEW IF EXISTS `proveedores_paris`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `proveedores_paris` AS select `proveedores`.`Id_V` AS `Id_V`,`proveedores`.`Proveedor` AS `Proveedor`,`proveedores`.`Statuss` AS `Statuss` from `proveedores` where (`proveedores`.`Ciudad` = 'París') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-13  2:11:40
