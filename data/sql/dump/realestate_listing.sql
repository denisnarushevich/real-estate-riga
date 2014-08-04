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
-- Table structure for table `listing`
--

DROP TABLE IF EXISTS `listing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `price` float(18,2) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `location_id` bigint(20) NOT NULL,
  `area` bigint(20) NOT NULL,
  `rooms` bigint(20) NOT NULL,
  `floors` bigint(20) NOT NULL,
  `floor` bigint(20) DEFAULT NULL,
  `is_renovated` tinyint(1) DEFAULT '0',
  `is_furnished` tinyint(1) DEFAULT '0',
  `for_rent` tinyint(1) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `has_videos` tinyint(1) DEFAULT '0',
  `is_house` tinyint(1) DEFAULT '0',
  `num_views` bigint(20) DEFAULT '0',
  `google_map_location` text,
  `main_photo` text,
  `street` text NOT NULL,
  `land_area` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id_idx` (`city_id`),
  KEY `location_id_idx` (`location_id`),
  CONSTRAINT `listing_city_id_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  CONSTRAINT `listing_location_id_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listing`
--

LOCK TABLES `listing` WRITE;
/*!40000 ALTER TABLE `listing` DISABLE KEYS */;
INSERT INTO `listing` VALUES (13,400.00,14195,1088,160,2,2,1,1,0,1,1,'2011-10-20 12:29:05','2011-11-21 16:31:16',0,1,554,'56.94761, 24.10514','da1e08e5d08998443239bb4cc9a45554b4f22f57.png','Volguntes',0),(14,200000.00,15230,15231,160,2,2,1,1,0,1,1,'2011-10-20 12:29:05','2011-11-07 15:59:06',0,0,43,'56.95079, 24.11587','8eddf8f6dc61bc2ffcdcf6f80549cd3af11178e5.png','ss',0),(15,400000.00,14195,1088,160,2,2,1,1,0,1,1,'2011-10-20 12:29:06','2011-11-21 15:53:32',0,0,55,'','a9fcbadd69f7649ef8c5fd83df92a6af6c64f8ac.png','Nometnu',0),(16,400000.00,14195,1088,160,2,2,1,1,0,1,1,'2011-10-20 12:29:06','2011-11-07 14:37:49',0,1,72,'','edfe2d066feab31331941fe642603ca3713c6ee1.jpg','asd',0),(17,400000.00,14195,1088,160,2,2,1,1,0,1,1,'2011-10-20 12:29:06','2011-11-07 14:26:25',0,1,8,'','fd993155b7c5cccd16be32271463e009e2e55388.jpg','123',0),(18,100000.00,14195,1088,160,2,2,1,1,0,1,1,'2011-10-20 12:29:06','2011-11-07 14:26:36',0,0,65,'','320afed5e451baca532a24767bef02f5bb81db56.jpg','asd',0),(19,1.00,1210,14735,1,1,1,1,0,0,1,1,'2011-11-07 14:22:38','2011-11-21 16:33:39',0,1,8,'56.94695, 24.10163','433d688cd8362f4bdf06258ff998324dc739b34b.jpg','1',1);
/*!40000 ALTER TABLE `listing` ENABLE KEYS */;
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
