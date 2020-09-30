-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2020 at 09:50 AM
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
-- Table structure for table `menu_mas`
--

DROP TABLE IF EXISTS `menu_mas`;
CREATE TABLE `menu_mas` (
  `menu_id` int(4) NOT NULL,
  `parent_id` int(4) DEFAULT NULL,
  `murl` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `srl` int(4) DEFAULT NULL,
  `mbody` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_nm` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_tag` varchar(1) DEFAULT 'T'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_mas`
--

INSERT INTO `menu_mas` (`menu_id`, `parent_id`, `murl`, `srl`, `mbody`, `icon_nm`, `show_tag`) VALUES
(1, 0, NULL, 1, 'Master', 'fa-book', 'T'),
(2, 0, NULL, 2, 'Transaction ', 'fa fa-keyboard-o', 'F'),
(4, 0, NULL, 4, 'Report', 'fa fa-print', 'T'),
(5, 0, NULL, 5, 'System', 'fa fa-gears', 'T'),
(6, 1, 'user-mas.php', 1, 'User Master', 'fa fa-user', 'T'),
(7, 1, 'case-type-mas.php', 2, 'Case Type', 'fa fa-briefcase', 'F'),
(8, 1, 'holiday.php', 3, 'Holiday Master', 'fa fa-plane', 'F'),
(9, 1, 'blro-mas.php', 5, 'Bl & LRO Master', 'fa fa-users', 'F'),
(10, 1, 'ps-mas.php', 4, 'Police Station', 'fa fa-user-plus', 'F'),
(11, 1, 'mouza-mas.php', 6, 'Mouza Master', 'fa fa-industry', 'F'),
(12, 1, 'magistrate-mas.php', 7, 'Magistrate Master', 'fa fa-gavel', 'F'),
(25, 5, '#', 1, 'Data Download', 'fa fa-file-excel-o', 'T'),
(26, 5, '#', 2, 'Data Backup', 'fa fa-database', 'T'),
(29, 6, 'user-insert.php', 1, 'Add', 'fa fa-plus', 'F'),
(31, 6, 'user-edit.php', 1, 'Edit', 'fa-pencil', 'F'),
(32, 6, 'user-permission.php', 3, 'Assigned Page', 'fa-unlock', 'F'),
(33, 0, 'my-account.php', 1, 'My Account', 'fa-card', 'F'),
(34, 9, 'blro-insert.php', 1, 'Add', NULL, 'F'),
(35, 9, 'blro-edit.php', 2, 'Edit', NULL, 'F'),
(36, 10, 'ps-insert.php', 1, 'Add', 'fa-plus', 'F'),
(37, 10, 'ps-edit.php', 2, 'Edit', 'fa-pencil', 'F'),
(38, 11, 'mouza-insert.php', 1, 'Add', 'fa fa-plus', 'F'),
(39, 11, 'mouza-edit.php', 1, 'Edit', 'fa fa-pencil', 'F'),
(42, 8, 'holiday-insert.php', NULL, 'ADD', 'fa fa-plus', 'F'),
(43, 8, 'holiday-edit.php', NULL, 'EDIT', 'fa fa-pencil', 'F'),
(56, 5, 'setting.php', 7, 'Setting', ' fa-cog', 'T'),
(67, 0, NULL, 2, 'Search', 'fa-search', 'T'),
(68, 67, 'youtube.php', 1, 'Youtube', 'fa-youtube', 'T'),
(69, 67, 'twitter.php', 2, 'Twitter', 'fa-twitter', 'T'),
(70, 67, 'instagram.php', 3, 'Instagram', 'fa-instagram', 'T');

-- --------------------------------------------------------

--
-- Table structure for table `month_mas`
--

DROP TABLE IF EXISTS `month_mas`;
CREATE TABLE `month_mas` (
  `mon_id` int(5) NOT NULL DEFAULT 0,
  `mon_cd` varchar(2) DEFAULT NULL,
  `mon_desc` varchar(5) DEFAULT NULL,
  `mon_day` int(5) DEFAULT NULL,
  `fin_srl` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `month_mas`
--

INSERT INTO `month_mas` (`mon_id`, `mon_cd`, `mon_desc`, `mon_day`, `fin_srl`) VALUES
(1, '01', 'Jan', 31, 1),
(2, '02', 'Feb', 28, 2),
(3, '03', 'Mar', 31, 3),
(4, '04', 'Apr', 30, 4),
(5, '05', 'May', 31, 5),
(6, '06', 'Jun', 30, 6),
(7, '07', 'Jul', 31, 7),
(8, '08', 'Aug', 31, 8),
(9, '09', 'Sep', 30, 9),
(10, '10', 'Oct', 31, 10),
(11, '11', 'Nov', 30, 11),
(12, '12', 'Dec', 31, 12);

-- --------------------------------------------------------

--
-- Table structure for table `twitter`
--

DROP TABLE IF EXISTS `twitter`;
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
  `location` varchar(15) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `co_ordinates` text DEFAULT NULL,
  `profile_picture_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `twitter`
--

INSERT INTO `twitter` (`twitter_id`, `tweer_id`, `search_query`, `date`, `user_name`, `tweet_user_id`, `text`, `retweet_cnt`, `hash_tag`, `follower_cnt`, `friends_cnt`, `location`, `platform`, `co_ordinates`, `profile_picture_url`) VALUES
(1, 1289782308686295041, 'STUXNET', '2020-08-02 04:37:20', 'kl60199572', 953408723065737216, 'If nuclear energy is so safe and better than renewable energy, then why does Israel develop viruses to sabotage the Iran\'s nuclear reactor?\nhttps://t.co/P1ShOMbXHn', 0, 'None', 231, 711, '', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1236105714008854529/DwP4brIm_normal.png'),
(2, 1289770281649618947, 'STUXNET', '2020-08-02 03:49:32', 'beajammingh', 42007556, '@Xizmes @thegrugq @hacks4pancakes @NSAGov How\'d that work out for Iran? https://t.co/dN0Gy1LhFT', 0, 'None', 5105, 359, 'The stolen land', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1256306612303626240/SwoIeMy0_normal.png'),
(3, 1289768805514657794, 'STUXNET', '2020-08-02 03:43:40', 'ThatMax3', 1233204604986281984, '@Paris13649154 @OldeGrimm @rabidya @canadapoast @VanKingoff @AWDMRGR3EN @sansculottestoo @beans_n_bops @CliffAhn @posting @DDRTankie @EmersonACAB @drbonertron @Christie_Malry @BobooTobian @Countwells @altuov @brit_bob @make_it_snow @sexy_robotnik @di58140075 @KANGmeruem @TheClickPit @achtung_maybe @nihilishtick @boojihadeen @ChemtrailDenier @Robert40367061 @poasting @leothotsky69420 @PithyJoe @FranksFiles @WalterRothko @abhbaybay @Andrew40527956 @armored_fool @DENMARK78283651 @parcher_richard @jarjarsplainer @bigdjohnsonn1 @salty_roman @BobClutter269 @Memes19156180 @amaiahorion @FallingdownAl @brandocalriss11 @NonsequitrD @Your_Pal_Billy @Nwlando tell me about inventing stuxnet', 0, 'None', 583, 504, '', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1242877474461147140/XrMbTPtl_normal.jpg'),
(4, 1289745896955973634, 'STUXNET', '2020-08-02 02:12:38', 'neymarbipin', 1394111617, 'RT @PandemicTruther: Operation Olympic Games - Stuxnet：CIA &amp; Israel Cyber Hacking  explained \n\nWary of being targeted, Iran took its Nuclea…', 3, 'None', 1891, 1892, 'Tirunelveli, In', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1212103007296319488/XovkWm33_normal.jpg'),
(5, 1289719729569980417, 'STUXNET', '2020-08-02 00:28:40', 'Iris2020i', 1144835176368762881, 'RT @PandemicTruther: Operation Olympic Games - Stuxnet：CIA &amp; Israel Cyber Hacking  explained \n\nWary of being targeted, Iran took its Nuclea…', 3, 'None', 536, 1136, '', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1281606623421587457/-vmSviI4_normal.jpg'),
(6, 1289713136690515968, 'STUXNET', '2020-08-02 00:02:28', 'Lorenzo_Del_T', 990710540585619463, '@truth_time4 \"STUXNET? It was the Israeli time cyberbomb placed inside the Iran nuclear reactors\"\nNagative, dummie. It was placed inside uranium centrifuges, not nuclear reactors.', 0, 'None', 634, 1338, 'N.M.', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1213100991878500353/jLCUPGib_normal.jpg'),
(7, 1289712200668426243, 'STUXNET', '2020-08-01 23:58:44', 'mh197069', 2557716919, 'RT @PandemicTruther: Operation Olympic Games - Stuxnet：CIA &amp; Israel Cyber Hacking  explained \n\nWary of being targeted, Iran took its Nuclea…', 3, 'None', 3232, 3380, 'Syria', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1218675457446404096/8OYREFj3_normal.jpg'),
(8, 1289711228286246913, 'STUXNET', '2020-08-01 23:54:53', 'PandemicTruther', 1256539419303186432, 'centrifuge turbine just a few rounds per hour.\n\nThe change is imperceptible, but over a period of time, the nuclear plants completely shut down.\n\nhttps://t.co/oQFq2MCNGV', 0, 'None', 1340, 992, '', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1289692050112360448/lMzYbKoU_normal.jpg'),
(9, 1289711225438380033, 'STUXNET', '2020-08-01 23:54:52', 'PandemicTruther', 1256539419303186432, 'Operation Olympic Games - Stuxnet：CIA &amp; Israel Cyber Hacking  explained \n\nWary of being targeted, Iran took its Nuclear Plant off the net. It was commanded by a local insulate system \n\nIn 2010, CIA &amp; Israel deployed agents to Iran distributing &amp; inserting in computers infected', 3, 'None', 1340, 992, '', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1289692050112360448/lMzYbKoU_normal.jpg'),
(10, 1289627959146536960, 'STUXNET', '2020-08-01 18:24:00', 'cachedchecks', 312262225, '@Lemme_Checksum Yep, stuxnet was going on for years covertly.  Wanna cry happened as a result of vulnerabilities the government knew about for years, but kept it quiet so they could use it when needed.', 0, 'None', 311, 637, 'loopback', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/865996870560223232/V1f9y93Y_normal.jpg'),
(11, 1289623247651250177, 'STUXNET', '2020-08-01 18:05:16', 'cachedchecks', 312262225, '@Lemme_Checksum Stuxnet was wild.  I haven\'t had any security related training on malware where Stuxnet didn\'t come up.', 0, 'None', 311, 637, 'loopback', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/865996870560223232/V1f9y93Y_normal.jpg'),
(12, 1289621942513750017, 'STUXNET', '2020-08-01 18:00:05', 'Lemme_Checksum', 161477558, 'People should really Google Stuxnet', 0, 'None', 169, 193, 'Baton Rouge, LA', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/986650579823972353/Lmq3tWFH_normal.jpg'),
(13, 1289621858686578689, 'STUXNET', '2020-08-01 17:59:45', 'Red_Sun54', 942870046631641088, '@SG11167109 @Neloangelo787 Kinda sounds like this virus👇\n\nhttps://t.co/BUUfmiZFfR', 0, 'None', 105, 100, '', 'Twitter Web App', 'None', 'https://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png'),
(14, 1289618664845537282, 'STUXNET', '2020-08-01 17:47:04', 'fdiskyou', 261145640, '@GuidedHacking Lulzsec, stuxnet, iceman, pharma wars, shadow brokers, lord cyric, Aurora, sandworm\'s bears, snowden, TESO, silk road, betCRIS ddos, phrack, CCC, ...', 0, 'None', 1921, 251, 'London, UK', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1104811930810748931/LDkAHhWw_normal.jpg'),
(15, 1289604751143952385, 'STUXNET', '2020-08-01 16:51:47', 'MallSecurity', 162725279, '@zazuch1 @JoshuaIMiller13 @Jreynolds323 @LiamDillingham @theovain21 @megturney Crack Encryption, Steal PWs, be a medium for a \'Man in the Middle\' attack, direct a DDOS Attack.  The United States shut down Iranian Nuclear Centrifuges using free USB drives loaded with Stuxnet; China can probably do better if they wanted.  Its about more than selling data', 0, 'None', 14, 985, '', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/825502242396635136/lq_1vgpX_normal.jpg'),
(16, 1289602814000263170, 'STUXNET', '2020-08-01 16:44:05', 'indie_h4cker', 1176217130091655168, '@subhajitsaha0x Nobody is trying to write stuxnet. But I agree man coding definitely helps.', 0, 'None', 35, 1073, 'Pune, India', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1289597066998501377/94mn-gHY_normal.jpg'),
(17, 1289600927888863233, 'STUXNET', '2020-08-01 16:36:35', 'SackJD', 1254090649948884992, '@theconservador The direct admission that the US assisted Israel with StuxNet probably did get American\'s killed.', 0, 'None', 3554, 4620, '\'Murica', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1282422871546122241/DwXzK-ev_normal.jpg'),
(18, 1289587048295231488, 'STUXNET', '2020-08-01 15:41:26', 'emergentcap', 21361695, '“That is dangerous for we usually find that after the reporting of a major incident it is later revealed is that the #malicious activity has been active long before. We need to address this #Cyberg before it leads to something unexpected &amp; unwanted.” #stuxnet #cybersecurity #iiot https://t.co/scUrJkKvbj', 0, 'malicious', 4399, 3911, 'San Francisco, ', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/3230212001/9d387094256c4dca591aab38b226ea01_normal.jpeg'),
(19, 1289575363870257152, 'STUXNET', '2020-08-01 14:55:00', 'HonkHase', 1123680822064754688, 'Perhaps we are missing a lesson from #Stuxnet?\n\nAddon: Video \'The Stuxnet Story\' from @langnergroup to be found here:\nhttps://t.co/l1u2n1FC9D\n\nSee it and understand the risk! 👌\nhttps://t.co/lFKqu96laq', 0, 'Stuxnet', 3412, 2389, 'Bonn, Deutschla', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1123681044736159745/Ma4pCkrv_normal.png'),
(20, 1289527771287285761, 'STUXNET', '2020-08-01 11:45:53', 'Frosty31x', 1267721924752310273, '@Stuxnet__ @tiktok_us I never said I was and here we both are 🤔', 0, 'None', 0, 44, '', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1285826685984821248/2UGU8A-5_normal.jpg'),
(21, 1289509092206301184, 'STUXNET', '2020-08-01 10:31:40', 'SkippyWelsh', 352991007, 'RT @PatrickCMiller: Perhaps we are missing a lesson from Stuxnet? https://t.co/ybRKdVzz0J', 2, 'None', 70, 304, '', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1083019047967571968/MvsrluFZ_normal.jpg'),
(22, 1289508209045143552, 'STUXNET', '2020-08-01 10:28:09', 'pjcoyle', 18556736, 'RT @PatrickCMiller: Perhaps we are missing a lesson from Stuxnet? https://t.co/ybRKdVzz0J', 2, 'None', 896, 223, 'Columbus, GA', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1272160224825221120/r40fH2VJ_normal.png'),
(23, 1289507408046415872, 'STUXNET', '2020-08-01 10:24:58', 'NatalieJester', 2161232472, 'RT @doreen__h: Can #cyber operations play a role in #nuclear #counterproliferation? Comparing Operation Orchard, Stuxnet &amp; “Left-of-Launch”…', 3, 'cyber', 2655, 4862, 'Bristol', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1260243506481815552/8x3VcZgA_normal.jpg'),
(24, 1289505286621810688, 'STUXNET', '2020-08-01 10:16:32', 'James_SJohnson', 783558367897804800, 'RT @doreen__h: Can #cyber operations play a role in #nuclear #counterproliferation? Comparing Operation Orchard, Stuxnet &amp; “Left-of-Launch”…', 3, 'cyber', 460, 1080, 'United States', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/832237527142510593/A9Dxn0cL_normal.jpg'),
(25, 1289497352730865666, 'STUXNET', '2020-08-01 09:45:01', 'PatrickCMiller', 23508768, 'Perhaps we are missing a lesson from Stuxnet? https://t.co/ybRKdVzz0J', 2, 'None', 7035, 2142, 'Portland, OR (a', 'Buffer', 'None', 'https://pbs.twimg.com/profile_images/676488710007853056/Vr3iVdc7_normal.jpg'),
(26, 1289437277014425600, 'STUXNET', '2020-08-01 05:46:18', 'sardoniccomment', 282136929, '@zittrain @dmrider The tech mechanics are easy; revoke the certs. “I’d like to run this app. Apple here’s its key, buddy cool? It’s signed*” Nope we hashed that and buddy doesn’t exist.”  I can’t comment on the political aspect. *Stuxnet beat this but that was the biggest mikedrop in 70 years.', 0, 'None', 130, 318, 'Toronto ', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/460118309891887104/BQKCHP_J_normal.jpeg'),
(27, 1289421848556396544, 'STUXNET', '2020-08-01 04:44:59', 'Hamsteronstilts', 4604064383, '@prinxeisdark @MichelleErline @Habs_1 @JLCauvin Kaspersky Lab discovered the malware Stuxnet, which is how we disabled Iranian computers in nuclear facilities. and it also found out about Flame, which penetrated Iranian oil ministry. \nyou can download Kaspersky on YOUR computer.', 0, 'None', 71, 20, '', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1219365545042038785/neruIjyx_normal.jpg'),
(28, 1289411732612538369, 'STUXNET', '2020-08-01 04:04:47', 'cybersec_feeds', 1131854274223366144, 'RT @Chuck_Petras: Ten Years After #Stuxnet Went Public - And Now?\n\n\"Recently many of us noted the 10th Anniversary of when Stuxnet went pub…', 3, 'Stuxnet', 9915, 0, 'Internet', 'Cyber Security Feed', 'None', 'https://pbs.twimg.com/profile_images/1131855016766124032/vhasETOF_normal.jpg'),
(29, 1289407942815449094, 'STUXNET', '2020-08-01 03:49:44', 'grateful1gabrie', 4243442292, '@Loveyaman2 @CrystalIannaco1 @timetravlnqte I think Stuxnet when I think of Chinese water dams.... bet it happens', 0, 'None', 1064, 2271, 'Casper, WY', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/665807772273897472/a33boajE_normal.jpg'),
(30, 1289405594047143941, 'STUXNET', '2020-08-01 03:40:24', 'Stuxnet__', 834417567674556416, '@Frosty31x @tiktok_us Yeah, I\'m sure begging on Twitter will do the trick. Who are you and why do you think you\'re relevant?', 0, 'None', 0, 46, '', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/909183283103023104/4umuEftq_normal.jpg'),
(31, 1289378739860549633, 'STUXNET', '2020-08-01 01:53:41', 'antipaster', 1285681519185600513, 'RT @GuidedHacking: What do you think is the most interesting thing that\'s happened in infosec?\n\nFor me, Stuxnet and Shadow Brokers are on t…', 3, 'None', 2, 228, '', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1289422428028928000/t2ZJwRS3_normal.jpg'),
(32, 1289367336831471617, 'STUXNET', '2020-08-01 01:08:23', 'Wilkmaster', 47047182, '@MainStreamMe Iranians tried that but the Israelis were foxy and got them with the Siemens technician. #Stuxnet', 0, 'Stuxnet', 1679, 628, 'Northern Virgin', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1134129424088145921/4MBcKeSn_normal.jpg'),
(33, 1289318954096160768, 'STUXNET', '2020-07-31 21:56:07', 'Marce_I_P', 285405708, 'RT @Chuck_Petras: Ten Years After #Stuxnet Went Public - And Now?\n\n\"Recently many of us noted the 10th Anniversary of when Stuxnet went pub…', 3, 'Stuxnet', 2530, 4999, 'Argentina - Bue', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1219009850711138304/Z_XM3cku_normal.jpg'),
(34, 1289305712728760321, 'STUXNET', '2020-07-31 21:03:30', 'OttLegalRebels', 1605693206, 'RT @Chuck_Petras: Ten Years After #Stuxnet Went Public - And Now?\n\n\"Recently many of us noted the 10th Anniversary of when Stuxnet went pub…', 3, 'Stuxnet', 73356, 43013, 'Ottawa, Ontario', 'CuratingDevList', 'None', 'https://pbs.twimg.com/profile_images/1271799496222150656/l_97CUoe_normal.jpg'),
(35, 1289301832288702464, 'STUXNET', '2020-07-31 20:48:05', 'Chuck_Petras', 97242126, 'Ten Years After #Stuxnet Went Public - And Now?\n\n\"Recently many of us noted the 10th Anniversary of when Stuxnet went public. Some commentators think it was for cyberspace a “Hiroshima” type of event. []\"\n\nhttps://t.co/l1nM01eQOP #cybersecurity @Civil_Def_Radio #SmartGrid', 3, 'Stuxnet', 428, 746, 'Eastern Washing', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1435424626/Petras__Chuck_normal.jpg'),
(36, 1289300748862283776, 'STUXNET', '2020-07-31 20:43:47', 'FreedomWJones', 936792433152503810, '(7) How exactly are we meant to check the programming and the results of said programming? Especially when \'cleanup\' is part of the game. We fucking hacked AIR-GAPPED Iranian centrifuge machines.\n\nhttps://t.co/6o5nBv3Vyw', 0, 'None', 193, 286, 'America', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/936793778655862784/gNHv-ilQ_normal.jpg'),
(37, 1289295865266356224, 'STUXNET', '2020-07-31 20:24:22', 'GuidedHacking', 1070683658, '@ring0x21 are you referring to this? 😆 https://t.co/lJPb7LrKhM', 1, 'None', 3542, 184, 'United States', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/635340154668982272/6J85bQ3T_normal.png'),
(38, 1289294100055724032, 'STUXNET', '2020-07-31 20:17:22', 'GuidedHacking', 1070683658, '@Mojodojo_101 yeah aramco was also insane, but we already had stuxnet so it was less exciting, stuxnet like, broke the mold of what what was possible', 0, 'None', 3542, 184, 'United States', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/635340154668982272/6J85bQ3T_normal.png'),
(39, 1289279301859160064, 'STUXNET', '2020-07-31 19:18:33', 'ov3r_watch', 124172022, 'RT @GuidedHacking: What do you think is the most interesting thing that\'s happened in infosec?\n\nFor me, Stuxnet and Shadow Brokers are on t…', 3, 'None', 422, 234, '1327', 'Mobile Web (M2)', 'None', 'https://pbs.twimg.com/profile_images/531500366165057536/ibBot9J__normal.jpeg'),
(40, 1289274954119168003, 'STUXNET', '2020-07-31 19:01:17', 'TheHackerDev', 829159886, '@GuidedHacking Stuxnet is way up there.\n\nI would say Heartbleed raised awareness of security vulns like nothing before it, and kicked off the world of named vulnerabilities. This increased awareness (marketing) attracted more researchers, which in turn skyrocketed the # of vulns discovered.', 0, 'None', 2458, 1600, 'Canada', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1277424539832631299/m6g5cche_normal.jpg'),
(41, 1289274486160650240, 'STUXNET', '2020-07-31 18:59:25', 'Mojodojo_101', 726904253109919745, '@GuidedHacking Yeah stuxnet would be high up there. Maybe the saudi aramco stuff aswell. For me the most exciting time is now tho :p just because i am trying to get a foot in the door and met alot of awesome people who are willing to help. (i know, kind of a lame answer)', 0, 'None', 50, 285, '', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/971525324042317824/K4HcdmEZ_normal.jpg'),
(42, 1289271894689030144, 'STUXNET', '2020-07-31 18:49:07', 'GuidedHacking', 1070683658, 'What do you think is the most interesting thing that\'s happened in infosec?\n\nFor me, Stuxnet and Shadow Brokers are on the top of my list', 3, 'None', 3542, 184, 'United States', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/635340154668982272/6J85bQ3T_normal.png'),
(43, 1289256234667741185, 'STUXNET', '2020-07-31 17:46:54', 'PodSquadApp', 804304056667742208, 'RT @MoviesUnhacked: New episode! BLACKHAT! We review the movie, discuss know-it-all hackers, prison tropes, and Stuxnet. Check it out!\n\n#bl…', 13, 'None', 312, 78, 'Pittsburgh, PA', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1176197907814518784/bkR79fs-_normal.jpg'),
(44, 1289240790519222273, 'STUXNET', '2020-07-31 16:45:32', 'AttackIQ', 1669020625, '10 years ago, #stuxnet changed the landscape of war forever. Our #CISO Chris Kennedy weighed in: \"A nuclear bomb doesn’t leave defensive schematics scattered all over the landscape. Cyberweapons do.”\nRead more here:\nhttps://t.co/ONZfv8PvMZ\n#cybersecurity #infosecnews #socialmedia', 1, 'stuxnet', 1500, 816, 'San Diego, CA', 'Hootsuite Inc.', 'None', 'https://pbs.twimg.com/profile_images/1093625757543292928/1lr6NWBS_normal.jpg'),
(45, 1289240603830685704, 'STUXNET', '2020-07-31 16:44:47', 'cj249colin', 2884298235, 'RT @MoviesUnhacked: New episode! BLACKHAT! We review the movie, discuss know-it-all hackers, prison tropes, and Stuxnet. Check it out!\n\n#bl…', 13, 'None', 193, 723, '', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/660576721511587841/KgDQyMxc_normal.jpg'),
(46, 1289239765200433152, 'STUXNET', '2020-07-31 16:41:27', 'sectest9', 710123736175783938, 'RT @MoviesUnhacked: New episode! BLACKHAT! We review the movie, discuss know-it-all hackers, prison tropes, and Stuxnet. Check it out!\n\n#bl…', 13, 'None', 32172, 1, 'Hyderabad, Indi', 'auto is the only way it can be ', 'None', 'https://pbs.twimg.com/profile_images/710735123876982784/GjV7JWMk_normal.jpg'),
(47, 1289239730530455553, 'STUXNET', '2020-07-31 16:41:19', 'CyberSecurityN8', 1142424032794406912, 'RT @MoviesUnhacked: New episode! BLACKHAT! We review the movie, discuss know-it-all hackers, prison tropes, and Stuxnet. Check it out!\n\n#bl…', 13, 'None', 6264, 1, '', 'forRetweeting', 'None', 'https://pbs.twimg.com/profile_images/1197135188473475074/8svI-1EO_normal.jpg'),
(48, 1289239713568579585, 'STUXNET', '2020-07-31 16:41:15', 'ROCmoviepodcast', 1115305781744680961, 'RT @MoviesUnhacked: New episode! BLACKHAT! We review the movie, discuss know-it-all hackers, prison tropes, and Stuxnet. Check it out!\n\n#bl…', 13, 'None', 415, 701, 'Phoenix, AZ', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1255542634468093953/FTGqMrz__normal.jpg'),
(49, 1289226048660365319, 'STUXNET', '2020-07-31 15:46:57', 'Flavia0847', 1329711194, 'Wouldn\'t it be ironic if the USA was suffering \'the Stuxnet effect\' from virus they engineered to screw China and Iran?  First to build and use an Atomic weapon, first to weaponize and deploy  a computer virus and , hey they  still haven\'t disposed of chemical warfare stockpiles. https://t.co/l5UMcfm2ZB', 0, 'None', 724, 812, 'Canuckistan', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1241030338144604160/G9M168XL_normal.jpg'),
(50, 1289224708118835205, 'STUXNET', '2020-07-31 15:41:37', 'wickedsharp1', 37896103, 'Remember #stuxnet .al US had to do was airdrop Ub memory sticks and let peoples curiousity take over. https://t.co/swgsY00LuK', 0, 'stuxnet', 185, 128, 'PGH PA ', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1289567463177367552/lNwGHJLv_normal.jpg'),
(51, 1289219276046340097, 'STUXNET', '2020-07-31 15:20:02', 'FitzCio', 1266870120493707264, 'Perhaps we are missing a lesson from Stuxnet? – //scadas.ec via ⁦@vbutrim⁩ https://t.co/D6Glai4Erp', 0, 'None', 64, 166, '', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1266870228379504642/DH7KU7oa_normal.jpg'),
(52, 1289195568980324352, 'STUXNET', '2020-07-31 13:45:50', 'parvinfarazmand', 3242988211, 'RT @HeshmatAlavi: 11)\nThe possibility of a cyber-attack is even less than sabotage considering the above-mentioned reasoning (lack of explo…', 67, 'None', 1428, 1852, 'Canada', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1135438893065465856/KjYJbP21_normal.png'),
(53, 1289159758860042241, 'STUXNET', '2020-07-31 11:23:32', 'infosecurty', 1286397821760032769, 'RT @three_cube: SCADA Hacking: The PROFIBUS/Profinet Communication Protocol (the protocol used by Stuxnet)\n\n #profinet #scada #scadahacking…', 11, 'profinet', 75, 87, '', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1286579625280393216/nAqSu7Jy_normal.jpg'),
(54, 1289134294208839682, 'STUXNET', '2020-07-31 09:42:21', 'NoOneIm95116324', 1162528879690620929, 'RT @three_cube: SCADA Hacking: The PROFIBUS/Profinet Communication Protocol (the protocol used by Stuxnet)\n\n #profinet #scada #scadahacking…', 11, 'profinet', 80, 174, '', 'Twitter for iPad', 'None', 'https://pbs.twimg.com/profile_images/1241743852056334336/x-yWE_PD_normal.jpg'),
(55, 1289131683300737024, 'STUXNET', '2020-07-31 09:31:58', 'TimDono66618408', 1071477120982020096, '@TheArabSource When will Iran get compensation for the murder of its nuclear scientists, the repeated killing of its men in Syria,  sabotage from stuxnet and more recently by enemy agents???', 0, 'None', 43, 36, '', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1096043854128709639/ouzx7gBy_normal.jpg'),
(56, 1289123685761048578, 'STUXNET', '2020-07-31 09:00:12', 'lime_link', 992797816618561536, 'RT @MoviesUnhacked: New episode! BLACKHAT! We review the movie, discuss know-it-all hackers, prison tropes, and Stuxnet. Check it out!\n\n#bl…', 13, 'None', 7149, 3296, '', 'limelink', 'None', 'https://pbs.twimg.com/profile_images/992800055580024832/nJwJwaLg_normal.jpg'),
(57, 1289110729057083393, 'STUXNET', '2020-07-31 08:08:42', 'ronniehowlett3', 752559084881211392, 'RT @MoviesUnhacked: New episode! BLACKHAT! We review the movie, discuss know-it-all hackers, prison tropes, and Stuxnet. Check it out!\n\n#bl…', 13, 'None', 3468, 130, 'Padova, Veneto', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/785177127075377152/b1ah8LLB_normal.jpg'),
(58, 1289100366454251520, 'STUXNET', '2020-07-31 07:27:32', 'themoviejourney', 934345315561324544, 'RT @MoviesUnhacked: New episode! BLACKHAT! We review the movie, discuss know-it-all hackers, prison tropes, and Stuxnet. Check it out!\n\n#bl…', 13, 'None', 10933, 7101, 'Melbourne, Vict', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1206099808462630912/eUD0YM1z_normal.jpg'),
(59, 1289097522011668480, 'STUXNET', '2020-07-31 07:16:14', 'CyCISlab', 1250554392740274184, 'RT @three_cube: SCADA Hacking: The PROFIBUS/Profinet Communication Protocol (the protocol used by Stuxnet)\n\n #profinet #scada #scadahacking…', 11, 'profinet', 20, 149, 'Cardiff', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1275109280518193154/WGV_QtWq_normal.jpg'),
(60, 1289054155424882689, 'STUXNET', '2020-07-31 04:23:54', 'StarColombo', 999621483755286530, 'RT @tauintl: Together with our partner, the Tel Aviv Yafo Municipal Department of Immigration Absorption, we present our latest bar talk \'F…', 4, 'None', 2773, 4987, '', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/999622829602553857/VDXTXzQZ_normal.jpg'),
(61, 1289025558177865728, 'STUXNET', '2020-07-31 02:30:16', 'WSWWatchpodcast', 1130897442172559361, 'RT @MoviesUnhacked: New episode! BLACKHAT! We review the movie, discuss know-it-all hackers, prison tropes, and Stuxnet. Check it out!\n\n#bl…', 13, 'None', 2071, 1894, '', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1215408381139263488/ltDeTSx1_normal.jpg'),
(62, 1289024244269985792, 'STUXNET', '2020-07-31 02:25:03', 'MoviesUnhacked', 845316790494244864, 'RT @MoviesUnhacked: New episode! BLACKHAT! We review the movie, discuss know-it-all hackers, prison tropes, and Stuxnet. Check it out!\n\n#bl…', 13, 'None', 407, 453, 'SF Bay Area, CA', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/914210062700126208/JA9Sdafn_normal.jpg'),
(63, 1289024174661308417, 'STUXNET', '2020-07-31 02:24:46', 'MrSmartyMan', 120252625, 'RT @MoviesUnhacked: New episode! BLACKHAT! We review the movie, discuss know-it-all hackers, prison tropes, and Stuxnet. Check it out!\n\n#bl…', 13, 'None', 141, 285, 'Bay Area, CA', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1271198478710890496/-ynqjcUq_normal.jpg'),
(64, 1288997549026680834, 'STUXNET', '2020-07-31 00:38:58', 'three_cube', 443369826, 'RT @three_cube: SCADA Hacking: The PROFIBUS/Profinet Communication Protocol (the protocol used by Stuxnet)\n\n #profinet #scada #scadahacking…', 11, 'profinet', 59768, 39291, '', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/378800000080433150/15a3611a51ea416c857ba088cdff7d78_normal.jpeg'),
(65, 1288986353426763776, 'STUXNET', '2020-07-30 23:54:29', 'BenardoDeLaPaz', 24631234, 'Cracked before it got totally converged did a good job providing an over view of stuxnet. \n\nhttps://t.co/kFQyGI2dQh\n\nPertinent screenshots follow.', 0, 'None', 1213, 308, 'United States', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1079477896320700416/gDmN1BPJ_normal.jpg'),
(66, 1288986348347469824, 'STUXNET', '2020-07-30 23:54:28', 'BenardoDeLaPaz', 24631234, 'Two:\n\nSilly rabbit, sensors were all green because they played you like a fiddle. Son of stuxnet slid into your system and so thoroughly screwed y\'all that you\'ll be bow legged for the rest of the century.', 0, 'None', 1213, 308, 'United States', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1079477896320700416/gDmN1BPJ_normal.jpg'),
(67, 1288965325145473026, 'STUXNET', '2020-07-30 22:30:55', 'TheLegendShayan', 418562724, 'Google pYIN, it’s the language of stuxnet, how they Control y’all, and manipulate your thoughts and brain', 0, 'None', 51, 53, 'Mobile Alabama', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1289409846295633926/MB84uau-_normal.jpg'),
(68, 1288930745164144641, 'STUXNET', '2020-07-30 20:13:31', 'Yourwinner3', 1255604375910780934, 'The Equation Group, classified as an advanced ...\nParent organization: National Security Agency &gt; NSA Directorate S &gt; Tailored Access ...\nProducts: Stuxnet, Flame\nTailored Access Operations\nFlame (malware)\nThreat (computer)\nCarbanak – Active. ... \nLizard Squad – Active', 0, 'None', 1761, 3705, '', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1272184015588638721/43YObDVS_normal.jpg'),
(69, 1288913314932637698, 'STUXNET', '2020-07-30 19:04:15', 'MoviesUnhacked', 845316790494244864, 'New episode! BLACKHAT! We review the movie, discuss know-it-all hackers, prison tropes, and Stuxnet. Check it out!\n\n#blackhat #chrishemsworth #technology #PodernFamily #movies #podcast\nhttps://t.co/SsegZv7hGZ', 13, 'blackhat', 407, 453, 'SF Bay Area, CA', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/914210062700126208/JA9Sdafn_normal.jpg'),
(70, 1288897469707964417, 'STUXNET', '2020-07-30 18:01:17', 'kaspersky', 13904152, 'With @BlackHatEvents coming up, we caught up with @e_kaspersky to talk about what cybercriminals have been up to during the pandemic, and what we can learn from the Stuxnet attack that happened 10 years ago. #BHUSA https://t.co/3jcaUj0YgL', 0, 'BHUSA', 312042, 109, '', 'AgoraPulse Manager', 'None', 'https://pbs.twimg.com/profile_images/1182299221342511105/j6UsJLlV_normal.jpg'),
(71, 1288858569874563072, 'STUXNET', '2020-07-30 15:26:43', 'raymonddelauney', 151962770, '@UKMisBrussels @DominicRaab Jolly good. You’ll be sanctioning our Israeli and American chums?https://t.co/XIeMJhZq3X', 0, 'None', 3946, 2098, '', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/959777679/terry_thomas_normal.jpg'),
(72, 1288796659011518464, 'STUXNET', '2020-07-30 11:20:42', 'BitcoinOldGuy', 1110109773100396547, '@profits_bitcoin @bitgeiniog Looks like the US will need a new stuxnet worm 🤣', 0, 'None', 232, 135, '', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1110110177171329026/qJzQ8ji3_normal.png'),
(73, 1288753767156977664, 'STUXNET', '2020-07-30 08:30:16', 'georgemaschke', 16743566, '@evacide Note that Stuxnet did not target Iran\'s \"nuclear weapons program.\" Iran does not and did not at the time have a nuclear weapons program. Stuxnet targeted Iran\'s civil nuclear program that was and remains subject to International Atomic Energy Agency inspection.', 1, 'None', 498, 495, 'The Hague, The ', 'TweetDeck', 'None', 'https://pbs.twimg.com/profile_images/1073254733056487425/9kFWDkSb_normal.jpg'),
(74, 1288724573563899905, 'STUXNET', '2020-07-30 06:34:16', 'PR070C0L3w0k', 1214617357269815296, '@Cointelegraph does anyone there remember stuxnet ? sounds like they just agreeded to stuxnet1.1...', 0, 'None', 39, 260, '', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1287071436323119105/p3olnW1S_normal.jpg'),
(75, 1288721569867587584, 'STUXNET', '2020-07-30 06:22:20', 'SCADAfence', 2885511718, 'RT @Eladbm: [Technical Blog] In this technical #blog, @SCADAfence researcher Maayan Fishelov discusses the two vulnerabilities that were re…', 1, 'blog', 619, 339, 'New York/Munich', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1100696915795161088/lj4cnk1H_normal.png'),
(76, 1288640964026757121, 'STUXNET', '2020-07-30 01:02:02', 'JamesHa78055773', 1137419827847389184, '@evacide @EFF In the video you said that Stuxnet was used to sabotage Iran’s centrifuges used for nuclear weapons. As far as is known to the wider world, the centrifuges are used for nuclear energy and Iran has no nuclear weapons program.', 0, 'None', 100, 310, 'This universe b', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1137429619995398144/qVVN0mVv_normal.jpg'),
(77, 1288638538377048064, 'STUXNET', '2020-07-30 00:52:23', 'BertBurt_', 1193684628772659200, '@ArbysRespecter Topo Chico doing a big marketing push for their 125th anniversary. This is a Stuxnet style corporate infohazard that\'s been infecting nervous systems since as early as March. https://t.co/sV7NcLD0uz', 0, 'None', 411, 198, '', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1193684790245044225/YVHgYTvH_normal.jpg'),
(78, 1288635112737746944, 'STUXNET', '2020-07-30 00:38:47', 'void_3301', 934222477886181376, 'RT @three_cube: SCADA Hacking: The PROFIBUS/Profinet Communication Protocol (the protocol used by Stuxnet)\n\n #profinet #scada #scadahacking…', 11, 'profinet', 122, 2048, '', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1031184659399335936/ccEkt9Kc_normal.jpg'),
(79, 1288600914341900291, 'STUXNET', '2020-07-29 22:22:53', 'chrisschmitz', 18717297, 'RT @HonkHase: Who Doesn’t Like a Story about #Stuxnet?\nhttps://t.co/QUpVYTQWuK', 1, 'Stuxnet', 1301, 1249, '127.0.0.1', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/883430114964516864/oPB2XHJM_normal.jpg'),
(80, 1288597605761548292, 'STUXNET', '2020-07-29 22:09:44', 'HonkHase', 1123680822064754688, 'Who Doesn’t Like a Story about #Stuxnet?\nhttps://t.co/QUpVYTQWuK', 1, 'Stuxnet', 3412, 2389, 'Bonn, Deutschla', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1123681044736159745/Ma4pCkrv_normal.png'),
(81, 1288581438590386184, 'STUXNET', '2020-07-29 21:05:30', 'Eliza_MayAustin', 1272669745775546368, 'RT @three_cube: SCADA Hacking: The PROFIBUS/Profinet Communication Protocol (the protocol used by Stuxnet)\n\n #profinet #scada #scadahacking…', 11, 'profinet', 364, 695, '', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1282109598716043266/O2pjZZLN_normal.jpg'),
(82, 1288577347621466114, 'STUXNET', '2020-07-29 20:49:14', 'Eladbm', 24363385, '[Technical Blog] In this technical #blog, @SCADAfence researcher Maayan Fishelov discusses the two vulnerabilities that were recently found in Schneider Electric #Triconex #SIS devices that have similarities to #Stuxnet.\nCheck it out: https://t.co/BIf2b6OJWV\n\n#Vulnerability #OT', 1, 'blog', 29, 33, '', 'HubSpot', 'None', 'https://pbs.twimg.com/profile_images/415164353302630400/j3dr543Q_normal.jpeg'),
(83, 1288563870643245057, 'STUXNET', '2020-07-29 19:55:41', 'mack_motion', 145884373, '@designerben Stuxnet! Such a great mograph spot; love the aesthetic. That\'s great reference, Ben', 0, 'None', 1174, 381, 'Raleigh NC', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/488508056204890114/WifhKG_z_normal.jpeg'),
(84, 1288561282308689920, 'STUXNET', '2020-07-29 19:45:24', 'rasoolirfan', 84357788, '#Stuxnet cyber attacks in OT environment, are we prepared to defend\nhttps://t.co/VJmfYWwQul', 0, 'Stuxnet', 281, 320, 'India', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1174320317948411905/N91Jo52e_normal.jpg'),
(85, 1288560967085953026, 'STUXNET', '2020-07-29 19:44:09', 'KeithPeckman', 438034564, 'I\'ve always been a huge fan of @briankrebs ever since his reporting on Stuxnet back in the day.  I could not agree more with his assessment on #skillsdevelopment over #certifications as he wrote so well in the below article.  Good…https://t.co/GPKrpseadp https://t.co/IkCPu2TNxm', 0, 'skillsdevelopment', 60, 177, 'NY Metro', 'LinkedIn', 'None', 'https://pbs.twimg.com/profile_images/757997950278565888/PkmMCU4W_normal.jpg'),
(86, 1288553058813845504, 'STUXNET', '2020-07-29 19:12:44', 'A_russian_dandy', 2755919898, 'Regarding an update on Burger Records news, appartlly all Millennials choked to death on their Shelby sandwiches during the StuxNet War...', 0, 'None', 174, 1790, 'West River', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1284847344635256832/5U_B5Oqj_normal.jpg'),
(87, 1288549888704368640, 'STUXNET', '2020-07-29 19:00:08', 'thisisaaronbot', 1859826240, 'melts server stuxnet command-and-control / values ATTENTION input new about https://t.co/1lg2d8ErDc', 0, 'None', 20, 1, '', 'this is aaronbot', 'None', 'https://pbs.twimg.com/profile_images/378800000450627321/0ad448979df793eb716a67c755bfa46c_normal.jpeg'),
(88, 1288510558040457216, 'STUXNET', '2020-07-29 16:23:51', 'Natanael_L', 14085290, '@SwiftOnSecurity Alternatively, just re-sign them with newer algorithms, or even remove the signature if they\'re worried of a Flame / stuxnet style attack and want SHA1 validation disabled. If the sig is removed then it won\'t be trusted by for example AV.', 0, 'None', 577, 210, 'Sweden', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/52275257/4045e9cb0087d19de4e004cb8754e33c_normal.png'),
(89, 1288507987410259968, 'STUXNET', '2020-07-29 16:13:38', 'Hashbrowns2u4e1', 1270541452498669568, '@Paisano @JudicialWatch Pardon my spelling (Jack and his c_a buddies put a \"stuxnet\" type bot in my phone via \"upgrades\" and it automatically  uncorrects my spelling at random). Looked around the platform and only seems to occur to conservative accounts tho)!', 0, 'None', 511, 594, '\'Spud\' on Parle', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1282378615347466243/6NXu30f__normal.jpg'),
(90, 1288507564301225985, 'STUXNET', '2020-07-29 16:11:57', '_vijay0', 1060379873930207232, 'Hypothetical situation; stuxnet like worm, but attacks #bitcoin nodes.. what\'s threat level? 🤔', 0, 'bitcoin', 141, 723, 'Singapore', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1246683528395247616/xRf2Rdup_normal.jpg'),
(91, 1288504314680487936, 'STUXNET', '2020-07-29 15:59:02', 'SCADAfence', 2885511718, '[Technical Blog] In this technical #blog, @SCADAfence researcher Maayan Fishelov discusses the two vulnerabilities that were recently found in Schneider Electric #Triconex #SIS devices that have similarities to #Stuxnet.\n\nCheck it out: https://t.co/Qjru6us8nK\n\n#Vulnerability #OT', 1, 'blog', 619, 339, 'New York/Munich', 'HubSpot', 'None', 'https://pbs.twimg.com/profile_images/1100696915795161088/lj4cnk1H_normal.png'),
(92, 1288499818269159425, 'STUXNET', '2020-07-29 15:41:10', 'CyberSecurityN8', 1142424032794406912, 'RT @three_cube: SCADA Hacking: The PROFIBUS/Profinet Communication Protocol (the protocol used by Stuxnet)\n\n #profinet #scada #scadahacking…', 11, 'profinet', 6264, 1, '', 'forRetweeting', 'None', 'https://pbs.twimg.com/profile_images/1197135188473475074/8svI-1EO_normal.jpg'),
(93, 1288499816708943872, 'STUXNET', '2020-07-29 15:41:10', 'sectest9', 710123736175783938, 'RT @three_cube: SCADA Hacking: The PROFIBUS/Profinet Communication Protocol (the protocol used by Stuxnet)\n\n #profinet #scada #scadahacking…', 11, 'profinet', 32172, 1, 'Hyderabad, Indi', 'auto is the only way it can be ', 'None', 'https://pbs.twimg.com/profile_images/710735123876982784/GjV7JWMk_normal.jpg'),
(94, 1288499800984428544, 'STUXNET', '2020-07-29 15:41:06', 'Cecalli_Helper', 1460288238, 'RT @three_cube: SCADA Hacking: The PROFIBUS/Profinet Communication Protocol (the protocol used by Stuxnet)\n\n #profinet #scada #scadahacking…', 11, 'profinet', 12364, 13422, 'Censored', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1287739897353314304/YjqRVUcZ_normal.jpg'),
(95, 1288499032902586368, 'STUXNET', '2020-07-29 15:38:03', 'RyanReynolds', 17874792, '@bobscheer @EthanMayJ It\'s how the US and/or Israel did Stuxnet in Iran, too, allegedly...', 0, 'None', 10063, 978, 'Evansville, Ind', 'TweetDeck', 'None', 'https://pbs.twimg.com/profile_images/1112158553291309057/otgtZT7L_normal.png'),
(96, 1288487064430813184, 'STUXNET', '2020-07-29 14:50:29', 'sdmsec', 1105275450706796551, 'RT @three_cube: SCADA Hacking: The PROFIBUS/Profinet Communication Protocol (the protocol used by Stuxnet)\n\n #profinet #scada #scadahacking…', 11, 'profinet', 132, 81, 'Scotland', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1105277808773865473/9P74Q2Kf_normal.png'),
(97, 1288486517707612162, 'STUXNET', '2020-07-29 14:48:19', 'three_cube', 443369826, 'SCADA Hacking: The PROFIBUS/Profinet Communication Protocol (the protocol used by Stuxnet)\n\n #profinet #scada #scadahacking #ics #cyberwar #cybersecurity   \n\n https://t.co/jDr8A5Rzdw\n\n#scadahacking https://t.co/TwLs1nQytJ', 11, 'profinet', 59768, 39291, '', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/378800000080433150/15a3611a51ea416c857ba088cdff7d78_normal.jpeg'),
(98, 1288478140042366977, 'STUXNET', '2020-07-29 14:15:02', 'hackerb0t', 3385236489, 'The American government also tried to take down North Korea\'s nuclear programs with the Stuxnet worm.', 0, 'None', 20655, 974, '', 'hackerb0t', 'None', 'https://pbs.twimg.com/profile_images/1199597427256254464/I2ZF7Ztn_normal.jpg'),
(99, 1288460084838891520, 'STUXNET', '2020-07-29 13:03:17', 'rl90008', 947239072946360320, '@PublicBearwaves Stuxnet destroyed centrifuges, preventing Iran from obtaining enriched uranium. \nTargeting nuclear reactors are like targeting any other power source: it is choice between death and destruction or depriving electricity.', 0, 'None', 0, 64, '', 'Twitter Web App', 'None', 'https://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png'),
(100, 1288421727622574080, 'STUXNET', '2020-07-29 10:30:52', 'stldesktop', 240038070, 'RT @hijodelcuervo: Remember remember #Stuxnet https://t.co/bdtvXp0fqj', 7, 'Stuxnet', 679, 237, '', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/922503489095311360/d4iySzL5_normal.jpg'),
(101, 1288304439338635264, 'STUXNET', '2020-07-29 02:44:48', 'willisten5', 4889714145, 'Too bad japan let israel\nInstall stuxnet virus at fukishima,  results of,\nNow destroying entire Pacific Ocean...\nSampson option anyone..?\n\nUntold billions of dead\nSea life washing up,...\n\nGood times...', 0, 'None', 1377, 4831, '', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1214673385499824130/VQJpiODx_normal.jpg'),
(102, 1288263508451303424, 'STUXNET', '2020-07-29 00:02:09', 'Kev_Bros_', 260973504, '@CBSEveningNews @kathrynw5 @USDA @DHSgov Could be the agricultural equivalent of Stuxnet.', 0, 'None', 15, 174, 'NoVA', 'Twitter for iPad', 'None', 'https://pbs.twimg.com/profile_images/1192868403192770562/ivN4FqtY_normal.jpg'),
(103, 1288249522599202817, 'STUXNET', '2020-07-28 23:06:35', 'janieorr', 31179714, 'Have you guys ever watched the Documentary called Zero Days?  About the Stuxnet Virus/Operation.', 0, 'None', 578, 1119, 'Texas', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1287563504749359104/mji5BO9C_normal.jpg'),
(104, 1288248618797785088, 'STUXNET', '2020-07-28 23:02:59', 'hipsterelectron', 707484470392332288, 're: the possibility of achieving nuclear disarmament by closing down all existing nuke creation facilities (which is in some sense the rationale for why the us attacked iran with stuxnet) https://t.co/ylyFClHUbX', 0, 'None', 1118, 4886, '((((?) sf ) nas', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1061179236881334273/MRtUwmQd_normal.jpg'),
(105, 1288243935190511616, 'STUXNET', '2020-07-28 22:44:23', 'eightygrit', 230085162, 'RT @rsms: Today I was reminded by someone how a bug in a TrueType parser was the foundation for, and focal point of, Stuxnet and Duqu, targ…', 9, 'None', 78, 180, 'Denver, Colorad', 'Tweetbot for Mac', 'None', 'https://pbs.twimg.com/profile_images/938161220758024192/wjZzyTSe_normal.jpg'),
(106, 1288213017893756928, 'STUXNET', '2020-07-28 20:41:31', 'anactualspider', 238037209, 'Stuxnet feels like a lifetime ago', 0, 'None', 462, 222, 'Richmond, VA', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1082037780945940480/EQlRhI3c_normal.jpg'),
(107, 1288207399958896640, 'STUXNET', '2020-07-28 20:19:12', 'VegasLife9', 1237217895446278144, 'Watching “zero days” and Stuxnet. What a screw up. Israel almost killed us all.', 0, 'None', 903, 2564, 'Las Vegas, NV', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1237221596726607872/64J-hV7s_normal.jpg'),
(108, 1288182762315415552, 'STUXNET', '2020-07-28 18:41:18', 'CyberSecurityN8', 1142424032794406912, 'RT @QContrarian: #hacking tutorial — hijacking system updates... you know, like NSA/Israel(?) did w/ Stuxnet\n📌systems periodically download…', 6, 'hacking', 6264, 1, '', 'forRetweeting', 'None', 'https://pbs.twimg.com/profile_images/1197135188473475074/8svI-1EO_normal.jpg'),
(109, 1288182751154393088, 'STUXNET', '2020-07-28 18:41:15', 'sectest9', 710123736175783938, 'RT @QContrarian: #hacking tutorial — hijacking system updates... you know, like NSA/Israel(?) did w/ Stuxnet\n📌systems periodically download…', 6, 'hacking', 32172, 1, 'Hyderabad, Indi', 'auto is the only way it can be ', 'None', 'https://pbs.twimg.com/profile_images/710735123876982784/GjV7JWMk_normal.jpg'),
(110, 1288182675551944704, 'STUXNET', '2020-07-28 18:40:57', 'SecurityXTV', 811520967709224960, 'RT @QContrarian: #hacking tutorial — hijacking system updates... you know, like NSA/Israel(?) did w/ Stuxnet\n📌systems periodically download…', 6, 'hacking', 4051, 5001, 'England, United', 'SEOL-Louise', 'None', 'https://pbs.twimg.com/profile_images/1102663540974997505/Fk4rNH2U_normal.png'),
(111, 1288182435071569920, 'STUXNET', '2020-07-28 18:40:00', 'WebSecurityIT', 955709459065659392, 'RT @QContrarian: #hacking tutorial — hijacking system updates... you know, like NSA/Israel(?) did w/ Stuxnet\n📌systems periodically download…', 6, 'hacking', 3707, 1, '~/', 'Post yourXss', 'None', 'https://pbs.twimg.com/profile_images/1213210045346746368/bvVizeJ3_normal.jpg'),
(112, 1288182310358126596, 'STUXNET', '2020-07-28 18:39:30', 'CryptoWeb9', 1204870332512972802, 'RT @QContrarian: #hacking tutorial — hijacking system updates... you know, like NSA/Israel(?) did w/ Stuxnet\n📌systems periodically download…', 6, 'hacking', 141, 140, 'The Dark Web', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1207101130993479682/B7e19NBQ_normal.jpg'),
(113, 1288182219408838657, 'STUXNET', '2020-07-28 18:39:09', 'QContrarian', 1109441086097899520, '#hacking tutorial — hijacking system updates... you know, like NSA/Israel(?) did w/ Stuxnet\n📌systems periodically download upgrades &amp; updates trusting that they are coming from #software dev... but what if they’re not?\n\n#CyberSecurity #infosec #malware #hacking #tech #hackers https://t.co/l3t3UExAtp', 6, 'hacking', 1146, 431, 'United States', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1110341494219722753/Gm3n6trM_normal.jpg'),
(114, 1288127114923786240, 'STUXNET', '2020-07-28 15:00:11', 'grylloblatta', 1122255425871785985, 'Phone is acting up. Probably caught stuxnet from one of those “read manga free online” sites on page 8 of a google search.', 0, 'None', 589, 334, 'New Jersey, USA', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1228798536076189698/NcAKI6DY_normal.jpg'),
(115, 1288125547319443461, 'STUXNET', '2020-07-28 14:53:57', 'handicap_hunter', 430244604, 'Finally, operation Olympic Games is referenced.. I’m not suggesting a “STUXNET” like cyber attack, but any journalist covering this issue should at least reference the significance.  https://t.co/Jd88ebmZXg', 0, 'None', 427, 246, '', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/794580103971733504/Ifb6Lg4b_normal.jpg'),
(116, 1288125388120453124, 'STUXNET', '2020-07-28 14:53:19', 'alldaytruth', 1059504948482859008, 'RT @hijodelcuervo: Remember remember #Stuxnet', 7, 'Stuxnet', 152, 146, 'Washington, DC', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1267843452638724099/56sVMrMH_normal.jpg'),
(117, 1288124859491299330, 'STUXNET', '2020-07-28 14:51:13', 'rronald68', 436677269, 'RT @hijodelcuervo: Remember remember #Stuxnet', 7, 'Stuxnet', 53, 228, 'Texas, USA', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1060878581730041856/82mFD_9j_normal.jpg'),
(118, 1288124530238488579, 'STUXNET', '2020-07-28 14:49:54', 'MintPressNews', 414962189, 'RT @hijodelcuervo: Remember remember #Stuxnet https://t.co/bdtvXp0fqj', 7, 'Stuxnet', 65362, 2088, 'Correspondents ', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1224233979458523138/16OUNhx9_normal.jpg'),
(119, 1288098029795508224, 'STUXNET', '2020-07-28 13:04:36', 'BassistOld', 1140631935481520129, '@SwoleKyloRen @MsStarr7 @wookietim @BentKimble @ShlomoIndiana @MinnesotaExpat @dawndawn762yah1 @ChiefLizWarren @sandycedar59 @AlaskanRadical @cbowling4512 @nevancik1 @lanny33571893 @SlimJimJohn1 @BeckyAwsum @para82nd_1 @JDW714 @FairStability @ally_android @Rocket_1981 @ic_lib @SC_BlueDragon @SmokeyStafford @Allie4Christ @172Kittykat @Vickie627 @newsjunky2 @Grace_2A_mazing @Dennisabm @Mongo3804 @MiddleMolly @JonAinLV @WilliamBuckSr @LadyOfTheOcean1 @kag2020___ @gorillastyle @0099Susu @JillayneMC @Klee34036780 @T_Slothrop_Esq @JorgeR26950111 @psfnyc5 @YesPISTLiberty @BulldogMama1 @ToccyLa @lostandlovinit @angie_rasmussen @ZekeEmanuel @SaskiaPopescu Since stuxnet was so effective, it\'s obvious that the Iranian facilities weren\'t secure.. and if there were \"boots on the ground\" at the time, it wasn\'t American military! \nBut yeah!', 0, 'None', 3874, 3838, 'I block MAGAt\'s', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1177591916080390146/PMn1meiu_normal.jpg'),
(120, 1288096875187404800, 'STUXNET', '2020-07-28 13:00:01', 'SwoleKyloRen', 943507844971859968, '@BassistOld @MsStarr7 @wookietim @BentKimble @ShlomoIndiana @MinnesotaExpat @dawndawn762yah1 @ChiefLizWarren @sandycedar59 @AlaskanRadical @cbowling4512 @nevancik1 @lanny33571893 @SlimJimJohn1 @BeckyAwsum @para82nd_1 @JDW714 @FairStability @ally_android @Rocket_1981 @ic_lib @SC_BlueDragon @SmokeyStafford @Allie4Christ @172Kittykat @Vickie627 @newsjunky2 @Grace_2A_mazing @Dennisabm @Mongo3804 @MiddleMolly @JonAinLV @WilliamBuckSr @LadyOfTheOcean1 @kag2020___ @gorillastyle @0099Susu @JillayneMC @Klee34036780 @T_Slothrop_Esq @JorgeR26950111 @psfnyc5 @YesPISTLiberty @BulldogMama1 @ToccyLa @lostandlovinit @angie_rasmussen @ZekeEmanuel @SaskiaPopescu I mean OOH, physical insertion of STUXNet virus into secure Iranian facilities as part of joint US military operation Olympic Games is proof that _someone_ was on the ground inside Iran.\n\nOTOH I’m not suggesting several hundred thousand soldiers (wtf, loloool, etc.)', 0, 'None', 56, 44, 'Albuquerque, NM', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/943508545433227264/3eC52Pgv_normal.jpg');
INSERT INTO `twitter` (`twitter_id`, `tweer_id`, `search_query`, `date`, `user_name`, `tweet_user_id`, `text`, `retweet_cnt`, `hash_tag`, `follower_cnt`, `friends_cnt`, `location`, `platform`, `co_ordinates`, `profile_picture_url`) VALUES
(121, 1288091886289408000, 'STUXNET', '2020-07-28 12:40:11', 'AcmeAviation', 719320760788066305, '@Jurrrr @NeilJacobs @PrestonPysh The most honest and rational source for BTC would be a state actor - mostly because a non-state actor would have been eliminated Stuxnet style long ago.', 0, 'None', 498, 407, '3rd rock from t', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1051913428779065345/4bFp5oRg_normal.jpg'),
(122, 1288074065748594690, 'STUXNET', '2020-07-28 11:29:23', 'CBRN_Analyst', 1158367849485701120, 'RT @KimZetter: What a treat. @liam_omurchu and Eric Chien - the Symantec researchers who reverse-engineered Stuxnet and told us what it did…', 12, 'None', 192, 1480, 'Everywhere', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1190629011535335425/z4ozH_T6_normal.jpg'),
(123, 1288030528566890498, 'STUXNET', '2020-07-28 08:36:23', 'TheBlackSheDog', 922724303262461952, '@aum_shree @BreakingNAlerts @SecPompeo @realDonaldTrump @Boeing @BoeingAirplanes @NSACyber @NSAGov @AliceGWells Maybe. Boeing &amp; Honeywell  contracts in Iran under company in Tehran with IRGC. The technology papers had Stuxnet virus and it got loose on the internet. So earthquake in Japan wasn\'t only cause to reactors meltdown. Got it?  Now you understand why they\'re fucking pissed off!', 0, 'None', 151, 765, 'Doghouse, Unite', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/946798583784853504/jyD3Vh2I_normal.jpg'),
(124, 1288006588641480704, 'STUXNET', '2020-07-28 07:01:15', 'JourneysNonnie', 29547555, 'RT @hijodelcuervo: Remember remember #Stuxnet', 7, 'Stuxnet', 2151, 2321, 'Florida', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/127672331/100_0489Ican_tbelieveit___fresized_normal.jpg'),
(125, 1287965313582206978, 'STUXNET', '2020-07-28 04:17:14', 'ForgingElements', 1046636908154105858, '@Paula_Piccard But, Stuxnet... 😟\n\nWith a history in aerospace, the acronym ’RPA’ means Remote Piloted Aircraft, so this post was a little confusing upon first glance. \n\nI believe AI and ML will eventually effect every aspect of human society the world over. Lest we kill ourselves first.', 0, 'None', 1003, 2887, 'Texas, USA', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1234952334180016130/_EAY_mxd_normal.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `twitter_keyword`
--

DROP TABLE IF EXISTS `twitter_keyword`;
CREATE TABLE `twitter_keyword` (
  `id` int(11) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `keyword_status` varchar(1) NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `twitter_keyword`
--

INSERT INTO `twitter_keyword` (`id`, `keyword`, `keyword_status`) VALUES
(1, 'STUXNET', 'Y'),
(2, 'mohunbagan', 'Y'),
(3, 'eastbengal', 'Y'),
(4, 'ganguly', 'Y'),
(5, 'corona', 'Y'),
(6, 'sushant singh rajput', 'Y'),
(7, 'new education policy', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `twitter_location`
--

DROP TABLE IF EXISTS `twitter_location`;
CREATE TABLE `twitter_location` (
  `id` int(11) NOT NULL,
  `latitude` varchar(10) NOT NULL,
  `longitude` varchar(10) NOT NULL,
  `radius` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `twitter_location`
--

INSERT INTO `twitter_location` (`id`, `latitude`, `longitude`, `radius`) VALUES
(2, '22.57', '88.36', '5km'),
(4, '23.23', '87.86', '50mi');

-- --------------------------------------------------------

--
-- Table structure for table `twitter_user_search`
--

DROP TABLE IF EXISTS `twitter_user_search`;
CREATE TABLE `twitter_user_search` (
  `twitter_id` int(50) NOT NULL,
  `twitter_user_id` bigint(100) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `screen_name` text NOT NULL,
  `location` varchar(50) DEFAULT NULL,
  `status_count` int(10) NOT NULL,
  `followers` int(10) NOT NULL,
  `friends` int(10) NOT NULL,
  `profile_pic_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `twitter_user_search`
--

INSERT INTO `twitter_user_search` (`twitter_id`, `twitter_user_id`, `full_name`, `screen_name`, `location`, `status_count`, `followers`, `friends`, `profile_pic_url`) VALUES
(1, 964059113922609152, 'Luke Slytalker & The Force', '_Luke_Slytalker', 'peelin\' onions off the darknet', 8499, 10007, 1336, 'https://pbs.twimg.com/profile_images/1192262914868035584/NP5wb0va_normal.png'),
(2, 313422614, 'qa', 'qarave', '', 11380, 0, 0, 'https://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
CREATE TABLE `user_log` (
  `ulog_id` int(5) NOT NULL,
  `comp_id` int(5) DEFAULT NULL,
  `uid` int(5) DEFAULT NULL,
  `ip_addr` varchar(15) DEFAULT NULL,
  `date_fr` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`ulog_id`, `comp_id`, `uid`, `ip_addr`, `date_fr`, `date_to`) VALUES
(1, NULL, 17, NULL, '2020-03-02 10:46:34', NULL),
(2, NULL, 1, NULL, '2020-03-02 10:48:48', '2020-03-02 11:07:21'),
(3, NULL, 17, NULL, '2020-03-02 11:44:08', NULL),
(4, NULL, 2, NULL, '2020-03-02 12:27:23', NULL),
(5, NULL, 23, NULL, '2020-03-02 12:37:04', '2020-03-02 13:35:59'),
(6, NULL, 2, NULL, '2020-03-02 13:19:02', '2020-03-02 13:24:35'),
(7, NULL, 17, NULL, '2020-03-02 13:23:26', NULL),
(8, NULL, 1, NULL, '2020-03-02 13:33:57', '2020-03-02 13:55:18'),
(9, NULL, 23, NULL, '2020-03-02 13:36:21', '2020-03-02 13:41:25'),
(10, NULL, 2, NULL, '2020-03-02 13:46:16', NULL),
(11, NULL, 23, NULL, '2020-03-02 13:48:18', '2020-03-02 13:48:46'),
(12, NULL, 23, NULL, '2020-03-02 13:55:45', '2020-03-02 14:00:56'),
(13, NULL, 1, NULL, '2020-03-02 13:58:46', NULL),
(14, NULL, 23, NULL, '2020-03-02 14:07:50', '2020-03-02 14:18:48'),
(15, NULL, 17, NULL, '2020-03-02 14:12:20', NULL),
(16, NULL, 2, NULL, '2020-03-02 14:18:08', '2020-03-02 14:19:04'),
(17, NULL, 23, NULL, '2020-03-02 14:19:15', '2020-03-02 14:22:01'),
(18, NULL, 2, NULL, '2020-03-02 14:22:15', '2020-03-02 14:29:05'),
(19, NULL, 1, NULL, '2020-03-02 14:22:20', '2020-03-02 14:23:47'),
(20, NULL, 23, NULL, '2020-03-02 14:24:29', '2020-03-02 14:33:35'),
(21, NULL, 20, NULL, '2020-03-02 14:29:14', '2020-03-02 14:33:46'),
(22, NULL, 2, NULL, '2020-03-02 14:34:08', '2020-03-02 14:35:53'),
(23, NULL, 23, NULL, '2020-03-02 14:34:10', '2020-03-02 15:40:26'),
(24, NULL, 1, NULL, '2020-03-02 14:56:04', NULL),
(25, NULL, 1, NULL, '2020-03-02 15:15:31', '2020-03-02 15:15:53'),
(26, NULL, 1, NULL, '2020-03-02 15:22:55', NULL),
(27, NULL, 23, NULL, '2020-03-02 15:40:51', '2020-03-02 17:38:42'),
(28, NULL, 1, NULL, '2020-03-02 16:04:18', NULL),
(29, NULL, 17, NULL, '2020-03-02 16:52:30', NULL),
(30, NULL, 1, NULL, '2020-03-02 17:06:31', '2020-03-02 17:41:39'),
(31, NULL, 17, NULL, '2020-03-03 10:28:21', NULL),
(32, NULL, 24, NULL, '2020-03-03 10:58:21', NULL),
(33, NULL, 1, NULL, '2020-03-03 10:58:40', NULL),
(34, NULL, 24, NULL, '2020-03-03 10:59:09', '2020-03-03 10:59:48'),
(35, NULL, 17, NULL, '2020-03-03 11:26:52', NULL),
(36, NULL, 24, NULL, '2020-03-03 11:35:22', '2020-03-03 11:36:33'),
(37, NULL, 24, NULL, '2020-03-03 11:36:47', '2020-03-03 11:38:51'),
(38, NULL, 17, NULL, '2020-03-03 11:57:22', NULL),
(39, NULL, 2, NULL, '2020-03-03 12:08:07', '2020-03-03 12:11:12'),
(40, NULL, 24, NULL, '2020-03-03 12:21:22', '2020-03-03 12:21:49'),
(41, NULL, 1, NULL, '2020-03-03 12:25:01', '2020-03-03 12:25:18'),
(42, NULL, 24, NULL, '2020-03-03 12:34:50', '2020-03-03 12:35:22'),
(43, NULL, 1, NULL, '2020-03-03 12:44:58', '2020-03-03 12:46:41'),
(44, NULL, 1, NULL, '2020-03-03 13:12:53', NULL),
(45, NULL, 21, NULL, '2020-03-03 13:14:34', NULL),
(46, NULL, 21, NULL, '2020-03-03 13:41:31', '2020-03-03 13:56:54'),
(47, NULL, 21, NULL, '2020-03-03 13:57:09', '2020-03-03 17:14:53'),
(48, NULL, 1, NULL, '2020-03-03 14:50:03', '2020-03-03 14:52:02'),
(49, NULL, 1, NULL, '2020-03-03 16:03:36', '2020-03-03 16:23:55'),
(50, NULL, 1, NULL, '2020-03-03 16:25:15', NULL),
(51, NULL, 2, NULL, '2020-03-03 16:40:51', NULL),
(52, NULL, 1, NULL, '2020-03-03 16:47:40', '2020-03-03 17:30:55'),
(53, NULL, 17, NULL, '2020-03-03 17:19:17', '2020-03-03 17:36:13'),
(54, NULL, 1, NULL, '2020-03-03 17:36:23', '2020-03-03 17:51:58'),
(55, NULL, 2, NULL, '2020-03-03 17:41:05', '2020-03-03 17:52:36'),
(56, NULL, 17, NULL, '2020-03-04 10:31:46', NULL),
(57, NULL, 1, NULL, '2020-03-04 10:47:39', NULL),
(58, NULL, 1, NULL, '2020-03-04 11:11:23', NULL),
(59, NULL, 17, NULL, '2020-03-04 11:39:56', NULL),
(60, NULL, 1, NULL, '2020-03-04 12:03:01', NULL),
(61, NULL, 22, NULL, '2020-03-04 12:08:50', '2020-03-04 12:25:05'),
(62, NULL, 22, NULL, '2020-03-04 12:25:29', '2020-03-04 12:46:36'),
(63, NULL, 1, NULL, '2020-03-04 12:28:19', NULL),
(64, NULL, 22, NULL, '2020-03-04 12:31:07', NULL),
(65, NULL, 22, NULL, '2020-03-04 12:46:52', NULL),
(66, NULL, 1, NULL, '2020-03-04 12:49:02', '2020-03-04 12:50:09'),
(67, NULL, 20, NULL, '2020-03-04 12:50:23', '2020-03-04 12:53:24'),
(68, NULL, 1, NULL, '2020-03-04 12:53:36', '2020-03-04 12:56:13'),
(69, NULL, 17, NULL, '2020-03-04 12:54:18', NULL),
(70, NULL, 20, NULL, '2020-03-04 12:56:25', '2020-03-04 12:57:01'),
(71, NULL, 22, NULL, '2020-03-04 13:50:50', '2020-03-04 14:40:55'),
(72, NULL, 2, NULL, '2020-03-04 14:04:05', NULL),
(73, NULL, 22, NULL, '2020-03-04 14:41:10', '2020-03-04 16:49:34'),
(74, NULL, 1, NULL, '2020-03-04 14:49:10', '2020-03-04 14:54:45'),
(75, NULL, 1, NULL, '2020-03-04 14:55:05', '2020-03-04 14:57:53'),
(76, NULL, 1, NULL, '2020-03-04 15:37:25', '2020-03-04 15:38:09'),
(77, NULL, 20, NULL, '2020-03-04 15:38:28', NULL),
(78, NULL, 2, NULL, '2020-03-04 16:15:49', '2020-03-04 16:17:33'),
(79, NULL, 17, NULL, '2020-03-04 16:49:55', '2020-03-04 16:54:08'),
(80, NULL, 24, NULL, '2020-03-04 16:50:28', '2020-03-04 16:51:23'),
(81, NULL, 1, NULL, '2020-03-04 16:58:47', '2020-03-04 17:13:39'),
(82, NULL, 17, NULL, '2020-03-05 10:30:39', NULL),
(83, NULL, 24, NULL, '2020-03-05 10:48:29', '2020-03-05 10:52:13'),
(84, NULL, 20, NULL, '2020-03-05 11:46:08', NULL),
(85, NULL, 17, NULL, '2020-03-05 12:18:06', NULL),
(86, NULL, 17, NULL, '2020-03-05 12:54:19', NULL),
(87, NULL, 20, NULL, '2020-03-05 13:00:50', NULL),
(88, NULL, 2, NULL, '2020-03-05 13:50:48', NULL),
(89, NULL, 2, NULL, '2020-03-05 14:44:50', NULL),
(90, NULL, 20, NULL, '2020-03-05 15:03:02', '2020-03-05 15:50:05'),
(91, NULL, 1, NULL, '2020-03-05 15:05:11', NULL),
(92, NULL, 2, NULL, '2020-03-05 15:10:58', NULL),
(93, NULL, 20, NULL, '2020-03-05 15:50:22', '2020-03-05 15:53:52'),
(94, NULL, 1, NULL, '2020-03-05 15:51:39', '2020-03-05 15:59:43'),
(95, NULL, 20, NULL, '2020-03-05 15:54:07', '2020-03-05 16:37:33'),
(96, NULL, 2, NULL, '2020-03-05 16:14:35', NULL),
(97, NULL, 1, NULL, '2020-03-05 16:16:42', '2020-03-05 16:23:11'),
(98, NULL, 20, NULL, '2020-03-05 16:48:38', '2020-03-05 16:58:29'),
(99, NULL, 20, NULL, '2020-03-05 16:58:50', '2020-03-05 16:59:20'),
(100, NULL, 2, NULL, '2020-03-05 17:00:07', NULL),
(101, NULL, 20, NULL, '2020-03-05 17:02:56', '2020-03-05 17:04:52'),
(102, NULL, 17, NULL, '2020-03-05 17:07:52', '2020-03-05 17:32:14'),
(103, NULL, 17, NULL, '2020-03-05 17:33:21', '2020-03-05 17:55:25'),
(104, NULL, 26, NULL, '2020-03-05 17:55:37', '2020-03-05 18:00:30'),
(105, NULL, 1, NULL, '2020-03-05 20:42:38', '2020-03-05 20:48:37'),
(106, NULL, 2, NULL, '2020-03-06 11:10:33', NULL),
(107, NULL, 23, NULL, '2020-03-06 11:33:27', '2020-03-06 11:33:51'),
(108, NULL, 17, NULL, '2020-03-06 11:40:23', '2020-03-06 12:22:19'),
(109, NULL, 34, NULL, '2020-03-06 12:23:18', '2020-03-06 12:24:34'),
(110, NULL, 17, NULL, '2020-03-06 12:25:18', '2020-03-06 12:26:16'),
(111, NULL, 24, NULL, '2020-03-06 12:51:54', '2020-03-06 12:52:25'),
(112, NULL, 24, NULL, '2020-03-06 12:52:38', NULL),
(113, NULL, 2, NULL, '2020-03-06 14:14:44', NULL),
(114, NULL, 2, NULL, '2020-03-06 14:14:44', NULL),
(115, NULL, 2, NULL, '2020-03-06 14:39:54', NULL),
(116, NULL, 1, NULL, '2020-03-06 14:54:28', '2020-03-06 15:03:06'),
(117, NULL, 24, NULL, '2020-03-06 15:14:43', NULL),
(118, NULL, 24, NULL, '2020-03-06 15:18:01', '2020-03-06 16:08:39'),
(119, NULL, 1, NULL, '2020-03-06 15:53:56', '2020-03-06 15:58:12'),
(120, NULL, 1, NULL, '2020-03-06 15:57:12', '2020-03-06 16:02:02'),
(121, NULL, 17, NULL, '2020-03-06 15:58:27', NULL),
(122, NULL, 2, NULL, '2020-03-06 16:08:43', NULL),
(123, NULL, 24, NULL, '2020-03-06 16:08:59', NULL),
(124, NULL, 24, NULL, '2020-03-06 16:40:07', '2020-03-06 16:44:18'),
(125, NULL, 1, NULL, '2020-03-06 16:51:26', '2020-03-06 16:59:59'),
(126, NULL, 2, NULL, '2020-03-06 16:53:53', NULL),
(127, NULL, 1, NULL, '2020-03-06 17:00:14', '2020-03-06 17:08:05'),
(128, NULL, 24, NULL, '2020-03-06 17:08:23', '2020-03-06 17:12:05'),
(129, NULL, 24, NULL, '2020-03-06 17:12:27', '2020-03-06 17:20:19'),
(130, NULL, 1, NULL, '2020-03-06 22:13:50', '2020-03-06 22:35:36'),
(131, NULL, 2, NULL, '2020-03-07 16:41:08', '2020-03-07 16:47:52'),
(132, NULL, 2, NULL, '2020-03-07 17:01:13', '2020-03-07 17:27:15'),
(133, NULL, 1, NULL, '2020-03-07 17:10:17', '2020-03-07 17:14:58'),
(134, NULL, 20, NULL, '2020-03-07 17:15:22', '2020-03-07 17:15:57'),
(135, NULL, 1, NULL, '2020-03-07 17:16:04', '2020-03-07 17:23:53'),
(136, NULL, 17, NULL, '2020-03-11 10:47:39', NULL),
(137, NULL, 1, NULL, '2020-03-11 11:20:06', '2020-03-11 11:25:30'),
(138, NULL, 17, NULL, '2020-03-11 11:32:32', NULL),
(139, NULL, 1, NULL, '2020-03-11 12:16:35', '2020-03-11 12:22:47'),
(140, NULL, 17, NULL, '2020-03-11 12:20:07', NULL),
(141, NULL, 17, NULL, '2020-03-11 13:05:29', NULL),
(142, NULL, 20, NULL, '2020-03-11 13:19:16', '2020-03-11 16:31:37'),
(143, NULL, 17, NULL, '2020-03-11 13:38:02', '2020-03-11 13:58:31'),
(144, NULL, 1, NULL, '2020-03-11 13:48:20', NULL),
(145, NULL, 26, NULL, '2020-03-11 13:59:03', NULL),
(146, NULL, 1, NULL, '2020-03-11 14:25:46', NULL),
(147, NULL, 1, NULL, '2020-03-11 15:04:20', NULL),
(148, NULL, 17, NULL, '2020-03-11 16:10:35', NULL),
(149, NULL, 1, NULL, '2020-03-11 16:24:17', '2020-03-11 16:36:48'),
(150, NULL, 20, NULL, '2020-03-11 16:31:51', '2020-03-11 16:44:35'),
(151, NULL, 2, NULL, '2020-03-11 16:35:46', '2020-03-11 16:36:20'),
(152, NULL, 1, NULL, '2020-03-11 16:38:52', '2020-03-11 16:40:50'),
(153, NULL, 17, NULL, '2020-03-11 17:49:00', NULL),
(154, NULL, 17, NULL, '2020-03-12 10:37:33', NULL),
(155, NULL, 17, NULL, '2020-03-12 11:23:41', NULL),
(156, NULL, 17, NULL, '2020-03-12 12:11:25', NULL),
(157, NULL, 22, NULL, '2020-03-12 12:59:06', NULL),
(158, NULL, 17, NULL, '2020-03-12 14:19:25', NULL),
(159, NULL, 22, NULL, '2020-03-12 14:32:55', '2020-03-12 15:49:05'),
(160, NULL, 2, NULL, '2020-03-12 15:27:11', '2020-03-12 15:31:20'),
(161, NULL, 1, NULL, '2020-03-12 15:34:54', '2020-03-12 15:38:30'),
(162, NULL, 2, NULL, '2020-03-12 15:36:39', NULL),
(163, NULL, 1, NULL, '2020-03-12 15:45:20', NULL),
(164, NULL, 17, NULL, '2020-03-12 15:49:27', '2020-03-12 15:55:26'),
(165, NULL, 22, NULL, '2020-03-12 15:56:11', NULL),
(166, NULL, 17, NULL, '2020-03-12 16:11:54', NULL),
(167, NULL, 22, NULL, '2020-03-12 16:27:47', NULL),
(168, NULL, 17, NULL, '2020-03-12 17:44:22', '2020-03-12 17:54:29'),
(169, NULL, 46, NULL, '2020-03-12 17:55:23', NULL),
(170, NULL, 17, NULL, '2020-03-13 10:58:51', NULL),
(171, NULL, 1, NULL, '2020-03-13 11:30:32', NULL),
(172, NULL, 24, NULL, '2020-03-13 12:53:32', '2020-03-13 12:53:55'),
(173, NULL, 24, NULL, '2020-03-13 12:54:06', NULL),
(174, NULL, 1, NULL, '2020-03-13 13:14:44', '2020-03-13 13:27:00'),
(175, NULL, 2, NULL, '2020-03-13 13:24:02', '2020-03-13 13:32:22'),
(176, NULL, 17, NULL, '2020-03-13 13:38:01', NULL),
(177, NULL, 24, NULL, '2020-03-13 14:10:21', NULL),
(178, NULL, 1, NULL, '2020-03-13 14:47:42', '2020-03-13 15:50:54'),
(179, NULL, 24, NULL, '2020-03-13 15:09:00', NULL),
(180, NULL, 24, NULL, '2020-03-13 15:58:21', '2020-03-13 16:30:41'),
(181, NULL, 17, NULL, '2020-03-16 10:44:10', NULL),
(182, NULL, 1, NULL, '2020-03-16 12:26:28', '2020-03-16 12:33:27'),
(183, NULL, 1, NULL, '2020-03-16 13:10:32', '2020-03-16 13:10:45'),
(184, NULL, 24, NULL, '2020-03-16 13:26:39', NULL),
(185, NULL, 1, NULL, '2020-03-16 15:50:40', '2020-03-16 16:28:13'),
(186, NULL, 2, NULL, '2020-03-16 16:00:48', '2020-03-16 16:31:56'),
(187, NULL, 17, NULL, '2020-03-16 16:32:48', '2020-03-16 16:43:56'),
(188, NULL, 24, NULL, '2020-03-16 16:44:08', '2020-03-16 17:08:05'),
(189, NULL, 17, NULL, '2020-03-16 17:08:17', '2020-03-16 17:09:29'),
(190, NULL, 24, NULL, '2020-03-16 17:09:43', '2020-03-16 17:25:51'),
(191, NULL, 1, NULL, '2020-03-17 10:02:35', '2020-03-17 10:10:14'),
(192, NULL, 1, NULL, '2020-03-17 10:10:41', '2020-03-17 10:37:28'),
(193, NULL, 17, NULL, '2020-03-17 10:35:28', '2020-03-17 10:44:59'),
(194, NULL, 17, NULL, '2020-03-17 10:45:08', NULL),
(195, NULL, 17, NULL, '2020-03-17 11:53:52', NULL),
(196, NULL, 2, NULL, '2020-03-17 12:27:53', '2020-03-17 12:28:55'),
(197, NULL, 24, NULL, '2020-03-17 12:33:17', '2020-03-17 12:41:02'),
(198, NULL, 24, NULL, '2020-03-17 12:41:38', '2020-03-17 12:46:23'),
(199, NULL, 1, NULL, '2020-03-17 13:10:52', '2020-03-17 13:20:48'),
(200, NULL, 17, NULL, '2020-03-17 15:53:44', NULL),
(201, NULL, 1, NULL, '2020-03-17 16:58:49', '2020-03-17 16:59:46'),
(202, NULL, 1, NULL, '2020-03-17 17:03:56', '2020-03-17 17:04:09'),
(203, NULL, 1, NULL, '2020-03-18 10:36:52', '2020-03-18 10:40:38'),
(204, NULL, 1, NULL, '2020-03-19 14:13:53', NULL),
(205, NULL, 1, NULL, '2020-03-20 11:45:58', '2020-03-20 12:04:05'),
(206, NULL, 1, NULL, '2020-03-20 15:49:38', '2020-03-20 16:15:58'),
(207, NULL, 1, NULL, '2020-03-20 16:28:01', '2020-03-20 16:30:08'),
(208, NULL, 1, NULL, '2020-03-23 15:42:14', '2020-03-23 15:42:24'),
(209, NULL, 1, NULL, '2020-03-23 15:47:51', '2020-03-23 15:52:33'),
(210, NULL, 1, NULL, '2020-03-23 16:00:06', '2020-03-23 16:00:40'),
(211, NULL, 1, NULL, '2020-04-01 11:09:08', '2020-04-01 11:14:54'),
(212, NULL, 1, NULL, '2020-04-02 13:09:52', NULL),
(213, NULL, 1, NULL, '2020-04-06 20:45:38', '2020-04-06 20:46:33'),
(214, NULL, 2, NULL, '2020-04-10 21:06:27', NULL),
(215, NULL, 2, NULL, '2020-04-11 13:57:47', '2020-04-11 14:12:47'),
(216, NULL, 1, NULL, '2020-04-24 16:21:04', NULL),
(217, NULL, 1, NULL, '2020-05-24 10:33:57', NULL),
(218, NULL, 1, NULL, '2020-05-24 11:56:18', NULL),
(219, NULL, 1, NULL, '2020-05-24 14:47:29', '2020-05-24 15:33:25'),
(220, NULL, 1, NULL, '2020-05-25 09:29:24', '2020-05-25 09:29:35'),
(221, NULL, 1, NULL, '2020-06-03 20:49:09', '2020-06-03 20:51:22'),
(222, NULL, 17, NULL, '2020-06-04 15:28:50', NULL),
(223, NULL, 17, NULL, '2020-06-04 16:05:36', NULL),
(224, NULL, 1, NULL, '2020-06-07 09:56:58', '2020-06-07 10:04:19'),
(225, NULL, 35, NULL, '2020-06-07 10:04:25', '2020-06-07 10:04:58'),
(226, NULL, 35, NULL, '2020-06-07 10:05:05', '2020-06-07 10:09:49'),
(227, NULL, 35, NULL, '2020-06-07 10:09:55', '2020-06-07 10:10:03'),
(228, NULL, 1, NULL, '2020-06-07 10:10:09', '2020-06-07 10:14:31'),
(229, NULL, 35, NULL, '2020-06-07 10:14:37', '2020-06-07 10:14:51'),
(230, NULL, 1, NULL, '2020-06-07 10:14:57', '2020-06-07 10:16:15'),
(231, NULL, 35, NULL, '2020-06-07 10:16:22', '2020-06-07 10:18:56'),
(232, NULL, 1, NULL, '2020-06-07 11:12:56', '2020-06-07 11:31:40'),
(233, NULL, 17, NULL, '2020-06-08 11:18:59', '2020-06-08 11:19:52'),
(234, NULL, 33, NULL, '2020-06-08 11:20:14', '2020-06-08 11:22:09'),
(235, NULL, 26, NULL, '2020-06-08 11:22:24', '2020-06-08 11:23:47'),
(236, NULL, 17, NULL, '2020-06-08 11:24:18', '2020-06-08 11:41:35'),
(237, NULL, 17, NULL, '2020-06-09 13:01:33', '2020-06-09 13:06:35'),
(238, NULL, 35, NULL, '2020-06-09 13:06:46', '2020-06-09 13:11:07'),
(239, NULL, 17, NULL, '2020-06-09 13:11:20', '2020-06-09 13:26:19'),
(240, NULL, 31, NULL, '2020-06-09 13:26:35', '2020-06-09 13:30:07'),
(241, NULL, 17, NULL, '2020-06-09 13:30:20', NULL),
(242, NULL, 17, NULL, '2020-06-09 15:38:56', '2020-06-09 16:10:49'),
(243, NULL, 1, NULL, '2020-06-10 14:29:57', NULL),
(244, NULL, 1, NULL, '2020-06-10 16:46:56', NULL),
(245, NULL, 1, NULL, '2020-06-10 16:48:08', '2020-06-10 16:51:38'),
(246, NULL, 1, NULL, '2020-06-12 12:05:15', '2020-06-12 12:13:28'),
(247, NULL, 1, NULL, '2020-06-12 12:13:49', '2020-06-12 12:15:26'),
(248, NULL, 1, NULL, '2020-06-12 12:14:14', '2020-06-12 12:22:14'),
(249, NULL, 1, NULL, '2020-06-12 17:07:44', '2020-06-12 17:12:51'),
(250, NULL, 1, NULL, '2020-06-12 21:42:25', '2020-06-12 21:48:19'),
(251, NULL, 12, NULL, '2020-06-12 21:48:26', '2020-06-12 21:48:35'),
(252, NULL, 1, NULL, '2020-06-12 21:48:43', '2020-06-12 21:50:45'),
(253, NULL, 1, NULL, '2020-06-12 21:51:05', '2020-06-12 21:52:32'),
(254, NULL, 30, NULL, '2020-06-12 21:52:56', '2020-06-12 21:57:46'),
(255, NULL, 1, NULL, '2020-06-12 21:57:54', '2020-06-12 21:59:08'),
(256, NULL, 43, NULL, '2020-06-12 21:59:17', '2020-06-12 22:21:10'),
(257, NULL, 43, NULL, '2020-06-13 14:41:41', '2020-06-13 14:42:03'),
(258, NULL, 17, NULL, '2020-06-13 14:47:42', '2020-06-13 14:51:16'),
(259, NULL, 43, NULL, '2020-06-13 14:51:42', '2020-06-13 14:56:19'),
(260, NULL, 17, NULL, '2020-06-13 14:56:28', '2020-06-13 14:57:28'),
(261, NULL, 1, NULL, '2020-06-13 18:03:15', NULL),
(262, NULL, 1, NULL, '2020-06-14 19:34:22', NULL),
(263, NULL, 1, NULL, '2020-06-14 22:17:36', '2020-06-14 22:18:35'),
(264, NULL, 30, NULL, '2020-06-14 22:18:50', '2020-06-14 22:20:30'),
(265, NULL, 1, NULL, '2020-06-15 07:15:33', '2020-06-15 07:16:16'),
(266, NULL, 17, NULL, '2020-06-15 12:39:00', '2020-06-15 12:42:17'),
(267, NULL, 30, NULL, '2020-06-15 12:42:37', NULL),
(268, NULL, 1, NULL, '2020-06-15 13:36:31', '2020-06-15 14:01:05'),
(269, NULL, 17, NULL, '2020-06-15 13:36:49', '2020-06-15 13:38:55'),
(270, NULL, 30, NULL, '2020-06-15 13:39:07', '2020-06-15 13:45:47'),
(271, NULL, 1, NULL, '2020-06-15 13:45:53', '2020-06-15 13:47:08'),
(272, NULL, 1, NULL, '2020-06-15 14:04:11', '2020-06-15 14:07:36'),
(273, NULL, 30, NULL, '2020-06-15 14:28:15', '2020-06-15 14:30:31'),
(274, NULL, 43, NULL, '2020-06-15 14:30:49', '2020-06-15 14:31:09'),
(275, NULL, 1, NULL, '2020-06-15 14:31:16', '2020-06-15 14:33:46'),
(276, NULL, 1, NULL, '2020-06-15 14:32:50', '2020-06-15 14:33:25'),
(277, NULL, 30, NULL, '2020-06-15 14:33:45', '2020-06-15 14:39:09'),
(278, NULL, 43, NULL, '2020-06-15 14:39:54', '2020-06-15 14:41:30'),
(279, NULL, 30, NULL, '2020-06-15 14:50:58', '2020-06-15 15:12:31'),
(280, NULL, 43, NULL, '2020-06-15 14:56:37', '2020-06-15 15:20:53'),
(281, NULL, 43, NULL, '2020-06-15 15:12:44', NULL),
(282, NULL, 30, NULL, '2020-06-15 15:21:14', '2020-06-15 15:24:30'),
(283, NULL, 30, NULL, '2020-06-15 16:47:40', '2020-06-15 16:48:50'),
(284, NULL, 1, NULL, '2020-06-15 16:49:26', '2020-06-15 16:50:13'),
(285, NULL, 43, NULL, '2020-06-15 16:49:35', '2020-06-15 16:51:41'),
(286, NULL, 30, NULL, '2020-06-15 16:50:34', '2020-06-15 16:51:28'),
(287, NULL, 30, NULL, '2020-06-15 16:52:06', '2020-06-15 16:53:04'),
(288, NULL, 43, NULL, '2020-06-15 16:53:26', NULL),
(289, NULL, 17, NULL, '2020-06-17 05:43:48', NULL),
(290, NULL, 1, NULL, '2020-06-18 08:26:21', '2020-06-18 08:30:27'),
(291, NULL, 1, NULL, '2020-06-18 08:43:19', '2020-06-18 08:44:54'),
(292, NULL, 43, NULL, '2020-06-18 08:45:06', '2020-06-18 08:46:10'),
(293, NULL, 30, NULL, '2020-06-18 08:46:33', NULL),
(294, NULL, 1, NULL, '2020-06-19 02:35:34', '2020-06-19 02:36:53'),
(295, NULL, 30, NULL, '2020-06-19 02:37:15', '2020-06-19 02:38:29'),
(296, NULL, 17, NULL, '2020-06-19 05:45:04', NULL),
(297, NULL, 1, NULL, '2020-06-26 11:00:13', NULL),
(298, NULL, 1, NULL, '2020-06-26 14:58:18', '2020-06-26 15:14:21'),
(299, NULL, 1, NULL, '2020-06-26 15:14:30', '2020-06-26 15:15:43'),
(300, NULL, 1, NULL, '2020-06-26 15:16:14', NULL),
(301, NULL, 1, NULL, '2020-06-26 21:41:55', NULL),
(302, NULL, 1, NULL, '2020-06-26 17:47:03', NULL),
(303, NULL, 1, NULL, '2020-06-26 18:08:50', NULL),
(304, NULL, 1, NULL, '2020-06-27 00:21:01', NULL),
(305, NULL, 1, NULL, '2020-06-27 22:43:10', '2020-06-27 22:55:28'),
(306, NULL, 1, NULL, '2020-06-28 10:40:00', '2020-06-28 11:25:43'),
(307, NULL, 1, NULL, '2020-06-28 15:11:22', NULL),
(308, NULL, 1, NULL, '2020-06-28 16:30:02', NULL),
(309, NULL, 1, NULL, '2020-06-28 20:14:44', NULL),
(310, NULL, 1, NULL, '2020-06-28 23:25:21', NULL),
(311, NULL, 1, NULL, '2020-06-29 00:06:32', NULL),
(312, NULL, 1, NULL, '2020-07-03 17:28:03', NULL),
(313, NULL, 1, NULL, '2020-07-03 22:58:37', NULL),
(314, NULL, 1, NULL, '2020-07-04 15:22:53', NULL),
(315, NULL, 1, NULL, '2020-07-04 22:39:41', NULL),
(316, NULL, 1, NULL, '2020-07-05 23:57:41', NULL),
(317, NULL, 1, NULL, '2020-07-13 20:44:07', NULL),
(318, NULL, 1, NULL, '2020-07-15 15:08:12', NULL),
(319, NULL, 1, NULL, '2020-07-15 20:34:08', NULL),
(320, NULL, 1, NULL, '2020-07-15 23:40:48', NULL),
(321, NULL, 1, NULL, '2020-07-16 01:23:28', NULL),
(322, NULL, 1, NULL, '2020-07-16 11:21:36', NULL),
(323, NULL, 1, NULL, '2020-07-16 13:29:58', NULL),
(324, NULL, 1, NULL, '2020-08-02 12:30:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_mas`
--

DROP TABLE IF EXISTS `user_mas`;
CREATE TABLE `user_mas` (
  `uid` int(5) NOT NULL,
  `comp_id` int(5) DEFAULT NULL,
  `user_name` varchar(35) DEFAULT NULL,
  `user_id` varchar(15) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `cell_no` varchar(10) DEFAULT NULL,
  `status` varchar(1) DEFAULT 'A',
  `user_type` varchar(1) DEFAULT 'G',
  `page_assign` text DEFAULT NULL,
  `blro_id` int(5) DEFAULT NULL,
  `ps_id` int(5) DEFAULT NULL,
  `mun_id` int(5) DEFAULT NULL,
  `token` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_mas`
--

INSERT INTO `user_mas` (`uid`, `comp_id`, `user_name`, `user_id`, `password`, `cell_no`, `status`, `user_type`, `page_assign`, `blro_id`, `ps_id`, `mun_id`, `token`) VALUES
(1, 1, 'ADMINISTRATOR', 'admin', '$2y$10$UIXNaLAq46stWW3.Y5rKYuIyMrEBhrj2Lmck/SW7xPTD3OvdIHnjq', NULL, 'A', 'S', '', NULL, NULL, NULL, 'fbbefed3ce70c6adf3a0ee26af122aa7'),
(2, 1, 'SURAJIT MONDAL', 'surajit', '$2y$10$DkaB4uWQWjiU4sjWCdtJCuesNDK3658k2a/FOyL29jtk2JaE/Yewa', '9051530165', 'A', 'S', '6,0', NULL, NULL, NULL, 'fe2d035bf023b2c11207db363cee2e4d'),
(3, 1, 'ATIUR', 'atiur', '$2y$10$m1oQaQIrL5zuRuIxANDcy.2zWE2aIh/Ydrp42HFEmM3SXKHDtPOdW', '8902375505', 'A', 'S', '2,4,15,16,17,18,21,23,24,50,52', NULL, NULL, NULL, '38ea4f0638e24541a3a1e3039a77c6e4'),
(10, 1, 'DATAN PS', 'datanps', '$2y$10$BOspD9YScOjWKkCBKLZfR.0MnFPxeqHFny0LLUE3JaR/dRHGZWpJi', '', 'A', 'P', '2,65,66,4,21,50,52,33,0', 0, 6, NULL, '7cbed0a17865594c6769461d1d13b8fb'),
(12, 1, 'DEBRABLRO', 'debrablro', '$2y$10$qEPRVSO3iRlMLUxHeh.5A.X/ULbuqs4Lmo372mlBSTjWiOgnzn1c6', '9732050262', 'D', 'B', '2,65,66,4,21,50,52,33,0', 10, 0, NULL, 'ffd24af4512ec1356dc8599ec77bda0c'),
(13, 1, 'PINGLA PS', 'pinglaps', '$2y$10$3m5DRMbGESPrHSXgARWdz.Hwx0DCkI6lUIm95wgdeSUQzO.QJsEoS', '', 'A', 'P', '2,65,66,4,21,50,52,33,0', 0, 4, NULL, '60f374f9abd2b7cd023ba8a90c017ebd'),
(17, 1, 'Jayanta Chowdhury', 'jayanta', '$2y$10$UIXNaLAq46stWW3.Y5rKYuIyMrEBhrj2Lmck/SW7xPTD3OvdIHnjq', '9474657180', 'A', 'S', NULL, NULL, NULL, NULL, '1220a50b0060badff7f8035373bba074'),
(20, 1, 'SAIKAT DAS', 'saikatdas', '$2y$10$5Xd12veagV/nWdqDfd9cHeGxDysGKrGxj9PE5B.qQAw6h.6ffiFRq', '9593063254', 'A', 'G', '2,15,16,51,17,18,53,58,61,62,3,19,48,49,20,4,21,23,24,50,52,54,55,57,0', 0, 0, NULL, '4916bd12add68d4f0f6dea7582b44029'),
(21, 1, 'NABIN MANDAL', 'nabinmandal', '$2y$10$MhCbKUgNGnH4ZTfTsJyuOenRC1TYmW987mEVY7ZOMY/6cWAsbydRa', '9474447224', 'A', 'G', '2,15,16,51,17,18,53,58,61,62,3,19,48,49,20,4,21,23,24,50,52,54,55,57,0', 0, 0, NULL, '97f304734a8025de6d229541f3f5a305'),
(22, 1, 'RAJU PAUL', 'rajupaul', '$2y$10$AFIi2t.ge2W1yoHTzD236.uJS1UTcRhCN0qD/hJPEL.JVEWBPqNsy', '8926811966', 'A', 'G', '2,15,16,51,17,18,53,58,61,62,3,19,48,49,20,4,21,23,24,50,52,54,55,57,0', 0, 0, NULL, '5ef650dd5f7a52225280485bc6f06206'),
(23, 1, 'TARUN MANDAL', 'tarunmandal', '$2y$10$1zm5dhnsay8I0YQhyV0rSeOqhLHGkeehIIXPj27Ib9Bv.FHAQ/2yK', '9064225957', 'A', 'G', '2,15,16,51,17,18,53,58,61,62,3,19,48,49,20,4,21,23,24,50,52,54,55,57,0', 0, 0, NULL, 'e396289655e411f93423d93a42c09dc6'),
(24, 1, 'AMITAVA DAS', 'amitavadas', '$2y$10$CW6gcIrgQu6VdiyXat8XmeRJyrlK6vRNasKtUuXYEQA1QldWQwmu6', '9732586863', 'A', 'G', '2,15,16,51,17,18,53,58,61,62,3,19,48,49,20,4,21,23,24,50,52,54,55,57,0', 0, 0, NULL, '435782e2ecf312bc382e5d5bb4596c83'),
(26, 1, 'BLLRO KGP1', 'bllrokgp1', '$2y$10$ZH3F9aKSVicoQ5DyQg1xmeKrE.zJO2WKdqnBAZD3.VW3H9qQz4hhK', '', 'A', 'B', '2,65,66,4,21,50,52,33,0', 1, 0, NULL, 'db05054ae6127bb3ea4f2aa52d8e149b'),
(27, 1, 'BLLRO KGP2', 'bllrokgp2', '$2y$10$XT.OZ9wjBHWARQUC6olS8evABjDAsZRGaKw.RPjYwbQI2W7vVzGpO', '', 'A', 'B', '2,65,66,4,21,50,52,33,0', 2, 0, NULL, NULL),
(28, 1, 'BLLRO PINGLA', 'bllropingla', '$2y$10$tfxMkqxmnohdSUNBRcMWveNVZrfla4potnc7hCnp4uOZOQpBgiEHq', '', 'A', 'B', '2,65,66,4,21,50,52,33,0', 9, 0, NULL, NULL),
(29, 1, 'BLLRO SABANG', 'bllrosabang', '$2y$10$DjReBUN7Xds7CHbVQB8ow.ENE7lWvjeRNjaVHmY.ug7PyEuN.IuMi', '', 'A', 'B', '2,65,66,4,21,50,52,33,0', 3, 0, NULL, NULL),
(30, 1, 'BLLRO DEBRA', 'bllrodebra', '$2y$10$dK0dE1u38jZI3qjZ4VFeuuv.w8Rs9qXxvddcXrvww2X/lVWhMJ6tK', '', 'A', 'B', '2,65,66,4,21,50,52,33,0', 10, 0, NULL, '4d3c3dd102dbe41f5e704e0a1af3f345'),
(31, 1, 'BLLRO DANTAN1', 'bllrodantan1', '$2y$10$BQAgLPCdpgf35fWMBMrNmu8oG64br5OegCQyvgS/NvSt/S/uT0nWK', '', 'A', 'B', '2,65,66,4,21,50,52,33,0', 6, 0, NULL, '7e85a8c988c63317a5bf5e0ad7487cc3'),
(32, 1, 'BLLRO DANTAN2', 'bllrodantan2', '$2y$10$hhhT98IyHYwCcPbaSJsqQ.aFCwjYoUoGtUrKyMd6lNYkXJS0xjpuW', '', 'A', 'B', '2,65,66,4,21,50,52,33,0', 7, 0, NULL, NULL),
(33, 1, 'BLLRO KESHIARY', 'bllrokeshiary', '$2y$10$ucm6FrWF893hEwXogNpqpePYmBdpAdBkYzLTcK4QVkNrc1YZVIgdm', '', 'A', 'B', '2,65,66,4,21,50,52,33,0', 8, 0, NULL, 'a6a9310efccdc905f958f3236ce47f87'),
(34, 1, 'BLLRO MOHANPUR', 'bllromohanpur', '$2y$10$C4xNPXEVuKf6nsPjKYIcN.2/ccFI7Pjl0m6Ckns5T2P1OssrNzIeO', '', 'A', 'B', '2,65,66,4,21,50,52,33,0', 4, 0, NULL, '9be1c2ae70c08ccd9f53cde31ca225ab'),
(35, 1, 'BLLRO NARAYANGARH', 'bllronarayangar', '$2y$10$lApHblNfShJB5VlbmMvtzeG7a4dfYUMxk7vSU4ipY6y6yVFFWTWK6', '', 'A', 'B', '2,65,66,4,21,50,52,33,0', 5, 0, NULL, '21931158015f532bae7891da8add92d9'),
(36, 1, 'BLLRO NARAYANGARH', 'bllronarayangar', '$2y$10$HYrZ95idTQRp7bh8JXrnyudbl2.weNnL1oxgwN5FugurFru7fC1Eu', '', 'D', 'B', '2,65,66,4,21,50,52,33,0', 5, 0, NULL, NULL),
(37, 1, 'IC KGPTOWN', 'ickgptown', '$2y$10$lFJvQbKvuVOXFKbrGq2BH.wgy4frhkuu64jFpq3wSkPNTWGdDjfPm', '', 'A', 'P', '2,65,66,4,21,50,52,33,0', 0, 1, NULL, NULL),
(38, 1, 'IC KESHIARY', 'ickeshiary', '$2y$10$BzyIB53WhEoXnUAOlUoEuuXQxgCFnWKc9U963tV56LugVzr7unlnG', '', 'A', 'P', '2,65,66,4,21,50,52,33,0', 0, 5, NULL, NULL),
(39, 1, 'IC MOHANPUR', 'icmohanpur', '$2y$10$OlQVsPS3BZebVLHv3Jy.mukH8DnZT5.PRwHAje1ekfAE514TxrM0y', '', 'A', 'P', '2,65,66,4,21,50,52,33,0', 0, 9, NULL, NULL),
(40, 1, 'IC DANTAN', 'icdantan', '$2y$10$65m8a8OAWwM3WRQbJXX61.QGfyLmnBy79VvD.32HwgXGC0VPYlq02', '', 'A', 'P', '2,65,66,4,21,50,52,33,0', 0, 6, NULL, NULL),
(41, 1, 'OC KGPLOCAL', 'ockgplocal', '$2y$10$VZ7QupYlHQWA7rUCZp5N5O46G6ikXV2lXMRehKHOKK86uVszo51lO', '', 'A', 'P', '2,65,66,4,21,50,52,33,0', 0, 2, NULL, NULL),
(42, 1, 'OC BELDA', 'ocbelda', '$2y$10$4vHnzYu93/ltyLwfZhM0Iuhl8ymr7zIPJgyolP6DNXCMmVb/bfZt.', '', 'A', 'P', '2,65,66,4,21,50,52,33,0', 0, 7, NULL, NULL),
(43, 1, 'OC DEBRA', 'ocdebra', '$2y$10$/s1tOAs2AADsBp4DKQl9ZOdwf/7pv/RtOSaWEDT.3ahrPA6kA7fju', '', 'A', 'P', '2,65,66,4,21,50,52,33,0', 0, 3, NULL, '1e5d96016f2ea49e995bf249d4c9c272'),
(44, 1, 'OC PINGLA', 'ocpingla', '$2y$10$h0VKSUl5DNarU0xP5kWLJOlD0MqnMukJhahCbXUxZvIjcrWbli7ni', '', 'A', 'P', '2,65,66,4,21,50,52,33,0', 0, 4, NULL, NULL),
(45, 1, 'OC SABANG', 'ocsabang', '$2y$10$KuXvuV.hR/edrmSl0lmufuTBMefD4emN2BuFUadpJQZgJeFPW4av.', '', 'A', 'P', '2,65,66,4,21,50,52,33,0', 0, 10, NULL, NULL),
(46, 1, 'OC NARAYANGARH', 'ocnarayangarh', '$2y$10$40AqZh3ObEljL2asxhMkte.W2sMTMfoSvh..vg3k73P2z4YbJYSsO', '', 'A', 'P', '2,65,66,4,21,50,52,33,0', 0, 8, NULL, 'a0013f7e6968734cf171e61a6d572686');

-- --------------------------------------------------------

--
-- Table structure for table `user_type_mas`
--

DROP TABLE IF EXISTS `user_type_mas`;
CREATE TABLE `user_type_mas` (
  `user_type_id` int(5) NOT NULL,
  `user_type` varchar(1) DEFAULT 'G',
  `user_type_desc` varchar(15) DEFAULT NULL,
  `assigned_page` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type_mas`
--

INSERT INTO `user_type_mas` (`user_type_id`, `user_type`, `user_type_desc`, `assigned_page`) VALUES
(1, 'G', 'General', '2,3,4,15,16,17,18,19,20,21,23,24,50,52,53,65,66'),
(2, 'S', 'Super Admin', NULL),
(3, 'P', 'Police Station', '4,21,50,65,66'),
(4, 'B', 'Bl &amp; LRO', '4,21,50,65,66');

-- --------------------------------------------------------

--
-- Table structure for table `year_mas`
--

DROP TABLE IF EXISTS `year_mas`;
CREATE TABLE `year_mas` (
  `year_id` int(5) NOT NULL,
  `comp_id` int(5) DEFAULT NULL,
  `year_desc` decimal(4,0) DEFAULT NULL,
  `year_srl` int(5) DEFAULT NULL,
  `aff_srl` int(5) DEFAULT NULL,
  `srl_107` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `year_mas`
--

INSERT INTO `year_mas` (`year_id`, `comp_id`, `year_desc`, `year_srl`, `aff_srl`, `srl_107`) VALUES
(1, 1, '2020', 245, 979, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu_mas`
--
ALTER TABLE `menu_mas`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `month_mas`
--
ALTER TABLE `month_mas`
  ADD KEY `mon_cd` (`mon_cd`);

--
-- Indexes for table `twitter`
--
ALTER TABLE `twitter`
  ADD PRIMARY KEY (`twitter_id`),
  ADD KEY `date` (`date`),
  ADD KEY `user_name` (`user_name`),
  ADD KEY `location` (`location`);

--
-- Indexes for table `twitter_keyword`
--
ALTER TABLE `twitter_keyword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twitter_location`
--
ALTER TABLE `twitter_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twitter_user_search`
--
ALTER TABLE `twitter_user_search`
  ADD PRIMARY KEY (`twitter_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`ulog_id`);

--
-- Indexes for table `user_mas`
--
ALTER TABLE `user_mas`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `cell_no` (`cell_no`);

--
-- Indexes for table `user_type_mas`
--
ALTER TABLE `user_type_mas`
  ADD PRIMARY KEY (`user_type_id`);

--
-- Indexes for table `year_mas`
--
ALTER TABLE `year_mas`
  ADD PRIMARY KEY (`year_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu_mas`
--
ALTER TABLE `menu_mas`
  MODIFY `menu_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `twitter`
--
ALTER TABLE `twitter`
  MODIFY `twitter_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `twitter_keyword`
--
ALTER TABLE `twitter_keyword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `twitter_location`
--
ALTER TABLE `twitter_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `twitter_user_search`
--
ALTER TABLE `twitter_user_search`
  MODIFY `twitter_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `ulog_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `user_mas`
--
ALTER TABLE `user_mas`
  MODIFY `uid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `user_type_mas`
--
ALTER TABLE `user_type_mas`
  MODIFY `user_type_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `year_mas`
--
ALTER TABLE `year_mas`
  MODIFY `year_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
