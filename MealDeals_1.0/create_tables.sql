CREATE DATABASE IF NOT EXISTS mealdeals;

USE mealdeals;

CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` tinyint(4) NOT NULL,
  `category_name` varchar(20) DEFAULT NULL,
   PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

CREATE TABLE IF NOT EXISTS `allergies` (
  `allergie_id` tinyint(4) NOT NULL,
  `allergie_name` varchar(20) DEFAULT NULL,
   PRIMARY KEY (`allergie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

CREATE TABLE IF NOT EXISTS `dishes` (
  `dish_id` tinyint(4) NOT NULL,
  `dish_name` varchar(20) DEFAULT NULL,
   PRIMARY KEY (`dish_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

CREATE TABLE IF NOT EXISTS `measure_units` (
  `measure_unit_id` tinyint(4) NOT NULL,
  `measure_unit_name` varchar(20) DEFAULT NULL,
   PRIMARY KEY (`measure_unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL,
  `fullname` varchar(80) NOT NULL, 
  `username` varchar(20) NOT NULL,
  `address` varchar(80) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `register_date` date DEFAULT NOW(),
  `last_login_date` date DEFAULT NOW(),
   PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

CREATE TABLE IF NOT EXISTS `ingredients` (
  `ingredient_id` int(11) NOT NULL,
  `ingredient_name` varchar(30) NOT NULL, 
  `category_id` tinyint(4) DEFAULT NULL,
  `measure_unit_id` tinyint(4) DEFAULT NULL,
  `allergie_id` tinyint(1) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
   PRIMARY KEY (`ingredient_id`),
   FOREIGN KEY (category_id) REFERENCES categories(category_id),
   FOREIGN KEY (measure_unit_id) REFERENCES measure_units(measure_unit_id),
   FOREIGN KEY (allergie_id) REFERENCES allergies(allergie_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

CREATE TABLE IF NOT EXISTS `recipes` (
  `recipe_id` int(11) NOT NULL,
  `recipe_name` varchar(80) NOT NULL, 
  `dish_id` tinyint(4) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `cook_time` smallint(6) DEFAULT NULL,
  `difficulty` char DEFAULT NULL,
  `calorie` smallint(6) DEFAULT NULL,
  `allergie` tinyint(1) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `picture_url` varchar(100) DEFAULT NULL,
   PRIMARY KEY (`recipe_id`),
   FOREIGN KEY (dish_id) REFERENCES dishes(dish_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

CREATE TABLE IF NOT EXISTS `recipe_ingredients` (
  `recipe_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
   FOREIGN KEY (recipe_id) REFERENCES recipes(recipe_id),
   FOREIGN KEY (ingredient_id) REFERENCES ingredients(ingredient_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;
