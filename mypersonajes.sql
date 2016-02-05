-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Фев 02 2016 г., 23:46
-- Версия сервера: 5.5.25
-- Версия PHP: 5.2.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `mypersonajes`
--
CREATE DATABASE IF NOT EXISTS `mypersonajes` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mypersonajes`;
-- --------------------------------------------------------

--
-- Структура таблицы `battleargue`
--

CREATE TABLE IF NOT EXISTS `battleargue` (
  `battleargue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `argument` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `race_id` int(10) unsigned NOT NULL,
  `level` int(3) unsigned NOT NULL,
  PRIMARY KEY (`battleargue_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=62 ;

--
-- Дамп данных таблицы `battleargue`
--

INSERT INTO `battleargue` (`battleargue_id`, `argument`, `race_id`, `level`) VALUES
(1, 'I''M TOO BEAUTIFUL TO DIE!', 1, 1),
(2, 'YOU HIT LIKE A GIRL!', 1, 2),
(3, 'NOW I''M ANGRY!', 1, 3),
(4, 'CAREFULL WITH THE BEARD!', 1, 4),
(5, 'MY GRANDMA FIGHTS BETTER', 1, 5),
(6, 'THAT''S ALL YOU''VE GOT', 1, 6),
(7, 'BRING IT ON!', 1, 7),
(8, 'NOW YOU''LL GET IT!', 1, 8),
(9, 'YOU''LL NEVER MEET A SOBER DWARF!', 1, 9),
(10, 'MERCY!', 2, 1),
(11, 'FRESH MEAT!', 2, 2),
(12, 'I''M GONNA CUT YOUR HEAD OFF!', 2, 3),
(13, 'FOR MORDOR!', 2, 4),
(14, 'I''LL ROAST YOU FOR DINNER!', 2, 5),
(15, 'I''LL CRASH YOUR HEAD!', 2, 6),
(16, 'BURN THEM DOWN!', 2, 7),
(17, 'I''M GONNA DRINK YOUR BLOOD!', 2, 8),
(18, 'A-HA-HA-HA-HHHR!', 2, 9),
(19, 'TIME FOR A LITTLE BUTCHERY!', 2, 10),
(20, 'PREPARE TO DIE!', 2, 11),
(21, 'SAURON ALWAYS WINS!', 2, 12),
(22, 'YOU WON''T TAKE MA ALIVE!', 3, 1),
(23, 'I WON''T SURRENDER!', 3, 2),
(24, 'WITH FIRE AND SWORD!', 3, 3),
(25, 'YOU FIGHT LIKE A GOBLIN!', 3, 4),
(26, 'YOU''LL PAY FOR THIS!', 3, 5),
(27, 'ON YOUR KNEES, YOU PEASANT!', 3, 6),
(28, 'THAT''S ALL YOU''VE GOT!', 3, 7),
(29, 'FOR FAITH AND GLORY!', 3, 8),
(30, 'I''M GONNA KICK YOUR ASS!', 3, 9),
(31, 'FOR THE KING!', 3, 10),
(32, 'YOU WON''T STAND!', 3, 11),
(33, 'SURRENDER WHILE YOU CAN!', 3, 12),
(34, 'FOR THE FAITH!', 3, 13),
(37, 'I''M TOO OLD FOR THIS!', 5, 1),
(38, 'THIS IS YOUR LAST CHANCE!', 5, 2),
(39, 'MY GRANDMA FIGHTS BETTER', 5, 3),
(40, 'BEHOLD MY MAGIC!', 5, 4),
(41, 'YOU SHALL NOT PASS!', 5, 5),
(42, 'YOU SHOULD BETTER RUN!', 5, 6),
(43, 'NOW YOU''LL SEE SOME MAGIC!', 5, 7),
(44, 'MY KUNG-FU IS STRONGER THAN YOURS!', 5, 8),
(45, 'RUN, YOU FOUL!', 5, 9),
(46, 'IT''S MAGIC TIME!', 5, 10),
(47, 'TODAY JUST IS NOT MY DAY!', 4, 1),
(48, 'THIS IS YOUR LAST CHANCE TO RUN AWAY!', 4, 2),
(49, 'FOR THE ELVEN KING!', 4, 3),
(50, 'TAKE THAT, ELVEN HATER!', 4, 4),
(51, 'LET THE ARROWS FLY!', 4, 5),
(52, 'YOU STINK LIKE A DRUNK DWARF!', 4, 6),
(53, 'CATCH MY ARROWS!', 4, 7),
(54, 'YOU PASSED THE DEADLY LINE', 4, 8),
(55, 'YOU HAVE NO CHANCE!', 4, 9),
(56, 'YOU ARE UGLIER THAN GOBLIN!', 4, 10),
(57, 'THIS IS WHAT DWARFS ARE MADE FOR!', 1, 0),
(58, 'TASTE THE ELVEN ARROW!', 4, 0),
(59, 'ORCS WILL CONQUER EVERYONE!', 2, 0),
(60, 'TASTE MY SWORD!', 3, 0),
(61, 'MY MAGIC IS UNRIVALED!', 5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `personajes`
--

CREATE TABLE IF NOT EXISTS `personajes` (
  `personaj_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `race_id` int(10) unsigned NOT NULL,
  `weapon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `health` int(3) NOT NULL,
  `damage` int(3) NOT NULL,
  `shield` int(3) NOT NULL,
  PRIMARY KEY (`personaj_id`),
  KEY `race_id` (`race_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=41 ;

--
-- Дамп данных таблицы `personajes`
--

INSERT INTO `personajes` (`personaj_id`, `name`, `race_id`, `weapon`, `health`, `damage`, `shield`) VALUES
(5, 'Gimli', 1, 'sekira', 120, 12, 3),
(7, 'Azog', 2, 'axe', 150, 12, 3),
(8, 'Boromir', 3, 'sword', 110, 12, 6),
(9, 'Legolas', 4, 'bow', 100, 13, 2),
(10, 'Torin', 1, 'sword', 120, 11, 3),
(13, 'Golum', 2, 'rock', 50, 5, 1),
(14, 'Lurtz', 2, 'jatagan', 130, 12, 2),
(21, 'Faromir', 3, 'bow', 100, 13, 2),
(22, 'Aragorn', 3, 'sword', 120, 12, 3),
(23, 'Gendalf', 5, 'magic stick', 100, 20, 2),
(24, 'Dwalin', 1, 'axe', 130, 11, 3),
(25, 'Bilbo', 3, 'sting', 60, 7, 2),
(26, 'Balin', 1, 'axe', 80, 10, 2),
(27, 'Tranduil', 4, 'sword', 130, 12, 5),
(30, 'Saruman', 5, 'magic stick', 100, 18, 2),
(31, 'Tory', 1, 'axe', 90, 11, 2),
(32, 'Johny', 2, 'axe', 99, 10, 2),
(33, 'Mambo', 3, 'palka', -7, 3, 1),
(34, 'Mambo', 3, 'palka', -10, 3, 1),
(35, 'fdgsgd', 1, 'sffdsg', 101, 12, 2),
(36, 'hdhdf', 1, 'dfghd', 0, 3, 1),
(37, 'hdhdf', 1, 'dfghd', 0, 3, 1),
(38, 'cookie', 3, 'asdsfa', 2, 3, 1),
(39, 'cookie', 3, 'asdsfa', 0, 3, 1),
(40, 'cookie', 3, 'asdsfa', 0, 3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `races`
--

CREATE TABLE IF NOT EXISTS `races` (
  `race_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `race` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`race_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `races`
--

INSERT INTO `races` (`race_id`, `race`) VALUES
(1, 'dwarf'),
(2, 'orc'),
(3, 'human'),
(4, 'elf'),
(5, 'wizard');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `personajes`
--
ALTER TABLE `personajes`
  ADD CONSTRAINT `personajes_ibfk_1` FOREIGN KEY (`race_id`) REFERENCES `races` (`race_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
