CREATE DATABASE  IF NOT EXISTS `pet_shop_management` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pet_shop_management`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pet_shop_management
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Temporary view structure for view `sales_analysis`
--

DROP TABLE IF EXISTS `sales_analysis`;
/*!50001 DROP VIEW IF EXISTS `sales_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sales_analysis` AS SELECT 
 1 AS `orders_id`,
 1 AS `orders_date`,
 1 AS `orders_time`,
 1 AS `staff_name`,
 1 AS `customer_id`,
 1 AS `customer_name`,
 1 AS `staff_id`,
 1 AS `total`,
 1 AS `relevant`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `top_3_vendors`
--

DROP TABLE IF EXISTS `top_3_vendors`;
/*!50001 DROP VIEW IF EXISTS `top_3_vendors`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `top_3_vendors` AS SELECT 
 1 AS `staff_id`,
 1 AS `staff_name`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `order_consult`
--

DROP TABLE IF EXISTS `order_consult`;
/*!50001 DROP VIEW IF EXISTS `order_consult`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_consult` AS SELECT 
 1 AS `orders_id`,
 1 AS `orders_date`,
 1 AS `orders_time`,
 1 AS `staff_name`,
 1 AS `customer_id`,
 1 AS `customer_name`,
 1 AS `staff_id`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `top_3_customers`
--

DROP TABLE IF EXISTS `top_3_customers`;
/*!50001 DROP VIEW IF EXISTS `top_3_customers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `top_3_customers` AS SELECT 
 1 AS `customer_id`,
 1 AS `customer_name`,
 1 AS `total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_employees`
--

DROP TABLE IF EXISTS `total_employees`;
/*!50001 DROP VIEW IF EXISTS `total_employees`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_employees` AS SELECT 
 1 AS `staff_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `sales_analysis`
--

/*!50001 DROP VIEW IF EXISTS `sales_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sales_analysis` AS select `order_consult`.`orders_id` AS `orders_id`,`order_consult`.`orders_date` AS `orders_date`,`order_consult`.`orders_time` AS `orders_time`,`order_consult`.`staff_name` AS `staff_name`,`order_consult`.`customer_id` AS `customer_id`,`order_consult`.`customer_name` AS `customer_name`,`order_consult`.`staff_id` AS `staff_id`,`order_consult`.`total` AS `total`,`relevant_sales`(`order_consult`.`total`) AS `relevant` from `order_consult` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_3_vendors`
--

/*!50001 DROP VIEW IF EXISTS `top_3_vendors`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_3_vendors` AS select `order_consult`.`staff_id` AS `staff_id`,`order_consult`.`staff_name` AS `staff_name`,`order_consult`.`total` AS `total` from `order_consult` order by `order_consult`.`total` desc limit 3 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_consult`
--

/*!50001 DROP VIEW IF EXISTS `order_consult`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_consult` AS select `a`.`orders_id` AS `orders_id`,`a`.`orders_date` AS `orders_date`,`a`.`orders_time` AS `orders_time`,`c`.`staff_name` AS `staff_name`,`b`.`customer_id` AS `customer_id`,`b`.`customer_name` AS `customer_name`,`c`.`staff_id` AS `staff_id`,(select sum((`e`.`price` * `d`.`quantity`)) from (`order_products` `d` join `products` `e` on((`d`.`products_id` = `e`.`products_id`))) where (`d`.`orders_id` = `a`.`orders_id`)) AS `total` from ((`orders` `a` join `customer_data` `b` on((`a`.`customer_id` = `b`.`customer_id`))) join `staff_data` `c` on((`a`.`staff_id` = `c`.`staff_id`))) having (`total` is not null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_3_customers`
--

/*!50001 DROP VIEW IF EXISTS `top_3_customers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_3_customers` AS select `order_consult`.`customer_id` AS `customer_id`,`order_consult`.`customer_name` AS `customer_name`,`order_consult`.`total` AS `total` from `order_consult` order by `order_consult`.`total` desc limit 3 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_employees`
--

/*!50001 DROP VIEW IF EXISTS `total_employees`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_employees` AS select count(0) AS `staff_name` from `staff_data` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'pet_shop_management'
--

--
-- Dumping routines for database 'pet_shop_management'
--
/*!50003 DROP FUNCTION IF EXISTS `relevant_sales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `relevant_sales`(value integer) RETURNS varchar(20) CHARSET utf8mb4
    DETERMINISTIC
begin 
	DECLARE relevant varchar(50);
    IF value >= 50 THEN
		SET relevant = 'YES';
	ELSE
		SET relevant = 'NO';
	END IF;
	return relevant;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-30  9:36:15
