-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: mealdeals
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `allergie`
--

DROP TABLE IF EXISTS `allergie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allergie` (
  `allergie_id` tinyint NOT NULL AUTO_INCREMENT,
  `allergie_name` varchar(20) COLLATE utf8mb3_hungarian_ci NOT NULL,
  PRIMARY KEY (`allergie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergie`
--

LOCK TABLES `allergie` WRITE;
/*!40000 ALTER TABLE `allergie` DISABLE KEYS */;
INSERT INTO `allergie` VALUES (1,'mogyoró'),(2,'tej'),(3,'tojás'),(4,'szója'),(5,'hal'),(6,'laktóz'),(7,'glutén'),(8,'cukor');
/*!40000 ALTER TABLE `allergie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(20) COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'fűszer'),(2,'zöldség'),(3,'gyümölcs'),(4,'hús'),(5,'hal'),(6,'tejtermék'),(7,'édesítők'),(8,'gabonafélék/liszt'),(9,'zsiradék'),(10,'olajos magvak'),(11,'egyéb');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` tinyint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(20) COLLATE utf8mb3_hungarian_ci NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'reggeli'),(2,'ebéd'),(3,'vacsora'),(4,'leves'),(5,'főétel'),(6,'desszert');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredients` (
  `ingredient_id` int NOT NULL AUTO_INCREMENT,
  `ingredient_name` varchar(30) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `category_id` tinyint NOT NULL,
  `measure_unit_id` tinyint NOT NULL,
  `allergie_id` tinyint NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`ingredient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'víz',11,0,0,NULL),(2,'só',1,0,0,NULL),(3,'fűszerpaprika',1,0,0,NULL),(4,'őrölt bors',1,0,0,NULL),(5,'fehérbors',1,0,0,NULL),(6,'köménymag',1,0,0,NULL),(7,'babérlevél',1,0,0,NULL),(8,'kurkuma',1,0,0,NULL),(9,'szegfűszeg',1,0,0,NULL),(10,'fahéj',1,0,0,NULL),(11,'krumpli',2,0,0,NULL),(12,'paradicsom',2,0,0,NULL),(13,'uborka',2,0,0,NULL),(14,'padlizsán',2,0,0,NULL),(15,'sárgarépa',2,0,0,NULL),(16,'fehérrépa',2,0,0,NULL),(17,'zeller',2,0,0,NULL),(18,'cékla',2,0,0,NULL),(19,'vöröshagyma',2,0,0,NULL),(20,'fokhagyma',2,0,0,NULL),(21,'medvehagyma',2,0,0,NULL),(22,'zöldborsó',2,0,0,NULL),(23,'zöldbab',2,0,0,NULL),(24,'lencse',0,0,0,NULL),(25,'sárgaborsó',0,0,0,NULL),(26,'fejtett bab',0,0,0,NULL),(27,'káposzta',2,0,0,NULL),(28,'vöröskáposzta',2,0,0,NULL),(29,'kelkáposzta',2,0,0,NULL),(30,'karfiol',2,0,0,NULL),(31,'brokkoli',2,0,0,NULL),(32,'karalábé',2,0,0,NULL),(33,'kelbimbó',2,0,0,NULL),(34,'tök',2,0,0,NULL),(35,'patiszon',2,0,0,NULL),(36,'sütőtök',2,0,0,NULL),(37,'cukkini',2,0,0,NULL),(38,'liszt',0,0,0,NULL),(39,'cukor',7,0,0,NULL),(40,'élesztő',0,0,0,NULL),(41,'olivaolaj',0,0,0,NULL),(42,'olaj',0,0,0,NULL),(43,'oregano',1,0,0,NULL),(44,'bazsalikom',1,0,0,NULL),(45,'mozzarella',6,0,0,NULL),(46,'ketchup',0,0,0,NULL),(47,'hamburger pogácsa',4,0,0,NULL),(48,'edami sajt',6,0,0,NULL),(49,'barbecue szósz',0,0,0,NULL),(50,'lilahagyma',2,0,0,NULL),(51,'mustár',0,0,0,NULL),(52,'saláta',2,0,0,NULL),(53,'tej',6,0,0,NULL),(54,'tészta',0,0,0,NULL),(55,'füstölt szalonna',0,0,0,NULL),(56,'túró',6,0,0,NULL),(57,'tejföl',6,0,0,NULL),(58,'pirosarany',11,0,0,150),(59,'gulyáskrém',11,0,0,150),(60,'hamburgerzsemle',0,0,0,NULL),(61,'csalamádé',0,0,0,NULL),(62,'darálthús',0,0,0,NULL),(63,'tojás',0,0,0,NULL),(64,'zsemlemorzsa',0,0,0,NULL),(65,'őrölt pirospaprika',0,0,0,NULL),(66,'mák',0,0,0,NULL),(67,'szóda',0,0,0,NULL),(68,'vaníliás cukor',0,0,0,NULL),(69,'ecet',0,0,0,NULL),(70,'sűrített paradicsom',0,0,0,NULL),(71,'rizs',0,0,0,NULL),(72,'savanyúkáposzta',0,0,0,NULL),(73,'káposztalevél',0,0,0,NULL);
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_unit`
--

DROP TABLE IF EXISTS `m_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_unit` (
  `munit_id` smallint NOT NULL AUTO_INCREMENT,
  `munit_name` varchar(50) COLLATE utf8mb3_hungarian_ci NOT NULL,
  PRIMARY KEY (`munit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_unit`
--

LOCK TABLES `m_unit` WRITE;
/*!40000 ALTER TABLE `m_unit` DISABLE KEYS */;
INSERT INTO `m_unit` VALUES (1,'deciliter'),(2,'gramm'),(3,'kilogramm'),(4,'teáskanál'),(5,'evőkanál'),(6,'db'),(7,'fej'),(8,'gerezd'),(9,'csipet'),(10,'liter');
/*!40000 ALTER TABLE `m_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measure_unit`
--

DROP TABLE IF EXISTS `measure_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measure_unit` (
  `measure_unit_id` tinyint NOT NULL AUTO_INCREMENT,
  `measure_unit_name` varchar(20) COLLATE utf8mb3_hungarian_ci NOT NULL,
  PRIMARY KEY (`measure_unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measure_unit`
--

LOCK TABLES `measure_unit` WRITE;
/*!40000 ALTER TABLE `measure_unit` DISABLE KEYS */;
INSERT INTO `measure_unit` VALUES (1,'deciliter'),(2,'gramm'),(3,'kilogramm'),(4,'teáskanál'),(5,'evőkanál'),(6,'db'),(7,'fej'),(8,'gerezd'),(9,'csipet'),(10,'liter');
/*!40000 ALTER TABLE `measure_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe` (
  `recipe_id` int NOT NULL,
  `recipe_name` varchar(80) COLLATE utf8mb3_hungarian_ci NOT NULL,
  `dish_id` tinyint NOT NULL,
  `description` text COLLATE utf8mb3_hungarian_ci NOT NULL,
  `cook_time` smallint NOT NULL,
  `difficulty` varchar(5) COLLATE utf8mb3_hungarian_ci NOT NULL,
  `calorie` smallint NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`recipe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (1,'pizzatészta',0,'',0,'',0,NULL),(2,'Hamburger',0,'',0,'',0,NULL),(3,'Tojásrántotta',0,'',0,'',0,NULL),(4,'Túróscsusza',0,'',0,'',0,NULL),(5,'Mákos tészta',0,'',0,'',0,NULL),(6,'Palacsinta',0,'',0,'1',0,150),(7,'Tojás leves',0,'',0,'',0,NULL),(8,'Paradicsom leves',0,'',0,'',0,NULL),(9,'Töltöttkáposzta',0,'',0,'',0,NULL),(10,'Pararadicsomos káposzta',0,'',0,'',0,NULL),(11,'Lencsefőzelék',0,'',0,'',0,NULL),(12,'Babgulyás',0,'',0,'',0,NULL),(13,'Rakott krumpli',0,'',0,'',0,NULL),(14,'Zúza pörkölt',0,'',0,'',0,NULL),(15,'Tejbegríz',0,'',20,'1',0,150),(16,'Rántott hús',0,'',0,'',0,NULL),(17,'almás pite',0,'',0,'',0,NULL),(18,'uborka saláta',0,'',0,'',0,NULL),(19,'mákos kalács',0,'',0,'',0,NULL),(20,'tejberizs',0,'',0,'',0,NULL),(21,'krumplistészta',0,'',30,'1',0,150);
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_ingredients`
--

DROP TABLE IF EXISTS `recipe_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_ingredients` (
  `recipe_id` int NOT NULL,
  `ingredient_id` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_ingredients`
--

LOCK TABLES `recipe_ingredients` WRITE;
/*!40000 ALTER TABLE `recipe_ingredients` DISABLE KEYS */;
INSERT INTO `recipe_ingredients` VALUES (1,1),(1,2),(1,38),(1,39),(2,12),(2,13),(2,46),(2,47),(2,48),(2,49),(2,50),(2,51),(2,52),(3,2),(3,3),(3,19),(3,42),(3,53),(3,55),(3,63),(4,54),(4,55),(4,56),(4,57),(1,40),(1,42),(5,54),(5,66),(6,38),(6,39),(6,42),(6,53),(6,63),(6,67),(6,68),(7,2),(7,6),(7,7),(7,38),(7,42),(7,63),(7,65),(7,69),(8,1),(8,2),(8,12),(8,19),(8,20),(8,38),(8,39),(8,42),(8,70),(9,2),(9,4),(9,19),(9,20),(9,38),(9,42),(9,57),(9,62),(9,65),(9,71),(9,72),(9,73),(10,2),(10,19),(10,27),(10,39),(10,42),(10,70),(11,1),(11,2),(11,7),(11,19),(11,24),(11,38),(11,42),(11,57),(11,65);
/*!40000 ALTER TABLE `recipe_ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `lastname` varchar(20) COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `firstname` varchar(20) COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `middlename` varchar(20) COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `username` varchar(20) COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `address` varchar(80) COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `pass` varchar(32) COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (-5,NULL,NULL,NULL,'admin',NULL,NULL,NULL,'21232f297a57a5a743894a0e4a801fc3'),(150,'vvv','vvv','','vvv','vvv','6767676676','vvv','4786f3282f04de5b5c7317c490c6d922'),(151,'fff','fff','','fff','fff','6767676676','fff','343d9040a671c45832ee5381860e2996');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-09 15:57:01
