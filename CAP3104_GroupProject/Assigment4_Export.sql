CREATE DATABASE  IF NOT EXISTS `requirements` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `requirements`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: requirements
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `priority`
--

DROP TABLE IF EXISTS `priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `priority` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `priorityValue` int DEFAULT NULL,
  `priorityText` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priority`
--

LOCK TABLES `priority` WRITE;
/*!40000 ALTER TABLE `priority` DISABLE KEYS */;
INSERT INTO `priority` VALUES (1,1,'High'),(2,2,'Medium-High'),(3,3,'Medium'),(4,4,'Medium-Low'),(5,5,'Low');
/*!40000 ALTER TABLE `priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requirement`
--

DROP TABLE IF EXISTS `requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requirement` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `requirementNumber` varchar(13) DEFAULT NULL,
  `requirementText` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requirement`
--

LOCK TABLES `requirement` WRITE;
/*!40000 ALTER TABLE `requirement` DISABLE KEYS */;
INSERT INTO `requirement` VALUES (1,'3.2.1.1.1','An icon shall be selected during detailed design to show a gate in a closed position.'),(2,'3.2.1.1.2','An icon shall be selected during detailed design to show a gate in an open position.'),(3,'3.2.1.1.3','An icon shall be selected during detailed design to show a gate in a partially open, 15%, open position.'),(4,'3.2.1.1.4','The gate icon shall be configurable to show the name of the gate with the icon.'),(5,'3.2.1.1.5','The gate icon shall be configurable to show the state of the gate: e.g., open or close.'),(6,'3.2.1.1.6','The gate icon shall be configurable to show the status of the gate, operational, failed, or no data. The color of the gate icon shall be changed to show the status of the gate.'),(7,'3.2.1.1.7','When the operator moves the mouse over a gate icon a text window shall be displayed showing a summary of the gate status.'),(8,'3.2.1.1.8','The operator shall be able to activate a detailed device status window for the selected gate by double left clicking on the icon. This action shall cause a circle to be displayed over the gate icon for as long as the detailed device status window is displayed for that gate.'),(9,'3.2.1.1.9','The operator shall be able to activate a device control window for the selected gate by right clicking on the icon. The right click on the icons shall display a pop-up menu of available device actions from which the user may select. This action shall cause a circle to be displayed over the gate icon for as long as the device control window is displayed for that gate.'),(10,'3.2.1.2.1','An icon shall be selected during detailed design to indicate a group of popups in an ?Up? or entrance closed position.'),(11,'3.2.1.2.2','An icon shall be selected during detailed design to indicate a group of popups in a ?Down? or entrance opened position.'),(12,'3.2.1.2.3','An icon shall be selected during detailed design to indicate a failure status when some popups in a group are in a \"Down\" position and some popups in the same group are in an \"Up\" position.'),(13,'3.2.1.2.4','The popup icon shall be configurable to display the name of the popup group.'),(14,'3.2.1.2.5','The popup icon shall be configurable to display the state of the popup group: up or down.'),(15,'3.2.1.2.6','The popup icon shall be configurable to display the status of the popup group. The color of the icon shall be changed to show the status of the popup group.'),(16,'3.2.1.2.7','When the operator moves the mouse over a popup icon a text window shall be displayed showing a summary of the popup group status.'),(17,'3.2.1.2.8','The operator shall be able to activate a detailed device status window for the selected popup group by double left clicking on the icon. A circle shall be displayed over the icon as long as the detailed status window is displayed for the icon.'),(18,'3.2.1.2.9','The operator shall be able to activate a device control window for the selected popup by right clicking on the icon. The right click on the icon shall display a pop-up menu of available device actions from which the user may select. A circle shall be displayed over the icon as long as the device control window is displayed for the icon.'),(19,'3.2.1.3.1','An icon shall be selected during detailed design to indicate changeable message signs.'),(20,'3.2.1.3.2','An icon shall be selected during detailed design to indicate a changeable message sign that is displaying a message.'),(21,'3.2.1.3.3','The CMS icon shall be configurable to display the name of the sign with the icon.'),(22,'3.2.1.3.4','The CMS icon shall be configurable to display an abbreviated message text with the icon.'),(23,'3.2.1.3.5','The CMS icon shall be configurable to display the status of the sign associated with the icon. The CMS icon color shall represent the operational status of the CMS sign: green for operational, yellow for operational with errors, gray for no communications and red for failed.'),(24,'3.2.1.3.6','If the operator moves the mouse over the CMS icon then a text window shall be displayed with a summary of the operational state and status of the sign and the text of any message being displayed on the sign.'),(25,'3.2.1.3.7','The operator shall be able to activate a detailed device status window for the sign by double left clicking on the selected icon. A circle shall be displayed over the icon as long as the detailed device status window is displayed for that icon.'),(26,'3.2.1.3.8','The operator shall be able to activate a device control window for the CMS sign by right clicking on the selected icon. The right click on the icon shall display a pop-up menu of available device actions from which the user may select. A circle shall be displayed over the icon as long as the device control window is displayed for that icon.'),(27,'3.2.2.3.8.1','If operation of the device is locked out for safety reasons a command option will be ?grayed out? and not selectable.'),(28,'3.2.1.4.1','An icon shall be selected to indicate a CCTV camera.'),(29,'3.2.1.4.2','The camera icon shall be configurable to show the name of the camera with the icon.'),(30,'3.2.1.4.3','The camera icon shall be configurable to show the state of the camera.'),(31,'3.2.1.4.4','The camera icon shall be configurable to show the status of the camera. The color of the camera icon shall be changed to show the status of the camera.'),(32,'3.2.1.4.5','When a user moves the mouse over a camera icon a text window shall be displayed showing a summary of the camera status.'),(33,'3.2.1.4.6','The user shall be able to activate a detailed device status window for the selected camera by double left clicking on the icon. This action shall cause a circle to be displayed over the camera icon for as long as the detailed device status window is displayed for that camera.'),(34,'3.2.1.4.7','The user shall be able to activate a device control window for the selected camera by right clicking on the icon. The right click on the icon shall display a pop-up menu of available device actions from which the user may select. This action shall cause a circle to be displayed over the camera icon for as long as the device control window is displayed for that camera.'),(35,'3.2.1.5.1','An icon shall be selected during detailed design to indicate a group of draw lights that are off.'),(36,'3.2.1.5.2','An icon shall be selected during detailed design to indicate a group of draw lights that are on.'),(37,'3.2.1.5.3','An icon shall be selected during detailed design to indicate a group of draw lights where some are on and some are off.'),(38,'3.2.1.5.4','The draw light icon shall be configurable to display the name of the draw lights.'),(39,'3.2.1.5.5','The draw light icon shall be configurable to display the state of the draw lights.'),(40,'3.2.1.5.6','The draw light icon shall be configurable to display the status of the draw lights. The color of the draw light icon shall represent the status of the draw light: green for operational, yellow for operational with errors, gray for no communications and red for failed.'),(41,'3.2.1.5.7','When the operator moves the mouse over a draw light icon a text window shall be displayed showing a summary of the status of the group of draw lights.'),(42,'3.2.1.5.8','The operator shall be able to activate a detailed device status window for the draw lights by double left clicking on the selected icon. A circle shall be displayed over the icon as long as the detailed device status window is displayed for that icon.'),(43,'3.2.1.5.9','The operator shall be able to activate a device control window for the draw lights by right clicking on the selected icon. The right click on the icon shall display a pop-up menu of available device actions from which the user may select. A circle shall be displayed over the icon as long as the device control window is displayed for that icon.'),(44,'3.2.1.5.9.1','If operation of the device is locked out for safety reasons the command option will be ?grayed out? and not selectable.'),(45,'3.2.1.6.1','An icon shall be selected during detailed design to indicate a group of wrong way lights that are off.'),(46,'3.2.1.6.2',' An icon shall be selected during detailed design to indicate a group of wrong way lights that are on.'),(47,'3.2.1.6.3','An icon shall be selected during detailed design to indicate a group of wrong way lights where some are on and some are off.'),(48,'3.2.1.6.4','The wrong way light icon shall be configurable to display the name of the draw lights.'),(49,'3.2.1.6.5','The wrong way light icon shall be configurable to display the state of the wrong way lights.'),(50,'3.2.1.6.6','The wrong way light icon shall be configurable to display the status of the group of wrong way lights. The color of the wrong way light icon shall represent the status of the wrong way light: green for operational, yellow for operational with errors, gray for no communications and red for failed.'),(51,'3.2.1.6.7','When the operator moves the mouse over a wrong way light icon a text window shall be displayed showing a summary of the status of the group of wrong way lights.'),(52,'3.2.1.6.8','The operator shall be able to activate a detailed device status window for the wrong way lights by double left clicking on the selected icon. A circle shall be displayed over the icon as long as the  detailed device status window is displayed for that icon.'),(53,'3.2.1.6.9','The operator shall be able to activate the control window for the wrong way light by right clicking on the selected icon. The right click on the icon shall display a pop-up menu of available device actions from which the user may select. A circle shall be displayed over the icon as long as the device control window is displayed for that icon.'),(54,'3.2.1.7.1','An icon shall be selected during detailed design to indicate a loop detector.'),(55,'3.2.1.7.2','An icon shall be selected during detailed design to indicate a group of loop detectors.'),(56,'3.2.1.7.3','The loop detector and group detector icons shall use color to indicate either speed, volume, or occupancy is within a specified range or if no data is available from the detector or from all loop detectors in a group.'),(57,'3.2.1.7.4','The color used to indicate a range shall be configurable.'),(58,'3.2.1.7.5','The data being displayed by color shall be configurable.'),(59,'3.2.1.7.6','The range being displayed by a color shall be configurable.'),(60,'3.2.1.7.7','The operator shall be able to configure the color, the range and/or the data type without restarting the application.'),(61,'3.2.1.7.8','The loop detector icon shall be configurable to display the name of the loop detector.'),(62,'3.2.1.7.9',' The loop detector icon shall be configurable to display the N second volume, speed and occupancy values as text associated with the icon. The value on N shall be configurable.'),(63,'3.2.1.7.10','The group detector icon shall be configurable to display the name of the detector group name as text with the icon.'),(64,'3.2.1.7.11','The group detector icon shall be configurable to display the N second average of volume, speed and occupancy for all detectors in the group as text with the icon. The value of N shall be configurable.'),(65,'3.2.1.7.12','The detector loop icon shall be configurable to display the status of the loop detector or group of loop detectors.'),(66,'3.2.1.7.13','When the operator moves the mouse over a detector loop icon a text window shall be displayed showing a summary of the status of the loop detector or the group of detector loops.'),(67,'3.2.1.7.14','The operator shall be able to activate a detailed device status window for the loop or group of loops by double left clicking on the selected icon. A circle shall be displayed over the icon as long as the detailed device status window for that icon.'),(68,'3.2.1.8.1','Icons shall be selected during detailed design to represent the FCUs and the DCU/MCUs.'),(69,'3.2.1.8.2','The FCU icon and the DCU/MCU icon shall be configurable to show the name of the site with the icon.'),(70,'3.2.1.8.3','The icons shall be configurable to show the status of the equipment at the site. The color of the icons shall be changed to show the status of the equipment.'),(71,'3.2.1.8.4','When the operator moves the mouse over an FCU or DCU/MCU icon a text window shall be displayed showing a summary of the site status.'),(72,'3.2.1.8.5','The operator shall be able to activate a detailed device status window for the selected site by double left clicking on the icon. This action shall cause a circle to be displayed over the icon for as long as the detailed device status window is displayed for that site.'),(73,'3.2.1.9.1','An icon shall represent the end point of the HOV lanes, North and South. The icon shall have different shapes to represent that the end point is closed, open Southbound or open Northbound.'),(74,'3.2.1.9.2','The end point icon shall be configurable to show the name of the end point associated with the icon.'),(75,'3.2.1.9.3','The end point icon shall be configurable to show the state of the end point associated with the icon.'),(76,'3.2.1.9.4','The end point icon shall be configurable to show the status of the end point. The color of the icon shall be changed to show the status of the end point.'),(77,'3.2.1.9.5','When the operator moves the mouse over an end point icon a text window shall be displayed showing a summary of the end point status.'),(78,'3.2.1.9.6','The operator shall be able to activate a detailed device status window for the selected end point by double left clicking on the icon. This action shall cause a circle to be displayed over the icon for as long as the detailed device status window is displayed for that end point.'),(79,'3.2.1.10.1','An icon shall be selected during detailed design to represent active incidents.'),(80,'3.2.1.10.2','The incident icon shall be configurable to display the state of the incident.'),(81,'3.2.1.10.3','When the operator moves the mouse over an incident icon a text window shall be displayed showing a summary of the incident state.'),(82,'3.2.1.10.4','The operator shall be able to activate a detailed incident state window for the selected incident by double left clicking on the icon. This action shall cause a circle to be displayed over the incident icon for as long as the detailed device status window is displayed for that incident.'),(83,'3.2.1.10.5','The operator shall be able to activate an edit window for the selected incident by right clicking on the icon. This action shall cause a circle to be displayed over the incident icon for as long as the edit window is displayed for that incident.'),(84,'4.1.1.1','All icons shall be configurable to display a minimum of information as text with the icon.'),(85,'4.1.1.1.1','The icons shall be configurable to display the text with relationship to the icon at the top, bottom, left or right.'),(86,'4.1.1.2','All icons shall be configurable to display four colors: green, yellow, red, or gray'),(87,'4.1.1.2.1','For all icons the color gray shall represent no data available, that is, communication with the device is not possible.'),(88,'4.1.1.2.2','For all icons except the Loop Detector icon, the other colors shall represent the status of the device, with the color green indicating a working device, red indicating a failed device, and yellow indicating a partially failed device.');
/*!40000 ALTER TABLE `requirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `statusValue` int DEFAULT NULL,
  `statusText` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,1,'Not Started'),(2,2,'In Progress'),(3,3,'Complete'),(4,4,'N/A');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracking`
--

DROP TABLE IF EXISTS `tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracking` (
  `requirementID` int NOT NULL,
  `priorityID` int NOT NULL,
  `statusID` int NOT NULL,
  PRIMARY KEY (`requirementID`,`priorityID`,`statusID`),
  KEY `priorityID` (`priorityID`),
  KEY `statusID` (`statusID`),
  CONSTRAINT `tracking_ibfk_1` FOREIGN KEY (`requirementID`) REFERENCES `requirement` (`ID`),
  CONSTRAINT `tracking_ibfk_2` FOREIGN KEY (`priorityID`) REFERENCES `priority` (`ID`),
  CONSTRAINT `tracking_ibfk_3` FOREIGN KEY (`statusID`) REFERENCES `status` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking`
--

LOCK TABLES `tracking` WRITE;
/*!40000 ALTER TABLE `tracking` DISABLE KEYS */;
INSERT INTO `tracking` VALUES (1,1,3),(2,1,3),(3,1,3),(4,1,3),(5,1,3),(6,1,3),(10,1,3),(11,1,3),(12,1,3),(14,1,3),(28,1,3),(30,1,3),(35,1,3),(36,1,3),(37,1,3),(39,1,3),(45,1,3),(46,1,3),(54,1,3),(55,1,3),(68,1,3),(73,1,3),(79,1,3),(80,1,3),(84,1,3),(7,2,3),(13,2,3),(17,2,3),(18,2,3),(19,2,3),(20,2,3),(23,2,3),(24,2,3),(29,2,3),(34,2,3),(38,2,3),(47,2,3),(49,2,3),(51,2,3),(52,2,3),(61,2,3),(63,2,3),(65,2,3),(67,2,3),(69,2,3),(71,2,3),(74,2,3),(75,2,3),(77,2,3),(78,2,3),(81,2,3),(82,2,3),(83,2,3),(85,2,3),(8,3,3),(9,3,3),(15,3,3),(16,3,3),(21,3,3),(25,3,3),(26,3,3),(27,3,3),(32,3,3),(33,3,3),(40,3,3),(41,3,1),(42,3,1),(44,3,3),(48,3,3),(50,3,3),(53,3,3),(56,3,3),(57,3,3),(66,3,3),(70,3,3),(72,3,3),(76,3,3),(86,3,3),(87,3,3),(88,3,3),(31,4,3),(43,4,1),(58,4,3),(59,4,3),(60,4,3),(62,4,3),(64,4,3),(22,5,3);
/*!40000 ALTER TABLE `tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `trackingview`
--

DROP TABLE IF EXISTS `trackingview`;
/*!50001 DROP VIEW IF EXISTS `trackingview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `trackingview` AS SELECT 
 1 AS `requirementText`,
 1 AS `priorityText`,
 1 AS `statusText`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `trackingview`
--

/*!50001 DROP VIEW IF EXISTS `trackingview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `trackingview` AS select `r`.`requirementText` AS `requirementText`,`p`.`priorityText` AS `priorityText`,`s`.`statusText` AS `statusText` from (((`tracking` `t` join `requirement` `r` on((`t`.`requirementID` = `r`.`ID`))) join `priority` `p` on((`t`.`priorityID` = `p`.`ID`))) join `status` `s` on((`t`.`statusID` = `s`.`ID`))) */;
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

-- Dump completed on 2023-07-23 18:36:39
