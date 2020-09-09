-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2020 at 03:00 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id13959988_student`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_text` mediumtext NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `post_id`, `user_id`, `comment_text`, `comment_author`, `time`) VALUES
(183, 489, 2, '$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n', 'admin', '2020-07-20 23:41:52'),
(185, 492, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,\nwhen an unknown printer took a galley of type and scrambled\nit to make a type specimen book. It has survived not only five\npublic function show_single_post(){\n', 'admin', '2020-07-20 23:43:06'),
(193, 498, 2, 'LEFT JOIN posts\nON posts.user_id = users.user_id\nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'', 'admin', '2020-07-21 00:00:13'),
(194, 498, 2, 'LEFT JOIN posts\nON posts.user_id = users.user_id\nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'', 'admin', '2020-07-21 00:00:14'),
(195, 498, 2, 'LEFT JOIN posts\nON posts.user_id = users.user_id\nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'', 'admin', '2020-07-21 00:00:16'),
(196, 484, 2, 'LEFT JOIN posts\nON posts.user_id = users.user_id\nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'', 'admin', '2020-07-21 00:00:22'),
(200, 457, 52, 'LEFT JOIN posts\r\nON posts.user_id = users.user_id \r\nLEFT JOIN files\r\nON files.post_id = posts.post_id\r\nwhere posts.post_id=\'$this->post_id \'\r\n\"; ', 'vts_student', '2020-07-21 13:27:49'),
(201, 457, 52, 'LEFT JOIN posts\r\nON posts.user_id = users.user_id \r\nLEFT JOIN files\r\nON files.post_id = posts.post_id\r\nwhere posts.post_id=\'$this->post_id \'\r\n\"; ', 'vts_student', '2020-07-21 13:27:53'),
(202, 457, 52, 'LEFT JOIN posts\r\nON posts.user_id = users.user_id \r\nLEFT JOIN files\r\nON files.post_id = posts.post_id\r\nwhere posts.post_id=\'$this->post_id \'\r\n\"; ', 'vts_student', '2020-07-21 13:27:57'),
(204, 466, 2, 'when an unknown printer took a galley of type and scrambled\nit to make a type specimen book. It has survived not only five\npublic function show_single_post(){', 'admin', '2020-07-21 13:30:10'),
(205, 466, 2, 'when an unknown printer took a galley of type and scrambled\nit to make a type specimen book. It has survived not only five\npublic function show_single_post(){', 'admin', '2020-07-21 13:30:12'),
(206, 466, 2, 'when an unknown printer took a galley of type and scrambled\nit to make a type specimen book. It has survived not only five\npublic function show_single_post(){', 'admin', '2020-07-21 13:30:13'),
(207, 466, 2, 'when an unknown printer took a galley of type and scrambled\nit to make a type specimen book. It has survived not only five\npublic function show_single_post(){', 'admin', '2020-07-21 13:30:15'),
(208, 466, 2, 'when an unknown printer took a galley of type and scrambled\nit to make a type specimen book. It has survived not only five\npublic function show_single_post(){', 'admin', '2020-07-21 13:30:17'),
(211, 486, 2, '$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];', 'admin', '2020-07-27 18:22:23'),
(229, 529, 52, '$myvariable=\" \";', 'vts_student', '2020-09-09 12:18:14'),
(230, 531, 52, '  private $db_name = \'id13959988_student\';\r\n	private $db_user = \'id13959988_studentdata\';\r\n    private $db_pass = \'FZrI0pdg&szL@J?_\';\r\n	private $db_host = \'localhost\';\r\n\r\n$connect_db = new mysqli( db_host, db_user, db_pass,db_name );', 'vts_student', '2020-09-09 12:18:57'),
(231, 532, 52, 'for (init counter; test counter; increment counter) {\r\n  code to be executed for each iteration;\r\n}', 'vts_student', '2020-09-09 12:19:21'),
(232, 530, 52, 'function myfunkt() {\r\ncode..\r\n}', 'vts_student', '2020-09-09 12:19:51'),
(233, 530, 2, 'Thanks! :)', 'admin', '2020-09-09 12:20:11'),
(234, 531, 2, 'Thanks : )', 'admin', '2020-09-09 12:20:32'),
(235, 529, 2, 'Thankyouuu', 'admin', '2020-09-09 12:20:46'),
(236, 532, 2, 'Awesome..!!', 'admin', '2020-09-09 12:21:44');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `type` varchar(25) NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `post_id`, `size`, `type`, `file_name`) VALUES
(91, 200, 145, 'text/plain', 'axonometria.txt'),
(93, 202, 145, 'text/plain', 'axonometria.txt'),
(94, 203, 145, 'text/plain', 'axonometria.txt'),
(95, 204, 145, 'text/plain', 'axonometria.txt'),
(96, 205, 145, 'text/plain', 'axonometria.txt'),
(97, 206, 145, 'text/plain', 'axonometria.txt'),
(98, 207, 145, 'text/plain', 'axonometria.txt'),
(99, 208, 145, 'text/plain', 'axonometria.txt'),
(104, 214, 145, 'text/plain', 'axonometria.txt'),
(105, 215, 145, 'text/plain', 'axonometria.txt'),
(106, 216, 145, 'text/plain', 'axonometria.txt'),
(107, 217, 145, 'text/plain', 'axonometria.txt'),
(108, 218, 145, 'text/plain', 'axonometria.txt'),
(109, 219, 145, 'text/plain', 'axonometria.txt'),
(110, 220, 145, 'text/plain', 'axonometria.txt'),
(111, 221, 145, 'text/plain', 'axonometria.txt'),
(112, 222, 145, 'text/plain', 'axonometria.txt'),
(113, 223, 145, 'text/plain', 'axonometria.txt'),
(114, 224, 145, 'text/plain', 'axonometria.txt'),
(115, 225, 145, 'text/plain', 'axonometria.txt'),
(117, 227, 102680, 'image/png', 'clip-art-freeuse-download-square-academic-graduation-transparent-background-graduation-hat-11562898433mynu5en23u.png'),
(118, 228, 102680, 'image/png', 'clip-art-freeuse-download-square-academic-graduation-transparent-background-graduation-hat-11562898433mynu5en23u.png'),
(119, 229, 102680, 'image/png', 'clip-art-freeuse-download-square-academic-graduation-transparent-background-graduation-hat-11562898433mynu5en23u.png'),
(121, 231, 52121, 'image/jpeg', 's4.JPG'),
(122, 232, 52121, 'image/jpeg', 's4.JPG'),
(123, 233, 52121, 'image/jpeg', 's4.JPG'),
(124, 234, 52121, 'image/jpeg', 's4.JPG'),
(125, 235, 52121, 'image/jpeg', 's4.JPG'),
(126, 236, 52121, 'image/jpeg', 's4.JPG'),
(127, 237, 52121, 'image/jpeg', 's4.JPG'),
(129, 239, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(130, 240, 130, 'text/plain', 'logo credits.txt'),
(131, 241, 145, 'text/plain', 'axonometria.txt'),
(135, 245, 145, 'text/plain', 'axonometria.txt'),
(138, 248, 21836, 'image/png', 'avatar.png'),
(139, 249, 21836, 'image/png', 'avatar.png'),
(140, 250, 21836, 'image/png', 'avatar.png'),
(146, 256, 452, 'text/plain', 'hexdec.txt'),
(147, 257, 452, 'text/plain', 'hexdec.txt'),
(148, 258, 452, 'text/plain', 'hexdec.txt'),
(149, 259, 452, 'text/plain', 'hexdec.txt'),
(150, 260, 15867672, 'image/jpeg', '3099563.jpg'),
(151, 261, 2517759, 'image/jpeg', '20200712_161327.jpg'),
(152, 262, 406746, 'image/png', 'aumajko.PNG'),
(153, 263, 406746, 'image/png', 'aumajko.PNG'),
(155, 265, 15867672, 'image/jpeg', '3099563.jpg'),
(156, 266, 15867672, 'image/jpeg', '3099563.jpg'),
(157, 267, 15867672, 'image/jpeg', '3099563.jpg'),
(158, 268, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(159, 269, 2517759, 'image/jpeg', '20200712_161327.jpg'),
(160, 270, 2517759, 'image/jpeg', '20200712_161327.jpg'),
(161, 271, 2517759, 'image/jpeg', '20200712_161327.jpg'),
(162, 272, 2517759, 'image/jpeg', '20200712_161327.jpg'),
(163, 273, 2517759, 'image/jpeg', '20200712_161327.jpg'),
(164, 274, 2517759, 'image/jpeg', '20200712_161327.jpg'),
(165, 275, 2517759, 'image/jpeg', '20200712_161327.jpg'),
(166, 276, 2517759, 'image/jpeg', '20200712_161327.jpg'),
(167, 277, 2517759, 'image/jpeg', '20200712_161327.jpg'),
(168, 278, 2517759, 'image/jpeg', '20200712_161327.jpg'),
(169, 279, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(170, 280, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(171, 281, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(172, 282, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(173, 283, 15867672, 'image/jpeg', '3099563.jpg'),
(174, 284, 15867672, 'image/jpeg', '3099563.jpg'),
(175, 285, 15867672, 'image/jpeg', '3099563.jpg'),
(176, 286, 15867672, 'image/jpeg', '3099563.jpg'),
(177, 287, 15867672, 'image/jpeg', '3099563.jpg'),
(178, 288, 15867672, 'image/jpeg', '3099563.jpg'),
(179, 289, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(180, 290, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(181, 291, 2517759, 'image/jpeg', '20200712_161327.jpg'),
(182, 292, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(183, 293, 15867672, 'image/jpeg', '3099563.jpg'),
(184, 294, 15867672, 'image/jpeg', '3099563.jpg'),
(185, 295, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(186, 296, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(187, 297, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(188, 298, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(189, 299, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(190, 300, 15867672, 'image/jpeg', '3099563.jpg'),
(191, 301, 15867672, 'image/jpeg', '3099563.jpg'),
(192, 302, 15867672, 'image/jpeg', '3099563.jpg'),
(205, 315, 15867672, 'image/jpeg', '3099563.jpg'),
(206, 316, 15867672, 'image/jpeg', '3099563.jpg'),
(207, 317, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(208, 318, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(209, 319, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(210, 320, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(211, 321, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(212, 322, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(213, 323, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(214, 324, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(215, 325, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(216, 326, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(217, 327, 15867672, 'image/jpeg', '3099563.jpg'),
(218, 328, 15867672, 'image/jpeg', '3099563.jpg'),
(219, 329, 15867672, 'image/jpeg', '3099563.jpg'),
(220, 330, 41031, 'image/png', 'anyu.PNG'),
(221, 331, 15867672, 'image/jpeg', '3099563.jpg'),
(222, 332, 15867672, 'image/jpeg', '3099563.jpg'),
(223, 333, 15867672, 'image/jpeg', '3099563.jpg'),
(224, 334, 15867672, 'image/jpeg', '3099563.jpg'),
(225, 335, 15867672, 'image/jpeg', '3099563.jpg'),
(226, 336, 15867672, 'image/jpeg', '3099563.jpg'),
(227, 337, 15867672, 'image/jpeg', '3099563.jpg'),
(228, 338, 15867672, 'image/jpeg', '3099563.jpg'),
(229, 339, 15867672, 'image/jpeg', '3099563.jpg'),
(230, 340, 15867672, 'image/jpeg', '3099563.jpg'),
(231, 341, 15867672, 'image/jpeg', '3099563.jpg'),
(232, 342, 15867672, 'image/jpeg', '3099563.jpg'),
(233, 343, 15867672, 'image/jpeg', '3099563.jpg'),
(234, 344, 15867672, 'image/jpeg', '3099563.jpg'),
(235, 345, 15867672, 'image/jpeg', '3099563.jpg'),
(236, 346, 15867672, 'image/jpeg', '3099563.jpg'),
(237, 347, 65120, 'image/jpeg', '107930769_3380759568660255_4145123317812964427_n.jpg'),
(238, 348, 65120, 'image/jpeg', '107930769_3380759568660255_4145123317812964427_n.jpg'),
(239, 349, 15867672, 'image/jpeg', '3099563.jpg'),
(240, 350, 15867672, 'image/jpeg', '3099563.jpg'),
(241, 351, 15867672, 'image/jpeg', '3099563.jpg'),
(242, 352, 15867672, 'image/jpeg', '3099563.jpg'),
(243, 353, 15867672, 'image/jpeg', '3099563.jpg'),
(244, 354, 15867672, 'image/jpeg', '3099563.jpg'),
(246, 356, 15867672, 'image/jpeg', '3099563.jpg'),
(247, 357, 406746, 'image/png', 'aumajko.PNG'),
(248, 358, 406746, 'image/png', 'aumajko.PNG'),
(249, 359, 2517759, 'image/jpeg', '20200712_161327.jpg'),
(250, 360, 2517759, 'image/jpeg', '20200712_161327.jpg'),
(251, 361, 2517759, 'image/jpeg', '20200712_161327.jpg'),
(252, 362, 2517759, 'image/jpeg', '20200712_161327.jpg'),
(253, 363, 61581, 'image/jpeg', '107995739_278682463442222_5033420884812129750_n.jpg'),
(254, 364, 406746, 'image/png', 'aumajko.PNG'),
(255, 365, 406746, 'image/png', 'aumajko.PNG'),
(256, 366, 949167, 'image/jpeg', '20200706_184900.jpg'),
(257, 367, 949167, 'image/jpeg', '20200706_184900.jpg'),
(258, 368, 145, 'text/plain', 'axonometria.txt'),
(259, 369, 145, 'text/plain', 'axonometria.txt'),
(260, 370, 145, 'text/plain', 'axonometria.txt'),
(261, 371, 145, 'text/plain', 'axonometria.txt'),
(262, 372, 145, 'text/plain', 'axonometria.txt'),
(263, 373, 145, 'text/plain', 'axonometria.txt'),
(264, 374, 145, 'text/plain', 'axonometria.txt'),
(265, 375, 145, 'text/plain', 'axonometria.txt'),
(266, 376, 145, 'text/plain', 'axonometria.txt'),
(267, 377, 145, 'text/plain', 'axonometria.txt'),
(268, 378, 145, 'text/plain', 'axonometria.txt'),
(269, 379, 145, 'text/plain', 'axonometria.txt'),
(270, 380, 145, 'text/plain', 'axonometria.txt'),
(271, 381, 145, 'text/plain', 'axonometria.txt'),
(272, 382, 145, 'text/plain', 'axonometria.txt'),
(273, 383, 145, 'text/plain', 'axonometria.txt'),
(274, 384, 145, 'text/plain', 'axonometria.txt'),
(275, 385, 15867672, 'image/jpeg', '3099563.jpg'),
(276, 386, 15867672, 'image/jpeg', '3099563.jpg'),
(277, 387, 15867672, 'image/jpeg', '3099563.jpg'),
(278, 388, 15867672, 'image/jpeg', '3099563.jpg'),
(279, 389, 15867672, 'image/jpeg', '3099563.jpg'),
(280, 390, 15867672, 'image/jpeg', '3099563.jpg'),
(281, 391, 15867672, 'image/jpeg', '3099563.jpg'),
(282, 392, 15867672, 'image/jpeg', '3099563.jpg'),
(283, 393, 145, 'text/plain', 'axonometria.txt'),
(284, 394, 145, 'text/plain', 'axonometria.txt'),
(285, 395, 145, 'text/plain', 'axonometria.txt'),
(286, 396, 145, 'text/plain', 'axonometria.txt'),
(287, 397, 145, 'text/plain', 'axonometria.txt'),
(289, 399, 145, 'text/plain', 'axonometria.txt'),
(290, 400, 145, 'text/plain', 'axonometria.txt'),
(291, 401, 145, 'text/plain', 'axonometria.txt'),
(292, 402, 145, 'text/plain', 'axonometria.txt'),
(293, 403, 145, 'text/plain', 'axonometria.txt'),
(294, 404, 145, 'text/plain', 'axonometria.txt'),
(295, 405, 145, 'text/plain', 'axonometria.txt'),
(296, 406, 145, 'text/plain', 'axonometria.txt'),
(297, 407, 145, 'text/plain', 'axonometria.txt'),
(298, 408, 145, 'text/plain', 'axonometria.txt'),
(299, 409, 145, 'text/plain', 'axonometria.txt'),
(300, 410, 145, 'text/plain', 'axonometria.txt'),
(301, 411, 145, 'text/plain', 'axonometria.txt'),
(302, 412, 145, 'text/plain', 'axonometria.txt'),
(303, 413, 145, 'text/plain', 'axonometria.txt'),
(304, 414, 145, 'text/plain', 'axonometria.txt'),
(305, 415, 145, 'text/plain', 'axonometria.txt'),
(306, 416, 145, 'text/plain', 'axonometria.txt'),
(307, 417, 145, 'text/plain', 'axonometria.txt'),
(308, 418, 145, 'text/plain', 'axonometria.txt'),
(309, 419, 145, 'text/plain', 'axonometria.txt'),
(310, 420, 145, 'text/plain', 'axonometria.txt'),
(311, 421, 145, 'text/plain', 'axonometria.txt'),
(312, 422, 145, 'text/plain', 'axonometria.txt'),
(313, 423, 145, 'text/plain', 'axonometria.txt'),
(314, 424, 145, 'text/plain', 'axonometria.txt'),
(315, 425, 145, 'text/plain', 'axonometria.txt'),
(316, 426, 145, 'text/plain', 'axonometria.txt'),
(317, 427, 145, 'text/plain', 'axonometria.txt'),
(318, 428, 17048, 'image/jpeg', 'q7.JPG'),
(319, 429, 29285, 'image/jpeg', 's3.JPG'),
(320, 430, 829878, 'image/jpeg', '_DSC3347.jpg'),
(325, 435, 145, 'text/plain', 'axonometria.txt'),
(326, 436, 145, 'text/plain', 'axonometria.txt'),
(327, 437, 145, 'text/plain', 'axonometria.txt'),
(328, 438, 145, 'text/plain', 'axonometria.txt'),
(329, 439, 145, 'text/plain', 'axonometria.txt'),
(330, 440, 145, 'text/plain', 'axonometria.txt'),
(331, 441, 145, 'text/plain', 'axonometria.txt'),
(332, 442, 145, 'text/plain', 'axonometria.txt'),
(333, 443, 145, 'text/plain', 'axonometria.txt'),
(334, 444, 145, 'text/plain', 'axonometria.txt'),
(336, 446, 145, 'text/plain', 'axonometria.txt'),
(337, 447, 145, 'text/plain', 'axonometria.txt'),
(340, 450, 65120, 'image/jpeg', '107930769_3380759568660255_4145123317812964427_n.jpg'),
(341, 451, 829878, 'image/jpeg', '_DSC3347.jpg'),
(346, 456, 145, 'text/plain', 'axonometria.txt'),
(347, 457, 145, 'text/plain', 'axonometria.txt'),
(348, 458, 145, 'text/plain', 'axonometria.txt'),
(349, 459, 145, 'text/plain', 'axonometria.txt'),
(350, 460, 145, 'text/plain', 'axonometria.txt'),
(351, 461, 145, 'text/plain', 'axonometria.txt'),
(352, 462, 145, 'text/plain', 'axonometria.txt'),
(353, 463, 145, 'text/plain', 'axonometria.txt'),
(354, 464, 145, 'text/plain', 'axonometria.txt'),
(355, 465, 145, 'text/plain', 'axonometria.txt'),
(356, 466, 145, 'text/plain', 'axonometria.txt'),
(357, 467, 145, 'text/plain', 'axonometria.txt'),
(359, 469, 145, 'text/plain', 'axonometria.txt'),
(360, 470, 145, 'text/plain', 'axonometria.txt'),
(361, 471, 145, 'text/plain', 'axonometria.txt'),
(362, 472, 145, 'text/plain', 'axonometria.txt'),
(363, 473, 145, 'text/plain', 'axonometria.txt'),
(364, 474, 145, 'text/plain', 'axonometria.txt'),
(365, 475, 145, 'text/plain', 'axonometria.txt'),
(366, 476, 145, 'text/plain', 'axonometria.txt'),
(367, 477, 145, 'text/plain', 'axonometria.txt'),
(368, 478, 145, 'text/plain', 'axonometria.txt'),
(369, 479, 145, 'text/plain', 'axonometria.txt'),
(370, 480, 145, 'text/plain', 'axonometria.txt'),
(371, 481, 145, 'text/plain', 'axonometria.txt'),
(372, 482, 145, 'text/plain', 'axonometria.txt'),
(373, 483, 145, 'text/plain', 'axonometria.txt'),
(374, 484, 145, 'text/plain', 'axonometria.txt'),
(375, 485, 145, 'text/plain', 'axonometria.txt'),
(376, 486, 145, 'text/plain', 'axonometria.txt'),
(377, 487, 145, 'text/plain', 'axonometria.txt'),
(378, 488, 145, 'text/plain', 'axonometria.txt'),
(379, 489, 145, 'text/plain', 'axonometria.txt'),
(380, 490, 145, 'text/plain', 'axonometria.txt'),
(382, 492, 145, 'text/plain', 'axonometria.txt'),
(385, 495, 145, 'text/plain', 'axonometria.txt'),
(387, 497, 145, 'text/plain', 'axonometria.txt'),
(388, 498, 145, 'text/plain', 'axonometria.txt'),
(411, 521, 145, 'text/plain', 'axonometria.txt'),
(412, 522, 145, 'text/plain', 'axonometria.txt'),
(414, 524, 145, 'text/plain', 'axonometria.txt'),
(415, 525, 145, 'text/plain', 'axonometria.txt'),
(419, 529, 0, 'text/plain', 'problem.txt'),
(420, 530, 0, 'text/plain', 'problem.txt'),
(421, 531, 0, 'text/plain', 'problem.txt'),
(422, 532, 0, 'text/plain', 'problem.txt'),
(423, 533, 0, 'text/plain', 'problem.txt'),
(424, 534, 0, 'text/plain', 'problem.txt'),
(425, 535, 0, 'text/plain', 'problem.txt'),
(426, 536, 0, 'text/plain', 'problem.txt'),
(427, 537, 0, 'text/plain', 'problem.txt');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_comment` varchar(2555) NOT NULL,
  `post_category` varchar(35) NOT NULL,
  `title` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `post_comment`, `post_category`, `title`, `time`) VALUES
(456, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Programozás', '*Lorem ipsum is a dummy text?', '2020-07-20 23:37:31'),
(457, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Matematika', '*Lorem ipsum is a dummy text?', '2020-07-20 23:37:35'),
(458, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Egyéb', '*Lorem ipsum is a dummy text?', '2020-07-20 23:37:36'),
(459, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Grafika', '*Lorem ipsum is a dummy text?', '2020-07-20 23:37:40'),
(460, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Programozás', '*Lorem ipsum is a dummy text?', '2020-07-20 23:37:41'),
(461, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Matematika', '*Lorem ipsum is a dummy text?', '2020-07-20 23:37:43'),
(462, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Egyéb', '*Lorem ipsum is a dummy text?', '2020-07-20 23:37:44'),
(463, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Grafika', '*Lorem ipsum is a dummy text?', '2020-07-20 23:37:46'),
(464, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Programozás', '*Lorem ipsum is a dummy text?', '2020-07-20 23:37:48'),
(465, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Matematika', '*Lorem ipsum is a dummy text?', '2020-07-20 23:37:48'),
(466, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Egyéb', '*Lorem ipsum is a dummy text?', '2020-07-20 23:37:49'),
(467, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Grafika', '*Lorem ipsum is a dummy text?', '2020-07-20 23:37:50'),
(469, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Matematika', '*Lorem ipsum is a dummy text?', '2020-07-20 23:37:53'),
(470, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Egyéb', '*Lorem ipsum is a dummy text?', '2020-07-20 23:37:54'),
(471, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Grafika', '*Lorem ipsum is a dummy text?', '2020-07-20 23:37:56'),
(472, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Programozás', '*Lorem ipsum is a dummy text?', '2020-07-20 23:37:58'),
(473, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Matematika', '*Lorem ipsum is a dummy text?', '2020-07-20 23:37:58'),
(474, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Egyéb', '*Lorem ipsum is a dummy text?', '2020-07-20 23:37:58'),
(475, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Programozás', '*Lorem ipsum is a dummy text?', '2020-07-20 23:38:01'),
(476, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Matematika', '*Lorem ipsum is a dummy text?', '2020-07-20 23:38:02'),
(477, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Grafika', '*Lorem ipsum is a dummy text?', '2020-07-20 23:38:02'),
(478, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Egyéb', '*Lorem ipsum is a dummy text?', '2020-07-20 23:38:03'),
(479, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Grafika', '*Lorem ipsum is a dummy text?', '2020-07-20 23:38:05'),
(480, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Programozás', '*Lorem ipsum is a dummy text?', '2020-07-20 23:38:06'),
(481, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Matematika', '*Lorem ipsum is a dummy text?', '2020-07-20 23:38:07'),
(482, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Egyéb', '*Lorem ipsum is a dummy text?', '2020-07-20 23:38:08'),
(483, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Grafika', '*Lorem ipsum is a dummy text?', '2020-07-20 23:38:11'),
(484, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Programozás', '*Lorem ipsum is a dummy text?', '2020-07-20 23:38:12'),
(485, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Matematika', '*Lorem ipsum is a dummy text?', '2020-07-20 23:38:13'),
(486, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Egyéb', '*Lorem ipsum is a dummy text?', '2020-07-20 23:38:14'),
(487, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Grafika', '*Lorem ipsum is a dummy text?', '2020-07-20 23:38:15'),
(488, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Programozás', '*Lorem ipsum is a dummy text?', '2020-07-20 23:38:16'),
(489, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Matematika', '*Lorem ipsum is a dummy text?', '2020-07-20 23:38:17'),
(490, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Egyéb', '*Lorem ipsum is a dummy text?', '2020-07-20 23:38:18'),
(492, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Programozás', '*Lorem ipsum is a dummy text?', '2020-07-20 23:38:23'),
(495, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled\n it to make a type specimen book. It has survived not only five\npublic function  show_single_post(){\n\n$this->post_id=$_GET[\'id\'];\n$this->uid=$_SESSION[\'user_id\'];\n$this->user_id=$_SESSION[\'user_id\'];\n\n$sql=\"SELECT * FROM users\n\n\nLEFT JOIN posts\nON posts.user_id = users.user_id \nLEFT JOIN files\nON files.post_id = posts.post_id\nwhere posts.post_id=\'$this->post_id \'\n\"; ', 'Programozás', '*Lorem ipsum is a dummy text?', '2020-07-20 23:38:31'),
(497, 52, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,\r\nwhen an unknown printer took a galley of type and scrambled\r\nit to make a type specimen book. It has survived not only five\r\npublic function show_single_post(){\r\n\r\n$this->post_id=$_GET[\'id\'];\r\n$this->uid=$_SESSION[\'user_id\'];\r\n$this->user_id=$_SESSION[\'user_id\'];\r\n\r\n$sql=\"SELECT * FROM users\r\n\r\n\r\nLEFT JOIN posts\r\nON posts.user_id = users.user_id\r\nLEFT JOIN files\r\nON files.post_id = posts.post_id\r\nwhere posts.post_id=\'$this->post_id \'\r\n\";', 'Programozás', '*Lorem ipsum is a dummy text? ', '2020-07-20 23:43:56'),
(498, 52, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,\r\nwhen an unknown printer took a galley of type and scrambled\r\nit to make a type specimen book. It has survived not only five\r\npublic function show_single_post(){\r\n\r\n$this->post_id=$_GET[\'id\'];\r\n$this->uid=$_SESSION[\'user_id\'];\r\n$this->user_id=$_SESSION[\'user_id\'];\r\n\r\n$sql=\"SELECT * FROM users\r\n\r\n\r\nLEFT JOIN posts\r\nON posts.user_id = users.user_id\r\nLEFT JOIN files\r\nON files.post_id = posts.post_id\r\nwhere posts.post_id=\'$this->post_id \'\r\n\";', 'Grafika', '*Lorem ipsum is a dummy text? ', '2020-07-20 23:43:58'),
(521, 2, 'Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?', 'Programozás', 'Lorem ipsum is a dummy text?', '2020-08-06 11:25:22'),
(522, 2, 'Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?', 'Grafika', 'Lorem ipsum is a dummy text?', '2020-08-06 11:25:24'),
(524, 2, 'Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?', 'Egyéb', 'Lorem ipsum is a dummy text?', '2020-08-06 11:25:26'),
(525, 2, 'Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?Lorem ipsum is a dummy text?', 'Programozás', 'Lorem ipsum is a dummy text?', '2020-08-06 11:25:27'),
(529, 2, 'I have a problem.How to declare variable in PHP OPP?\n i tried this: var c=1; ', 'Programozás', 'How to declare var in PHP?', '2020-09-09 12:15:31'),
(530, 2, 'I have a problem.How to declare function in PHP OPP?\n i tried this: var c=1; ', 'Programozás', 'How to declare function in PHP?', '2020-09-09 12:15:45'),
(531, 2, 'How i can connect database with PHP? i use procedural method', 'Programozás', 'Link database with PHP', '2020-09-09 12:16:29'),
(532, 2, 'How to write double for loop  and declare variable in procedural PHP?\n', 'Programozás', 'Double for loop in PHP?', '2020-09-09 12:17:15'),
(533, 52, 'I need help   to  solve a problem, I attached a file with images where I explained my problem..', 'Grafika', 'I need help   to  solve a problem', '2020-09-09 12:24:06'),
(534, 52, 'I need help   to  solve a problem, I attached a file with images where I explained my problem..', 'Matematika', 'I need help   to  solve a problem', '2020-09-09 12:24:08'),
(535, 52, 'I need help   to  solve a problem, I attached a file with images where I explained my problem..', 'Egyéb', 'I need help   to  solve a problem', '2020-09-09 12:24:09'),
(536, 52, 'I need help   to  solve a problem, I attached a file with images where I explained my problem..', 'Matematika', 'I need help   to  solve a problem', '2020-09-09 12:24:11'),
(537, 52, 'I need help   to  solve a problem, I attached a file with images where I explained my problem..', 'Grafika', 'I need help   to  solve a problem', '2020-09-09 12:24:12');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `rated_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `comment_id`, `rating`, `from_id`, `rated_user`) VALUES
(72, 183, 4, 52, 2),
(73, 185, 2, 52, 2),
(75, 193, 3, 52, 2),
(83, 200, 1, 2, 52),
(84, 231, 5, 2, 52),
(85, 232, 5, 2, 52),
(86, 230, 5, 2, 52),
(87, 229, 5, 2, 52),
(88, 233, 5, 52, 2);

-- --------------------------------------------------------

--
-- Table structure for table `saved_post`
--

CREATE TABLE `saved_post` (
  `save_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saved_post`
--

INSERT INTO `saved_post` (`save_id`, `user_id`, `post_id`, `post_title`) VALUES
(77, 2, 460, '*Lorem ipsum is a dummy text?'),
(78, 2, 484, '*Lorem ipsum is a dummy text?'),
(79, 2, 486, '*Lorem ipsum is a dummy text?'),
(80, 2, 456, '*Lorem ipsum is a dummy text?'),
(82, 2, 489, '*Lorem ipsum is a dummy text?'),
(83, 52, 469, '*Lorem ipsum is a dummy text?'),
(84, 52, 461, '*Lorem ipsum is a dummy text?'),
(85, 52, 457, '*Lorem ipsum is a dummy text?'),
(86, 2, 466, '*Lorem ipsum is a dummy text?'),
(88, 52, 498, '*Lorem ipsum is a dummy text? ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `index_number` varchar(50) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `password` varchar(150) NOT NULL,
  `register_date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `hash` varchar(150) NOT NULL,
  `role` varchar(50) NOT NULL,
  `banned` int(2) NOT NULL,
  `ban_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `full_name`, `index_number`, `specialization`, `password`, `register_date`, `status`, `hash`, `role`, `banned`, `ban_date`) VALUES
(2, 'admin', '122182022@vts.su.ac.rs', 'Informatika', '4297f44b13955235245b2497399d7a93', '2020-07-07 22:02:10', 1, '122314435445', 'admin', 0, '2020-08-05 08:21:38'),
(52, 'vts_student', '33333334@vts.su.ac.rs', 'Informatika', '4297f44b13955235245b2497399d7a93', '2020-06-29 15:49:43', 1, '32bb90e8976aab5298d5da10fe66f21d', 'user', 0, '2020-09-09 12:17:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `comment_id` (`comment_id`);

--
-- Indexes for table `saved_post`
--
ALTER TABLE `saved_post`
  ADD PRIMARY KEY (`save_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=428;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=538;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `saved_post`
--
ALTER TABLE `saved_post`
  MODIFY `save_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `comment_ibfk_3` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`) ON DELETE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`comment_id`) ON DELETE CASCADE;

--
-- Constraints for table `saved_post`
--
ALTER TABLE `saved_post`
  ADD CONSTRAINT `saved_post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `saved_post_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
