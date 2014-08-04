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
-- Table structure for table `property_photos`
--

DROP TABLE IF EXISTS `property_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_photos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `listing_id` bigint(20) NOT NULL,
  `filename` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_photos_listing_id_idx` (`listing_id`),
  CONSTRAINT `property_photos_listing_id_listing_id` FOREIGN KEY (`listing_id`) REFERENCES `listing` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_photos`
--

LOCK TABLES `property_photos` WRITE;
/*!40000 ALTER TABLE `property_photos` DISABLE KEYS */;
INSERT INTO `property_photos` VALUES (21,14,'02b7af5ce84b4afc78383e77a4f332f7775db86e.png'),(22,14,'9832fd556bfc482a90a167bc015a944e28090132.png'),(23,14,'a9f5c2e2e1c1449310e507a58508f5c0306a7aa8.png'),(32,14,'c61ea7471f9b6e5cdb1267d8a4423c43875dfe34.png'),(33,13,'034d31936e65a905b2b493c289681c3c5afe77cc.png'),(34,13,'de9b4a9dec718bdbef2d0aca065659eb69108a3e.jpg'),(35,13,'efc0b9189f6b87e1a1f2095410022e465e86da44.png');
/*!40000 ALTER TABLE `property_photos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-11-21 16:43:14
