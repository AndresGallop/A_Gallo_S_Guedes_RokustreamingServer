-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 18, 2021 at 12:14 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roku_streaming`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arating`
--

DROP TABLE IF EXISTS `tbl_arating`;
CREATE TABLE IF NOT EXISTS `tbl_arating` (
  `arating_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `arating_name` varchar(125) NOT NULL,
  `arating_desc` text NOT NULL,
  PRIMARY KEY (`arating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_arating`
--

INSERT INTO `tbl_arating` (`arating_id`, `arating_name`, `arating_desc`) VALUES
(1, 'G', 'G – General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children. '),
(2, 'PG', 'PG – Parental Guidance Suggested\r\nSome material may not be suitable for children. Parents urged to give  	&ldquo;parental guidance&rdquo;. '),
(3, 'PG-13', 'PG-13 – Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.'),
(4, 'R', 'R – Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them. '),
(5, 'NC-17', 'NC-17 – Adults Only\r\nNo One 17 and Under Admitted. Clearly adult. Children are not admitted. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cast`
--

DROP TABLE IF EXISTS `tbl_cast`;
CREATE TABLE IF NOT EXISTS `tbl_cast` (
  `cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cast_name` varchar(250) NOT NULL,
  PRIMARY KEY (`cast_id`),
  UNIQUE KEY `cast_name` (`cast_name`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cast`
--

INSERT INTO `tbl_cast` (`cast_id`, `cast_name`) VALUES
(36, 'Amy Adams'),
(26, 'Andrew Garfield'),
(8, 'Aneurin Barnard'),
(42, 'Anna Kendrick'),
(14, 'Boyd Holbrook'),
(5, 'Bradley Cooper'),
(1, 'Chris Pratt'),
(19, 'Colm Hill'),
(13, 'Dafne Keen'),
(7, 'Damien Bonnard'),
(22, 'Dan Stevens'),
(30, 'Darcy Bryce'),
(3, 'Dave Bautista'),
(33, 'Ed Skrein'),
(21, 'Emma Watson'),
(6, 'Fionn Whitehead'),
(38, 'Forest Whitaker'),
(46, 'Harrison Ford'),
(11, 'Hugh Jackman'),
(28, 'Jacob Warner'),
(10, 'James Bloor'),
(37, 'Jeremy Renner'),
(45, 'Joseph Gordon-Levitt'),
(24, 'Josh Gad'),
(32, 'Karan Soni'),
(20, 'Kathryn Kirkpatrick'),
(25, 'Kevin Kline'),
(9, 'Lee Armstrong'),
(43, 'Leonardo DiCaprio'),
(23, 'Luke Evans'),
(40, 'Mark OBrien'),
(34, 'Michael Benyaer'),
(18, 'Michael Mitton'),
(39, 'Michael Stuhlbarg'),
(47, 'Miles Teller'),
(29, 'Milo Gibson'),
(12, 'Patrick Stewart'),
(27, 'Richard Pyros'),
(31, 'Ryan Reynolds'),
(52, 'Sandra Bullock'),
(44, 'Saoirse Ronan'),
(17, 'Sheena Kamal'),
(35, 'Stefan Kapicic'),
(15, 'Stephen Merchant'),
(53, 'Suraj Sharma'),
(16, 'Tilda Swinton'),
(41, 'Tom Costello'),
(4, 'Vin Diesel'),
(2, 'Zoe Saldana');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

DROP TABLE IF EXISTS `tbl_country`;
CREATE TABLE IF NOT EXISTS `tbl_country` (
  `country_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Albania'),
(2, 'Algeria'),
(3, 'Andorra'),
(4, 'Angola'),
(5, 'Anguilla'),
(6, 'Antarctica'),
(7, 'Antigua'),
(8, 'Antilles'),
(9, 'Argentina'),
(10, 'Armenia'),
(11, 'Aruba'),
(12, 'Australia'),
(13, 'Austria'),
(14, 'Azerbaijan'),
(15, 'Bahamas'),
(16, 'Bangladesh'),
(17, 'Barbados'),
(18, 'Belarus'),
(19, 'Belgium'),
(20, 'Belize'),
(21, 'Benin'),
(22, 'Bermuda'),
(23, 'Bhutan'),
(24, 'Bolivia'),
(25, 'Bosnia'),
(26, 'Botswana'),
(27, 'Brazil'),
(28, 'Brunei'),
(29, 'Bulgaria'),
(30, 'Burkina Faso'),
(31, 'Burundi'),
(32, 'Cambodia'),
(33, 'Cameroon'),
(34, 'Canada'),
(35, 'Cape Verde'),
(36, 'Cayman Islands'),
(37, 'Central Africa'),
(38, 'Chad'),
(39, 'Chile'),
(40, 'China'),
(41, 'Colombia'),
(42, 'Comoros'),
(43, 'Congo'),
(44, 'Cook Islands'),
(45, 'Costa Rica'),
(46, 'Cote D\'Ivoire'),
(47, 'Croatia'),
(48, 'Cuba'),
(49, 'Cyprus'),
(50, 'Czech Republic'),
(51, 'Denmark'),
(52, 'Djibouti'),
(53, 'Dominica'),
(54, 'Dominican Rep.'),
(55, 'Ecuador'),
(56, 'Egypt'),
(57, 'El Salvador'),
(58, 'Eritrea'),
(59, 'Estonia'),
(60, 'Ethiopia'),
(61, 'Fiji'),
(62, 'Finland'),
(63, 'Falkland Islands'),
(64, 'France'),
(65, 'Gabon'),
(66, 'Gambia'),
(67, 'Georgia'),
(68, 'Germany'),
(69, 'Ghana'),
(70, 'Gibraltar'),
(71, 'Greece'),
(72, 'Greenland'),
(73, 'Grenada'),
(74, 'Guam'),
(75, 'Guatemala'),
(76, 'Guiana'),
(77, 'Guinea'),
(78, 'Guyana'),
(79, 'Haiti'),
(80, 'Hondoras'),
(81, 'Hong Kong'),
(82, 'Hungary'),
(83, 'Iceland'),
(84, 'India'),
(85, 'Indonesia'),
(86, 'Iran'),
(87, 'Iraq'),
(88, 'Ireland'),
(89, 'Israel'),
(90, 'Italy'),
(91, 'Jamaica'),
(92, 'Japan'),
(93, 'Jordan'),
(94, 'Kazakhstan'),
(95, 'Kenya'),
(96, 'Kiribati'),
(97, 'Korea'),
(98, 'Kyrgyzstan'),
(99, 'Lao'),
(100, 'Latvia'),
(101, 'Lesotho'),
(102, 'Liberia'),
(103, 'Liechtenstein'),
(104, 'Lithuania'),
(105, 'Luxembourg'),
(106, 'Macau'),
(107, 'Macedonia'),
(108, 'Madagascar'),
(109, 'Malawi'),
(110, 'Malaysia'),
(111, 'Maldives'),
(112, 'Mali'),
(113, 'Malta'),
(114, 'Marshal Islands'),
(115, 'Martinique'),
(116, 'Mauritania'),
(117, 'Mauritius'),
(118, 'Mayotte'),
(119, 'Mexico'),
(120, 'Micronesia'),
(121, 'Moldova'),
(122, 'Monaco'),
(123, 'Mongolia'),
(124, 'Montserrat'),
(125, 'Morocco'),
(126, 'Mozambique'),
(127, 'Myanmar'),
(128, 'Namibia'),
(129, 'Nauru'),
(130, 'Nepal'),
(131, 'Netherlands'),
(132, 'New Caledonia'),
(133, 'New Guinea'),
(134, 'New Zealand'),
(135, 'Nicaragua'),
(136, 'Nigeria'),
(137, 'Niue'),
(138, 'Norfolk Island'),
(139, 'Norway'),
(140, 'Palau'),
(141, 'Panama'),
(142, 'Paraguay'),
(143, 'Peru'),
(144, 'Puerto'),
(145, 'Philippines'),
(146, 'Poland'),
(147, 'Polynesia'),
(148, 'Portugal'),
(149, 'Romania'),
(150, 'Russia'),
(151, 'Rwanda'),
(152, 'Saint Lucia'),
(153, 'Samoa'),
(154, 'San Marino'),
(155, 'Senegal'),
(156, 'Seychelles'),
(157, 'Sierra Leone'),
(158, 'Singapore'),
(159, 'Slovakia'),
(160, 'Slovenia'),
(161, 'Somalia'),
(162, 'South Africa'),
(163, 'Spain'),
(164, 'Sri Lanka'),
(165, 'St. Helena'),
(166, 'Sudan'),
(167, 'Suriname'),
(168, 'Swaziland'),
(169, 'Sweden'),
(170, 'Switzerland'),
(171, 'Taiwan'),
(172, 'Tajikistan'),
(173, 'Tanzania'),
(174, 'Thailand'),
(175, 'Togo'),
(176, 'Tokelau'),
(177, 'Tonga'),
(178, 'Trinidad'),
(179, 'Tunisia'),
(180, 'Turkey'),
(181, 'Uganda'),
(182, 'Ukraine'),
(183, 'United Kingdom'),
(184, 'United States'),
(185, 'Uruguay'),
(186, 'Uzbekistan'),
(187, 'Vanuatu'),
(188, 'Venezuela'),
(189, 'Vietnam'),
(190, 'Virgin Islands'),
(191, 'Yugoslavia'),
(192, 'Zaire'),
(193, 'Zambia'),
(194, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_director`
--

DROP TABLE IF EXISTS `tbl_director`;
CREATE TABLE IF NOT EXISTS `tbl_director` (
  `director_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `director_name` varchar(250) NOT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_director`
--

INSERT INTO `tbl_director` (`director_id`, `director_name`) VALUES
(1, 'James Gunn'),
(2, 'Christopher Nolan'),
(3, 'James Mangold'),
(4, 'Joon-ho Bong'),
(5, 'Bill Condon'),
(6, 'Mel Gibson'),
(7, 'Tim Miller'),
(8, 'Denis Villeneuve '),
(9, 'Dexter Fletcher'),
(10, 'Mike Mitchell'),
(11, 'Walt Dohrn'),
(12, 'Alejandro Gonzalez Inarritu'),
(13, 'John Crowley '),
(14, 'Robert Zemeckis'),
(15, 'Florian Gallenberger '),
(16, 'J.J. Abrams'),
(17, 'Damien Chazelle'),
(18, 'Joseph Gordon-Levitt '),
(19, 'Alfonso Cuaron'),
(20, 'Ang Lee'),
(21, 'David O. Russell');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(125) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Science Fiction'),
(10, 'War'),
(11, 'Western'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Fantasy'),
(15, 'Romance'),
(16, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

DROP TABLE IF EXISTS `tbl_language`;
CREATE TABLE IF NOT EXISTS `tbl_language` (
  `lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(250) NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`) VALUES
(1, 'Abkhaz'),
(2, 'Afar'),
(3, 'Afrikaans'),
(4, 'Akan'),
(5, 'Albanian'),
(6, 'Amharic'),
(7, 'Arabic'),
(8, 'Aragonese'),
(9, 'Armenian'),
(10, 'Assamese'),
(11, 'Avaric'),
(12, 'Avestan'),
(13, 'Aymara'),
(14, 'Azerbaijani'),
(15, 'Bambara'),
(16, 'Bashkir'),
(17, 'Basque'),
(18, 'Belarusian'),
(19, 'Bengali'),
(20, 'Bihari'),
(21, 'Bislama'),
(22, 'Bosnian'),
(23, 'Breton'),
(24, 'Bulgarian'),
(25, 'Burmese'),
(26, 'Catalan'),
(27, 'Valencian'),
(28, 'Chamorro'),
(29, 'Chechen'),
(30, 'Chichewa'),
(31, 'Chewa'),
(32, 'Nyanja'),
(33, 'Chinese'),
(34, 'Chuvash'),
(35, 'Cornish'),
(36, 'Corsican'),
(37, 'Cree'),
(38, 'Croatian'),
(39, 'Czech'),
(40, 'Danish'),
(41, 'Divehi'),
(42, 'Dhivehi'),
(43, 'Maldivian'),
(44, 'Dutch'),
(45, 'English'),
(46, 'Esperanto'),
(47, 'Estonian'),
(48, 'Ewe'),
(49, 'Faroese'),
(50, 'Fijian'),
(51, 'Finnish'),
(52, 'French'),
(53, 'Fula'),
(54, 'Fulah'),
(55, 'Pulaar'),
(56, 'Pular'),
(57, 'Galician'),
(58, 'Georgian'),
(59, 'German'),
(60, 'Greek'),
(61, 'Guaraní'),
(62, 'Gujarati'),
(63, 'Haitian'),
(64, 'Haitian Creole'),
(65, 'Hausa'),
(66, 'Hebrew'),
(67, 'Herero'),
(68, 'Hindi'),
(69, 'Hiri Motu'),
(70, 'Hungarian'),
(71, 'Interlingua'),
(72, 'Indonesian'),
(73, 'Interlingue'),
(74, 'Irish'),
(75, 'Igbo'),
(76, 'Inupiaq'),
(77, 'Ido'),
(78, 'Icelandic'),
(79, 'Italian'),
(80, 'Inuktitut'),
(81, 'Japanese'),
(82, 'Javanese'),
(83, 'Kalaallisut'),
(84, 'Greenlandic'),
(85, 'Kannada'),
(86, 'Kanuri'),
(87, 'Kashmiri'),
(88, 'Kazakh'),
(89, 'Khmer'),
(90, 'Kikuyu'),
(91, 'Gikuyu'),
(92, 'Kinyarwanda'),
(93, 'Kirghiz'),
(94, 'Kyrgyz'),
(95, 'Komi'),
(96, 'Kongo'),
(97, 'Korean'),
(98, 'Kurdish'),
(99, 'Kwanyama'),
(100, 'Kuanyama'),
(101, 'Latin'),
(102, 'Luxembourgish'),
(103, 'Letzeburgesch'),
(104, 'Luganda'),
(105, 'Limburgish'),
(106, 'Limburgan'),
(107, 'Limburger'),
(108, 'Lingala'),
(109, 'Lao'),
(110, 'Lithuanian'),
(111, 'Luba-Katanga'),
(112, 'Latvian'),
(113, 'Manx'),
(114, 'Macedonian'),
(115, 'Malagasy'),
(116, 'Malay'),
(117, 'Malayalam'),
(118, 'Maltese'),
(119, 'Maori'),
(120, 'Marathi'),
(121, 'Marshallese'),
(122, 'Mongolian'),
(123, 'Nauru'),
(124, 'Navajo'),
(125, 'Navaho'),
(126, 'Norwegian Bokmal'),
(127, 'North Ndebele'),
(128, 'Nepali'),
(129, 'Ndonga'),
(130, 'Norwegian Nynorsk'),
(131, 'Norwegian'),
(132, 'Nuosu'),
(133, 'South Ndebele'),
(134, 'Occitan'),
(135, 'Ojibwe'),
(136, 'Ojibwa'),
(137, 'Old Church Slavonic'),
(138, 'Church Slavic'),
(139, 'Church Slavonic'),
(140, 'Old Bulgarian'),
(141, 'Old Slavonic'),
(142, 'Oromo'),
(143, 'Oriya'),
(144, 'Ossetian'),
(145, 'Ossetic'),
(146, 'Panjabi'),
(147, 'Punjabi'),
(148, 'Pali'),
(149, 'Persian'),
(150, 'Polish'),
(151, 'Pashto'),
(152, 'Pushto'),
(153, 'Portuguese'),
(154, 'Quechua'),
(155, 'Romansh'),
(156, 'Kirundi'),
(157, 'Romanian'),
(158, 'Moldavian'),
(159, 'Moldovan'),
(160, 'Russian'),
(161, 'Sanskrit'),
(162, 'Sardinian'),
(163, 'Sindhi'),
(164, 'Northern Sami'),
(165, 'Samoan'),
(166, 'Sango'),
(167, 'Serbian'),
(168, 'Scottish Gaelic'),
(169, 'Gaelic'),
(170, 'Shona'),
(171, 'Sinhala'),
(172, 'Sinhalese'),
(173, 'Slovak'),
(174, 'Slovene'),
(175, 'Somali'),
(176, 'Southern Sotho'),
(177, 'Spanish'),
(178, 'Castilian'),
(179, 'Sundanese'),
(180, 'Swahili'),
(181, 'Swati'),
(182, 'Swedish'),
(183, 'Tamil'),
(184, 'Telugu'),
(185, 'Tajik'),
(186, 'Thai'),
(187, 'Tigrinya'),
(188, 'Tibetan Standard'),
(189, 'Tibetan'),
(190, 'Turkmen'),
(191, 'Tagalog'),
(192, 'Tswana'),
(193, 'Tonga'),
(194, 'Turkish'),
(195, 'Tsonga'),
(196, 'Tatar'),
(197, 'Twi'),
(198, 'Tahitian'),
(199, 'Uighur'),
(200, 'Uyghur'),
(201, 'Ukrainian'),
(202, 'Urdu'),
(203, 'Uzbek'),
(204, 'Venda'),
(205, 'Vietnamese'),
(206, 'Volapuk'),
(207, 'Walloon'),
(208, 'Welsh'),
(209, 'Wolof'),
(210, 'Western Frisian'),
(211, 'Xhosa'),
(212, 'Yiddish'),
(213, 'Yoruba'),
(214, 'Zhuang'),
(215, 'Chuang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_era` varchar(5) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.mp4',
  `movies_release` varchar(125) NOT NULL,
  `kids` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`movies_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_era`, `movies_storyline`, `movies_trailer`, `movies_release`, `kids`) VALUES
(1, 'PulpFiction.jpg', 'Pulp Fiction', '90s', 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 'PulpFiction.mp4', '1994', '1'),
(2, 'Fargo.jpg', 'Fargo', '90s', 'Jerry Lundegaard\'s inept crime falls apart due to his and his henchmen\'s bungling and the persistent police work of the quite pregnant Marge Gunderson.', 'Fargo.mp4', '1996', '1'),
(3, 'Terminator2.jpg', 'Terminator 2: Judgment Day', '90s', 'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her ten year old son, John Connor, from a more advanced and powerful cyborg.', 'Terminator2.mp4', '1991', '1'),
(4, 'TheSixthSense.jpg', 'The Sixth Sense', '90s', 'A boy who communicates with spirits seeks the help of a disheartened child psychologist. ', 'TheSixthSense.mp4', '1999', '1'),
(5, 'TheMatrix.jpg', 'The Matrix', '90s', 'When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.', 'TheMatrix.mp4', '1999', '1'),
(6, 'ToyStory.jpg', 'Toy Story', '90s', 'A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy\'s room.', 'ToyStory.mp4', '1995', NULL),
(7, 'Mulan.jpg', 'Mulan', '90s', 'To save her father from death in the army, a young maiden secretly goes in his place and becomes one of China\'s greatest heroines in the process.', 'Mulan.mp4', '1998', NULL),
(8, 'ABugsLife.jpg', 'A Bug\'s Life', '90s', 'A misfit ant, looking for \"warriors\" to save his colony from greedy grasshoppers, recruits a group of bugs that turn out to be an inept circus troupe.', 'ABugsLife.mp4', '1998', NULL),
(9, 'Aladdin.jpg', 'Aladdin', '90s', 'Aladdin is a poor yet care-free street urchin in an Arabian city. One day he meets Princess Jasmine, the daughter of the Sultan of the land, and falls madly in love. However, the evil Jafar, the Sultan\'s sorcerer, imprisons Aladdin and manipulates him into working for him.', 'Aladdin.mp4', '1992', NULL),
(10, 'TheLionKing.jpg', 'The Lion King', '90s', 'The Lion King tells the story of Simba, a young lion who is to succeed his father, Mufasa, as King of the Pride Lands; however, after Simba\'s paternal uncle Scar murders Mufasa, Simba is manipulated into thinking he was responsible and flees into exile.', 'TheLionKing.mp4', '1994', NULL),
(11, 'BatmanMovie.jpg', 'Batman', '80s', 'The Dark Knight of Gotham City begins his war on crime with his first major enemy being Jack Napier, a criminal who becomes the clownishly homicidal Joker.', 'BatmanMovie.mp4', '1989', '1'),
(12, 'DeadPoetssociety.jpg', 'Dead Poets society', '80s', 'Maverick teacher John Keating uses poetry to embolden his boarding school students to new heights of self-expression.', 'DeadPoetssociety.mp4', '1989', '1'),
(13, 'TheTerminator.jpg', 'The Terminator', '80s', 'A human soldier is sent from 2029 to 1984 to stop an almost indestructible cyborg killing machine, sent from the same year, which has been programmed to execute a young woman whose unborn son is the key to humanity\'s future salvation.', 'TheTerminator.mp4', '1984', '1'),
(14, 'Highlander.jpg', 'Highlander', '80s', 'An immortal Scottish swordsman must confront the last of his immortal opponent, a murderously brutal barbarian who lusts for the fabled \"Prize\".', 'Highlander.mp4', '1986', '1'),
(15, 'TheEvilDead.jpg', 'The Evil Dead', '80s', 'Three decades after the Empire&rsquo;s defeat, a new threat arises in the militant First Order. Stormtrooper defector Finn and spare parts scavenger Rey are caught up in the Resistance&rsquo;s search for the missing Luke Skywalker.', 'TheEvilDead.mp4', '1981', '1'),
(16, 'CaravanofCourage.jpg', 'Caravan of Courage', '80s', 'Wicket the Ewok and his friends agree to help two shipwrecked human children, Mace and Cindel, on a quest to find their parents.', 'TheEwokAdventureCaravanOfCourage.mp4', '1984', NULL),
(17, 'TheNeverendingStory.jpg', 'The Neverending Story', '80s', 'A troubled boy dives into a wondrous fantasy world through the pages of a mysterious book.', 'TheNeverendingStory.mp4', '1984', NULL),
(18, 'TheDarkCrystal.jpg', 'The Dark Crystal', '80s', 'On another planet in the distant past, a Gelfling embarks on a quest to find the missing shard of a magical crystal, and so restore order to his world.', 'TheDarkCrystal.mp4', '1982', NULL),
(19, 'TheGoonies.jpg', 'The Goonies', '80s', 'A group of young misfits called The Goonies discover an ancient map and set out on an adventure to find a legendary pirate\'s long-lost treasure.', 'TheGoonies.mp4', '1985', NULL),
(20, 'KikisDeliveryService.jpg', 'Kiki\'s Delivery Service', '80s', 'A young witch, on her mandatory year of independent life, finds fitting into a new community difficult while she supports herself by running an air courier service.', 'KikisDeliveryService.mp4', '1989', NULL),
(21, 'Superman.jpg', 'Superman', '70s', 'An alien orphan is sent from his dying planet to Earth, where he grows up to become his adoptive home\'s first and greatest superhero.', 'Superman.mp4', '1978', '1'),
(22, 'KingKong.jpg', 'King Kong', '70s', 'A petroleum exploration expedition comes to an isolated island and encounters a colossal giant gorilla.', 'KingKong.mp4', '1976', '1'),
(23, 'Westworld.jpg', 'Westworld', '70s', 'A robot malfunction creates havoc and terror for unsuspecting vacationers at a futuristic, adult-themed amusement park.', 'Westworld.mp4', '1973', '1'),
(24, 'MidnightExpress.jpg', 'Midnight Express', '70s', 'Billy Hayes, an American college student, is caught smuggling drugs out of Turkey and thrown into prison.', 'MidnightExpress.mp4', '1978', '1'),
(25, 'AClockworkOrange.jpg', 'A Clockwork Orange', '70s', 'In the future, a sadistic gang leader is imprisoned and volunteers for a conduct-aversion experiment, but it doesn\'t go as planned.', 'AClockworkOrange.mp4', '1971', '1'),
(26, 'WatershipDown.jpg', 'Watership Down', '70s', 'Hoping to escape destruction by human developers and save their community, a colony of rabbits, led by Hazel and Fiver, seek out a safe place to set up a new warren.', 'WatershipDown.mp4', '1978', NULL),
(27, 'TheTwelveTasksofAsterix.jpg', 'The Twelve Tasks of Asterix', '70s', 'A group of indomitable Gauls are challenged by Roman Emperor Julius Caesar to accomplish twelve impossible tasks.', 'TwelveTasksOfAsterix.mp4', '1976', NULL),
(28, 'WillyWonkaandtheChocolateFactory.jpg', 'Willy Wonka and the Chocolate Factory', '70s', 'A poor but hopeful boy seeks one of the five coveted golden tickets that will send him on a tour of Willy Wonka\'s mysterious chocolate factory.', 'WillyWonkaandtheChocolateFactory.mp4', '1971', NULL),
(29, 'TheMuppetMovie.jpg', 'The Muppet Movie', '70s', 'Kermit and his newfound friends trek across America to find success in Hollywood, but a frog legs merchant is after Kermit.', 'TheMuppetMovie.mp4', '1979', NULL),
(30, 'RobinHood.jpg', 'Robin Hood', '70s', 'The story of the legendary British outlaw is portrayed with the characters as humanoid animals.', 'RobinHood.mp4', '1973', NULL),
(31, 'Psycho.jpg', 'Psycho', '60s', 'A Phoenix secretary embezzles $40,000 from her employer\'s client, goes on the run, and checks into a remote motel run by a young man under the domination of his mother.', 'Psycho.mp4', '1960', '1'),
(32, 'TheGoodtheBadandtheUgly.jpg', 'The Good, the Bad and the Ugly', '60s', 'A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.', 'TheGoodtheBadandtheUgly.mp4', '1966', '1'),
(33, 'TheGreatEscape.jpg', 'The Great Escape', '60s', 'Allied prisoners of war plan for several hundred of their number to escape from a German camp during World War II.', 'TheGreatEscape.mp4', '1963', '1'),
(34, 'ButchCassidyandtheSundanceKid.jpg', 'Butch Cassidy and the Sundance Kid', '60s', 'Wyoming, early 1900s. Butch Cassidy and The Sundance Kid are the leaders of a band of outlaws. After a train robbery goes wrong they find themselves on the run with a posse hard on their heels. Their solution - escape to Bolivia.', 'ButchCassidyandtheSundanceKid.mp4', '1969', '1'),
(35, 'MaryPoppins.jpg', 'Mary Poppins', '60s', 'In turn of the century London, a magical nanny employs music and adventure to help two neglected children become closer to their father.', 'MaryPoppins.mp4', '1964', '1'),
(36, 'TheSoundofMusic.jpg', 'The Sound of Music', '60s', 'A woman leaves an Austrian convent to become a governess to the children of a Naval officer widower.', 'TheSoundofMusic.mp4', '1965', NULL),
(37, '101Dalmatians.jpg', '101 Dalmatians', '60s', 'An evil high-fashion designer plots to steal Dalmatian puppies in order to make an extravagant fur coat, but instead creates an extravagant mess.', '101Dalmatians.mp4', '1961', NULL),
(38, 'RudolphtheRedNosedReindeer.jpg', 'Rudolph the Red-Nosed Reindeer', '60s', 'A misfit reindeer and his friends look for a place that will accept them.', 'RudolphtheRedNosedReindeer.mp4', '1964', NULL),
(39, 'DrSeussHowtheGrinchStoleChristmas.jpg', 'Dr. Seuss\' How the Grinch Stole Christmas!', '60s', 'A grumpy hermit hatches a plan to steal Christmas from the Whos of Whoville.', 'DrSeussHowtheGrinchStoleChristmas.mp4', '1966', NULL),
(40, 'TheJungleBook.jpg', 'The Jungle Book', '60s', 'Bagheera the Panther and Baloo the Bear have a difficult time trying to convince a boy to leave the jungle for human civilization.', 'TheJungleBook.mp4', '1967', NULL),
(41, 'Vertigo.jpg', 'Vertigo', '50s', 'A former police detective juggles wrestling with his personal demons and becoming obsessed with a hauntingly beautiful woman.', 'Vertigo.mp4', '1958', NULL),
(42, 'SunsetBoulevard.jpg', 'Sunset Boulevard', '50s', 'A screenwriter develops a dangerous relationship with a faded film star determined to make a triumphant return.', 'SunsetBoulevard.mp4', '1950', NULL),
(43, 'RearWindow.jpg', 'Rear Window', '50s', 'A wheelchair-bound photographer spies on his neighbors from his apartment window and becomes convinced one of them has committed murder.', 'RearWindow.mp4', '1954', NULL),
(44, 'AllAboutEve.jpg', 'All About Eve ', '50s', 'A seemingly timid but secretly ruthless ingénue insinuates herself into the lives of an aging Broadway star and her circle of theater friends.', 'AllAboutEve.mp4', '1950', NULL),
(45, 'BridgeontheRiverKwai.jpg', 'Bridge on the River Kwai ', '50s', 'British POWs are forced to build a railway bridge across the river Kwai for their Japanese captors, not knowing that the allied forces are planning to destroy it.', 'TheBridgeOnTheRiverKwai.mp4', '1957', NULL),
(46, 'LadyandtheTramp.jpg', 'Lady and the Tramp', '50s', 'The romantic tale of a sheltered uptown Cocker Spaniel dog and a streetwise downtown Mutt.', 'LadyandtheTramp.mp4', '1955', '1'),
(47, 'Cinderella.jpg', 'Cinderella', '50s', 'When Cinderella\'s cruel stepmother prevents her from attending the Royal Ball, she gets some unexpected help from the lovable mice Gus and Jaq, and from her Fairy Godmother.', 'Cinderella.mp4', '1950', '1'),
(48, 'PeterPan.jpg', 'Peter Pan', '50s', 'Wendy and her brothers are whisked away to the magical world of Neverland with the hero of their stories, Peter Pan.', 'PeterPan.mp4', '1953', '1'),
(49, 'AliceinWonderland.jpg', 'Alice in Wonderland', '50s', 'Alice stumbles into the world of Wonderland. Will she get home? Not if the Queen of Hearts has her way.', 'AliceinWonderland.mp4', '1951', '1'),
(50, 'SleepingBeauty.jpg', 'Sleeping Beauty', '50s', 'After being snubbed by the royal family, a malevolent fairy places a curse on a princess which only a prince can break, along with the help of three good fairies.', 'SleepingBeauty.mp4', '1959', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_cast`
--

DROP TABLE IF EXISTS `tbl_mov_cast`;
CREATE TABLE IF NOT EXISTS `tbl_mov_cast` (
  `mov_cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `cast_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_cast_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_cast`
--

INSERT INTO `tbl_mov_cast` (`mov_cast_id`, `movies_id`, `cast_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 4, 16),
(17, 4, 17),
(18, 4, 18),
(19, 4, 19),
(20, 4, 20),
(21, 5, 21),
(22, 5, 22),
(23, 5, 23),
(24, 5, 24),
(25, 5, 25),
(26, 6, 26),
(27, 6, 27),
(28, 6, 28),
(29, 6, 29),
(30, 6, 30),
(31, 7, 31),
(32, 7, 32),
(33, 7, 33),
(34, 7, 34),
(35, 7, 35),
(36, 8, 36),
(37, 8, 37),
(38, 8, 38),
(39, 8, 39),
(40, 8, 40),
(41, 9, 41),
(42, 10, 42),
(43, 11, 43),
(44, 12, 44),
(45, 13, 45),
(46, 14, 21),
(47, 15, 46),
(48, 16, 47),
(49, 17, 1),
(50, 18, 45),
(51, 19, 52),
(52, 20, 53),
(53, 21, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_country`
--

DROP TABLE IF EXISTS `tbl_mov_country`;
CREATE TABLE IF NOT EXISTS `tbl_mov_country` (
  `mov_country_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `country_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_country`
--

INSERT INTO `tbl_mov_country` (`mov_country_id`, `movies_id`, `country_id`) VALUES
(1, 1, 34),
(2, 1, 134),
(3, 1, 184),
(4, 2, 184),
(5, 2, 183),
(6, 2, 131),
(7, 2, 64),
(8, 3, 12),
(9, 3, 34),
(10, 3, 184),
(11, 4, 184),
(12, 4, 97),
(13, 5, 183),
(14, 5, 184),
(15, 6, 184),
(16, 6, 12),
(17, 7, 184),
(18, 8, 184),
(19, 9, 183),
(20, 9, 184),
(21, 9, 68),
(22, 10, 184),
(23, 11, 184),
(24, 11, 81),
(25, 11, 171);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_director`
--

DROP TABLE IF EXISTS `tbl_mov_director`;
CREATE TABLE IF NOT EXISTS `tbl_mov_director` (
  `mov_director_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `director_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_director`
--

INSERT INTO `tbl_mov_director` (`mov_director_id`, `movies_id`, `director_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 10, 11),
(12, 11, 12),
(13, 12, 13),
(14, 13, 14),
(15, 14, 15),
(16, 15, 16),
(17, 16, 17),
(18, 17, 1),
(19, 18, 19),
(20, 19, 20),
(21, 20, 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

DROP TABLE IF EXISTS `tbl_mov_genre`;
CREATE TABLE IF NOT EXISTS `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 9),
(4, 2, 1),
(5, 2, 5),
(6, 2, 6),
(7, 2, 10),
(8, 3, 1),
(9, 3, 5),
(10, 3, 9),
(11, 4, 1),
(12, 4, 2),
(13, 4, 5),
(14, 4, 9),
(15, 5, 8),
(16, 5, 13),
(17, 5, 14),
(18, 6, 5),
(19, 6, 6),
(20, 6, 10),
(21, 7, 1),
(22, 7, 2),
(23, 7, 3),
(24, 7, 15),
(25, 8, 5),
(26, 8, 9),
(27, 9, 3),
(28, 9, 5),
(29, 9, 16),
(30, 10, 14),
(31, 10, 2),
(32, 10, 3),
(33, 10, 8),
(34, 10, 13),
(35, 11, 2),
(36, 11, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_lang`
--

DROP TABLE IF EXISTS `tbl_mov_lang`;
CREATE TABLE IF NOT EXISTS `tbl_mov_lang` (
  `mov_lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `language_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_lang`
--

INSERT INTO `tbl_mov_lang` (`mov_lang_id`, `movies_id`, `language_id`) VALUES
(1, 1, 45),
(2, 2, 45),
(3, 2, 52),
(4, 2, 59),
(5, 3, 45),
(6, 3, 177),
(7, 4, 45),
(8, 4, 177),
(9, 4, 97),
(10, 5, 45),
(11, 6, 45),
(12, 6, 81),
(13, 7, 45),
(14, 8, 45),
(15, 8, 33),
(16, 8, 160),
(17, 9, 45),
(18, 9, 126),
(19, 9, 59),
(20, 10, 45),
(21, 11, 45),
(22, 11, 52);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_studio`
--

DROP TABLE IF EXISTS `tbl_mov_studio`;
CREATE TABLE IF NOT EXISTS `tbl_mov_studio` (
  `mov_studio_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `studio_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_studio`
--

INSERT INTO `tbl_mov_studio` (`mov_studio_id`, `movies_id`, `studio_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 1),
(18, 18, 17),
(19, 19, 18),
(20, 20, 19),
(21, 21, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_music`
--

DROP TABLE IF EXISTS `tbl_music`;
CREATE TABLE IF NOT EXISTS `tbl_music` (
  `music_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `music_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `music_title` varchar(125) NOT NULL,
  `music_era` varchar(5) NOT NULL,
  `music_storyline` text NOT NULL,
  `music_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `music_release` varchar(125) NOT NULL DEFAULT '19',
  `kids` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`music_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_music`
--

INSERT INTO `tbl_music` (`music_id`, `music_cover`, `music_title`, `music_era`, `music_storyline`, `music_trailer`, `music_release`, `kids`) VALUES
(1, 'NirvanaNevermind.jpg', 'Nirvana - Nevermind', '90s', '', 'NirvanaNevermind.mp3', '1991', NULL),
(2, 'PearlJanTen.jpg', 'Pearl Jan - Ten', '90s', '', 'PearlJamTen.mp3', '1991', NULL),
(3, 'RadioHeadOkComputer.jpg', 'RadioHead - Ok Computer', '90s', '', 'RadiohedOKComputer.mp3', '1997', NULL),
(4, 'SlintSpiderland.jpg', 'Slint - Spiderland', '90s', '', 'SlintSpiderland.mp3', '1991', NULL),
(5, 'TheFlatlandersMoreaLegendThanaBand.jpg', 'The Flatlanders - More a Legend Than a Band', '90s', '', 'TheFlatlandersDallas.mp3', '1990', NULL),
(6, 'CarlOrffMusicForChildren.jpg', 'Carl Orff - Music For Children', '90s', '', 'CarlOrffMusicForChildren.mp3', '1990', '1'),
(7, 'BagpussTheSongs&Music.jpg', 'Bagpuss - The Songs & Music', '90s', '', 'BagpussTheSongsAndMusic.mp3', '1999', '1'),
(8, 'DerecBrownHaHaHa.jpg', 'Derec Brown - Ha! Ha! Ha!', '90s', '', 'DerekBrownHaHaHa.mp3', '1992', '1'),
(9, 'RogerHargreavesMrTickle.jpg', 'Roger Hargreaves - Mr. Tickle', '90s', '', 'RogerHargreavesMrTickles.mp3', '1993', '1'),
(10, 'TinyTotsClockworkToys.jpg', 'Tiny Tots - Clockwork Toys', '90s', '', 'TinyTotsClockworkToys.mp3', '1993', '1'),
(11, 'PrinceSignOtheTimes.jpg', 'Prince - Sign \"O\" the Times', '80s', '', 'PrinceSignOtheTimes.mp3', '1987', NULL),
(12, 'PaulSimonGraceland.jpg', 'Paul Simon - Graceland', '80s', '', 'PaulSimonGraceland.mp3', '1986', NULL),
(13, 'PixiesDoolittle.jpg', 'Pixies - Doolittle', '80s', '', 'PixiesDoolittle.mp3', '1989', NULL),
(14, 'TheStoneRosesTheStoneRoses.jpg', 'The Stone Roses - The Stone Roses', '80s', '', 'TheStoneRosesTheStoneRoses.mp3', '1989', NULL),
(15, 'TheSmithsTheQueenisDead.jpg', 'The Smiths - The Queen is Dead', '80s', '', 'TheSmithsTheQueenisDead.mp3', '1986', NULL),
(16, 'TheSingingKettleHelloSong.jpg', 'The Singing Kettle - Hello Song', '80s', '', 'TheSingingKettleHelloSong.mp3', '1982', '1'),
(17, 'TrollsInThePantry.jpg', 'Trolls In The Pantry!', '80s', '', 'TrollsInThePantry.mp3', '1989', '1'),
(18, 'RobertTearThreeCheersForPooh.jpg', 'Robert Tear - Three Cheers For Pooh', '80s', '', 'RobertTearThreeCheersForPoohSideA.mp3', '1981', '1'),
(19, 'TheTeddyBearsPicnic.jpg', 'The Teddy Bears\' Picnic', '80s', '', 'TeddyBearsPicnicSungByAnneMurray.mp3', '1987', '1'),
(20, 'PuddingAndPieOneTwoBuckleMyShoe.jpg', 'Ian Beck & Sarah Williams* – Pudding & Pie (Favorite Nursery Rhymes)', '80s', '', 'PuddingAndPieOneTwoBuckleMyShoe.mp3', '1983', '1'),
(21, 'BobDylanBloodontheTracks.jpg', 'Bob Dylan - Blood on the Tracks', '70s', '', 'BobDylanBloodontheTracks.mp3', '1975', NULL),
(22, 'PinkFloydTheDarkSideoftheMoon.jpg', 'Pink Floyd - The Dark Side of the Moon', '70s', '', 'PinkFloydDarkSideOfTheMoon.mp3', '1973', NULL),
(23, 'JoniMitchellCourtandSpark.jpg', 'Joni Mitchell - Court and Spark', '70s', '', 'JoniMitchellCourtandSpark.mp3', '1974', NULL),
(24, 'TheClashLondonCalling.jpg', 'The Clash - London Calling', '70s', '', 'TheClashLondonCalling.mp3', '1979', NULL),
(25, 'DavidBowieHunkyDory.jpg', 'David Bowie - Hunky Dory', '70s', '', 'DavidBowieHunkyDory.mp3', '1971', NULL),
(26, 'BurlIvesLittleWhiteDuck.jpg', 'Burl Ives - Little White Duck', '70s', '', 'BurlIvesLittleWhiteDuck.mp3', '1974', '1'),
(27, 'NolaYorkListenWithMother.jpg', 'Nola York - Listen With Mother', '70s', '', 'NolaYorkListenWithMother.mp3', '1977', '1'),
(28, 'TheHappyGangHeyDiddleDiddle.jpg', 'The Happy Gang - Hey Diddle Diddle', '70s', '', 'TheHappyGangHeyDiddleDiddle.mp3', '1978', '1'),
(29, 'ChildrenAccompaniedByEiraDaviesBirdsBeesAndAnimals.jpg', 'Children Accompanied By Eira Davies - Birds, Bees And Animals', '70s', '', 'TheBirdsAndTheBeesABCKids.mp3', '1974', '1'),
(30, 'BeatrixPotterTheTaleOfPeterRabbitAndOtherStories.jpg', 'Beatrix Potter - The Tale Of Peter Rabbit And Other Stories', '70s', '', 'BeatrixPotterTheTaleOfPeterRabbit.mp3', '1978', '1'),
(31, 'TheBeatlesRevolver.jpg', 'The Beatles - Revolver', '60s', '', 'TheBeatlesRevolver.mp3', '1966', NULL),
(32, 'TheBeachBoysPetSounds.jpg', 'The Beach Boys - Pet Sounds', '60s', '', 'TheBeachBoysPetSounds.mp3', '1966', NULL),
(33, 'TheJimiHendrixExperienceElectricLadyland.jpg', 'The Jimi Hendrix Experience - Electric Ladyland', '60s', '', 'TheJimiHendrixExperienceElectricLadyland.mp3', '1968', NULL),
(34, 'TheBandTheBand.jpg', 'The Band - The Band', '60s', '', 'TheBandTheBand.mp3', '1969', NULL),
(35, 'ElvisPresleyFromElvisInMemphis.jpg', 'Elvis Presley - From Elvis In Memphis', '60s', '', 'ElvisPresleyFromElvisInMemphis.mp3', '1969', NULL),
(36, 'MitchMiller&HisOrchestraPopeyeTheSailorMan.jpg', 'Mitch Miller & His Orchestra - Popeye The Sailor Man', '60s', '', 'JackMercerPopeyeTheSailorMan.mp3', '1962', '1'),
(37, 'OldMacdonaldHadAFarm.jpg', 'Old Macdonald Had A Farm', '60s', '', 'OldMacdonaldHadAFarm.mp3', '1962', '1'),
(38, 'TheKiddielandChorusSongsForChildren.jpg', 'The Kiddieland Chorus - Songs For Children', '60s', '', 'KiddielandChorusSongsForChildren.mp3', '1965', '1'),
(39, 'TheGoldenChildrensChorusPollyWollyDoodleAndTheHappyWanderer.jpg', 'The Golden Children\'s Chorus - Polly Wolly Doodle And The Happy Wanderer', '60s', '', 'TheGoldenChildrensChorusPollyWollyDoodleAndTheHappyWanderer.mp3', '1962', '1'),
(40, 'DanceAndSingMotherGooseWithABeatleBeat.jpg', 'Dance And Sing Mother Goose With A Beatle Beat', '60s', '', 'DanceAndSingMotherGooseWithABeatleBeat.mp3', '1964', '1'),
(41, 'MilesDavisKindofBlue.jpg', 'Miles Davis - Kind of Blue', '50s', '', 'MilesDavisSoWhat.mp3', '1959', NULL),
(42, 'ElvisPresleyElvisPresley.jpg', 'Elvis Presley - Elvis Presley', '50s', '', 'ElvisPresleyElvisPresley.mp3', '1956', NULL),
(43, 'FrankSinatraComeFlywithMe.jpg', 'Frank Sinatra - Come Fly with Me', '50s', '', 'FrankSinatraComeFlywithMe.mp3', '1958', NULL),
(44, 'GlennGouldBachTheGoldbergVariations.jpg', 'Glenn Gould - Bach: The Goldberg Variations', '50s', '', 'GlennGouldBachTheGoldbergVariations.mp3', '1956', NULL),
(45, 'RayCharlesTheGeniusofRayCharles.jpg', 'Ray Charles - The Genius of Ray Charles', '50s', '', 'RayCharlesTheGeniusofRayCharles.mp3', '1959', NULL),
(46, 'RogerWhitePiedPiper.jpg', 'Roger White - Pied Piper', '50s', '', 'RogerWhiteThePiedPiper.mp3', '1952', '1'),
(47, 'DannyKayeTubbytheTuba.jpg', 'Danny Kaye - Tubby the Tuba', '50s', '', 'DannyKayeTubbytheTuba.mp3', '1950', '1'),
(48, 'TootsCamarataAndHisOrchestraBambi.jpg', 'Toots Camarata And His Orchestra - Bambi', '50s', '', 'CamarataBambi.mp3', '1957', '1'),
(49, 'HenryHallHushHushHushHereComesTheBogeyman.jpg', 'Henry Hall - Hush, Hush, Hush, Here Comes The Bogeyman', '50s', '', 'HenryHallHushHushHushHereComesTheBogeyman.mp3', '1950', '1'),
(50, 'CyrilRitchardRideACockHorseAndOtherNurseryRhymes.jpg', 'Cyril Ritchard - Ride A Cock Horse And Other Nursery Rhymes', '50s', '', 'CyrilRitchardRideACockHorseAndOtherNurseryRhymes.mp3', '1958', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_studio`
--

DROP TABLE IF EXISTS `tbl_studio`;
CREATE TABLE IF NOT EXISTS `tbl_studio` (
  `studio_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `studio_name` varchar(125) NOT NULL,
  PRIMARY KEY (`studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_studio`
--

INSERT INTO `tbl_studio` (`studio_id`, `studio_name`) VALUES
(1, 'Marvel Studios'),
(2, 'Syncopy'),
(3, 'Donners Company'),
(4, 'Kate Street Picture Company'),
(5, 'Mandeville Films'),
(6, 'Cross Creek Pictures'),
(7, 'Twentieth Century Fox Film Corporation'),
(8, 'Lava Bear Films'),
(9, 'Hurwitz Creative'),
(10, 'DreamWorks Animation'),
(11, 'Regency Enterprises'),
(12, 'Wildgaze Films'),
(13, 'Sony Pictures Entertainment (SPE)'),
(14, 'Majestic Filmproduktion'),
(15, 'Lucasfilm'),
(16, 'Bold Films'),
(17, 'Voltage Pictures'),
(18, 'Warner Bros.'),
(19, 'Fox 2000 Pictures'),
(20, 'Weinstein Company');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tvshows`
--

DROP TABLE IF EXISTS `tbl_tvshows`;
CREATE TABLE IF NOT EXISTS `tbl_tvshows` (
  `tvshows_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tvshows_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `tvshows_title` varchar(125) NOT NULL,
  `tvshows_era` varchar(5) NOT NULL,
  `tvshows_storyline` text NOT NULL,
  `tvshows_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `tvshows_release` varchar(125) NOT NULL DEFAULT '19',
  `kids` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`tvshows_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tvshows`
--

INSERT INTO `tbl_tvshows` (`tvshows_id`, `tvshows_cover`, `tvshows_title`, `tvshows_era`, `tvshows_storyline`, `tvshows_trailer`, `tvshows_release`, `kids`) VALUES
(1, 'TheFreshPrinceOfBelAir.jpg', 'Fresh Prince of Bel-Air', '90s', 'The Fresh Prince of Bel-Air was a 90s African-American sitcom that starred Will Smith as a teenager from a tough neighborhood in West Philadelphia, whose mother sends him to live with their wealthy relatives', 'TheFreshPrinceOfBelAir.mp4', '1990', NULL),
(2, 'Friends.jpg', 'Friends', '90s', 'Friends is a 90\'s Comedy TV show, based in Manhattan, about 6 friends who go through just about every life experience imaginable together; love, marriage, divorce, children, heartbreaks, fights, new jobs and job losses and all sorts of drama.', 'Friends.mp4', '1994', NULL),
(3, 'BuffytheVampireSlayer.jpg', 'Buffy the Vampire Slayer', '90s', 'A young woman, destined to slay vampires, demons and other infernal creatures, deals with her life fighting evil, with the help of her friends.', 'BuffytheVampireSlayer.mp4', '1997', NULL),
(4, 'Frasier.jpg', 'Frasier', '90s', 'Dr. Frasier Crane moves back to his hometown of Seattle, where he lives with his father, and works as a radio psychiatrist.', 'Frasier.mp4', '1993', NULL),
(5, 'TheX-Files.jpg', 'The X-Files', '90s', 'Two F.B.I. Agents, Fox Mulder the believer and Dana Scully the skeptic, investigate the strange and unexplained, while hidden forces work to impede their efforts.', 'TheX-Files.mp4', '1993', NULL),
(6, 'Rugrats.jpg', 'Rugrats', '90s', 'The cartoon misadventures of four babies and their snotty older cousin as they face the things in life they don\'t understand.', 'Rugrats.mp4', '1990', '1'),
(7, 'Doug.jpg', 'Doug', '90s', 'The life of a young boy as he meets friends, falls in love, maneuvers his way through grade 6 and writes all about it in his journal.', 'Doug.mp4', '1991', '1'),
(8, 'TheAdventuresOfPeteAndPete.jpg', 'The Adventures of Pete & Pete', '90s', 'This delightfully quirky show looks at the lives and adventures of two red-headed brothers with the same name.', 'TheAdventuresOfPeteAndPete.mp4', '1994', '1'),
(9, 'HeyArnold!.jpg', 'Hey Arnold', '90s', 'The everyday life of Arnold, a fourth-grader in a nameless city that resembles Brooklyn, New York, who lives in a multi-racial boarding house with his grandparents and a motley assortment of friends and neighbors.', 'HeyArnold!.mp4', '1996', '1'),
(10, 'LegendsoftheHiddenTemple.jpg', 'Legends of the Hidden Temple', '90s', 'Teams compete in elimination challenges with the final team going on to search for the treasure inside the titular Mesoamerican \"Hidden Temple\".', 'LegendsoftheHiddenTemple.mp4', '1993', '1'),
(11, 'Cheers.jpg', 'Cheers', '80s', 'The regulars of the Boston bar \"Cheers\" share their experiences and lives with each other while drinking or working at the bar where everybody knows your name.', 'Cheers.mp4', '1982', NULL),
(12, 'MacGyver.jpg', 'MacGyver', '80s', 'The adventures of a secret Agent armed with almost infinite scientific resourcefulness.', 'MacGyver.mp4', '1985', NULL),
(13, 'MarriedWithChildren.jpg', 'Married... With Children', '80s', 'Al Bundy is a misanthropic women\'s shoe salesman with a miserable life. He hates his job, his wife is lazy, his son is dysfunctional (especially with women), and his daughter is dim-witted and promiscuous.', 'MarriedWithChildren.mp4', '1987', NULL),
(14, 'KnightRider.jpg', 'Knight Rider', '80s', 'A lone crimefighter battles the forces of evil with the help of a virtually indestructible and artificially intelligent supercar.', 'KnightRider.mp4', '1982', NULL),
(15, 'StarTrekTheNextGeneration.jpg', 'Star Trek: The Next Generation', '80s', 'Set almost 100 years after Captain Kirk\'s five-year mission, a new generation of Starfleet officers set off in the U.S.S. Enterprise-D on their own mission to go where no one has gone before.', 'StarTrekTheNextGeneration.mp4', '1987', NULL),
(16, 'DoubleDareHome.jpg', 'Double Dare', '80s', 'One in a long-running series of game shows, where two-member teams of children compete to answer questions and complete stunts.', 'DoubleDareHome.mp4', '1986', '1'),
(17, 'Alf.jpg', 'Alf', '80s', 'A furry alien wiseguy comes to live with the Tanner family after crashing into their garage.', 'Alf.mp4', '1986', '1'),
(18, 'InspectorGadget.jpg', 'Inspector Gadget', '80s', 'A bumbling bionic police inspector stumbles about on his cases, while his niece and dog secretly do the real investigative work.', 'InspectorGadget.mp4', '1983', '1'),
(19, 'ThunderCats.jpg', 'ThunderCats', '80s', 'A team of humanoid cats fight evil in their adopted home world.', 'ThunderCats.mp4', '1985', '1'),
(20, 'HeMan.mp4.jpg', 'He-Man', '80s', 'The most powerful man in the universe, He-Man, goes against the evil forces of Skeletor to save the planet Eternia and to protect the secrets of Castle Grayskull.', 'HeMan.mp4', '1983', '1'),
(21, 'WonderWoman.jpg', 'Wonder Woman', '70s', 'The adventures of the greatest of the female superheroes.', 'WonderWoman.mp4', '1975', NULL),
(22, 'UFO.jpg', 'UFO', '70s', 'The missions of the Supreme Headquarters Alien Defence Organization, which defends Earth from extra-terrestrial threats.', 'UFO.mp4', '1970', NULL),
(23, 'ThePartridgeFamily.jpg', 'The Partridge Family', '70s', 'The humorous adventures of a family of pop musicians.', 'ThePartridgeFamily.mp4', '1970', NULL),
(24, 'TheMuppetShow.jpg', 'The Muppets Show', '70s', 'Kermit the Frog and his fellow Muppets put on a vaudeville show at their theatre, bringing in a famous celebrity to help out for each episode.', 'TheMuppetShow.mp4', '1974', '1'),
(25, 'BattlestarGalactica.jpg', 'Battlestar Galactica', '70s', 'After the destruction of the Twelve Colonies of Mankind, the last major fighter carrier leads a makeshift fugitive fleet in a desperate search for the legendary planet Earth.', 'BattlestarGalactica.mp4', '1979', NULL),
(26, 'LittleHouseOnThePrairie.jpg', 'Little House on the Prairie', '70s', 'The life and adventures of the Ingalls family in the nineteenth century American Midwest.', 'LittleHouseOnThePrairie.mp4', '1974', NULL),
(27, 'SuperFriends.jpg', 'Super Friends', '70s', 'The greatest of the DC Comics superheroes work together to uphold the good with the help of some young proteges.', 'SuperFriends.mp4', '1973', '1'),
(28, 'TheManyAdventuresOfWinnieThePooh.jpg', 'The Many Adventures of Winnie the Pooh', '70s', 'In this collection of animated shorts based on the stories and characters by A.A. Milne, Winnie the Pooh, a honey-loving teddy bear, embarks on some eccentric adventures.', 'TheManyAdventuresOfWinnieThePooh.mp4', '1977', '1'),
(29, 'CaptainCavemanAndTheTeenAngels.jpg', 'Captain Caveman and the Teen Angels', '70s', 'The adventures of a superhero caveman and a trio of female amateur detectives.', 'CaptainCavemanAndTheTeenAngels.mp4', '1977', '1'),
(30, 'FatAlbertAndTheCosbyKids.jpg', 'Fat Albert and the Cosby Kids', '70s', 'The educational adventures of a group of Afro-American inner city kids.', 'FatAlbertAndTheCosbyKids.mp4', '1972', '1'),
(31, 'BeverlyHillbillies.jpg', 'The Beverly Hillbillies', '60s', 'A nouveau riche hillbilly family moves to Beverly Hills and shakes up the privileged society with their hayseed ways.', 'BeverlyHillbillies.mp4', '1962', NULL),
(32, 'Bewitched.jpg', 'Bewitched', '60s', 'A witch married to an ordinary man cannot resist using her magic powers to solve the problems her family faces.', 'Bewitched.mp4', '1964', NULL),
(33, 'TheAddamsFamily.jpg', 'The Addams Family', '60s', 'The misadventures of a blissfully macabre but extremely loving family.', 'TheAddamsFamily.mp4', '1964', NULL),
(34, 'LostinSpace.jpg', 'Lost in Space', '60s', 'A space colony family struggles to survive when a spy/accidental stowaway throws their ship hopelessly off course.', 'LostinSpace.mp4', '1965', NULL),
(35, 'ThatGirl.jpg', 'That Girl', '60s', 'An aspiring actress moves from her hometown of Brewster, New York, to try to make it big in New York City, having to take several offbeat \"temp\" jobs to support herself in between her various auditions and bit parts.', 'ThatGirl.mp4', '1966', NULL),
(37, 'Birdman.jpg', 'Birdman', '60s', 'A winged superhero who gets his powers from the sun battles various evildoers with the help of his eagle sidekick Avenger.', 'Birdman.mp4', '1967', '1'),
(38, 'WackyRaces.jpg', 'Wacky Races', '60s', 'The participants of an unusual car race compete around America.', 'WackyRaces.mp4', '1968', '1'),
(39, 'SpaceGhost.jpg', 'Space Ghost', '60s', 'The adventures of a space superhero who can become invisible and his sidekicks.', 'SpaceGhost.mp4', '1966', '1'),
(40, 'JohnnyQuest.jpg', 'Johnny Quest', '60s', 'The Quest family and their bodyguard investigate strange phenomena and battle villains around the world.', 'JohnnyQuest.mp4', '1964', '1'),
(41, 'ILoveLucy.jpg', 'I Love Lucy', '50s', 'The wife of a band leader constantly tries to become a star - in spite of her having no talent, and gets herself (along with her best friend) into the funniest predicaments.', 'ILoveLucy.mp4', '1951', NULL),
(42, 'FatherKnowsBest.jpg', 'Father Knows Best', '50s', 'The popular radio show comes to life in this hit sitcom about a wise family man, Jim Anderson, his common-sense wife Margaret and their children Betty, Bud and Kathy.', 'FatherKnowsBest.mp4', '1954', NULL),
(43, 'AlfredHitchcockPresents.jpg', 'Alfred Hitchcock Presents ', '50s', 'Series of unrelated short stories covering elements of crime, horror, drama, and comedy about people of different backgrounds committing murders, suicides, thefts, and other sorts of crime caused by certain motivations, perceived or not.', 'AlfredHitchcockPresents.mp4', '1955', NULL),
(44, 'TheLoneRanger.jpg', 'The Lone Ranger', '50s', 'Wealthy rancher Reese Kilgore aims to grab silver-rich Indian land by skilfully pitting Indians against settlers but the suspicious territorial governor sends The Lone Ranger to investigate.', 'TheLoneRanger.mp4', '1956', NULL),
(45, 'TheLifeandLegendofWyattEarp.jpg', 'The Life and Legend of Wyatt Earp', '50s', 'Loosely based on historical fact, the series portrays the gunslinging Wyatt Earp and his successful determination for law and order.', 'TheLifeandLegendofWyattEarp.mp4', '1955', NULL),
(46, 'Lassie.jpg', 'Lassie', '50s', 'The ongoing saga of the Martin family and their beloved collie, Lassie.', 'Lassie.mp4', '1954', '1'),
(47, 'RockyandBullwinkle.jpg', 'The Rocky and Bullwinkle Show', '50s', 'Rocky, a plucky flying squirrel and Bullwinkle, a bumbling but lovable moose, have a series of ongoing adventures.', 'RockyandBullwinkle.mp4', '1959', '1'),
(48, 'MickeyMouseClub.jpg', 'The Mickey Mouse Club', '50s', 'Mickey Mouse hosts a youth-oriented variety show.', 'MickeyMouseClub.mp4', '1955', '1'),
(49, 'TheRuffReddyShow.jpg', 'The Ruff & Reddy Show', '50s', 'The adventures of Ruff, a smart and steadfast cat, and Reddy, a good-hearted and brave but not a very bright dog.', 'TheRuffReddyShow.mp4', '1957', '1'),
(50, 'FelixtheCat.jpg', 'Felix the Cat', '50s', 'The complete 1958-1959 full-color series!', 'FelixtheCat.mp4', '1958', '1'),
(51, 'BatmanShow.jpg', 'Batman', '60s', 'The series focuses on Batman and Robin as they defend Gotham City from its various criminals.\r\n', 'Batman.mp4', '1966', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_picture` varchar(80) NOT NULL DEFAULT 'defaultpic.jpg',
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `kids` varchar(80) DEFAULT NULL,
  `user_admin` int(2) DEFAULT NULL,
  `user_access` int(2) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_picture`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `kids`, `user_admin`, `user_access`) VALUES
(1, 'trevor.png', 'Trevor', 'user1', 'pas', 't@t.com', '2019-02-01 19:07:35', '::1', NULL, 1, 1),
(2, 'andres.jpg', 'Andres', 'andresito', '123', 'andresgallo@gamil.com', '2021-03-07 08:02:07', 'no', NULL, NULL, NULL),
(3, 'sandro.jpg', 'Sandro', 'Sandrini', '123', 'sandro@gmail.com', '2021-03-07 08:21:54', 'no', NULL, NULL, NULL),
(7, 'defaultpic.jpg', 'panocha', 'panocha', 'sucia', 'panuchis@hotmail.com', '2021-04-17 01:24:12', 'no', '', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
