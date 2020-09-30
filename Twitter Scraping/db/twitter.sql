-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2020 at 11:44 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spf`
--

-- --------------------------------------------------------

--
-- Table structure for table `twitter`
--

CREATE TABLE `twitter` (
  `twitter_id` int(5) NOT NULL,
  `tweer_id` bigint(20) NOT NULL,
  `search_query` text NOT NULL,
  `date` datetime NOT NULL,
  `user_name` varchar(40) NOT NULL,
  `tweet_user_id` bigint(20) NOT NULL,
  `text` longtext NOT NULL,
  `retweet_cnt` int(11) NOT NULL,
  `hash_tag` varchar(50) NOT NULL,
  `follower_cnt` int(11) NOT NULL,
  `friends_cnt` int(11) NOT NULL,
  `location` varchar(50) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `co_ordinates` text DEFAULT NULL,
  `profile_picture_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `twitter`
--

INSERT INTO `twitter` (`twitter_id`, `tweer_id`, `search_query`, `date`, `user_name`, `tweet_user_id`, `text`, `retweet_cnt`, `hash_tag`, `follower_cnt`, `friends_cnt`, `location`, `platform`, `co_ordinates`, `profile_picture_url`) VALUES
(1, 1284408258179084288, 'stuxnet', '2020-07-18 08:42:46', 'KendoDodd', 3240592840, '@sfrantzman @COLRICHARDKEMP If this is a long-term Stuxnet-type operation that is now attackong oxygen/gas tank (silicon chip) controllers then, a la Stuxnet, other facilities, beyond the targets, will be affected.', 0, 'None', 400, 41, 'England, United Kingdom', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/859298313904025600/F139HUUe_normal.jpg'),
(2, 1284395700038643714, 'stuxnet', '2020-07-18 07:52:52', 'BlissNjoy', 2946492251, 'RT @azardsphere: @s_m_marandi It\'s Israel behind it, no doubt. They have never stopped. Stuxnet, the killing of Iranian scientists, support…', 1, 'None', 248, 476, 'Amsterdam, Nederland', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1229085964984819712/Qcx22aSm_normal.jpg'),
(3, 1284391656725209088, 'stuxnet', '2020-07-18 07:36:48', 'azardsphere', 2972603730, '@s_m_marandi It\'s Israel behind it, no doubt. They have never stopped. Stuxnet, the killing of Iranian scientists, supporting ISIS, aiding the MEK, bogus reports on Iran nuclear activity, bombing Syria. Acts of the biggest terrorist state in the region', 1, 'None', 3666, 4061, '', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/801743718860476416/smGACi5__normal.jpg'),
(4, 1284376808343863296, 'stuxnet', '2020-07-18 06:37:48', 'albertxpat', 738458355031805956, 'RT @stevendupler: President Joe Biden needs to Stuxnet these motherfuckers in January. Shut down some shit that will hurt. https://t.co/t1C…', 1, 'None', 3745, 4983, 'World Travel', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/942405773224751104/Uwao2sv7_normal.jpg'),
(5, 1284374408778448896, 'stuxnet', '2020-07-18 06:28:16', 'stevendupler', 43195174, 'President Joe Biden needs to Stuxnet these motherfuckers in January. Shut down some shit that will hurt. https://t.co/t1Crc6cHCS', 1, 'None', 1598, 1491, '', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1283599654421180417/VfiX-gX-_normal.jpg'),
(6, 1284364068493709313, 'stuxnet', '2020-07-18 05:47:10', 'InteractionsInc', 3086889841, 'RT @_Luke_Slytalker: @RobPutnam4 @mwam1993 @jimroy @12BravoGran @Microsoft Here’s a #TinFoilHat theory\n\nAn undisclosed vulnerability\nMany “…', 1, 'TinFoilHat', 8306, 6675, 'USA', 'Paradigm Interactions Inc.', 'None', 'https://pbs.twimg.com/profile_images/1014599939048005633/Gk38Qyce_normal.jpg'),
(7, 1284361812654399490, 'stuxnet', '2020-07-18 05:38:13', 'Pipes2494', 1105580582, 'RT @_Luke_Slytalker: @mwam1993 @RobPutnam4 @jimroy @12BravoGran @Microsoft Check out #Stuxnet history and then read ANYTHING on students “h…', 3, 'Stuxnet', 3976, 3251, '', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1186417143111397376/Gj64EeGP_normal.jpg'),
(8, 1284361481392291840, 'stuxnet', '2020-07-18 05:36:54', 'satish_padyal', 1221881342419460098, 'RT @samirsinh189: #WWIII: Blasts at Iran\'s critical facilities are part of #CyberWar by Israel, says @NYTimes. Attacks appear in retaliatio…', 93, 'WWIII', 6, 18, '', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1221882188284735489/OgZJXXG9_normal.jpg'),
(9, 1284360484230057984, 'stuxnet', '2020-07-18 05:32:56', '12BravoGran', 3161899747, 'RT @_Luke_Slytalker: @mwam1993 @RobPutnam4 @jimroy @12BravoGran @Microsoft Check out #Stuxnet history and then read ANYTHING on students “h…', 3, 'Stuxnet', 11237, 7138, '', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1245833657752797184/HpmWHxcA_normal.jpg'),
(10, 1284359859828211713, 'stuxnet', '2020-07-18 05:30:27', '_Luke_Slytalker', 964059113922609152, '@mwam1993 @RobPutnam4 @jimroy @12BravoGran @Microsoft Check out #Stuxnet history and then read ANYTHING on students “hacking in” and changing their grades.\n\nCombine the two ideas and “sure” is the answer to your question I guess.  🤷‍♂️', 3, 'Stuxnet', 10007, 1336, 'peelin\' onions off the darknet', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1192262914868035584/NP5wb0va_normal.png'),
(11, 1284357596632084482, 'stuxnet', '2020-07-18 05:21:27', '_Luke_Slytalker', 964059113922609152, '@RobPutnam4 @mwam1993 @jimroy @12BravoGran @Microsoft Here’s a #TinFoilHat theory\n\nAn undisclosed vulnerability\nMany “dormant” backdoor’ed devices (a la Stuxnet) being AWAKENED &amp; join in the DDOS—everything from Phones &amp; laptops to IoT devices &amp; routers\n\nSomeone like #EquationGroup, #TAO, #FancyBear, #CozyBear, etc had it for yrs 😯', 1, 'TinFoilHat', 10007, 1336, 'peelin\' onions off the darknet', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1192262914868035584/NP5wb0va_normal.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `twitter`
--
ALTER TABLE `twitter`
  ADD PRIMARY KEY (`twitter_id`),
  ADD KEY `date` (`date`),
  ADD KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `twitter`
--
ALTER TABLE `twitter`
  MODIFY `twitter_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
