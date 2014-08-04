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
-- Table structure for table `location_translation`
--

DROP TABLE IF EXISTS `location_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location_translation` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `name` text NOT NULL,
  `lang` char(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`lang`),
  CONSTRAINT `location_translation_id_location_id` FOREIGN KEY (`id`) REFERENCES `location` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_translation`
--

LOCK TABLES `location_translation` WRITE;
/*!40000 ALTER TABLE `location_translation` DISABLE KEYS */;
INSERT INTO `location_translation` VALUES (1088,'Āgenskalns','en'),(1088,'Āgenskalns','lv'),(1088,'Агенскалнс','ru'),(1089,'Bolderāja','en'),(1089,'Bolderāja','lv'),(1089,'Болдерая','ru'),(1090,'Vecmīlgrāvis','en'),(1090,'Vecmīlgrāvis','lv'),(1090,'Вецмилгравис','ru'),(1091,'Vecrīga','en'),(1091,'Vecrīga','lv'),(1091,'Вецрига','ru'),(1092,'Zasulauks','en'),(1092,'Zasulauks','lv'),(1092,'Засулаукс','ru'),(1093,'Ziepniekkalns','en'),(1093,'Ziepniekkalns','lv'),(1093,'Зиепниеккалнс','ru'),(1094,'Zolitūde','en'),(1094,'Zolitūde','lv'),(1094,'Золитуде','ru'),(1095,'Iļģuciems','en'),(1095,'Iļģuciems','lv'),(1095,'Ильгюциемс','ru'),(1096,'Imanta','en'),(1096,'Imanta','lv'),(1096,'Иманта','ru'),(1097,'Ķengarags','en'),(1097,'Ķengarags','lv'),(1097,'Кенгарагс','ru'),(1098,'Mangaļi','en'),(1098,'Mangaļi','lv'),(1098,'Мангали','ru'),(1099,'Mežaparks','en'),(1099,'Mežaparks','lv'),(1099,'Межапарк','ru'),(1100,'Mežciems','en'),(1100,'Mežciems','lv'),(1100,'Межциемс','ru'),(1102,'Pļavnieki','en'),(1102,'Pļavnieki','lv'),(1102,'Плявниеки','ru'),(1103,'Purvciems','en'),(1103,'Purvciems','lv'),(1103,'Пурвциемс','ru'),(1104,'Sarkandaugava','en'),(1104,'Sarkandaugava','lv'),(1104,'Саркандаугава','ru'),(1105,'Teika','en'),(1105,'Teika','lv'),(1105,'Тейка','ru'),(1106,'Centrs','en'),(1106,'Centrs','lv'),(1106,'Центр','ru'),(1107,'Čiekurkalns','en'),(1107,'Čiekurkalns','lv'),(1107,'Чиекуркалнс','ru'),(1108,'Jugla','en'),(1108,'Jugla','lv'),(1108,'Югла','ru'),(1109,'Krasta r-ns','en'),(1109,'Krasta r-ns','lv'),(1109,'р-н ул.Краста','ru'),(1110,'Dzegužkalns (Dzirciems)','en'),(1110,'Dzegužkalns (Dzirciems)','lv'),(1110,'Дзегужкалнс (Дзирциемс)','ru'),(1111,'Dārzciems','en'),(1111,'Dārzciems','lv'),(1111,'Дарзциемс','ru'),(1112,'Šampēteris-Pleskodāle','en'),(1112,'Šampēteris-Pleskodāle','lv'),(1112,'Шампетерис-Плескодале','ru'),(1114,'Aplokciems','en'),(1114,'Aplokciems','lv'),(1114,'Аплокциемс','ru'),(1115,'Voleri','en'),(1115,'Voleri','lv'),(1115,'Волери','ru'),(1117,'Jaunciems','en'),(1117,'Jaunciems','lv'),(1117,'Яунциемс','ru'),(1119,'Šķirotava','en'),(1119,'Šķirotava','lv'),(1119,'Шкиротава','ru'),(1120,'Torņakalns','en'),(1120,'Torņakalns','lv'),(1120,'Торнякалнс','ru'),(1121,'Bieriņi','en'),(1121,'Bieriņi','lv'),(1121,'Биерини','ru'),(1124,'Ķīpsala','en'),(1124,'Ķīpsala','lv'),(1124,'Кипсала','ru'),(1125,'Kleisti','en'),(1125,'Kleisti','lv'),(1125,'Клейсти','ru'),(1126,'Jaunmīlgrāvis','en'),(1126,'Jaunmīlgrāvis','lv'),(1126,'Яунмилгравис','ru'),(1129,'Daugavgrīva','en'),(1129,'Daugavgrīva','lv'),(1129,'Даугавгрива','ru'),(1130,'Vecāķi','en'),(1130,'Vecāķi','lv'),(1130,'Вецаки','ru'),(1131,'Dārziņi','en'),(1131,'Dārziņi','lv'),(1131,'Дарзини','ru'),(1132,'Rumbula','en'),(1132,'Rumbula','lv'),(1132,'Румбула','ru'),(1135,'Mangaļsala','en'),(1135,'Mangaļsala','lv'),(1135,'Мангальсала','ru'),(1171,'Katlakalns','en'),(1171,'Katlakalns','lv'),(1171,'Катлакалнс','ru'),(1172,'Dreiliņi','en'),(1172,'Dreiliņi','lv'),(1172,'Дрейлини','ru'),(1173,'Berģi','en'),(1173,'Berģi','lv'),(1173,'Берги','ru'),(1180,'Bukulti','en'),(1180,'Bukulti','lv'),(1180,'Букулты','ru'),(5061,'Beberbeķi','en'),(5061,'Beberbeķi','lv'),(5061,'Бебербеки','ru'),(5062,'Bieķēnsala','en'),(5062,'Bieķēnsala','lv'),(5062,'Биекенсала','ru'),(5065,'Jāņavārti','en'),(5065,'Jāņavārti','lv'),(5065,'Яняварти','ru'),(5067,'Klīversala','en'),(5067,'Klīversala','lv'),(5067,'Кливерсала','ru'),(5070,'Maskavas priekšpilsēta','en'),(5070,'Maskavas priekšpilsēta','lv'),(5070,'р-он ул. Маскавас','ru'),(5071,'Ozolciems','en'),(5071,'Ozolciems','lv'),(5071,'Озолциемс','ru'),(5073,'VEF','en'),(5073,'VEF','lv'),(5073,'VEF','ru'),(5074,'Vecdaugava','en'),(5074,'Vecdaugava','lv'),(5074,'Вецдаугава','ru'),(14198,'Jaunjelgava','en'),(14198,'Jaunjelgava','lv'),(14198,'Яунелгава','ru'),(14199,'Pļaviņas','en'),(14199,'Pļaviņas','lv'),(14199,'Плявиняс','ru'),(14200,'Aiviekstes pag.','en'),(14200,'Aiviekstes pag.','lv'),(14200,'Айвиекстская вол.','ru'),(14201,'Bebru pag.','en'),(14201,'Bebru pag.','lv'),(14201,'Бербская вол.','ru'),(14202,'Daudzeses pag.','en'),(14202,'Daudzeses pag.','lv'),(14202,'Даудзеская вол.','ru'),(14205,'Klintaines pag.','en'),(14205,'Klintaines pag.','lv'),(14205,'Клинтайнская вол.','ru'),(14206,'Kokneses pag.','en'),(14206,'Kokneses pag.','lv'),(14206,'Кокнесская вол.','ru'),(14207,'Kurmenes pag.','en'),(14207,'Kurmenes pag.','lv'),(14207,'Курменская вол.','ru'),(14209,'Neretas pag.','en'),(14209,'Neretas pag.','lv'),(14209,'Неретская вол.','ru'),(14212,'Skrīveru pag.','en'),(14212,'Skrīveru pag.','lv'),(14212,'Скриверская вол.','ru'),(14216,'Valles pag.','en'),(14216,'Valles pag.','lv'),(14216,'Валльская вол.','ru'),(14218,'Zalves pag.','en'),(14218,'Zalves pag.','lv'),(14218,'Залвская вол.','ru'),(14220,'Alūksne','en'),(14220,'Alūksne','lv'),(14220,'Алуксне','ru'),(14221,'Ape','en'),(14221,'Ape','lv'),(14221,'Апе','ru'),(14222,'Alsviķu pag.','en'),(14222,'Alsviķu pag.','lv'),(14222,'Алсвикская вол.','ru'),(14225,'Gaujienas pag.','en'),(14225,'Gaujienas pag.','lv'),(14225,'Гауиенская вол.','ru'),(14227,'Jaunalūksnes pag.','en'),(14227,'Jaunalūksnes pag.','lv'),(14227,'Яуналуксненская вол.','ru'),(14228,'Jaunannas pag.','en'),(14228,'Jaunannas pag.','lv'),(14228,'Яунаннинская вол.','ru'),(14229,'Jaunlaicenes pag.','en'),(14229,'Jaunlaicenes pag.','lv'),(14229,'Яунлайценская вол.','ru'),(14233,'Mālupes pag.','en'),(14233,'Mālupes pag.','lv'),(14233,'Малупская вол.','ru'),(14236,'Trapenes pag.','en'),(14236,'Trapenes pag.','lv'),(14236,'Трапенская вол.','ru'),(14240,'Ziemera pag.','en'),(14240,'Ziemera pag.','lv'),(14240,'Зиемерская вол.','ru'),(14241,'Balvi','en'),(14241,'Balvi','lv'),(14241,'Балви','ru'),(14242,'Viļaka','en'),(14242,'Viļaka','lv'),(14242,'Виляка','ru'),(14244,'Balvu pag.','en'),(14244,'Balvu pag.','lv'),(14244,'Балвская вол.','ru'),(14261,'Žīguru pag.','en'),(14261,'Žīguru pag.','lv'),(14261,'Жигурская вол.','ru'),(14262,'Bauska','en'),(14262,'Bauska','lv'),(14262,'Бауска','ru'),(14263,'Brunavas pag.','en'),(14263,'Brunavas pag.','lv'),(14263,'Брунавская вол.','ru'),(14264,'Bārbeles pag.','en'),(14264,'Bārbeles pag.','lv'),(14264,'Барбельская вол.','ru'),(14265,'Ceraukstes pag.','en'),(14265,'Ceraukstes pag.','lv'),(14265,'Цераукстская вол.','ru'),(14266,'Codes pag.','en'),(14266,'Codes pag.','lv'),(14266,'Цодская вол.','ru'),(14267,'Dāviņu pag.','en'),(14267,'Dāviņu pag.','lv'),(14267,'Давиньская вол.','ru'),(14268,'Gailīšu pag.','en'),(14268,'Gailīšu pag.','lv'),(14268,'Гайлишская вол.','ru'),(14269,'Mežotnes pag.','en'),(14269,'Mežotnes pag.','lv'),(14269,'Межотненская вол.','ru'),(14270,'Rundāles pag.','en'),(14270,'Rundāles pag.','lv'),(14270,'Рундальская вол.','ru'),(14273,'Svitenes pag.','en'),(14273,'Svitenes pag.','lv'),(14273,'Свитенская вол.','ru'),(14274,'Vecsaules pag.','en'),(14274,'Vecsaules pag.','lv'),(14274,'Вецсаулская вол.','ru'),(14275,'Vecumnieku pag.','en'),(14275,'Vecumnieku pag.','lv'),(14275,'Вецумниекская вол.','ru'),(14276,'Viesturu pag.','en'),(14276,'Viesturu pag.','lv'),(14276,'Виестурская вол.','ru'),(14277,'Īslīces pag.','en'),(14277,'Īslīces pag.','lv'),(14277,'Ислицская вол.','ru'),(14278,'Iecavas nov.','en'),(14278,'Iecavas nov.','lv'),(14278,'Иецавский округ','ru'),(14279,'Cēsis','en'),(14279,'Cēsis','lv'),(14279,'Цесис','ru'),(14280,'Līgatne','en'),(14280,'Līgatne','lv'),(14280,'Лигатне','ru'),(14281,'Drustu pag.','en'),(14281,'Drustu pag.','lv'),(14281,'Друстская вол.','ru'),(14282,'Dzērbenes pag.','en'),(14282,'Dzērbenes pag.','lv'),(14282,'Дзербенская вол.','ru'),(14283,'Inešu pag.','en'),(14283,'Inešu pag.','lv'),(14283,'Инешская вол.','ru'),(14284,'Jaunpiebalgas pag.','en'),(14284,'Jaunpiebalgas pag.','lv'),(14284,'Яунпиебалгская вол.','ru'),(14285,'Kaives pag.','en'),(14285,'Kaives pag.','lv'),(14285,'Кайвская вол.','ru'),(14286,'Liepas pag.','en'),(14286,'Liepas pag.','lv'),(14286,'Лиепская вол.','ru'),(14287,'Līgatnes pag.','en'),(14287,'Līgatnes pag.','lv'),(14287,'Лигатнененская вол.','ru'),(14289,'Nītaures pag.','en'),(14289,'Nītaures pag.','lv'),(14289,'Нитаурская вол.','ru'),(14290,'Priekuļu pag.','en'),(14290,'Priekuļu pag.','lv'),(14290,'Приекульская вол.','ru'),(14292,'Raunas pag.','en'),(14292,'Raunas pag.','lv'),(14292,'Раунская вол.','ru'),(14293,'Skujenes pag.','en'),(14293,'Skujenes pag.','lv'),(14293,'Скуенская вол.','ru'),(14294,'Stalbes pag.','en'),(14294,'Stalbes pag.','lv'),(14294,'Сталбская вол.','ru'),(14295,'Straupes pag.','en'),(14295,'Straupes pag.','lv'),(14295,'Страупская вол.','ru'),(14296,'Taurenes pag.','en'),(14296,'Taurenes pag.','lv'),(14296,'Тауренская вол.','ru'),(14297,'Vaives pag.','en'),(14297,'Vaives pag.','lv'),(14297,'Вайвская вол.','ru'),(14299,'Veselavas pag.','en'),(14299,'Veselavas pag.','lv'),(14299,'Веселавская вол.','ru'),(14300,'Zaubes pag.','en'),(14300,'Zaubes pag.','lv'),(14300,'Заубская вол.','ru'),(14303,'Subate','en'),(14303,'Subate','lv'),(14303,'Субате','ru'),(14304,'Ambeļu pag.','en'),(14304,'Ambeļu pag.','lv'),(14304,'Амбельская вол.','ru'),(14305,'Biķernieku pag.','en'),(14305,'Biķernieku pag.','lv'),(14305,'Бикерниекская вол.','ru'),(14309,'Eglaines pag.','en'),(14309,'Eglaines pag.','lv'),(14309,'Эглайнская вол.','ru'),(14310,'Kalkūnes pag.','en'),(14310,'Kalkūnes pag.','lv'),(14310,'Калкунская вол.','ru'),(14311,'Kalupes pag.','en'),(14311,'Kalupes pag.','lv'),(14311,'Калупская вол.','ru'),(14313,'Līksnas pag.','en'),(14313,'Līksnas pag.','lv'),(14313,'Ликсненская вол.','ru'),(14315,'Medumu pag.','en'),(14315,'Medumu pag.','lv'),(14315,'Медумская вол.','ru'),(14316,'Naujenes pag.','en'),(14316,'Naujenes pag.','lv'),(14316,'Науенская вол.','ru'),(14319,'Skrudalienas pag.','en'),(14319,'Skrudalienas pag.','lv'),(14319,'Скрудалиенская вол','ru'),(14321,'Sventes pag.','en'),(14321,'Sventes pag.','lv'),(14321,'Свентская вол.','ru'),(14323,'Vaboles pag.','en'),(14323,'Vaboles pag.','lv'),(14323,'Вавольская вол.','ru'),(14325,'Višķu pag.','en'),(14325,'Višķu pag.','lv'),(14325,'Вишкенская вол.','ru'),(14327,'Auce','en'),(14327,'Auce','lv'),(14327,'Ауце','ru'),(14328,'Dobele','en'),(14328,'Dobele','lv'),(14328,'Добеле','ru'),(14329,'Annenieku pag.','en'),(14329,'Annenieku pag.','lv'),(14329,'Аннениекская вол.','ru'),(14330,'Auces l. t.','en'),(14330,'Auces l. t.','lv'),(14330,'Auces l. t.','ru'),(14331,'Auru pag.','en'),(14331,'Auru pag.','lv'),(14331,'Аурская вол.','ru'),(14333,'Bēnes pag.','en'),(14333,'Bēnes pag.','lv'),(14333,'Бенесская вол.','ru'),(14334,'Bērzes pag.','en'),(14334,'Bērzes pag.','lv'),(14334,'Берзская вол.','ru'),(14335,'Dobeles pag.','en'),(14335,'Dobeles pag.','lv'),(14335,'Добельская вол.','ru'),(14336,'Jaunbērzes pag.','en'),(14336,'Jaunbērzes pag.','lv'),(14336,'Яунберзская вол.','ru'),(14337,'Krimūnu pag.','en'),(14337,'Krimūnu pag.','lv'),(14337,'Кримунская вол.','ru'),(14342,'Vītiņu pag.','en'),(14342,'Vītiņu pag.','lv'),(14342,'Витиньская вол.','ru'),(14343,'Zebrenes pag.','en'),(14343,'Zebrenes pag.','lv'),(14343,'Зебренская вол.','ru'),(14344,'Īles pag.','en'),(14344,'Īles pag.','lv'),(14344,'Ильская вол.','ru'),(14346,'Gulbene','en'),(14346,'Gulbene','lv'),(14346,'Гулбене','ru'),(14347,'Beļavas pag.','en'),(14347,'Beļavas pag.','lv'),(14347,'Белявская вол.','ru'),(14348,'Daukstu pag.','en'),(14348,'Daukstu pag.','lv'),(14348,'Даукстская вол.','ru'),(14351,'Jaungulbenes pag.','en'),(14351,'Jaungulbenes pag.','lv'),(14351,'Яунгулбенская вол.','ru'),(14353,'Litenes pag.','en'),(14353,'Litenes pag.','lv'),(14353,'Литенская вол.','ru'),(14354,'Lizuma pag.','en'),(14354,'Lizuma pag.','lv'),(14354,'Лизумская вол.','ru'),(14355,'Līgo pag.','en'),(14355,'Līgo pag.','lv'),(14355,'Лиговская вол.','ru'),(14356,'Rankas pag.','en'),(14356,'Rankas pag.','lv'),(14356,'Ранкская вол.','ru'),(14357,'Stradu pag.','en'),(14357,'Stradu pag.','lv'),(14357,'Страдская вол.','ru'),(14358,'Stāmerienas pag.','en'),(14358,'Stāmerienas pag.','lv'),(14358,'Стамериенская вол.','ru'),(14359,'Tirzas pag.','en'),(14359,'Tirzas pag.','lv'),(14359,'Тирзская вол.','ru'),(14360,'Kalnciems','en'),(14360,'Kalnciems','lv'),(14360,'Калнциемс','ru'),(14361,'Elejas pag.','en'),(14361,'Elejas pag.','lv'),(14361,'Элейская вол.','ru'),(14362,'Glūdas pag.','en'),(14362,'Glūdas pag.','lv'),(14362,'Глудская вол.','ru'),(14363,'Jaunsvirlaukas pag.','en'),(14363,'Jaunsvirlaukas pag.','lv'),(14363,'Яунсвирлаукская вол.','ru'),(14364,'Kalnciema l. t.','en'),(14364,'Kalnciema l. t.','lv'),(14364,'Kalnciema l. t.','ru'),(14365,'Lielplatones pag.','en'),(14365,'Lielplatones pag.','lv'),(14365,'Лиелплатонская вол','ru'),(14366,'Līvbērzes pag.','en'),(14366,'Līvbērzes pag.','lv'),(14366,'Ливберзская вол.','ru'),(14367,'Platones pag.','en'),(14367,'Platones pag.','lv'),(14367,'Платонская вол.','ru'),(14368,'Sesavas pag.','en'),(14368,'Sesavas pag.','lv'),(14368,'Сесавская вол.','ru'),(14369,'Sidrabenes pag.','en'),(14369,'Sidrabenes pag.','lv'),(14369,'Сидрабенская вол.','ru'),(14370,'Svētes pag.','en'),(14370,'Svētes pag.','lv'),(14370,'Светская вол.','ru'),(14371,'Vilces pag.','en'),(14371,'Vilces pag.','lv'),(14371,'Вилценская вол.','ru'),(14372,'Vircavas pag.','en'),(14372,'Vircavas pag.','lv'),(14372,'Вирцавская вол.','ru'),(14373,'Zaļenieku pag.','en'),(14373,'Zaļenieku pag.','lv'),(14373,'Залениекская вол.','ru'),(14375,'Valgundes nov.','en'),(14375,'Valgundes nov.','lv'),(14375,'Valgundes nov.','ru'),(14376,'Aknīste','en'),(14376,'Aknīste','lv'),(14376,'Акнисте','ru'),(14377,'Jēkabpils','en'),(14377,'Jēkabpils','lv'),(14377,'Екабпилс','ru'),(14378,'Viesīte','en'),(14378,'Viesīte','lv'),(14378,'Виесите','ru'),(14381,'Atašienes pag.','en'),(14381,'Atašienes pag.','lv'),(14381,'Аташиенская вол.','ru'),(14383,'Dunavas pag.','en'),(14383,'Dunavas pag.','lv'),(14383,'Дунавская вол.','ru'),(14387,'Krustpils pag.','en'),(14387,'Krustpils pag.','lv'),(14387,'Крустпилсская вол.','ru'),(14391,'Rites pag.','en'),(14391,'Rites pag.','lv'),(14391,'Ритесская вол.','ru'),(14393,'Salas pag.','en'),(14393,'Salas pag.','lv'),(14393,'Салская вол.','ru'),(14394,'Saukas pag.','en'),(14394,'Saukas pag.','lv'),(14394,'Саукская вол.','ru'),(14396,'Variešu pag.','en'),(14396,'Variešu pag.','lv'),(14396,'Вариешская вол.','ru'),(14399,'Zasas pag.','en'),(14399,'Zasas pag.','lv'),(14399,'Засская вол.','ru'),(14401,'Dagda','en'),(14401,'Dagda','lv'),(14401,'Дагда','ru'),(14402,'Andrupenes pag.','en'),(14402,'Andrupenes pag.','lv'),(14402,'Андрупенская вол.','ru'),(14408,'Ezernieku pag.','en'),(14408,'Ezernieku pag.','lv'),(14408,'Эзерниекская вол.','ru'),(14409,'Grāveru pag.','en'),(14409,'Grāveru pag.','lv'),(14409,'Граверская вол.','ru'),(14410,'Indras pag.','en'),(14410,'Indras pag.','lv'),(14410,'Индрская вол.','ru'),(14419,'Skaistas pag.','en'),(14419,'Skaistas pag.','lv'),(14419,'Скайстская вол.','ru'),(14421,'Šķaunes pag.','en'),(14421,'Šķaunes pag.','lv'),(14421,'Шкяунская вол.','ru'),(14422,'Šķeltovas pag.','en'),(14422,'Šķeltovas pag.','lv'),(14422,'Шкелтовская вол.','ru'),(14423,'Ūdrīšu pag.','en'),(14423,'Ūdrīšu pag.','lv'),(14423,'Удришская вол.','ru'),(14426,'Kuldīga','en'),(14426,'Kuldīga','lv'),(14426,'Кулдига','ru'),(14427,'Skrunda','en'),(14427,'Skrunda','lv'),(14427,'Скрунда','ru'),(14428,'Alsungas pag.','en'),(14428,'Alsungas pag.','lv'),(14428,'Алсунгская вол.','ru'),(14430,'Kabiles pag.','en'),(14430,'Kabiles pag.','lv'),(14430,'Кабилская вол.','ru'),(14431,'Kurmāles pag.','en'),(14431,'Kurmāles pag.','lv'),(14431,'Курмальская вол.','ru'),(14432,'Laidu pag.','en'),(14432,'Laidu pag.','lv'),(14432,'Лайдская вол.','ru'),(14434,'Padures pag.','en'),(14434,'Padures pag.','lv'),(14434,'Падурская вол.','ru'),(14435,'Pelču pag.','en'),(14435,'Pelču pag.','lv'),(14435,'Пелчская вол.','ru'),(14437,'Rendas pag.','en'),(14437,'Rendas pag.','lv'),(14437,'Рендасская вол.','ru'),(14439,'Rumbas pag.','en'),(14439,'Rumbas pag.','lv'),(14439,'Румбская вол.','ru'),(14440,'Skrundas l. t.','en'),(14440,'Skrundas l. t.','lv'),(14440,'Skrundas l. t.','ru'),(14441,'Snēpeles pag.','en'),(14441,'Snēpeles pag.','lv'),(14441,'Снепельская вол.','ru'),(14443,'Vārmes pag.','en'),(14443,'Vārmes pag.','lv'),(14443,'Вармская вол.','ru'),(14444,'Ēdoles pag.','en'),(14444,'Ēdoles pag.','lv'),(14444,'Эдольская вол.','ru'),(14446,'Aizpute','en'),(14446,'Aizpute','lv'),(14446,'Айзпуте','ru'),(14447,'Grobiņa','en'),(14447,'Grobiņa','lv'),(14447,'Гробиня','ru'),(14448,'Priekule','en'),(14448,'Priekule','lv'),(14448,'Приекуле','ru'),(14449,'Aizputes pag.','en'),(14449,'Aizputes pag.','lv'),(14449,'Айзпутская вол.','ru'),(14452,'Cīravas pag.','en'),(14452,'Cīravas pag.','lv'),(14452,'Циравская вол.','ru'),(14454,'Dunikas pag.','en'),(14454,'Dunikas pag.','lv'),(14454,'Дуникская вол.','ru'),(14456,'Gaviezes pag.','en'),(14456,'Gaviezes pag.','lv'),(14456,'Гавиезская вол.','ru'),(14458,'Grobiņas pag.','en'),(14458,'Grobiņas pag.','lv'),(14458,'Гробиньская вол.','ru'),(14460,'Kalētu pag.','en'),(14460,'Kalētu pag.','lv'),(14460,'Калетская вол.','ru'),(14461,'Kazdangas pag.','en'),(14461,'Kazdangas pag.','lv'),(14461,'Каздангская вол.','ru'),(14463,'Medzes pag.','en'),(14463,'Medzes pag.','lv'),(14463,'Медская вол.','ru'),(14464,'Nīcas pag.','en'),(14464,'Nīcas pag.','lv'),(14464,'Ницская вол.','ru'),(14465,'Otaņķu pag.','en'),(14465,'Otaņķu pag.','lv'),(14465,'Отаньская вол.','ru'),(14466,'Priekules pag.','en'),(14466,'Priekules pag.','lv'),(14466,'Приекульская вол.','ru'),(14468,'Vaiņodes pag.','en'),(14468,'Vaiņodes pag.','lv'),(14468,'Вайнедская вол.','ru'),(14471,'Vērgales pag.','en'),(14471,'Vērgales pag.','lv'),(14471,'Вергальская вол.','ru'),(14474,'Ainaži','en'),(14474,'Ainaži','lv'),(14474,'Айнажи','ru'),(14475,'Aloja','en'),(14475,'Aloja','lv'),(14475,'Алоя','ru'),(14476,'Limbaži','en'),(14476,'Limbaži','lv'),(14476,'Лимбажи','ru'),(14477,'Salacgrīva','en'),(14477,'Salacgrīva','lv'),(14477,'Салацгрива','ru'),(14478,'Staicele','en'),(14478,'Staicele','lv'),(14478,'Стайцеле','ru'),(14484,'Liepupes pag.','en'),(14484,'Liepupes pag.','lv'),(14484,'Лиепупская вол.','ru'),(14485,'Limbažu pag.','en'),(14485,'Limbažu pag.','lv'),(14485,'Лимбажская вол.','ru'),(14487,'Pāles pag.','en'),(14487,'Pāles pag.','lv'),(14487,'Палесская вол.','ru'),(14488,'Salacgrīvas l. t.','en'),(14488,'Salacgrīvas l. t.','lv'),(14488,'Salacgrīvas l. t.','ru'),(14489,'Skultes pag.','en'),(14489,'Skultes pag.','lv'),(14489,'Скултская вол.','ru'),(14491,'Umurgas pag.','en'),(14491,'Umurgas pag.','lv'),(14491,'Умургская вол.','ru'),(14492,'Vidrižu pag.','en'),(14492,'Vidrižu pag.','lv'),(14492,'Видрижская вол.','ru'),(14493,'Viļķenes pag.','en'),(14493,'Viļķenes pag.','lv'),(14493,'Вилькенская вол.','ru'),(14494,'Kārsava','en'),(14494,'Kārsava','lv'),(14494,'Карсава','ru'),(14495,'Ludza','en'),(14495,'Ludza','lv'),(14495,'Лудза','ru'),(14497,'Briģu pag.','en'),(14497,'Briģu pag.','lv'),(14497,'Бригская вол.','ru'),(14498,'Cirmas pag.','en'),(14498,'Cirmas pag.','lv'),(14498,'Цирмская вол.','ru'),(14503,'Malnavas pag.','en'),(14503,'Malnavas pag.','lv'),(14503,'Малнавская вол.','ru'),(14506,'Nirzas pag.','en'),(14506,'Nirzas pag.','lv'),(14506,'Нирзская вол.','ru'),(14514,'Ņukšu pag.','en'),(14514,'Ņukšu pag.','lv'),(14514,'Ņukšu pag.','ru'),(14517,'Cesvaine','en'),(14517,'Cesvaine','lv'),(14517,'Цесвайне','ru'),(14518,'Madona','en'),(14518,'Madona','lv'),(14518,'Мадона','ru'),(14519,'Varakļāni','en'),(14519,'Varakļāni','lv'),(14519,'Варакляны','ru'),(14520,'Aronas pag.','en'),(14520,'Aronas pag.','lv'),(14520,'Аронская вол.','ru'),(14521,'Barkavas pag.','en'),(14521,'Barkavas pag.','lv'),(14521,'Баркавская вол.','ru'),(14522,'Bērzaunes pag.','en'),(14522,'Bērzaunes pag.','lv'),(14522,'Берзаунская вол.','ru'),(14524,'Dzelzavas pag.','en'),(14524,'Dzelzavas pag.','lv'),(14524,'Дзелзавская вол.','ru'),(14525,'Kalsnavas pag.','en'),(14525,'Kalsnavas pag.','lv'),(14525,'Калснавская вол.','ru'),(14527,'Liezēres pag.','en'),(14527,'Liezēres pag.','lv'),(14527,'Лиезерская вол.','ru'),(14529,'Mārcienas pag.','en'),(14529,'Mārcienas pag.','lv'),(14529,'Марциенская вол.','ru'),(14530,'Mētrienas pag.','en'),(14530,'Mētrienas pag.','lv'),(14530,'Метриенская вол.','ru'),(14532,'Praulienas pag.','en'),(14532,'Praulienas pag.','lv'),(14532,'Праулиенская вол.','ru'),(14533,'Sarkaņu pag.','en'),(14533,'Sarkaņu pag.','lv'),(14533,'Сарканьская вол.','ru'),(14534,'Varakļānu pag.','en'),(14534,'Varakļānu pag.','lv'),(14534,'Вараклянская вол.','ru'),(14539,'Birzgales pag.','en'),(14539,'Birzgales pag.','lv'),(14539,'Бирзгальская вол.','ru'),(14540,'Jumpravas pag.','en'),(14540,'Jumpravas pag.','lv'),(14540,'Юмправская вол.','ru'),(14541,'Krapes pag.','en'),(14541,'Krapes pag.','lv'),(14541,'Крапская вол.','ru'),(14542,'Lauberes pag.','en'),(14542,'Lauberes pag.','lv'),(14542,'Лауберская вол.','ru'),(14543,'Lēdmanes pag.','en'),(14543,'Lēdmanes pag.','lv'),(14543,'Ледманская вол.','ru'),(14544,'Madlienas pag.','en'),(14544,'Madlienas pag.','lv'),(14544,'Мадлиенская вол.','ru'),(14545,'Mazozolu pag.','en'),(14545,'Mazozolu pag.','lv'),(14545,'Мазозолская вол.','ru'),(14546,'Meņģeles pag.','en'),(14546,'Meņģeles pag.','lv'),(14546,'Меньгелская вол.','ru'),(14547,'Suntažu pag.','en'),(14547,'Suntažu pag.','lv'),(14547,'Сунтажская вол.','ru'),(14548,'Taurupes pag.','en'),(14548,'Taurupes pag.','lv'),(14548,'Таурупская вол.','ru'),(14549,'Ķeipenes pag.','en'),(14549,'Ķeipenes pag.','lv'),(14549,'Кейпенская вол.','ru'),(14554,'Aglonas pag.','en'),(14554,'Aglonas pag.','lv'),(14554,'Аглонская вол.','ru'),(14559,'Sutru pag.','en'),(14559,'Sutru pag.','lv'),(14559,'Сутрская вол.','ru'),(14565,'Viļāni','en'),(14565,'Viļāni','lv'),(14565,'Виляны','ru'),(14566,'Audriņu pag.','en'),(14566,'Audriņu pag.','lv'),(14566,'Аудриньская вол.','ru'),(14567,'Bērzgales pag.','en'),(14567,'Bērzgales pag.','lv'),(14567,'Берзгальская вол.','ru'),(14568,'Dekšāres pag.','en'),(14568,'Dekšāres pag.','lv'),(14568,'Декшарская вол.','ru'),(14570,'Feimaņu pag.','en'),(14570,'Feimaņu pag.','lv'),(14570,'Фейманская вол.','ru'),(14573,'Ilzeskalna pag.','en'),(14573,'Ilzeskalna pag.','lv'),(14573,'Илзескалнская вол.','ru'),(14576,'Lendžu pag.','en'),(14576,'Lendžu pag.','lv'),(14576,'Ленджская вол.','ru'),(14577,'Lūznavas pag.','en'),(14577,'Lūznavas pag.','lv'),(14577,'Лузнавская вол.','ru'),(14578,'Maltas pag.','en'),(14578,'Maltas pag.','lv'),(14578,'Малтская вол.','ru'),(14579,'Mākoņkalna pag.','en'),(14579,'Mākoņkalna pag.','lv'),(14579,'Маконькалнская вол.','ru'),(14580,'Nagļu pag.','en'),(14580,'Nagļu pag.','lv'),(14580,'Нагленская вол.','ru'),(14583,'Ozolmuižas pag.','en'),(14583,'Ozolmuižas pag.','lv'),(14583,'Озолмуйжская вол.','ru'),(14584,'Pušas pag.','en'),(14584,'Pušas pag.','lv'),(14584,'Пушская вол.','ru'),(14585,'Rikavas pag.','en'),(14585,'Rikavas pag.','lv'),(14585,'Рикавская вол.','ru'),(14586,'Sakstagala pag.','en'),(14586,'Sakstagala pag.','lv'),(14586,'Сакстагальская вол.','ru'),(14587,'Silmalas pag.','en'),(14587,'Silmalas pag.','lv'),(14587,'Силмалская вол.','ru'),(14589,'Stoļerovas pag.','en'),(14589,'Stoļerovas pag.','lv'),(14589,'Столеровская вол.','ru'),(14590,'Stružānu pag.','en'),(14590,'Stružānu pag.','lv'),(14590,'Стружанская вол.','ru'),(14591,'Viļānu pag.','en'),(14591,'Viļānu pag.','lv'),(14591,'Вилянская вол.','ru'),(14592,'Vērēmu pag.','en'),(14592,'Vērēmu pag.','lv'),(14592,'Веремская вол.','ru'),(14593,'Čornajas pag.','en'),(14593,'Čornajas pag.','lv'),(14593,'Чернайская вол.','ru'),(14594,'Saldus','en'),(14594,'Saldus','lv'),(14594,'Салдус','ru'),(14595,'Ezeres pag.','en'),(14595,'Ezeres pag.','lv'),(14595,'Эзерская вол.','ru'),(14599,'Kursīšu pag.','en'),(14599,'Kursīšu pag.','lv'),(14599,'Курсишская вол.','ru'),(14600,'Lutriņu pag.','en'),(14600,'Lutriņu pag.','lv'),(14600,'Лутриньская вол.','ru'),(14601,'Novadnieku pag.','en'),(14601,'Novadnieku pag.','lv'),(14601,'Новадниекская вол.','ru'),(14602,'Nīgrandes pag.','en'),(14602,'Nīgrandes pag.','lv'),(14602,'Ниграндская вол.','ru'),(14605,'Saldus pag.','en'),(14605,'Saldus pag.','lv'),(14605,'Салдусская вол.','ru'),(14606,'Vadakstes pag.','en'),(14606,'Vadakstes pag.','lv'),(14606,'Вадакстская вол.','ru'),(14612,'Stende','en'),(14612,'Stende','lv'),(14612,'Стенде','ru'),(14613,'Talsi','en'),(14613,'Talsi','lv'),(14613,'Талси','ru'),(14614,'Valdemārpils','en'),(14614,'Valdemārpils','lv'),(14614,'Валдемарпилс','ru'),(14615,'Balgales pag.','en'),(14615,'Balgales pag.','lv'),(14615,'Балгальская вол.','ru'),(14616,'Dundagas pag.','en'),(14616,'Dundagas pag.','lv'),(14616,'Дундагская вол.','ru'),(14617,'Kolkas pag.','en'),(14617,'Kolkas pag.','lv'),(14617,'Колкская вол.','ru'),(14618,'Laidzes pag.','en'),(14618,'Laidzes pag.','lv'),(14618,'Лайдзенская вол.','ru'),(14619,'Laucienes pag.','en'),(14619,'Laucienes pag.','lv'),(14619,'Лауциенская вол.','ru'),(14621,'Lībagu pag.','en'),(14621,'Lībagu pag.','lv'),(14621,'Либаргская вол.','ru'),(14622,'Mērsraga pag.','en'),(14622,'Mērsraga pag.','lv'),(14622,'Мерсрагская вол.','ru'),(14623,'Rojas pag.','en'),(14623,'Rojas pag.','lv'),(14623,'Ройская вол.','ru'),(14625,'Valdemārpils l. t.','en'),(14625,'Valdemārpils l. t.','lv'),(14625,'Valdemārpils l. t.','ru'),(14626,'Valdgales pag.','en'),(14626,'Valdgales pag.','lv'),(14626,'Валдгальская вол.','ru'),(14627,'Vandzenes pag.','en'),(14627,'Vandzenes pag.','lv'),(14627,'Вандзенская вол.','ru'),(14628,'Virbu pag.','en'),(14628,'Virbu pag.','lv'),(14628,'Вирбская вол.','ru'),(14629,'Ģibuļu pag.','en'),(14629,'Ģibuļu pag.','lv'),(14629,'Гибульская вол.','ru'),(14633,'Tukums','en'),(14633,'Tukums','lv'),(14633,'Тукумс','ru'),(14634,'Degoles pag.','en'),(14634,'Degoles pag.','lv'),(14634,'Дегольская вол.','ru'),(14635,'Džūkstes pag.','en'),(14635,'Džūkstes pag.','lv'),(14635,'Джукстеская вол.','ru'),(14636,'Engures pag.','en'),(14636,'Engures pag.','lv'),(14636,'Энгурская вол.','ru'),(14637,'Irlavas pag.','en'),(14637,'Irlavas pag.','lv'),(14637,'Ирлавская вол.','ru'),(14638,'Jaunpils pag.','en'),(14638,'Jaunpils pag.','lv'),(14638,'Яунпилсская вол.','ru'),(14640,'Lestenes pag.','en'),(14640,'Lestenes pag.','lv'),(14640,'Лестенская вол.','ru'),(14641,'Pūres pag.','en'),(14641,'Pūres pag.','lv'),(14641,'Пурская вол.','ru'),(14642,'Slampes pag.','en'),(14642,'Slampes pag.','lv'),(14642,'Слампская вол.','ru'),(14643,'Smārdes pag.','en'),(14643,'Smārdes pag.','lv'),(14643,'Смардская вол.','ru'),(14645,'Tumes pag.','en'),(14645,'Tumes pag.','lv'),(14645,'Тумская вол.','ru'),(14646,'Viesatu pag.','en'),(14646,'Viesatu pag.','lv'),(14646,'Виесатская вол.','ru'),(14649,'Zentenes pag.','en'),(14649,'Zentenes pag.','lv'),(14649,'Зентенская вол.','ru'),(14651,'Lapmežciema nov.','en'),(14651,'Lapmežciema nov.','lv'),(14651,'Лапмежциемский округ','ru'),(14652,'Seda','en'),(14652,'Seda','lv'),(14652,'Седа','ru'),(14653,'Smiltene','en'),(14653,'Smiltene','lv'),(14653,'Смилтене','ru'),(14654,'Strenči','en'),(14654,'Strenči','lv'),(14654,'Стренчи','ru'),(14655,'Valka','en'),(14655,'Valka','lv'),(14655,'Валка','ru'),(14657,'Blomes pag.','en'),(14657,'Blomes pag.','lv'),(14657,'Бломская вол.','ru'),(14661,'Kārķu pag.','en'),(14661,'Kārķu pag.','lv'),(14661,'волость Каркью','ru'),(14662,'Launkalnes pag.','en'),(14662,'Launkalnes pag.','lv'),(14662,'Лаункалнская вол.','ru'),(14663,'Palsmanes pag.','en'),(14663,'Palsmanes pag.','lv'),(14663,'Палсманская вол.','ru'),(14666,'Smiltenes pag.','en'),(14666,'Smiltenes pag.','lv'),(14666,'Смилтенская вол.','ru'),(14667,'Trikātas pag.','en'),(14667,'Trikātas pag.','lv'),(14667,'Трикатская вол.','ru'),(14668,'Valkas pag.','en'),(14668,'Valkas pag.','lv'),(14668,'Валкская вол.','ru'),(14670,'Vijciema pag.','en'),(14670,'Vijciema pag.','lv'),(14670,'Вийциемская вол.','ru'),(14674,'Mazsalaca','en'),(14674,'Mazsalaca','lv'),(14674,'Мазсалаца','ru'),(14675,'Rūjiena','en'),(14675,'Rūjiena','lv'),(14675,'Руиена','ru'),(14676,'Valmiera','en'),(14676,'Valmiera','lv'),(14676,'Валмиера','ru'),(14677,'Brenguļu pag.','en'),(14677,'Brenguļu pag.','lv'),(14677,'Бренгульская вол.','ru'),(14678,'Burtnieku pag.','en'),(14678,'Burtnieku pag.','lv'),(14678,'Буртниекская вол.','ru'),(14679,'Bērzaines pag.','en'),(14679,'Bērzaines pag.','lv'),(14679,'Берзайнская вол.','ru'),(14680,'Dikļu pag.','en'),(14680,'Dikļu pag.','lv'),(14680,'Дикльская вол.','ru'),(14682,'Jeru pag.','en'),(14682,'Jeru pag.','lv'),(14682,'волость Еру','ru'),(14683,'Kauguru pag.','en'),(14683,'Kauguru pag.','lv'),(14683,'Каугурская вол.','ru'),(14684,'Kocēnu pag.','en'),(14684,'Kocēnu pag.','lv'),(14684,'Коценская вол.','ru'),(14686,'Mazsalacas l. t.','en'),(14686,'Mazsalacas l. t.','lv'),(14686,'Mazsalacas l. t.','ru'),(14689,'Rencēnu pag.','en'),(14689,'Rencēnu pag.','lv'),(14689,'Ренценская вол.','ru'),(14690,'Skaņkalnes pag.','en'),(14690,'Skaņkalnes pag.','lv'),(14690,'Сканькалнская вол.','ru'),(14691,'Sēļu pag.','en'),(14691,'Sēļu pag.','lv'),(14691,'Сэльская вол.','ru'),(14692,'Vaidavas pag.','en'),(14692,'Vaidavas pag.','lv'),(14692,'Вайдавская вол.','ru'),(14693,'Valmieras pag.','en'),(14693,'Valmieras pag.','lv'),(14693,'Валмиерская вол.','ru'),(14694,'Vilpulkas pag.','en'),(14694,'Vilpulkas pag.','lv'),(14694,'Вилпулкская вол.','ru'),(14695,'Zilākalna pag.','en'),(14695,'Zilākalna pag.','lv'),(14695,'Зилакалнская вол.','ru'),(14698,'Piltene','en'),(14698,'Piltene','lv'),(14698,'Пилтене','ru'),(14702,'Popes pag.','en'),(14702,'Popes pag.','lv'),(14702,'Попесская вол.','ru'),(14704,'Tārgales pag.','en'),(14704,'Tārgales pag.','lv'),(14704,'Таргальская вол.','ru'),(14705,'Ugāles pag.','en'),(14705,'Ugāles pag.','lv'),(14705,'Угальская вол.','ru'),(14706,'Usmas pag.','en'),(14706,'Usmas pag.','lv'),(14706,'Усмская вол.','ru'),(14708,'Vārves pag.','en'),(14708,'Vārves pag.','lv'),(14708,'Варвская вол.','ru'),(14711,'Baldone','en'),(14711,'Baldone','lv'),(14711,'Балдоне','ru'),(14712,'Baloži','en'),(14712,'Baloži','lv'),(14712,'Баложи','ru'),(14713,'Olaine','en'),(14713,'Olaine','lv'),(14713,'Олайне','ru'),(14714,'Saulkrasti','en'),(14714,'Saulkrasti','lv'),(14714,'Саулкрасты','ru'),(14715,'Vangaži','en'),(14715,'Vangaži','lv'),(14715,'Вангажи','ru'),(14716,'Allažu pag.','en'),(14716,'Allažu pag.','lv'),(14716,'Аллажская вол.','ru'),(14717,'Babītes pag.','en'),(14717,'Babītes pag.','lv'),(14717,'Бабитская вол.','ru'),(14718,'Baldones l. t.','en'),(14718,'Baldones l. t.','lv'),(14718,'Baldones l. t.','ru'),(14719,'Daugmales pag.','en'),(14719,'Daugmales pag.','lv'),(14719,'Даугмалская вол.','ru'),(14720,'Krimuldas pag.','en'),(14720,'Krimuldas pag.','lv'),(14720,'Кримулдская вол.','ru'),(14721,'Mālpils pag.','en'),(14721,'Mālpils pag.','lv'),(14721,'Малпилская вол.','ru'),(14722,'Mārupes pag.','en'),(14722,'Mārupes pag.','lv'),(14722,'Марупская вол.','ru'),(14723,'Olaines pag.','en'),(14723,'Olaines pag.','lv'),(14723,'Олайненская вол.','ru'),(14724,'Salas pag.','en'),(14724,'Salas pag.','lv'),(14724,'Салская вол.','ru'),(14725,'Saulkrastu l. t.','en'),(14725,'Saulkrastu l. t.','lv'),(14725,'Saulkrastu l. t.','ru'),(14726,'Ķekavas pag.','en'),(14726,'Ķekavas pag.','lv'),(14726,'Кекавская вол.','ru'),(14727,'Carnikavas nov.','en'),(14727,'Carnikavas nov.','lv'),(14727,'Царникавский округ','ru'),(14728,'Garkalnes nov.','en'),(14728,'Garkalnes nov.','lv'),(14728,'Гаркалненский округ','ru'),(14729,'Inčukalna nov.','en'),(14729,'Inčukalna nov.','lv'),(14729,'Инчукалнский округ','ru'),(14730,'Ropažu nov.','en'),(14730,'Ropažu nov.','lv'),(14730,'Ропажский округ','ru'),(14733,'Stopiņu nov.','en'),(14733,'Stopiņu nov.','lv'),(14733,'Стопиньский округ','ru'),(14734,'Sējas nov.','en'),(14734,'Sējas nov.','lv'),(14734,'Сейский округ','ru'),(14735,'Ādažu nov.','en'),(14735,'Ādažu nov.','lv'),(14735,'Адажский округ','ru'),(14736,'Aizkraukle','en'),(14736,'Aizkraukle','lv'),(14736,'Айзкраукле','ru'),(14737,'Ventspils','en'),(14737,'Ventspils','lv'),(14737,'Вентспилс','ru'),(14738,'Daugavpils','en'),(14738,'Daugavpils','lv'),(14738,'Даугавпилс','ru'),(14739,'Jelgava','en'),(14739,'Jelgava','lv'),(14739,'Елгава','ru'),(14740,'Krāslava','en'),(14740,'Krāslava','lv'),(14740,'Краслава','ru'),(14741,'Liepāja','en'),(14741,'Liepāja','lv'),(14741,'Лиепая','ru'),(14742,'Ogre','en'),(14742,'Ogre','lv'),(14742,'Огре','ru'),(14743,'Preiļi','en'),(14743,'Preiļi','lv'),(14743,'Прейли','ru'),(14744,'Rēzekne','en'),(14744,'Rēzekne','lv'),(14744,'Резекне','ru'),(14745,'Aizkraukles pag.','en'),(14745,'Aizkraukles pag.','lv'),(14745,'Айзкраукльская вол.','ru'),(14754,'Amatas pag.','en'),(14754,'Amatas pag.','lv'),(14754,'Аматская вол.','ru'),(14755,'Drabešu pag.','en'),(14755,'Drabešu pag.','lv'),(14755,'Аматская вол.','ru'),(14756,'Ilūkste','en'),(14756,'Ilūkste','lv'),(14756,'Илуксте','ru'),(14762,'Tērvetes pag.','en'),(14762,'Tērvetes pag.','lv'),(14762,'Терветская вол.','ru'),(14763,'Cenas pag.','en'),(14763,'Cenas pag.','lv'),(14763,'Ценская вол.','ru'),(14764,'Ozolnieku pag.','en'),(14764,'Ozolnieku pag.','lv'),(14764,'Озолниекская вол.','ru'),(14768,'Krāslavas pag.','en'),(14768,'Krāslavas pag.','lv'),(14768,'Краславская вол.','ru'),(14769,'Durbe','en'),(14769,'Durbe','lv'),(14769,'Дурбе','ru'),(14771,'Tadaiķu pag.','en'),(14771,'Tadaiķu pag.','lv'),(14771,'Тадайкская вол.','ru'),(14772,'Pāvilosta','en'),(14772,'Pāvilosta','lv'),(14772,'Павилоста','ru'),(14774,'Ciblas pag.','en'),(14774,'Ciblas pag.','lv'),(14774,'Циблская вол.','ru'),(14776,'Zilupe','en'),(14776,'Zilupe','lv'),(14776,'Зилупе','ru'),(14777,'Zaļesjes pag.','en'),(14777,'Zaļesjes pag.','lv'),(14777,'Зальесевская вол.','ru'),(14778,'Lubāna','en'),(14778,'Lubāna','lv'),(14778,'Лубана','ru'),(14781,'Sausnējas pag.','en'),(14781,'Sausnējas pag.','lv'),(14781,'Сауснейская вол.','ru'),(14782,'Ērgļu pag.','en'),(14782,'Ērgļu pag.','lv'),(14782,'Эргльская вол.','ru'),(14783,'Ikšķile','en'),(14783,'Ikšķile','lv'),(14783,'Икшкиле','ru'),(14784,'Ikšķiles l. t.','en'),(14784,'Ikšķiles l. t.','lv'),(14784,'Ikšķiles l. t.','ru'),(14785,'Lielvārde','en'),(14785,'Lielvārde','lv'),(14785,'Лиелварде','ru'),(14786,'Lielvārdes l. t.','en'),(14786,'Lielvārdes l. t.','lv'),(14786,'Lielvārdes l. t.','ru'),(14787,'Ogresgala pag.','en'),(14787,'Ogresgala pag.','lv'),(14787,'Огресгалская вол.','ru'),(14788,'Ķegums','en'),(14788,'Ķegums','lv'),(14788,'Кегумс','ru'),(14789,'Rembates pag.','en'),(14789,'Rembates pag.','lv'),(14789,'Рембатская вол.','ru'),(14790,'Ķeguma l. t.','en'),(14790,'Ķeguma l. t.','lv'),(14790,'Ķeguma l. t.','ru'),(14791,'Līvāni','en'),(14791,'Līvāni','lv'),(14791,'Ливани','ru'),(14792,'Rožupes pag.','en'),(14792,'Rožupes pag.','lv'),(14792,'Рожупская вол.','ru'),(14793,'Turku pag.','en'),(14793,'Turku pag.','lv'),(14793,'Туркская вол.','ru'),(14796,'Galēnu pag.','en'),(14796,'Galēnu pag.','lv'),(14796,'Галенская вол.','ru'),(14797,'Riebiņu pag.','en'),(14797,'Riebiņu pag.','lv'),(14797,'Риебиньская вол.','ru'),(14804,'Brocēni','en'),(14804,'Brocēni','lv'),(14804,'Броцены','ru'),(14805,'Blīdenes pag.','en'),(14805,'Blīdenes pag.','lv'),(14805,'Блиденская вол.','ru'),(14806,'Brocēnu l. t.','en'),(14806,'Brocēnu l. t.','lv'),(14806,'Brocēnu l. t.','ru'),(14807,'Remtes pag.','en'),(14807,'Remtes pag.','lv'),(14807,'Remtes pag.','ru'),(14808,'Sabile','en'),(14808,'Sabile','lv'),(14808,'Сабиле','ru'),(14810,'Kandava','en'),(14810,'Kandava','lv'),(14810,'Кандава','ru'),(14812,'Kandavas pag.','en'),(14812,'Kandavas pag.','lv'),(14812,'Кандавская вол.','ru'),(14813,'Matkules pag.','en'),(14813,'Matkules pag.','lv'),(14813,'Маткульская вол.','ru'),(14821,'Vecates pag.','en'),(14821,'Vecates pag.','lv'),(14821,'Вецатская вол.','ru'),(14822,'Salaspils','en'),(14822,'Salaspils','lv'),(14822,'Саласпилс','ru'),(14823,'Salaspils l. t.','en'),(14823,'Salaspils l. t.','lv'),(14823,'Salaspils l. t.','ru'),(14824,'Sigulda','en'),(14824,'Sigulda','lv'),(14824,'Сигулда','ru'),(14826,'Siguldas pag.','en'),(14826,'Siguldas pag.','lv'),(14826,'Сигулдская вол.','ru'),(15231,'Asari','en'),(15231,'Asari','lv'),(15231,'Асари','ru'),(15232,'Bulduri','en'),(15232,'Bulduri','lv'),(15232,'Булдури','ru'),(15233,'Buļļuciems','en'),(15233,'Buļļuciems','lv'),(15233,'Буллюциемс','ru'),(15234,'Dubulti','en'),(15234,'Dubulti','lv'),(15234,'Дубулты','ru'),(15235,'Dzintari','en'),(15235,'Dzintari','lv'),(15235,'Дзинтари','ru'),(15236,'Jaundubulti','en'),(15236,'Jaundubulti','lv'),(15236,'Яундубулты','ru'),(15237,'Jaunķemeri','en'),(15237,'Jaunķemeri','lv'),(15237,'Яункемери','ru'),(15238,'Kauguri','en'),(15238,'Kauguri','lv'),(15238,'Каугури','ru'),(15239,'Ķemeri','en'),(15239,'Ķemeri','lv'),(15239,'Кемери','ru'),(15240,'Lielupe','en'),(15240,'Lielupe','lv'),(15240,'Лиелупе','ru'),(15241,'Majori','en'),(15241,'Majori','lv'),(15241,'Майори','ru'),(15242,'Melluži','en'),(15242,'Melluži','lv'),(15242,'Меллужи','ru'),(15243,'Priedaine','en'),(15243,'Priedaine','lv'),(15243,'Приедайне','ru'),(15244,'Pumpuri','en'),(15244,'Pumpuri','lv'),(15244,'Пумпури','ru'),(15245,'Sloka','en'),(15245,'Sloka','lv'),(15245,'Слока','ru'),(15246,'Vaivari','en'),(15246,'Vaivari','lv'),(15246,'Вайвари','ru'),(15247,'Valteri','en'),(15247,'Valteri','lv'),(15247,'Валтери','ru');
/*!40000 ALTER TABLE `location_translation` ENABLE KEYS */;
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
