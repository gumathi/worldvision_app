-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2018 at 04:25 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `worldview`
--

-- --------------------------------------------------------

--
-- Table structure for table `beneficiaries`
--

CREATE TABLE `beneficiaries` (
  `ben_id` int(11) NOT NULL,
  `region` text NOT NULL,
  `country` text NOT NULL,
  `people` text NOT NULL,
  `b_date` datetime NOT NULL,
  `f_security` int(11) NOT NULL,
  `f_assistance` int(11) NOT NULL,
  `wash` int(11) NOT NULL,
  `e_protection` int(11) NOT NULL,
  `education` int(11) NOT NULL,
  `h_nutrition` int(11) NOT NULL,
  `health` int(11) NOT NULL,
  `protection` int(11) NOT NULL,
  `nutrition` int(11) NOT NULL,
  `m_prevention` int(11) NOT NULL,
  `non_food` int(11) NOT NULL,
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiaries`
--

INSERT INTO `beneficiaries` (`ben_id`, `region`, `country`, `people`, `b_date`, `f_security`, `f_assistance`, `wash`, `e_protection`, `education`, `h_nutrition`, `health`, `protection`, `nutrition`, `m_prevention`, `non_food`, `updated_time`) VALUES
(8, 'Eastern Africa', 'Kenya', 'Children', '2018-02-01 00:00:00', 123, 123, 123, 123, 123, 123, 123, 123, 123, 123, 123, '2018-08-14 09:46:02'),
(9, 'Eastern Africa', 'Kenya', 'Children', '2018-08-01 00:00:00', 5678, 56756, 56756, 567, 56567, 789789, 789789, 5675234, 234234, 234234, 456456, '2018-08-16 06:55:57');

-- --------------------------------------------------------

--
-- Table structure for table `earlywarning`
--

CREATE TABLE `earlywarning` (
  `earlywarningId` int(11) NOT NULL,
  `region` text NOT NULL,
  `country` text NOT NULL,
  `period` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `source` varchar(200) NOT NULL,
  `confidencelevel` varchar(200) NOT NULL,
  `narrative` text NOT NULL,
  `catid` int(11) NOT NULL,
  `indicatorid` int(11) NOT NULL,
  `possibleanswer_id` int(11) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `earlywarning`
--

INSERT INTO `earlywarning` (`earlywarningId`, `region`, `country`, `period`, `last_updated`, `source`, `confidencelevel`, `narrative`, `catid`, `indicatorid`, `possibleanswer_id`, `date_added`) VALUES
(5, 'Eastern Africa', 'Kenya', '1970-01-01 01:00:00', '1970-01-01 01:00:00', 'https://adas.sd', 'Low', '<p style=\"text-align: justify;\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, 1, 1, '2018-08-15 09:31:55'),
(6, 'Eastern Africa', 'Kenya', '2018-03-01 00:00:00', '2018-07-01 00:00:00', 'http://pathways-int.cloudapp.net/worldvision/earlywarningview.php', 'High', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 5, 14, 55, '2018-08-16 13:22:48');

-- --------------------------------------------------------

--
-- Table structure for table `earlywarningcategory`
--

CREATE TABLE `earlywarningcategory` (
  `catid` int(11) NOT NULL,
  `catname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `earlywarningcategory`
--

INSERT INTO `earlywarningcategory` (`catid`, `catname`) VALUES
(1, 'Nutrition\r\n'),
(2, 'Education\r\n'),
(3, 'Health\r\n'),
(4, 'Economic\r\n'),
(5, 'Food Security\r\n'),
(6, 'Displacement\r\n'),
(7, 'Conflict\r\n'),
(8, 'Environment\r\n'),
(9, 'Political Security\r\n'),
(10, 'Destabilizing events\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `earlywarningindicator`
--

CREATE TABLE `earlywarningindicator` (
  `indicatorid` int(11) NOT NULL,
  `indicator_name` text NOT NULL,
  `catid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `earlywarningindicator`
--

INSERT INTO `earlywarningindicator` (`indicatorid`, `indicator_name`, `catid`) VALUES
(1, 'SAM Rates\r\n', 1),
(2, 'GAM Rates\r\n', 1),
(3, 'Level of stunting\r\n', 1),
(4, 'Net intake rate to primary education\r\n', 2),
(5, 'Out of School Rate for Children of Primary School Age\r\n', 2),
(6, 'Perception--Education Institutions affected by national level issues which could lead to a drop in enrollment \r\n', 2),
(7, 'Under 5 mortality / 10,000\r\n', 3),
(8, 'Perception: Number of cases or incidence rates for selected diseases relevant to the local context\r\n', 3),
(9, 'The number of basic health units\r\n', 3),
(10, 'National inflation rate\r\n', 4),
(11, 'National unemployment rates\r\n', 4),
(12, 'Average daily casual labour wage\r\n', 4),
(13, 'Markets with price of main staple food increased by at least 20%\r\n', 5),
(14, 'Perception: markets by level of decreases in availability of main staple food\r\n', 5),
(15, 'IPC Phase\r\n', 5),
(16, '# in country (Refugees)\r\n', 6),
(17, '# out of country (Refugees)\r\n', 6),
(18, '# in country (IDPs)\r\n', 6),
(19, 'Number of civilians injured due to violence related to conflict\r\n', 7),
(20, 'Number of reported cases of trafficking for exploitation (labour or sex)--From the TIP report\r\n', 7),
(21, 'Ongoing Conflict--What is the level of ongoing conflict in your country?\r\n', 7),
(22, 'Monthly rainfall compared to average\r\n', 8),
(23, 'Monthly temperature averages comparison\r\n', 8),
(24, 'Observable seasonal change/anamoly \r\n', 8),
(25, 'Corruption index\r\n', 9),
(26, 'State of emergency declaration\r\n', 9),
(27, 'Number of reports of people arbitrarily detained\r\n', 9),
(28, 'Destabilizing events potential to affect many children and their families\r\n', 10),
(29, 'Destabilizing events potential to affect some children and their families\r\n', 10),
(30, 'Destabilizing events potential to affect few children and their families\r\n', 10);

-- --------------------------------------------------------

--
-- Table structure for table `fragility_index`
--

CREATE TABLE `fragility_index` (
  `fragility_index_id` int(11) NOT NULL,
  `region` varchar(55) NOT NULL,
  `country` varchar(55) NOT NULL,
  `fragility_index_rank` double DEFAULT NULL,
  `security_contact` varchar(55) NOT NULL,
  `fragility_index` double NOT NULL,
  `global_peace_index` double NOT NULL,
  `failed_states_index` double NOT NULL,
  `hea_declaration` varchar(55) NOT NULL,
  `hazards` varchar(55) NOT NULL,
  `population` double NOT NULL,
  `displaced_people` int(11) NOT NULL,
  `field_spend` double NOT NULL,
  `wv_fragility_index_rank_global` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `funding`
--

CREATE TABLE `funding` (
  `funding_id` int(11) NOT NULL,
  `region` text NOT NULL,
  `country` text NOT NULL,
  `period` datetime NOT NULL,
  `category` varchar(200) NOT NULL,
  `funding_required` int(11) NOT NULL,
  `funding_received` int(11) NOT NULL,
  `funding_gap` int(11) NOT NULL,
  `funding_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `funding`
--

INSERT INTO `funding` (`funding_id`, `region`, `country`, `period`, `category`, `funding_required`, `funding_received`, `funding_gap`, `funding_date`) VALUES
(2, 'Eastern Africa', 'Kenya', '2018-08-01 00:00:00', 'Wash', 123132, 123123, 123132, '2018-08-15 04:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `people_id` int(11) NOT NULL,
  `region` text NOT NULL,
  `country` text NOT NULL,
  `period` datetime NOT NULL,
  `category_of_people` varchar(200) NOT NULL,
  `people_in_need` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`people_id`, `region`, `country`, `period`, `category_of_people`, `people_in_need`, `date`) VALUES
(10, 'Eastern Africa', 'Kenya', '2018-02-01 00:00:00', 'Number of children requiring education support', 2147483647, '2018-08-07 13:29:00'),
(11, 'Eastern Africa', 'Burundi', '2018-02-01 00:00:00', 'Number of children in need of assistance', 2147483647, '2018-08-07 13:29:19'),
(20, 'Eastern Africa', 'Kenya', '2018-03-01 00:00:00', 'Number of people require protection', 123123, '2018-08-16 12:09:03'),
(21, 'Eastern Africa', 'Kenya', '2018-03-01 00:00:00', 'Number of people in emergency phase (IPC 4)', 12143, '2018-08-16 12:25:46'),
(22, 'Eastern Africa', 'Kenya', '2018-03-01 00:00:00', 'Number of people in emergency phase (IPC 4)', 123123123, '2018-08-16 12:26:00'),
(23, 'Eastern Africa', 'Uganda', '2018-01-01 00:00:00', 'Number of children under 5 severely malnourished', 546456456, '2018-08-16 12:26:15'),
(24, 'Eastern Africa', 'Kenya', '2018-03-01 00:00:00', 'Number of children under age 5 malnourished', 456546, '2018-08-16 12:26:41'),
(25, 'Eastern Africa', 'Uganda', '2018-04-01 00:00:00', 'Number of people fleeing to other countries as refugees', 64765765, '2018-08-16 12:26:57'),
(26, 'Eastern Africa', 'Kenya', '2018-04-01 00:00:00', 'Number of AWD/ Cholera', 1234134, '2018-08-16 12:27:11'),
(27, 'Eastern Africa', 'Rwanda', '2018-04-01 00:00:00', 'Number of children under age 5 malnourished', 6758767, '2018-08-16 12:27:31'),
(28, 'Eastern Africa', 'Uganda', '2018-08-01 00:00:00', 'Number of people in need of safe drinking water', 67967867, '2018-08-16 12:27:49');

-- --------------------------------------------------------

--
-- Table structure for table `possibleanswer`
--

CREATE TABLE `possibleanswer` (
  `possibleanswer_id` int(11) NOT NULL,
  `possibleanswer_name` varchar(200) NOT NULL,
  `equivalence_score` float NOT NULL,
  `weight` float NOT NULL,
  `indicatorid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `possibleanswer`
--

INSERT INTO `possibleanswer` (`possibleanswer_id`, `possibleanswer_name`, `equivalence_score`, `weight`, `indicatorid`) VALUES
(1, 'None\r\n', 1, 1, 1),
(2, 'Limited\r\n', 2, 1.3, 1),
(3, 'Growing\r\n', 3, 1.5, 1),
(4, 'Spike\r\n', 4, 1.9, 1),
(5, '<5%\r\n', 1, 1, 2),
(6, '5-9%\r\n', 2, 1.3, 2),
(7, '10-14%\r\n', 3, 1.5, 2),
(8, '>15%\r\n', 4, 1.9, 2),
(9, '<5%\r\n', 1, 1, 3),
(10, '5-9%\r\n', 2, 1.3, 3),
(11, '10-20%\r\n', 3, 1.5, 3),
(12, '>20%\r\n', 4, 1.9, 3),
(13, '<1%\r\n', 1, 1, 4),
(14, '1-5%\r\n', 2, 1.3, 4),
(15, '6-20%\r\n', 3, 1.5, 4),
(16, '>20%\r\n', 4, 1.9, 4),
(17, '<69%\r\n', 1, 1, 5),
(18, '70-80%\r\n', 2, 1.3, 5),
(19, '80-94%\r\n', 3, 1.5, 5),
(20, '>95%\r\n', 4, 1.9, 5),
(21, 'None\r\n', 1, 1, 6),
(22, '<10%\r\n', 2, 1.3, 6),
(23, '11-20%\r\n', 3, 1.5, 6),
(24, '>20%\r\n', 4, 1.9, 6),
(25, '<2.0\r\n', 1, 1, 7),
(26, '2.0-5.0\r\n', 2, 1.3, 7),
(27, '5.0-10.0\r\n', 3, 1.5, 7),
(28, '>10.0\r\n', 4, 1.9, 7),
(29, 'None\r\n', 1, 1, 8),
(30, 'Under control\r\n', 2, 1.3, 8),
(31, 'Pending Crisis\r\n', 3, 1.5, 8),
(32, 'Crisis\r\n', 4, 1.9, 8),
(33, 'Increasing\r\n', 1, 1, 9),
(34, 'Adequate\r\n', 2, 1.3, 9),
(35, 'Reducing\r\n', 3, 1.5, 9),
(36, 'Not adequate\r\n', 4, 1.9, 9),
(37, '<2%\r\n', 1, 1, 10),
(38, '2-10%\r\n', 2, 1.3, 10),
(39, '11-30%\r\n', 3, 1.5, 10),
(40, '>30%\r\n', 4, 1.9, 10),
(41, '<10%\r\n', 1, 1, 11),
(42, '11-15%\r\n', 2, 1.3, 11),
(43, '16-25%\r\n', 3, 1.5, 11),
(44, '>25%\r\n', 4, 1.9, 11),
(45, '<1 USD\r\n', 1, 1, 12),
(46, '1.01-3.00 USD\r\n', 2, 1.3, 12),
(47, '3.01-5.00 USD\r\n', 3, 1.5, 12),
(48, '>5.00 USD\r\n', 4, 1.9, 12),
(49, 'None\r\n', 1, 1, 13),
(50, '<10%', 2, 1.3, 13),
(51, '11-20%', 3, 1.5, 13),
(52, '>20%\r\n', 4, 1.9, 13),
(53, 'Available\r\n', 1, 1, 14),
(54, 'Lessening\r\n', 2, 1.3, 14),
(55, 'Sparsely Available \r\n', 3, 1.5, 14),
(56, 'Not Available\r\n', 4, 1.9, 14),
(57, '1', 1, 1, 15),
(58, '2', 2, 1.3, 15),
(59, '3', 3, 1.5, 15),
(60, '>4\r\n', 4, 1.9, 15),
(61, '<10,000\r\n', 1, 1, 16),
(62, '10,001-20,000\r\n', 2, 1.3, 16),
(63, '20,001-50,000\r\n', 3, 1.5, 16),
(64, '>50,000\r\n', 4, 1.9, 16),
(65, '<10,000\r\n', 1, 1, 17),
(66, '10,001-20,000', 2, 1.3, 17),
(67, '20,001-50,000', 3, 1.5, 17),
(68, '>50,000\r\n', 4, 1.9, 17),
(69, '<10,000\r\n', 1, 1, 18),
(70, '10,001-20,000\r\n', 2, 1.3, 18),
(71, '20,001-50,000\r\n', 3, 1.5, 18),
(72, '>50,000\r\n', 4, 1.9, 18),
(73, '<500\r\n', 1, 1, 19),
(74, '501-1000\r\n', 2, 1.3, 19),
(75, '1001-10,000\r\n', 3, 1.5, 19),
(76, '>10,000\r\n', 4, 1.9, 19),
(77, 'None\r\n', 1, 1, 20),
(78, '<100\r\n', 2, 1.3, 20),
(79, '101-500\r\n', 3, 1.5, 20),
(80, '>500\r\n', 4, 1.9, 20),
(81, 'None\r\n', 1, 1, 21),
(82, 'Isolated\r\n', 2, 1.3, 21),
(83, 'Regional\r\n', 3, 1.5, 21),
(84, 'National\r\n', 4, 1.9, 21),
(85, 'Above positive\r\n', 1, 1, 22),
(86, 'Equal\r\n', 2, 1.3, 22),
(87, 'Above Negative\r\n', 3, 1.5, 22),
(88, 'Below Negative\r\n', 4, 1.9, 22),
(89, 'Above positive\r\n', 1, 1, 23),
(90, 'Equal\r\n', 2, 1.3, 23),
(91, 'Above Negative\r\n', 3, 1.5, 23),
(92, 'Below Negative\r\n', 4, 1.9, 23),
(93, 'Normal\r\n', 1, 1, 24),
(94, '1 Season missed\r\n', 2, 1.3, 24),
(95, '2 Seasons missed\r\n', 3, 1.5, 24),
(96, '3 Seasons missed\r\n', 4, 1.9, 24),
(97, 'Top 10\r\n', 1, 1, 25),
(98, '>10-40\r\n', 2, 1.3, 25),
(99, '>41-100\r\n', 3, 1.5, 25),
(100, '>101\r\n', 4, 1.9, 25),
(101, 'None\r\n', 1, 1, 26),
(102, 'Yes\r\n', 2, 1.3, 26),
(103, 'Multiple\r\n', 3, 1.5, 26),
(104, 'Long term\r\n', 4, 1.9, 26),
(105, '<50\r\n', 1, 1, 27),
(106, '51-200\r\n', 2, 1.3, 27),
(107, '201-500\r\n', 3, 1.5, 27),
(108, '>500\r\n', 4, 1.9, 27),
(109, 'None\r\n', 1, 1, 28),
(110, 'Low\r\n', 2, 1.3, 28),
(111, 'Medium\r\n', 3, 1.5, 28),
(112, 'High\r\n', 4, 1.9, 28),
(113, 'None\r\n', 1, 1, 29),
(114, 'Low\r\n', 2, 1.3, 29),
(115, 'Medium\r\n', 3, 1.5, 29),
(116, 'High\r\n', 4, 1.9, 29),
(117, 'None\r\n', 1, 1, 30),
(118, 'Low\r\n', 2, 1.3, 30),
(119, 'Medium\r\n', 3, 1.5, 30),
(120, 'High\r\n', 4, 1.9, 30);

-- --------------------------------------------------------

--
-- Table structure for table `situation_report`
--

CREATE TABLE `situation_report` (
  `situation_id` int(11) NOT NULL,
  `country` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `keymessages` varchar(1500) NOT NULL,
  `country_sectors` varchar(255) NOT NULL,
  `country_age` int(20) NOT NULL,
  `children_in_need` int(20) NOT NULL,
  `people_in_need` int(20) NOT NULL,
  `no_of_people_displaced` int(20) NOT NULL,
  `no_of_food_insecure_people` int(20) NOT NULL,
  `people_in_need_of_wash_assistance` int(20) NOT NULL,
  `people_in_need_of_nutrition_assistance` int(20) NOT NULL,
  `people_in_need_of_health_assistance` int(20) NOT NULL,
  `people_in_need_of_education_assistance` int(20) NOT NULL,
  `people_in_need_of_protection` int(20) NOT NULL,
  `people_in_need_of_non_food_items` int(20) NOT NULL,
  `people_in_need_of_food_assistance` int(20) NOT NULL,
  `others` varchar(1500) NOT NULL,
  `response_sectors` varchar(255) NOT NULL,
  `response_age` int(20) NOT NULL,
  `children_reached` int(20) NOT NULL,
  `people_reached` int(20) NOT NULL,
  `response_no_of_people_displaced` int(20) NOT NULL,
  `food_security_and_livelihoods` int(20) NOT NULL,
  `water_sanitation_and_hygiene` int(20) NOT NULL,
  `nutrition` int(20) NOT NULL,
  `health` int(20) NOT NULL,
  `education` int(20) NOT NULL,
  `protection` int(20) NOT NULL,
  `shelter_and_non_food_items` int(20) NOT NULL,
  `food_assistance` int(20) NOT NULL,
  `r_others` varchar(1500) NOT NULL,
  `funds_sectors` varchar(255) NOT NULL,
  `prog_food_security_and_livelihoods` int(20) NOT NULL,
  `prog_water_sanitation_and_hygiene` int(20) NOT NULL,
  `prog_nutrition` int(20) NOT NULL,
  `prog_health` int(20) NOT NULL,
  `prog_education` int(20) NOT NULL,
  `prog_protection` int(20) NOT NULL,
  `funding_sectors` varchar(255) NOT NULL,
  `food_funding_request1` int(20) NOT NULL,
  `food_funding_request2` int(20) NOT NULL,
  `food_funding_request3` int(20) NOT NULL,
  `wash_funding_request1` int(20) NOT NULL,
  `wash_funding_request2` int(20) NOT NULL,
  `wash_funding_request3` int(20) NOT NULL,
  `health_funding_request1` int(20) NOT NULL,
  `health_funding_request2` int(20) NOT NULL,
  `health_funding_request3` int(20) NOT NULL,
  `education_funding_request1` int(20) NOT NULL,
  `education_funding_request2` int(20) NOT NULL,
  `education_funding_request3` int(20) NOT NULL,
  `shelter_funding_request1` int(20) NOT NULL,
  `shelter_funding_request2` int(20) NOT NULL,
  `shelter_funding_request3` int(20) NOT NULL,
  `per_sector` text NOT NULL,
  `needs_and_gaps` text NOT NULL,
  `donors_and_partners` text NOT NULL,
  `primary_contact_information` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `situation_report`
--

INSERT INTO `situation_report` (`situation_id`, `country`, `month`, `year`, `keymessages`, `country_sectors`, `country_age`, `children_in_need`, `people_in_need`, `no_of_people_displaced`, `no_of_food_insecure_people`, `people_in_need_of_wash_assistance`, `people_in_need_of_nutrition_assistance`, `people_in_need_of_health_assistance`, `people_in_need_of_education_assistance`, `people_in_need_of_protection`, `people_in_need_of_non_food_items`, `people_in_need_of_food_assistance`, `others`, `response_sectors`, `response_age`, `children_reached`, `people_reached`, `response_no_of_people_displaced`, `food_security_and_livelihoods`, `water_sanitation_and_hygiene`, `nutrition`, `health`, `education`, `protection`, `shelter_and_non_food_items`, `food_assistance`, `r_others`, `funds_sectors`, `prog_food_security_and_livelihoods`, `prog_water_sanitation_and_hygiene`, `prog_nutrition`, `prog_health`, `prog_education`, `prog_protection`, `funding_sectors`, `food_funding_request1`, `food_funding_request2`, `food_funding_request3`, `wash_funding_request1`, `wash_funding_request2`, `wash_funding_request3`, `health_funding_request1`, `health_funding_request2`, `health_funding_request3`, `education_funding_request1`, `education_funding_request2`, `education_funding_request3`, `shelter_funding_request1`, `shelter_funding_request2`, `shelter_funding_request3`, `per_sector`, `needs_and_gaps`, `donors_and_partners`, `primary_contact_information`, `date`) VALUES
(4, 'Sudan', 'March', '2016', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\\\\\\\\\\\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Education', 12, 12, 21, 12, 12, 12, 12, 12, 12, 12, 21, 12, '12', 'Nutrition', 12, 21, 12, 12, 21, 12, 212, 21, 12, 12, 21, 21, '21', 'Shelter and Non-Food Items', 12, 12, 12, 12, 12, 12, 'Nutrition', 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 21, 12, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\\\\\\\\\\\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\\\\\\\\\\\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\\\\\\\\\\\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\\\\\\\\\\\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2018-08-15 08:28:33'),
(5, 'Burundi', 'June', '2016', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\\\\\\\\\\\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Education', 12, 12, 21, 12, 12, 12, 12, 12, 12, 12, 21, 12, '12', 'Nutrition', 12, 21, 12, 12, 21, 12, 212, 21, 12, 12, 21, 21, '21', 'Shelter and Non-Food Items', 12, 12, 12, 12, 12, 12, 'Nutrition', 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 21, 12, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\\\\\\\\\\\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\\\\\\\\\\\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\\\\\\\\\\\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\\\\\\\\\\\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2018-08-15 10:04:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  ADD PRIMARY KEY (`ben_id`);

--
-- Indexes for table `earlywarning`
--
ALTER TABLE `earlywarning`
  ADD PRIMARY KEY (`earlywarningId`),
  ADD KEY `catid` (`catid`),
  ADD KEY `indicatorid` (`indicatorid`),
  ADD KEY `possibleanswer_id` (`possibleanswer_id`);

--
-- Indexes for table `earlywarningcategory`
--
ALTER TABLE `earlywarningcategory`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `earlywarningindicator`
--
ALTER TABLE `earlywarningindicator`
  ADD PRIMARY KEY (`indicatorid`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `fragility_index`
--
ALTER TABLE `fragility_index`
  ADD PRIMARY KEY (`fragility_index_id`);

--
-- Indexes for table `funding`
--
ALTER TABLE `funding`
  ADD PRIMARY KEY (`funding_id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`people_id`);

--
-- Indexes for table `possibleanswer`
--
ALTER TABLE `possibleanswer`
  ADD PRIMARY KEY (`possibleanswer_id`),
  ADD KEY `catid` (`indicatorid`);

--
-- Indexes for table `situation_report`
--
ALTER TABLE `situation_report`
  ADD PRIMARY KEY (`situation_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  MODIFY `ben_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `earlywarning`
--
ALTER TABLE `earlywarning`
  MODIFY `earlywarningId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `earlywarningcategory`
--
ALTER TABLE `earlywarningcategory`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `earlywarningindicator`
--
ALTER TABLE `earlywarningindicator`
  MODIFY `indicatorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `fragility_index`
--
ALTER TABLE `fragility_index`
  MODIFY `fragility_index_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `funding`
--
ALTER TABLE `funding`
  MODIFY `funding_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `people_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `possibleanswer`
--
ALTER TABLE `possibleanswer`
  MODIFY `possibleanswer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `situation_report`
--
ALTER TABLE `situation_report`
  MODIFY `situation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `earlywarning`
--
ALTER TABLE `earlywarning`
  ADD CONSTRAINT `earlywarning_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `earlywarningcategory` (`catid`),
  ADD CONSTRAINT `earlywarning_ibfk_2` FOREIGN KEY (`indicatorid`) REFERENCES `earlywarningindicator` (`indicatorid`),
  ADD CONSTRAINT `earlywarning_ibfk_3` FOREIGN KEY (`possibleanswer_id`) REFERENCES `possibleanswer` (`possibleanswer_id`);

--
-- Constraints for table `earlywarningindicator`
--
ALTER TABLE `earlywarningindicator`
  ADD CONSTRAINT `earlywarningindicator_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `earlywarningcategory` (`catid`);

--
-- Constraints for table `possibleanswer`
--
ALTER TABLE `possibleanswer`
  ADD CONSTRAINT `possibleanswer_ibfk_1` FOREIGN KEY (`indicatorid`) REFERENCES `earlywarningindicator` (`indicatorid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
