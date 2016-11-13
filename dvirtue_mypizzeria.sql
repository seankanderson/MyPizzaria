-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 25, 2013 at 12:34 PM
-- Server version: 5.5.23
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dvirtue_mypizzeria`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('5f4f6e05b4df86d8fa9ff24eb42a4105', '198.30.110.137', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 1374771303, 'a:2:{s:9:"user_data";s:0:"";s:17:"flash:old:message";s:24:"<p>Account Activated</p>";}'),
('4134da33bc4de43e1548c266b8ef913e', '198.30.110.137', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:22.0) Gecko/20100101 Firefox/22.0', 1374772620, 'a:18:{s:9:"user_data";s:0:"";s:8:"location";s:1:"1";s:7:"confirm";s:3:"yes";s:8:"identity";s:27:"sean.anderson.mcp@gmail.com";s:8:"username";s:0:"";s:5:"phone";s:12:"937.509.8797";s:5:"email";s:27:"sean.anderson.mcp@gmail.com";s:7:"user_id";s:2:"30";s:14:"old_last_login";s:10:"1374771281";s:10:"permission";i:1;s:13:"email_address";s:27:"sean.anderson.mcp@gmail.com";s:7:"carrier";s:10:"no_message";s:8:"order_id";s:3:"469";s:7:"started";i:1374771334;s:15:"current_item_id";i:554;s:17:"current_item_name";s:20:"Large Pepperoni Lust";s:18:"current_item_combo";b:0;s:22:"current_item_top_price";d:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_blockouts`
--

CREATE TABLE IF NOT EXISTS `delivery_blockouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `description` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `recurrence` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `delivery_blockouts`
--

INSERT INTO `delivery_blockouts` (`id`, `location_id`, `description`, `start_time`, `end_time`, `recurrence`) VALUES
(1, 1, 'Christmas', 1356454800, 1356541200, 2);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_hours`
--

CREATE TABLE IF NOT EXISTS `delivery_hours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `day` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `open_time` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `day_close` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `close_time` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `delivery_hours`
--

INSERT INTO `delivery_hours` (`id`, `location_id`, `day`, `open_time`, `day_close`, `close_time`) VALUES
(1, 1, 'Sunday', '12:00PM', 'Monday', '1:00AM'),
(2, 1, 'Monday', '12:00PM', 'Tuesday', '1:00AM'),
(3, 1, 'Tuesday', '12:00PM', 'Wednesday', '1:30AM'),
(4, 1, 'Wednesday', '12:00PM', 'Thursday', '2:00AM'),
(5, 1, 'Thursday', '12:00PM', 'Thursday', '9:00PM'),
(6, 1, 'Friday', '12:00PM', 'Friday', '11:00PM'),
(7, 1, 'Saturday', '12:00PM', 'Sunday', '1:00AM');

-- --------------------------------------------------------

--
-- Table structure for table `email_mkt_log`
--

CREATE TABLE IF NOT EXISTS `email_mkt_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'customers', ''),
(2, 'cooks', ''),
(3, 'drivers', ''),
(4, 'supervisors', ''),
(5, 'managers', ''),
(6, 'owners', '');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location_name`, `street`, `city`, `state`, `postal_code`, `active`, `cen_lat`, `cen_lon`, `map_label`, `loc_lat`, `loc_lon`, `zoom`) VALUES
(1, 'Hillsboro', '530 Harry Sauner Rd', 'Hillsboro', 'OH', '45133', 1, '39.214433309422', '-83.60887527465', '*', '39.227108794', '-83.61813426', 13),
(3, 'Greenfield', '1616 Main Street', 'Greenfield', 'OH', '45123', 1, NULL, NULL, NULL, NULL, NULL, 0),
(5, 'Wilmington', '7540 Main Street', 'Wilmington ', 'OH', '45177', 0, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE IF NOT EXISTS `managers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`, `username`, `role`, `password`) VALUES
(1, 'seanka', 3, 'b24391223dcf6024bba997b5a0226ff4');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE IF NOT EXISTS `menu_items` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `item_name`, `description`, `price`, `topping_price`, `show_top_price`, `combo_top_prices`, `category`, `enabled`, `toppings_table`) VALUES
(1, 'Small Cheese Pizza', 'A hot round of pizza sauce and mozzarella cheese on fresh-made dough.', 5.99, 0, 0, 0, 'pizzas', 1, 'menu_pizza_toppings'),
(2, 'Medium Cheese Pizza', 'A plain cheese pizza, 14" of hot goodness.', 7.99, 0.25, 0, 1, 'pizzas', 1, 'menu_pizza_toppings'),
(3, 'Italian Sub', 'A fresh baked sub loaded with salami, pepperoni, and ham on a bed of lettuce, tomato, pickels, and mayo. Add banana peppers or jalepenos for another burst of flavor.', 4.99, 0, 0, 0, 'subs', 1, 'menu_sand_toppings'),
(4, 'Pizza Sub', 'Well-done beef patty resting on a bed of pizza sauce, onions, and pickles--all topped with real mozzarella cheese and nestled in a hot sub roll.', 4.99, 0, 0, 0, 'subs', 1, 'menu_sand_toppings'),
(5, 'Mushroom Sub', 'A favorite of many! Experience a beef patty sitting happily on a little bit of brown gravy, onions, and lots of mushrooms--topped with mozza cheese  nestled inside a fresh sub roll.', 4.99, 0, 0, 0, 'subs', 1, 'menu_sand_toppings'),
(6, 'Chicken Club Sub', 'Two juicy chicken breasts resting on mayo, lettuce, and tomato--topped with mozza cheese and two strips of crispy bacon. ', 5.99, 0, 0, 0, 'subs', 1, 'menu_sand_toppings'),
(7, 'French Fries', 'A generous portion of french fries, fried to a crisp and lightly salted.', 1.99, 0, 0, 0, 'sides', 1, 'none'),
(8, 'Onion Rings', 'Everyone''s favorite onion rings fried to perfection and lightly salted.', 2.49, 0, 0, 0, 'sides', 1, 'none'),
(9, 'Large Cheese Pizza', 'A HOT 14 inch cheese pizza. Add your favorite toppings!', 10.99, 0.49, 0, 1, 'pizzas', 1, 'menu_pizza_toppings'),
(10, 'Cheese Burger', 'A 1/3lb of 100% beef cooked med-well and placed on a bed of mayo and lettuce--topped with cheese and served on a toasted bun.', 2.99, 0, 0, 0, 'burgers', 1, 'menu_sand_toppings'),
(18, '2 Liter Coca-Cola', 'Get an icy-cold 2-Liter of Coke for those moments when your hot meal demands it!', 1.99, 0, 0, 0, 'drinks', 1, 'none'),
(12, 'Grilled Cheese', 'Three slices of American cheese, melted between two slices of crispy,  buttery Texas toast. You could make one at home, but it just wouldn''t be the same.', 2.39, 0, 0, 0, 'sandwiches', 1, 'menu_sand_toppings'),
(13, 'Chicken Salad Melt', 'Generous portion of Pilgrim''s Pride deli-fresh chicken salad, sandwiched between two slices of buttery Texas toast and melted cheese. ', 3.99, 0, 0, 0, 'sandwiches', 1, 'menu_sand_toppings'),
(14, 'Double Cheese Burger', 'Hungry!? Enjoy 2x 1/3lb 100% beef patties cooked med-well and placed on a bed of mayo and lettuce-- topped with cheese and served on a toasted bun. Tomato and pickle on the side. Add Bacon for $0.99!', 3.99, 0, 0, 0, 'burgers', 1, 'menu_sand_toppings'),
(23, 'Cheese Sticks', 'Batter-coated logs of mozzarella cheese fried to crispy golden brown with a melted center. Total comfort food!', 2.85, 0, 0, 0, 'sides', 1, 'none'),
(24, 'Big Bud', 'A hearty portion of ham, salami, and turkey on a toasted bun--loaded with all your favorite toppings. Try it. Like it. Want it!', 5.49, 0, 0, 0, 'subs', 1, 'menu_sand_toppings'),
(26, 'Large Pepperoni Lust', 'OMG! Lots of pepperoni, lovingly placed from edge-to-edge. Ravage one tonite!', 12.99, 0, 0, 0, 'pizzas', 1, 'menu_pizza_toppings');

-- --------------------------------------------------------

--
-- Table structure for table `menu_pizza_toppings`
--

CREATE TABLE IF NOT EXISTS `menu_pizza_toppings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topping_name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `category` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `menu_pizza_toppings`
--

INSERT INTO `menu_pizza_toppings` (`id`, `topping_name`, `price`, `category`, `enabled`) VALUES
(1, 'Pepperoni', 0.99, 'meat', 1),
(2, 'Sausage', 0.99, 'meat', 1),
(3, 'Ham', 0.99, 'meat', 1),
(4, 'Pineapple', 0.99, 'fruit', 1),
(5, 'Green Peppers', 0.99, 'veggies', 1),
(6, 'Onions', 0.99, 'veggies', 1),
(7, 'Banana Peppers', 0.99, 'veggies', 1),
(8, 'Mushrooms', 0.99, 'veggies', 1),
(9, 'Jalepeno Peppers', 0.99, 'veggies', 1),
(10, 'Shredded Chicken', 0.99, 'meat', 1),
(11, 'Tomatoes', 0.99, 'veggies', 1),
(12, 'Mozzarella Cheese', 0.99, 'cheese', 1),
(13, 'Pizza Sauce', 0.99, 'sauce', 1),
(18, 'Cheddar Cheese', 0.99, 'cheese', 0),
(17, 'Bacon', 0.99, 'meat', 1),
(19, 'Ground Beef', 0.99, 'meat', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_sand_toppings`
--

CREATE TABLE IF NOT EXISTS `menu_sand_toppings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topping_name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `category` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `menu_sand_toppings`
--

INSERT INTO `menu_sand_toppings` (`id`, `topping_name`, `price`, `category`, `enabled`) VALUES
(1, 'Shredded Iceberg Lettuce', 0.39, 'veggies', 1),
(2, 'Tomato Slices', 0.39, 'veggies', 1),
(3, 'American Cheese Slice', 0.39, 'cheese', 1),
(4, 'Pepper Jack Cheese Slice', 0.49, 'cheese', 1),
(5, 'Pickles', 0.25, 'veggies', 1),
(6, 'Banana Peppers', 0.39, 'veggies', 1),
(7, 'Green Peppers', 0.39, 'veggies', 1),
(8, 'Jalapeno Peppers', 0.39, 'veggies', 1),
(9, 'Extra Chicken Breast', 1.99, 'meat', 1),
(10, 'Extra 1/3lb Beef Patty', 1.49, 'meat', 1),
(11, 'Pizza Sauce', 0.39, 'sauce', 1),
(12, 'Mushroom Sauce', 0.49, 'sauce', 1),
(13, 'Sliced Onions', 0.29, 'veggies', 1),
(14, 'Bacon Slices (2)', 0.89, 'meat', 1),
(15, 'Sauteed Mushrooms-Onions', 0.99, 'veggies', 1),
(16, 'Sauteed Mushrooms', 0.49, 'veggies', 1),
(17, 'Sauteed Onions', 0.49, 'veggies', 1),
(18, 'Shaved Ham', 0.79, 'meat', 1),
(19, 'Shaved Turkey', 0.79, 'meat', 1),
(20, 'Salami', 0.79, 'meat', 1),
(21, 'Mozzerella Cheese', 0.49, 'cheese', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_std_toppings`
--

CREATE TABLE IF NOT EXISTS `menu_std_toppings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `topping_name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24 ;

--
-- Dumping data for table `menu_std_toppings`
--

INSERT INTO `menu_std_toppings` (`id`, `item_id`, `topping_name`) VALUES
(1, 4, 'Pickels'),
(12, 10, 'Pickles'),
(6, 10, 'American Cheese Slice'),
(7, 10, 'Shredded Iceberg Lettuce'),
(8, 14, 'Shredded Iceberg Lettuce'),
(11, 14, 'Pickles'),
(13, 26, 'Pepperoni'),
(14, 26, 'Pepperoni'),
(15, 24, 'Shredded Iceberg Lettuce'),
(16, 24, 'Tomato Slices'),
(17, 24, 'Shaved Ham'),
(18, 24, 'Shaved Turkey'),
(19, 24, 'Salami'),
(20, 6, 'Shredded Iceberg Lettuce'),
(21, 6, 'Tomato Slices'),
(22, 6, 'Bacon Slices (2)'),
(23, 6, 'Mozzerella Cheese');

-- --------------------------------------------------------

--
-- Table structure for table `misc_config`
--

CREATE TABLE IF NOT EXISTS `misc_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lead_time` int(11) NOT NULL,
  `refresh_rate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `misc_config`
--

INSERT INTO `misc_config` (`id`, `lead_time`, `refresh_rate`) VALUES
(1, 30, 60);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=470 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `started`, `submitted`, `verified`, `v_time`, `ready_done`, `rd_time`, `notified`, `delivery_time`, `name`, `phone`, `carrier`, `delivery`, `location`, `printed`, `promo`) VALUES
(468, 0, 1370558528, 1370558631, 0, 0, 0, 0, 0, 1370560413, 'amdersom', '9375091731', 'no_message', 0, 1, 0, ''),
(447, 1, 1339130582, 0, 0, 0, 0, 0, 0, 0, 'Anderson', '937-509-8878', 'no_message', 0, 1, 0, ''),
(467, 0, 1370470500, 1370470690, 1, 1370470886, 0, 0, 0, 1370472490, 'Daddy', '937.509.8797', 'no_message', 0, 1, 0, ''),
(442, 1, 1338947183, 0, 0, 0, 0, 0, 0, 0, 'Anderson', '937-509-8797', 'no_message', 1, 1, 0, ''),
(441, 1, 1338869148, 0, 0, 0, 0, 0, 0, 0, 'Anderson', '937-509-1735', 'no_message', 1, 1, 0, ''),
(440, 1, 1338869011, 0, 0, 0, 0, 0, 0, 0, 'Anderson', '937-509-8888', 'no_message', 1, 1, 0, ''),
(439, 1, 1338862444, 0, 0, 0, 0, 0, 0, 0, 'Anderson', '937-509-8797', 'no_message', 1, 1, 0, ''),
(469, 30, 1374771334, 0, 0, 0, 0, 0, 0, 0, 'Sean Anderson', '937.509.8797', 'no_message', 0, 0, 0, ''),
(456, 1, 1341722797, 0, 0, 0, 0, 0, 0, 0, 'Anderson', '937-509-8797', 'no_message', 1, 1, 0, ''),
(457, 1, 1341724577, 0, 0, 0, 0, 0, 0, 0, 'Anderson', '937-509-8797', 'no_message', 1, 1, 0, ''),
(458, 0, 1342247630, 0, 0, 0, 0, 0, 0, 0, 'Anderson', '937-509-8797', 'no_message', 1, 1, 0, ''),
(459, 1, 1342248223, 0, 0, 0, 0, 0, 0, 0, 'Anderson', '937-509-8797', 'no_message', 1, 1, 0, ''),
(460, 1, 1342849635, 0, 0, 0, 0, 0, 0, 0, 'Anderson', '937-509-8797', 'no_message', 1, 1, 0, ''),
(461, 1, 1342849716, 0, 0, 0, 0, 0, 0, 0, 'Anderson', '937-509-8797', 'no_message', 1, 1, 0, ''),
(462, 1, 1342849920, 0, 0, 0, 0, 0, 0, 0, 'Anderson', '937-509-1731', 'no_message', 1, 1, 0, ''),
(463, 1, 1342850479, 0, 0, 0, 0, 0, 0, 0, 'anderson', '937-509-8797', 'no_message', 1, 1, 0, ''),
(464, 0, 1344716624, 0, 0, 0, 0, 0, 0, 0, 'Anderson', '937-509-8797', 'no_message', 0, 1, 0, ''),
(465, 1, 1345071593, 0, 0, 0, 0, 0, 0, 0, 'Anderson', '937-509-8797', 'no_message', 0, 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `order_address`
--

CREATE TABLE IF NOT EXISTS `order_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `street` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_2` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=86 ;

--
-- Dumping data for table `order_address`
--

INSERT INTO `order_address` (`id`, `order_id`, `street`, `address_2`, `city`, `state`, `postal_code`) VALUES
(85, 469, '5244 Leninger Haigh Rd', '', 'Hillsboro', 'OH', '45133'),
(64, 442, '5244 Leninger Haigh Rd', '', 'Hillsboro', 'OH', '45133'),
(63, 441, '5244 Leninger Haigh Rd', '', 'Hillsboro', 'OH', '45133'),
(62, 440, '5244 Leniniger Haigh ', '', 'Hillsboro', 'OH', '45133'),
(61, 439, '5244 Leninger Haigh Rd', '', 'Hillsboro', 'OH', '45133'),
(77, 456, '5244 Leninger Haigh Rd', '', 'Hillsboro', 'OH', '45133'),
(78, 457, '5244 Leninger Haigh Rd', '', 'Hillsboro', 'OH', '45133'),
(79, 458, '5244 Leninger Haigh Rd', '', 'Hillsboro', 'OH', '45133'),
(80, 459, '5244 Leniniger Haigh', '', 'Hillsboro', 'OH', '45133'),
(81, 460, '5244 Leninger Haigh Rd', '', 'Hillsboro', 'OH', '45133'),
(82, 461, '5244 Leninger Haigh Rd', '', 'Hillsboro', 'OH', '45133'),
(83, 462, '5244 Leninger Haigh Rd', '', 'Hillsboro', 'OH', '45133'),
(84, 463, '5244 Leninger Haigh Rd', '', 'Hillsboro', 'OH', '45133');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `price` float DEFAULT NULL,
  `combo_top_prices` tinyint(1) DEFAULT NULL,
  `top_price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=556 ;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `name`, `category`, `price`, `combo_top_prices`, `top_price`) VALUES
(555, 469, 'PROMO: ', 'PROMO', 0, 0, 0),
(553, 468, 'Small Cheese Pizza', 'pizzas', 5.99, 0, 0),
(505, 447, 'Large Pepperoni Lust', '', 12.99, 0, 0),
(495, 441, 'Double Cheese Burger', '', 3.99, 0, 0),
(552, 467, 'Large Pepperoni Lust', 'pizzas', 12.99, 0, 0),
(492, 439, 'Large Cheese Pizza', '', 10.99, 1, 0.49),
(493, 440, 'Onion Rings', '', 2.49, 0, 0),
(494, 441, 'Italian Sub', '', 4.99, 0, 0),
(554, 469, 'Large Pepperoni Lust', 'pizzas', 12.99, 0, 0),
(496, 442, 'Italian Sub', '', 4.99, 0, 0),
(530, 456, 'Large Cheese Pizza', 'pizzas', 10.99, 1, 0.49),
(533, 457, 'Large Cheese Pizza', 'pizzas', 10.99, 1, 0.49),
(536, 457, 'PROMO: Family Feast', 'PROMO', -6, 0, 0),
(541, 458, 'Medium Cheese Pizza', 'pizzas', 7.99, 1, 0.25),
(542, 459, 'Medium Cheese Pizza', 'pizzas', 7.99, 1, 0.25),
(544, 460, 'Medium Cheese Pizza', 'pizzas', 7.99, 1, 0.25),
(545, 460, 'PROMO: Med2Top', 'PROMO', -2.48, 0, 0),
(546, 461, 'Medium Cheese Pizza', 'pizzas', 7.99, 1, 0.25),
(547, 461, 'PROMO: Med2Top', 'PROMO', -2.48, 0, 0),
(548, 462, 'Medium Cheese Pizza', 'pizzas', 7.99, 1, 0.25),
(549, 462, 'PROMO: Med2Top', 'PROMO', -2.48, 0, 0),
(550, 463, 'Medium Cheese Pizza', 'pizzas', 7.99, 1, 0.25);

-- --------------------------------------------------------

--
-- Table structure for table `order_item_toppings`
--

CREATE TABLE IF NOT EXISTS `order_item_toppings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `comment` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `half` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=331 ;

--
-- Dumping data for table `order_item_toppings`
--

INSERT INTO `order_item_toppings` (`id`, `order_id`, `item_id`, `comment`, `half`, `price`) VALUES
(306, 456, 530, 'Sausage', 'W', 1.48),
(301, NULL, 525, 'Pepperoni', 'W', 0),
(330, 469, 554, 'Mushrooms', 'W', 0.99),
(329, 469, 554, 'Ham', 'W', 0.99),
(327, 469, 554, 'Pepperoni', 'W', 0),
(328, 469, 554, 'Pepperoni', 'W', 0),
(275, 441, 495, 'Pickles', 'W', 0),
(274, 441, 495, 'Shredded Iceberg Lettuce', 'W', 0),
(273, 441, 494, 'Banana Peppers', 'X', 0.39),
(326, 468, 553, 'Banana Peppers', 'W', 0.99),
(272, 441, 494, 'Pickles', 'X', 0.25),
(271, 439, 492, '>>>Please burn it slightly....well, not ', 'W', 0),
(325, 467, 552, 'Green Peppers', 'W', 0.99),
(324, 467, 552, 'Pepperoni', 'W', 0),
(281, 447, 505, 'Pepperoni', 'W', 0),
(323, 467, 552, 'Pepperoni', 'W', 0),
(280, 447, 505, 'Pepperoni', 'W', 0),
(307, 456, 531, 'Pepperoni', 'W', 0),
(308, 457, 533, 'Ham', 'W', 1.48),
(309, 458, 541, 'Shredded Chicken', 'W', 1.24),
(310, 458, 541, 'Pepperoni', 'W', 1.24),
(311, 458, 541, 'Pineapple', 'W', 1.24),
(312, 459, 542, 'Ham', 'W', 1.24),
(314, 460, 544, 'Ham', 'W', 1.24),
(315, 460, 544, 'Pepperoni', 'W', 1.24),
(316, 461, 546, 'Sausage', 'W', 1.24),
(317, 461, 546, 'Pepperoni', 'W', 1.24),
(318, 462, 548, 'Ham', 'W', 1.24),
(319, 462, 548, 'Pepperoni', 'W', 1.24),
(320, 463, 550, 'Sausage', 'W', 1.24),
(321, 463, 550, 'Pepperoni', 'W', 1.24);

-- --------------------------------------------------------

--
-- Table structure for table `pickup_blockouts`
--

CREATE TABLE IF NOT EXISTS `pickup_blockouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `description` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `recurrence` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `pickup_blockouts`
--

INSERT INTO `pickup_blockouts` (`id`, `location_id`, `description`, `start_time`, `end_time`, `recurrence`) VALUES
(1, 1, 'Christmas', 1356454800, 1356541200, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pickup_hours`
--

CREATE TABLE IF NOT EXISTS `pickup_hours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `day` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `open_time` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `day_close` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `close_time` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `pickup_hours`
--

INSERT INTO `pickup_hours` (`id`, `location_id`, `day`, `open_time`, `day_close`, `close_time`) VALUES
(1, 1, 'Sunday', '12:00PM', 'Sunday', '9:00PM'),
(2, 1, 'Monday', '12:00PM', 'Tuesday', '1:00AM'),
(3, 1, 'Tuesday', '12:00PM', 'Wednesday', '1:30AM'),
(4, 1, 'Wednesday', '12:00PM', 'Thursday', '2:00AM'),
(5, 1, 'Thursday', '12:00PM', 'Thursday', '9:00PM'),
(6, 1, 'Friday', '12:00PM', 'Friday', '11:00PM'),
(7, 1, 'Saturday', '12:00PM', 'Saturday', '11:00PM');

-- --------------------------------------------------------

--
-- Table structure for table `promo_combo`
--

CREATE TABLE IF NOT EXISTS `promo_combo` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `promo_combo`
--

INSERT INTO `promo_combo` (`id`, `name`, `description`, `code`, `type`, `active`, `feature`, `day`, `start_date`, `end_date`, `discount`) VALUES
(1, 'Family Feast', 'Hell yeah! Two large pizzas with one topping each, hot wings, and a 2 Liter of coke for $24.99.', '50055', 'combo', 1, 1, 'Tuesday', 0, 0, 6),
(5, 'Med2Top', 'Med pizza w/ 2 free toppings', '40055', 'combo', 1, 0, 'Tuesday, Monday', 0, 0, 2.48);

-- --------------------------------------------------------

--
-- Table structure for table `promo_conditions`
--

CREATE TABLE IF NOT EXISTS `promo_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promo_id` int(11) NOT NULL,
  `category` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `price_floor` float NOT NULL,
  `compare` int(11) NOT NULL,
  `like` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `promo_conditions`
--

INSERT INTO `promo_conditions` (`id`, `promo_id`, `category`, `price_floor`, `compare`, `like`) VALUES
(2, 1, 'pizzas', 10.99, 2, 'Large Cheese'),
(3, 0, 'pizzas', 10.47, 2, 'Medium Cheese'),
(4, 5, 'pizzas', 10.47, 2, 'Medium Cheese');

-- --------------------------------------------------------

--
-- Table structure for table `saved_orders`
--

CREATE TABLE IF NOT EXISTS `saved_orders` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `saved_orders`
--

INSERT INTO `saved_orders` (`id`, `user_id`, `started`, `submitted`, `verified`, `v_time`, `ready_done`, `rd_time`, `notified`, `delivery_time`, `name`, `phone`, `carrier`, `delivery`, `location`, `printed`, `promo`, `order_name`) VALUES
(9, 26, 1338526760, 0, 0, 0, 0, 0, 0, 0, 'Miller', '513-376-1775', 'no_message', 1, 1, 0, '', 'Dad''s Favorite'),
(11, 30, 1374771334, 0, 0, 0, 0, 0, 0, 0, 'Sean Anderson', '937.509.8797', 'no_message', 0, 0, 0, '', 'Pepperoni Mushroom'),
(12, 30, 1374771334, 0, 0, 0, 0, 0, 0, 0, 'Sean Anderson', '937.509.8797', 'no_message', 0, 0, 0, '', 'Pepperoni Mushroom');

-- --------------------------------------------------------

--
-- Table structure for table `saved_order_items`
--

CREATE TABLE IF NOT EXISTS `saved_order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `price` float DEFAULT NULL,
  `combo_top_prices` tinyint(1) DEFAULT NULL,
  `top_price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `saved_order_items`
--

INSERT INTO `saved_order_items` (`id`, `order_id`, `name`, `category`, `price`, `combo_top_prices`, `top_price`) VALUES
(7, 8, 'Mushroom Sub', '', 4.99, 0, 0),
(9, 9, 'Small Cheese Pizza', '', 5.99, 0, 0),
(8, 8, 'Small Cheese Pizza', '', 5.99, 0, 0),
(10, 9, 'Mushroom Sub', '', 4.99, 0, 0),
(11, 10, 'Small Cheese Pizza', '', 5.99, 0, 0),
(12, 10, 'Mushroom Sub', '', 4.99, 0, 0),
(13, 12, 'PROMO: ', 'PROMO', 0, 0, 0),
(14, 12, 'Large Pepperoni Lust', 'pizzas', 12.99, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `saved_order_item_toppings`
--

CREATE TABLE IF NOT EXISTS `saved_order_item_toppings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `comment` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `half` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `saved_order_item_toppings`
--

INSERT INTO `saved_order_item_toppings` (`id`, `order_id`, `item_id`, `comment`, `half`, `price`) VALUES
(5, 8, 8, 'Pepperoni', 'W', 0.99),
(6, 9, 9, 'Pepperoni', 'W', 0.99),
(7, 10, 11, 'Pepperoni', 'W', 0.99),
(8, 12, 14, 'Mushrooms', 'W', 0.99),
(9, 12, 14, 'Ham', 'W', 0.99),
(10, 12, 14, 'Pepperoni', 'W', 0),
(11, 12, 14, 'Pepperoni', 'W', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `carrier`, `street`, `address_2`, `city`, `state`, `postal_code`, `twitter`, `location`, `email_mkt`) VALUES
(1, 2130706433, 'administrator', 'f3ddd3deb332ee6c60721e47db2b35fca0199719', '9462e8eee0', 'seanka@datavirtue.com', '', NULL, 1374767416, NULL, 1268889823, 1374771080, 1, 'Anderson', '', 'Haven-Ethic', '937-509-8797', 'no_message', '5244 Leninger Haigh Rd', '', 'Hillsboro', 'OH', '45133', 'datavirtue', 1, 1),
(26, 2801361414, '', 'd9d6f8991f46e7fadf7733ee7d777c9a39b52900', NULL, 'sanderson@haven-ethic.com', NULL, NULL, 1339477564, NULL, 1338526771, 1339609227, 1, 'Sean K Anderson', NULL, '', '937-509-1731', 'no_message', '5244 Leninger Haigh Rd', '', 'Hillsboro', 'OH', '45133', '', 1, 1),
(30, 3323883145, '', 'b5b22b4b267402934dbea82f1c634d268f742aa3', NULL, 'sean.anderson.mcp@gmail.com', NULL, NULL, NULL, NULL, 1374771281, 1374771334, 1, 'Sean Anderson', NULL, '', '937.509.8797', 'no_message', '5244 Leninger Haigh Rd', '', 'Hillsboro', 'OH', '45133', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 6),
(26, 26, 1),
(30, 30, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
