-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Feb 15. 12:20
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.2.0

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
-- Tábla szerkezet ehhez a táblához `allergie`
--

CREATE TABLE `allergie` (
  `allergie_id` tinyint(4) NOT NULL,
  `allergie_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `allergie`
--

INSERT INTO `allergie` (`allergie_id`, `allergie_name`) VALUES
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
  `category_id` int(11) NOT NULL,
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
-- Tábla szerkezet ehhez a táblához `category`
--

CREATE TABLE `category` (
  `category_id` tinyint(4) NOT NULL,
  `category_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
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
  `category_id` tinyint(4) NOT NULL,
  `measure_unit_id` tinyint(4) NOT NULL,
  `allergie_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `ingredients`
--

INSERT INTO `ingredients` (`ingredient_id`, `ingredient_name`, `category_id`, `measure_unit_id`, `allergie_id`) VALUES
(1, 'víz', 11, 0, 0),
(2, 'só', 1, 0, 0),
(3, 'fűszerpaprika', 1, 0, 0),
(4, 'őrölt bors', 1, 0, 0),
(5, 'fehérbors', 1, 0, 0),
(6, 'köménymag', 1, 0, 0),
(7, 'babérlevél', 1, 0, 0),
(8, 'kurkuma', 1, 0, 0),
(9, 'szegfűszeg', 1, 0, 0),
(10, 'fahéj', 1, 0, 0),
(11, 'krumpli', 2, 0, 0),
(12, 'paradicsom', 2, 0, 0),
(13, 'uborka', 2, 0, 0),
(14, 'padlizsán', 2, 0, 0),
(15, 'sárgarépa', 2, 0, 0),
(16, 'fehérrépa', 2, 0, 0),
(17, 'zeller', 2, 0, 0),
(18, 'cékla', 2, 0, 0),
(19, 'vöröshagyma', 2, 0, 0),
(20, 'fokhagyma', 2, 0, 0),
(21, 'medvehagyma', 2, 0, 0),
(22, 'zöldborsó', 2, 0, 0),
(23, 'zöldbab', 2, 0, 0),
(24, 'lencse', 0, 0, 0),
(25, 'sárgaborsó', 0, 0, 0),
(26, 'fejtett bab', 0, 0, 0),
(27, 'káposzta', 2, 0, 0),
(28, 'vöröskáposzta', 2, 0, 0),
(29, 'kelkáposzta', 2, 0, 0),
(30, 'karfiol', 2, 0, 0),
(31, 'brokkoli', 2, 0, 0),
(32, 'karalábé', 2, 0, 0),
(33, 'kelbimbó', 2, 0, 0),
(34, 'tök', 2, 0, 0),
(35, 'patiszon', 2, 0, 0),
(36, 'sütőtök', 2, 0, 0),
(37, 'cukkini', 2, 0, 0),
(38, 'liszt', 0, 0, 0),
(39, 'cukor', 7, 0, 0),
(40, 'élesztő', 0, 0, 0),
(41, 'olivaolaj', 0, 0, 0),
(42, 'olaj', 0, 0, 0),
(43, 'oregano', 1, 0, 0),
(44, 'bazsalikom', 1, 0, 0),
(45, 'mozzarella', 6, 0, 0),
(46, 'hamburger zsemle', 0, 0, 0),
(47, 'hamburger pogácsa', 4, 0, 0),
(48, 'edami sajt', 6, 0, 0),
(49, 'barbecue szósz', 0, 0, 0),
(50, 'lilahagyma', 2, 0, 0),
(51, 'mustár', 0, 0, 0),
(52, 'saláta', 2, 0, 0),
(53, 'tej', 6, 0, 0),
(54, 'tészta', 0, 0, 0),
(55, 'füstölt szalonna', 0, 0, 0),
(56, 'túró', 6, 0, 0),
(57, 'tejföl', 6, 0, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `measure_unit`
--

CREATE TABLE `measure_unit` (
  `measure_unit_id` tinyint(4) NOT NULL,
  `measure_unit_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `measure_unit`
--

INSERT INTO `measure_unit` (`measure_unit_id`, `measure_unit_name`) VALUES
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
-- Tábla szerkezet ehhez a táblához `recipe`
--

CREATE TABLE `recipe` (
  `recipe_id` int(11) NOT NULL,
  `recipe_name` varchar(80) NOT NULL,
  `dish_id` tinyint(4) NOT NULL,
  `description` text NOT NULL,
  `cook_time` smallint(6) NOT NULL,
  `difficulty` varchar(5) NOT NULL,
  `calorie` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `recipe`
--

INSERT INTO `recipe` (`recipe_id`, `recipe_name`, `dish_id`, `description`, `cook_time`, `difficulty`, `calorie`) VALUES
(1, 'Pizza', 0, '', 0, '', 0),
(2, 'Hamburger', 0, '', 0, '', 0),
(3, 'Tojásrántotta', 0, '', 0, '', 0),
(4, 'Túróscsusza', 0, '', 0, '', 0),
(5, 'Mákos tészta', 0, '', 0, '', 0),
(6, 'Palacsinta', 0, '', 0, '', 0),
(7, 'Tojás leves', 0, '', 0, '', 0),
(8, 'Paradicsom leves', 0, '', 0, '', 0),
(9, 'Töltöttkáposzta', 0, '', 0, '', 0),
(10, 'Pararadicsomos káposzta', 0, '', 0, '', 0),
(11, 'Lencsefőzelék', 0, '', 0, '', 0),
(12, 'Babgulyás', 0, '', 0, '', 0),
(13, 'Rakott krumpli', 0, '', 0, '', 0),
(14, 'Zúza pörkölt', 0, '', 0, '', 0),
(15, 'Tejbegríz', 0, '', 0, '', 0),
(16, 'Rántott hús', 0, '', 0, '', 0),
(17, 'almás pite', 0, '', 0, '', 0),
(18, 'uborka saláta', 0, '', 0, '', 0),
(19, 'mákos kalács', 0, '', 0, '', 0),
(20, 'tejberizs', 0, '', 0, '', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `recipe_ingredients`
--

CREATE TABLE `recipe_ingredients` (
  `recipe_id` int(11) NOT NULL,
  `ingredient_id` tinyint(4) NOT NULL
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
  `lastname` varchar(20) DEFAULT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `middlename` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  `pass` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`user_id`, `lastname`, `firstname`, `middlename`, `username`, `email`, `phone`, `address`, `pass`) VALUES
(-5, NULL, NULL, NULL, 'admin', NULL, NULL, NULL, '21232f297a57a5a743894a0e4a801fc3'),
(1, 'Zalai', 'Ernő', '', 'ZXaf4', 'ZalaiErnő518@nomail.com', '+3610174467552', 'Kocs , Szép dűlő 111.', '35248fb6'),
(2, 'Gyarmati', 'Zalán', 'Attila', 'GAZb9c', 'GyarmatiZalán764@nomail.com', '+3610135768622', 'Gönyü , Gyár utca 16.', '6d998b2d'),
(3, 'Péter', 'Helga', '', 'PHde7', 'PéterHelga269@nomail.com', '+3610155441456', 'Gönyü , Rét dűlő 118.', '79ef172f'),
(4, 'Zsombér', 'Zsófia', 'Atala', 'ZAZ918', 'ZsombérZsófia51@nomail.com', '+3610169896421', 'Nyúl , Rét út 121.', 'a9107dca'),
(5, 'Németh', 'Helga', '', 'NH604', 'NémethHelga448@nomail.com', '+3610183161737', 'Miskolc , Rózsa út 180.', '0df4aaa0'),
(6, 'Harmati', 'József', '', 'HJ9ce', 'HarmatiJózsef86@nomail.com', '+3610116114427', 'Tata , Halász utca 183.', '40f7441e'),
(7, 'Szűcs', 'Atala', 'Zsuzsa', 'SXdfc', 'SzűcsAtala89@nomail.com', '+3610181189928', 'Cece , Templom út 99.', '74ccfe2c'),
(8, 'Harmati', 'Zsuzsa', '', 'HZ04e', 'HarmatiZsuzsa184@nomail.com', '+3610187116364', 'Kocs , Gyár tér 27.', '9ef54fd9'),
(9, 'Erdősi', 'Zsófia', '', 'EZcdd', 'ErdősiZsófia654@nomail.com', '+3610192262137', 'Zalacsány , Kerekes út 88.', '29ed7f31'),
(10, 'Gyarmati', 'Julianna', '', 'GJ7eb', 'GyarmatiJulianna719@nomail.com', '+3610199991198', 'Kocs , Szegfű út 146.', '5b1813b4'),
(11, 'Komáromi', 'Ernő', '', 'KX80e', 'KomáromiErnő630@nomail.com', '+3610123169383', 'Baja , Gyár köz 115.', '3bf932d3'),
(12, 'Szűcs', 'Magdolna', 'Mónika', 'SMM35e', 'SzűcsMagdolna996@nomail.com', '+3610115873625', 'Tét , Fürdő út 56.', '3b809b2c'),
(13, 'Pesti', 'Géza', '', 'PG749', 'PestiGéza90@nomail.com', '+3610119859977', 'Üllő , Malom dűlő 114.', '1e9a3964'),
(14, 'Németh', 'Mária', 'Zsuzsa', 'NZMd72', 'NémethMária463@nomail.com', '+3610111679115', 'Alsómocsolád , Múzeum út 2.', 'b53996f3'),
(15, 'Teleki', 'Zsófia', 'Tamara', 'TTZ56b', 'TelekiZsófia43@nomail.com', '+3610178815147', 'Baja , Kerekes dűlő 186.', '746abb70'),
(16, 'Teleki', 'Piroska', 'Tamara', 'TTPafd', 'TelekiPiroska825@nomail.com', '+3610189138693', 'Siófok , Szekeres tér 87.', '79d1717e'),
(17, 'Szalai', 'Marianna', '', 'SM7e8', 'SzalaiMarianna997@nomail.com', '+3610118748131', 'Jánoshalma , Molnár dűlő 144.', '0baa8390'),
(18, 'Harmati', 'Lajos', '', 'HL27b', 'HarmatiLajos510@nomail.com', '+3610176624171', 'Debrecen , Szekeres tér 93.', '0af7b8f3'),
(19, 'Máriássy', 'Helga', '', 'MHec4', 'MáriássyHelga558@nomail.com', '+3610156876271', 'Gyula , Kerekes tér 154.', '49bf2c54'),
(20, 'Kovács', 'Ernő', '', 'KX110', 'KovácsErnő261@nomail.com', '+3610154519146', 'Bajna , Rét út 153.', '0bccdc11'),
(21, 'Rózsa', 'Erzsébet', 'Magdolna', 'RX351', 'RózsaErzsébet630@nomail.com', '+3610111916922', 'Ököritófülpös , Virágos tér 164.', 'a07fa8a1'),
(22, 'Komáromi', 'Magdolna', '', 'KMed2', 'KomáromiMagdolna366@nomail.com', '+3610146157173', 'Tét , Virágos utca 1.', '729f9cbf'),
(23, 'Palotai', 'Magdolna', 'Márta', 'PMM5e1', 'PalotaiMagdolna941@nomail.com', '+3610124535114', 'Ököritófülpös , Halász tér 107.', 'd0d25b78'),
(24, 'Harcsa', 'Zsuzsa', 'Márta', 'HMZ8e8', 'HarcsaZsuzsa608@nomail.com', '+3610184514112', 'Vityapuszta , Szegfű köz 95.', 'fbc607fa'),
(25, 'Kenéz', 'Tibor', '', 'KTe5d', 'KenézTibor218@nomail.com', '+3610148914715', 'Nyúl , Rózsa utca 121.', '9922ef0f'),
(26, 'Pesti', 'Magdolna', 'Éva', 'PÉMf9c', 'PestiMagdolna264@nomail.com', '+3610191161521', 'Gönyü , Szép utca 118.', '2e59feb5'),
(27, 'Zöld', 'Antal', 'Géza', 'ZXb7f', 'ZöldAntal668@nomail.com', '+3610118563489', 'Vityapuszta , Madár út 118.', '1963070d'),
(28, 'Máriássy', 'Éva', 'Márta', 'MX847', 'MáriássyÉva547@nomail.com', '+3610169632887', 'Szeged , Szép út 171.', 'cd093f03'),
(29, 'Lápi', 'Lajos', 'Ernő', 'LELc9d', 'LápiLajos731@nomail.com', '+3610122473972', 'Vityapuszta , Madár út 175.', '7eddaba3'),
(30, 'Németh', 'Sándor', '', 'NScd4', 'NémethSándor13@nomail.com', '+3610113471212', 'Tarján , Molnár út 113.', 'c5703c83'),
(31, 'Papp', 'Antal', 'Attila', 'PX422', 'PappAntal872@nomail.com', '+3610149934111', 'Gönyü , Múzeum dűlő 88.', 'ec55474a'),
(32, 'Gyarmati', 'Lajos', 'Sándor', 'GSLa93', 'GyarmatiLajos322@nomail.com', '+3610139256896', 'Debrecen , Fürdő út 36.', '82ea3e18'),
(33, 'Kenéz', 'Helga', 'Atala', 'KAH820', 'KenézHelga992@nomail.com', '+3610146482186', 'Tét , Kerekes tér 143.', '395626d5'),
(34, 'Németh', 'Zoltán', '', 'NZ663', 'NémethZoltán996@nomail.com', '+3610114641243', 'Zalacsány , Malom utca 29.', '2e406d39'),
(35, 'Gyarmati', 'Atala', 'Zsuzsa', 'GX07b', 'GyarmatiAtala4@nomail.com', '+3610133754663', 'Héreg , Fő tér 56.', 'e5b3c37e'),
(36, 'Nagy', 'Sándor', 'Zoltán', 'NZS383', 'NagySándor32@nomail.com', '+3610124852589', 'Siófok , Rét tér 196.', 'e0740f25'),
(37, 'Péter', 'Helga', '', 'PHc65', 'PéterHelga147@nomail.com', '+3610122998961', 'Gönyü , Gólya dűlő 87.', 'b250b3c0'),
(38, 'Horváth', 'Helga', 'Márta', 'HMH3a0', 'HorváthHelga641@nomail.com', '+3610141437135', 'Zalacsány , Jegenye dűlő 105.', '289d5059'),
(39, 'Horváth', 'Zsuzsa', 'Magdolna', 'HMZ808', 'HorváthZsuzsa765@nomail.com', '+3610133188299', 'Pápa , Róka utca 170.', '0bc22fdf'),
(40, 'Péter', 'Zsuzsa', 'Atala', 'PAZ21e', 'PéterZsuzsa900@nomail.com', '+3610144631393', 'Bajna , Kovács utca 139.', '3ccf4575'),
(41, 'Erdősi', 'Ilona', 'Éva', 'EÉIdb7', 'ErdősiIlona207@nomail.com', '+3610123587172', 'Kocs , Gesztenye köz 58.', 'd6c66ae2'),
(42, 'Sári', 'Piroska', 'Tamara', 'STP4f4', 'SáriPiroska335@nomail.com', '+3610184144184', 'Kocs , Fürdő tér 184.', '0fe149fc'),
(43, 'Erdősi', 'Sándor', 'Attila', 'EAS7ac', 'ErdősiSándor53@nomail.com', '+3610149459717', 'Debrecen , Rét köz 93.', 'cfc1d900'),
(44, 'Máriássy', 'Mária', 'Magdolna', 'MMMa2a', 'MáriássyMária262@nomail.com', '+3610195165987', 'Baj , Iskola út 66.', '478ceb6d'),
(45, 'Horváth', 'Zoltán', 'Antal', 'HAZf6c', 'HorváthZoltán149@nomail.com', '+3610127451817', 'Bajna , Molnár dűlő 74.', '5df7d962'),
(59, 'Laci', 'Maci', '', 'bubu', 'bbbb@bbb.bbb', '6767676676', 'Yellingstone Park', '098eb8ba2cc924fad0ec05acd869a4eb'),
(61, 'hhh', 'Maci', '', 'admin', 'kkk@kkk', '6767676676', 'admin', 'e64b78fc3bc91bcbc7dc232ba8ec59e0'),
(62, 'hhh', 'hhh', 'hhh', 'hhh', 'kkk@kkk', '7', 'kkk@kkk', 'a3aca2964e72000eea4c56cb341002a4'),
(63, 'hhh', 'hhh', 'hhh', 'hhh', 'hhh@hhh', '6767676676', 'hhh', 'a3aca2964e72000eea4c56cb341002a4'),
(64, 'rrr', 'rrr', 'rrr', 'rrr', 'kkk@kkk', '6767676676', 'rrr', '44f437ced647ec3f40fa0841041871cd'),
(65, 'sss', 'sss', '', 'sss', 'kkk@kkk', '6767676676', 'sss', '9f6e6800cfae7749eb6c486619254b9c'),
(66, 'zzz', 'zzz', 'zzz', 'zzz', 'kkk@kkk', 'zzz', 'zzz', 'f3abb86bd34cf4d52698f14c0da1dc60'),
(74, 'ccc+', 'ccc', '', 'ccc', 'kkk@kkk', '6767676676', 'ccc', '9df62e693988eb4e1e1444ece0578579'),
(79, 'Eee', 'eee', '', 'eee', 'kkk@kkk', '6767676676', 'eee', 'd2f2297d6e829cd3493aa7de4416a18f'),
(80, 'zzz', 'zzz', '', 'zzz', 'kkk@kkk', '6767676676', 'zzz', 'f3abb86bd34cf4d52698f14c0da1dc60'),
(84, 'Gggg', 'gggg', '', 'gggg', 'kkk@kkk', 'gggg', 'gggg', 'c1ebb4933e06ce5617483f665e26627c'),
(93, 'Kmmmm', 'mmm', '', 'mmm', 'kkk@kkk', 'mmm', 'mmm', '4786f3282f04de5b5c7317c490c6d922'),
(94, 'Lllllll', 'lll', '', 'lll', 'kkk@kkk', 'lll', 'lll', '4786f3282f04de5b5c7317c490c6d922'),
(95, 'Kkkkkkk', 'kkk', '', 'kkk', 'kkk@kkk.kkk', 'kkk', 'kkk', '08f8e0260c64418510cefb2b06eee5cd'),
(96, 'Kggg', 'Lmggg', 'fgfgf', 'Lggg', 'ggg@ggg', '6767676676gg', 'ggg', '4786f3282f04de5b5c7317c490c6d922'),
(97, 'Lccc', 'Lccc', 'mmmK', 'hhh', 'kkk@kkk', '6767676676', 'mmm', '9df62e693988eb4e1e1444ece0578579'),
(98, 'Erdg', 'Macia', 'Mmmm', 'bbb', 'kkk@kkk', '6767676676', 'bbb', '4786f3282f04de5b5c7317c490c6d922'),
(99, 'Krrrbb', 'Maci', 'Kmmm', 'xxx', 'kkk@kkk', '6767676676', 'xxx', 'e0323a9039add2978bf5b49550572c7c'),
(100, 'Éjjj', 'Maci', 'Olll', 'jjj', 'kkk@kkk.kkk', 'jjj', 'nnn', '5b54c0a045f179bcbbbc9abcb8b5cd4c'),
(101, 'Állll', 'Maci', '', 'lll', 'kkk@kkk', 'lll', 'lll', 'bf083d4ab960620b645557217dd59a49'),
(102, 'Álll', 'Maci', '', 'mmm', 'kkk@kkk', 'mmm', 'mmm', 'dc468c70fb574ebd07287b38d0d0676d'),
(103, 'Álllá', 'Maci', '', 'mmm', 'kkk@kkk.kkk', 'kk', 'kk', 'dc468c70fb574ebd07287b38d0d0676d'),
(104, 'Ááááá', 'Maci', '', 'mmm', 'kkk@kkk', '6767676676', 'mmm', '6f8f57715090da2632453988d9a1501b'),
(105, 'Kmmm', 'Kmmm', '', 'mmm', 'kkk@kkk', '6767676676', 'mmm', '6f8f57715090da2632453988d9a1501b'),
(106, 'Llll', 'Maci', '', 'l', 'kkk@kkk', 'l', 'l', '363b122c528f54df4a0446b6bab05515'),
(107, 'Áááá', 'Pnnn', '', 'mmm', 'kkk@kkk.kkk', 'k', 'k', '83878c91171338902e0fe0fb97a8c47a'),
(108, 'Ááááá', 'Őőőő', '', 'lll', 'kkk@kkk', 'lll', 'lll', 'bf083d4ab960620b645557217dd59a49'),
(109, 'Ááááá', 'Pőőő', '', 'lll', 'kkk@kkk', 'lll', 'lll', '8ce4b16b22b58894aa86c421e8759df3'),
(110, 'Laci', 'Maci', '', 'mmm', 'kkk@kkk', '6767676676', 'mmm', 'c4efd5020cb49b9d3257ffa0fbccc0ae'),
(111, 'Laci', 'Maci', '', 'mmm', 'kkk@kkk', '6767676676', 'mmm', 'e47ca7a09cf6781e29634502345930a7'),
(112, 'Laci', 'Maci', '', 'hhh', 'kkk@kkk', '6767676676', 'm', '6f8f57715090da2632453988d9a1501b'),
(113, 'Laci', 'Maci', '', 'hhh', 'kkk@k', '6767676676', 'm', '6f8f57715090da2632453988d9a1501b'),
(114, 'Laci', 'Maci', '', 'hhh', 'kkk@k', '6767676676', 'm', '6f8f57715090da2632453988d9a1501b'),
(115, 'Laci', 'Maci', '', 'hhh', 'kkk@k', '6767676676', 'm', '6f8f57715090da2632453988d9a1501b'),
(116, 'Laci', 'Maci', '', 'hhh', 'kkk@kkk', '6767676676', 'm', '6f8f57715090da2632453988d9a1501b'),
(117, 'Laci', 'Maci', '', 'hhh', 'kkk@kkk', '6767676676', 'm', '6f8f57715090da2632453988d9a1501b'),
(118, 'Laci', 'Maci', '', 'hhh', 'm@m', 'm', 'm', '6f8f57715090da2632453988d9a1501b'),
(119, 'Laci', 'Maci', '', 'hhh', 'm@m', 'm', 'm', '6f8f57715090da2632453988d9a1501b'),
(120, 'Laci', 'Maci', '', 'hhh', 'm@m', 'm', 'm', '7b8b965ad4bca0e41ab51de7b31363a1'),
(121, 'Laci', 'Maci', '', 'hhh', 'm@m', 'm', 'm', '6f8f57715090da2632453988d9a1501b'),
(122, 'Laci', 'Maci', '', 'hhh', 'm@m', 'm', 'm', '6f8f57715090da2632453988d9a1501b'),
(123, 'Laci', 'Maci', '', 'hhh', 'm@m.m', 'm', 'm', '6f8f57715090da2632453988d9a1501b'),
(124, 'Laci', 'Maci', '', 'hhh', 'm@m.m', 'm', 'm', '6f8f57715090da2632453988d9a1501b'),
(125, 'Laci', 'Maci', '', 'hhh', 'm@m.m', '1234567890', 'm', '6f8f57715090da2632453988d9a1501b'),
(126, 'Laci', 'Maci', '', 'hhh', 'm@m.m', '+12-345-6789', 'm', '6f8f57715090da2632453988d9a1501b'),
(127, 'Laci', 'Maci', '', 'hhh', 'm@m.m', '+12-345-6789', 'm', '6f8f57715090da2632453988d9a1501b'),
(128, 'Laci', 'Maci', '', 'hhh', 'm@m.m', '+12 345 6789', 'm', '6f8f57715090da2632453988d9a1501b'),
(129, 'Laci', 'Maci', '', 'hhh', 'm@m.m', '+12 345 6789 777', 'm', '6f8f57715090da2632453988d9a1501b'),
(130, 'Laci', 'Maci', '', 'hhh', 'm@m.m', '+12 345 6789 777', 'm', '6f8f57715090da2632453988d9a1501b'),
(131, 'Laci', 'Maci', '', 'hhh', 'm@m.m', '+1 345 6789 777', 'm', '92eb5ffee6ae2fec3ad71c777531578f'),
(132, 'Laci', 'Maci', '', 'hhh', 'm@m.m', '+1 345 6789 777', 'm', '6f8f57715090da2632453988d9a1501b'),
(133, 'Laci', 'Maci', '', 'hhh', 'm@m.m', '+12 345 6789 777', 'm', '6f8f57715090da2632453988d9a1501b'),
(134, 'Laci', 'Maci', '', 'hhh', 'm@m.m', '+12 345 6789', 'm', '92eb5ffee6ae2fec3ad71c777531578f'),
(135, 'Laci', 'Maci', '', 'hhh', 'm@m.m', '+12 345 6789', 'm', '7b8b965ad4bca0e41ab51de7b31363a1'),
(136, 'Laci', 'Maci', '', 'hhh', 'm@m.m', '+12 34k 6789', 'm', '6f8f57715090da2632453988d9a1501b'),
(137, 'Laci', 'Maci', '', 'hhh', 'm@m.m', '+12 34000 6789', 'm', '6f8f57715090da2632453988d9a1501b'),
(138, 'Laci', 'Maci', '', 'hhh', 'm@m.m', '+12 34000 6789', 'm', '6f8f57715090da2632453988d9a1501b'),
(139, 'Laci', 'Maci', '', 'bubu', 'kkk@kkk', '6767676676', 'm', '6f8f57715090da2632453988d9a1501b'),
(140, 'Laci', 'Maci', '', 'bubu', 'kkk@kkk', '6767676676', 'jjjjj', '2af54305f183778d87de0c70c591fae4'),
(141, NULL, NULL, NULL, 'bbb', 'bbb@bbb.bbb', NULL, NULL, 'bbb'),
(142, 'Laci', NULL, NULL, 'bbb', 'kkk@kkk', NULL, NULL, '6f8f57715090da2632453988d9a1501b'),
(143, '', '', '', 'ppp', '', '6767676676', 'ppp', 'd41d8cd98f00b204e9800998ecf8427e'),
(144, '', 'ppp', '', 'ppp', '', '6767676676', 'ppp', 'd41d8cd98f00b204e9800998ecf8427e'),
(145, '', 'ppp', '', 'ppp', '', '6767676676', 'ppp', 'f27f6f1c7c5cbf4e3e192e0a47b85300'),
(146, '', 'ppp', '', 'ppp', '', '6767676676', 'ppp', 'f27f6f1c7c5cbf4e3e192e0a47b85300'),
(147, 'ppp', 'ppp', '', 'ppp', 'kkk@kkk', '6767676676', 'ppp', 'f27f6f1c7c5cbf4e3e192e0a47b85300'),
(148, 'ppp', 'ppp', '', 'ppp', 'kkk@kkk', 'ppp', 'ppp', 'f27f6f1c7c5cbf4e3e192e0a47b85300'),
(149, 'jojo', 'jojo', '', 'jojo', 'kkk@kkk', '6767676676', 'jojo', '7510d498f23f5815d3376ea7bad64e29');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `allergie`
--
ALTER TABLE `allergie`
  ADD PRIMARY KEY (`allergie_id`);

--
-- A tábla indexei `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- A tábla indexei `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- A tábla indexei `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`ingredient_id`);

--
-- A tábla indexei `measure_unit`
--
ALTER TABLE `measure_unit`
  ADD PRIMARY KEY (`measure_unit_id`);

--
-- A tábla indexei `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`recipe_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `allergie`
--
ALTER TABLE `allergie`
  MODIFY `allergie_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT a táblához `category`
--
ALTER TABLE `category`
  MODIFY `category_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `ingredient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT a táblához `measure_unit`
--
ALTER TABLE `measure_unit`
  MODIFY `measure_unit_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `recipe`
--
ALTER TABLE `recipe`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
