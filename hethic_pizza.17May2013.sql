-- MySQL dump 10.13  Distrib 5.5.23, for Linux (x86_64)
--
-- Host: localhost    Database: hethic_pizza
-- ------------------------------------------------------
-- Server version	5.5.23-55

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
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('1766b3f8d04d000b1f9691e0139a6af2','131.253.47.177','Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)',1348855897,''),('80e89ae06df26d89e543245f74eb98ae','131.253.47.177','Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)',1348855153,''),('7696caceeec6a5cdf824bccdf9537c0b','66.249.71.55','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)',1347049466,''),('679351b326b52c092e1bc5e8601fdf02','220.181.108.152','Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)',1348530632,''),('18f0693cb327a07abc4fddef54a534b8','220.181.108.111','Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)',1348812151,''),('027aaa188738eea3994c7c30ee544459','95.108.151.244','Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)',1348342926,''),('c1dab783676d1ddedd13ab0565ab5667','95.108.151.244','Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)',1348342925,''),('cceacc6a88e5bb442ce45aee71cfe5d2','95.108.151.244','Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)',1348342923,''),('d0050c62ec80455b1e41102cb8b7a3d8','66.249.72.147','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)',1348248466,''),('3c6b197b04d52b99f42205ff15a1aca2','95.108.151.244','Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)',1348090668,''),('abcbb1b7f00e50986c40b9ab68cf5b91','66.249.71.45','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)',1348138949,''),('14c29062aee20b7483e4b0c85ffc4d4b','66.249.71.23','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)',1348193337,''),('a817704f4b4fa2401f2d825579d8dd65','66.249.71.45','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)',1348193338,''),('a312b008ea2e36f8c9f174088dc44323','66.249.72.203','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)',1348248466,''),('91166750a4f68a8ed8be91881ed718b1','95.108.151.244','Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)',1348090667,''),('019dc1a4afe06b3c0c1260cdd1602c45','95.108.151.244','Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)',1348090666,''),('1ed1d17cf4655362124be8f55459f9af','66.249.73.19','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)',1347897458,''),('a8dbd2424ea5885f26b451f6d67b6243','95.108.151.244','Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)',1347822204,''),('5b239affcd3902eca7cd7c004b2a4037','95.108.151.244','Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)',1347822203,''),('f7aa44b58d8bb42b244dd5feda7f4089','95.108.151.244','Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)',1347822201,''),('1acd9634984d5a1e2b7b78fff4dc92a4','95.108.151.244','Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)',1347503644,''),('b43ba405ecb2494ff6f744a6e423fa3b','66.249.71.45','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)',1347114002,''),('5b2f983ca399d334b4d54d93f04d1621','95.108.151.244','Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)',1347503643,''),('b5216c7a7726d92c153bbe0e1cae06fa','95.108.151.244','Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)',1347503642,''),('4ff2cb9b37b9fd81c42caaf20582441a','157.55.32.153','Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)',1347473434,''),('fff02f4bfc54aa2947594780aeb7b0ac','157.55.32.153','Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)',1347473348,''),('6b983fe2fc4cb00857a4e7bb6b66f9a4','95.108.151.244','Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)',1347232172,''),('8857a012d53c411c806844a4c5c27731','95.108.151.244','Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)',1347232171,''),('38bc5fb04cec176c4c537cc0d818746e','95.108.151.244','Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)',1347232170,''),('c511dcc0db3297ed7a03a93ea40a0a2e','66.249.71.45','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)',1347114645,''),('3981933cc11c4e76e1349036f504cd5d','66.249.71.23','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)',1347114644,'');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_blockouts`
--

DROP TABLE IF EXISTS `delivery_blockouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_blockouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `description` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `recurrence` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_blockouts`
--

LOCK TABLES `delivery_blockouts` WRITE;
/*!40000 ALTER TABLE `delivery_blockouts` DISABLE KEYS */;
INSERT INTO `delivery_blockouts` VALUES (1,1,'Christmas',1356454800,1356541200,2);
/*!40000 ALTER TABLE `delivery_blockouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_hours`
--

DROP TABLE IF EXISTS `delivery_hours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_hours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `day` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `open_time` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `day_close` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `close_time` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_hours`
--

LOCK TABLES `delivery_hours` WRITE;
/*!40000 ALTER TABLE `delivery_hours` DISABLE KEYS */;
INSERT INTO `delivery_hours` VALUES (1,1,'Sunday','12:00PM','Monday','1:00AM'),(2,1,'Monday','12:00PM','Tuesday','1:00AM'),(3,1,'Tuesday','12:00PM','Wednesday','1:30AM'),(4,1,'Wednesday','12:00PM','Thursday','2:00AM'),(5,1,'Thursday','12:00PM','Thursday','9:00PM'),(6,1,'Friday','12:00PM','Friday','11:00PM'),(7,1,'Saturday','12:00PM','Sunday','1:00AM');
/*!40000 ALTER TABLE `delivery_hours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_mkt_log`
--

DROP TABLE IF EXISTS `email_mkt_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_mkt_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_mkt_log`
--

LOCK TABLES `email_mkt_log` WRITE;
/*!40000 ALTER TABLE `email_mkt_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_mkt_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'customers',''),(2,'cooks',''),(3,'drivers',''),(4,'supervisors',''),(5,'managers',''),(6,'owners','');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `cen_lat` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cen_lon` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `map_label` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loc_lat` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loc_lon` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zoom` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Hillsboro','530 Harry Sauner Rd','Hillsboro','OH','45133',1,'39.214433309422','-83.60887527465','*','39.227108794','-83.61813426',13),(3,'Greenfield','1616 Main Street','Greenfield','OH','45123',1,NULL,NULL,NULL,NULL,NULL,0),(5,'Wilmington','7540 Main Street','Wilmington ','OH','45177',0,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managers`
--

DROP TABLE IF EXISTS `managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `managers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managers`
--

LOCK TABLES `managers` WRITE;
/*!40000 ALTER TABLE `managers` DISABLE KEYS */;
INSERT INTO `managers` VALUES (1,'seanka',3,'b24391223dcf6024bba997b5a0226ff4');
/*!40000 ALTER TABLE `managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `topping_price` float DEFAULT NULL,
  `show_top_price` tinyint(1) DEFAULT NULL,
  `combo_top_prices` tinyint(1) DEFAULT NULL,
  `category` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `toppings_table` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,'Small Cheese Pizza','A hot round of pizza sauce and mozzarella cheese on fresh-made dough.',5.99,0,0,0,'pizzas',1,'menu_pizza_toppings'),(2,'Medium Cheese Pizza','A plain cheese pizza, 14\" of hot goodness.',7.99,0.25,0,1,'pizzas',1,'menu_pizza_toppings'),(3,'Italian Sub','A fresh baked sub loaded with salami, pepperoni, and ham on a bed of lettuce, tomato, pickels, and mayo. Add banana peppers or jalepenos for another burst of flavor.',4.99,0,0,0,'subs',1,'menu_sand_toppings'),(4,'Pizza Sub','Well-done beef patty resting on a bed of pizza sauce, onions, and pickles--all topped with real mozzarella cheese and nestled in a hot sub roll.',4.99,0,0,0,'subs',1,'menu_sand_toppings'),(5,'Mushroom Sub','A favorite of many! Experience a beef patty sitting happily on a little bit of brown gravy, onions, and lots of mushrooms--topped with mozza cheese  nestled inside a fresh sub roll.',4.99,0,0,0,'subs',1,'menu_sand_toppings'),(6,'Chicken Club Sub','Two juicy chicken breasts resting on mayo, lettuce, and tomato--topped with mozza cheese and two strips of crispy bacon. ',5.99,0,0,0,'subs',1,'menu_sand_toppings'),(7,'French Fries','A generous portion of french fries, fried to a crisp and lightly salted.',1.99,0,0,0,'sides',1,'none'),(8,'Onion Rings','Everyone\'s favorite onion rings fried to perfection and lightly salted.',2.49,0,0,0,'sides',1,'none'),(9,'Large Cheese Pizza','A HOT 14 inch cheese pizza. Add your favorite toppings!',10.99,0.49,0,1,'pizzas',1,'menu_pizza_toppings'),(10,'Cheese Burger','A 1/3lb of 100% beef cooked med-well and placed on a bed of mayo and lettuce--topped with cheese and served on a toasted bun.',2.99,0,0,0,'burgers',1,'menu_sand_toppings'),(18,'2 Liter Coca-Cola','Get an icy-cold 2-Liter of Coke for those moments when your hot meal demands it!',1.99,0,0,0,'drinks',1,'none'),(12,'Grilled Cheese','Three slices of American cheese, melted between two slices of crispy,  buttery Texas toast. You could make one at home, but it just wouldn\'t be the same.',2.39,0,0,0,'sandwiches',1,'menu_sand_toppings'),(13,'Chicken Salad Melt','Generous portion of Pilgrim\'s Pride deli-fresh chicken salad, sandwiched between two slices of buttery Texas toast and melted cheese. ',3.99,0,0,0,'sandwiches',1,'menu_sand_toppings'),(14,'Double Cheese Burger','Hungry!? Enjoy 2x 1/3lb 100% beef patties cooked med-well and placed on a bed of mayo and lettuce-- topped with cheese and served on a toasted bun. Tomato and pickle on the side. Add Bacon for $0.99!',3.99,0,0,0,'burgers',1,'menu_sand_toppings'),(23,'Cheese Sticks','Batter-coated logs of mozzarella cheese fried to crispy golden brown with a melted center. Total comfort food!',2.85,0,0,0,'sides',1,'none'),(24,'Big Bud','A hearty portion of ham, salami, and turkey on a toasted bun--loaded with all your favorite toppings. Try it. Like it. Want it!',3.49,0,0,0,'subs',1,'menu_sand_toppings'),(26,'Large Pepperoni Lust','OMG! Lots of pepperoni, lovingly placed from edge-to-edge. Ravage one tonite!',12.99,0,0,0,'pizzas',1,'menu_pizza_toppings');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_pizza_toppings`
--

DROP TABLE IF EXISTS `menu_pizza_toppings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_pizza_toppings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topping_name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `category` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_pizza_toppings`
--

LOCK TABLES `menu_pizza_toppings` WRITE;
/*!40000 ALTER TABLE `menu_pizza_toppings` DISABLE KEYS */;
INSERT INTO `menu_pizza_toppings` VALUES (1,'Pepperoni',0.99,'meat',1),(2,'Sausage',0.99,'meat',1),(3,'Ham',0.99,'meat',1),(4,'Pineapple',0.99,'fruit',1),(5,'Green Peppers',0.99,'veggies',1),(6,'Onions',0.99,'veggies',1),(7,'Banana Peppers',0.99,'veggies',1),(8,'Mushrooms',0.99,'veggies',1),(9,'Jalepeno Peppers',0.99,'veggies',1),(10,'Shredded Chicken',0.99,'meat',1),(11,'Tomatoes',0.99,'veggies',1),(12,'Mozzarella Cheese',0.99,'cheese',1),(13,'Pizza Sauce',0.99,'sauce',1),(18,'Cheddar Cheese',0.99,'cheese',0),(17,'Bacon',0.99,'meat',1),(19,'Ground Beef',0.99,'meat',1);
/*!40000 ALTER TABLE `menu_pizza_toppings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_sand_toppings`
--

DROP TABLE IF EXISTS `menu_sand_toppings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_sand_toppings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topping_name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `category` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_sand_toppings`
--

LOCK TABLES `menu_sand_toppings` WRITE;
/*!40000 ALTER TABLE `menu_sand_toppings` DISABLE KEYS */;
INSERT INTO `menu_sand_toppings` VALUES (1,'Shredded Iceberg Lettuce',0.39,'veggies',1),(2,'Tomato Slices',0.39,'veggies',1),(3,'American Cheese Slice',0.39,'cheese',1),(4,'Pepper Jack Cheese Slice',0.49,'cheese',1),(5,'Pickles',0.25,'veggies',1),(6,'Banana Peppers',0.39,'veggies',1),(7,'Green Peppers',0.39,'veggies',1),(8,'Jalapeno Peppers',0.39,'veggies',1),(9,'Extra Chicken Breast',1.99,'meat',1),(10,'Extra 1/3lb Beef Patty',1.49,'meat',1),(11,'Pizza Sauce',0.39,'sauce',1),(12,'Mushroom Sauce',0.49,'sauce',1),(13,'Sliced Onions',0.29,'veggies',1),(14,'Bacon Slices (2)',0.89,'meat',1),(15,'Sauteed Mushrooms-Onions',0.99,'veggies',1),(16,'Sauteed Mushrooms',0.49,'veggies',1),(17,'Sauteed Onions',0.49,'veggies',1),(18,'Shaved Ham',0.79,'meat',1),(19,'Shaved Turkey',0.79,'meat',1),(20,'Salami',0.79,'meat',1),(21,'Mozzerella Cheese',0.49,'cheese',1);
/*!40000 ALTER TABLE `menu_sand_toppings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_std_toppings`
--

DROP TABLE IF EXISTS `menu_std_toppings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_std_toppings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `topping_name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_std_toppings`
--

LOCK TABLES `menu_std_toppings` WRITE;
/*!40000 ALTER TABLE `menu_std_toppings` DISABLE KEYS */;
INSERT INTO `menu_std_toppings` VALUES (1,4,'Pickels'),(12,10,'Pickles'),(6,10,'American Cheese Slice'),(7,10,'Shredded Iceberg Lettuce'),(8,14,'Shredded Iceberg Lettuce'),(11,14,'Pickles'),(13,26,'Pepperoni'),(14,26,'Pepperoni'),(15,24,'Shredded Iceberg Lettuce'),(16,24,'Tomato Slices'),(17,24,'Shaved Ham'),(18,24,'Shaved Turkey'),(19,24,'Salami'),(20,6,'Shredded Iceberg Lettuce'),(21,6,'Tomato Slices'),(22,6,'Bacon Slices (2)'),(23,6,'Mozzerella Cheese');
/*!40000 ALTER TABLE `menu_std_toppings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `misc_config`
--

DROP TABLE IF EXISTS `misc_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `misc_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lead_time` int(11) NOT NULL,
  `refresh_rate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `misc_config`
--

LOCK TABLES `misc_config` WRITE;
/*!40000 ALTER TABLE `misc_config` DISABLE KEYS */;
INSERT INTO `misc_config` VALUES (1,30,60);
/*!40000 ALTER TABLE `misc_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_address`
--

DROP TABLE IF EXISTS `order_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `street` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_address`
--

LOCK TABLES `order_address` WRITE;
/*!40000 ALTER TABLE `order_address` DISABLE KEYS */;
INSERT INTO `order_address` VALUES (73,452,'5244 Leninger Haigh Rd','','Hillsboro','OH','45133'),(64,442,'5244 Leninger Haigh Rd','','Hillsboro','OH','45133'),(63,441,'5244 Leninger Haigh Rd','','Hillsboro','OH','45133'),(62,440,'5244 Leniniger Haigh ','','Hillsboro','OH','45133'),(61,439,'5244 Leninger Haigh Rd','','Hillsboro','OH','45133'),(76,455,'5244 Leninger Haigh Rd','','Hillsboro','OH','45133'),(69,448,'5244 Leninger Haigh','','Hillsboro','OH','45133'),(70,449,'5236 Leninger Haigh Rd','','Hillsboro','OH','45133'),(71,450,'5244 Leniniger Haigh','','Hillsboro','OH','45133'),(77,456,'5244 Leninger Haigh Rd','','Hillsboro','OH','45133'),(78,457,'5244 Leninger Haigh Rd','','Hillsboro','OH','45133'),(79,458,'5244 Leninger Haigh Rd','','Hillsboro','OH','45133'),(80,459,'5244 Leniniger Haigh','','Hillsboro','OH','45133'),(81,460,'5244 Leninger Haigh Rd','','Hillsboro','OH','45133'),(82,461,'5244 Leninger Haigh Rd','','Hillsboro','OH','45133'),(83,462,'5244 Leninger Haigh Rd','','Hillsboro','OH','45133'),(84,463,'5244 Leninger Haigh Rd','','Hillsboro','OH','45133');
/*!40000 ALTER TABLE `order_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item_toppings`
--

DROP TABLE IF EXISTS `order_item_toppings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_item_toppings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `comment` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `half` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=323 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item_toppings`
--

LOCK TABLES `order_item_toppings` WRITE;
/*!40000 ALTER TABLE `order_item_toppings` DISABLE KEYS */;
INSERT INTO `order_item_toppings` VALUES (306,456,530,'Sausage','W',1.48),(305,455,529,'Pepperoni','W',0),(303,455,527,'Pepperoni','W',0),(302,455,526,'Pepperoni','W',0),(301,NULL,525,'Pepperoni','W',0),(300,455,524,'Pepperoni','W',1.24),(299,455,523,'Ham','W',2.46),(294,455,521,'Tomato Slices','W',0),(295,455,521,'Bacon Slices (2)','W',0),(296,455,521,'Mozzerella Cheese','W',0),(297,455,521,'Banana Peppers','X',0.39),(298,455,522,'Sausage','1',0.49),(293,455,521,'Shredded Iceberg Lettuce','W',0),(287,450,508,'Pickels','W',0),(286,449,507,'Banana Peppers','X',0.39),(275,441,495,'Pickles','W',0),(274,441,495,'Shredded Iceberg Lettuce','W',0),(273,441,494,'Banana Peppers','X',0.39),(285,448,506,'>Just Kidding<','W',0),(272,441,494,'Pickles','X',0.25),(271,439,492,'>>>Please burn it slightly....well, not ','W',0),(284,448,506,'>>>Crispy Pepperoni','W',0),(283,448,506,'Pepperoni','W',0),(282,448,506,'Pepperoni','W',0),(281,447,505,'Pepperoni','W',0),(289,452,511,'Pepperoni','W',0.99),(280,447,505,'Pepperoni','W',0),(292,455,517,'Pepperoni','W',0.99),(307,456,531,'Pepperoni','W',0),(308,457,533,'Ham','W',1.48),(309,458,541,'Shredded Chicken','W',1.24),(310,458,541,'Pepperoni','W',1.24),(311,458,541,'Pineapple','W',1.24),(312,459,542,'Ham','W',1.24),(314,460,544,'Ham','W',1.24),(315,460,544,'Pepperoni','W',1.24),(316,461,546,'Sausage','W',1.24),(317,461,546,'Pepperoni','W',1.24),(318,462,548,'Ham','W',1.24),(319,462,548,'Pepperoni','W',1.24),(320,463,550,'Sausage','W',1.24),(321,463,550,'Pepperoni','W',1.24),(322,466,551,'Pepperoni','W',1.48);
/*!40000 ALTER TABLE `order_item_toppings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `price` float DEFAULT NULL,
  `combo_top_prices` tinyint(1) DEFAULT NULL,
  `top_price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=552 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (524,455,'Medium Cheese Pizza','',7.99,1,0.25),(523,455,'Large Cheese Pizza','',10.99,1,0.49),(522,455,'Large Cheese Pizza','',10.99,1,0.49),(521,455,'Chicken Club Sub','',5.99,0,0),(520,455,'Large Cheese Pizza','',10.99,1,0.49),(519,455,'Large Cheese Pizza','',10.99,1,0.49),(508,450,'Pizza Sub','',4.99,0,0),(507,449,'Chicken Salad Melt','',3.99,0,0),(506,448,'Large Pepperoni Lust','',12.99,0,0),(505,447,'Large Pepperoni Lust','',12.99,0,0),(495,441,'Double Cheese Burger','',3.99,0,0),(512,452,'Mushroom Sub','',4.99,0,0),(511,452,'Small Cheese Pizza','',5.99,0,0),(492,439,'Large Cheese Pizza','',10.99,1,0.49),(493,440,'Onion Rings','',2.49,0,0),(494,441,'Italian Sub','',4.99,0,0),(518,455,'Mushroom Sub','',4.99,0,0),(517,455,'Small Cheese Pizza','',5.99,0,0),(496,442,'Italian Sub','',4.99,0,0),(530,456,'Large Cheese Pizza','pizzas',10.99,1,0.49),(529,455,'PROMO:','PROMO',-6,0,0),(533,457,'Large Cheese Pizza','pizzas',10.99,1,0.49),(536,457,'PROMO: Family Feast','PROMO',-6,0,0),(541,458,'Medium Cheese Pizza','pizzas',7.99,1,0.25),(542,459,'Medium Cheese Pizza','pizzas',7.99,1,0.25),(544,460,'Medium Cheese Pizza','pizzas',7.99,1,0.25),(545,460,'PROMO: Med2Top','PROMO',-2.48,0,0),(546,461,'Medium Cheese Pizza','pizzas',7.99,1,0.25),(547,461,'PROMO: Med2Top','PROMO',-2.48,0,0),(548,462,'Medium Cheese Pizza','pizzas',7.99,1,0.25),(549,462,'PROMO: Med2Top','PROMO',-2.48,0,0),(550,463,'Medium Cheese Pizza','pizzas',7.99,1,0.25),(551,466,'Large Cheese Pizza','pizzas',10.99,1,0.49);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `started` int(11) DEFAULT NULL,
  `submitted` int(11) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT NULL,
  `v_time` int(11) DEFAULT NULL,
  `ready_done` tinyint(1) DEFAULT NULL,
  `rd_time` int(11) DEFAULT NULL,
  `notified` tinyint(1) DEFAULT NULL,
  `delivery_time` int(11) DEFAULT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `carrier` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery` tinyint(1) NOT NULL DEFAULT '0',
  `location` int(11) NOT NULL,
  `printed` tinyint(1) NOT NULL DEFAULT '0',
  `promo` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=467 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (448,1,1339130955,1339130968,1,1339568747,1,1339568752,0,1339132768,'Anderson','937-509-8797','no_message',1,1,1,''),(447,1,1339130582,0,0,0,0,0,0,0,'Anderson','937-509-8878','no_message',0,1,0,''),(452,26,1339477674,1339477707,1,1339568742,1,1339616685,0,1339480800,'Miller','513-376-1775','no_message',1,1,0,''),(442,1,1338947183,0,0,0,0,0,0,0,'Anderson','937-509-8797','no_message',1,1,0,''),(441,1,1338869148,0,0,0,0,0,0,0,'Anderson','937-509-1735','no_message',1,1,0,''),(440,1,1338869011,0,0,0,0,0,0,0,'Anderson','937-509-8888','no_message',1,1,0,''),(439,1,1338862444,0,0,0,0,0,0,0,'Anderson','937-509-8797','no_message',1,1,0,''),(455,26,1339609229,1339616493,1,1339617567,0,0,0,1339618293,'Miller','513-376-1775','no_message',1,1,0,''),(449,0,1339281566,1339281588,1,1339568644,0,0,0,1339283388,'Anderson','704-887-5897','no_message',1,1,0,''),(450,0,1339281613,1339281651,1,1339568730,0,0,0,1339285200,'Jacko','937-555-1212','no_message',1,1,0,''),(456,1,1341722797,0,0,0,0,0,0,0,'Anderson','937-509-8797','no_message',1,1,0,''),(457,1,1341724577,0,0,0,0,0,0,0,'Anderson','937-509-8797','no_message',1,1,0,''),(458,0,1342247630,0,0,0,0,0,0,0,'Anderson','937-509-8797','no_message',1,1,0,''),(459,1,1342248223,0,0,0,0,0,0,0,'Anderson','937-509-8797','no_message',1,1,0,''),(460,1,1342849635,0,0,0,0,0,0,0,'Anderson','937-509-8797','no_message',1,1,0,''),(461,1,1342849716,0,0,0,0,0,0,0,'Anderson','937-509-8797','no_message',1,1,0,''),(462,1,1342849920,0,0,0,0,0,0,0,'Anderson','937-509-1731','no_message',1,1,0,''),(463,1,1342850479,0,0,0,0,0,0,0,'anderson','937-509-8797','no_message',1,1,0,''),(464,0,1344716624,0,0,0,0,0,0,0,'Anderson','937-509-8797','no_message',0,1,0,''),(465,1,1345071593,0,0,0,0,0,0,0,'Anderson','937-509-8797','no_message',0,1,0,''),(466,0,1345873451,1345873503,0,0,0,0,0,1345875303,'Anderson','937-509-8797','no_message',0,1,0,'');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pickup_blockouts`
--

DROP TABLE IF EXISTS `pickup_blockouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pickup_blockouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `description` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `recurrence` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pickup_blockouts`
--

LOCK TABLES `pickup_blockouts` WRITE;
/*!40000 ALTER TABLE `pickup_blockouts` DISABLE KEYS */;
INSERT INTO `pickup_blockouts` VALUES (1,1,'Christmas',1356454800,1356541200,2);
/*!40000 ALTER TABLE `pickup_blockouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pickup_hours`
--

DROP TABLE IF EXISTS `pickup_hours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pickup_hours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `day` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `open_time` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `day_close` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `close_time` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pickup_hours`
--

LOCK TABLES `pickup_hours` WRITE;
/*!40000 ALTER TABLE `pickup_hours` DISABLE KEYS */;
INSERT INTO `pickup_hours` VALUES (1,1,'Sunday','12:00PM','Sunday','9:00PM'),(2,1,'Monday','12:00PM','Tuesday','1:00AM'),(3,1,'Tuesday','12:00PM','Wednesday','1:30AM'),(4,1,'Wednesday','12:00PM','Thursday','2:00AM'),(5,1,'Thursday','12:00PM','Thursday','9:00PM'),(6,1,'Friday','12:00PM','Friday','11:00PM'),(7,1,'Saturday','12:00PM','Saturday','11:00PM');
/*!40000 ALTER TABLE `pickup_hours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promo_combo`
--

DROP TABLE IF EXISTS `promo_combo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promo_combo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `feature` tinyint(1) NOT NULL DEFAULT '0',
  `day` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` int(11) NOT NULL,
  `end_date` int(11) NOT NULL,
  `discount` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo_combo`
--

LOCK TABLES `promo_combo` WRITE;
/*!40000 ALTER TABLE `promo_combo` DISABLE KEYS */;
INSERT INTO `promo_combo` VALUES (1,'Family Feast','Hell yeah! Two large pizzas with one topping each, hot wings, and a 2 Lite of coke for $24.99.','50055','combo',1,1,'Tuesday',0,0,6),(5,'Med2Top','Med pizza w/ 2 free toppings','40055','combo',1,0,'Tuesday, Monday',0,0,2.48);
/*!40000 ALTER TABLE `promo_combo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promo_conditions`
--

DROP TABLE IF EXISTS `promo_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promo_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promo_id` int(11) NOT NULL,
  `category` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `price_floor` float NOT NULL,
  `compare` int(11) NOT NULL,
  `like` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo_conditions`
--

LOCK TABLES `promo_conditions` WRITE;
/*!40000 ALTER TABLE `promo_conditions` DISABLE KEYS */;
INSERT INTO `promo_conditions` VALUES (2,1,'pizzas',10.99,2,'Large Cheese'),(3,0,'pizzas',10.47,2,'Medium Cheese'),(4,5,'pizzas',10.47,2,'Medium Cheese');
/*!40000 ALTER TABLE `promo_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_order_item_toppings`
--

DROP TABLE IF EXISTS `saved_order_item_toppings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_order_item_toppings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `comment` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `half` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_order_item_toppings`
--

LOCK TABLES `saved_order_item_toppings` WRITE;
/*!40000 ALTER TABLE `saved_order_item_toppings` DISABLE KEYS */;
INSERT INTO `saved_order_item_toppings` VALUES (5,8,8,'Pepperoni','W',0.99),(6,9,9,'Pepperoni','W',0.99),(7,10,11,'Pepperoni','W',0.99);
/*!40000 ALTER TABLE `saved_order_item_toppings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_order_items`
--

DROP TABLE IF EXISTS `saved_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `combo_top_prices` tinyint(1) DEFAULT NULL,
  `top_price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_order_items`
--

LOCK TABLES `saved_order_items` WRITE;
/*!40000 ALTER TABLE `saved_order_items` DISABLE KEYS */;
INSERT INTO `saved_order_items` VALUES (7,8,'Mushroom Sub',4.99,0,0),(9,9,'Small Cheese Pizza',5.99,0,0),(8,8,'Small Cheese Pizza',5.99,0,0),(10,9,'Mushroom Sub',4.99,0,0),(11,10,'Small Cheese Pizza',5.99,0,0),(12,10,'Mushroom Sub',4.99,0,0);
/*!40000 ALTER TABLE `saved_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_orders`
--

DROP TABLE IF EXISTS `saved_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `started` int(11) DEFAULT NULL,
  `submitted` int(11) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT NULL,
  `v_time` int(11) DEFAULT NULL,
  `ready_done` tinyint(1) DEFAULT NULL,
  `rd_time` int(11) DEFAULT NULL,
  `notified` tinyint(1) DEFAULT NULL,
  `delivery_time` int(11) DEFAULT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `carrier` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery` tinyint(1) NOT NULL DEFAULT '0',
  `location` int(11) NOT NULL,
  `printed` tinyint(1) NOT NULL DEFAULT '0',
  `promo` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `order_name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_orders`
--

LOCK TABLES `saved_orders` WRITE;
/*!40000 ALTER TABLE `saved_orders` DISABLE KEYS */;
INSERT INTO `saved_orders` VALUES (9,26,1338526760,0,0,0,0,0,0,0,'Miller','513-376-1775','no_message',1,1,0,'','Dad\'s Favorite');
/*!40000 ALTER TABLE `saved_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` int(10) unsigned NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `activation_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forgotten_password_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `carrier` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` int(11) NOT NULL,
  `email_mkt` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,2130706433,'administrator','59beecdf7fc966e2f17fd8f65a4a9aeb09d4a3d4','9462e8eee0','seanka@datavirtue.com','',NULL,NULL,NULL,1268889823,1345071559,1,'Anderson','','Haven-Ethic','937-509-8797','no_message','5244 Leninger Haigh Rd','','Hillsboro','OH','45133','datavirtue',1,1),(26,2801361414,'','d9d6f8991f46e7fadf7733ee7d777c9a39b52900',NULL,'sanderson@haven-ethic.com',NULL,NULL,1339477564,NULL,1338526771,1339609227,1,'Sean K Anderson',NULL,'','937-509-1731','no_message','5244 Leninger Haigh Rd','','Hillsboro','OH','45133','',1,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` VALUES (1,1,6),(26,26,1);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-17 22:59:40
