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
-- Table structure for table `trans_unit`
--

DROP TABLE IF EXISTS `trans_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans_unit` (
  `msg_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cat_id` bigint(20) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `source` longtext,
  `target` longtext,
  `comments` longtext,
  `date_added` bigint(20) DEFAULT NULL,
  `date_modified` bigint(20) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `translated` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  UNIQUE KEY `uniq_item` (`id`,`cat_id`),
  KEY `trans_unit_cat_id_idx` (`cat_id`),
  CONSTRAINT `trans_unit_cat_id_catalogue_cat_id` FOREIGN KEY (`cat_id`) REFERENCES `catalogue` (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2830 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans_unit`
--

LOCK TABLES `trans_unit` WRITE;
/*!40000 ALTER TABLE `trans_unit` DISABLE KEYS */;
INSERT INTO `trans_unit` VALUES (2386,2,'1','Latest news',NULL,NULL,1321884518,NULL,NULL,0),(2387,2,'2','READ MORE',NULL,NULL,1321884518,NULL,NULL,0),(2388,2,'3','DEALS OF THE MONTH',NULL,NULL,1321884518,NULL,NULL,0),(2389,2,'4','Real Estate',NULL,NULL,1321884518,NULL,NULL,0),(2390,2,'5','home',NULL,NULL,1321884518,NULL,NULL,0),(2391,2,'6','appartments',NULL,NULL,1321884518,NULL,NULL,0),(2392,2,'7','houses',NULL,NULL,1321884518,NULL,NULL,0),(2393,2,'8','rent',NULL,NULL,1321884518,NULL,NULL,0),(2394,2,'9','building',NULL,NULL,1321884518,NULL,NULL,0),(2395,2,'10','renovation',NULL,NULL,1321884518,NULL,NULL,0),(2396,2,'11','contacts',NULL,NULL,1321884518,NULL,NULL,0),(2397,2,'12','RealEstate &copy; 2011 / All rights reserved to it’s perspective owners',NULL,NULL,1321884518,NULL,NULL,0),(2398,2,'13','Privacy',NULL,NULL,1321884518,NULL,NULL,0),(2399,2,'14','Legal',NULL,NULL,1321884518,NULL,NULL,0),(2400,2,'15','Accessibility',NULL,NULL,1321884518,NULL,NULL,0),(2401,2,'16','Credits',NULL,NULL,1321884518,NULL,NULL,0),(2402,2,'17','Latest news',NULL,NULL,1321884518,NULL,NULL,0),(2403,2,'18','READ MORE',NULL,NULL,1321884518,NULL,NULL,0),(2404,2,'19','DEALS OF THE MONTH',NULL,NULL,1321884518,NULL,NULL,0),(2405,2,'20','Real Estate',NULL,NULL,1321884518,NULL,NULL,0),(2406,2,'21','home',NULL,NULL,1321884518,NULL,NULL,0),(2407,2,'22','appartments',NULL,NULL,1321884518,NULL,NULL,0),(2408,2,'23','houses',NULL,NULL,1321884518,NULL,NULL,0),(2409,2,'24','rent',NULL,NULL,1321884518,NULL,NULL,0),(2410,2,'25','building',NULL,NULL,1321884518,NULL,NULL,0),(2411,2,'26','renovation',NULL,NULL,1321884518,NULL,NULL,0),(2412,2,'27','contacts',NULL,NULL,1321884518,NULL,NULL,0),(2413,2,'28','RealEstate &copy; 2011 / All rights reserved to it’s perspective owners',NULL,NULL,1321884518,NULL,NULL,0),(2414,2,'29','Privacy',NULL,NULL,1321884518,NULL,NULL,0),(2415,2,'30','Legal',NULL,NULL,1321884518,NULL,NULL,0),(2416,2,'31','Accessibility',NULL,NULL,1321884518,NULL,NULL,0),(2417,2,'32','Credits',NULL,NULL,1321884518,NULL,NULL,0),(2418,2,'33','Latest news',NULL,NULL,1321884518,NULL,NULL,0),(2419,2,'34','READ MORE',NULL,NULL,1321884518,NULL,NULL,0),(2420,2,'35','DEALS OF THE MONTH',NULL,NULL,1321884518,NULL,NULL,0),(2421,2,'36','Real Estate',NULL,NULL,1321884518,NULL,NULL,0),(2422,2,'37','home',NULL,NULL,1321884518,NULL,NULL,0),(2423,2,'38','appartments',NULL,NULL,1321884518,NULL,NULL,0),(2424,2,'39','houses',NULL,NULL,1321884518,NULL,NULL,0),(2425,2,'40','rent',NULL,NULL,1321884518,NULL,NULL,0),(2426,2,'41','building',NULL,NULL,1321884518,NULL,NULL,0),(2427,2,'42','renovation',NULL,NULL,1321884518,NULL,NULL,0),(2428,2,'43','contacts',NULL,NULL,1321884518,NULL,NULL,0),(2429,2,'44','RealEstate &copy; 2011 / All rights reserved to it’s perspective owners',NULL,NULL,1321884518,NULL,NULL,0),(2430,2,'45','Privacy',NULL,NULL,1321884518,NULL,NULL,0),(2431,2,'46','Legal',NULL,NULL,1321884518,NULL,NULL,0),(2432,2,'47','Accessibility',NULL,NULL,1321884518,NULL,NULL,0),(2433,2,'48','Credits',NULL,NULL,1321884518,NULL,NULL,0),(2434,2,'49','Location',NULL,NULL,1321884520,NULL,NULL,0),(2435,2,'50','Location',NULL,NULL,1321884520,NULL,NULL,0),(2436,2,'51','Location',NULL,NULL,1321884520,NULL,NULL,0),(2437,2,'52','',NULL,NULL,1321884530,NULL,NULL,0),(2438,2,'53','house',NULL,NULL,1321884530,NULL,NULL,0),(2439,2,'54','flat',NULL,NULL,1321884530,NULL,NULL,0),(2440,2,'55','',NULL,NULL,1321884530,NULL,NULL,0),(2441,2,'56','house',NULL,NULL,1321884530,NULL,NULL,0),(2442,2,'57','flat',NULL,NULL,1321884530,NULL,NULL,0),(2443,2,'58','',NULL,NULL,1321884530,NULL,NULL,0),(2444,2,'59','house',NULL,NULL,1321884530,NULL,NULL,0),(2445,2,'60','flat',NULL,NULL,1321884530,NULL,NULL,0),(2446,2,'61','Filter Options',NULL,NULL,1321885072,NULL,NULL,0),(2447,2,'62','City:',NULL,NULL,1321885072,NULL,NULL,0),(2448,2,'63','Rooms:',NULL,NULL,1321885072,NULL,NULL,0),(2449,2,'64','to',NULL,NULL,1321885072,NULL,NULL,0),(2450,2,'65','Price:',NULL,NULL,1321885072,NULL,NULL,0),(2451,2,'66','Area:',NULL,NULL,1321885072,NULL,NULL,0),(2452,2,'67','with photos only',NULL,NULL,1321885072,NULL,NULL,0),(2453,2,'68','with video',NULL,NULL,1321885072,NULL,NULL,0),(2454,2,'69','showed on map',NULL,NULL,1321885072,NULL,NULL,0),(2455,2,'70','show me selected',NULL,NULL,1321885072,NULL,NULL,0),(2456,2,'71','Filter Options',NULL,NULL,1321885072,NULL,NULL,0),(2457,2,'72','City:',NULL,NULL,1321885072,NULL,NULL,0),(2458,2,'73','Rooms:',NULL,NULL,1321885072,NULL,NULL,0),(2459,2,'74','to',NULL,NULL,1321885072,NULL,NULL,0),(2460,2,'75','Price:',NULL,NULL,1321885072,NULL,NULL,0),(2461,2,'76','Area:',NULL,NULL,1321885072,NULL,NULL,0),(2462,2,'77','with photos only',NULL,NULL,1321885072,NULL,NULL,0),(2463,2,'78','with video',NULL,NULL,1321885072,NULL,NULL,0),(2464,2,'79','showed on map',NULL,NULL,1321885072,NULL,NULL,0),(2465,2,'80','show me selected',NULL,NULL,1321885072,NULL,NULL,0),(2466,2,'81','Filter Options',NULL,NULL,1321885073,NULL,NULL,0),(2467,2,'82','City:',NULL,NULL,1321885073,NULL,NULL,0),(2468,2,'83','Rooms:',NULL,NULL,1321885073,NULL,NULL,0),(2469,2,'84','to',NULL,NULL,1321885073,NULL,NULL,0),(2470,2,'85','Price:',NULL,NULL,1321885073,NULL,NULL,0),(2471,2,'86','Area:',NULL,NULL,1321885073,NULL,NULL,0),(2472,2,'87','with photos only',NULL,NULL,1321885073,NULL,NULL,0),(2473,2,'88','with video',NULL,NULL,1321885073,NULL,NULL,0),(2474,2,'89','showed on map',NULL,NULL,1321885073,NULL,NULL,0),(2475,2,'90','show me selected',NULL,NULL,1321885073,NULL,NULL,0),(2476,2,'91','Your name:',NULL,NULL,1321885303,NULL,NULL,0),(2477,2,'92','Company:',NULL,NULL,1321885303,NULL,NULL,0),(2478,2,'93','E-mail:',NULL,NULL,1321885303,NULL,NULL,0),(2479,2,'94','Message:',NULL,NULL,1321885303,NULL,NULL,0),(2480,2,'95','send the message',NULL,NULL,1321885303,NULL,NULL,0),(2481,2,'96','SIA \"Real Estate Latvia\"',NULL,NULL,1321885303,NULL,NULL,0),(2482,2,'97','Terbatas street 55',NULL,NULL,1321885303,NULL,NULL,0),(2483,2,'98','LV - 1001, Riga, Latvia',NULL,NULL,1321885303,NULL,NULL,0),(2484,2,'99','Phone:',NULL,NULL,1321885303,NULL,NULL,0),(2485,2,'100','(+371) XXX XXX XXX',NULL,NULL,1321885303,NULL,NULL,0),(2486,2,'101','Fax:',NULL,NULL,1321885303,NULL,NULL,0),(2487,2,'102','(+371) 32 000 231',NULL,NULL,1321885303,NULL,NULL,0),(2488,2,'103','info@realestate.com',NULL,NULL,1321885303,NULL,NULL,0),(2489,2,'104','Marketing:',NULL,NULL,1321885303,NULL,NULL,0),(2490,2,'105','marketing@realestate.com',NULL,NULL,1321885303,NULL,NULL,0),(2491,2,'106','Your name:',NULL,NULL,1321885304,NULL,NULL,0),(2492,2,'107','Company:',NULL,NULL,1321885304,NULL,NULL,0),(2493,2,'108','E-mail:',NULL,NULL,1321885304,NULL,NULL,0),(2494,2,'109','Message:',NULL,NULL,1321885304,NULL,NULL,0),(2495,2,'110','send the message',NULL,NULL,1321885304,NULL,NULL,0),(2496,2,'111','SIA \"Real Estate Latvia\"',NULL,NULL,1321885304,NULL,NULL,0),(2497,2,'112','Terbatas street 55',NULL,NULL,1321885304,NULL,NULL,0),(2498,2,'113','LV - 1001, Riga, Latvia',NULL,NULL,1321885304,NULL,NULL,0),(2499,2,'114','Phone:',NULL,NULL,1321885304,NULL,NULL,0),(2500,2,'115','(+371) XXX XXX XXX',NULL,NULL,1321885304,NULL,NULL,0),(2501,2,'116','Fax:',NULL,NULL,1321885304,NULL,NULL,0),(2502,2,'117','(+371) 32 000 231',NULL,NULL,1321885304,NULL,NULL,0),(2503,2,'118','info@realestate.com',NULL,NULL,1321885304,NULL,NULL,0),(2504,2,'119','Marketing:',NULL,NULL,1321885304,NULL,NULL,0),(2505,2,'120','marketing@realestate.com',NULL,NULL,1321885304,NULL,NULL,0),(2506,2,'121','Your name:',NULL,NULL,1321885304,NULL,NULL,0),(2507,2,'122','Company:',NULL,NULL,1321885304,NULL,NULL,0),(2508,2,'123','E-mail:',NULL,NULL,1321885304,NULL,NULL,0),(2509,2,'124','Message:',NULL,NULL,1321885304,NULL,NULL,0),(2510,2,'125','send the message',NULL,NULL,1321885304,NULL,NULL,0),(2511,2,'126','SIA \"Real Estate Latvia\"',NULL,NULL,1321885304,NULL,NULL,0),(2512,2,'127','Terbatas street 55',NULL,NULL,1321885304,NULL,NULL,0),(2513,2,'128','LV - 1001, Riga, Latvia',NULL,NULL,1321885304,NULL,NULL,0),(2514,2,'129','Phone:',NULL,NULL,1321885304,NULL,NULL,0),(2515,2,'130','(+371) XXX XXX XXX',NULL,NULL,1321885304,NULL,NULL,0),(2516,2,'131','Fax:',NULL,NULL,1321885304,NULL,NULL,0),(2517,2,'132','(+371) 32 000 231',NULL,NULL,1321885304,NULL,NULL,0),(2518,2,'133','info@realestate.com',NULL,NULL,1321885304,NULL,NULL,0),(2519,2,'134','Marketing:',NULL,NULL,1321885304,NULL,NULL,0),(2520,2,'135','marketing@realestate.com',NULL,NULL,1321885304,NULL,NULL,0),(2521,2,'136','Your name',NULL,NULL,1321885817,NULL,NULL,0),(2522,2,'137','Company',NULL,NULL,1321885817,NULL,NULL,0),(2523,2,'138','E-mail',NULL,NULL,1321885817,NULL,NULL,0),(2524,2,'139','Message',NULL,NULL,1321885817,NULL,NULL,0),(2525,2,'140','Phone',NULL,NULL,1321885817,NULL,NULL,0),(2526,2,'141','Fax',NULL,NULL,1321885817,NULL,NULL,0),(2527,2,'142','Marketing',NULL,NULL,1321885817,NULL,NULL,0),(2528,2,'143','Your name',NULL,NULL,1321885817,NULL,NULL,0),(2529,2,'144','Company',NULL,NULL,1321885817,NULL,NULL,0),(2530,2,'145','E-mail',NULL,NULL,1321885817,NULL,NULL,0),(2531,2,'146','Message',NULL,NULL,1321885817,NULL,NULL,0),(2532,2,'147','Phone',NULL,NULL,1321885817,NULL,NULL,0),(2533,2,'148','Fax',NULL,NULL,1321885817,NULL,NULL,0),(2534,2,'149','Marketing',NULL,NULL,1321885817,NULL,NULL,0),(2535,2,'150','Your name',NULL,NULL,1321885817,NULL,NULL,0),(2536,2,'151','Company',NULL,NULL,1321885817,NULL,NULL,0),(2537,2,'152','E-mail',NULL,NULL,1321885817,NULL,NULL,0),(2538,2,'153','Message',NULL,NULL,1321885817,NULL,NULL,0),(2539,2,'154','Phone',NULL,NULL,1321885817,NULL,NULL,0),(2540,2,'155','Fax',NULL,NULL,1321885817,NULL,NULL,0),(2541,2,'156','Marketing',NULL,NULL,1321885817,NULL,NULL,0),(2542,2,'157','Type:',NULL,NULL,1321885824,NULL,NULL,0),(2543,2,'158','Location:',NULL,NULL,1321885824,NULL,NULL,0),(2544,2,'159','Property type:',NULL,NULL,1321885824,NULL,NULL,0),(2545,2,'160','Apartment size:',NULL,NULL,1321885824,NULL,NULL,0),(2546,2,'161','More info',NULL,NULL,1321885824,NULL,NULL,0),(2547,2,'162','Previous page',NULL,NULL,1321885824,NULL,NULL,0),(2548,2,'163','Next page',NULL,NULL,1321885824,NULL,NULL,0),(2549,2,'164','Type:',NULL,NULL,1321885824,NULL,NULL,0),(2550,2,'165','Location:',NULL,NULL,1321885824,NULL,NULL,0),(2551,2,'166','Property type:',NULL,NULL,1321885824,NULL,NULL,0),(2552,2,'167','Apartment size:',NULL,NULL,1321885824,NULL,NULL,0),(2553,2,'168','More info',NULL,NULL,1321885824,NULL,NULL,0),(2554,2,'169','Previous page',NULL,NULL,1321885824,NULL,NULL,0),(2555,2,'170','Next page',NULL,NULL,1321885824,NULL,NULL,0),(2556,2,'171','Type:',NULL,NULL,1321885824,NULL,NULL,0),(2557,2,'172','Location:',NULL,NULL,1321885824,NULL,NULL,0),(2558,2,'173','Property type:',NULL,NULL,1321885824,NULL,NULL,0),(2559,2,'174','Apartment size:',NULL,NULL,1321885824,NULL,NULL,0),(2560,2,'175','More info',NULL,NULL,1321885824,NULL,NULL,0),(2561,2,'176','Previous page',NULL,NULL,1321885824,NULL,NULL,0),(2562,2,'177','Next page',NULL,NULL,1321885824,NULL,NULL,0),(2563,2,'178','back to list',NULL,NULL,1321885860,NULL,NULL,0),(2564,2,'179','ID',NULL,NULL,1321885860,NULL,NULL,0),(2565,2,'180','City',NULL,NULL,1321885860,NULL,NULL,0),(2566,2,'181','Place',NULL,NULL,1321885860,NULL,NULL,0),(2567,2,'182','Property type',NULL,NULL,1321885860,NULL,NULL,0),(2568,2,'183','Living area',NULL,NULL,1321885860,NULL,NULL,0),(2569,2,'184','Rooms',NULL,NULL,1321885860,NULL,NULL,0),(2570,2,'185','Floor',NULL,NULL,1321885860,NULL,NULL,0),(2571,2,'186','Floors',NULL,NULL,1321885860,NULL,NULL,0),(2572,2,'187','Renovated',NULL,NULL,1321885860,NULL,NULL,0),(2573,2,'188','Furnished',NULL,NULL,1321885860,NULL,NULL,0),(2574,2,'189','Overall views',NULL,NULL,1321885860,NULL,NULL,0),(2575,2,'190','month',NULL,NULL,1321885860,NULL,NULL,0),(2576,2,'191','Sorry! Current property isn\'t located on the map!',NULL,NULL,1321885860,NULL,NULL,0),(2577,2,'192','Textual information block',NULL,NULL,1321885860,NULL,NULL,0),(2578,2,'193','contact us',NULL,NULL,1321885860,NULL,NULL,0),(2579,2,'194','E-mail or phone number',NULL,NULL,1321885860,NULL,NULL,0),(2580,2,'195','Contact about this classified',NULL,NULL,1321885860,NULL,NULL,0),(2581,2,'196','back to list',NULL,NULL,1321885860,NULL,NULL,0),(2582,2,'197','ID',NULL,NULL,1321885860,NULL,NULL,0),(2583,2,'198','City',NULL,NULL,1321885860,NULL,NULL,0),(2584,2,'199','Place',NULL,NULL,1321885860,NULL,NULL,0),(2585,2,'200','Property type',NULL,NULL,1321885860,NULL,NULL,0),(2586,2,'201','Living area',NULL,NULL,1321885860,NULL,NULL,0),(2587,2,'202','Rooms',NULL,NULL,1321885860,NULL,NULL,0),(2588,2,'203','Floor',NULL,NULL,1321885860,NULL,NULL,0),(2589,2,'204','Floors',NULL,NULL,1321885860,NULL,NULL,0),(2590,2,'205','Renovated',NULL,NULL,1321885860,NULL,NULL,0),(2591,2,'206','Furnished',NULL,NULL,1321885860,NULL,NULL,0),(2592,2,'207','Overall views',NULL,NULL,1321885860,NULL,NULL,0),(2593,2,'208','month',NULL,NULL,1321885860,NULL,NULL,0),(2594,2,'209','Sorry! Current property isn\'t located on the map!',NULL,NULL,1321885860,NULL,NULL,0),(2595,2,'210','Textual information block',NULL,NULL,1321885860,NULL,NULL,0),(2596,2,'211','contact us',NULL,NULL,1321885860,NULL,NULL,0),(2597,2,'212','E-mail or phone number',NULL,NULL,1321885860,NULL,NULL,0),(2598,2,'213','Contact about this classified',NULL,NULL,1321885860,NULL,NULL,0),(2599,2,'214','back to list',NULL,NULL,1321885860,NULL,NULL,0),(2600,2,'215','ID',NULL,NULL,1321885860,NULL,NULL,0),(2601,2,'216','City',NULL,NULL,1321885860,NULL,NULL,0),(2602,2,'217','Place',NULL,NULL,1321885860,NULL,NULL,0),(2603,2,'218','Property type',NULL,NULL,1321885860,NULL,NULL,0),(2604,2,'219','Living area',NULL,NULL,1321885860,NULL,NULL,0),(2605,2,'220','Rooms',NULL,NULL,1321885860,NULL,NULL,0),(2606,2,'221','Floor',NULL,NULL,1321885860,NULL,NULL,0),(2607,2,'222','Floors',NULL,NULL,1321885860,NULL,NULL,0),(2608,2,'223','Renovated',NULL,NULL,1321885860,NULL,NULL,0),(2609,2,'224','Furnished',NULL,NULL,1321885860,NULL,NULL,0),(2610,2,'225','Overall views',NULL,NULL,1321885860,NULL,NULL,0),(2611,2,'226','month',NULL,NULL,1321885860,NULL,NULL,0),(2612,2,'227','Sorry! Current property isn\'t located on the map!',NULL,NULL,1321885860,NULL,NULL,0),(2613,2,'228','Textual information block',NULL,NULL,1321885860,NULL,NULL,0),(2614,2,'229','contact us',NULL,NULL,1321885860,NULL,NULL,0),(2615,2,'230','E-mail or phone number',NULL,NULL,1321885860,NULL,NULL,0),(2616,2,'231','Contact about this classified',NULL,NULL,1321885860,NULL,NULL,0),(2617,1,'1','rent',NULL,NULL,1321885876,NULL,NULL,0),(2618,1,'2','back to list',NULL,NULL,1321885876,NULL,NULL,0),(2619,1,'3','ID',NULL,NULL,1321885876,NULL,NULL,0),(2620,1,'4','City',NULL,NULL,1321885876,NULL,NULL,0),(2621,1,'5','Place',NULL,NULL,1321885876,NULL,NULL,0),(2622,1,'6','Property type',NULL,NULL,1321885876,NULL,NULL,0),(2623,1,'7','Living area',NULL,NULL,1321885876,NULL,NULL,0),(2624,1,'8','Rooms',NULL,NULL,1321885876,NULL,NULL,0),(2625,1,'9','Floor',NULL,NULL,1321885876,NULL,NULL,0),(2626,1,'10','Floors',NULL,NULL,1321885876,NULL,NULL,0),(2627,1,'11','Renovated',NULL,NULL,1321885876,NULL,NULL,0),(2628,1,'12','Furnished',NULL,NULL,1321885876,NULL,NULL,0),(2629,1,'13','Overall views',NULL,NULL,1321885876,NULL,NULL,0),(2630,1,'14','month',NULL,NULL,1321885876,NULL,NULL,0),(2631,1,'15','Sorry! Current property isn\'t located on the map!',NULL,NULL,1321885876,NULL,NULL,0),(2632,1,'16','Textual information block',NULL,NULL,1321885876,NULL,NULL,0),(2633,1,'17','contact us',NULL,NULL,1321885876,NULL,NULL,0),(2634,1,'18','Your name',NULL,NULL,1321885876,NULL,NULL,0),(2635,1,'19','E-mail or phone number',NULL,NULL,1321885876,NULL,NULL,0),(2636,1,'20','Message',NULL,NULL,1321885876,NULL,NULL,0),(2637,1,'21','Contact about this classified',NULL,NULL,1321885876,NULL,NULL,0),(2638,1,'22','send the message',NULL,NULL,1321885876,NULL,NULL,0),(2639,1,'23','Real Estate',NULL,NULL,1321885876,NULL,NULL,0),(2640,1,'24','home',NULL,NULL,1321885876,NULL,NULL,0),(2641,1,'25','appartments',NULL,NULL,1321885876,NULL,NULL,0),(2642,1,'26','houses',NULL,NULL,1321885876,NULL,NULL,0),(2643,1,'27','building',NULL,NULL,1321885876,NULL,NULL,0),(2644,1,'28','renovation',NULL,NULL,1321885876,NULL,NULL,0),(2645,1,'29','contacts',NULL,NULL,1321885876,NULL,NULL,0),(2646,1,'30','RealEstate &copy; 2011 / All rights reserved to it’s perspective owners',NULL,NULL,1321885876,NULL,NULL,0),(2647,1,'31','Privacy',NULL,NULL,1321885876,NULL,NULL,0),(2648,1,'32','Legal',NULL,NULL,1321885876,NULL,NULL,0),(2649,1,'33','Accessibility',NULL,NULL,1321885876,NULL,NULL,0),(2650,1,'34','Credits',NULL,NULL,1321885876,NULL,NULL,0),(2651,1,'35','rent',NULL,NULL,1321885876,NULL,NULL,0),(2652,1,'36','back to list',NULL,NULL,1321885876,NULL,NULL,0),(2653,1,'37','ID',NULL,NULL,1321885876,NULL,NULL,0),(2654,1,'38','City',NULL,NULL,1321885876,NULL,NULL,0),(2655,1,'39','Place',NULL,NULL,1321885876,NULL,NULL,0),(2656,1,'40','Property type',NULL,NULL,1321885876,NULL,NULL,0),(2657,1,'41','Living area',NULL,NULL,1321885876,NULL,NULL,0),(2658,1,'42','Rooms',NULL,NULL,1321885876,NULL,NULL,0),(2659,1,'43','Floor',NULL,NULL,1321885876,NULL,NULL,0),(2660,1,'44','Floors',NULL,NULL,1321885876,NULL,NULL,0),(2661,1,'45','Renovated',NULL,NULL,1321885876,NULL,NULL,0),(2662,1,'46','Furnished',NULL,NULL,1321885876,NULL,NULL,0),(2663,1,'47','Overall views',NULL,NULL,1321885876,NULL,NULL,0),(2664,1,'48','month',NULL,NULL,1321885876,NULL,NULL,0),(2665,1,'49','Sorry! Current property isn\'t located on the map!',NULL,NULL,1321885876,NULL,NULL,0),(2666,1,'50','Textual information block',NULL,NULL,1321885876,NULL,NULL,0),(2667,1,'51','contact us',NULL,NULL,1321885876,NULL,NULL,0),(2668,1,'52','Your name',NULL,NULL,1321885876,NULL,NULL,0),(2669,1,'53','E-mail or phone number',NULL,NULL,1321885876,NULL,NULL,0),(2670,1,'54','Message',NULL,NULL,1321885876,NULL,NULL,0),(2671,1,'55','Contact about this classified',NULL,NULL,1321885876,NULL,NULL,0),(2672,1,'56','send the message',NULL,NULL,1321885876,NULL,NULL,0),(2673,1,'57','Real Estate',NULL,NULL,1321885876,NULL,NULL,0),(2674,1,'58','home',NULL,NULL,1321885876,NULL,NULL,0),(2675,1,'59','appartments',NULL,NULL,1321885876,NULL,NULL,0),(2676,1,'60','houses',NULL,NULL,1321885876,NULL,NULL,0),(2677,1,'61','building',NULL,NULL,1321885876,NULL,NULL,0),(2678,1,'62','renovation',NULL,NULL,1321885876,NULL,NULL,0),(2679,1,'63','contacts',NULL,NULL,1321885876,NULL,NULL,0),(2680,1,'64','RealEstate &copy; 2011 / All rights reserved to it’s perspective owners',NULL,NULL,1321885876,NULL,NULL,0),(2681,1,'65','Privacy',NULL,NULL,1321885876,NULL,NULL,0),(2682,1,'66','Legal',NULL,NULL,1321885876,NULL,NULL,0),(2683,1,'67','Accessibility',NULL,NULL,1321885876,NULL,NULL,0),(2684,1,'68','Credits',NULL,NULL,1321885876,NULL,NULL,0),(2685,1,'69','rent',NULL,NULL,1321885876,NULL,NULL,0),(2686,1,'70','back to list',NULL,NULL,1321885876,NULL,NULL,0),(2687,1,'71','ID',NULL,NULL,1321885876,NULL,NULL,0),(2688,1,'72','City',NULL,NULL,1321885876,NULL,NULL,0),(2689,1,'73','Place',NULL,NULL,1321885876,NULL,NULL,0),(2690,1,'74','Property type',NULL,NULL,1321885876,NULL,NULL,0),(2691,1,'75','Living area',NULL,NULL,1321885876,NULL,NULL,0),(2692,1,'76','Rooms',NULL,NULL,1321885876,NULL,NULL,0),(2693,1,'77','Floor',NULL,NULL,1321885876,NULL,NULL,0),(2694,1,'78','Floors',NULL,NULL,1321885876,NULL,NULL,0),(2695,1,'79','Renovated',NULL,NULL,1321885876,NULL,NULL,0),(2696,1,'80','Furnished',NULL,NULL,1321885876,NULL,NULL,0),(2697,1,'81','Overall views',NULL,NULL,1321885876,NULL,NULL,0),(2698,1,'82','month',NULL,NULL,1321885876,NULL,NULL,0),(2699,1,'83','Sorry! Current property isn\'t located on the map!',NULL,NULL,1321885876,NULL,NULL,0),(2700,1,'84','Textual information block',NULL,NULL,1321885876,NULL,NULL,0),(2701,1,'85','contact us',NULL,NULL,1321885876,NULL,NULL,0),(2702,1,'86','Your name',NULL,NULL,1321885876,NULL,NULL,0),(2703,1,'87','E-mail or phone number',NULL,NULL,1321885876,NULL,NULL,0),(2704,1,'88','Message',NULL,NULL,1321885876,NULL,NULL,0),(2705,1,'89','Contact about this classified',NULL,NULL,1321885876,NULL,NULL,0),(2706,1,'90','send the message',NULL,NULL,1321885876,NULL,NULL,0),(2707,1,'91','Real Estate',NULL,NULL,1321885876,NULL,NULL,0),(2708,1,'92','home',NULL,NULL,1321885876,NULL,NULL,0),(2709,1,'93','appartments',NULL,NULL,1321885876,NULL,NULL,0),(2710,1,'94','houses',NULL,NULL,1321885876,NULL,NULL,0),(2711,1,'95','building',NULL,NULL,1321885876,NULL,NULL,0),(2712,1,'96','renovation',NULL,NULL,1321885876,NULL,NULL,0),(2713,1,'97','contacts',NULL,NULL,1321885876,NULL,NULL,0),(2714,1,'98','RealEstate &copy; 2011 / All rights reserved to it’s perspective owners',NULL,NULL,1321885876,NULL,NULL,0),(2715,1,'99','Privacy',NULL,NULL,1321885876,NULL,NULL,0),(2716,1,'100','Legal',NULL,NULL,1321885876,NULL,NULL,0),(2717,1,'101','Accessibility',NULL,NULL,1321885876,NULL,NULL,0),(2718,1,'102','Credits',NULL,NULL,1321885876,NULL,NULL,0),(2719,1,'103','Latest news',NULL,NULL,1321885940,NULL,NULL,0),(2720,1,'104','READ MORE',NULL,NULL,1321885940,NULL,NULL,0),(2721,1,'105','DEALS OF THE MONTH',NULL,NULL,1321885940,NULL,NULL,0),(2722,1,'106','Location',NULL,NULL,1321885940,NULL,NULL,0),(2723,1,'107','Apartment size',NULL,NULL,1321885940,NULL,NULL,0),(2724,1,'108','More info',NULL,NULL,1321885940,NULL,NULL,0),(2725,1,'109','Latest news',NULL,NULL,1321885940,NULL,NULL,0),(2726,1,'110','READ MORE',NULL,NULL,1321885940,NULL,NULL,0),(2727,1,'111','DEALS OF THE MONTH',NULL,NULL,1321885940,NULL,NULL,0),(2728,1,'112','Location',NULL,NULL,1321885940,NULL,NULL,0),(2729,1,'113','Apartment size',NULL,NULL,1321885940,NULL,NULL,0),(2730,1,'114','More info',NULL,NULL,1321885940,NULL,NULL,0),(2731,1,'115','Latest news',NULL,NULL,1321885940,NULL,NULL,0),(2732,1,'116','READ MORE',NULL,NULL,1321885940,NULL,NULL,0),(2733,1,'117','DEALS OF THE MONTH',NULL,NULL,1321885940,NULL,NULL,0),(2734,1,'118','Location',NULL,NULL,1321885940,NULL,NULL,0),(2735,1,'119','Apartment size',NULL,NULL,1321885940,NULL,NULL,0),(2736,1,'120','More info',NULL,NULL,1321885940,NULL,NULL,0),(2737,1,'121','Filter Options',NULL,NULL,1321885975,NULL,NULL,0),(2738,1,'122','City:',NULL,NULL,1321885975,NULL,NULL,0),(2739,1,'123','Rooms:',NULL,NULL,1321885975,NULL,NULL,0),(2740,1,'124','to',NULL,NULL,1321885975,NULL,NULL,0),(2741,1,'125','Price:',NULL,NULL,1321885975,NULL,NULL,0),(2742,1,'126','Area:',NULL,NULL,1321885975,NULL,NULL,0),(2743,1,'127','with photos only',NULL,NULL,1321885975,NULL,NULL,0),(2744,1,'128','with video',NULL,NULL,1321885975,NULL,NULL,0),(2745,1,'129','showed on map',NULL,NULL,1321885975,NULL,NULL,0),(2746,1,'130','show me selected',NULL,NULL,1321885975,NULL,NULL,0),(2747,1,'131','Filter Options',NULL,NULL,1321885976,NULL,NULL,0),(2748,1,'132','City:',NULL,NULL,1321885976,NULL,NULL,0),(2749,1,'133','Rooms:',NULL,NULL,1321885976,NULL,NULL,0),(2750,1,'134','to',NULL,NULL,1321885976,NULL,NULL,0),(2751,1,'135','Price:',NULL,NULL,1321885976,NULL,NULL,0),(2752,1,'136','Area:',NULL,NULL,1321885976,NULL,NULL,0),(2753,1,'137','with photos only',NULL,NULL,1321885976,NULL,NULL,0),(2754,1,'138','with video',NULL,NULL,1321885976,NULL,NULL,0),(2755,1,'139','showed on map',NULL,NULL,1321885976,NULL,NULL,0),(2756,1,'140','show me selected',NULL,NULL,1321885976,NULL,NULL,0),(2757,1,'141','Filter Options',NULL,NULL,1321885976,NULL,NULL,0),(2758,1,'142','City:',NULL,NULL,1321885976,NULL,NULL,0),(2759,1,'143','Rooms:',NULL,NULL,1321885976,NULL,NULL,0),(2760,1,'144','to',NULL,NULL,1321885976,NULL,NULL,0),(2761,1,'145','Price:',NULL,NULL,1321885976,NULL,NULL,0),(2762,1,'146','Area:',NULL,NULL,1321885976,NULL,NULL,0),(2763,1,'147','with photos only',NULL,NULL,1321885976,NULL,NULL,0),(2764,1,'148','with video',NULL,NULL,1321885976,NULL,NULL,0),(2765,1,'149','showed on map',NULL,NULL,1321885976,NULL,NULL,0),(2766,1,'150','show me selected',NULL,NULL,1321885976,NULL,NULL,0),(2767,1,'151','Type:',NULL,NULL,1321885980,NULL,NULL,0),(2768,1,'152','',NULL,NULL,1321885980,NULL,NULL,0),(2769,1,'153','house',NULL,NULL,1321885980,NULL,NULL,0),(2770,1,'154','flat',NULL,NULL,1321885980,NULL,NULL,0),(2771,1,'155','Location:',NULL,NULL,1321885980,NULL,NULL,0),(2772,1,'156','Property type:',NULL,NULL,1321885980,NULL,NULL,0),(2773,1,'157','Apartment size:',NULL,NULL,1321885980,NULL,NULL,0),(2774,1,'158','Previous page',NULL,NULL,1321885980,NULL,NULL,0),(2775,1,'159','Next page',NULL,NULL,1321885980,NULL,NULL,0),(2776,1,'160','Type:',NULL,NULL,1321885980,NULL,NULL,0),(2777,1,'161','',NULL,NULL,1321885980,NULL,NULL,0),(2778,1,'162','house',NULL,NULL,1321885980,NULL,NULL,0),(2779,1,'163','flat',NULL,NULL,1321885980,NULL,NULL,0),(2780,1,'164','Location:',NULL,NULL,1321885980,NULL,NULL,0),(2781,1,'165','Property type:',NULL,NULL,1321885980,NULL,NULL,0),(2782,1,'166','Apartment size:',NULL,NULL,1321885980,NULL,NULL,0),(2783,1,'167','Previous page',NULL,NULL,1321885980,NULL,NULL,0),(2784,1,'168','Next page',NULL,NULL,1321885980,NULL,NULL,0),(2785,1,'169','Type:',NULL,NULL,1321885980,NULL,NULL,0),(2786,1,'170','',NULL,NULL,1321885980,NULL,NULL,0),(2787,1,'171','house',NULL,NULL,1321885980,NULL,NULL,0),(2788,1,'172','flat',NULL,NULL,1321885980,NULL,NULL,0),(2789,1,'173','Location:',NULL,NULL,1321885980,NULL,NULL,0),(2790,1,'174','Property type:',NULL,NULL,1321885980,NULL,NULL,0),(2791,1,'175','Apartment size:',NULL,NULL,1321885980,NULL,NULL,0),(2792,1,'176','Previous page',NULL,NULL,1321885980,NULL,NULL,0),(2793,1,'177','Next page',NULL,NULL,1321885980,NULL,NULL,0),(2794,1,'178','Company',NULL,NULL,1321885992,NULL,NULL,0),(2795,1,'179','E-mail',NULL,NULL,1321885992,NULL,NULL,0),(2796,1,'180','SIA \"Real Estate Latvia\"',NULL,NULL,1321885992,NULL,NULL,0),(2797,1,'181','Terbatas street 55',NULL,NULL,1321885992,NULL,NULL,0),(2798,1,'182','LV - 1001, Riga, Latvia',NULL,NULL,1321885992,NULL,NULL,0),(2799,1,'183','Phone',NULL,NULL,1321885992,NULL,NULL,0),(2800,1,'184','(+371) XXX XXX XXX',NULL,NULL,1321885992,NULL,NULL,0),(2801,1,'185','Fax',NULL,NULL,1321885992,NULL,NULL,0),(2802,1,'186','(+371) 32 000 231',NULL,NULL,1321885992,NULL,NULL,0),(2803,1,'187','info@realestate.com',NULL,NULL,1321885992,NULL,NULL,0),(2804,1,'188','Marketing',NULL,NULL,1321885992,NULL,NULL,0),(2805,1,'189','marketing@realestate.com',NULL,NULL,1321885992,NULL,NULL,0),(2806,1,'190','Company',NULL,NULL,1321885992,NULL,NULL,0),(2807,1,'191','E-mail',NULL,NULL,1321885992,NULL,NULL,0),(2808,1,'192','SIA \"Real Estate Latvia\"',NULL,NULL,1321885992,NULL,NULL,0),(2809,1,'193','Terbatas street 55',NULL,NULL,1321885992,NULL,NULL,0),(2810,1,'194','LV - 1001, Riga, Latvia',NULL,NULL,1321885992,NULL,NULL,0),(2811,1,'195','Phone',NULL,NULL,1321885992,NULL,NULL,0),(2812,1,'196','(+371) XXX XXX XXX',NULL,NULL,1321885992,NULL,NULL,0),(2813,1,'197','Fax',NULL,NULL,1321885992,NULL,NULL,0),(2814,1,'198','(+371) 32 000 231',NULL,NULL,1321885992,NULL,NULL,0),(2815,1,'199','info@realestate.com',NULL,NULL,1321885992,NULL,NULL,0),(2816,1,'200','Marketing',NULL,NULL,1321885992,NULL,NULL,0),(2817,1,'201','marketing@realestate.com',NULL,NULL,1321885992,NULL,NULL,0),(2818,1,'202','Company',NULL,NULL,1321885992,NULL,NULL,0),(2819,1,'203','E-mail',NULL,NULL,1321885992,NULL,NULL,0),(2820,1,'204','SIA \"Real Estate Latvia\"',NULL,NULL,1321885992,NULL,NULL,0),(2821,1,'205','Terbatas street 55',NULL,NULL,1321885992,NULL,NULL,0),(2822,1,'206','LV - 1001, Riga, Latvia',NULL,NULL,1321885992,NULL,NULL,0),(2823,1,'207','Phone',NULL,NULL,1321885992,NULL,NULL,0),(2824,1,'208','(+371) XXX XXX XXX',NULL,NULL,1321885992,NULL,NULL,0),(2825,1,'209','Fax',NULL,NULL,1321885992,NULL,NULL,0),(2826,1,'210','(+371) 32 000 231',NULL,NULL,1321885992,NULL,NULL,0),(2827,1,'211','info@realestate.com',NULL,NULL,1321885992,NULL,NULL,0),(2828,1,'212','Marketing',NULL,NULL,1321885992,NULL,NULL,0),(2829,1,'213','marketing@realestate.com',NULL,NULL,1321885992,NULL,NULL,0);
/*!40000 ALTER TABLE `trans_unit` ENABLE KEYS */;
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