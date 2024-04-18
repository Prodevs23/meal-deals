-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: mealdeals
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredients` (
  `ingredient_id` int NOT NULL AUTO_INCREMENT,
  `ingredient_name` varchar(30) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `category_id` tinyint NOT NULL,
  `measure_unit_id` tinyint NOT NULL,
  `allergie_id` tinyint NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`ingredient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'víz',11,0,0,NULL),(2,'só',1,0,0,NULL),(3,'fűszerpaprika',1,0,0,NULL),(4,'őrölt bors',1,0,0,NULL),(5,'fehérbors',1,0,0,NULL),(6,'köménymag',1,0,0,NULL),(7,'babérlevél',1,0,0,NULL),(8,'kurkuma',1,0,0,NULL),(9,'szegfűszeg',1,0,0,NULL),(10,'fahéj',1,0,0,NULL),(11,'krumpli',2,0,0,NULL),(12,'paradicsom',2,0,0,NULL),(13,'uborka',2,0,0,NULL),(14,'padlizsán',2,0,0,NULL),(15,'sárgarépa',2,0,0,NULL),(16,'fehérrépa',2,0,0,NULL),(17,'zeller',2,0,0,NULL),(18,'cékla',2,0,0,NULL),(19,'vöröshagyma',2,0,0,NULL),(20,'fokhagyma',2,0,0,NULL),(21,'medvehagyma',2,0,0,NULL),(22,'zöldborsó',2,0,0,NULL),(23,'zöldbab',2,0,0,NULL),(24,'lencse',0,0,0,NULL),(25,'sárgaborsó',0,0,0,NULL),(26,'fejtett bab',0,0,0,NULL),(27,'káposzta',2,0,0,NULL),(28,'vöröskáposzta',2,0,0,NULL),(29,'kelkáposzta',2,0,0,NULL),(30,'karfiol',2,0,0,NULL),(31,'brokkoli',2,0,0,NULL),(32,'karalábé',2,0,0,NULL),(33,'kelbimbó',2,0,0,NULL),(34,'tök',2,0,0,NULL),(35,'patiszon',2,0,0,NULL),(36,'sütőtök',2,0,0,NULL),(37,'cukkini',2,0,0,NULL),(38,'liszt',8,0,0,NULL),(39,'cukor',7,0,0,NULL),(40,'élesztő',11,0,0,NULL),(41,'olivaolaj',9,0,0,NULL),(42,'olaj',9,0,0,NULL),(43,'oregano',1,0,0,NULL),(44,'bazsalikom',1,0,0,NULL),(45,'mozzarella',6,0,0,NULL),(46,'ketchup',11,0,0,NULL),(47,'hamburger pogácsa',4,0,0,NULL),(48,'edami sajt',6,0,0,NULL),(49,'barbecue szósz',11,0,0,NULL),(50,'lilahagyma',2,0,0,NULL),(51,'mustár',11,0,0,NULL),(52,'saláta',2,0,0,NULL),(53,'tej',6,0,0,NULL),(54,'tészta',0,0,0,NULL),(55,'füstölt szalonna',0,0,0,NULL),(56,'túró',6,0,0,NULL),(57,'tejföl',6,0,0,NULL),(58,'pirosarany',11,0,0,150),(59,'gulyáskrém',11,0,0,150),(60,'hamburgerzsemle',0,0,0,NULL),(61,'csalamádé',11,0,0,NULL),(62,'darálthús',4,0,0,NULL),(63,'tojás',0,0,0,NULL),(64,'zsemlemorzsa',0,0,0,NULL),(65,'őrölt pirospaprika',0,0,0,NULL),(66,'mák',0,0,0,NULL),(67,'szóda',0,0,0,NULL),(68,'vaníliás cukor',7,0,0,NULL),(69,'ecet',11,0,0,NULL),(70,'sűrített paradicsom',11,0,0,NULL),(71,'rizs',0,0,0,NULL),(72,'savanyúkáposzta',11,0,0,NULL),(73,'káposztalevél',0,0,0,NULL),(74,'alma',3,0,0,NULL),(75,'ponty',5,0,0,NULL),(76,'tökmag',10,0,0,NULL);
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measure_units`
--

DROP TABLE IF EXISTS `measure_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `measure_units` (
  `measure_unit_id` tinyint NOT NULL AUTO_INCREMENT,
  `measure_unit_name` varchar(20) COLLATE utf8mb3_hungarian_ci NOT NULL,
  PRIMARY KEY (`measure_unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measure_units`
--

LOCK TABLES `measure_units` WRITE;
/*!40000 ALTER TABLE `measure_units` DISABLE KEYS */;
INSERT INTO `measure_units` VALUES (1,'deciliter'),(2,'gramm'),(3,'kilogramm'),(4,'teáskanál'),(5,'evőkanál'),(6,'db'),(7,'fej'),(8,'gerezd'),(9,'csipet'),(10,'liter');
/*!40000 ALTER TABLE `measure_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_ingredients`
--

DROP TABLE IF EXISTS `recipe_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `recipe_ingredients` VALUES (1,1),(1,2),(1,38),(1,39),(2,12),(2,13),(2,46),(2,47),(2,48),(2,49),(2,50),(2,51),(2,52),(3,2),(3,3),(3,19),(3,42),(3,53),(3,55),(3,63),(4,54),(4,55),(4,56),(4,57),(1,40),(1,42),(5,54),(5,66),(6,38),(6,39),(6,42),(6,53),(6,63),(6,67),(6,68),(7,2),(7,6),(7,7),(7,38),(7,42),(7,63),(7,65),(7,69),(8,1),(8,2),(8,12),(8,20),(8,19),(8,38),(8,39),(8,42),(8,70),(9,2),(9,4),(9,19),(9,20),(9,38),(9,42),(9,57),(9,62),(9,65),(9,71),(9,72),(9,73),(10,2),(10,19),(10,27),(10,39),(10,42),(10,70),(11,1),(11,2),(11,7),(11,19),(11,24),(11,38),(11,42),(11,57),(11,65);
/*!40000 ALTER TABLE `recipe_ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipes` (
  `recipe_id` int NOT NULL AUTO_INCREMENT,
  `recipe_name` varchar(80) COLLATE utf8mb3_hungarian_ci NOT NULL,
  `dish_id` tinyint NOT NULL,
  `description` text COLLATE utf8mb3_hungarian_ci NOT NULL,
  `cook_time` smallint NOT NULL,
  `difficulty` varchar(5) COLLATE utf8mb3_hungarian_ci NOT NULL,
  `calorie` smallint NOT NULL,
  `user_id` int DEFAULT NULL,
  `allergie` tinyint(1) DEFAULT NULL,
  `picture_url` varchar(100) COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  PRIMARY KEY (`recipe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES (1,'Pizza tészta',0,'',0,'1',380,NULL,NULL,NULL),(2,'Hamburger',0,'',0,'',0,NULL,NULL,NULL),(3,'Tojásrántotta',0,'',0,'',0,NULL,NULL,NULL),(4,'Túróscsusza',0,'',0,'',0,NULL,NULL,NULL),(5,'Mákos tészta',0,'',0,'',0,NULL,NULL,NULL),(6,'Palacsinta',0,'',0,'1',0,150,NULL,NULL),(7,'Tojás leves',0,'',0,'',0,NULL,NULL,NULL),(8,'Paradicsom leves',0,'',0,'',0,NULL,NULL,NULL),(9,'Töltöttkáposzta',0,'',0,'',0,NULL,NULL,NULL),(10,'Pararadicsomos káposzta',0,'',0,'',0,NULL,NULL,NULL),(11,'Lencsefőzelék',0,'',0,'',0,NULL,NULL,NULL),(12,'Babgulyás',0,'',0,'',0,NULL,NULL,NULL),(13,'Rakott krumpli',0,'',0,'',0,NULL,NULL,NULL),(14,'Zúza pörkölt',0,'',0,'',0,NULL,NULL,NULL),(15,'Tejbegríz',0,'',20,'1',0,150,NULL,NULL),(16,'Rántott hús',0,'',0,'',0,NULL,NULL,NULL),(17,'almás pite',0,'',0,'',0,NULL,NULL,NULL),(18,'uborka saláta',0,'',0,'',0,NULL,NULL,NULL),(19,'mákos kalács',0,'',0,'',0,NULL,NULL,NULL),(20,'tejberizs',0,'',0,'',0,NULL,NULL,NULL),(21,'krumplistészta',0,'',30,'1',0,150,NULL,NULL),(22,'eddmeg leves',0,'',80,'1',180,NULL,NULL,NULL),(26,'kőleves',0,'Végy 1 kg követ a bányából, addj hozzá 2 liter vizet és tetszés szerint kolbászt, szalonnát és zöldségeket meg sót, fűszert.',30,'5',380,NULL,0,NULL);
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `address` varchar(80) COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `password` varchar(32) COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `fullname` varchar(80) COLLATE utf8mb3_hungarian_ci DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `last_login_date` date DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (-5,'','','','','21232f297a57a5a743894a0e4a801fc3','',NULL,NULL),(150,'vvv','vvv','6767676676','vvv','4786f3282f04de5b5c7317c490c6d922','vvv vvv',NULL,NULL),(151,'fff','fff','6767676676','fff','343d9040a671c45832ee5381860e2996',NULL,NULL,NULL),(175,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(180,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(183,'uuu','uuu@uuu',NULL,NULL,'c70fd4260c9eb90bc0ba9d047c068eb8',NULL,NULL,NULL),(184,'ppp','ppp','ppp','ppp','f27f6f1c7c5cbf4e3e192e0a47b85300',NULL,NULL,NULL),(185,'ppp','ppp','ppp','ppp','f27f6f1c7c5cbf4e3e192e0a47b85300',NULL,NULL,NULL),(186,'pppp','kkk@kkk','6767676676','pppp','2d7acadf10224ffdabeab505970a8934',NULL,NULL,NULL),(187,'admin',' ',' ',' ','21232f297a57a5a743894a0e4a801fc3',NULL,NULL,NULL),(188,'www','www','6767676676','','','www www www',NULL,NULL),(189,'yyy','','','','','yyy yyy yyy',NULL,NULL),(192,'ghghg','ghghg','ghghg','ghghg','','  ghghghg',NULL,NULL),(194,'','','','','','  hghgghhhghghgh',NULL,NULL),(202,'kovi','','','','','Kovács Péter Pál',NULL,NULL),(203,'nononon','','','','','nonononono nonon nononon',NULL,NULL),(204,'yyyyyyyy','yyyyyyyyyyyyyy','yyyyyyyyy','yyyyyyyyy','yyyy','yyyy  yyyy',NULL,NULL),(205,'pppp','ppp','pppp','ppp','ppp','Pppppppppp  Pppppppppp',NULL,NULL),(206,'Pppppppppp','ppp','ppp','ppp','ppp','Pppppppppp  Pppppppppp',NULL,NULL),(207,'999','kkk@kkk','6767676676','','b706835de79a2b4e80506f582af3676a',NULL,NULL,NULL),(208,'ooo','ooo','ooo','ooo','7f94dd413148ff9ac9e9e4b6ff2b6ca9',NULL,NULL,NULL),(209,'777','kkk@kkk','6767676676','','f1c1592588411002af340cbaedd6fc33',NULL,NULL,NULL),(210,'qqqqq','qqq@qqq.com','','','28f55ad0b04b881ec4d9c9f7e564d6e6',NULL,NULL,NULL),(212,'qqqqq','qqqqq@qqq.com','6767676676','','2aa6ee6f0228a5d1e89aba0fbe9c2813',NULL,NULL,NULL),(214,'wwwww','wwww@www.vvv','','','6d5633eab345b898f97425de1dd1ad61',NULL,NULL,NULL),(215,'rrrrr','rrrrr@rrrrr.rrr','','','8dd596ccdfef6dbb33d0ce514a2d5ce8','Qqqqqqqqqq  Qqqqqqqqqq',NULL,NULL),(216,'uuuuu','uuuuu','','','d86344a7eae5ebfa67f5b76517cf7a2d','uuuuuuuuuu  uuuuuuuuuu',NULL,NULL),(217,'uuuuu','uuuuu','','','d86344a7eae5ebfa67f5b76517cf7a2d','uuuuuuuuuu  uuuuuuuuuu',NULL,NULL),(219,'ooo','ooo','ooo','ooo','7f94dd413148ff9ac9e9e4b6ff2b6ca9','ooo  ooo',NULL,NULL);
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

-- Dump completed on 2024-04-18 14:37:10
