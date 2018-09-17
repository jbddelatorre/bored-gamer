-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2018 at 03:46 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boardgames`
--

-- --------------------------------------------------------

--
-- Table structure for table `average_length`
--

CREATE TABLE `average_length` (
  `id` int(11) NOT NULL,
  `average_length_names` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `average_length`
--

INSERT INTO `average_length` (`id`, `average_length_names`) VALUES
(1, 'Garden'),
(2, 'Jewelery'),
(3, 'Sports'),
(4, 'Baby');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_names` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_names`) VALUES
(1, 'board_games'),
(2, 'card_games'),
(3, 'special_games');

-- --------------------------------------------------------

--
-- Table structure for table `game_types`
--

CREATE TABLE `game_types` (
  `id` int(11) NOT NULL,
  `game_type_names` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_types`
--

INSERT INTO `game_types` (`id`, `game_type_names`) VALUES
(1, 'strategy'),
(2, 'party'),
(3, 'for_fun'),
(4, 'kids'),
(5, 'cooperative'),
(6, 'puzzle');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `item_desc` varchar(1000) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `min_players` int(11) NOT NULL,
  `max_players` int(11) NOT NULL,
  `average_length_id` int(11) NOT NULL,
  `game_types_id` int(11) NOT NULL,
  `trends_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `rating` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_desc`, `item_image`, `name`, `price`, `min_players`, `max_players`, `average_length_id`, `game_types_id`, `trends_id`, `categories_id`, `publisher`, `rating`) VALUES
(1, 'Nondisp spiral fx shaft of ulna, unsp arm, 7thE', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', 'Gabtune', 4117, 1, 7, 2, 3, 5, 3, 'RUB', 1.54),
(2, 'Displ seg fx shaft of r tibia, 7thM', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', 'Dynabox', 1917, 1, 9, 1, 1, 4, 3, 'IRR', 3.46),
(3, 'Ulcerative colitis, unspecified', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', 'Youopia', 2898, 3, 10, 4, 1, 4, 2, 'CNY', 4.35),
(4, 'Rupture of card wall w/o hemoperic as current comp fol AMI', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 'Bubbletube', 3533, 4, 10, 2, 3, 5, 2, 'CUP', 3.41),
(6, 'Necrobiosis lipoidica, not elsewhere classified', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', 'Photolist', 3551, 3, 4, 3, 2, 1, 1, 'IDR', 1.48),
(7, 'Poisn by insulin and oral hypoglycemic drugs, undet, subs', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', 'Meevee', 3045, 3, 4, 1, 2, 3, 3, 'CZK', 1.54),
(9, 'Sltr-haris Type I physl fx lower end humer, left arm, init', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', 'Jaxspan', 2655, 2, 7, 4, 1, 5, 1, 'PLN', 2.26),
(11, 'Military operations involving oth fire/hot subst, civilian', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', 'Edgewire', 3840, 4, 5, 1, 2, 1, 2, 'IDR', 1.47),
(12, 'Nondisplaced fracture of body of right calcaneus', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 'Wikizz', 2250, 4, 9, 4, 2, 2, 1, 'CZK', 2.59),
(13, 'Complete traumatic amputation of left great toe, subs encntr', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', 'Avamm', 3468, 2, 10, 4, 1, 1, 2, 'EUR', 3.01),
(14, 'Unspecified injury of left hip', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', 'Podcat', 3360, 2, 10, 1, 1, 4, 3, 'ALL', 4.36),
(15, 'Open bite of nose, subsequent encounter', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', 'Fivespan', 241, 2, 5, 2, 1, 1, 3, 'NOK', 3.11),
(17, 'Puncture wound with foreign body of unspecified part of neck', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', 'Ooba', 4562, 2, 5, 4, 3, 3, 2, 'MNT', 3.52),
(18, 'Open bite, left foot, initial encounter', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', 'Youopia', 1070, 2, 7, 1, 3, 1, 2, 'ARS', 2.41),
(19, 'Jump/div from boat striking surfc causing drown, sequela', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', 'Fanoodle', 2074, 4, 7, 3, 2, 2, 3, 'BRL', 1.69),
(20, 'Poisoning by oth systemic anti-infect/parasit, undetermined', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', 'Quire', 4203, 3, 5, 2, 2, 1, 1, 'PEN', 4.69),
(21, 'Other secondary chronic gout, left wrist', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 'Kare', 479, 3, 5, 3, 3, 1, 1, 'SEK', 1.54),
(22, 'Unspecified open wound of unspecified hand, subs encntr', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 'Jabberstorm', 1533, 3, 4, 1, 3, 3, 2, 'CUP', 2.63),
(23, 'Viral hepatitis complicating childbirth', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', 'Tekfly', 1311, 3, 6, 1, 3, 2, 2, 'CUP', 4.4),
(24, 'Infect/inflm reaction due to int fix of site, subs', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', 'Yambee', 3539, 1, 7, 3, 3, 3, 3, 'IDR', 4.4),
(27, 'Crushing injury of unspecified knee', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', 'Thoughtsphere', 2346, 1, 6, 1, 1, 4, 2, 'CNY', 4.31),
(28, 'Disp fx of epiphy (separation) (upper) of unsp femr, 7thH', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', 'Browsecat', 2198, 2, 8, 1, 1, 2, 3, 'IDR', 3.23),
(30, 'Wedge comprsn fx third lum vertebra, init for opn fx', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', 'Topicware', 631, 1, 5, 1, 2, 2, 3, 'RUB', 2.76),
(36, 'Disp fx of base of neck of unsp femur, init for clos fx', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', 'Geba', 4803, 2, 7, 3, 2, 5, 1, 'GTQ', 4.03),
(37, 'Burn of third degree of abdominal wall, subsequent encounter', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', 'Edgeblab', 408, 1, 8, 2, 2, 3, 1, 'IDR', 1.74),
(39, 'Disp fx of nk of unsp rad, 7thF', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', 'Twitterwire', 2015, 3, 5, 4, 2, 4, 1, 'DOP', 2.76),
(40, 'Laceration of musc/fasc/tend at shldr/up arm, left arm, subs', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 'Kwimbee', 2773, 2, 6, 3, 2, 2, 2, 'EUR', 1.86),
(41, 'Other reduction defects of right lower limb', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', 'Flashset', 3205, 3, 6, 4, 2, 4, 1, 'EUR', 2.54),
(42, 'Malignant neoplasm of right cornea', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', 'Quinu', 4363, 2, 7, 4, 1, 5, 1, 'MUR', 2.59),
(43, 'Stress fracture, right toe(s), subs for fx w delay heal', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', 'Wordpedia', 3487, 1, 9, 1, 1, 3, 2, 'IDR', 1.77),
(46, 'Oth injury due to oth accident to passenger ship, init', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', 'Youfeed', 564, 1, 4, 4, 2, 3, 1, 'CLP', 1.54),
(47, 'Passenger in pk-up/van injured in collision w hv veh nontraf', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', 'Fadeo', 1421, 2, 7, 4, 3, 2, 1, 'IDR', 1.32),
(48, 'Superficial thrombophlebitis in pregnancy, unsp trimester', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', 'Jayo', 1116, 2, 4, 2, 1, 2, 2, 'CNY', 4.12),
(49, 'Calculus of GB and bile duct w/o cholecyst w/o obstruction', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 'Feedspan', 3488, 3, 5, 2, 2, 2, 1, 'CNY', 3.34),
(50, 'Ankylosis, left hand', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', 'Meevee', 4254, 1, 8, 2, 1, 5, 2, 'IDR', 4.27),
(51, 'Puncture wound with foreign body of ankle', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', 'Aimbu', 4701, 2, 9, 3, 3, 5, 2, 'IRR', 1.32),
(52, 'Oth nondisp fx of upper end of left humerus, init for opn fx', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 'Realcube', 4746, 1, 7, 2, 1, 3, 1, 'PHP', 4.96),
(54, 'Path fx in oth dis, left radius, subs for fx w routn heal', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 'Dabshots', 4460, 2, 8, 4, 2, 4, 2, 'CRC', 4.44),
(55, 'Labor and delivery complicated by cord comp, unsp, fetus 2', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 'Gabcube', 2613, 2, 5, 4, 3, 2, 3, 'JPY', 2.48),
(56, 'Other injury of ovary, unspecified', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', 'Kwideo', 1738, 1, 9, 2, 3, 4, 1, 'EUR', 3.31),
(59, 'Complete lesion of L2 level of lumbar spinal cord', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', 'Nlounge', 592, 3, 6, 3, 2, 3, 3, 'IDR', 4.47),
(60, 'Primary blast injury oth prt small intestine, init encntr', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', 'Realmix', 4201, 4, 6, 1, 1, 5, 1, 'IDR', 4.14),
(61, 'Dislocation of unspecified ankle joint, sequela', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', 'Shufflester', 3844, 1, 4, 1, 2, 5, 2, 'PLN', 2.65),
(62, 'Displ Maisonneuve\'s fx r leg, 7thF', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', 'Agimba', 2354, 1, 5, 3, 1, 4, 2, 'CNY', 4.85),
(64, 'Oth fx unsp metacarpal bone, subs for fx w routn heal', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', 'Wordify', 3169, 3, 10, 4, 1, 2, 1, 'CNY', 3.36),
(65, 'Other disorders of orbit', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', 'Brightdog', 1898, 3, 6, 2, 3, 3, 3, 'PHP', 2.59),
(67, 'Ben lipomatous neoplm of skin, subcu of head, face and neck', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', 'Babbleset', 4589, 4, 5, 2, 3, 5, 2, 'IDR', 2.98),
(68, 'Disp fx of olecran pro w intartic extn unsp ulna, 7thH', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', 'Eare', 2713, 1, 6, 1, 3, 1, 3, 'RUB', 3.35),
(70, 'Lacerat abd wall w fb, l upr q w/o penet perit cav, subs', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 'Buzzshare', 894, 2, 8, 4, 2, 1, 3, 'PHP', 4.19),
(71, 'Pasngr on bus injured in clsn w statnry object in traf, subs', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', 'Twimbo', 4293, 4, 7, 4, 1, 2, 1, 'PLN', 4.23),
(72, 'Maternal care for oth rhesus isoimmunization, unsp trimester', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', 'Wordtune', 3566, 3, 4, 3, 3, 4, 2, 'CNY', 1.38),
(74, 'Focal (segmental) acute infarction of small intestine', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', 'Quire', 2894, 1, 5, 2, 1, 3, 1, 'PHP', 3.94),
(75, 'Unspecified physeal fracture of right calcaneus, sequela', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', 'Yodel', 4559, 2, 6, 2, 2, 2, 1, 'SYP', 2.9),
(77, 'Nondisp trimalleol fx l low leg, 7thQ', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 'Skilith', 4755, 4, 7, 2, 2, 2, 1, 'EUR', 4.96),
(78, 'Displaced comminuted fx shaft of ulna, unsp arm, init', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 'Midel', 559, 4, 9, 3, 2, 2, 2, 'COP', 1.46),
(81, 'Corrosion of cornea and conjunctival sac, left eye', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 'Realbuzz', 4755, 2, 4, 2, 2, 3, 2, 'CNY', 2.16),
(86, 'Unspecified injury of left pulmonary blood vessels', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', 'Leenti', 2847, 2, 8, 1, 3, 1, 1, 'CNY', 3.61),
(87, 'Burn of third degree of ankle and foot', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', 'Cogibox', 3216, 1, 7, 3, 1, 5, 3, 'PHP', 2.26),
(88, 'Unspecified open wound of vocal cord, initial encounter', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 'Bubbletube', 1173, 4, 10, 4, 3, 4, 2, 'THB', 1.28),
(89, 'Nondisp fx of posterior column of right acetabulum, init', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', 'Twinte', 1698, 4, 6, 4, 1, 5, 3, 'EUR', 4.25),
(90, 'Fracture of unsp phalanx of left thumb, init for opn fx', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', 'Youspan', 4152, 1, 7, 3, 1, 2, 2, 'IDR', 4.3),
(91, 'Hemarthrosis, left foot', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 'Wikido', 2058, 3, 8, 3, 1, 2, 1, 'CRC', 3.93),
(93, 'Tinea unguium', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 'Dynazzy', 2897, 3, 9, 4, 3, 4, 3, 'DKK', 1.44),
(94, 'Intestinal capillariasis', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 'Zazio', 4657, 4, 6, 4, 2, 5, 3, 'SAR', 3.81),
(95, 'Unsp superfic inj right eyelid and perioculr area, sequela', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', 'Wordware', 4355, 2, 5, 2, 1, 5, 3, 'IDR', 3.06),
(99, 'Maternal care for other isoimmunization, first trimester', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', 'Dynabox', 4215, 4, 10, 2, 3, 2, 3, 'IDR', 3.82);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_id` int(11) NOT NULL,
  `transaction_num` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_timestamp`, `status_id`, `transaction_num`, `user_id`) VALUES
(1, '0000-00-00 00:00:00', 4, 'S85411D', 54),
(2, '0000-00-00 00:00:00', 1, 'S99299', 87),
(3, '0000-00-00 00:00:00', 2, 'Q8502', 70),
(4, '0000-00-00 00:00:00', 2, 'N25', 73),
(5, '0000-00-00 00:00:00', 1, 'S61109A', 31),
(6, '0000-00-00 00:00:00', 2, 'Y35031S', 76),
(7, '0000-00-00 00:00:00', 5, 'B2702', 72),
(8, '0000-00-00 00:00:00', 5, 'D72824', 59),
(9, '0000-00-00 00:00:00', 2, 'Y36530S', 72),
(10, '0000-00-00 00:00:00', 3, 'M7095', 95),
(11, '0000-00-00 00:00:00', 2, 'W34118S', 84),
(12, '0000-00-00 00:00:00', 1, 'E25', 11),
(13, '0000-00-00 00:00:00', 5, 'S82445D', 26),
(14, '0000-00-00 00:00:00', 5, 'P72', 24),
(15, '0000-00-00 00:00:00', 4, 'C719', 22),
(16, '0000-00-00 00:00:00', 4, 'T59813', 88),
(17, '0000-00-00 00:00:00', 1, 'S31103D', 80),
(18, '0000-00-00 00:00:00', 1, 'S52136M', 2),
(19, '0000-00-00 00:00:00', 1, 'Y37500', 70),
(20, '0000-00-00 00:00:00', 3, 'S52334H', 52),
(21, '0000-00-00 00:00:00', 3, 'M84676P', 41),
(22, '0000-00-00 00:00:00', 3, 'S32011B', 20),
(23, '0000-00-00 00:00:00', 1, 'S62614A', 91),
(24, '0000-00-00 00:00:00', 2, 'S25812', 89),
(25, '0000-00-00 00:00:00', 4, 'K0261', 43),
(26, '0000-00-00 00:00:00', 2, 'S0012XA', 100),
(27, '0000-00-00 00:00:00', 4, 'S93691D', 64),
(28, '0000-00-00 00:00:00', 4, 'S51032S', 95),
(29, '0000-00-00 00:00:00', 2, 'S53014D', 100),
(30, '0000-00-00 00:00:00', 2, 'V8641', 94),
(31, '0000-00-00 00:00:00', 1, 'T604X3S', 81),
(32, '0000-00-00 00:00:00', 4, 'S52513B', 38),
(33, '0000-00-00 00:00:00', 1, 'M4103', 61),
(34, '0000-00-00 00:00:00', 5, 'S31502A', 79),
(35, '0000-00-00 00:00:00', 5, 'S32050A', 56),
(36, '0000-00-00 00:00:00', 3, 'S72351C', 40),
(37, '0000-00-00 00:00:00', 5, 'I029', 35),
(38, '0000-00-00 00:00:00', 2, 'S72036B', 91),
(39, '0000-00-00 00:00:00', 4, 'S3145XD', 23),
(40, '0000-00-00 00:00:00', 1, 'S62035P', 69),
(41, '0000-00-00 00:00:00', 4, 'T427', 32),
(42, '0000-00-00 00:00:00', 5, 'V00822S', 80),
(43, '0000-00-00 00:00:00', 1, 'C8301', 85),
(44, '0000-00-00 00:00:00', 1, 'S82399G', 50),
(45, '0000-00-00 00:00:00', 2, 'V667', 8),
(46, '0000-00-00 00:00:00', 3, 'E1322', 75),
(47, '0000-00-00 00:00:00', 1, 'T503X1A', 22),
(48, '0000-00-00 00:00:00', 1, 'S8513', 49),
(49, '0000-00-00 00:00:00', 5, 'S52399A', 52),
(50, '2010-03-22 16:00:00', 4, 'T63812', 67),
(51, '0000-00-00 00:00:00', 3, 'H930', 55),
(52, '0000-00-00 00:00:00', 5, 'M4154', 33),
(53, '0000-00-00 00:00:00', 2, 'S81032S', 79),
(54, '0000-00-00 00:00:00', 5, 'S12110A', 57),
(55, '0000-00-00 00:00:00', 3, 'Y280XXS', 39),
(56, '0000-00-00 00:00:00', 4, 'V8619XA', 85),
(57, '0000-00-00 00:00:00', 5, 'S53002S', 95),
(58, '0000-00-00 00:00:00', 3, 'S92521', 76),
(59, '0000-00-00 00:00:00', 2, 'M87811', 28),
(60, '0000-00-00 00:00:00', 4, 'C8111', 2),
(61, '0000-00-00 00:00:00', 2, 'H35129', 47),
(62, '0000-00-00 00:00:00', 4, 'S52134M', 27),
(63, '0000-00-00 00:00:00', 2, 'T1590XD', 70),
(64, '0000-00-00 00:00:00', 5, 'T413X6A', 68),
(65, '0000-00-00 00:00:00', 1, 'S61245S', 71),
(66, '0000-00-00 00:00:00', 2, 'G733', 49),
(67, '0000-00-00 00:00:00', 1, 'M93221', 3),
(68, '0000-00-00 00:00:00', 2, 'T63313A', 42),
(69, '0000-00-00 00:00:00', 2, 'S70352', 67),
(70, '0000-00-00 00:00:00', 1, 'S99102A', 42),
(71, '0000-00-00 00:00:00', 4, 'W9432XA', 72),
(72, '0000-00-00 00:00:00', 2, 'S63611S', 37),
(73, '0000-00-00 00:00:00', 2, 'S298XXA', 50),
(74, '0000-00-00 00:00:00', 1, 'S75812A', 53),
(75, '0000-00-00 00:00:00', 5, 'S59012G', 67),
(76, '0000-00-00 00:00:00', 1, 'S15009', 98),
(77, '0000-00-00 00:00:00', 4, 'S21429A', 85),
(78, '0000-00-00 00:00:00', 1, 'T1502XA', 63),
(79, '0000-00-00 00:00:00', 5, 'S5410XS', 97),
(80, '0000-00-00 00:00:00', 3, 'V9331', 1),
(81, '0000-00-00 00:00:00', 4, 'T443X5', 1),
(82, '0000-00-00 00:00:00', 1, 'B2781', 69),
(83, '0000-00-00 00:00:00', 4, 'M06362', 75),
(84, '0000-00-00 00:00:00', 4, 'Y35293D', 45),
(85, '0000-00-00 00:00:00', 3, 'S1234XG', 71),
(86, '0000-00-00 00:00:00', 2, 'T22642', 82),
(87, '0000-00-00 00:00:00', 4, 'S61300A', 63),
(88, '0000-00-00 00:00:00', 3, 'L569', 41),
(89, '0000-00-00 00:00:00', 4, 'S4990XS', 94),
(90, '0000-00-00 00:00:00', 2, 'S82116S', 50),
(91, '0000-00-00 00:00:00', 2, 'S31623S', 43),
(92, '0000-00-00 00:00:00', 3, 'S42102G', 99),
(93, '0000-00-00 00:00:00', 2, 'S42271', 15),
(94, '0000-00-00 00:00:00', 4, 'S59212S', 13),
(95, '0000-00-00 00:00:00', 4, 'T40693D', 11),
(96, '0000-00-00 00:00:00', 1, 'V5910', 75),
(97, '0000-00-00 00:00:00', 4, 'S52692A', 54),
(98, '0000-00-00 00:00:00', 5, 'C140', 8),
(99, '0000-00-00 00:00:00', 5, 'T347', 36),
(100, '0000-00-00 00:00:00', 4, 'S83104D', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders_items`
--

CREATE TABLE `orders_items` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_items`
--

INSERT INTO `orders_items` (`id`, `item_id`, `order_id`, `price`, `quantity`) VALUES
(1, 15, 23, 5860.4, 0),
(2, 2, 1, 5072.59, 0),
(4, 56, 19, 719.61, 0),
(6, 87, 70, 5331.03, 0),
(8, 68, 70, 9261.1, 0),
(9, 68, 27, 4575.04, 0),
(10, 46, 42, 7608.17, 0),
(11, 65, 10, 4471.51, 0),
(12, 71, 53, 8448.74, 0),
(15, 55, 88, 5188.04, 0),
(16, 75, 69, 8349.05, 0),
(18, 50, 41, 3738.72, 0),
(19, 14, 28, 2836.06, 0),
(20, 6, 3, 891.71, 0),
(21, 49, 52, 8132.3, 0),
(22, 74, 1, 7208.06, 0),
(23, 12, 33, 6944.7, 0),
(25, 41, 46, 9885.13, 0),
(26, 64, 4, 2283.08, 0),
(27, 64, 24, 9131.89, 0),
(28, 74, 4, 1208.2, 0),
(29, 87, 96, 1905.69, 0),
(32, 3, 22, 8683.06, 0),
(35, 86, 63, 4025.87, 0),
(36, 42, 6, 9116.98, 0),
(37, 95, 49, 1220.26, 0),
(42, 11, 74, 9577.02, 0),
(43, 90, 86, 8957.86, 0),
(46, 52, 84, 4621.26, 0),
(47, 87, 99, 2822.57, 0),
(49, 51, 20, 9883.82, 0),
(50, 41, 17, 7838.19, 0),
(51, 27, 57, 5944.95, 0),
(52, 19, 97, 1594.82, 0),
(53, 19, 95, 296.86, 0),
(55, 54, 28, 8871.7, 0),
(57, 27, 44, 817.88, 0),
(58, 18, 55, 1451.44, 0),
(60, 21, 100, 5268.27, 0),
(61, 23, 38, 7793.67, 0),
(62, 71, 88, 2891.09, 0),
(63, 22, 22, 8042.45, 0),
(64, 3, 31, 2266.51, 0),
(65, 64, 51, 753.76, 0),
(66, 42, 63, 4279.49, 0),
(67, 12, 60, 7890.66, 0),
(68, 91, 97, 9790.91, 0),
(69, 65, 41, 8745.52, 0),
(71, 64, 67, 7630.56, 0),
(72, 74, 61, 1301.87, 0),
(74, 93, 89, 1370.5, 0),
(75, 89, 6, 9824.29, 0),
(80, 77, 40, 6153.95, 0),
(82, 14, 34, 2218.08, 0),
(83, 21, 61, 2798.07, 0),
(88, 30, 48, 8419.48, 0),
(90, 68, 92, 9214.47, 0),
(91, 86, 34, 9117.75, 0),
(92, 30, 54, 3738.3, 0),
(93, 77, 42, 9143.55, 0),
(94, 20, 85, 5757.42, 0),
(96, 62, 27, 982.17, 0),
(97, 72, 35, 6810.09, 0),
(98, 99, 25, 3818.75, 0),
(100, 50, 58, 8179.99, 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `user_roles` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `user_roles`) VALUES
(1, 'Isordil'),
(2, 'Double T'),
(3, 'LEADER WOMENS LAXATI');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `status_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `status_name`) VALUES
(1, 'GN'),
(2, 'FA'),
(3, 'PO'),
(4, 'CN'),
(5, 'EG');

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `id` int(11) NOT NULL,
  `trend_names` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`id`, `trend_names`) VALUES
(1, 'CBZ'),
(4, 'INBK'),
(3, 'JBHT'),
(2, 'TSRI'),
(5, 'VG');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `roles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `contact`, `address`, `username`, `password`, `roles_id`) VALUES
(1, 'Pansie', 'Massimi', 'pmassimi0@sourceforge.net', '(434) 4718092', '03-A4-18-F7-D3-97', 'pmassimi0', 'dabd57272001ab22db366c75a5d0e8e72e115b28', 3),
(2, 'Simone', 'Pellington', 'spellington1@a8.net', '(431) 5249434', '5A-17-2B-67-CB-24', 'spellington1', 'da69689eb3425e092c5aaeed715719f998c57eb9', 3),
(3, 'Ingar', 'Pennock', 'ipennock2@nih.gov', '(885) 4330415', 'B3-58-74-66-79-0E', 'ipennock2', 'fa02a5a11cd7151d0d79c91c2614ed515fba22e8', 3),
(4, 'Nicol', 'Shieber', 'nshieber3@ifeng.com', '(991) 7234852', '14-EE-16-E8-C5-B1', 'nshieber3', '96a339f81df6881e0e7aa2c2343da9c159e64cec', 2),
(5, 'Adolf', 'Besantie', 'abesantie4@aol.com', '(980) 9511868', '94-B3-48-A4-37-67', 'abesantie4', 'febab0099fb85b4ca787f3e8ddcf23f6416583cc', 1),
(6, 'Fayth', 'Ivers', 'fivers5@elegantthemes.com', '(781) 1056299', 'E3-AF-C2-97-61-26', 'fivers5', 'a5e1901e795db1c9cbd39a8a45587fdb1043671c', 2),
(7, 'Sybille', 'Mughal', 'smughal6@google.fr', '(938) 1152556', 'C7-8B-91-9F-AA-B9', 'smughal6', '6f5ad7c5a8e9f43e2fe606156f37c9aef02e75c4', 3),
(8, 'Howard', 'Kerridge', 'hkerridge7@youtu.be', '(668) 4439514', '3B-D1-AC-79-81-35', 'hkerridge7', '037cae9d8af4cf5c396c439db8042b4eab4aa562', 3),
(9, 'Garreth', 'Molian', 'gmolian8@illinois.edu', '(166) 4834464', 'FC-DC-9D-C8-13-68', 'gmolian8', '7742be99db0c73cde08f53fefc6a6db8b5f9dd0c', 1),
(10, 'Lanie', 'Raine', 'lraine9@artisteer.com', '(977) 4881315', 'EB-11-A6-DA-9E-5B', 'lraine9', '8a76507b2a5b8cd3d4c8ddf906af485d0668f8bf', 3),
(11, 'Angelina', 'Seifenmacher', 'aseifenmachera@bravesites.com', '(155) 9842075', 'AF-FA-E7-8C-09-5A', 'aseifenmachera', '626426edf33dccc021b6aec2dd1827d2ac5162be', 3),
(12, 'Graeme', 'Knutton', 'gknuttonb@mayoclinic.com', '(920) 5733233', 'AB-3E-C3-98-4C-D1', 'gknuttonb', 'ee03927b5f3e8eb18fe415d9d7f8020ed5074b61', 1),
(13, 'Montague', 'Dohrmann', 'mdohrmannc@barnesandnoble.com', '(304) 9359724', '89-64-C2-6C-28-B6', 'mdohrmannc', '9af9e4adade00a89affad8c6f34b727b324c4ed5', 1),
(14, 'Livy', 'Eadington', 'leadingtond@ftc.gov', '(507) 3617061', '64-34-AC-ED-36-BE', 'leadingtond', '5a229c6d6e903f81f2428c6c79e6847262bcc163', 2),
(15, 'Sherie', 'Garza', 'sgarzae@delicious.com', '(183) 7271371', '78-F7-40-46-27-44', 'sgarzae', 'b66a4ddc5e1cfd644aa7aae6edfb2cf1b6740ab7', 1),
(16, 'Melinda', 'Midson', 'mmidsonf@addtoany.com', '(859) 5874930', 'C3-82-B2-F4-03-11', 'mmidsonf', 'ac0c49fee661eee07e9bb76681c7de5088fe1e8e', 2),
(17, 'Nollie', 'Capelow', 'ncapelowg@bloglovin.com', '(106) 9996703', 'AA-B9-B4-7C-9A-31', 'ncapelowg', 'ab1bdb865a6b8a0c3ab3d294b18ca8241e3e40f5', 2),
(18, 'Judy', 'Sellars', 'jsellarsh@addtoany.com', '(376) 3159074', '6E-18-FB-13-31-D2', 'jsellarsh', 'febe01d000b86e4f863cb148016247b6a384427d', 3),
(19, 'Abbe', 'McTavish', 'amctavishi@imgur.com', '(932) 2158912', 'D3-51-7F-53-B4-58', 'amctavishi', 'e7b6c3c6986d10383aa542c7766ac6e80ac31bea', 1),
(20, 'Skell', 'Tofanini', 'stofaninij@usatoday.com', '(632) 9518567', '84-B7-09-61-D0-70', 'stofaninij', 'd9685159e17c72d0756cdd4543fa03a2441cdee0', 3),
(21, 'Brittany', 'Rodda', 'broddak@cisco.com', '(525) 8186217', 'F6-31-CC-6C-56-C0', 'broddak', '4776b5db6c1e7681065ec77691be2896fe992497', 3),
(22, 'Aristotle', 'Whiteley', 'awhiteleyl@facebook.com', '(177) 1334810', '2D-D3-93-12-7E-7E', 'awhiteleyl', 'dc234e4a858b7febe9962d4c220909c7f5bb703a', 2),
(23, 'Evan', 'Newvell', 'enewvellm@odnoklassniki.ru', '(151) 2645596', '27-52-6D-28-50-00', 'enewvellm', '6aed4416a6c8aff794d3151c4b939ae05c1b90bb', 1),
(24, 'Ada', 'McKyrrelly', 'amckyrrellyn@hp.com', '(390) 3088301', '85-AE-FC-73-C7-C2', 'amckyrrellyn', '18155a762d3bc6b08924cba9e5919968d83da790', 2),
(25, 'Valli', 'Laister', 'vlaistero@fc2.com', '(934) 7210282', '16-52-C5-32-7B-CD', 'vlaistero', 'b53bd0c9f1abc2a1b7bc695441b9f52eaa7d1107', 2),
(26, 'Don', 'Chuck', 'dchuckp@moonfruit.com', '(209) 1256659', '1B-98-7B-80-59-8F', 'dchuckp', '3c59165e93ebe2980ae8a0cc32a75eeb0543a66b', 2),
(27, 'Udale', 'Cawthra', 'ucawthraq@sourceforge.net', '(379) 4153612', 'D0-B0-03-EC-80-EC', 'ucawthraq', 'af8c874326440ceb85c1ed149660119368bdbd98', 3),
(28, 'Franni', 'Castello', 'fcastellor@wikia.com', '(610) 4113444', 'B9-D1-48-1A-2A-53', 'fcastellor', '00d79d8a64f7c44f07e67da01d8e4cb866cd28f7', 3),
(29, 'Leigh', 'Stollman', 'lstollmans@aol.com', '(722) 3655768', '0A-8C-DD-17-F9-24', 'lstollmans', 'f99831991fc3096a49f0ae778d65d200488591a1', 1),
(30, 'Ezechiel', 'Borleace', 'eborleacet@cbsnews.com', '(783) 6657728', '0E-1E-7F-AF-3C-D8', 'eborleacet', '821e64afd995d8373d75e4357b8c2dc86670e7b5', 3),
(31, 'Merrily', 'Twinborne', 'mtwinborneu@dell.com', '(877) 9133078', '18-72-80-A4-E5-34', 'mtwinborneu', 'e391c89c3acb5b67129c610ba81fa3db36a327a4', 2),
(32, 'Lettie', 'Brewer', 'lbrewerv@bravesites.com', '(355) 8181735', 'FC-FA-4D-AD-E5-27', 'lbrewerv', '9747391e581ed6cba26ab0d0f7030a1264415782', 3),
(33, 'Durward', 'Fetter', 'dfetterw@fc2.com', '(673) 3962794', '68-A1-C1-36-72-72', 'dfetterw', '5c0eaa15f3a18e7cd2eb2ffe5a51379941f88698', 1),
(34, 'Orsola', 'Ottery', 'ootteryx@plala.or.jp', '(303) 3109105', '40-00-AA-62-BA-4C', 'ootteryx', '6a2b9c4b3db4d30aac1b748d65f6baee1663dd87', 3),
(35, 'Marjie', 'Gerok', 'mgeroky@google.ca', '(552) 4389814', '33-50-44-C8-45-AC', 'mgeroky', 'd1cba4bb8eeab20c237aca924349349da0a2d91e', 1),
(36, 'Madlin', 'Flaxon', 'mflaxonz@biblegateway.com', '(372) 1504279', '20-AA-44-01-82-CF', 'mflaxonz', '2f7a81e02ce73a3b85402189f2d2437b91da9b58', 1),
(37, 'Neysa', 'Laidel', 'nlaidel10@un.org', '(419) 6105523', '02-66-67-6C-87-F0', 'nlaidel10', '74683964f3f22cafc521506ead0288cceee2de39', 1),
(38, 'Delphinia', 'Calafato', 'dcalafato11@cnbc.com', '(986) 8521505', '9C-1F-6C-BE-B0-B7', 'dcalafato11', '1e0326ccd9b3c32ee66a8cbd282544e09b44568b', 3),
(39, 'Kenon', 'Mewe', 'kmewe12@oracle.com', '(374) 3867094', 'AF-DD-8F-5A-9E-0B', 'kmewe12', '810bcbf3b6342a49e85a84348273bb4a8fbc798d', 2),
(40, 'Tracey', 'Massey', 'tmassey13@earthlink.net', '(598) 4134805', '99-61-92-12-76-C2', 'tmassey13', 'e1118fcbb7f2410dcf12c9b90742c388460b0388', 3),
(41, 'Shawn', 'Prate', 'sprate14@bravesites.com', '(997) 4137317', '74-92-F0-A0-12-02', 'sprate14', '141069ed69b2f23db369a0f29e1f7a54dd57c27c', 2),
(42, 'Maggie', 'Prudence', 'mprudence15@opera.com', '(790) 7613176', '0D-E6-0A-83-80-BD', 'mprudence15', 'c970b2c3bc4b543129fbc06b3cb770cb5eb9dfb8', 2),
(43, 'Bernie', 'Giannassi', 'bgiannassi16@nifty.com', '(562) 9030346', 'D5-DD-3D-2B-C7-FE', 'bgiannassi16', 'a9bfd7bf6b498eb2fc1fb9a496fc4d4b307315a1', 1),
(44, 'Carlye', 'Wabey', 'cwabey17@shareasale.com', '(353) 1159060', 'EE-60-DB-52-FD-63', 'cwabey17', 'bc9341fc1c3f92589d5c39d5b32690038350ed2a', 1),
(45, 'Olympie', 'Cottham', 'ocottham18@usda.gov', '(731) 8133938', 'E6-3A-74-01-D0-90', 'ocottham18', 'eeb7239faf83dc5f66a528febe39783505458019', 1),
(46, 'Calida', 'Fleckness', 'cfleckness19@nymag.com', '(288) 9337797', '9D-0C-D9-88-E1-AE', 'cfleckness19', 'f25dbe9b8145cac5dc9b68f2bc900f268559de2f', 1),
(47, 'Stormy', 'McMurraya', 'smcmurraya1a@qq.com', '(489) 8918443', 'F2-A2-02-C9-88-0D', 'smcmurraya1a', 'd9704d9b46b2965d38a4a8d657871b7ef1599c03', 3),
(48, 'Haley', 'MacIver', 'hmaciver1b@columbia.edu', '(196) 4901441', 'AA-FC-43-2F-BA-E9', 'hmaciver1b', '397cdada850aa697e40eae3a31efdcfb55a10b9d', 3),
(49, 'Maje', 'Tallboy', 'mtallboy1c@feedburner.com', '(830) 2592220', '61-70-F9-E0-81-CA', 'mtallboy1c', 'f5d8f55851e3def3bba2ce8d01c93886281e67b3', 1),
(50, 'Dulcie', 'Paragreen', 'dparagreen1d@exblog.jp', '(656) 4650224', '3F-D3-E2-8F-B1-77', 'dparagreen1d', '09da5efef9fe563577a4e6644a1798b2c550fbc8', 1),
(51, 'Wilden', 'Andryunin', 'wandryunin1e@apache.org', '(957) 7296822', 'B6-48-EC-63-73-25', 'wandryunin1e', 'd9db2a7312b532339d20d87c01881fe63797d079', 2),
(52, 'Rutger', 'Strephan', 'rstrephan1f@imdb.com', '(970) 6871912', '8D-02-29-1E-F1-61', 'rstrephan1f', '783baf745af2d3594a1f482d87c0a1c965b7d6da', 1),
(53, 'Carmita', 'Whitecross', 'cwhitecross1g@opera.com', '(150) 2826455', '13-88-4B-78-9A-C5', 'cwhitecross1g', '5e1ab78181867946992701d92d859f9d0dd70acf', 1),
(54, 'Becki', 'Stringfellow', 'bstringfellow1h@patch.com', '(979) 3966084', '3A-EC-08-CF-E6-76', 'bstringfellow1h', '4cff6adf40bee368cc6cbf6ccd6d96fdbe7cfd8a', 2),
(55, 'Alair', 'Holston', 'aholston1i@mapy.cz', '(942) 3993888', 'F3-D0-B8-3D-B7-96', 'aholston1i', '903d8318c2dea5a2c3662b2d5553e2e8794bd3a7', 1),
(56, 'Kittie', 'Hurll', 'khurll1j@youku.com', '(754) 8540151', '2A-12-E6-50-D5-80', 'khurll1j', 'bc3d81317b99ba65d23786ee88ac72a2a92fe3ba', 2),
(57, 'Shaun', 'Ayers', 'sayers1k@ning.com', '(101) 1451927', '62-73-46-44-06-B7', 'sayers1k', 'e3b915f9a0243d835d20b0d6626bf7b045507d74', 1),
(58, 'Yale', 'Geake', 'ygeake1l@businessweek.com', '(919) 9301146', 'E7-EF-3C-52-D2-FC', 'ygeake1l', 'be3e8b4fe9093cb2b49d7feb56afc1a2a0b04cf6', 2),
(59, 'Roderick', 'Cohalan', 'rcohalan1m@amazon.co.jp', '(817) 7996319', 'A7-7B-1C-69-F7-86', 'rcohalan1m', 'ff17c4738e2741db720838770e8b07daa2eab4c4', 3),
(60, 'Jesse', 'Haughin', 'jhaughin1n@apache.org', '(682) 3035637', '23-EF-0A-C9-B3-D0', 'jhaughin1n', '07af9afde6aa1501567f13d81fd2b58c70029203', 3),
(61, 'Andonis', 'Roalfe', 'aroalfe1o@jugem.jp', '(880) 7200606', '60-B6-11-0A-A5-F7', 'aroalfe1o', '6cc0e412b96b4dfbb25aabdef8f9bf1a13ac6584', 2),
(62, 'Chevalier', 'Lennox', 'clennox1p@telegraph.co.uk', '(404) 7928953', 'CF-0F-00-59-85-AB', 'clennox1p', 'fb1494a5348d7acf4def1f730fcec70a56c213cf', 1),
(63, 'Mathe', 'Steagall', 'msteagall1q@go.com', '(926) 8338749', '42-B0-84-95-D6-80', 'msteagall1q', '281b411dae1b5aa987f76f1e0b34eea093807751', 2),
(64, 'Taddeusz', 'Kienle', 'tkienle1r@ning.com', '(849) 4443951', '78-1D-41-AF-D6-62', 'tkienle1r', 'ab60fd086ddf4ba5ad0fbcbf810b679dd1205596', 1),
(65, 'Clarinda', 'Ahrenius', 'cahrenius1s@w3.org', '(625) 7295308', 'D2-96-CE-FA-D9-10', 'cahrenius1s', '299276a2d22597f0e9bf53f1d971f04703901c05', 2),
(66, 'Essy', 'Redfern', 'eredfern1t@seesaa.net', '(219) 3361868', 'B8-D8-B5-47-B9-B3', 'eredfern1t', '4e82dc1ca130b4bef82cfc928d3dc16b618f65a8', 2),
(67, 'Idelle', 'Kuschke', 'ikuschke1u@fda.gov', '(656) 5284417', '6E-E7-78-48-07-EA', 'ikuschke1u', '099ecd45b7af00f5ffa18f6e0555193e9714d4cc', 2),
(68, 'Jessa', 'Fearfull', 'jfearfull1v@theglobeandmail.com', '(755) 9154439', '06-B5-7C-5E-09-63', 'jfearfull1v', 'b6d6158d3d3956380ebed10acd8fb7bce45bc42d', 2),
(69, 'Cinda', 'Staniford', 'cstaniford1w@linkedin.com', '(322) 7375430', 'FF-DE-E8-5C-FE-A8', 'cstaniford1w', '3848758f7416cac03a60dbef2da54f7ba360b1b7', 1),
(70, 'Christyna', 'Graver', 'cgraver1x@tumblr.com', '(592) 5177626', 'C0-14-A6-7C-09-70', 'cgraver1x', 'ce22a4ee23cde0e0aee1db1d73fb7527e649a375', 1),
(71, 'Egor', 'Jevon', 'ejevon1y@adobe.com', '(568) 7295791', '7C-C1-19-05-08-58', 'ejevon1y', '93e85505360a06513478d83a2ac21c342c0993f6', 3),
(72, 'Meryl', 'Nurny', 'mnurny1z@hud.gov', '(468) 9575463', '55-CF-94-D2-A1-21', 'mnurny1z', '202bb7cfa02f43d4d277a85c4ef9fbb99755106b', 1),
(73, 'Flo', 'Tuckwood', 'ftuckwood20@senate.gov', '(634) 6348129', '5B-73-62-E1-A4-4E', 'ftuckwood20', 'a581826928d2040fd3ec968ccf4d9ea766c87271', 3),
(74, 'Gretchen', 'Aleksich', 'galeksich21@rambler.ru', '(716) 5366110', '0F-02-A1-A4-52-EC', 'galeksich21', '505e86a7fc64649183d7f662d702680aab858778', 1),
(75, 'Orin', 'Janik', 'ojanik22@about.com', '(228) 9741680', '13-9D-63-C0-08-E9', 'ojanik22', 'b9bee97b9ef52a2b9c95b54d01df62e7985f34fb', 2),
(76, 'Conney', 'Gerrell', 'cgerrell23@nasa.gov', '(264) 8317691', '8A-83-FB-76-60-49', 'cgerrell23', 'ebd4551e7a56aabe47d2b8ad1e961497b46852f0', 2),
(77, 'Vale', 'Haselup', 'vhaselup24@theatlantic.com', '(198) 1409911', 'FB-22-A3-99-6D-51', 'vhaselup24', '4497784e079648bfc3727f38095193ce2c3b322f', 2),
(78, 'Ofilia', 'Shawel', 'oshawel25@youtu.be', '(503) 3797454', 'C9-38-C2-E9-AC-6D', 'oshawel25', 'f97606a517362dbbd4a2e9832f9473741b899c4b', 3),
(79, 'Beaufort', 'Hambidge', 'bhambidge26@arizona.edu', '(636) 9504763', '5E-64-DA-88-80-B2', 'bhambidge26', '10259c65529058d692e01926697ce7961dd25f8d', 3),
(80, 'Lambert', 'Gerrit', 'lgerrit27@europa.eu', '(534) 9801128', '19-FD-E0-E5-C6-A7', 'lgerrit27', '136f8d2a0179e20f8c662c2d46bb0d136f7b0c4d', 2),
(81, 'Elias', 'Sandall', 'esandall28@about.com', '(822) 1509498', 'A9-D8-58-85-BE-4F', 'esandall28', '9b45ad5af9666f3427eebb1c3250ee386620f4ed', 1),
(82, 'Jared', 'Peddar', 'jpeddar29@chicagotribune.com', '(116) 3432342', '72-E2-06-FB-45-02', 'jpeddar29', 'e048c182d37a906438323df320a170d1c979bb13', 2),
(83, 'Ferris', 'Fenby', 'ffenby2a@devhub.com', '(550) 2835461', '57-40-12-BF-85-4F', 'ffenby2a', 'f8f3179c66b1151ed5a0be139ba7734070b4bb45', 2),
(84, 'Morie', 'Canas', 'mcanas2b@liveinternet.ru', '(692) 3473197', '29-E6-B2-E6-65-C8', 'mcanas2b', 'ccde7d040ff1f53c4cd358b9db9fcf5a83f71197', 3),
(85, 'Dot', 'Benjamin', 'dbenjamin2c@ucla.edu', '(319) 1825084', 'A4-05-82-58-24-83', 'dbenjamin2c', '8c7c2758321b7c7c02c532b12ef63c2537a0a211', 2),
(86, 'Papageno', 'Slyvester', 'pslyvester2d@nba.com', '(923) 5526054', 'D0-74-5F-E5-8F-56', 'pslyvester2d', '35e54ad6bcb594533c3da9df5b93ad719e3d7248', 1),
(87, 'Lezlie', 'Mc Coughan', 'lmccoughan2e@bbb.org', '(982) 6272903', 'F8-BF-0C-73-5C-35', 'lmccoughan2e', '7b06fa0a00e084994f4cb68ece948baf04f4fec1', 2),
(88, 'Berton', 'Brigdale', 'bbrigdale2f@smh.com.au', '(989) 2936926', '8A-FC-70-7E-FE-44', 'bbrigdale2f', 'f2ff649dc044e8b791a0000f092bdaaddfd1b459', 2),
(89, 'Twila', 'Guyot', 'tguyot2g@youtu.be', '(242) 4528942', '1A-C0-C5-91-FD-39', 'tguyot2g', 'd9c4bcd72cec0e8373327e0c340212e5ed779270', 2),
(90, 'Brynna', 'Strudwick', 'bstrudwick2h@taobao.com', '(776) 3468556', '0A-77-07-97-70-6B', 'bstrudwick2h', '01c58b08954abec4a1025c298a0b2c63c270671a', 3),
(91, 'Royall', 'Mulvey', 'rmulvey2i@goodreads.com', '(785) 4712045', '91-A8-20-8F-A4-39', 'rmulvey2i', 'bd64ac1aafe0ad1ba7f2d7a5e610a50f80531519', 1),
(92, 'Deni', 'Swains', 'dswains2j@hibu.com', '(207) 5000974', '20-70-0B-93-BF-A8', 'dswains2j', '693112154458cfd52181111be4dd70ba20a710b7', 1),
(93, 'Allyson', 'Niaves', 'aniaves2k@com.com', '(495) 1930324', '1B-71-D4-7E-6A-17', 'aniaves2k', '862632c3a6efccc7040e6f202b1a90914dc98b5e', 2),
(94, 'Linn', 'Denham', 'ldenham2l@huffingtonpost.com', '(246) 1025035', '2B-5C-E0-58-DB-BD', 'ldenham2l', '1b7e451e331bb2d057807f04e7007b5fd073550e', 3),
(95, 'Latrena', 'Paskell', 'lpaskell2m@blog.com', '(547) 6173304', 'C0-31-F5-B6-F3-CE', 'lpaskell2m', 'fc2e71bc1a4f709a0d8d4a48fa4c43688052ffd1', 1),
(96, 'Tara', 'Narup', 'tnarup2n@ocn.ne.jp', '(844) 6674510', 'EB-B9-1A-89-AD-89', 'tnarup2n', '75894ba340b4b78d47fcfc109a61f8989858adec', 2),
(97, 'Cort', 'Eagle', 'ceagle2o@cbsnews.com', '(877) 5043716', '5C-F4-E1-53-A2-7F', 'ceagle2o', 'fddb8689207c3c011d54e083d3ef54c95b61ab2e', 2),
(98, 'Lin', 'Caughte', 'lcaughte2p@usnews.com', '(478) 1756703', '0F-AB-9B-BF-C1-C1', 'lcaughte2p', 'dfed859125d339d244bde8c148daa7b5240e1997', 2),
(99, 'Bari', 'Gillis', 'bgillis2q@gov.uk', '(348) 3389842', 'C4-15-AA-DB-9E-D5', 'bgillis2q', '8d5708161c7617ed96cb43ecd4bba4f16c0b9f13', 3),
(100, 'Pauly', 'Asplen', 'pasplen2r@google.ru', '(789) 9960886', '29-47-0F-DE-8F-A5', 'pasplen2r', '11d856876c3404d0e00874230a11adf6d3d4abff', 3),
(101, 'jason', 'dtdt', 'jjjj@jjj', '9999', '123123jason', 'user', '123123', 1),
(102, 'jason', 'dtdt', 'jjjj@jjj', '9999', '123123jason', 'user', '123123', 1),
(103, 'jason', 'dt', 'jason@yahoo', '999 999', '123 jason city', 'jason', '123123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `item_id`) VALUES
(1, 51, 74),
(2, 9, 91),
(4, 47, 18),
(5, 9, 87),
(6, 34, 37),
(8, 41, 62),
(9, 25, 11),
(10, 48, 87),
(12, 54, 19),
(13, 65, 51),
(15, 1, 3),
(16, 88, 48),
(18, 50, 4),
(20, 94, 67),
(21, 28, 7),
(22, 52, 3),
(23, 24, 20),
(24, 61, 23),
(25, 29, 74),
(26, 6, 81),
(28, 79, 49),
(30, 5, 39),
(31, 83, 70),
(32, 25, 86),
(33, 28, 7),
(34, 83, 20),
(35, 9, 64),
(37, 91, 40),
(39, 53, 41),
(40, 32, 49),
(41, 31, 68),
(42, 83, 71),
(43, 57, 18),
(45, 88, 4),
(46, 54, 95),
(47, 5, 47),
(49, 23, 60),
(50, 37, 75),
(52, 46, 11),
(53, 7, 13),
(54, 18, 81),
(55, 66, 36),
(57, 29, 54),
(58, 89, 11),
(59, 1, 28),
(60, 13, 23),
(61, 85, 42),
(62, 24, 78),
(64, 47, 36),
(65, 25, 47),
(66, 79, 41),
(68, 44, 74),
(70, 100, 18),
(71, 94, 88),
(77, 41, 75),
(82, 30, 77),
(83, 29, 47),
(85, 55, 39),
(86, 80, 67),
(87, 57, 49),
(88, 43, 60),
(89, 29, 18),
(90, 8, 14),
(91, 25, 20),
(93, 62, 59),
(94, 80, 23),
(95, 85, 88),
(96, 93, 56),
(97, 87, 19),
(98, 40, 75);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `average_length`
--
ALTER TABLE `average_length`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_types`
--
ALTER TABLE `game_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Items_fk0` (`average_length_id`),
  ADD KEY `Items_fk1` (`game_types_id`),
  ADD KEY `Items_fk2` (`trends_id`),
  ADD KEY `Items_fk3` (`categories_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Orders_fk0` (`status_id`),
  ADD KEY `Orders_fk1` (`user_id`);

--
-- Indexes for table `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Orders_Items_fk0` (`item_id`),
  ADD KEY `Orders_Items_fk1` (`order_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trends`
--
ALTER TABLE `trends`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trend_names` (`trend_names`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Users_fk0` (`roles_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Wishlists_fk0` (`user_id`),
  ADD KEY `Wishlists_fk1` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `average_length`
--
ALTER TABLE `average_length`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `game_types`
--
ALTER TABLE `game_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `trends`
--
ALTER TABLE `trends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `Items_fk0` FOREIGN KEY (`average_length_id`) REFERENCES `average_length` (`id`),
  ADD CONSTRAINT `Items_fk1` FOREIGN KEY (`game_types_id`) REFERENCES `game_types` (`id`),
  ADD CONSTRAINT `Items_fk2` FOREIGN KEY (`trends_id`) REFERENCES `trends` (`id`),
  ADD CONSTRAINT `Items_fk3` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `Orders_fk0` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `Orders_fk1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders_items`
--
ALTER TABLE `orders_items`
  ADD CONSTRAINT `Orders_Items_fk0` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `Orders_Items_fk1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `Users_fk0` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `Wishlists_fk0` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `Wishlists_fk1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
