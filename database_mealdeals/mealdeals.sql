-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3307
-- Létrehozás ideje: 2024. Ápr 12. 23:17
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `mealdeals`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `allergies`
--

CREATE TABLE `allergies` (
  `allergie_id` tinyint(4) NOT NULL,
  `allergie_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `allergies`
--

INSERT INTO `allergies` (`allergie_id`, `allergie_name`) VALUES
(1, 'mogyoró'),
(2, 'tej'),
(3, 'tojás'),
(4, 'szója'),
(5, 'hal'),
(6, 'laktóz'),
(7, 'glutén'),
(8, 'cukor');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `categories`
--

CREATE TABLE `categories` (
  `category_id` tinyint(4) NOT NULL,
  `category_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'fűszer'),
(2, 'zöldség'),
(3, 'gyümölcs'),
(4, 'hús'),
(5, 'hal'),
(6, 'tejtermék'),
(7, 'édesítők'),
(8, 'gabonafélék/liszt'),
(9, 'zsiradék'),
(10, 'olajos magvak'),
(11, 'egyéb');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `dishes`
--

CREATE TABLE `dishes` (
  `dish_id` tinyint(4) NOT NULL,
  `dish_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `dishes`
--

INSERT INTO `dishes` (`dish_id`, `dish_name`) VALUES
(1, 'reggeli'),
(2, 'ebéd'),
(3, 'vacsora'),
(4, 'leves'),
(5, 'főétel'),
(6, 'desszert');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ingredients`
--

CREATE TABLE `ingredients` (
  `ingredient_id` int(11) NOT NULL,
  `ingredient_name` varchar(30) NOT NULL,
  `category_id` tinyint(4) DEFAULT NULL,
  `measure_unit_id` tinyint(4) DEFAULT NULL,
  `allergie_id` tinyint(1) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `ingredients`
--

INSERT INTO `ingredients` (`ingredient_id`, `ingredient_name`, `category_id`, `measure_unit_id`, `allergie_id`, `user_id`) VALUES
(1, 'víz', 11, NULL, NULL, NULL),
(2, 'só', 1, NULL, NULL, NULL),
(3, 'fűszerpaprika', 1, NULL, NULL, NULL),
(4, 'őrölt bors', 1, NULL, NULL, NULL),
(5, 'fehérbors', 1, NULL, NULL, NULL),
(6, 'köménymag', 1, NULL, NULL, NULL),
(7, 'babérlevél', 1, NULL, NULL, NULL),
(8, 'kurkuma', 1, NULL, NULL, NULL),
(9, 'szegfűszeg', 1, NULL, NULL, NULL),
(10, 'fahéj', 1, NULL, NULL, NULL),
(11, 'krumpli', 2, NULL, NULL, NULL),
(12, 'paradicsom', 2, NULL, NULL, NULL),
(13, 'uborka', 2, NULL, NULL, NULL),
(14, 'padlizsán', 2, NULL, NULL, NULL),
(15, 'sárgarépa', 2, NULL, NULL, NULL),
(16, 'fehérrépa', 2, NULL, NULL, NULL),
(17, 'zeller', 2, NULL, NULL, NULL),
(18, 'cékla', 2, NULL, NULL, NULL),
(19, 'vöröshagyma', 2, NULL, NULL, NULL),
(20, 'fokhagyma', 2, NULL, NULL, NULL),
(21, 'medvehagyma', 2, NULL, NULL, NULL),
(22, 'zöldborsó', 2, NULL, NULL, NULL),
(23, 'zöldbab', 2, NULL, NULL, NULL),
(24, 'lencse', NULL, NULL, NULL, NULL),
(25, 'sárgaborsó', NULL, NULL, NULL, NULL),
(26, 'fejtett bab', NULL, NULL, NULL, NULL),
(27, 'káposzta', 2, NULL, NULL, NULL),
(28, 'vöröskáposzta', 2, NULL, NULL, NULL),
(29, 'kelkáposzta', 2, NULL, NULL, NULL),
(30, 'karfiol', 2, NULL, NULL, NULL),
(31, 'brokkoli', 2, NULL, NULL, NULL),
(32, 'karalábé', 2, NULL, NULL, NULL),
(33, 'kelbimbó', 2, NULL, NULL, NULL),
(34, 'tök', 2, NULL, NULL, NULL),
(35, 'patiszon', 2, NULL, NULL, NULL),
(36, 'sütőtök', 2, NULL, NULL, NULL),
(37, 'cukkini', 2, NULL, NULL, NULL),
(38, 'liszt', NULL, NULL, NULL, NULL),
(39, 'cukor', 7, NULL, NULL, NULL),
(40, 'élesztő', NULL, NULL, NULL, NULL),
(41, 'olivaolaj', NULL, NULL, NULL, NULL),
(42, 'olaj', NULL, NULL, NULL, NULL),
(43, 'oregano', 1, NULL, NULL, NULL),
(44, 'bazsalikom', 1, NULL, NULL, NULL),
(45, 'mozzarella', 6, NULL, NULL, NULL),
(46, 'hamburger zsemle', NULL, NULL, NULL, NULL),
(47, 'hamburger pogácsa', 4, NULL, NULL, NULL),
(48, 'edami sajt', 6, NULL, NULL, NULL),
(49, 'barbecue szósz', NULL, NULL, NULL, NULL),
(50, 'lilahagyma', 2, NULL, NULL, NULL),
(51, 'mustár', NULL, NULL, NULL, NULL),
(52, 'saláta', 2, NULL, NULL, NULL),
(53, 'tej', 6, NULL, NULL, NULL),
(54, 'tészta', NULL, NULL, NULL, NULL),
(55, 'füstölt szalonna', NULL, NULL, NULL, NULL),
(56, 'túró', 6, NULL, NULL, NULL),
(57, 'tejföl', 6, NULL, NULL, NULL),
(58, 'pirosarany', 11, NULL, NULL, NULL),
(59, 'gulyáskrém', 11, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `measure_units`
--

CREATE TABLE `measure_units` (
  `measure_unit_id` tinyint(4) NOT NULL,
  `measure_unit_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `measure_units`
--

INSERT INTO `measure_units` (`measure_unit_id`, `measure_unit_name`) VALUES
(1, 'deciliter'),
(2, 'gramm'),
(3, 'kilogramm'),
(4, 'teáskanál'),
(5, 'evőkanál'),
(6, 'db'),
(7, 'fej'),
(8, 'gerezd'),
(9, 'csipet'),
(10, 'liter');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `recipes`
--

CREATE TABLE `recipes` (
  `recipe_id` int(11) NOT NULL,
  `recipe_name` varchar(80) NOT NULL,
  `dish_id` tinyint(4) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `cook_time` smallint(6) DEFAULT NULL,
  `difficulty` char(1) DEFAULT NULL,
  `calorie` smallint(6) DEFAULT NULL,
  `allergie` tinyint(1) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `picture_url` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `recipes`
--

INSERT INTO `recipes` (`recipe_id`, `recipe_name`, `dish_id`, `description`, `cook_time`, `difficulty`, `calorie`, `allergie`, `user_id`, `picture_url`) VALUES
(1, 'Pizza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Hamburger', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Tojásrántotta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Túróscsusza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Mákos tészta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Palacsinta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Tojás leves', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Paradicsom leves', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Töltöttkáposzta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Pararadicsomos káposzta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Lencsefőzelék', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Babgulyás', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Rakott krumpli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Zúza pörkölt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Tejbegríz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Rántott hús', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'almás pite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'uborka saláta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'mákos kalács', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'tejberizs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `recipe_ingredients`
--

CREATE TABLE `recipe_ingredients` (
  `recipe_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `recipe_ingredients`
--

INSERT INTO `recipe_ingredients` (`recipe_id`, `ingredient_id`) VALUES
(1, 1),
(1, 2),
(1, 12),
(1, 20),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 43),
(1, 44),
(1, 45),
(2, 12),
(2, 13),
(2, 46),
(2, 47),
(2, 48),
(2, 49),
(2, 50),
(2, 51),
(2, 52),
(3, 2),
(3, 3),
(3, 19),
(3, 42),
(3, 53),
(4, 1),
(4, 2),
(4, 54),
(4, 55),
(4, 56),
(4, 57);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `fullname` varchar(80) NOT NULL,
  `username` varchar(20) NOT NULL,
  `address` varchar(80) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `register_date` date DEFAULT current_timestamp(),
  `last_login_date` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`user_id`, `fullname`, `username`, `address`, `phone`, `email`, `password`, `register_date`, `last_login_date`) VALUES
(-5, 'admin', 'admin', NULL, NULL, 'admin@admin.hu', '21232f297a57a5a743894a0e4a801fc3', '2024-04-11', '2024-04-11'),
(1, 'Tóth András Géza', 'Totya', NULL, NULL, 'totya@nomail.hu', '754b72ad47bf96048b91439b7732c70d', '2024-04-11', '2024-04-11'),
(2, 'Kiss Annamária', 'Nusi', 'Ököritófülpös, Tó utca 11.', '99123456789', 'kisnusi@nomail.hu', '8643176ac445e7bf13b189654e46a064', '2024-04-11', '2024-04-11');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `allergies`
--
ALTER TABLE `allergies`
  ADD PRIMARY KEY (`allergie_id`);

--
-- A tábla indexei `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- A tábla indexei `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`dish_id`);

--
-- A tábla indexei `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`ingredient_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `measure_unit_id` (`measure_unit_id`),
  ADD KEY `allergie_id` (`allergie_id`);

--
-- A tábla indexei `measure_units`
--
ALTER TABLE `measure_units`
  ADD PRIMARY KEY (`measure_unit_id`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`recipe_id`),
  ADD KEY `dish_id` (`dish_id`);

--
-- A tábla indexei `recipe_ingredients`
--
ALTER TABLE `recipe_ingredients`
  ADD KEY `recipe_id` (`recipe_id`),
  ADD KEY `ingredient_id` (`ingredient_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `allergies`
--
ALTER TABLE `allergies`
  MODIFY `allergie_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT a táblához `dishes`
--
ALTER TABLE `dishes`
  MODIFY `dish_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `ingredient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT a táblához `measure_units`
--
ALTER TABLE `measure_units`
  MODIFY `measure_unit_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `recipes`
--
ALTER TABLE `recipes`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `ingredients_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  ADD CONSTRAINT `ingredients_ibfk_2` FOREIGN KEY (`measure_unit_id`) REFERENCES `measure_units` (`measure_unit_id`),
  ADD CONSTRAINT `ingredients_ibfk_3` FOREIGN KEY (`allergie_id`) REFERENCES `allergies` (`allergie_id`);

--
-- Megkötések a táblához `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`dish_id`);

--
-- Megkötések a táblához `recipe_ingredients`
--
ALTER TABLE `recipe_ingredients`
  ADD CONSTRAINT `recipe_ingredients_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`),
  ADD CONSTRAINT `recipe_ingredients_ibfk_2` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredients` (`ingredient_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
