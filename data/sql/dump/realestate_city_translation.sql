CREATE DATABASE  IF NOT EXISTS `realestate` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `realestate`;
-- MySQL dump 10.13  Distrib 5.5.9, for Win32 (x86)
--
-- Host: localhost    Database: realestate
-- ------------------------------------------------------
-- Server version	5.5.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `city_translation`
--

DROP TABLE IF EXISTS `city_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_translation` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `name` text NOT NULL,
  `lang` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`lang`),
  CONSTRAINT `city_translation_id_city_id` FOREIGN KEY (`id`) REFERENCES `city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_translation`
--

LOCK TABLES `city_translation` WRITE;
/*!40000 ALTER TABLE `city_translation` DISABLE KEYS */;
INSERT INTO `city_translation` VALUES (1208,'Jelgava un rajons','en'),(1208,'Jelgava un rajons','lv'),(1208,'Елгава и район','ru'),(1209,'Ogre un rajons','en'),(1209,'Ogre un rajons','lv'),(1209,'Огре и район','ru'),(1210,'Aizkraukle un rajons','en'),(1210,'Aizkraukle un rajons','lv'),(1210,'Айзкраукле и район','ru'),(1211,'Alūksne un rajons','en'),(1211,'Alūksne un rajons','lv'),(1211,'Алуксне и район','ru'),(1212,'Balvi un rajons','en'),(1212,'Balvi un rajons','lv'),(1212,'Балви и район','ru'),(1213,'Bauska un rajons','en'),(1213,'Bauska un rajons','lv'),(1213,'Бауска и район','ru'),(1214,'Valka un rajons','en'),(1214,'Valka un rajons','lv'),(1214,'Валка и район','ru'),(1215,'Valmiera un rajons','en'),(1215,'Valmiera un rajons','lv'),(1215,'Валмиера и район','ru'),(1216,'Ventspils un rajons','en'),(1216,'Ventspils un rajons','lv'),(1216,'Вентспилс и район','ru'),(1217,'Gulbene un rajons','en'),(1217,'Gulbene un rajons','lv'),(1217,'Гулбене и район','ru'),(1218,'Daugavpils un rajons','en'),(1218,'Daugavpils un rajons','lv'),(1218,'Даугавпилс и район','ru'),(1219,'Dobele un rajons','en'),(1219,'Dobele un rajons','lv'),(1219,'Добеле и район','ru'),(1220,'Jēkabpils un rajons','en'),(1220,'Jēkabpils un rajons','lv'),(1220,'Екабпилс и район','ru'),(1221,'Krāslava un rajons','en'),(1221,'Krāslava un rajons','lv'),(1221,'Краславa и район','ru'),(1222,'Kuldīga un rajons','en'),(1222,'Kuldīga un rajons','lv'),(1222,'Кулдига и район','ru'),(1223,'Liepāja un rajons','en'),(1223,'Liepāja un rajons','lv'),(1223,'Лиепая и район','ru'),(1224,'Limbaži un rajons','en'),(1224,'Limbaži un rajons','lv'),(1224,'Лимбажи и район','ru'),(1225,'Ludza un rajons','en'),(1225,'Ludza un rajons','lv'),(1225,'Лудза и район','ru'),(1226,'Madona un rajons','en'),(1226,'Madona un rajons','lv'),(1226,'Мадона и район','ru'),(1227,'Preiļi un rajons','en'),(1227,'Preiļi un rajons','lv'),(1227,'Прейли и район','ru'),(1228,'Rēzekne un rajons','en'),(1228,'Rēzekne un rajons','lv'),(1228,'Резекне и район','ru'),(1229,'Saldus un rajons','en'),(1229,'Saldus un rajons','lv'),(1229,'Салдус и район','ru'),(1230,'Talsi un rajons','en'),(1230,'Talsi un rajons','lv'),(1230,'Талси и район','ru'),(1231,'Tukums un rajons','en'),(1231,'Tukums un rajons','lv'),(1231,'Тукумс и район','ru'),(1232,'Cēsis un rajons','en'),(1232,'Cēsis un rajons','lv'),(1232,'Цесис и район','ru'),(14195,'Rīga','en'),(14195,'Rīga','lv'),(14195,'Рига','ru'),(14196,'Rīgas rajons','en'),(14196,'Rīgas rajons','lv'),(14196,'Рижский район','ru'),(15230,'Jūrmala','en'),(15230,'Jūrmala','lv'),(15230,'Юрмала','ru');
/*!40000 ALTER TABLE `city_translation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-11-21 16:43:15
