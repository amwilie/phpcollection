-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 28, 2012 at 10:46 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mycollection`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE IF NOT EXISTS `author` (
  `authorID` int(3) NOT NULL AUTO_INCREMENT,
  `authorName` varchar(50) NOT NULL,
  PRIMARY KEY (`authorID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`authorID`, `authorName`) VALUES
(1, 'Stacia Deutsch'),
(2, 'Mike Tucker'),
(3, 'Yuki Amemiya'),
(4, 'Yana Toboso'),
(5, 'Tite Kubo'),
(6, 'Homerun Ken'),
(7, 'Majiko!'),
(8, 'Atsuro Yomino'),
(9, 'Katsura Hoshino'),
(10, 'Tsugumi Ohba'),
(11, 'Ryukishi07'),
(12, 'Yumi Holta'),
(13, 'Yoshihiro Togashi'),
(14, 'Tomo Takabayashi'),
(15, 'Yun Kouga'),
(16, 'Matsuri Hino'),
(17, 'Yuhki Kamatani'),
(18, 'Yuki Midorikawa'),
(19, 'Yoshinobou Akita'),
(20, 'Toui Hasumi'),
(21, 'Aya Kanno'),
(22, 'Jun Mochizuki'),
(23, 'Koji Kumeta'),
(24, 'Kazuko Higashiyama'),
(25, 'Clamp'),
(26, 'Hideyuki Kikuchi'),
(27, 'Peach-Pit'),
(33, 'Kazuya Minekura'),
(32, 'Shingiku Nakamura'),
(34, 'Molly Mitchell'),
(35, 'John Barrowman'),
(36, 'Neil Gaiman'),
(37, 'E. B. White'),
(38, 'Patricia McCormick'),
(39, 'Mitch Albom'),
(40, 'Garth Nix'),
(41, 'Alexandre Dumas'),
(42, 'Madeleine L''engle'),
(43, 'Stephen Chbosky'),
(44, 'Perry Moore'),
(45, 'J.R.R Tolkien'),
(46, 'Neal Shusterman'),
(47, 'Patrick Mcneil'),
(48, 'Shin-ya Goikeda'),
(49, 'Rich Thomas'),
(50, 'Justin Richards'),
(51, 'Tom Spilsbury'),
(52, 'Stephen Cole'),
(53, 'Mark Morris'),
(54, 'Gareth Roberts'),
(55, 'Lance Parkin'),
(56, 'Gary Russell'),
(57, 'Colin Brake'),
(58, 'Tony Lee'),
(59, 'Cris Ramsay'),
(60, 'William Rabkin'),
(61, 'Guy Adams'),
(62, 'Andy Lane'),
(63, 'Jeff Mariotte'),
(64, 'Joe Schreiber'),
(65, 'Rebecca Dessertine');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `catID` int(3) NOT NULL AUTO_INCREMENT,
  `catName` varchar(25) NOT NULL,
  PRIMARY KEY (`catID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`catID`, `catName`) VALUES
(1, 'Anime/Manga'),
(2, 'Television'),
(3, 'Books/Movies'),
(9, 'Music'),
(8, 'Actors'),
(7, 'Games'),
(6, 'Superheroes'),
(14, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE IF NOT EXISTS `genre` (
  `genreID` int(3) NOT NULL AUTO_INCREMENT,
  `genreName` varchar(50) NOT NULL,
  PRIMARY KEY (`genreID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `genre`
--


-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `itemID` int(3) NOT NULL AUTO_INCREMENT,
  `seriesID` int(3) DEFAULT NULL,
  `itemName` varchar(150) NOT NULL,
  `typeID` int(3) NOT NULL,
  `authorID` int(3) DEFAULT NULL,
  `pubID` int(3) DEFAULT NULL,
  `manID` int(3) DEFAULT NULL,
  PRIMARY KEY (`itemID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=384 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemID`, `seriesID`, `itemName`, `typeID`, `authorID`, `pubID`, `manID`) VALUES
(1, 1, 'Volume 01', 1, 21, 11, 0),
(2, 1, 'Volume 02', 1, 21, 11, 0),
(3, 1, 'Volume 03', 1, 21, 11, 0),
(4, 1, 'Volume 04', 1, 21, 11, 0),
(5, 1, 'Volume 05', 1, 21, 11, 0),
(6, 2, 'Volume 01', 1, 32, 9, 0),
(7, 2, 'Volume 02', 1, 32, 9, 0),
(8, 2, 'Volume 03', 1, 32, 9, 0),
(9, 2, 'Volume 04', 1, 32, 9, 0),
(10, 2, 'Volume 05', 1, 32, 9, 0),
(11, 2, 'Volume 06', 1, 32, 9, 0),
(12, 2, 'Volume 07', 1, 32, 9, 0),
(13, 2, 'Volume 08', 1, 32, 9, 0),
(14, 2, 'Volume 09', 1, 32, 9, 0),
(15, 3, 'Volume 01, Abducted by Demons Arc, Part 01', 1, 11, 6, 0),
(16, 3, 'Volume 02, Abducted by Demons Arc, Part 02', 1, 11, 6, 0),
(17, 3, 'Volume 03, Cotton Drifting Arc, Part 01', 1, 11, 6, 0),
(18, 3, 'Volume 04, Cotton Drifting Arc, Part 02', 1, 11, 6, 0),
(19, 3, 'Volume 05, Curse Killing Arc, Part 01', 1, 11, 6, 0),
(20, 3, 'Volume 06, Curse Killing Arc, Part 02', 1, 11, 6, 0),
(21, 4, 'Volume 01', 1, 14, 10, 0),
(22, 4, 'Volume 02', 1, 14, 10, 0),
(23, 4, 'Volume 03', 1, 14, 10, 0),
(24, 4, 'Volume 04', 1, 14, 10, 0),
(25, 5, 'Volume 01', 1, 3, 5, 0),
(26, 5, 'Volume 02', 1, 3, 5, 0),
(27, 5, 'Volume 03', 1, 3, 5, 0),
(28, 6, 'Volume 01', 1, 4, 6, 0),
(29, 6, 'Volume 02', 1, 4, 6, 0),
(30, 6, 'Volume 03', 1, 4, 6, 0),
(31, 7, 'Volume 01', 1, 17, 6, 0),
(32, 7, 'Volume 02', 1, 17, 6, 0),
(33, 8, 'Volume 01', 1, 18, 12, 0),
(34, 14, 'A Mind is a Terrible Thing to Read', 2, 60, 38, 0),
(35, 13, 'Substitution Method', 2, 59, 37, 0),
(36, 9, 'The Nightmare of Black Island', 2, 2, 4, NULL),
(37, 9, 'The Price of Paradise', 2, 57, 4, 0),
(38, 9, 'Only Human', 2, 54, 4, 0),
(39, 9, 'The Eyeless', 2, 55, 4, 0),
(40, 9, 'Feast of the Drowned', 2, 52, 4, 0),
(41, 9, 'Ghosts of India', 2, 53, 4, 0),
(42, 10, 'The House That Jack Built', 2, 61, 4, 0),
(43, 10, 'Slow Decay', 2, 62, 4, 0),
(44, 11, 'Witch''s Canyon', 2, 63, 1, 0),
(45, 11, 'The Unholy Cause', 2, 64, 39, 0),
(46, 12, 'A Wrinkle in Time', 2, 42, 26, 0),
(47, 12, 'A Wind in the Door', 2, 42, 26, 0),
(48, 12, 'A Swiftly Tilting Planet', 2, 42, 26, 0),
(49, 12, 'An Acceptable Time', 2, 42, 26, 0),
(50, 12, 'Many Waters', 2, 42, 26, 0),
(51, 73, 'The Perks of Being a Wallflower', 2, 43, 27, 0),
(52, 74, 'Hero', 2, 44, 25, 0),
(53, 15, 'Volume 01', 4, 0, 0, 6),
(54, 16, 'The Second Raid Complete Season', 3, 0, 0, 6),
(55, 75, 'Atonement', 4, 0, 0, 19),
(56, 72, 'Alice in Wonderland', 4, 0, 0, 2),
(57, 17, 'Complete Series', 4, 0, 0, 6),
(58, 18, 'Season 01', 4, 0, 0, 6),
(59, 20, '2011 Issue 10, Volume 09, December', 1, NULL, NULL, NULL),
(60, 20, '2011 Issue 09, Volume 09, October/November', 1, NULL, NULL, NULL),
(61, 20, '2011 Issue 08, Volume 09, September', 1, NULL, NULL, NULL),
(62, 20, '2006 Issue 05, Volume 04, May', 1, NULL, NULL, NULL),
(63, 20, '2006 Issue 06, Volume 04, June', 1, NULL, NULL, NULL),
(64, 20, '2006 Issue 07, Volume 04, July', 1, NULL, NULL, NULL),
(65, 20, '2006 Issue 08, Volume 04, August', 1, NULL, NULL, NULL),
(66, 20, '2010 Issue 08, Volume 08, August', 1, NULL, NULL, NULL),
(67, 20, '2010 Issue 05, Volume 08, May', 1, NULL, NULL, NULL),
(68, 20, '2010 Issue 06, Volume 08, June', 1, NULL, NULL, NULL),
(69, 20, '2010 Issue 03, Voume 08, March', 1, NULL, NULL, NULL),
(70, 20, '2010 Issue 04, Volume 08, April', 1, NULL, NULL, NULL),
(71, 20, '2011 Issue 05, Volume 09, May', 1, NULL, NULL, NULL),
(72, 20, '2011 Issue 06, Volume 09, June/July', 1, NULL, NULL, NULL),
(73, 20, '2011 Issue 07, Volume 09, August', 1, NULL, NULL, NULL),
(74, 20, '2010 Issue 02, Volume 08, February', 1, NULL, NULL, NULL),
(75, 20, '2010 Issue 10, Volume 08, October', 1, NULL, NULL, NULL),
(76, 20, '2010 Issue 11, Volume 08, November', 1, NULL, NULL, NULL),
(77, 20, '2010 Issue 12, Volume 08, December', 1, NULL, NULL, NULL),
(78, 20, '2011 Issue 01, Volume 09, January', 1, NULL, NULL, NULL),
(79, 20, '2011 Issue 02, Volume 09, February', 1, NULL, NULL, NULL),
(80, 20, '2006 Issue 09, Volume 04, September', 1, NULL, NULL, NULL),
(81, 20, '2006 Issue 10, Volume 04, October', 1, NULL, NULL, NULL),
(82, 20, '2006 Issue 11, Volume 04, November', 1, NULL, NULL, NULL),
(83, 20, '2006 Issue 02, Volume 04, February', 1, NULL, NULL, NULL),
(84, 20, '2006 Issue 04, Volume 04, April', 1, NULL, NULL, NULL),
(85, 20, '2008 Issue 09, Volume 06, September', 1, NULL, NULL, NULL),
(86, 20, '2008 Issue 08, Volume 06, August', 1, NULL, NULL, NULL),
(87, 20, '2008 Issue 07, Volume 06, July', 1, NULL, NULL, NULL),
(88, 20, '2008 Issue 06, Volume 06, June', 1, NULL, NULL, NULL),
(89, 20, '2008 Issue 05, Volume 06, May', 1, NULL, NULL, NULL),
(90, 20, '2008 Issue 04, Volume 06, April', 1, NULL, NULL, NULL),
(91, 20, '2009 Issue 06, Volume 07, June', 1, NULL, NULL, NULL),
(92, 20, '2009 Issue 05, Volume 07, May', 1, NULL, NULL, NULL),
(93, 20, '2009 Issue 04, Volume 07, April', 1, NULL, NULL, NULL),
(94, 20, '2009 Issue 03, Volume 07, March', 1, NULL, NULL, NULL),
(95, 20, '2009 Issue 02, Volume 07, February', 1, NULL, NULL, NULL),
(96, 20, '2009 Issue 01, Volume 07, January', 1, NULL, NULL, NULL),
(97, 20, '2008 Issue 12, Volume 06, December', 1, NULL, NULL, NULL),
(98, 20, '2008 Issue 11, Volume 06, November', 1, NULL, NULL, NULL),
(99, 20, '2007 Issue 03, Volume 05, March', 1, NULL, NULL, NULL),
(100, 20, '2007 Issue 02, Volume 05, February', 1, NULL, NULL, NULL),
(101, 20, '2007 Issue 01, Volume 05, January', 1, NULL, NULL, NULL),
(102, 20, '2006 Issue 12, Volume 04, December', 1, NULL, NULL, NULL),
(103, 20, '2007 Issue 12, Volume 05, December', 1, NULL, NULL, NULL),
(104, 20, '2007 Issue 11, Volume 05, November', 1, NULL, NULL, NULL),
(105, 20, '2007 Issue 10, Volume 05, October', 1, NULL, NULL, NULL),
(106, 20, '2007 Issue 09, Volume 05, September', 1, NULL, NULL, NULL),
(107, 20, '2007 Issue 08, Volume 05, August', 1, NULL, NULL, NULL),
(108, 20, '2007 Issue 07, Volume 05, July', 1, NULL, NULL, NULL),
(109, 20, '2008 Issue 03, Volume 06, March', 1, NULL, NULL, NULL),
(110, 20, '2008 Issue 02, Volume 06, February', 1, NULL, NULL, NULL),
(111, 20, '2008 Issue 01, Volume 06, January', 1, NULL, NULL, NULL),
(112, 20, '2008 Issue 10, Volume 06, October', 1, NULL, NULL, NULL),
(113, 20, '2004 Issue 08, Volume 02, August', 1, NULL, NULL, NULL),
(114, 20, '2005 Issue 09, Volume 03, September', 1, NULL, NULL, NULL),
(115, 20, '2006 Issue 01, Volume 04, January', 1, NULL, NULL, NULL),
(116, 20, '2005 Issue 08, Volume 03, August', 1, NULL, NULL, NULL),
(117, 20, '2005 Issue 07, Volume 03, July', 1, NULL, NULL, NULL),
(118, 20, '2005 Issue 06, Volume 03, June', 1, NULL, NULL, NULL),
(119, 20, '2007 Issue 06, Volume 05, June', 1, NULL, NULL, NULL),
(120, 20, '2007 Issue 05, Volume 05, May', 1, NULL, NULL, NULL),
(121, 20, '2007 Issue 04, Volume 05, April', 1, NULL, NULL, NULL),
(122, 20, '2010 Issue 01, Volume 08, January', 1, NULL, NULL, NULL),
(123, 20, '2009 Issue 12, Volume 07, December', 1, NULL, NULL, NULL),
(124, 20, '2009 Issue 11, Volume 07, November', 1, NULL, NULL, NULL),
(125, 20, '2009 Issue 10, Volume 07, October', 1, NULL, NULL, NULL),
(126, 20, '2009 Issue 09, Volume 07, September', 1, NULL, NULL, NULL),
(127, 20, '2009 Issue 08, Volume 07, August', 1, NULL, NULL, NULL),
(128, 20, '2009 Issue 07, Volume 07, July', 1, NULL, NULL, NULL),
(129, 20, '2010 Issue 09, Volume 08, September', 1, NULL, NULL, NULL),
(130, 20, '2010 Issue 07, Volume 08, July', 1, NULL, NULL, NULL),
(131, 20, '2011 Issue 03, Volume 09, March', 1, NULL, NULL, NULL),
(132, 20, '2011 Issue 04, Volume 09, April', 1, NULL, NULL, NULL),
(133, 20, '2004 Issue 06, Volume 02, June', 1, NULL, NULL, NULL),
(134, 20, '2004 Issue 04, Volume 02, April', 1, NULL, NULL, NULL),
(135, 20, '2004 Issue 01, Volume 02, January', 1, NULL, NULL, NULL),
(136, 20, '2003 Issue 09, Volume 01, September', 1, NULL, NULL, NULL),
(137, 20, '2005 Issue 05, Volume 03, May', 1, NULL, NULL, NULL),
(138, 20, '2005 Issue 04, Volume 03, April', 1, NULL, NULL, NULL),
(139, 20, '2005 Issue 02, Volume 03, February', 1, NULL, NULL, NULL),
(140, 20, '2005 Issue 01, Volume 03, January', 1, 0, 0, 0),
(141, 20, '2004 Issue 12, Volume 02, December', 1, NULL, NULL, NULL),
(142, 21, 'American Gods', 2, 36, 1, 0),
(143, 22, 'The Five People You Meet in Heaven', 2, 39, 25, 0),
(144, 23, 'Mister Monday', 2, 40, 24, 0),
(145, 24, 'The Count of Monte Cristo', 2, 41, 24, 0),
(146, 25, 'Cut', 2, 38, 24, 0),
(147, 26, 'Dragons in the Waters', 2, 42, 26, 0),
(148, 27, 'Volume 02', 1, 12, 8, 0),
(149, 27, 'Volume 03', 1, 12, 8, 0),
(150, 28, 'Volume 01', 1, 13, 8, 0),
(151, 29, 'Volume 01', 1, 16, 11, 0),
(152, 29, 'Volume 02', 1, 16, 11, 0),
(153, 29, 'Volume 03', 1, 16, 11, 0),
(154, 29, 'Volume 04', 1, 16, 11, 0),
(155, 30, 'Volume 02', 1, 19, 13, 0),
(156, 31, 'Volume 01', 1, 0, 8, 0),
(157, 31, 'Volume 02', 1, 0, 8, 0),
(158, 31, 'Volume 03', 1, 0, 8, 0),
(159, 31, 'Volume 04', 1, NULL, NULL, NULL),
(160, 31, 'Volume 05', 1, NULL, NULL, NULL),
(161, 31, 'Volume 06', 1, NULL, NULL, NULL),
(162, 31, 'Volume 07', 1, NULL, NULL, NULL),
(163, 32, 'Volume 01 : Vampire Hunter D', 2, 26, 16, 0),
(164, 33, 'Volume 01', 2, 48, 10, 0),
(165, 34, 'Volume 01', 1, 23, 14, 0),
(166, 35, 'Volume 01', 1, 6, 7, 0),
(167, 36, 'Volume 01', 1, 20, 7, 0),
(168, 37, 'Volume 01', 1, 25, 15, 0),
(169, 37, 'Volume 02', 1, 25, 15, 0),
(170, 37, 'Volume 03', 1, 25, 15, 0),
(171, 37, 'Volume 04', 1, 25, 15, 0),
(172, 37, 'Volume 05', 1, 25, 15, 0),
(173, 37, 'Volume 06', 1, 25, 15, 0),
(174, 37, 'Volume 07', 1, 25, 15, 0),
(175, 38, 'Volume 01', 1, 9, 8, 0),
(176, 38, 'Volume 02', 1, 9, 8, 0),
(177, 38, 'Volume 03', 1, 9, 8, 0),
(178, 38, 'Volume 04', 1, 9, 8, 0),
(179, 38, 'Volume 05', 1, 9, 8, 0),
(180, 38, 'Volume 06', 1, 9, 8, 0),
(181, 38, 'Volume 07', 1, 9, 8, 0),
(182, 38, 'Volume 08', 1, 9, 8, 0),
(183, 38, 'Volume 09', 1, 9, 8, 0),
(184, 38, 'Volume 10', 1, 9, 8, 0),
(185, 38, 'Volume 11', 1, 9, 8, 0),
(186, 38, 'Volume 12', 1, 9, 8, 0),
(187, 38, 'Volume 13', 1, 9, 8, 0),
(188, 38, 'Volume 14', 1, 9, 8, 0),
(189, 38, 'Volume 15', 1, 9, 8, 0),
(190, 39, 'Volume 01', 4, 0, 0, 8),
(191, 39, 'Volume 02', 4, 0, 0, 8),
(192, 39, 'Volume 03', 4, 0, 0, 8),
(193, 40, 'Volume 01', 1, 15, 10, 0),
(194, 41, 'Volume 26', 1, 5, 8, 0),
(195, 42, 'Volume 01', 1, 33, 10, 0),
(196, 42, 'Volume 02', 1, 33, 10, 0),
(197, 42, 'Volume 03', 1, 33, 10, 0),
(198, 42, 'Volume 04', 1, 33, 10, 0),
(199, 42, 'Volume 05', 1, 33, 10, 0),
(200, 42, 'Volume 06', 1, 33, 10, 0),
(201, 42, 'Volume 07', 1, 33, 10, 0),
(202, 42, 'Volume 08', 1, 33, 10, 0),
(203, 42, 'Volume 09', 1, 33, 10, 0),
(204, 42, 'Volume 01 : Reload', 1, 33, 10, 0),
(205, 42, 'Volume 02 : Reload', 1, 33, 10, 0),
(206, 42, 'Volume 03 : Reload', 1, 33, 10, 0),
(207, 42, 'Volume 04 : Reload', 1, 33, 10, 0),
(208, 42, 'Volume 05 : Reload', 1, 33, 10, 0),
(209, 42, 'Volume 06 : Reload', 1, 33, 10, 0),
(210, 42, 'Volume 07 : Reload', 1, 33, 10, 0),
(211, 42, 'Volume 08 : Reload', 1, 33, 10, 0),
(212, 42, 'Volume 09 : Reload', 1, 33, 10, 0),
(213, 43, 'Volume 01', 1, 25, 15, 0),
(214, 43, 'Volume 02', 1, 25, 15, 0),
(215, 44, 'Suzaku of the Counter Attack, Volume 01', 1, 8, 3, 0),
(216, 44, 'Suzaku of the Counter Attack, Volume 02', 1, 8, 3, 0),
(217, 44, 'Lelouch of the Rebellion, Volume 01', 1, 7, 3, 0),
(218, 44, 'Lelouch of the Rebellion, Volume 02', 1, 7, 3, 0),
(219, 45, 'Volume 01', 1, 27, 6, 0),
(220, 46, 'Kingdom Hearts', 7, 0, 0, 2),
(221, 47, 'Tree of Tranquility', 8, 0, 0, 22),
(222, 48, 'Hamlet', 4, 0, 0, 20),
(223, 49, 'The Batman : Complete 4th Season', 4, 0, 0, 24),
(224, 50, 'Devil Kings', 7, 0, 0, 10),
(225, 51, 'The Aristocats', 4, 0, 0, 2),
(226, 50, 'Samurai Heroes', 8, 0, 0, 10),
(227, 52, 'Episode 01 Sneak Preview', 4, 0, 0, 12),
(228, 53, 'Spritied Away', 4, NULL, NULL, NULL),
(229, 53, 'Howl''s Moving Castle', 4, NULL, NULL, NULL),
(230, 54, 'Affections Touching Across Time', 4, 0, 0, 8),
(231, 55, 'Animatrix', 4, 0, 0, 4),
(232, 39, 'Death Note', 4, 0, 0, 8),
(233, 39, 'The Last Name', 4, 0, 0, 8),
(234, 33, 'Volume 01', 4, 0, 0, 7),
(235, 56, 'Volume 01', 4, 0, 0, 5),
(236, 57, 'Volume 04', 4, 0, 0, 5),
(237, 58, 'Volume 01', 4, 0, 0, 11),
(238, 59, '//Roots, Volume 01', 4, 0, 0, 5),
(239, 60, 'Volume 01', 4, 0, 0, 6),
(240, 60, 'Volume 02', 4, 0, 0, 6),
(241, 60, 'Volume 03', 4, 0, 0, 6),
(242, 60, 'Volume 04', 4, 0, 0, 6),
(243, 4, 'Volume 01', 4, 0, 0, 9),
(244, 4, 'Volume 02', 4, 0, 0, 9),
(245, 61, 'Volume 01', 4, 0, 0, 7),
(246, 61, 'Volume 02', 4, 0, 0, 7),
(247, 61, 'Volume 03', 4, 0, 0, 7),
(248, 39, 'Volume 01', 1, 10, 8, 0),
(249, 39, 'Volume 02', 1, 10, 8, 0),
(250, 39, 'Volume 03', 1, 10, 8, 0),
(251, 31, 'Volume 01 : Uncut Edition', 4, NULL, NULL, NULL),
(252, 31, 'Battle City Duels, Volume 01', 4, NULL, NULL, NULL),
(253, 31, 'Battle City Duels, Volume 02', 4, NULL, NULL, NULL),
(254, 31, 'Battle City Duels, Volume 03', 4, NULL, NULL, NULL),
(255, 31, 'Battle City Duels, Volume 04', 4, NULL, NULL, NULL),
(256, 31, 'Battle City Duels, Volume 05', 4, NULL, NULL, NULL),
(257, 31, 'Battle City Duels, Volume 06', 4, NULL, NULL, NULL),
(258, 31, 'Battle City Duels, Volume 07', 4, NULL, NULL, NULL),
(259, 31, 'Battle City Duels, Volume 08', 4, NULL, NULL, NULL),
(260, 31, 'Battle City Duels, Volume 09', 4, NULL, NULL, NULL),
(261, 31, 'Battle City Duels, Volume 10', 4, NULL, NULL, NULL),
(262, 31, 'Battle City Duels, Volume 11', 4, NULL, NULL, NULL),
(263, 31, 'Enter the Shadow Realm, Volume 01', 4, NULL, NULL, NULL),
(264, 31, 'Enter the Shadow Realm, Volume 02', 4, NULL, NULL, NULL),
(265, 31, 'Enter the Shadow Realm, Volume 03', 4, NULL, NULL, NULL),
(266, 31, 'Enter the Shadow Realm, Volume 04', 4, NULL, NULL, NULL),
(267, 31, 'Enter the Shadow Realm, Volume 05', 4, NULL, NULL, NULL),
(268, 31, 'Waking the Dragons, Volume 01', 4, NULL, NULL, NULL),
(269, 31, 'Waking the Dragons, Volume 02', 4, NULL, NULL, NULL),
(270, 31, 'Capsule Monsters, Volume 01', 4, NULL, NULL, NULL),
(271, 31, 'Capsule Monsters, Volume 02', 4, NULL, NULL, NULL),
(272, 31, 'Grand Championship', 4, NULL, NULL, NULL),
(273, 31, 'Dawn of the Duel, Volume 01', 4, NULL, NULL, NULL),
(274, 9, 'Issue 11, Don''t Step on the Grass, Part 3 : Weed Killer', 9, 58, 35, 0),
(275, 63, 'Complete 1-Volume Editon', 2, 45, 28, 0),
(276, 64, 'I Am What I Am', 2, 35, 22, 0),
(277, 9, 'Doctor Who Magazine, 2010 06 January', 10, 51, 34, 0),
(278, 65, 'David Tennant', 2, 34, 21, 0),
(279, 9, 'Aliens and Enemies', 2, 50, 4, 0),
(280, 9, 'The Inside Story', 2, 56, 4, 0),
(281, 66, 'Charlotte''s Web', 2, 37, 1, 0),
(282, 72, 'Almost Alice', 6, 0, 0, 2),
(283, 67, 'Always Moving Never Stopping', 6, 0, 0, 23),
(285, 76, 'Volume 01', 1, 22, 6, 0),
(286, 77, 'Unwind', 2, 46, 29, 0),
(287, 58, 'Volume 01', 1, 24, 10, 0),
(288, 49, 'The Dark Knight Legend', 2, 1, 1, NULL),
(289, 70, 'The Avengers Assemble', 2, 49, 32, 0),
(290, 13, 'Road Less Traveled', 2, 59, 37, 0),
(291, 11, 'One Year Gone', 2, 65, 39, 0),
(292, 70, '''Marvel''s The Avengers'' Collectible Can : Loki', 13, 0, 0, 27),
(293, 70, '''Marvel''s The Avengers'' Collectible Can : Iron Man', 13, 0, 0, 27),
(294, 70, '''Marvel''s The Avengers'' Collectible Can : Thor', 13, 0, 0, 27),
(295, 70, '''Marvel''s The Avengers'' Collectible Can : Hulk', 13, 0, 0, 27),
(296, 70, '''Marvel''s The Avengers'' Collectible Can : Captain America', 13, 0, 0, 27),
(297, 70, '''Marvel''s The Avengers'' Collectible Can : Hawkeye', 13, 0, 0, 0),
(298, 70, '''Marvel''s The Avengers'' Collectible Can : Black Widow', 13, 0, 0, 27),
(299, 70, '''Marvel''s The Avengers'' Collectible Can : Nick Fury', 13, 0, 0, 27),
(300, 70, 'The Avengers Strike Poster', 5, 0, 0, 28),
(301, 70, 'Group Poster', 5, 0, 0, 28),
(302, 70, 'Group Door Poster', 5, 0, 0, 28),
(303, 49, 'Arkham City - Most Wanted', 5, NULL, NULL, NULL),
(304, 9, 'Dalek to Victory', 5, 0, 0, 20),
(305, 9, 'Regeneration', 5, 0, 0, 20),
(306, 9, 'TARDIS Door Poster', 5, 0, 0, 20),
(307, 70, 'Iron Man Wacky Wobbler', 12, NULL, NULL, 1),
(308, 70, 'Captain America Wacky Wobbler', 12, 0, 0, 1),
(309, 49, 'Batman Bobble-Head', 12, 0, 0, 1),
(310, 49, 'DC Universe Plushies : Batman', 12, 0, 0, 1),
(311, 49, 'DC Universe Plushies : The Joker', 12, 0, 0, 1),
(312, 49, 'Pez Dispenser', 13, NULL, NULL, NULL),
(313, 70, 'Iron Man Cup', 16, 0, 0, 25),
(314, 70, 'Avengers Cup', 16, 0, 0, 25),
(315, 70, 'Ultron Quest', 9, 0, 0, 28),
(316, 49, 'Batman : Arkham City, Special Issue', 9, 0, 0, 24),
(317, 49, 'Batman : Arkham City', 9, 0, 0, 24),
(318, 49, 'The Dark Knight', 4, 0, 0, 4),
(319, 79, 'Jane Eyre', 4, 0, 0, 19),
(320, 80, 'Wanted', 4, 0, 0, 19),
(321, 81, 'Volume 01', 4, 0, 0, 7),
(322, 81, 'Volume 02', 4, 0, 0, 7),
(323, 81, 'Volume 03', 4, 0, 0, 7),
(324, 82, 'X-Men : First Class', 3, 0, 0, 29),
(325, 82, 'X-Men : First Class', 4, 0, 0, 29),
(326, 49, 'Batman : Arkham City', 14, 0, 0, 24),
(327, 49, 'Batman : Arkham Asylum', 14, 0, 0, 24),
(328, 31, 'The Complete First Season', 4, NULL, NULL, NULL),
(329, 49, 'Batman Begins', 4, 0, 0, 4),
(330, 83, 'The Mask / Son of the Mask Double Feature', 4, 0, 0, 21),
(331, 78, 'The Web Designer''s Idea Book', 2, 47, 30, 0),
(332, 49, 'Whooshhhh Thwaaaap Micro Raschel Throw Blanket', 15, 0, 0, 26),
(333, 49, 'The Dark Knight Plastic Cup', 16, 0, 0, 25),
(334, 49, 'Batman Costume Mini Backpack', 11, 0, 0, 24),
(335, 72, 'Mad Hatter Hat', 11, 0, 0, 2),
(336, 41, '2009 Wall Calendar', 15, 0, 2, 0),
(337, 31, 'Fabric Book Cover', 15, 0, 0, 0),
(338, 41, 'Chibi Hitsugaya Patch', 11, 0, 0, 3),
(339, 68, '2010 Wall Calendar', 15, 0, 2, 8),
(340, 44, 'Stand Off Wall Scroll', 5, 0, 0, 3),
(341, 43, 'Yuko, Watanuki, and Himawari Wall Scroll', 5, 0, 0, 3),
(342, 68, 'Sasuke Uchiha Wall Scroll', 5, 0, 0, 3),
(344, 49, 'Batman Forever Two Disc Edition', 4, 0, 0, 4),
(346, 70, 'Avengers Mug', 16, 0, 0, 2),
(347, 62, 'Volume 01', 4, 0, 0, 7),
(360, 49, '60 Sheet Journal', 15, 0, 0, 24),
(361, 49, '60 Sheet Journal', 15, 0, 0, 24),
(362, 49, 'Hanging Dry Erase Board with Marker', 15, 0, 0, 24),
(363, 70, '60 Sheet Journal', 15, 0, 0, 28),
(364, 70, '60 Sheet Journal', 15, 0, 0, 28),
(365, 70, '6 Piece Eraser Set', 0, 0, 0, 28),
(366, 70, 'Ruler', 15, 0, 0, 28),
(367, 49, 'Markers with Roller Stamps', 15, 0, 0, 24),
(368, 49, 'Ruler', 15, 0, 0, 24),
(369, 70, '3D Stickers 6 Count', 15, 0, 0, 28),
(370, 49, '3D Stickers 6 Count', 15, 0, 0, 24),
(371, 49, '6 Pack Pencils', 15, 0, 0, 24),
(372, 70, 'Markers with Roller Stamps', 15, 0, 0, 28),
(373, 70, '6 Pack Pencils', 15, 0, 0, 28),
(374, 49, '6 Piece Eraser Set', 15, 0, 0, 24),
(375, 70, '8 Pack Markers', 15, 0, 0, 28),
(376, 49, '48 Sheet Journal 5x7in', 15, 0, 0, 24),
(377, 49, '48 Sheet Journal 5x7in', 12, 0, 0, 24),
(378, 70, '48 Sheet Journal 5x7in', 15, 0, 0, 28),
(379, 70, 'Pencil Cup', 15, 0, 0, 28),
(380, 70, 'Pencil Cup', 15, 0, 0, 28),
(381, 49, 'Pencil Cup', 15, 0, 0, 24),
(382, 49, 'Pencil Cup', 15, 0, 0, 24),
(383, 49, 'Tote Bag', 11, 0, 0, 24);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE IF NOT EXISTS `manufacturer` (
  `manID` int(3) NOT NULL AUTO_INCREMENT,
  `manName` varchar(100) NOT NULL,
  PRIMARY KEY (`manID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`manID`, `manName`) VALUES
(1, 'Funko'),
(2, 'Disney'),
(3, 'Great Eastern Entertainment'),
(4, 'Warner Bros'),
(5, 'Bandai Entertainment'),
(6, 'Funimation'),
(7, 'ADV Films'),
(8, 'Viz Media'),
(9, 'Geneon'),
(10, 'Capcom'),
(11, 'Manga Video'),
(12, 'Shonen Jump'),
(20, 'BBC'),
(19, 'Universal Studios'),
(21, 'New Line Home Video'),
(22, 'Natsume'),
(23, 'Red Ink'),
(24, 'DC'),
(25, 'Hallmark'),
(26, 'Northwest'),
(27, 'Dr.Pepper'),
(28, 'Marvel'),
(29, '20th Century Fox');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE IF NOT EXISTS `publisher` (
  `pubID` int(3) NOT NULL AUTO_INCREMENT,
  `pubName` varchar(100) NOT NULL,
  PRIMARY KEY (`pubID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`pubID`, `pubName`) VALUES
(1, 'Harper Collins'),
(2, 'LLC Andrews McMeel Publishing'),
(3, 'Bandai Entertainment'),
(4, 'BBC Books'),
(5, 'Go! Comi'),
(6, 'Yen Press'),
(7, 'June Manga'),
(8, 'Shonen Jump'),
(9, 'Blu Manga'),
(10, 'TokyoPop'),
(11, 'Shojo Beat'),
(12, 'Viz Media LLC'),
(13, 'ADV Manga'),
(14, 'Del Rey Manga'),
(15, 'Clamp'),
(16, 'Dark Horse Books'),
(22, 'Michael O''Mara'),
(21, 'Orion'),
(25, 'Hyperion'),
(24, 'Scholastic'),
(26, 'Laurel Leaf'),
(27, 'MTV Books'),
(28, 'Houghton Milflin Co'),
(29, 'Simon & Schuster Books'),
(30, 'HOW Books'),
(32, 'Marvel Press'),
(34, 'Panini'),
(35, 'IDW Publishing'),
(37, 'Penguin'),
(38, 'Obsidian'),
(39, 'Titan Books');

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE IF NOT EXISTS `series` (
  `seriesID` int(3) NOT NULL AUTO_INCREMENT,
  `seriesName` varchar(50) NOT NULL,
  `catID` int(3) NOT NULL,
  PRIMARY KEY (`seriesID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=108 ;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`seriesID`, `seriesName`, `catID`) VALUES
(1, 'Otomen', 1),
(2, 'Junjo Romantica', 1),
(3, 'Higurashi When They Cry', 1),
(4, 'Kyou Kara Maoh!', 1),
(5, '07 Ghost', 1),
(6, 'Black Butler', 1),
(7, 'Nabari No Ou', 1),
(8, 'Natsume''s Book of Friends', 1),
(9, 'Doctor Who', 2),
(10, 'Torchwood', 2),
(11, 'Supernatural', 2),
(12, 'Time Quartet', 3),
(13, 'Eureka', 2),
(14, 'Psych', 2),
(15, 'Big Windup!', 1),
(16, 'Full Metal Panic!', 1),
(17, 'Airgear', 1),
(18, 'Hetalia Axis Powers', 1),
(73, 'The Perks of Being a Wallflower', 3),
(21, 'American Gods', 3),
(20, 'Shonen Jump', 1),
(22, 'The Five People You Meet in Heaven', 3),
(23, 'Keys to the Kingdom', 3),
(24, 'The Count of Monte Cristo', 3),
(25, 'Cut', 3),
(26, 'Polly O''Keefe', 3),
(27, 'Hikaru no Go', 1),
(28, 'HunterxHunter', 1),
(29, 'MeruPuri', 1),
(30, 'Orphen', 1),
(31, 'Yu-Gi-Oh!', 1),
(32, 'Vampire Hunter D', 1),
(33, 'Devil May Cry', 7),
(34, 'Sayonara, Zetsubou-Sensei', 1),
(35, 'Clan of the Nakagamis', 1),
(36, 'Othello', 1),
(37, 'Tsubasa Reservoir Chronicle', 1),
(38, 'D.Gray-Man', 1),
(39, 'Death Note', 1),
(40, 'Loveless', 1),
(41, 'Bleach', 1),
(42, 'Saiyuki', 1),
(43, 'xxxHolic', 1),
(44, 'Code Geass', 1),
(45, 'Zombie Loan', 1),
(46, 'Kingdom Hearts', 7),
(47, 'Harvest Moon', 7),
(48, 'Royal Shakespeare Company', 3),
(49, 'Batman', 6),
(50, 'Sengoku Basara', 1),
(51, 'Disney', 3),
(52, 'The Prince of Tennis', 1),
(53, 'Studio Ghibli', 3),
(54, 'Inuyasha', 1),
(55, 'Animatrix', 1),
(56, 'Zegapain', 1),
(57, 'Eureka Seven', 1),
(58, 'Tactics', 1),
(59, '.Hack', 1),
(60, 'Fruits Basket', 1),
(61, 'D.N.Angel', 1),
(62, 'Mythical Detective Loki Ragnarok', 1),
(63, 'Lord of the Rings', 3),
(64, 'John Barrowman', 8),
(65, 'David Tennant', 8),
(66, 'Charlotte''s Web', 3),
(67, 'The City Drive', 9),
(68, 'Naruto', 1),
(69, 'Superman', 6),
(70, 'The Avengers', 6),
(71, 'A-Kon', 1),
(72, 'Alice in Wonderland', 3),
(74, 'Hero', 3),
(75, 'Atonement', 3),
(76, 'Pandora Hearts', 1),
(77, 'Unwind', 3),
(78, 'Web Design and Developement', 3),
(79, 'Jane Eyre', 3),
(80, 'Wanted', 3),
(81, 'The Wallflower', 1),
(82, 'X-Men', 6),
(83, 'The Mask', 3);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `typeID` int(3) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(50) NOT NULL,
  PRIMARY KEY (`typeID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`typeID`, `typeName`) VALUES
(1, 'Manga'),
(2, 'Novel'),
(3, 'Blu-ray'),
(4, 'DVD'),
(5, 'Poster'),
(6, 'CD'),
(7, 'PS2'),
(8, 'Wii'),
(9, 'Comic'),
(10, 'Magazine'),
(11, 'Clothes/Accessories'),
(12, 'Figures'),
(13, 'Other'),
(14, 'PC'),
(15, 'Home/Office'),
(16, 'Kitchenware');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
