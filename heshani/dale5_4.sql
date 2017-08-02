-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2017 at 01:01 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dale5_4`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text,
  `direct_tel` varchar(50) DEFAULT NULL,
  `central_tel` varchar(50) DEFAULT NULL,
  `direct_fax` varchar(50) DEFAULT NULL,
  `central_fax` varchar(50) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0' COMMENT '0 - active, 1 - delete'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `users_id`, `country_id`, `name`, `email`, `address`, `direct_tel`, `central_tel`, `direct_fax`, `central_fax`, `ip`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`) VALUES
(1, NULL, 199, 'lankacom', NULL, 'dharmapala mawatha, colombo 03', '01123456789', 'gggfgfgfgfgfgfgfgfg', '4444444', 'fgfgdfgfgfg', '::1', '2017-06-28 04:43:32', 0, '2017-06-27 23:13:32', NULL, 0),
(2, NULL, 38, '99x', '99x@ymail.com', 'asdfgfdgdfg', '56456', '56546', '5656', '5656', '::1', '2017-06-21 13:04:51', 0, '2017-06-21 07:34:51', NULL, 0),
(3, 0, NULL, 'test abc company', NULL, 'test com address', '0123456789', NULL, '0122345678', NULL, '::1', '2017-06-22 08:57:12', 0, '2017-06-22 08:57:12', NULL, 0),
(4, 0, NULL, 'fdsfdfdsf', NULL, 'fghgfhfgh', 'hsghgh', NULL, 'ghgh', NULL, '::1', '2017-06-22 11:36:00', 0, '2017-06-22 11:36:00', NULL, 0),
(5, 0, NULL, 'tretertrt', NULL, 'dfhfhdfh', 'ytye', NULL, 'dhdfhfh', NULL, '::1', '2017-06-22 11:38:37', 0, '2017-06-22 11:38:37', NULL, 0),
(6, 0, 199, '99X TECHNOLOGY LIMITED', NULL, 'gsdgdgsdgsdg', '535', NULL, '76756', NULL, '::1', '2017-06-28 00:44:21', 0, '2017-06-28 00:44:21', NULL, 0),
(7, 0, 199, '3M LANKA (PVT) LIMITED', NULL, 'fgsdg ghsgh h', '55', NULL, '55', NULL, '::1', '2017-06-28 01:55:16', 0, '2017-06-28 01:55:16', NULL, 0),
(8, 0, 199, 'ALANKARA SKR (PVT) LTD', NULL, 'gfgfgfg', '5656', NULL, '56565', NULL, '::1', '2017-06-28 03:13:18', 0, '2017-06-28 03:13:18', NULL, 0),
(9, 0, 199, 'ABC FREIGHT SERVICES (PVT) LTD', NULL, 'hfgh', '65465', NULL, '5654646', NULL, '::1', '2017-06-28 03:17:48', 0, '2017-06-28 03:17:48', NULL, 0),
(10, 0, 199, 'AAA', NULL, 'hdfhsghgh', '6767', NULL, '67567', NULL, '::1', '2017-06-28 03:32:35', 0, '2017-06-28 03:32:35', NULL, 0),
(11, 0, 199, 'BBB', NULL, 'hghsh', '546', NULL, '565464', NULL, '::1', '2017-06-28 03:36:29', 0, '2017-06-28 03:36:29', NULL, 0),
(12, 0, 199, 'rrrr', NULL, 'gdfgfg', NULL, NULL, NULL, NULL, '::1', '2017-06-28 03:37:56', 0, '2017-06-28 03:37:56', NULL, 0),
(13, 0, 199, 'aaaaa', NULL, 'fdgfgfg', NULL, NULL, NULL, NULL, '::1', '2017-06-28 06:05:31', 0, '2017-06-28 06:05:31', NULL, 0),
(14, 0, 199, 'TTTTT', NULL, 'hghghgfh', NULL, NULL, NULL, NULL, '::1', '2017-06-28 06:09:03', 0, '2017-06-28 06:09:03', NULL, 0),
(15, 0, 2, 'ghfghfghgh', NULL, 'gfhgfhghfgh', NULL, NULL, NULL, NULL, '::1', '2017-06-28 06:12:19', 0, '2017-06-28 06:12:19', NULL, 0),
(16, 0, 199, '99fdgfgfg', NULL, 'jkfgdhg dfgdfgfg', NULL, NULL, NULL, NULL, '::1', '2017-06-28 06:17:06', 0, '2017-06-28 06:17:06', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `message` text,
  `ip` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `designation`, `company_name`, `tel`, `message`, `ip`, `created_at`, `updated_at`) VALUES
(1, 'aaa', 'prasanna@lankacom.net', 'Software Eng', 'LCS', '0123456789', 'Message', '::1', '2017-06-23 10:00:41', '2017-06-23 10:00:41'),
(2, 'aaa', 'prasanna@lankacom.net', 'Software Eng', 'LCS', '0123456789', 'Message', '::1', '2017-06-23 10:01:16', '2017-06-23 10:01:16'),
(3, 'aaa', 'prasanna@lankacom.net', 'Software Eng', 'LCS', '0123456789', 'Message', '::1', '2017-06-23 10:02:21', '2017-06-23 10:02:21'),
(4, 'prasanna', 'prasannam@lankacom.net', 'Software Eng', 'Lcs', '0123456789', 'test message', '::1', '2017-06-23 10:13:24', '2017-06-23 10:13:24'),
(5, 'prasanna', 'prasannasoon@gmail.com', 'fgfg', 'fgfdg', '4545666', 'test', '::1', '2017-06-23 10:15:30', '2017-06-23 10:15:30'),
(6, 'john', 'prasannasoon@gmail.com', 'des', 'com', '121212121', 'msg', '::1', '2017-06-23 10:18:15', '2017-06-23 10:18:15'),
(7, 'prasanna', 'prasannasoon@gmail.com', 'Software Engineer', 'Lankacom', '0123456789', 'Test Msg', '::1', '2017-06-23 10:22:07', '2017-06-23 10:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'American Samoa'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antarctica'),
(9, 'Antigua and Barbuda'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Aruba'),
(13, 'Australia'),
(14, 'Austria'),
(15, 'Azerbaijan'),
(16, 'Bahamas'),
(17, 'Bahrain'),
(18, 'Bangladesh'),
(19, 'Barbados'),
(20, 'Belarus'),
(21, 'Belgium'),
(22, 'Belize'),
(23, 'Benin'),
(24, 'Bermuda'),
(25, 'Bhutan'),
(26, 'Bolivia'),
(27, 'Bosnia and Herzegowina'),
(28, 'Botswana'),
(29, 'Bouvet Island'),
(30, 'Brazil'),
(31, 'British Indian Ocean Territory'),
(32, 'Brunei Darussalam'),
(33, 'Bulgaria'),
(34, 'Burkina Faso'),
(35, 'Burundi'),
(36, 'Cambodia'),
(37, 'Cameroon'),
(38, 'Canada'),
(39, 'Cape Verde'),
(40, 'Cayman Islands'),
(41, 'Central African Republic'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'China ? Taipei'),
(46, 'Christmas Island'),
(47, 'Cocos (Keeling) Islands'),
(48, 'Colombia'),
(49, 'Comoros'),
(50, 'Congo'),
(51, 'Congo, the Democratic Republic of the'),
(52, 'Cook Islands'),
(53, 'Costa Rica'),
(54, 'Cote d\'Ivoire'),
(55, 'Croatia (Hrvatska)'),
(56, 'Cuba'),
(57, 'Cyprus'),
(58, 'Czech Republic'),
(59, 'Denmark'),
(60, 'Djibouti'),
(61, 'Dominica'),
(62, 'Dominican Republic'),
(63, 'East Timor'),
(64, 'Ecuador'),
(65, 'Egypt'),
(66, 'El Salvador'),
(67, 'Equatorial Guinea'),
(68, 'Eritrea'),
(69, 'Estonia'),
(70, 'Ethiopia'),
(71, 'Falkland Islands (Malvinas)'),
(72, 'Faroe Islands'),
(73, 'Fiji'),
(74, 'Finland'),
(75, 'France'),
(76, 'France Metropolitan'),
(77, 'French Guiana'),
(78, 'French Polynesia'),
(79, 'French Southern Territories'),
(80, 'Gabon'),
(81, 'Gambia'),
(82, 'Georgia'),
(83, 'Germany'),
(84, 'Ghana'),
(85, 'Gibraltar'),
(86, 'Greece'),
(87, 'Greenland'),
(88, 'Grenada'),
(89, 'Guadeloupe'),
(90, 'Guam'),
(91, 'Guatemala'),
(92, 'Guinea'),
(93, 'Guinea-Bissau'),
(94, 'Guyana'),
(95, 'Haiti'),
(96, 'Heard and Mc Donald Islands'),
(97, 'Holy See (Vatican City State)'),
(98, 'Honduras'),
(99, 'Hong Kong'),
(100, 'Hungary'),
(101, 'Iceland'),
(102, 'India'),
(103, 'Indonesia'),
(104, 'Iran (Islamic Republic of)'),
(105, 'Iraq'),
(106, 'Ireland'),
(107, 'Israel'),
(108, 'Italy'),
(109, 'Jamaica'),
(110, 'Japan'),
(111, 'Jordan'),
(112, 'Kazakhstan'),
(113, 'Kenya'),
(114, 'Kiribati'),
(115, 'Korea, Democratic People\'s Republic of'),
(116, 'Korea, Republic of'),
(117, 'Kuwait'),
(118, 'Kyrgyzstan'),
(119, 'Lao, People\'s Democratic Republic'),
(120, 'Latvia'),
(121, 'Lebanon'),
(122, 'Lesotho'),
(123, 'Liberia'),
(124, 'Libyan Arab Jamahiriya'),
(125, 'Liechtenstein'),
(126, 'Lithuania'),
(127, 'Luxembourg'),
(128, 'Macau'),
(129, 'Macedonia, The Former Yugoslav Republic of'),
(130, 'Madagascar'),
(131, 'Malawi'),
(132, 'Malaysia'),
(133, 'Maldives'),
(134, 'Mali'),
(135, 'Malta'),
(136, 'Marshall Islands'),
(137, 'Martinique'),
(138, 'Mauritania'),
(139, 'Mauritius'),
(140, 'Mayotte'),
(141, 'Mexico'),
(142, 'Micronesia, Federated States of'),
(143, 'Moldova, Republic of'),
(144, 'Monaco'),
(145, 'Mongolia'),
(146, 'Montserrat'),
(147, 'Morocco'),
(148, 'Mozambique'),
(149, 'Myanmar'),
(150, 'Namibia'),
(151, 'Nauru'),
(152, 'Nepal'),
(153, 'Netherlands'),
(154, 'Netherlands Antilles'),
(155, 'New Caledonia'),
(156, 'New Zealand'),
(157, 'Nicaragua'),
(158, 'Niger'),
(159, 'Nigeria'),
(160, 'Niue'),
(161, 'Norfolk Island'),
(162, 'Northern Mariana Islands'),
(163, 'Norway'),
(164, 'Oman'),
(165, 'Pakistan'),
(166, 'Palau'),
(167, 'Panama'),
(168, 'Papua New Guinea'),
(169, 'Paraguay'),
(170, 'Peru'),
(171, 'Philippines'),
(172, 'Pitcairn'),
(173, 'Poland'),
(174, 'Portugal'),
(175, 'Puerto Rico'),
(176, 'Qatar'),
(177, 'Reunion'),
(178, 'Romania'),
(179, 'Russian Federation'),
(180, 'Rwanda'),
(181, 'Saint Kitts and Nevis'),
(182, 'Saint Lucia'),
(183, 'Saint Vincent and the Grenadines'),
(184, 'Samoa'),
(185, 'San Marino'),
(186, 'Sao Tome and Principe'),
(187, 'Saudi Arabia'),
(188, 'Senegal'),
(189, 'Seychelles'),
(190, 'Sierra Leone'),
(191, 'Singapore'),
(192, 'Slovakia (Slovak Republic)'),
(193, 'Slovenia'),
(194, 'Solomon Islands'),
(195, 'Somalia'),
(196, 'South Africa'),
(197, 'South Georgia and the South Sandwich Islands'),
(198, 'Spain'),
(199, 'Sri Lanka'),
(200, 'St. Helena'),
(201, 'St. Pierre and Miquelon'),
(202, 'Sudan'),
(203, 'Suriname'),
(204, 'Svalbard and Jan Mayen Islands'),
(205, 'Swaziland'),
(206, 'Sweden'),
(207, 'Switzerland'),
(208, 'Syrian Arab Republic'),
(209, 'Tajikistan'),
(210, 'Tanzania, United Republic of'),
(211, 'Thailand'),
(212, 'Togo'),
(213, 'Tokelau'),
(214, 'Tonga'),
(215, 'Trinidad and Tobago'),
(216, 'Tunisia'),
(217, 'Turkey'),
(218, 'Turkmenistan'),
(219, 'Turks and Caicos Islands'),
(220, 'Tuvalu'),
(221, 'Uganda'),
(222, 'Ukraine'),
(223, 'United Arab Emirates'),
(224, 'United Kingdom'),
(225, 'United States'),
(226, 'United States Minor Outlying Islands'),
(227, 'Uruguay'),
(228, 'Uzbekistan'),
(229, 'Vanuatu'),
(230, 'Venezuela'),
(231, 'Vietnam'),
(232, 'Virgin Islands (British)'),
(233, 'Virgin Islands (U.S.)'),
(234, 'Wallis and Futuna Islands'),
(235, 'Western Sahara'),
(236, 'Yemen'),
(237, 'Yugoslavia'),
(238, 'Zambia'),
(239, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `delegatehistories`
--

CREATE TABLE `delegatehistories` (
  `id` int(11) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `title` varchar(25) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `passport_number` varchar(50) DEFAULT NULL,
  `date_of_expiry` datetime DEFAULT NULL,
  `payment_status` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unpaid, 1 - paid',
  `direct_tel` varchar(50) DEFAULT NULL,
  `central_tel` varchar(50) DEFAULT NULL,
  `direct_fax` varchar(50) DEFAULT NULL,
  `central_fax` varchar(50) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delegatehistories`
--

INSERT INTO `delegatehistories` (`id`, `users_id`, `company_id`, `title`, `first_name`, `last_name`, `designation`, `email`, `passport_number`, `date_of_expiry`, `payment_status`, `direct_tel`, `central_tel`, `direct_fax`, `central_fax`, `ip`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`) VALUES
(29, NULL, 1, 'Ms', 'f_name4', 'l_name4', 'software', NULL, NULL, NULL, 0, '444444', NULL, NULL, NULL, '::1', '2017-06-25 05:23:59', 0, '2017-06-24 23:53:59', NULL, '2017-06-25 01:24:53'),
(29, NULL, 1, 'Ms', 'f_name4', 'l_name4', 'software', 'aaaa@g.lk', NULL, NULL, 0, '444444', NULL, NULL, NULL, '::1', '2017-06-25 05:23:59', 0, '2017-06-24 23:53:59', NULL, '2017-06-25 01:33:19'),
(28, NULL, 1, 'Mrs', 'f_name3', 'l_name3', 'software engineer', 'hotmax2013@gmail.com', NULL, NULL, 0, '1111', NULL, NULL, NULL, '::1', '2017-06-23 19:02:35', 0, '2017-06-23 13:32:35', NULL, '2017-06-25 01:38:59'),
(27, NULL, 1, 'Prof', 'f_name2', 'lllllll', 'software engineer', 'prasannasoon@gmail.com', NULL, NULL, 0, '99999', NULL, NULL, NULL, '::1', '2017-06-22 19:00:35', 0, '2017-06-22 13:30:35', NULL, '2017-06-25 01:43:10');

-- --------------------------------------------------------

--
-- Table structure for table `delegates`
--

CREATE TABLE `delegates` (
  `id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `title` varchar(25) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `passport_number` varchar(50) DEFAULT NULL,
  `date_of_expiry` datetime DEFAULT NULL,
  `payment_status` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unpaid, 1 - paid',
  `direct_tel` varchar(50) DEFAULT NULL,
  `central_tel` varchar(50) DEFAULT NULL,
  `direct_fax` varchar(50) DEFAULT NULL,
  `central_fax` varchar(50) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0' COMMENT '0 - active, 1 - delete'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delegates`
--

INSERT INTO `delegates` (`id`, `users_id`, `company_id`, `title`, `first_name`, `last_name`, `designation`, `email`, `passport_number`, `date_of_expiry`, `payment_status`, `direct_tel`, `central_tel`, `direct_fax`, `central_fax`, `ip`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`) VALUES
(1, NULL, 1, 'Mrs', 'prasanna', 'marasinghe', 'software engineer', 'prasanntrtam@lankacom.net', NULL, NULL, 0, '0712354568', '2', '3', '4', '::1', '2017-06-27 10:48:56', 0, '2017-06-27 05:18:56', NULL, 0),
(2, NULL, 1, 'Ms', 'dgsdgg', 'sssss', 'CC', 'aa@g.lk', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 04:49:16', 0, '2017-06-27 23:19:16', NULL, 0),
(3, NULL, 1, 'Mr', 'aaa', 'ttt', 'fgdf', 'aaaa@ggg.lk', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 00:41:37', 0, '2017-06-28 00:41:37', NULL, 0),
(4, NULL, 1, 'Prof', 'hfgh', 'ghfghg', 'ghghf', 'hfufggta@ghyh.ljklh', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 00:41:37', 0, '2017-06-28 00:41:37', NULL, 0),
(5, NULL, 6, 'Ms', 'hghgh', 'ghgh', 'fghgfh', 'fghfghfghfghgh@jjhrthtet.lkl', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 00:44:21', 0, '2017-06-28 00:44:21', NULL, 0),
(6, NULL, 6, 'Prof', 'sdghgf', 'hjhjj', 'fgjfgjj', 'turtywthd@ghghgh.klk', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 00:44:21', 0, '2017-06-28 00:44:21', NULL, 0),
(7, NULL, 7, 'Mr', 'ddd', 'ddd', 'fhsghg', 'ddddd@ddd.dd', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 01:55:16', 0, '2017-06-28 01:55:16', NULL, 0),
(8, NULL, 7, 'Mr', 'sdfhh', 'ghsghgh', 'hgfshfh', 'ghgfhghfgh@ghgfh.lj', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 01:55:16', 0, '2017-06-28 01:55:16', NULL, 0),
(10, NULL, 7, 'Mr', 'ddd', 'ddd', 'fhsghg', 'ddddd@dgfhghghd.dd', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 02:04:00', 0, '2017-06-28 02:04:00', NULL, 0),
(11, NULL, 7, 'Mr', 'fghgh', 'fghfgh', 'fghfghgh', 'fghfghfghfghgh@fghfghgh.jkhjk', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 02:04:00', 0, '2017-06-28 02:04:00', NULL, 0),
(13, NULL, 8, 'Dr', 'fgfdg', 'dfgfg', 'dfgfgfgf', 'gfgfgfg@ghgfh.lk', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 03:13:18', 0, '2017-06-28 03:13:18', NULL, 0),
(14, NULL, 8, 'Prof', 'dfgdfgfg', 'dfgdfgdfg', 'dfgdfgfg', 'dfgdfgfg@tytsdydfy.hkjfjkhj', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 03:13:18', 0, '2017-06-28 03:13:18', NULL, 0),
(15, NULL, 9, 'Mr', 'ytyty', 'tytry', 'gghgfh', 'gfhghghfgh@fgdffgfgfgdfg.kklhljkjk', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 03:17:48', 0, '2017-06-28 03:17:48', NULL, 0),
(16, NULL, 9, 'Mrs', 'fgdfg', 'fgdfgfg', 'fdgdfg', 'dfgfgfdgf@fgdfgfgdgfgdfgfg.ggdfgfgf', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 03:17:48', 0, '2017-06-28 03:17:48', NULL, 0),
(17, NULL, 10, 'Mr', 'ygh', 'fghgh', 'ghgh', 'uuurdhghdgantyay@yhrtystby.kljhk', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 03:32:35', 0, '2017-06-28 03:32:35', NULL, 0),
(18, NULL, 10, 'Mrs', 'ghsf', 'fghgh', 'fghfgh', 'ghgfhghfgh@gdrtbnnrntn.jjhk', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 03:32:35', 0, '2017-06-28 03:32:35', NULL, 0),
(20, NULL, 11, 'Mr', 'dfgfg', 'dfgfg', 'dfgdfg', 'dfgd@fgdfg.jhkjk', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 03:36:29', 0, '2017-06-28 03:36:29', NULL, 0),
(21, NULL, 11, 'Mr', 'fgfg', 'fgdfg', 'fgfg', 'ghghh@fgdfg.jhkjk', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 03:36:29', 0, '2017-06-28 03:36:29', NULL, 0),
(22, NULL, 12, 'Mr', 'hgfh', 'gfhfg', 'fghgh', 'gfhgfh@fghfgh.jkhjk', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 03:37:56', 0, '2017-06-28 03:37:56', NULL, 0),
(23, NULL, 12, 'Mr', 'gfg', 'dfgfg', 'dfgdfg', 'fdgfg@ghghgl.kl', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 03:37:56', 0, '2017-06-28 03:37:56', NULL, 0),
(24, NULL, 13, 'Mr', 'fdgfdg', 'dfgdfg', 'dfgfdgfdg', 'dfgdfgfgfg@fgfg.klk', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 06:05:32', 0, '2017-06-28 06:05:32', NULL, 0),
(25, NULL, 13, 'Mr', 'czxv', 'cvcv', 'cvcxv', 'cvcvc@fgfg.lk', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 06:05:32', 0, '2017-06-28 06:05:32', NULL, 0),
(26, NULL, 14, 'Mr', 'hgjhgjhj', 'hjhj', 'hjhjhj', 'hjhj@eee.qq', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 06:09:03', 0, '2017-06-28 06:09:03', NULL, 0),
(27, NULL, 14, 'Mrs', 'fghfghfh', 'ghghg', 'ghghghgh', 'gfhgfh@uuuuoo.wqee', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 06:09:03', 0, '2017-06-28 06:09:03', NULL, 0),
(29, NULL, 15, 'Mr', 'gfhfghfgh', 'fghgh', 'fghghg', 'uiyuty@wwwwqq.ppp', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 06:12:19', 0, '2017-06-28 06:12:19', NULL, 0),
(31, NULL, 16, 'Mr', 'dfgdfg', 'bcgfgdfgf', 'vbvbvcbvbv', 'fgfg@qqqqqq.qqqqq', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 06:17:06', 0, '2017-06-28 06:17:06', NULL, 0),
(32, NULL, 1, 'Mr', 'ggsg', 'gsg', 'gsg', 'sfgsg@fgfdg.lk', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 09:09:40', 0, '2017-06-28 09:09:40', NULL, 0),
(33, NULL, 1, 'Mr', 'qqq', 'qqqq', 'qqqq', 'qqqqqqqq@qq.q', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 09:13:29', 0, '2017-06-28 09:13:29', NULL, 0),
(34, NULL, 1, 'Mr', 'gfgfg', 'gsgg', 'shghgh', 'gfshh@fgfg.popoppop', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 09:18:32', 0, '2017-06-28 09:18:32', NULL, 0),
(35, NULL, 1, 'Mr', 'hfghgh', 'lkghjghj', 'gdfhshgj', 'gjkjtytuyjrghsfgh@fhhrtgtyntyh.lkuy', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 09:26:52', 0, '2017-06-28 09:26:52', NULL, 0),
(36, NULL, 1, 'Mr', 'gsgdgdg', 'sgdgdsgg', 'sdgsgsgsg', 'sgsggdgytyweryty@gdfgf.lkl', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 09:29:09', 0, '2017-06-28 09:29:09', NULL, 0),
(37, NULL, 1, 'Mr', 'gdffg', 'fgdhfg', 'fghghg', 'ghgfhg@fgfg.lklkljk', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 09:36:00', 0, '2017-06-28 09:36:00', NULL, 0),
(38, NULL, 1, 'Mr', 'dfhghg', 'hjhjdhj', 'ghjhgjhjhj', 'hjhjfhdjhjhjd@fffgfgfg.lll', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 09:42:48', 0, '2017-06-28 09:42:48', NULL, 0),
(39, NULL, 1, 'Mr', 'fghghg', 'ghgfhfgh', 'ghgfhghgh', 'fghfghfghgf@gffg.jhlljl', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 09:46:41', 0, '2017-06-28 09:46:41', NULL, 0),
(40, NULL, 1, 'Mr', 'fgdjj', 'hgjdhj', 'hjghj', 'hgjghj@hdh.kl', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 09:49:10', 0, '2017-06-28 09:49:10', NULL, 0),
(41, NULL, 1, 'Mr', 'fgsghg', 'heyuyteyeyry', 'erytwythgf', 'hkuikwtyhks@hyujry.uoiyo', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 09:49:10', 0, '2017-06-28 09:49:10', NULL, 0),
(42, NULL, 1, 'Mr', 'ghgfh', 'ghjhj', 'hjhdjhj', 'ghjhjhgj@fgdfg.klj', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 09:50:23', 0, '2017-06-28 09:50:23', NULL, 0),
(43, NULL, 1, 'Mr', 'hghgfhg', 'yteyeryry', 'etykyiyqruyi', 'yiywiyiyt@hdtytwybres.oiu', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 09:50:23', 0, '2017-06-28 09:50:23', NULL, 0),
(44, NULL, 1, 'Mr', 'gfsgh', 'fghgfh', 'fghgfh', 'fghfghgh@gmgg.lk', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 09:56:15', 0, '2017-06-28 09:56:15', NULL, 0),
(45, NULL, 1, 'Mr', 'ssd', 'dfgfgfg', 'dfgfg', 'gghfhfh@fhetrtyertrt.oi', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 23:15:09', 0, '2017-06-28 23:15:09', NULL, 0),
(46, NULL, 1, 'Mr', 'gfgfdg', 'fgfg', 'dfgdf', 'dfgfg@fgdfg.klhlj', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 23:49:51', 0, '2017-06-28 23:49:51', NULL, 0),
(47, NULL, 1, 'Mr', 'gfg', 'fdgfg', 'dfg', 'fgfgdfg@dffh.jhkhjkjk', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 23:52:25', 0, '2017-06-28 23:52:25', NULL, 0),
(48, NULL, 1, 'Mr', 'dgfg', 'fgfg', 'fdgfdgdfg', 'dfgfdgfg@fghdfg.lklhl', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-28 23:54:26', 0, '2017-06-28 23:54:26', NULL, 0),
(49, NULL, 1, 'Mr', 'fgdfg', 'fgfdg', 'dfgfdgfg', 'ffdgdfgfg@fgdfg.lkl', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-29 00:21:59', 0, '2017-06-29 00:21:59', NULL, 0),
(50, NULL, 1, 'Mr', 'fgfg', 'fgdfg', 'dfgdfgf', 'fgdfggg@gfg.jklkkfghjfj', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-29 00:23:40', 0, '2017-06-29 00:23:40', NULL, 0),
(51, NULL, 1, 'Mr', 'fgfg', 'fgfg', 'dfgdfgdg', 'yrtyw@yryery.uioioy', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-29 00:24:35', 0, '2017-06-29 00:24:35', NULL, 0),
(52, NULL, 1, 'Mr', 'gdfshh', 'gfhgh', 'fghfghgh', 'gfhgfhfgh@gdfg.hjkjk', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-29 00:30:40', 0, '2017-06-29 00:30:40', NULL, 0),
(53, NULL, 1, 'Mr', 'fdh', 'ffdh', 'fhdfh', 'dfhdfhd@fgfdh.kjlkl', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-29 00:32:31', 0, '2017-06-29 00:32:31', NULL, 0),
(54, NULL, 1, 'Mr', 'gfdsh', 'hjhjj', 'fhjhdjhj', 'ghjhgjhgjhj@thh.klgjhkhgjhj', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-29 00:34:00', 0, '2017-06-29 00:34:00', NULL, 0),
(55, NULL, 1, 'Mr', 'gfdgfg', 'fgfg', 'fgdfgdfdg', 'fdgfdgdfgfgfgdfgd@ererrrr.popopo', NULL, NULL, 0, NULL, NULL, NULL, NULL, '::1', '2017-06-29 00:35:46', 0, '2017-06-29 00:35:46', NULL, 0),
(56, NULL, 1, 'Mr', 'Prasanna', 'marasinghe', 'software engineer', 'prasannasoon@gmail.com', NULL, NULL, 0, '0715845263', NULL, NULL, NULL, '::1', '2017-06-29 01:32:59', 0, '2017-06-29 01:32:59', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `membercompanies`
--

CREATE TABLE `membercompanies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `membership` int(1) NOT NULL DEFAULT '0' COMMENT '0 - member, 1 - patron member',
  `deleted` int(1) NOT NULL DEFAULT '0' COMMENT '0 - active, 1 - delete'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membercompanies`
--

INSERT INTO `membercompanies` (`id`, `name`, `country_id`, `membership`, `deleted`) VALUES
(1, '3M LANKA (PVT) LIMITED', NULL, 0, 0),
(2, '99X TECHNOLOGY LIMITED', NULL, 0, 0),
(3, 'A F JONES (EXPORTERS) CEYLON LTD A F', NULL, 0, 0),
(4, 'A M RAHIM & CO. (PVT) LTD A M', NULL, 0, 0),
(5, 'A T EXPORTS (PVT) LTD', NULL, 0, 0),
(6, 'AB MAURI LANKA (PRIVATE) LTD.', NULL, 0, 0),
(7, 'ABC FREIGHT SERVICES (PVT) LTD', NULL, 0, 0),
(8, 'ABC SHIPPING (PRIVATE) LTD', NULL, 0, 0),
(9, 'ABERDEEN HOLDINGS (PVT) LIMITED', NULL, 0, 0),
(10, 'ABIDALLY SONS (PVT) LTD', NULL, 0, 0),
(11, 'ACCESS INTERNATIONAL (PVT) LTD', NULL, 0, 0),
(12, 'ACE CHEMICALS (PVT) LTD', NULL, 0, 0),
(13, 'ACL CABLES PLC', NULL, 0, 0),
(14, 'ADAMEXPO', NULL, 0, 0),
(15, 'ADAMJEE LUKMANJEE & SONS LTD', NULL, 0, 0),
(16, 'AG INTERNATIONAL (PVT) LTD', NULL, 0, 0),
(17, 'AG STAR PLC', NULL, 0, 0),
(18, 'AGIO TOBACCO PROCESSING CO. (PVT) LTD', NULL, 0, 0),
(19, 'AGRO CONSOLIDATED (PVT) LTD', NULL, 0, 0),
(20, 'AGRO TECHNICA LTD', NULL, 0, 0),
(21, 'AIG INSURANCE LIMITED', NULL, 0, 0),
(22, 'AITKEN SPENCE PLC', NULL, 0, 0),
(23, 'AKBAR BROTHERS (PVT) LTD', NULL, 0, 0),
(24, 'AKZO NOBEL PAINTS LANKA (PVT) LTD', NULL, 0, 0),
(25, 'ALANKARA SKR (PVT) LTD', NULL, 0, 0),
(26, 'ALCHEMY HEAVY METALS (PVT) LTD.', NULL, 0, 0),
(27, 'ALHAMBRA HOTELS LTD', NULL, 0, 0),
(28, 'ALLIANCE FINANCE CO PLC', NULL, 0, 0),
(29, 'ALLIANCE FIVE (PVT) LTD', NULL, 0, 0),
(30, 'ALLIANZ INSURANCE LANKA LTD', NULL, 0, 0),
(31, 'ALLIED COMMERCIAL FERTILIZERS (PVT) LTD', NULL, 0, 0),
(32, 'ALMAR TRADING CO. (PVT) LTD', NULL, 0, 0),
(33, 'ALUMEX PLC', NULL, 0, 0),
(34, 'AMANA BANK PLC', NULL, 0, 0),
(35, 'AMANA HOLDINGS LIMITED', NULL, 0, 0),
(36, 'AMANA TAKAFUL PLC', NULL, 0, 0),
(37, 'AMAZON TRADING (PVT) LTD', NULL, 0, 0),
(38, 'AMERICAN EDUCATION CENTRE LTD', NULL, 0, 0),
(39, 'ANSELL LANKA (PVT) LTD', NULL, 0, 0),
(40, 'ANVERALLY & SONS (PVT) LTD', NULL, 0, 0),
(41, 'APL LANKA (PVT) LTD', NULL, 0, 0),
(42, 'AQUA PACKAGING PVT LTD', NULL, 0, 0),
(43, 'ARISTONS (PVT) LTD', NULL, 0, 0),
(44, 'ARPICO FINANCE COMPANY PLC', NULL, 0, 0),
(45, 'ASHA AGENCIES LTD', NULL, 0, 0),
(46, 'ASIA CAPITAL PLC', NULL, 0, 0),
(47, 'ASIA PACIFIC INVESTMENTS (PVT) LTD', NULL, 0, 0),
(48, 'ASIA SIYAKA COMMODITIES PLC', NULL, 0, 0),
(49, 'ASIAN ALLIANCE INSURANCE COMPANY PLC', NULL, 0, 0),
(50, 'ASIAN HOTELS AND PROPERTIES PLC', NULL, 0, 0),
(51, 'ASSOCIATED CEAT (PVT) LTD', NULL, 0, 0),
(52, 'ASSOCIATED ELECTRICAL CORPORATION LTD', NULL, 0, 0),
(53, 'ATG CEYLON (PVT) LTD', NULL, 0, 0),
(54, 'AVERY DENNISON LANKA (PVT) LTD', NULL, 0, 0),
(55, 'B. P. DE SILVA INVESTMENTS LTD', NULL, 0, 0),
(56, 'BAIRAHA FARMS PLC', NULL, 0, 0),
(57, 'BALFOUR BEATTY CEYLON (PRIVATE) LIMITED', NULL, 0, 0),
(58, 'BALTIC TESTING LANKA (PRIVATE) LIMITED', NULL, 0, 0),
(59, 'BAM HOLDINGS LTD', NULL, 0, 0),
(60, 'BARTLEET & CO. LTD', NULL, 0, 0),
(61, 'BASF LANKA (PVT) LTD', NULL, 0, 0),
(62, 'BHARTI AIRTEL LANKA (PVT) LIMITED', NULL, 0, 0),
(63, 'BILEETA  (PVT) LTD', NULL, 0, 0),
(64, 'BOGALA GRAPHITE LANKA PLC', NULL, 0, 0),
(65, 'BOGAWANTALAWA TEA  ESTATES PLC.', NULL, 0, 0),
(66, 'BOSANQUET & SKRINE LTD', NULL, 0, 0),
(67, 'BRANDIX LANKA LIMITED', NULL, 0, 0),
(68, 'BROWN AND C N LANKA (PVT) LTD', NULL, 0, 0),
(69, 'BTL LANKA (PVT) LTD', NULL, 0, 0),
(70, 'BUILDMART LANKA (PVT) LTD', NULL, 0, 0),
(71, 'BUILT ELEMENT LIMITED', NULL, 0, 0),
(72, 'C. W. MACKIE PLC', NULL, 0, 0),
(73, 'CAMSO LOADSTAR (PVT) LTD', NULL, 0, 0),
(74, 'CANDOR EQUITIES LIMITED', NULL, 0, 0),
(75, 'CARSON CUMBERBATCH & CO. LTD', NULL, 0, 0),
(76, 'CCIC SOUTH ASIA (PVT) LTD', NULL, 0, 0),
(77, 'CCS LANKA (PVT) LIMITED', NULL, 0, 0),
(78, 'CECILIYAN ASSOCIATES (PVT) LTD', NULL, 0, 0),
(79, 'CEGETEL SERVICES (PVT) LTD', NULL, 0, 0),
(80, 'CELCIUS SOLUTIONS (PVT) LTD', NULL, 0, 0),
(81, 'CENMETRIX (PVT) LTD', NULL, 0, 0),
(82, 'CENTRAL FINANCE COMPANY PLC', NULL, 0, 0),
(83, 'CEYLEX ENGINEERING (PRIVATE) LIMITED', NULL, 0, 0),
(84, 'CEYLINCO GENERAL INSURANCE LIMITED', NULL, 0, 0),
(85, 'CEYLON AUTO INDUSTRIES LTD', NULL, 0, 0),
(86, 'CEYLON BUSINESS APPLIANCES (PVT) LTD', NULL, 0, 0),
(87, 'CEYLON COLD STORES PLC', NULL, 0, 0),
(88, 'CEYLON FRESH TEAS (PVT) LTD', NULL, 0, 0),
(89, 'CEYLON HOLIDAY RESORTS LTD', NULL, 0, 0),
(90, 'CEYLON OXYGEN LIMITED', NULL, 0, 0),
(91, 'CEYLON PENCIL CO. (PVT) LTD', NULL, 0, 0),
(92, 'CEYLON PLANTATIONS COLOMBO (PVT) LTD', NULL, 0, 0),
(93, 'CEYLON SHIPPING LINES LTD', NULL, 0, 0),
(94, 'CEYLON TEA MARKETING (PVT) LTD', NULL, 0, 0),
(95, 'CEYLON TEA PLANTATION EXPORTS (PTE) LTD', NULL, 0, 0),
(96, 'CEYLON TEA SERVICES PLC', NULL, 0, 0),
(97, 'CEYLON TRADING CO. LTD', NULL, 0, 0),
(98, 'CEYOKA (PVT) LTD', NULL, 0, 0),
(99, 'CHARTER HOUSE INTERNATIONAL (PVT) LTD', NULL, 0, 0),
(100, 'CHAS P. HAYLEY & CO. (PVT) LTD', NULL, 0, 0),
(101, 'CHEC PORT CITY COLOMBO (PVT) LTD', NULL, 0, 0),
(102, 'CHEMANEX PLC', NULL, 0, 0),
(103, 'CIC AGRI BUSINESSES (PRIVATE) LIMITED', NULL, 0, 0),
(104, 'CINNAMON LAKESIDE COLOMBO', NULL, 0, 0),
(105, 'CITIBANK N A', NULL, 0, 0),
(106, 'CITIHEALTH IMPORTS (PVT) LTD', NULL, 0, 0),
(107, 'CITY CYCLE INDUSTRIES MANUFACTURING (PVT) LTD', NULL, 0, 0),
(108, 'CIVARO LANKA (PRIVATE) LIMITED', NULL, 0, 0),
(109, 'CL SYNERGY (PVT) LTD', NULL, 0, 0),
(110, 'CML - MTD CONSTRUCTION LTD', NULL, 0, 0),
(111, 'COATS THREAD EXPORTS (PVT) LIMITED', NULL, 0, 0),
(112, 'COCA-COLA BEVERAGES SRI LANKA LTD', NULL, 0, 0),
(113, 'COCOTANA COCONUT PRODUCTS', NULL, 0, 0),
(114, 'CODEGEN INTERNATIONAL (PVT) LTD', NULL, 0, 0),
(115, 'COLOMBO COURTYARD (PVT) LTD', NULL, 0, 0),
(116, 'COLOMBO DOCKYARD PLC', NULL, 0, 0),
(117, 'COLOMBO INTERNATIONAL CONTAINER TERMINALS LIMITED', NULL, 0, 0),
(118, 'COLOMBO LAND & DEVELOPMENT CO. PLC', NULL, 0, 0),
(119, 'COLT TRADING CO. (PVT) LTD', NULL, 0, 0),
(120, 'COMMERCIAL BANK OF CEYLON PLC', NULL, 0, 0),
(121, 'COMMERCIAL EXPORT COMPANY', NULL, 0, 0),
(122, 'COMMERCIAL LEASING & FINANCE PLC', NULL, 0, 0),
(123, 'COMMUNICATION & BUSINESS EQUIPMENT (PVT) LTD', NULL, 0, 0),
(124, 'CONSOLE ELECTRONICS (PVT) LTD', NULL, 0, 0),
(125, 'CONSOLIDATED BUSINESS SYSTEMS (PVT) LTD', NULL, 0, 0),
(126, 'COURTAULDS CLOTHING LANKA (PVT) LTD', NULL, 0, 0),
(127, 'CT HOLDINGS PLC', NULL, 0, 0),
(128, 'D L & F DE SARAM', NULL, 0, 0),
(129, 'DANKOTUWA PORCELAIN PLC', NULL, 0, 0),
(130, 'DARLEY BUTLER & CO. LTD', NULL, 0, 0),
(131, 'DART GLOBAL LOGISTICS (PVT) LTD', NULL, 0, 0),
(132, 'DAVID PIERIS MOTOR CO. LTD.', NULL, 0, 0),
(133, 'DAYA GROUP PVT LTD', NULL, 0, 0),
(134, 'DE SARAM F J & G', NULL, 0, 0),
(135, 'DEKAR HOLDINGS (PVT) LTD', NULL, 0, 0),
(136, 'DELLOGISTICS (PVT) LTD', NULL, 0, 0),
(137, 'DELMEGE (PRIVATE) LTD', NULL, 0, 0),
(138, 'DEUTSCHE BANK AKTIENGESELLSCHAFT (COLOMBO BRANCH)', NULL, 0, 0),
(139, 'DEVI TRADING CO', NULL, 0, 0),
(140, 'DILMAH FINE TEAS & HERBS (PVT) LTD', NULL, 0, 0),
(141, 'DIOR PROPERTIES AND INVESTMENTS (P) LIMITED', NULL, 0, 0),
(142, 'DIPPED PRODUCTS PLC', NULL, 0, 0),
(143, 'DIRECT MAILING SERVICES (PVT) LTD', NULL, 0, 0),
(144, 'DOUGLAS & SONS (PVT) LTD', NULL, 0, 0),
(145, 'DRH LOGISTICS LANKA (PVT) LTD', NULL, 0, 0),
(146, 'DSI SAMSON GROUP (PVT) LTD', NULL, 0, 0),
(147, 'DTW INTERNATIONAL (PVT) LTD', NULL, 0, 0),
(148, 'DYNATEC (PVT) LTD', NULL, 0, 0),
(149, 'E W INFORMATION SYSTEMS LTD', NULL, 0, 0),
(150, 'EAM MALIBAN TEXTILES (PVT) LTD', NULL, 0, 0),
(151, 'EAST WEST MARKETING (PRIVATE) LTD', NULL, 0, 0),
(152, 'EASTERN BROKERS LTD', NULL, 0, 0),
(153, 'EASTERN MERCHANTS PLC', NULL, 0, 0),
(154, 'EASTERN PRODUCE EXPORTS', NULL, 0, 0),
(155, 'EBONY HOLDINGS (PVT) LTD', NULL, 0, 0),
(156, 'ELASTOMERIC ENGINEERING CO. LTD', NULL, 0, 0),
(157, 'ELSTEEL (PRIVATE) LIMITED', NULL, 0, 0),
(158, 'EMERCHEMIE NB (CEYLON) LIMITED', NULL, 0, 0),
(159, 'EMPIRE TEAS (PVT) LTD', NULL, 0, 0),
(160, 'ENERGIZER LANKA LTD', NULL, 0, 0),
(161, 'ENGINEERING CONSULTANTS (PVT) LTD', NULL, 0, 0),
(162, 'ENVIRON SUSTAINABILITY GLOBE (PVT) LTD', NULL, 0, 0),
(163, 'EPIC LANKA (PVT) LTD', NULL, 0, 0),
(164, 'EQUITY INVESTMENTS LANKA LTD', NULL, 0, 0),
(165, 'ERNST & YOUNG', NULL, 0, 0),
(166, 'ESKIMO FASHION KNITWEAR (PRIVATE) LTD', NULL, 0, 0),
(167, 'ETISALAT LANKA (PRIVATE) LTD', NULL, 0, 0),
(168, 'EUREKA TECHNOLOGY PARTNERS (PVT) LTD', NULL, 0, 0),
(169, 'EURO SUBSTRATES (PVT) LTD', NULL, 0, 0),
(170, 'EURO-SCAN EXPORTS (PVT) LTD', NULL, 0, 0),
(171, 'EXCEL GLOBAL HOLDINGS (PVT) LTD', NULL, 0, 0),
(172, 'EXPOLANKA (PVT) LIMITED', NULL, 0, 0),
(173, 'EXPOTEAS CEYLON (PRIVATE) LIMITED', NULL, 0, 0),
(174, 'F G HOLDINGS (PVT) LTD', NULL, 0, 0),
(175, 'FAIRFIRST INSURANCE LTD', NULL, 0, 0),
(176, 'FANTASIA ELASTICS (PVT) LTD', NULL, 0, 0),
(177, 'FASCINATION EXPORTS (PVT) LTD', NULL, 0, 0),
(178, 'FENTONS LTD', NULL, 0, 0),
(179, 'FERRERO LANKA (PVT) LTD', NULL, 0, 0),
(180, 'FINCO LTD', NULL, 0, 0),
(181, 'FINE FINISH ENGINEERING (PVT) LTD', NULL, 0, 0),
(182, 'FINLAY TEA SOLUTIONS COLOMBO (PVT) LTD', NULL, 0, 0),
(183, 'FIRE-X PROJECTS (PVT) LTD', NULL, 0, 0),
(184, 'FONTERRA BRANDS LANKA (PVT) LTD.', NULL, 0, 0),
(185, 'FORBES MARSHALL LANKA (PRIVATE) LIMITED', NULL, 0, 0),
(186, 'FOSTER & REED (PVT) LTD', NULL, 0, 0),
(187, 'FREE LANKA TRADING CO. LTD', NULL, 0, 0),
(188, 'FREIGHT PLAN (PVT) LTD', NULL, 0, 0),
(189, 'FROSTAIRE REFRIGERATION LTD', NULL, 0, 0),
(190, 'GAJMA & CO', NULL, 0, 0),
(191, 'GALABODA GROUP', NULL, 0, 0),
(192, 'GALLE FACE HOTEL CO. LTD', NULL, 0, 0),
(193, 'GAMINI CONSTRUCTION', NULL, 0, 0),
(194, 'GAMMA PHARMACEUTICALS (PVT) LTD', NULL, 0, 0),
(195, 'GAMMA PIZZAKRAFT LANKA (PVT) LTD', NULL, 0, 0),
(196, 'GENERAL ENGINEERS & SUPPLIERS CO.', NULL, 0, 0),
(197, 'GENERAL INKS LTD', NULL, 0, 0),
(198, 'GEO-CHEM LANKA (PVT) LTD', NULL, 0, 0),
(199, 'GEOCYC (PVT) LTD', NULL, 0, 0),
(200, 'GEORGE STEUART HEALTH (PVT) LTD', NULL, 0, 0),
(201, 'GEORGE STEUART TEAS PVT LTD', NULL, 0, 0),
(202, 'GLOBAL SEA FOODS (PVT) LTD', NULL, 0, 0),
(203, 'GLORCHEM ENTERPRISE', NULL, 0, 0),
(204, 'GNANAM IMPORTS (PVT) LTD', NULL, 0, 0),
(205, 'GODREJ HOUSEHOLD PRODUCTS LANKA (PRIVATE) LTD', NULL, 0, 0),
(206, 'GORDON FRAZER & CO LTD', NULL, 0, 0),
(207, 'GORDON VINTAGE TEAS CEYLON (PRIVATE) LIMITED', NULL, 0, 0),
(208, 'GREEN HORIZON ENTERPRISE (PVT) LTD', NULL, 0, 0),
(209, 'H DON CAROLIS & SONS (PRIVATE) LTD', NULL, 0, 0),
(210, 'HAMEED BROTHERS COLOMBO (PVT) LTD', NULL, 0, 0),
(211, 'HAMEEDIA STORES (PVT) LTD', NULL, 0, 0),
(212, 'HANDS INTERNATIONAL INTIMATES (PVT) LTD', NULL, 0, 0),
(213, 'HARRISONS (COLOMBO) LTD', NULL, 0, 0),
(214, 'HAYCARB PLC', NULL, 0, 0),
(215, 'HAYLEYS ADVANTIS LIMITED', NULL, 0, 0),
(216, 'HAYLEYS AGRICULTURE HOLDINGS LTD', NULL, 0, 0),
(217, 'HAYLEYS GLOBAL BEVERAGES (PVT) LTD', NULL, 0, 0),
(218, 'HDFC', NULL, 0, 0),
(219, 'HEATH & CO (CEYLON) LTD', NULL, 0, 0),
(220, 'HELA CLOTHING (PVT) LTD', NULL, 0, 0),
(221, 'HELLMANN WORLDWIDE LOGISTICS (PVT) LTD', NULL, 0, 0),
(222, 'HEMACHANDRAS (KANDY) LTD', NULL, 0, 0),
(223, 'HEMAS PHARMACEUTICALS (PTE) LTD', NULL, 0, 0),
(224, 'HERITAGE TEAS (PVT) LTD', NULL, 0, 0),
(225, 'HETTIGODA INDUSTRIES (PVT) LTD', NULL, 0, 0),
(226, 'HILTON COLOMBO', NULL, 0, 0),
(227, 'HIRDARAMANI INTERNATIONAL EXPORTS (PRIVATE) LIMITE', NULL, 0, 0),
(228, 'HNB ASSURANCE PLC', NULL, 0, 0),
(229, 'HOLCEM (PVT) LTD', NULL, 0, 0),
(230, 'HOVAEL HOLDINGS (PVT) LTD', NULL, 0, 0),
(231, 'HUNTER & CO. PLC', NULL, 0, 0),
(232, 'HVA FOODS PLC', NULL, 0, 0),
(233, 'I C L P ARBITRATION CENTRE', NULL, 0, 0),
(234, 'IBM WORLD TRADE CORPORATION', NULL, 0, 0),
(235, 'IFS RESEARCH AND DEVELOPMENT PVT. LTD.', NULL, 0, 0),
(236, 'INDOCEAN DEVELOPERS (PVT) LTD', NULL, 0, 0),
(237, 'INDUSTRIAL CLOTHINGS LTD', NULL, 0, 0),
(238, 'INFOTECHS (PVT) LTD', NULL, 0, 0),
(239, 'INTERFASHION (PVT) LTD', NULL, 0, 0),
(240, 'INTERNATIONAL DISTILLERS LIMITED', NULL, 0, 0),
(241, 'INTERNATIONAL FOODSTUFF CO. AGRI BIO-TECH PVT LTD', NULL, 0, 0),
(242, 'INTERTEK LANKA (PVT) LTD', NULL, 0, 0),
(243, 'INVENTURE TRIMS INTERNATIONAL (PVT) LTD', NULL, 0, 0),
(244, 'ISIN LANKA (PVT) LTD.', NULL, 0, 0),
(245, 'ISURU ENGINEERING (PTE) LTD', NULL, 0, 0),
(246, 'J L MORISON SON & JONES (CEYLON) PLC J L', NULL, 0, 0),
(247, 'JAFFERJEE AND SONS(PVT)LTD', NULL, 0, 0),
(248, 'JAFFERJEE BROTHERS', NULL, 0, 0),
(249, 'JAGRO (PVT) LTD', NULL, 0, 0),
(250, 'JANASHAKTHI INSURANCE PLC', NULL, 0, 0),
(251, 'JETWING TRAVELS (PVT) LTD', NULL, 0, 0),
(252, 'JF & I PACKAGING (PVT) LTD', NULL, 0, 0),
(253, 'JF PACKAGING (PVT) LTD', NULL, 0, 0),
(254, 'JIFFY PRODUCTS S.L. (PVT) LTD', NULL, 0, 0),
(255, 'JINASENA (PVT) LTD', NULL, 0, 0),
(256, 'JOHN KEELLS OFFICE AUTOMATION (PVT) LTD', NULL, 0, 0),
(257, 'JOHN KEELLS PLC', NULL, 0, 0),
(258, 'JULIUS AND CREASY', NULL, 0, 0),
(259, 'JUST IN TIME HOLDINGS (PVT) LTD', NULL, 0, 0),
(260, 'JYSPER CATERING EQUIPMENT & SUPPLIES (PVT) LTD', NULL, 0, 0),
(261, 'K.I.K. LANKA (PVT) LTD', NULL, 0, 0),
(262, 'KANDURATA UMBRELLA INDUSTRIES (PVT) LIMITED', NULL, 0, 0),
(263, 'KAUSHALYA TEA EXPORT COMPANY', NULL, 0, 0),
(264, 'KAVIN POLYMERS (PVT) LTD', NULL, 0, 0),
(265, 'KELANI CABLES PLC', NULL, 0, 0),
(266, 'KINGSLAKE ENGINEERING SYSTEMS (PVT) LTD', NULL, 0, 0),
(267, 'KPMG', NULL, 0, 0),
(268, 'KUNDANMALS LTD', NULL, 0, 0),
(269, 'L T L HOLDINGS (PRIVATE) LIMITED', NULL, 0, 0),
(270, 'LAKDHANAVI LIMITED', NULL, 0, 0),
(271, 'LANKA ALUMINIUM INDUSTRIES LTD', NULL, 0, 0),
(272, 'LANKA ASHOK LEYLAND PLC', NULL, 0, 0),
(273, 'LANKA BELL LIMITED', NULL, 0, 0),
(274, 'LANKA CANNERIES (PVT) LTD', NULL, 0, 0),
(275, 'LANKA CENTURY INVESTMENTS PLC', NULL, 0, 0),
(276, 'LANKA CERAMIC PLC', NULL, 0, 0),
(277, 'LANKA COMMODITY BROKERS LTD', NULL, 0, 0),
(278, 'LANKA EXHIBITION & CONFERENCE SERVICES (PVT) LTD', NULL, 0, 0),
(279, 'LANKA IOC PLC', NULL, 0, 0),
(280, 'LANKA MILK FOODS (CWE) PLC', NULL, 0, 0),
(281, 'LANKA MINERAL SANDS LTD', NULL, 0, 0),
(282, 'LANKA ORIX LEASING CO. LTD', NULL, 0, 0),
(283, 'LANKA RUBBERISED COIR PADS MANUFACTURING COMPANY', NULL, 0, 0),
(284, 'LANKA SPECIAL STEELS LIMITED', NULL, 0, 0),
(285, 'LANKA TILES PLC', NULL, 0, 0),
(286, 'LANKA TRACTORS LTD', NULL, 0, 0),
(287, 'LANKA VENTURES PLC', NULL, 0, 0),
(288, 'LANKA WALLTILES PLC', NULL, 0, 0),
(289, 'LANKEM CEYLON PLC', NULL, 0, 0),
(290, 'LANKEM DEVELOPMENTS PLC', NULL, 0, 0),
(291, 'LAXAPANA BATTERIES PLC', NULL, 0, 0),
(292, 'LEE HEDGES PLC', NULL, 0, 0),
(293, 'LEELA EXPORTS & IMPORTS', NULL, 0, 0),
(294, 'LEEMA CREATIONS (PVT) LTD', NULL, 0, 0),
(295, 'LIGNOCELL LTD', NULL, 0, 0),
(296, 'LITRO GAS LANKA LTD', NULL, 0, 0),
(297, 'LLOYDS AUTO MART (PVT) LTD', NULL, 0, 0),
(298, 'LTL TRANSFORMERS (PRIVATE) LTD', NULL, 0, 0),
(299, 'M A RAZAK & CO. LTD M A', NULL, 0, 0),
(300, 'M ABDULALLY', NULL, 0, 0),
(301, 'M E H INDUSTRIES (PVT) LTD', NULL, 0, 0),
(302, 'M S J INDUSTRIES (CEYLON) (PRIVATE) LTD', NULL, 0, 0),
(303, 'MABROC TEAS (PVT) LTD', NULL, 0, 0),
(304, 'MACSA (PVT) LTD', NULL, 0, 0),
(305, 'MAERSK LANKA (PVT) LTD', NULL, 0, 0),
(306, 'MAHAWELI MARINE CEMENT (PVT)  LTD', NULL, 0, 0),
(307, 'MAHMOOD TEA INTERNATIONAL (PVT) LTD', NULL, 0, 0),
(308, 'MAINETTECH LANKA (PVT) LTD', NULL, 0, 0),
(309, 'MAJESTIC ELECTRIC COMPANY (PVT) LTD', NULL, 0, 0),
(310, 'MALSHIP (CEYLON) LTD', NULL, 0, 0),
(311, 'MALWATTE VALLEY PLANTATIONS PLC', NULL, 0, 0),
(312, 'MANSEL (CEYLON) (PRIVATE) LTD', NULL, 0, 0),
(313, 'MARINE ONE (PVT) LTD', NULL, 0, 0),
(314, 'MARINE TRANSPORT SERVICES (PVT) LTD', NULL, 0, 0),
(315, 'MAS ACTIVE (PVT) LTD', NULL, 0, 0),
(316, 'MASCONS (PRIVATE) LTD', NULL, 0, 0),
(317, 'MASKELIYA TEA GARDENS CEYLON LTD', NULL, 0, 0),
(318, 'MASTER TEAS AND SPICES PVT LTD', NULL, 0, 0),
(319, 'MAY COMPANY CEYLON  (PVT) LTD', NULL, 0, 0),
(320, 'MCB BANK LTD', NULL, 0, 0),
(321, 'MEAD LEE TRADING CO (PVT)LTD', NULL, 0, 0),
(322, 'MEDIQUIPMENT LTD', NULL, 0, 0),
(323, 'MEEZAN & CO (PVT) LTD', NULL, 0, 0),
(324, 'MEGA HEATERS (PVT) LTD', NULL, 0, 0),
(325, 'MELSTA REGAL FINANCE LTD', NULL, 0, 0),
(326, 'MERCANTILE INVESTMENTS AND FINANCE PLC', NULL, 0, 0),
(327, 'MERCANTILE PRODUCE BROKERS (PVT) LTD', NULL, 0, 0),
(328, 'MERCHANT BANK OF SRI LANKA & FINANCE PLC', NULL, 0, 0),
(329, 'METROPOLITAN OFFICE (PVT) LTD', NULL, 0, 0),
(330, 'MICROCELLS (PRIVATE) LTD', NULL, 0, 0),
(331, 'MICROIMAGE (PRIVATE) LIMITED', NULL, 0, 0),
(332, 'MICROSOFT SRI LANKA (PVT) LTD', NULL, 0, 0),
(333, 'MIDAYA CERAMIC CO. (PVT) LTD', NULL, 0, 0),
(334, 'MILFORD EXPORTS (CEYLON) (PVT) LTD', NULL, 0, 0),
(335, 'MILLENNIUM INFORMATION TECHNOLOGIES (PVT) LTD', NULL, 0, 0),
(336, 'MILLERS LIMITED', NULL, 0, 0),
(337, 'MJF EXPORTS (PVT) LTD', NULL, 0, 0),
(338, 'MJF TEAS (PRIVATE) LIMITED', NULL, 0, 0),
(339, 'MLESNA CEYLON (PVT) LTD.', NULL, 0, 0),
(340, 'MOUNTAIN HAWK EXPRESS (PVT) LTD', NULL, 0, 0),
(341, 'MUFADDAL TRADERS', NULL, 0, 0),
(342, 'MULTIFORM CHEMICALS LTD', NULL, 0, 0),
(343, 'MUSHAN INTERNATIONAL', NULL, 0, 0),
(344, 'NATIONS TRUST BANK PLC', NULL, 0, 0),
(345, 'NAWALOKA CONSTRUCTION CO. (PVT) LTD', NULL, 0, 0),
(346, 'NEW UNIVERS CORPORATE CLOTHING PVT LTD', NULL, 0, 0),
(347, 'NIPPON PAINT LANKA (PVT) LTD', NULL, 0, 0),
(348, 'NISOL DIAMONDS (PVT) LTD', NULL, 0, 0),
(349, 'NORTH MANUFACTURING (PVT) LTD', NULL, 0, 0),
(350, 'NOVELTY OVERSEAS (PVT) LTD', NULL, 0, 0),
(351, 'OCEANPICK (PVT) LTD', NULL, 0, 0),
(352, 'ODEL PLC', NULL, 0, 0),
(353, 'OHLUMS CLINIC & LABORATORIES (PVT) LTD', NULL, 0, 0),
(354, 'OMEGA LINE LTD', NULL, 0, 0),
(355, 'OPTIMA DESIGNS (PVT) LTD', NULL, 0, 0),
(356, 'OREL CORPORATION (PVT) LTD', NULL, 0, 0),
(357, 'OVERSEAS REALTY (CEYLON) PLC', NULL, 0, 0),
(358, 'OXLEY THREADS LANKA (PVT) LTD', NULL, 0, 0),
(359, 'P P P JINADASA (PVT) LTD', NULL, 0, 0),
(360, 'PACKAGES LANKA (PVT) LTD', NULL, 0, 0),
(361, 'PAN ASIA BANKING CORPORATION LTD', NULL, 0, 0),
(362, 'PAN ASIA LTD', NULL, 0, 0),
(363, 'PAPERCOM TRADERS', NULL, 0, 0),
(364, 'PEOPLES BANK', NULL, 0, 0),
(365, 'PERERA & SONS (BAKERS) LTD', NULL, 0, 0),
(366, 'PERFEITI VAN MELLE LANKA (PRIVATE) LTD', NULL, 0, 0),
(367, 'PHOENIX O & M (PVT) LTD', NULL, 0, 0),
(368, 'PIRAMAL GLASS CEYLON PLC', NULL, 0, 0),
(369, 'POLYPACKAGING INDUSTRIES (PVT) LTD', NULL, 0, 0),
(370, 'PRADESHIYA SANWARDHANA BANK', NULL, 0, 0),
(371, 'PREMIER NATURAL TEAS (PVT) LTD', NULL, 0, 0),
(372, 'PREMIUM INTERNATIONAL (PVT) LTD', NULL, 0, 0),
(373, 'PRIMA CEYLON (PRIVATE) LIMITED', NULL, 0, 0),
(374, 'PRINTCARE PACKAGING (PVT) LTD', NULL, 0, 0),
(375, 'PUBLIC BANK BERHAD', NULL, 0, 0),
(376, 'PULSAR SHIPPING AGENCIES (PVT) LTD', NULL, 0, 0),
(377, 'PULSES SPLITTING & PROCESSING INDUSTRY (PVT) LTD', NULL, 0, 0),
(378, 'PYRAMID LANKA (PRIVATE) LIMITED', NULL, 0, 0),
(379, 'QUALITEA CEYLON (PRIVATE) LTD', NULL, 0, 0),
(380, 'QUANTUM CLOTHING LANKA (PVT) LTD', NULL, 0, 0),
(381, 'QUICKSHAWS LTD', NULL, 0, 0),
(382, 'QUIKPAK (PVT) LTD', NULL, 0, 0),
(383, 'R.G. BROTHERS', NULL, 0, 0),
(384, 'R.I.L PROPERTY LTD', NULL, 0, 0),
(385, 'RANFER TEAS (PVT) LTD', NULL, 0, 0),
(386, 'RAVI INDUSTRIES LTD', NULL, 0, 0),
(387, 'RECKITT BENCKISER (LANKA) LTD', NULL, 0, 0),
(388, 'RED APPLE TRAVEL & HOLIDAYS LANKA (PVT) LTD', NULL, 0, 0),
(389, 'REGENCY TEAS (PVT) LTD', NULL, 0, 0),
(390, 'REGNIS (LANKA) PLC', NULL, 0, 0),
(391, 'RENUKA HOLDINGS PLC', NULL, 0, 0),
(392, 'RHINO ROOFING PRODUCTS LIMITED', NULL, 0, 0),
(393, 'RICHLIFE DAIRIES LTD', NULL, 0, 0),
(394, 'RILEYS (PVT) LTD', NULL, 0, 0),
(395, 'ROCKLAND DISTILLERIES (PRIVATE) LTD', NULL, 0, 0),
(396, 'ROYAL CERAMICS LANKA PLC', NULL, 0, 0),
(397, 'RPC MANAGEMENT SERVICES (PVT) LTD', NULL, 0, 0),
(398, 'RS TRADING (PVT) LTD', NULL, 0, 0),
(399, 'RURAL RETURNS (GUARANTEE) LIMITED', NULL, 0, 0),
(400, 'S A SILVA  AND SONS LANKA PVT LTD', NULL, 0, 0),
(401, 'S. R. STEEL (PVT) LTD', NULL, 0, 0),
(402, 'SABOOR CHATOOR (PRIVATE) LTD', NULL, 0, 0),
(403, 'SAMSON RECLAIM RUBBERS LTD', NULL, 0, 0),
(404, 'SANASA DEVELOPMENT BANK', NULL, 0, 0),
(405, 'SANJEEWAKA AYURVEDIC PRODUCTS (PVT) LTD', NULL, 0, 0),
(406, 'SANOFI LANKA LTD', NULL, 0, 0),
(407, 'SATHOSA MOTORS PLC', NULL, 0, 0),
(408, 'SB CONSORTIUM (PVT) LTD', NULL, 0, 0),
(409, 'SCANWELL LOGISTICS COLOMBO (PVT) LTD', NULL, 0, 0),
(410, 'SELMO (PVT) LTD', NULL, 0, 0),
(411, 'SENARATNE INSURANCE BROKERS (PVT) LTD', NULL, 0, 0),
(412, 'SENOK TRADE COMBINE (PVT) LTD', NULL, 0, 0),
(413, 'SERENDIB FLOUR MILLS (PVT) LTD', NULL, 0, 0),
(414, 'SETMIL - UNITED CARGO (PVT) LTD', NULL, 0, 0),
(415, 'SEYLAN BANK PLC', NULL, 0, 0),
(416, 'SGS LANKA (PVT) LTD', NULL, 0, 0),
(417, 'SHAN TEAS (PVT) LTD', NULL, 0, 0),
(418, 'SHANGRI-LA HOTELS LANKA (PVT) LTD', NULL, 0, 0),
(419, 'SHEHANS (PVT) LTD', NULL, 0, 0),
(420, 'SHREE MARBLES & GRANITE (PVT) LTD', NULL, 0, 0),
(421, 'SHUMS & CO. LTD', NULL, 0, 0),
(422, 'SIAM CITY CEMENT (LANKA) LIMITED', NULL, 0, 0),
(423, 'SIERRA TECHNOLOGY HOLDINGS (PRIVATE) LIMITED', NULL, 0, 0),
(424, 'SIFANI JEWELLERS (PVT) LTD', NULL, 0, 0),
(425, 'SILK ROUTE CEYLON MERCHANTS (PVT) LTD', NULL, 0, 0),
(426, 'SINGER (SRI LANKA) PLC', NULL, 0, 0),
(427, 'SINGER INDUSTRIES (CEYLON) LTD', NULL, 0, 0),
(428, 'SINGWORLD LANKA (PVT) LTD', NULL, 0, 0),
(429, 'SINWA HOLDINGS LTD', NULL, 0, 0),
(430, 'SJMS ASSOCIATES', NULL, 0, 0),
(431, 'SKILLS INTERNATIONAL (PVT) LTD', NULL, 0, 0),
(432, 'S-LON LANKA (PVT) LTD', NULL, 0, 0),
(433, 'SMART SHIRTS (LANKA) LTD', NULL, 0, 0),
(434, 'SMITHKLINE BEECHAM (PVT) LTD', NULL, 0, 0),
(435, 'SML FRONTIER AUTOMOTIVE (PVT) LTD', NULL, 0, 0),
(436, 'SOFTLOGIC RETAIL (PVT) LTD', NULL, 0, 0),
(437, 'SOJITZ KELANITISSA (PRIVATE) LIMITED', NULL, 0, 0),
(438, 'SOUTH SEA IMPEX (PTE) LTD', NULL, 0, 0),
(439, 'SPEAR INTERNATIONAL (PVT) LTD', NULL, 0, 0),
(440, 'SPICECO LTD', NULL, 0, 0),
(441, 'SRI LANKA BUSINESS DEVELOPMENT CENTRE', NULL, 0, 0),
(442, 'SRI LANKA EXPORT CREDIT INSURANCE CORPORATION', NULL, 0, 0),
(443, 'SRI LANKA INSURANCE CORPORATION', NULL, 0, 0),
(444, 'SRI LANKA SHIPPING COMPANY LTD', NULL, 0, 0),
(445, 'SRI LANKA STATE TRADING (GENERAL) CORPORATION', NULL, 0, 0),
(446, 'SRI LANKA TELECOM PLC', NULL, 0, 0),
(447, 'SRI LANKA UMBRELLA INDUSTRIES', NULL, 0, 0),
(448, 'SRI RAMCO ROOFINGS LANKA (PVT) LTD', NULL, 0, 0),
(449, 'SRILANKAN AIRLINES LIMITED', NULL, 0, 0),
(450, 'ST ANTHONYS INDUSTRIES GROUP (PVT) LTD', NULL, 0, 0),
(451, 'STAFFORD MOTOR CO (PVT) LTD', NULL, 0, 0),
(452, 'STAR LANKA SHIPPING (PVT) LTD', NULL, 0, 0),
(453, 'STASSEN EXPORTS (PVT) LTD', NULL, 0, 0),
(454, 'STATE BANK OF INDIA', NULL, 0, 0),
(455, 'SUNCITY DEVELOPERS (PVT)LTD', NULL, 0, 0),
(456, 'SUNPOWER SYSTEMS (PVT) LTD', NULL, 0, 0),
(457, 'SUNSHINE HEALTHCARE LANKA LTD', NULL, 0, 0),
(458, 'SUNSHINE TEA (PVT) LTD', NULL, 0, 0),
(459, 'SUREN COOKE AGENCIES (PVT) LTD', NULL, 0, 0),
(460, 'SWEDISH TRADING COMPANY LIMITED', NULL, 0, 0),
(461, 'TAL LANKA HOTELS PLC', NULL, 0, 0),
(462, 'TALAWAKELLE TEA ESTATES LTD', NULL, 0, 0),
(463, 'TEA-LINK COLOMBO (PRIVATE) LTD', NULL, 0, 0),
(464, 'THE AUTODROME PLC', NULL, 0, 0),
(465, 'THE COLOMBO STOCK EXCHANGE', NULL, 0, 0),
(466, 'THE DESIGN GROUP FIVE INTERNATIONAL (PVT) LTD THE', NULL, 0, 0),
(467, 'THE FINANCE CO. PLC', NULL, 0, 0),
(468, 'THE SWADESHI INDUSTRIAL WORKS PLC', NULL, 0, 0),
(469, 'THE TEA & HERB COMPANY (PVT) LTD', NULL, 0, 0),
(470, 'THE TRAVELLER GLOBAL (PVT) LTD', NULL, 0, 0),
(471, 'THREAD WORKS (PVT) LTD', NULL, 0, 0),
(472, 'TOYOTA LANKA (PVT) LTD', NULL, 0, 0),
(473, 'TRADE PROMOTERS (PVT) LIMITED', NULL, 0, 0),
(474, 'TRADE SOLUTIONS LANKA (PVT) LTD', NULL, 0, 0),
(475, 'TRANSCARGO (PVT) LTD', NULL, 0, 0),
(476, 'TRANSMEC ENGINEERING PTE LTD', NULL, 0, 0),
(477, 'TRELLEBORG LANKA (PVT) LTD', NULL, 0, 0),
(478, 'TRUE DIGITAL PRINTING (PVT) LTD', NULL, 0, 0),
(479, 'TRUE VALUE PRODUCTS (PVT) LTD', NULL, 0, 0),
(480, 'TUDAWE BROTHERS (PVT) LTD', NULL, 0, 0),
(481, 'U S S ENGINEERING (PVT) LTD', NULL, 0, 0),
(482, 'U.S.SHIPPING & CARGO SERVICES (PVT) LIMITED', NULL, 0, 0),
(483, 'UK BEVERAGES (PVT) LTD', NULL, 0, 0),
(484, 'ULTRA TECH CEMENT LANKA (PVT) LTD', NULL, 0, 0),
(485, 'UNAWATUNA BEACH RESORTS (PVT) LTD', NULL, 0, 0),
(486, 'UNI WORLD TEAS (PVT) LTD', NULL, 0, 0),
(487, 'UNICHELA (PVT) LTD', NULL, 0, 0),
(488, 'UNILEVER LIPTON CEYLON LIMITED', NULL, 0, 0),
(489, 'UNION ASSURANCE LTD', NULL, 0, 0),
(490, 'UNION BANK OF COLOMBO PLC', NULL, 0, 0),
(491, 'UNION COMMODITIES (PVT) LTD', NULL, 0, 0),
(492, 'UNITED MOTORS LANKA PLC', NULL, 0, 0),
(493, 'UNITED TRACTOR & EQUIPMENT (PRIVATE) LTD', NULL, 0, 0),
(494, 'UNITRADES (PVT) LTD', NULL, 0, 0),
(495, 'V S R CONSULTANTS (PVT) LTD', NULL, 0, 0),
(496, 'VALLIBEL POWER ERATHNA PLC', NULL, 0, 0),
(497, 'VAN REES CEYLON LTD', NULL, 0, 0),
(498, 'VARUN BEVERAGES LANKA (PVT) LTD', NULL, 0, 0),
(499, 'VENORA INTL. PROJECTS (PVT) LTD', NULL, 0, 0),
(500, 'VINGROWS BUSINESS SOLUTIONS (PRIVATE) LTD', NULL, 0, 0),
(501, 'VINTAGE TEAS CEYLON (PVT) LTD', NULL, 0, 0),
(502, 'VIRTUSA (PVT) LTD', NULL, 0, 0),
(503, 'W A PERERA & CO LTD W A', NULL, 0, 0),
(504, 'WALKER SONS & CO. LTD', NULL, 0, 0),
(505, 'WATAWALA PLANTATIONS PLC', NULL, 0, 0),
(506, 'WATAWALA TEA CEYLON LTD', NULL, 0, 0),
(507, 'WAVENET INTERNATIONAL (PVT) LIMITED', NULL, 0, 0),
(508, 'WELIGAMA HOTEL PROPERTIES LIMITED', NULL, 0, 0),
(509, 'WHITTALL BOUSTEAD (PVT) LTD', NULL, 0, 0),
(510, 'WIJITHA GROUP OF COMPANIES (PVT) LTD', NULL, 0, 0),
(511, 'WILLPOWER GROUP (PVT) LTD', NULL, 0, 0),
(512, 'YORK STREET PARTNERS (PVT) LTD', NULL, 0, 0),
(513, 'BEAUTY GEMS', NULL, 0, 0),
(514, 'CEYLON AGRO INDUSTRIES LTD', NULL, 0, 0),
(515, 'CEYLON LEATHER PRODUCTS PLC', NULL, 0, 0),
(516, 'COLONIAL MOTORS (CEYLON) LTD', NULL, 0, 0),
(517, 'DHARMASIRI TYRE HOUSE (PVT) LTD', NULL, 0, 0),
(518, 'EMPIRE FOOD SOLUTIONS PVT LTD', NULL, 0, 0),
(519, 'F AND D RYDE HOLDINGS PRIVATE LIMITED', NULL, 0, 0),
(520, 'HEINEKEN LANKA LIMITED', NULL, 0, 0),
(521, 'HJS CONDIMENTS LIMITED', NULL, 0, 0),
(522, 'JAYES TRADING COMPANY', NULL, 0, 0),
(523, 'JKSE CONSULTANTS (PVT) LTD', NULL, 0, 0),
(524, 'LUMBINI TEA FACTORY (PVT) LTD.', NULL, 0, 0),
(525, 'PRESTIGE INTERNATIONAL LOGISTICS (PVT) LTD', NULL, 0, 0),
(526, 'PUWAKARAMBA AGENCIES (PVT) LTD', NULL, 0, 0),
(527, 'SAMSON RUBBER INDUSTRIES (PVT) LTD', NULL, 0, 0),
(528, 'UNITED STORES', NULL, 0, 0),
(529, 'V S INFORMATION SYSTEMS (PVT) LTD', NULL, 0, 0),
(530, 'A BAUR & COMPANY (PRIVATE) LIMITED', NULL, 1, 0),
(531, 'ABANS PLC', NULL, 1, 0),
(532, 'AIA INSURANCE LANKA PLC', NULL, 1, 0),
(533, 'ASIA POWER (PVT) LTD', NULL, 1, 0),
(534, 'ASSETLINE LEASING COMPANY LIMITED', NULL, 1, 0),
(535, 'ASSOCIATED BATTERY MANUFACTURERS (CEYLON) LTD', NULL, 1, 0),
(536, 'ASSOCIATED MOTORWAYS (PRIVATE) LIMITED', NULL, 1, 0),
(537, 'ASTRON LTD', NULL, 1, 0),
(538, 'BANK OF CEYLON', NULL, 1, 0),
(539, 'BROWN & CO. PLC', NULL, 1, 0),
(540, 'CARGILLS (CEYLON) PLC', NULL, 1, 0),
(541, 'CEYLON BISCUITS LTD', NULL, 1, 0),
(542, 'CEYLON TOBACCO COMPANY PLC', NULL, 1, 0),
(543, 'CIC HOLDINGS PLC', NULL, 1, 0),
(544, 'DELMEGE FORSYTH & CO. LTD', NULL, 1, 0),
(545, 'DFCC BANK PLC', NULL, 1, 0),
(546, 'DIALOG AXIATA PLC', NULL, 1, 0),
(547, 'DIESEL & MOTOR ENGINEERING PLC', NULL, 1, 0),
(548, 'E B CREASY & CO. PLC', NULL, 1, 0),
(549, 'ESWARAN BROTHERS EXPORTS (PVT) LTD', NULL, 1, 0),
(550, 'FINLAYS COLOMBO LIMITED', NULL, 1, 0),
(551, 'FORBES & WALKER (PVT) LTD', NULL, 1, 0),
(552, 'FREIGHT LINKS INTERNATIONAL (PTE) LTD', NULL, 1, 0),
(553, 'GEORGE STEUART & CO. LTD', NULL, 1, 0),
(554, 'GLAXO SMITHKLINE PHARMACEUTICALS (PVT) LTD', NULL, 1, 0),
(555, 'GVR LANKA (PVT) LTD', NULL, 1, 0),
(556, 'HATTON NATIONAL BANK PLC', NULL, 1, 0),
(557, 'HAYLEYS PLC', NULL, 1, 0),
(558, 'HEMAS HOLDINGS PLC', NULL, 1, 0),
(559, 'IMPERIAL TEAS (PVT) LTD', NULL, 1, 0),
(560, 'INFORMATICS (PVT) LTD', NULL, 1, 0),
(561, 'INTERNATIONAL COLLEGE OF BUSINESS & TECHNOLOGY LTD', NULL, 1, 0),
(562, 'JOHN KEELLS HOLDINGS PLC', NULL, 1, 0),
(563, 'L B FINANCE PLC', NULL, 1, 0),
(564, 'LAUGFS HOLDINGS LIMITED', NULL, 1, 0),
(565, 'LINK NATURAL PRODUCTS (PRIVATE) LTD', NULL, 1, 0),
(566, 'MAC HOLDINGS (PVT) LTD', NULL, 1, 0),
(567, 'MACKWOODS LTD', NULL, 1, 0),
(568, 'MALIBAN BISCUIT MANUFACTORIES (PVT) LTD', NULL, 1, 0),
(569, 'MCLARENS HOLDINGS LTD', NULL, 1, 0),
(570, 'NATIONAL DEVELOPMENT BANK PLC', NULL, 1, 0),
(571, 'NESTLE LANKA PLC', NULL, 1, 0),
(572, 'PRICEWATERHOUSECOOPERS', NULL, 1, 0),
(573, 'PYRAMID WILMAR (PVT) LTD', NULL, 1, 0),
(574, 'RICHARD PIERIS & CO. PLC', NULL, 1, 0),
(575, 'SAMPATH BANK PLC', NULL, 1, 0),
(576, 'SIERRA CABLES PLC', NULL, 1, 0),
(577, 'SOUTH ASIA GATEWAY TERMINALS (PVT) LTD', NULL, 1, 0),
(578, 'STANDARD CHARTERED BANK', NULL, 1, 0),
(579, 'SUNSHINE HOLDINGS PLC', NULL, 1, 0),
(580, 'TEA TANG (PVT) LTD', NULL, 1, 0),
(581, 'THE CAPITAL MAHARAJA ORGANISATION LIMITED THE', NULL, 1, 0),
(582, 'THE HONGKONG AND SHANGHAI BANKING CORP LTD THE', NULL, 1, 0),
(583, 'THE LION BREWERY (CEYLON) PLC', NULL, 1, 0),
(584, 'TOKYO CEMENT COMPANY (LANKA) PLC', NULL, 1, 0),
(585, 'UNILEVER SRI LANKA LTD', NULL, 1, 0),
(586, 'ZAM GEMS (PVT) LTD', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `delegate_id` text,
  `email` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `subject`, `body`, `delegate_id`, `email`, `created_at`, `updated_at`, `ip`) VALUES
(1, 'QQ', '<p>BB DD TT</p>', '[1,2]', '[\"prasanntrtam@lankacom.net\",\"aa@g.lk\"]', '2017-06-26 23:25:20', '2017-06-26 23:25:20', '::1'),
(2, 'EEE', '<p>SSS <strong>FFF <em>TT</em></strong></p>', '[1,2]', '[\"prasanntrtam@lankacom.net\",\"aa@g.lk\"]', '2017-06-26 23:37:46', '2017-06-26 23:37:46', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `body` text,
  `ip` varchar(100) DEFAULT NULL,
  `stats` int(1) NOT NULL DEFAULT '1' COMMENT '0 - inactive, 1 - active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `url`, `body`, `ip`, `stats`, `created_at`, `updated_at`) VALUES
(1, 'World food security risks growing, Chatham House says', 'http://www.bbc.com/news/world-40415756', NULL, '::1', 1, '2017-06-27 13:14:50', '2017-06-27 07:44:50'),
(2, 'Syria war: Air strike on IS prison in Mayadin \'kills dozens\'', 'http://www.bbc.com/news/world-middle-east-40416725', NULL, '::1', 1, '2017-06-27 13:51:09', '2017-06-27 08:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL COMMENT 'company email',
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `ip`, `created_at`, `updated_at`) VALUES
(1, 'lankacom', 'lcs@lankacom.net', '$2y$10$gykBNw9/JPySCZMxmF77d.6PD40iMUMT4InhyD3M15wZGunIcp.hW', 'YJOlBGT7OefNeWAVf2MGiCWJDlaWhwafzbsH72rkc35Wr16Z4GtYoxSukRcr', '::1', '2017-06-28 12:09:50', '2017-06-27 10:07:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `email` (`email`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delegatehistories`
--
ALTER TABLE `delegatehistories`
  ADD KEY `company_id` (`company_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `delegates`
--
ALTER TABLE `delegates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `membercompanies`
--
ALTER TABLE `membercompanies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `delegates`
--
ALTER TABLE `delegates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `membercompanies`
--
ALTER TABLE `membercompanies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=587;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
