CREATE DATABASE  IF NOT EXISTS `fafclans` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `fafclans`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: fafclans
-- ------------------------------------------------------
-- Server version	5.6.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clan_invites`
--

DROP TABLE IF EXISTS `clan_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clan_invites` (
  `clan_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `user_request` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`clan_id`,`player_id`,`user_request`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clan_invites`
--

LOCK TABLES `clan_invites` WRITE;
/*!40000 ALTER TABLE `clan_invites` DISABLE KEYS */;
INSERT INTO `clan_invites` VALUES (8,0,0,'2014-02-15 23:34:58'),(8,443,1,'2014-02-16 10:54:11'),(8,445,0,'2014-02-16 10:19:31'),(8,445,1,'2014-02-16 10:23:49'),(18,443,1,'2014-02-16 10:53:10');
/*!40000 ALTER TABLE `clan_invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clan_leader`
--

DROP TABLE IF EXISTS `clan_leader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clan_leader` (
  `clan_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `player_name` varchar(50) NOT NULL,
  `became_leader_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`clan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clan_leader`
--

LOCK TABLES `clan_leader` WRITE;
/*!40000 ALTER TABLE `clan_leader` DISABLE KEYS */;
INSERT INTO `clan_leader` VALUES (8,442,'dragon','2014-02-16 12:48:26'),(18,445,'Zep','2014-02-16 09:23:56'),(19,443,'d','2014-02-16 09:54:40');
/*!40000 ALTER TABLE `clan_leader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clan_members`
--

DROP TABLE IF EXISTS `clan_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clan_members` (
  `clan_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `join_clan_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `clan_rank` varchar(20) NOT NULL,
  PRIMARY KEY (`clan_id`,`player_id`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clan_members`
--

LOCK TABLES `clan_members` WRITE;
/*!40000 ALTER TABLE `clan_members` DISABLE KEYS */;
INSERT INTO `clan_members` VALUES (8,442,'2014-02-13 20:55:48','ACU'),(8,444,'2014-02-16 09:10:54','LAB'),(18,445,'2014-02-16 09:23:56','ACU'),(19,443,'2014-02-16 09:54:40','ACU');
/*!40000 ALTER TABLE `clan_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `clan_members_list_view`
--

DROP TABLE IF EXISTS `clan_members_list_view`;
/*!50001 DROP VIEW IF EXISTS `clan_members_list_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `clan_members_list_view` (
  `clan_id` tinyint NOT NULL,
  `player_id` tinyint NOT NULL,
  `player_name` tinyint NOT NULL,
  `join_clan_date` tinyint NOT NULL,
  `clan_rank` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `clans_details_page_view`
--

DROP TABLE IF EXISTS `clans_details_page_view`;
/*!50001 DROP VIEW IF EXISTS `clans_details_page_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `clans_details_page_view` (
  `clan_id` tinyint NOT NULL,
  `clan_name` tinyint NOT NULL,
  `clan_tag` tinyint NOT NULL,
  `leader_name` tinyint NOT NULL,
  `founder_name` tinyint NOT NULL,
  `founded_date` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `clans_list`
--

DROP TABLE IF EXISTS `clans_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clans_list` (
  `clan_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL DEFAULT '0',
  `clan_name` varchar(40) NOT NULL,
  `clan_tag` varchar(3) DEFAULT NULL,
  `clan_founder_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`clan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clans_list`
--

LOCK TABLES `clans_list` WRITE;
/*!40000 ALTER TABLE `clans_list` DISABLE KEYS */;
INSERT INTO `clans_list` VALUES (8,'2014-02-13 20:55:48',1,'Ich mag das','as',442),(9,'2014-02-14 07:33:32',1,'test','t',444),(10,'2014-02-15 17:18:05',1,'Ich mag das','te',445),(11,'2014-02-15 17:20:46',1,'?09ß83943','ad',445),(12,'2014-02-15 18:25:42',1,'myclan','da',445),(13,'2014-02-15 22:33:10',1,'dada','daa',445),(14,'2014-02-15 22:34:11',1,'1234','rtz',445),(15,'2014-02-15 22:36:01',1,'2342','ast',444),(16,'2014-02-16 09:17:09',1,'das234easd','das',445),(17,'2014-02-16 09:19:38',1,'asdf4wa','asd',445),(18,'2014-02-16 09:23:56',1,'sdfg34wetsgd','ert',445),(19,'2014-02-16 09:54:40',1,'asdf32','sf',443);
/*!40000 ALTER TABLE `clans_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `clans_list_page_view`
--

DROP TABLE IF EXISTS `clans_list_page_view`;
/*!50001 DROP VIEW IF EXISTS `clans_list_page_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `clans_list_page_view` (
  `clan_id` tinyint NOT NULL,
  `clan_name` tinyint NOT NULL,
  `clan_tag` tinyint NOT NULL,
  `leader_name` tinyint NOT NULL,
  `clan_active_members` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `membership_request_page_view`
--

DROP TABLE IF EXISTS `membership_request_page_view`;
/*!50001 DROP VIEW IF EXISTS `membership_request_page_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `membership_request_page_view` (
  `player_id` tinyint NOT NULL,
  `player_name` tinyint NOT NULL,
  `time` tinyint NOT NULL,
  `clan_id` tinyint NOT NULL,
  `clanless` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `from_player_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `type` int(1) NOT NULL DEFAULT '0',
  `date_sent` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `body` varchar(1024) DEFAULT NULL,
  `to_player_id` varchar(16) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,444,1,0,'2014-02-14 06:16:14','This is \'d1\'. Please let me join your clan \'FirstClan\'.\n\na',''),(2,444,1,0,'2014-02-15 13:58:23','This is \'d1\'. Please let me join your clan \'Ich mag das\'.\n\n',''),(3,445,1,0,'2014-02-15 14:11:03','This is \'Zep\'. Please let me join your clan \'Ich mag das\'.\n\n',''),(4,445,1,0,'2014-02-15 14:38:02','This is \'Zep\'. Please let me join your clan \'Ich mag das\'.\n\n',''),(5,445,1,0,'2014-02-16 08:10:42','This is \'Zep\'. Please let me join your clan \'Ich mag das\'.\n\n',''),(6,445,1,0,'2014-02-16 08:16:36','This is \'Zep\'. Please let me join your clan \'Ich mag das\'.\n\n',''),(7,445,1,0,'2014-02-16 08:23:49','This is \'Zep\'. Please let me join your clan \'Ich mag das\'.\n\n',''),(8,443,1,0,'2014-02-16 08:37:00','This is \'d\'. Please let me join your clan \'Ich mag das\'.\n\n',''),(9,443,1,0,'2014-02-16 08:50:13','This is \'d\'. Please let me join your clan \'Ich mag das\'.\n\n',''),(10,443,1,0,'2014-02-16 08:50:14','This is \'d\'. Please let me join your clan \'Ich mag das\'.\n\n',''),(11,443,1,0,'2014-02-16 08:50:15','This is \'d\'. Please let me join your clan \'Ich mag das\'.\n\n',''),(12,443,1,0,'2014-02-16 08:50:18','This is \'d\'. Please let me join your clan \'Ich mag das\'.\n\nasdf',''),(13,443,1,0,'2014-02-16 08:50:18','This is \'d\'. Please let me join your clan \'Ich mag das\'.\n\nasdf',''),(14,443,1,0,'2014-02-16 08:50:24','This is \'d\'. Please let me join your clan \'Ich mag das\'.\n\n',''),(15,443,1,0,'2014-02-16 08:50:25','This is \'d\'. Please let me join your clan \'Ich mag das\'.\n\n',''),(16,443,1,0,'2014-02-16 08:50:25','This is \'d\'. Please let me join your clan \'Ich mag das\'.\n\n',''),(17,443,1,0,'2014-02-16 08:50:38','This is \'d\'. Please let me join your clan \'Ich mag das\'.\n\n',''),(18,443,1,0,'2014-02-16 08:50:38','This is \'d\'. Please let me join your clan \'Ich mag das\'.\n\n',''),(19,443,1,0,'2014-02-16 08:50:39','This is \'d\'. Please let me join your clan \'Ich mag das\'.\n\n',''),(20,443,1,0,'2014-02-16 08:50:39','This is \'d\'. Please let me join your clan \'Ich mag das\'.\n\n',''),(21,443,1,0,'2014-02-16 08:50:43','This is \'d\'. Please let me join your clan \'Ich mag das\'.\n\n',''),(22,443,1,0,'2014-02-16 08:50:43','This is \'d\'. Please let me join your clan \'Ich mag das\'.\n\n',''),(23,443,1,0,'2014-02-16 08:53:05','This is \'d\'. Please let me join your clan \'Ich mag das\'.\n\nadfaf',''),(24,443,1,0,'2014-02-16 08:53:10','This is \'d\'. Please let me join your clan \'sdfg34wetsgd\'.\n\nasdf',''),(25,443,1,0,'2014-02-16 08:53:13','This is \'d\'. Please let me join your clan \'Ich mag das\'.\n\nasdf',''),(26,443,1,0,'2014-02-16 08:53:14','This is \'d\'. Please let me join your clan \'Ich mag das\'.\n\nasdf',''),(27,443,1,0,'2014-02-16 08:53:14','This is \'d\'. Please let me join your clan \'Ich mag das\'.\n\nasdf',''),(28,443,1,0,'2014-02-16 08:54:11','This is \'d\'. Please let me join your clan \'Ich mag das\'.\n\n',''),(29,446,1,0,'2014-02-16 12:13:04','This is \'Test\'. Please let me join your clan \'Ich mag das\'.\n\n',''),(30,446,1,0,'2014-02-16 12:40:17','This is \'Test\'. Please let me join your clan \'Ich mag das\'.\n\n','');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `player_invites_page_view`
--

DROP TABLE IF EXISTS `player_invites_page_view`;
/*!50001 DROP VIEW IF EXISTS `player_invites_page_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `player_invites_page_view` (
  `clan_name` tinyint NOT NULL,
  `player_id` tinyint NOT NULL,
  `clan_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `player_list_page_view`
--

DROP TABLE IF EXISTS `player_list_page_view`;
/*!50001 DROP VIEW IF EXISTS `player_list_page_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `player_list_page_view` (
  `player_id` tinyint NOT NULL,
  `player_name` tinyint NOT NULL,
  `clan_name` tinyint NOT NULL,
  `clan_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `players_list`
--

DROP TABLE IF EXISTS `players_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players_list` (
  `player_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL DEFAULT '0',
  `faf_id` mediumint(8) unsigned NOT NULL,
  `player_name` varchar(50) NOT NULL,
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `faf_id` (`faf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=447 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players_list`
--

LOCK TABLES `players_list` WRITE;
/*!40000 ALTER TABLE `players_list` DISABLE KEYS */;
INSERT INTO `players_list` VALUES (442,'2014-02-13 20:53:33',1,1,'dragon'),(443,'2014-02-13 20:55:31',1,22,'d'),(444,'2014-02-14 06:45:52',1,101,'d1'),(445,'2014-02-15 15:10:57',1,103,'Zep'),(446,'2014-02-16 12:56:59',1,104,'Test');
/*!40000 ALTER TABLE `players_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipients`
--

DROP TABLE IF EXISTS `recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipients` (
  `recipient_id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL,
  `type` int(1) NOT NULL,
  `entity_id` int(11) NOT NULL,
  PRIMARY KEY (`recipient_id`),
  KEY `message_id` (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipients`
--

LOCK TABLES `recipients` WRITE;
/*!40000 ALTER TABLE `recipients` DISABLE KEYS */;
INSERT INTO `recipients` VALUES (1,1,2,8),(2,2,2,8),(3,3,2,8),(4,4,2,8),(5,5,2,8),(6,6,2,8),(7,7,2,8),(8,8,2,8),(9,9,2,8),(10,10,2,8),(11,11,2,8),(12,12,2,8),(13,13,2,8),(14,14,2,8),(15,15,2,8),(16,16,2,8),(17,17,2,8),(18,18,2,8),(19,19,2,8),(20,20,2,8),(21,21,2,8),(22,22,2,8),(23,23,2,8),(24,24,2,18),(25,25,2,8),(26,26,2,8),(27,27,2,8),(28,28,2,8),(29,29,2,8),(30,30,2,8);
/*!40000 ALTER TABLE `recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seen_messages`
--

DROP TABLE IF EXISTS `seen_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seen_messages` (
  `seen_message_id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`seen_message_id`),
  KEY `player_id` (`player_id`,`message_id`,`status`),
  KEY `message_id` (`message_id`,`player_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seen_messages`
--

LOCK TABLES `seen_messages` WRITE;
/*!40000 ALTER TABLE `seen_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `seen_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `clan_members_list_view`
--

/*!50001 DROP TABLE IF EXISTS `clan_members_list_view`*/;
/*!50001 DROP VIEW IF EXISTS `clan_members_list_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clan_members_list_view` AS select `cm`.`clan_id` AS `clan_id`,`pl`.`player_id` AS `player_id`,`pl`.`player_name` AS `player_name`,`cm`.`join_clan_date` AS `join_clan_date`,`cm`.`clan_rank` AS `clan_rank` from (`players_list` `pl` join `clan_members` `cm` on((`cm`.`player_id` = `pl`.`player_id`))) where (`pl`.`status` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clans_details_page_view`
--

/*!50001 DROP TABLE IF EXISTS `clans_details_page_view`*/;
/*!50001 DROP VIEW IF EXISTS `clans_details_page_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clans_details_page_view` AS select `c`.`clan_id` AS `clan_id`,`c`.`clan_name` AS `clan_name`,`c`.`clan_tag` AS `clan_tag`,`l`.`player_name` AS `leader_name`,`f`.`player_name` AS `founder_name`,date_format(`c`.`create_date`,'%Y-%c-%e') AS `founded_date` from ((`clans_list` `c` left join `clan_leader` `l` on((`c`.`clan_id` = `l`.`clan_id`))) left join `players_list` `f` on((`c`.`clan_founder_id` = `f`.`player_id`))) where (`c`.`status` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clans_list_page_view`
--

/*!50001 DROP TABLE IF EXISTS `clans_list_page_view`*/;
/*!50001 DROP VIEW IF EXISTS `clans_list_page_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clans_list_page_view` AS select distinct `c`.`clan_id` AS `clan_id`,`c`.`clan_name` AS `clan_name`,`c`.`clan_tag` AS `clan_tag`,`l`.`player_name` AS `leader_name`,count(`p`.`player_id`) AS `clan_active_members` from (((`clans_list` `c` join `clan_members` `m` on((`c`.`clan_id` = `m`.`clan_id`))) join `clan_leader` `l` on((`c`.`clan_id` = `l`.`clan_id`))) join `players_list` `p` on(((`m`.`player_id` = `p`.`player_id`) and (`p`.`status` = 1)))) where (`c`.`status` = 1) group by `c`.`clan_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `membership_request_page_view`
--

/*!50001 DROP TABLE IF EXISTS `membership_request_page_view`*/;
/*!50001 DROP VIEW IF EXISTS `membership_request_page_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `membership_request_page_view` AS select `i`.`player_id` AS `player_id`,`p`.`player_name` AS `player_name`,`i`.`time` AS `time`,`i`.`clan_id` AS `clan_id`,`c`.`clan_id` AS `clanless` from ((`clan_invites` `i` left join `players_list` `p` on((`i`.`player_id` = `p`.`player_id`))) left join `clan_members` `c` on((`p`.`player_id` = `c`.`player_id`))) where (`i`.`user_request` = 1) order by `i`.`time` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `player_invites_page_view`
--

/*!50001 DROP TABLE IF EXISTS `player_invites_page_view`*/;
/*!50001 DROP VIEW IF EXISTS `player_invites_page_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `player_invites_page_view` AS select `c`.`clan_name` AS `clan_name`,`i`.`player_id` AS `player_id`,`i`.`clan_id` AS `clan_id` from (`clan_invites` `i` join `clans_list` `c` on((`i`.`clan_id` = `c`.`clan_id`))) where (`i`.`user_request` = 0) order by `i`.`time` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `player_list_page_view`
--

/*!50001 DROP TABLE IF EXISTS `player_list_page_view`*/;
/*!50001 DROP VIEW IF EXISTS `player_list_page_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `player_list_page_view` AS select `p`.`player_id` AS `player_id`,`p`.`player_name` AS `player_name`,ifnull(`c`.`clan_name`,'-') AS `clan_name`,ifnull(`c`.`clan_id`,-(1)) AS `clan_id` from ((`players_list` `p` left join `clan_members` `m` on((`p`.`player_id` = `m`.`player_id`))) left join `clans_list` `c` on((`m`.`clan_id` = `c`.`clan_id`))) where (`p`.`status` = 1) order by `p`.`player_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-16 14:49:48
