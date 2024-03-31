-- MariaDB dump 10.19  Distrib 10.5.16-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: rdn1_cs3101_P2_DB
-- ------------------------------------------------------
-- Server version	10.5.16-MariaDB

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
-- Table structure for table `dietary_requirement`
--

DROP TABLE IF EXISTS `dietary_requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dietary_requirement` (
  `short_name` varchar(20) COLLATE utf8_bin NOT NULL,
  `description` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`short_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dietary_requirement`
--

LOCK TABLES `dietary_requirement` WRITE;
/*!40000 ALTER TABLE `dietary_requirement` DISABLE KEYS */;
INSERT INTO `dietary_requirement` VALUES ('Gluten-free','No gluten, e.g. wheat products.'),('Halal','Alcohol, some meats and a few other things to be avoided. Check https://thehalallife.co.uk/halal-check/'),('Vegan','No animal products of any kind, except maybe honey (check!).'),('Vegetarian','No meat or fish.');
/*!40000 ALTER TABLE `dietary_requirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dinner_table`
--

DROP TABLE IF EXISTS `dinner_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dinner_table` (
  `table_no` int(11) NOT NULL,
  `capacity` int(11) DEFAULT NULL,
  PRIMARY KEY (`table_no`),
  CONSTRAINT `CONSTRAINT_1` CHECK (`capacity` > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dinner_table`
--

LOCK TABLES `dinner_table` WRITE;
/*!40000 ALTER TABLE `dinner_table` DISABLE KEYS */;
INSERT INTO `dinner_table` VALUES (1,11),(2,8),(3,10),(4,10),(5,10),(6,4),(7,8),(8,8),(9,6),(10,8),(99,1);
/*!40000 ALTER TABLE `dinner_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_diet`
--

DROP TABLE IF EXISTS `guest_diet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest_diet` (
  `person_id` int(11) NOT NULL,
  `dietary_requirement_name` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`person_id`,`dietary_requirement_name`),
  KEY `dietary_requirement_name` (`dietary_requirement_name`),
  CONSTRAINT `guest_diet_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `guest_diet_ibfk_2` FOREIGN KEY (`dietary_requirement_name`) REFERENCES `dietary_requirement` (`short_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_diet`
--

LOCK TABLES `guest_diet` WRITE;
/*!40000 ALTER TABLE `guest_diet` DISABLE KEYS */;
INSERT INTO `guest_diet` VALUES (267,'Gluten-free'),(267,'Vegetarian'),(268,'Vegan'),(269,'Vegan'),(270,'Gluten-free'),(270,'Vegan'),(274,'Vegetarian'),(275,'Vegetarian'),(282,'Gluten-free'),(282,'Vegan'),(285,'Vegetarian'),(286,'Vegetarian'),(287,'Vegetarian'),(289,'Halal'),(290,'Gluten-free'),(290,'Halal'),(293,'Vegetarian'),(294,'Vegetarian'),(303,'Vegetarian'),(304,'Vegetarian'),(305,'Vegetarian'),(306,'Gluten-free'),(306,'Vegetarian'),(307,'Vegetarian'),(308,'Vegan'),(309,'Vegan'),(317,'Vegetarian'),(318,'Vegetarian');
/*!40000 ALTER TABLE `guest_diet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitation`
--

DROP TABLE IF EXISTS `invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitation` (
  `code` char(5) COLLATE utf8_bin NOT NULL,
  `date_sent` date DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitation`
--

LOCK TABLES `invitation` WRITE;
/*!40000 ALTER TABLE `invitation` DISABLE KEYS */;
INSERT INTO `invitation` VALUES ('ABC33',NULL,NULL),('AWGHZ','2023-02-25','2 Woodleigh Road, Coventry, CV4 8GT'),('CAUMN','2023-02-23','35 Northway, Leamington Spa, CV31 2BW'),('CIXGN','2023-02-23','3 Dunmere Cottages, Par, PL24 2PD'),('HTJPT','2023-03-01','42 Manor Road, Ducklington, OX29 7YA'),('IXKJB','2023-03-07','9 Heol Dolfain, Ynysforgan, SA6 6QF'),('JHAOJ','2023-02-23','86 St Bartholomews Road, Nottingham, NG3 3ED'),('JQBZV','2023-03-07','Charter House, 100 Broad Street, Birmingham, B15 1AE'),('JUQOK','2023-02-23','3 Marchmont Gardens, Richmond, TW10 6ET'),('KTANU','2023-03-01','117 Hamstead Road, Handsworth, B20 2BT'),('KYMTY','2023-02-23','8 Farriers Court, Coleford, GL16 8AB'),('LHGFM','2023-03-12','4 Victoria Road, Cemaes Bay, LL67 0HR'),('LLBQC','2023-02-23','21 Crescent Gardens, Swanley, BR8 7HE'),('LTOQV','2023-02-23','126 Jersey Road, Blaengwynfi, SA13 3TE'),('LUXNR','2023-03-01','12 Helyg Road, Penmaenmawr, LL34 6HE'),('MCZFI','2023-02-23','11 Cragie Walk, Gillingham, ME8 9JH'),('MIDZS','2023-02-25','Dormouse, Tithe Laithe, Hoyland, S74 9DQ'),('MSNNS','2023-03-07','20 Teal Close, Askam-In-Furness, LA16 7JF'),('NNNND','2023-03-01','5 Sunningdale Avenue, Brigg, DN20 8QD'),('NQWUC','2023-03-01','6 The Causeway, Needham Market, IP6 8BD'),('QGCJI','2023-02-23','Glebe House, The Street, Itteringham, NR11 7AX'),('RGWBV','2023-03-01','Orchard Cottage, Ingram Lane, Grassthorpe, NG23 6RA'),('RVQLU','2023-02-23','215 Southcote Lane, Reading, RG30 3AY'),('SADDT','2023-03-01','40 Honey Lane, Buntingford, SG9 9BQ'),('UAZEX','2023-02-23','45 Harpes Road, Oxford, OX2 7QJ'),('UBIHF','2023-02-23','1 Red Gables, Puddington Village, Puddington, CH64 5ST'),('ULYDN','2023-02-23','11 Rutherglen Road, Sunderland, SR5 5LW'),('UTZAF','2023-03-03','11 Mayfield, Ivybridge, PL21 9UE'),('VFAIW','2023-02-25','Carreg Grwca, Glandwr, SA34 0UD'),('VZLAR','2023-03-02','11 Denton View, Blaydon-On-Tyne, NE21 4DZ'),('ZTPAA','2023-02-25','6 Almsgate, Compton, GU3 1JG'),('ZYBXM','2023-03-12','79 Hayling Rise, Worthing, BN13 3AG');
/*!40000 ALTER TABLE `invitation` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rdn1`@`%`*/ /*!50003 trigger check_date before insert on invitation for each row begin if NEW.date_sent > NOW() then signal SQLSTATE '45001' set MESSAGE_TEXT = 'Date sent cannot be set in the future'; 
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `organiser`
--

DROP TABLE IF EXISTS `organiser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organiser` (
  `person_id` int(11) NOT NULL,
  `password` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  CONSTRAINT `organiser_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organiser`
--

LOCK TABLES `organiser` WRITE;
/*!40000 ALTER TABLE `organiser` DISABLE KEYS */;
INSERT INTO `organiser` VALUES (266,'iheartpokemon1991'),(269,'abc123');
/*!40000 ALTER TABLE `organiser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `response` tinyint(1) DEFAULT NULL,
  `notes` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `invitation_code` char(5) COLLATE utf8_bin DEFAULT NULL,
  `table_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invitation_code` (`invitation_code`),
  KEY `table_no` (`table_no`),
  CONSTRAINT `person_ibfk_1` FOREIGN KEY (`invitation_code`) REFERENCES `invitation` (`code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `person_ibfk_2` FOREIGN KEY (`table_no`) REFERENCES `dinner_table` (`table_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (266,'Vicky Hernando',1,'','UAZEX',1),(267,'Solomiya Hernando',1,'','UAZEX',1),(268,'Davorka Hernando',1,'','UAZEX',1),(269,'Driskoll Devine',NULL,'','RVQLU',1),(270,'Sophie Devine',NULL,'','RVQLU',1),(271,'Anas Devine',NULL,'','RVQLU',1),(272,'Theo Hester',NULL,'','MCZFI',1),(273,'Morgan Martin',NULL,'Best man','KYMTY',1),(274,'Jody Sims',1,'Giving speech','LTOQV',1),(275,'Islay Sims',0,'Giving speech','LTOQV',1),(276,'Ashlyn Sims',0,'','JHAOJ',2),(277,'Ryan Sims',1,'Thank Ryan for the voucher he sent us.','LTOQV',2),(278,'Chung Mercado',NULL,'','ULYDN',2),(279,'Carmen Turner',NULL,'','QGCJI',2),(280,'Theresa Butler',1,'','LLBQC',2),(281,'Edmund Kaufman',1,'','UBIHF',2),(282,'Mason Gill',NULL,'','JUQOK',3),(283,'Fletcher Gill',1,'Doesnt talk to Keira any more: keep them apart!','JUQOK',3),(284,'Tameka Gill',0,'Has guide dog called Amos, a very good boy.','CIXGN',3),(285,'Elvin Nielsen',0,'','CAUMN',3),(286,'Lyssa Nielsen',0,'','CAUMN',3),(287,'Keira Arnold',NULL,'','CAUMN',3),(288,'Benedict Arnold',NULL,'','CAUMN',3),(289,'Andrea Cardenas',NULL,'','MIDZS',4),(290,'Stephen Cardenas',NULL,'','MIDZS',4),(291,'Chris Cardenas',NULL,'','VFAIW',4),(292,'Margaret Garza',NULL,'','ZTPAA',4),(293,'Joann Alvarado',NULL,'','AWGHZ',4),(294,'Deana Alvarado',0,'','AWGHZ',4),(295,'Raymond Cox',0,'','SADDT',5),(296,'Don Cox',1,'','SADDT',5),(297,'Jimmie Frye',1,'Might try to play accordion: avoid this at all costs.','RGWBV',5),(298,'Lacey Frey',1,'','HTJPT',5),(299,'Priscilla Todd',NULL,'Wheelchair access needed','HTJPT',5),(300,'Yesenia Hall',NULL,'','HTJPT',5),(301,'Angelina Hall',1,'','HTJPT',5),(302,'Fran Spears',1,'','NQWUC',6),(303,'Lorraine Hahn',NULL,'','KTANU',6),(304,'Sherri Evans',1,'','NNNND',6),(305,'Kathryn Bates',1,'','NNNND',6),(306,'Mitchel Wyatt',1,'','LUXNR',7),(307,'Aaron Wyatt',1,'','LUXNR',7),(308,'Tara Wyatt',0,'','LUXNR',7),(309,'Dwayne Cross',NULL,'','VZLAR',8),(310,'Jackson Atkins',1,'','UTZAF',8),(311,'Ken Huff',1,'','VZLAR',8),(312,'Kellie Huff',NULL,'','VZLAR',9),(313,'Jeanine Medina',NULL,'','IXKJB',9),(314,'Tracie Palmer',1,'','JQBZV',9),(315,'Hollis Calhoun',1,'','MSNNS',9),(316,'Sonya Cohen',NULL,'','MSNNS',9),(317,'Clifton Newman',NULL,'Wheelchair access needed','ZYBXM',10),(318,'Katherine Fowler',0,'','LHGFM',10),(320,'Marcy Dingus',NULL,'Cool Dude','ABC33',99);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rdn1`@`%`*/ /*!50003 trigger check_table_capacity
before insert on person
for each row
begin
declare current_cap int;
declare i int;
select capacity into current_cap
from dinner_table
where table_no = new.table_no;
select COUNT(*) into i
from person
where table_no = new.table_no;
if i + 1 > current_cap then
signal SQLSTATE '45001'
set MESSAGE_TEXT = 'Cannot add to table as table is at capacity';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `view_awaiting_response`
--

DROP TABLE IF EXISTS `view_awaiting_response`;
/*!50001 DROP VIEW IF EXISTS `view_awaiting_response`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_awaiting_response` (
  `Full Name` tinyint NOT NULL,
  `ID` tinyint NOT NULL,
  `Date of Invitation` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_special_diets`
--

DROP TABLE IF EXISTS `view_special_diets`;
/*!50001 DROP VIEW IF EXISTS `view_special_diets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_special_diets` (
  `Table Number` tinyint NOT NULL,
  `Full Name` tinyint NOT NULL,
  `Dietary Requirement(s)` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_standard_dinner`
--

DROP TABLE IF EXISTS `view_standard_dinner`;
/*!50001 DROP VIEW IF EXISTS `view_standard_dinner`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_standard_dinner` (
  `Table Number` tinyint NOT NULL,
  `Number of Standard-Diet Guests` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'rdn1_cs3101_P2_DB'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_add_person` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`rdn1`@`%` PROCEDURE `proc_add_person`(IN new_full_name VARCHAR(255), IN new_notes VARCHAR(255), IN new_invitation_code VARCHAR(255), IN new_table_no INT)
BEGIN DECLARE v_invitation_code VARCHAR(255); DECLARE v_table_no INT;  SELECT code INTO v_invitation_code FROM invitation WHERE code = new_invitation_code; IF v_invitation_code IS NULL THEN INSERT INTO invitation (code, address, date_sent) VALUES (new_invitation_code, NULL, NULL); END IF; SELECT table_no INTO v_table_no FROM dinner_table WHERE table_no = new_table_no; IF v_table_no IS NULL THEN INSERT INTO dinner_table (table_no, capacity) VALUES (new_table_no, '1'); END IF; INSERT INTO person (full_name, response, notes, invitation_code, table_no) VALUES (new_full_name, NULL, new_notes, new_invitation_code, new_table_no); END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view_awaiting_response`
--

/*!50001 DROP TABLE IF EXISTS `view_awaiting_response`*/;
/*!50001 DROP VIEW IF EXISTS `view_awaiting_response`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rdn1`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_awaiting_response` AS select `person`.`full_name` AS `Full Name`,`person`.`id` AS `ID`,`invitation`.`date_sent` AS `Date of Invitation` from (`person` join `invitation`) where `person`.`response` is null and `person`.`invitation_code` = `invitation`.`code` order by `invitation`.`date_sent`,`person`.`full_name`,`person`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_special_diets`
--

/*!50001 DROP TABLE IF EXISTS `view_special_diets`*/;
/*!50001 DROP VIEW IF EXISTS `view_special_diets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rdn1`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_special_diets` AS select `dinner_table`.`table_no` AS `Table Number`,`person`.`full_name` AS `Full Name`,group_concat(`dietary_requirement`.`short_name` order by `dietary_requirement`.`short_name` ASC separator ', ') AS `Dietary Requirement(s)` from (((`person` join `guest_diet` on(`person`.`id` = `guest_diet`.`person_id`)) join `dietary_requirement` on(`guest_diet`.`dietary_requirement_name` = `dietary_requirement`.`short_name`)) left join `dinner_table` on(`person`.`table_no` = `dinner_table`.`table_no`)) where `guest_diet`.`dietary_requirement_name` is not null group by `person`.`id` order by `dinner_table`.`table_no`,`person`.`full_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_standard_dinner`
--

/*!50001 DROP TABLE IF EXISTS `view_standard_dinner`*/;
/*!50001 DROP VIEW IF EXISTS `view_standard_dinner`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`rdn1`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_standard_dinner` AS select `dinner_table`.`table_no` AS `Table Number`,count(`person`.`id`) AS `Number of Standard-Diet Guests` from (`dinner_table` join `person`) where !(`person`.`id` in (select `guest_diet`.`person_id` from `guest_diet`)) and `person`.`response` = 1 and `person`.`table_no` = `dinner_table`.`table_no` group by `dinner_table`.`table_no` order by `dinner_table`.`table_no` */;
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

-- Dump completed on 2023-04-03 12:46:09
