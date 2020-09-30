-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2020 at 05:04 PM
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
-- Table structure for table `twitter_manual`
--

CREATE TABLE `twitter_manual` (
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
-- Dumping data for table `twitter_manual`
--

INSERT INTO `twitter_manual` (`twitter_id`, `tweer_id`, `search_query`, `date`, `user_name`, `tweet_user_id`, `text`, `retweet_cnt`, `hash_tag`, `follower_cnt`, `friends_cnt`, `location`, `platform`, `co_ordinates`, `profile_picture_url`) VALUES
(1, 1296461376198782978, 'copacabana', '2020-08-20 14:57:33', 'kelusyyy', 874906841649696768, 'RT @ShariefRosier: Alice felis, 25, trans women, was beaten &amp; raped inside her apartment in Copacabana, South Zone of Rio. A man invaded th…', 35, 'None', 63, 115, 'Pietermaritzbur', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1288570706645712897/e9UbtP1M_normal.jpg'),
(2, 1296448777826578433, 'copacabana', '2020-08-20 14:07:30', '_Gilkes', 895222164345040897, 'RT @BIMTridents: Throwing it back to media day before todays game! How🔥 did the men look in these suits? \n.\nJoin  us at the Barbados Triden…', 2, 'None', 326, 313, 'Barbados', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1236605987760623616/5bIhd019_normal.jpg'),
(3, 1296448039289323532, 'copacabana', '2020-08-20 14:04:34', 'shuhnay_', 200593226, 'RT @BIMTridents: Throwing it back to media day before todays game! How🔥 did the men look in these suits? \n.\nJoin  us at the Barbados Triden…', 2, 'None', 1134, 663, '', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1295497583213895682/X9mHZfuJ_normal.jpg'),
(4, 1296447944829423617, 'copacabana', '2020-08-20 14:04:11', 'BIMTridents', 1490801634, 'Throwing it back to media day before todays game! How🔥 did the men look in these suits? \n.\nJoin  us at the Barbados Tridents Fan Zone @copacabana for the teams 2nd match of the season —&gt; 10 am! \n.\nLETS GO TRIDENTS!! 🙌🏾🇧🇧\n.\n#BarbadosTridents #CPL2020 #letsgotridents https://t.co/JFYvPXuJsq', 2, 'BarbadosTridents', 41249, 140, 'Barbados, West ', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1126406779892576256/-GEpjBww_normal.png'),
(5, 1296447655892135940, 'copacabana', '2020-08-20 14:03:02', 'cranemtn', 211316225, 'RT @ilpaulus: The Rolling Stones - Jumping Jack Flash - Live On Copacabana Beach https://t.co/zCLSNHkDGx', 1, 'None', 1656, 4859, '', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1244508797432934400/OPgn7sav_normal.jpg'),
(6, 1296446950963924995, 'copacabana', '2020-08-20 14:00:14', 'samilm', 32795835, 'Copacabana or is it Cocobamba ...I just named it ... Tequila with Tender Coconut, tonight ...Arriba https://t.co/lfVzbe0ibu', 0, 'None', 258, 108, 'New Delhi', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/960409356146749440/REcpnSLG_normal.jpg'),
(7, 1296445057441112066, 'copacabana', '2020-08-20 13:52:43', 'ilpaulus', 212897447, 'The Rolling Stones - Jumping Jack Flash - Live On Copacabana Beach https://t.co/zCLSNHkDGx', 1, 'None', 1652, 1094, 'Milano, Italia', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1226517550919536640/c2-EKGXS_normal.jpg'),
(8, 1296437844811145216, 'copacabana', '2020-08-20 13:24:03', 'HodlingSince13', 1255774191057584128, '@FKrauss @bitvictor1 @RelevantPeter Lol, no. I was in a hotel-apartment in Rio, in front of Copacabana beach. I\'ve been traveling on my own in several places and Brazil is the only place where I felt in danger, even during daytime.\nI was robbed with knives in at noon in city centre. Nobody cared, business as usual.', 0, 'None', 33, 108, 'Europe', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1292488397097963522/ulGK175t_normal.jpg'),
(9, 1296431835384295426, 'copacabana', '2020-08-20 13:00:10', 'BigDataF1', 784684019984240640, 'Let\'s go to the Copacabana and dance till the morning ! #BigData', 0, 'BigData', 83, 0, 'Rotterdam, The ', 'ThingTweet', 'None', 'https://pbs.twimg.com/profile_images/784684662543310848/QuXmXl_9_normal.jpg'),
(10, 1296426436044165121, 'copacabana', '2020-08-20 12:38:43', 'Carl0sfelipebtc', 920658605891817472, '@RelevantPeter Copacabana , rio de janeiro, Brazil , best revellion in the world. https://t.co/jz0nPAKGGl', 0, 'None', 291, 1129, '', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1292097850994765826/dgtT02A2_normal.jpg'),
(11, 1296417772541546501, 'copacabana', '2020-08-20 12:04:17', 'capitoljones', 2599893500, '@Super70sSports A young Irish union delegate and his date go through the service entrance at the Copacabana.', 0, 'None', 132, 422, 'Austin, Texas', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1068886454045032449/iQExRnmX_normal.jpg'),
(12, 1296393870725599232, 'copacabana', '2020-08-20 10:29:19', 'Lugalenki', 565728697, 'RT @cinexistenz: My Home is Copacabana (Sucksdorff, 1965) https://t.co/1PZaZjevPs', 103, 'None', 3810, 3051, 'Barcelona, Espa', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/2173826753/Foto_del_d_a_28-04-12_a_la_s__23.53_2_normal.jpg'),
(13, 1296390684203798528, 'copacabana', '2020-08-20 10:16:39', 'zorroislam', 283501694, '@Jay_dawg_99 @Arsenal Don’t worry you’ll still signing the copacabana Chris smalling', 0, 'None', 58, 510, '', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/721672801380384768/jsIMn6Tu_normal.jpg'),
(14, 1296390151476633601, 'copacabana', '2020-08-20 10:14:32', 'IndigenousX', 172652106, '@AnnKreger Yep! I grew up in Copacabana', 0, 'None', 61254, 7001, 'Gadigal land, S', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1296376291092881409/4tINIU3__normal.jpg'),
(15, 1296373669891985408, 'copacabana', '2020-08-20 09:09:03', '851_NowPlaying', 752747898878644224, '18:06 『Rhythmic+ WORLD』 ♪ COPACABANA (AT THE COPA)／BARRY MANILOW https://t.co/K7vVMZUWrH #FM大阪', 0, 'FM大阪', 894, 43, '大阪市浪速区湊町', 'OKMusic', 'None', 'https://pbs.twimg.com/profile_images/1244460484008374279/sCmWopdc_normal.jpg'),
(16, 1296360087875919873, 'copacabana', '2020-08-20 08:15:04', 'letsTravel4K', 1296349154944454657, 'Stunning view of Christ the Redeemer statue on Mt Corcovado , facing the huge Beautiful seaside city of Rio de Janeiro, fame for it\'s Copacabana &amp; Ipanema Beaches.\n#RiodeJaneiro #Copacabana #Ipanema #Brazil https://t.co/fhOFfvUSKB', 0, 'RiodeJaneiro', 0, 0, '', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1296350796569817089/t5zTMsiJ_normal.jpg'),
(17, 1296355808222089216, 'copacabana', '2020-08-20 07:58:04', 'CarolineSalfati', 1900975693, 'RT @TeamFMTracks: Playing Now Copacabana (At the Copa) by @barrymanilow https://t.co/ebewsz9k65', 1, 'None', 1709, 202, '', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1015893577233260545/6HGxqnLr_normal.jpg'),
(18, 1296344985718136832, 'copacabana', '2020-08-20 07:15:04', 'PhotoHistoryTV', 956186711826067457, 'Whether your curiosity is piqued by the International Olympic Committee’s selection for the 2016 Games, or you’re heeding the call of the famous twin beaches Copacabana and Ipanema, Rio offers more... \n\nAir ticket from Abu Dhabi to Rio de Janeiro\nhttps://t.co/D9psDksLDa', 0, 'None', 44, 3, '', 'VideoFootage', 'None', 'https://pbs.twimg.com/profile_images/956190939416092672/feoCUe3X_normal.jpg'),
(19, 1296344984082198528, 'copacabana', '2020-08-20 07:15:03', 'PhotoHistoryTV', 956186711826067457, 'Whether your curiosity is piqued by the International Olympic Committee’s selection for the 2016 Games, or you’re heeding the call of the famous twin beaches Copacabana and Ipanema, Rio offers more... \n\nAir ticket from Abu Dhabi to Rio de Janeiro\nhttps://t.co/D9psDkbaeA', 0, 'None', 44, 3, '', 'VideoFootage', 'None', 'https://pbs.twimg.com/profile_images/956190939416092672/feoCUe3X_normal.jpg'),
(20, 1296341809640222720, 'copacabana', '2020-08-20 07:02:26', 'salsamexico', 42954266, 'The Bad Street Boys - Copacabana en https://t.co/GvbxbwbahT #salsamexico #salsaparatodos', 0, 'salsamexico', 31328, 24045, 'Mexico', 'SAM Broadcaster Song Info', 'None', 'https://pbs.twimg.com/profile_images/798640294799413249/_lfb_AvH_normal.jpg'),
(21, 1296334421520506881, 'copacabana', '2020-08-20 06:33:05', '_marceloarj', 808810140317192193, 'What’s the most beautiful beach you’ve been to? — \nI think Copacabana is beautiful https://t.co/xbOCxC7yUn', 0, 'None', 10137, 7032, 'inferno', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1295475171550212096/HsyCnetz_normal.jpg'),
(22, 1296323650191163393, 'copacabana', '2020-08-20 05:50:17', 'kat_jaq', 1147050107788902401, 'My brother let me watch (and in a sense make him watch) the first act of copacabana at his house! He only made fun of me for staring with heart eyes at wataru (instead of making fun of the show) my brothers the best...', 0, 'None', 3, 11, 'Salt Lake City,', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1289817453418012673/_Bc8jhqr_normal.jpg'),
(23, 1296317583633907712, 'copacabana', '2020-08-20 05:26:11', 'darlingsunflwer', 82831017, 'RT @YourCelebMags: We are celebrating 1️⃣2️⃣ Years of delivering your magazines from Copacabana to Manhattan! 🌎\n\nOur subscribers have been…', 11, 'None', 1882, 849, 'Sleeping under ', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1295075836501143553/2neRBoe1_normal.jpg'),
(24, 1296306855275307009, 'copacabana', '2020-08-20 04:43:33', '_piecefire', 1089071629618032643, 'i wanna hear “Copacabana”Cover By Miley Cyrus so baaaaaaad', 0, 'None', 75, 115, 'underwater', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1295877766760497152/HzwTt1yA_normal.jpg'),
(25, 1296291534086823941, 'copacabana', '2020-08-20 03:42:40', 'lalaureane', 737386110997962753, 'RT @cinexistenz: My Home is Copacabana (Sucksdorff, 1965) https://t.co/1PZaZjevPs', 103, 'None', 205, 178, 'Rio de Janeiro,', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1291930955335311362/6w5Vhl3U_normal.jpg'),
(26, 1296289688500805632, 'copacabana', '2020-08-20 03:35:20', 'LePhillip898', 3035076372, 'Someone take me to the Copacabana', 0, 'None', 66, 287, 'He/Him', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/754484966109515776/MISnbydI_normal.jpg'),
(27, 1296285910439350272, 'copacabana', '2020-08-20 03:20:19', 'viccerroy', 908126245480685568, 'if I have a girl do I name her Lola just for the sake of being able to sing the copacabana song everyday???', 0, 'None', 87, 115, 'Santa Ana, CA', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1257058870427414528/B_nlZ9lP_normal.jpg'),
(28, 1296274129365106688, 'copacabana', '2020-08-20 02:33:30', 'lomojunkie71', 49595724, '@JoefromGhent Air supply x4 is like hearing the Copacabana for 24 hrs straight. Sorry for your pain.', 0, 'None', 356, 672, 'Shelton, CT', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1287160579807948801/KRHzrOzF_normal.jpg'),
(29, 1296271507111333888, 'copacabana', '2020-08-20 02:23:05', 'oniyummy', 1207171774854520832, '■What\'s in the box?■\nThe multiple : copacabana\nQuad eyeshadow : mojave\nClimax mascara : explicit black \nBronzing power : laguna\nBlush : orgasm\nVelvet lip glide : roseland', 0, 'None', 70, 124, 'Japan', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1207172576667033600/OXUxkYpe_normal.jpg'),
(30, 1296265622821703681, 'copacabana', '2020-08-20 01:59:42', 'humancolfer', 1061376413004128257, '@fxcklaine Rose\'s turn, I have nothing, piano Man, IT\'s time, got to get you into my life, wake me UP before you go-go, Copacabana, closer, perfect, american boy, jessie\'s girl, y debe haber alguna más pero no me acuerdo', 0, 'None', 828, 1151, 'caro', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1294101942780788737/NekntOaF_normal.jpg'),
(31, 1296251984685617152, 'copacabana', '2020-08-20 01:05:31', 'hoe4riconasty', 886640280882995200, 'the way sam evans made me want to shake my ass to copacabana https://t.co/LmDyxV2wc6', 0, 'None', 60, 333, 'i wish i was in', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1274142072329523200/TjnWHNI0_normal.jpg'),
(32, 1296250731444547588, 'copacabana', '2020-08-20 01:00:32', 'faberrypezgleek', 1295591269926875136, 'RT @copacabanachord: drop your top ten glee songs mine are(in no particular order) \n-they long to be close to you\n-some nights\n-billionare…', 1, 'None', 4, 13, '', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1295592346860519425/gGPQf_kt_normal.jpg'),
(33, 1296250612871553028, 'copacabana', '2020-08-20 01:00:03', 'BigDataF1', 784684019984240640, 'Let\'s go to the Copacabana and dance till the morning ! #BigData', 0, 'BigData', 83, 0, 'Rotterdam, The ', 'ThingTweet', 'None', 'https://pbs.twimg.com/profile_images/784684662543310848/QuXmXl_9_normal.jpg'),
(34, 1296236544701927425, 'copacabana', '2020-08-20 00:04:09', 'niecyt993', 772842356135620608, '@FearlessRiOT Mandy, Copacabana, and Ready to Take a Chance Again are the only songs I know from him (and two of those songs I know because of Family Guy lmao)', 0, 'None', 68, 367, '', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1132488972268134405/X29_arBS_normal.jpg'),
(35, 1296234664265486352, 'copacabana', '2020-08-19 23:56:41', 'Kaltagstar96', 956272279, 'Hot Take: Copacabana is Barry Manilow\'s best ever song.', 0, 'None', 543, 3588, 'Newcastle, Engl', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1247831893057437696/_AUpwxgX_normal.jpg'),
(36, 1296227848647319553, 'copacabana', '2020-08-19 23:29:36', 'jayjay_vdm', 989556776856096769, 'RT @ShariefRosier: Alice felis, 25, trans women, was beaten &amp; raped inside her apartment in Copacabana, South Zone of Rio. A man invaded th…', 35, 'None', 405, 379, 'Cape Town, Sout', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1162970929212862464/FzuDA2Bd_normal.jpg'),
(37, 1296220542824067076, 'copacabana', '2020-08-19 23:00:34', 'TeamFMTracks', 741224543444979712, 'Playing Now Copacabana (At the Copa) by @barrymanilow https://t.co/ebewsz9k65', 1, 'None', 16, 0, '', 'Team-FM Tracks', 'None', 'https://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png'),
(38, 1296215994524938241, 'copacabana', '2020-08-19 22:42:30', 'dougeldridge', 18991649, 'RT @DLEagency: Rio 2016: Pt IV\n\nView from our last full day in Brazil: Dagmara &amp; the US Women’s Saber Team, standing on the podium, Bronze…', 1, 'None', 1305, 1186, 'Washington DC ', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1037269851524476928/8QtHlMKm_normal.jpg'),
(39, 1296214865091141632, 'copacabana', '2020-08-19 22:38:01', 'DLEagency', 192675088, 'Rio 2016: Pt IV\n\nView from our last full day in Brazil: Dagmara &amp; the US Women’s Saber Team, standing on the podium, Bronze in hand.\n\nThe 18hrs after this photo:\n\n@NBCSports nightly news.\n@Nike House.\n@TeamUSA House.\n@enews.\n@TODAYshow Copacabana set.\nAirport.\nHome.\n\n#TeamDLE https://t.co/3iF0c2Zuxv', 1, 'TeamDLE', 682, 537, 'Washington, DC ', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1875956851/DLE_Agency_Logo__War_Elephant__normal.jpg'),
(40, 1296212814151979011, 'copacabana', '2020-08-19 22:29:52', 'queenkbro', 1219179671042109440, 'RT @ShariefRosier: Alice felis, 25, trans women, was beaten &amp; raped inside her apartment in Copacabana, South Zone of Rio. A man invaded th…', 35, 'None', 331, 1626, 'Cape Town, Sout', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1294814861076172800/UfG50J82_normal.jpg'),
(41, 1296210540683960320, 'copacabana', '2020-08-19 22:20:49', 'thebfstore', 737771415361835008, 'RT @ShariefRosier: Alice felis, 25, trans women, was beaten &amp; raped inside her apartment in Copacabana, South Zone of Rio. A man invaded th…', 35, 'None', 1011, 899, 'Canada, USA & w', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1293685269934161920/IQoP2GnL_normal.jpg'),
(42, 1296209073243860993, 'copacabana', '2020-08-19 22:15:00', 'RizwanH40818952', 946744026979586050, '@BIMTridents @copacabana Jason holder', 0, 'None', 306, 1178, '', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1162236331914747904/ozBHrSj0_normal.jpg'),
(43, 1296208899826212864, 'copacabana', '2020-08-19 22:14:18', 'RizwanH40818952', 946744026979586050, 'RT @BIMTridents: Guess the player and win a FREE pass to tomorrows match at the Official Barbados Tridents Fan Zone @copacabana ! 🙌 Rules b…', 1, 'None', 306, 1178, '', 'Twitter for Android', 'None', 'https://pbs.twimg.com/profile_images/1162236331914747904/ozBHrSj0_normal.jpg'),
(44, 1296208815080210439, 'copacabana', '2020-08-19 22:13:58', 'BIMTridents', 1490801634, 'Guess the player and win a FREE pass to tomorrows match at the Official Barbados Tridents Fan Zone @copacabana ! 🙌 Rules below:\n.\nContestants must be following @barbadostridents on Twitter.\nEntries must be in before 8 am on Aug 20, 2020.\nContestants must be in Barbados.\n. https://t.co/7TROzly0Yg', 1, 'None', 41249, 140, 'Barbados, West ', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1126406779892576256/-GEpjBww_normal.png'),
(45, 1296204514458927104, 'copacabana', '2020-08-19 21:56:53', 's_bajajsumit', 944631524590198785, '@BIMTridents @copacabana Jason Holder', 0, 'None', 31, 178, 'New York', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1234842987567423489/9Sq9Vjn2_normal.jpg'),
(46, 1296202219763781638, 'copacabana', '2020-08-19 21:47:46', 'PerfectPourMD', 176917790, 'FRESH CANS from @CWBrewCo include Tiki Vibez Gose (w/ pink guava, blood orange and lactose) and Copacabana Sour Double IPA (w/ strawberry, banana, raspberry, vanilla beans, and milk sugar). Pick them up now! They won’t last long on the shelf. https://t.co/CkbX9MWqO3', 0, 'None', 1481, 349, 'Elkridge, Maryl', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/378800000680199192/160ed608772493124db06ce943a8a51b_normal.jpeg'),
(47, 1296201298824564736, 'copacabana', '2020-08-19 21:44:06', 'fabraynation', 1129184524024328198, '@copacabanachord some nights or copacabana duh', 0, 'None', 1153, 295, 'she / her | 14', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1294109808946282497/m3MOysGg_normal.jpg'),
(48, 1296194605751271425, 'copacabana', '2020-08-19 21:17:30', 'pezberries', 719288450722238466, '@copacabanachord i mean copacabana obviously!', 0, 'None', 212, 188, 'she/her ✿• 20 •', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1286010353277534208/1Z2PGi91_normal.jpg'),
(49, 1296186207408459776, 'copacabana', '2020-08-19 20:44:08', 'conortheconor', 19581352, 'I guess I avoided actively listening to the song \"Copacabana\" my entire life, but holy shit, there\'s a MURDER in the middle of it?!', 0, 'None', 1236, 1360, 'Los Angeles', 'Twitter Web App', 'None', 'https://pbs.twimg.com/profile_images/1148854111271473152/bzlMWtbJ_normal.png'),
(50, 1296185069602852864, 'copacabana', '2020-08-19 20:39:37', 'makhnytskyy', 3344366373, 'RT @PureTraveller: For this week’s #Top4Theme of #Top4Nights:\n\n↖ Beach football, Copacabana, RdJ 🇧🇷 (hotel security guard was advised for p…', 2, 'Top4Theme', 2667, 3996, 'Planet Earth', 'Twitter for iPhone', 'None', 'https://pbs.twimg.com/profile_images/1213552597946261504/akZY6vb5_normal.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `twitter_manual`
--
ALTER TABLE `twitter_manual`
  ADD PRIMARY KEY (`twitter_id`),
  ADD KEY `date` (`date`),
  ADD KEY `user_name` (`user_name`),
  ADD KEY `location` (`location`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `twitter_manual`
--
ALTER TABLE `twitter_manual`
  MODIFY `twitter_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
