-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: basketball
-- ------------------------------------------------------
-- Server version	5.6.33

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
-- Table structure for table `all_time_team_records`
--

DROP TABLE IF EXISTS `all_time_team_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_time_team_records` (
  `team_code` varchar(5) NOT NULL DEFAULT '',
  `points_per_game` float DEFAULT NULL,
  `minutes_per_game` float DEFAULT NULL,
  `rebounds_per_game` float DEFAULT NULL,
  `assists_per_game` float DEFAULT NULL,
  PRIMARY KEY (`team_code`),
  CONSTRAINT `all_time_team_records_ibfk_1` FOREIGN KEY (`team_code`) REFERENCES `team` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_time_team_records`
--

LOCK TABLES `all_time_team_records` WRITE;
/*!40000 ALTER TABLE `all_time_team_records` DISABLE KEYS */;
INSERT INTO `all_time_team_records` VALUES ('ATL',40.2,26.4,16.2,7.3),('BOS',42.3,24.3,22.5,8.5),('CHA',40.8,23.5,10.7,8.8),('CHI',40,31.5,15.3,7),('DAL',39.7,24.6,10.4,8.4),('DEN',42,25.9,12.3,8.4),('DET',39.5,22.7,12.6,10.1),('GSW',47.2,41.5,25.1,9.3),('HOU',39.5,27.1,15,7.3),('IND',37.1,19.6,16,8.1),('LAC',40.1,29.4,13.8,9.9),('LAL',43.7,27.4,19.2,11.2),('MEM',38,20.8,10.4,7.8),('MIA',38,26.9,11.7,7.9),('MIL',42.7,30.4,15.3,7.5),('MIN',38.3,20.6,12.2,8.3),('NYK',39.8,26.7,13.3,8),('OKC',40.4,27.4,12.1,9),('ORL',39.4,28.1,13,7.2),('PHI',46.3,27.6,23.9,7.3),('POR',38.8,23.5,13.5,8.2),('SAC',44,29.3,19.1,10.3);
/*!40000 ALTER TABLE `all_time_team_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amateur`
--

DROP TABLE IF EXISTS `amateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amateur` (
  `class_year` int(4) DEFAULT NULL,
  `player_id` varchar(20) DEFAULT NULL,
  KEY `player_id` (`player_id`),
  CONSTRAINT `amateur_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amateur`
--

LOCK TABLES `amateur` WRITE;
/*!40000 ALTER TABLE `amateur` DISABLE KEYS */;
INSERT INTO `amateur` VALUES (2,'437'),(3,'438'),(2,'439'),(1,'440'),(4,'441'),(2,'442'),(1,'443'),(4,'444'),(2,'445'),(2,'446'),(3,'447'),(4,'448');
/*!40000 ALTER TABLE `amateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arena`
--

DROP TABLE IF EXISTS `arena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arena` (
  `team_code` varchar(5) NOT NULL DEFAULT '',
  `name` varchar(40) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  PRIMARY KEY (`team_code`),
  CONSTRAINT `arena_ibfk_1` FOREIGN KEY (`team_code`) REFERENCES `team` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arena`
--

LOCK TABLES `arena` WRITE;
/*!40000 ALTER TABLE `arena` DISABLE KEYS */;
INSERT INTO `arena` VALUES ('ATL','Philips Arena',18047),('BKN','Barclays Center',17732),('BOS','TD Garden',18624),('CHA','Spectrum Center',19077),('CHI','United Center',20917),('CLE','Quicken Loans Arena',20562),('DAL','American Airlines Center',19200),('DEN','Pepsi Center',19155),('DET','The Palace of Auburn Hills',19971),('GSW','Oracle Arena',19596),('HOU','Toyota Center',18055),('IND','Bankers Life Fieldhouse',18165),('LAC','Staples Center',19060),('LAL','Staples Center',19060),('MEM','FedExForum',18119),('MIA','American Airlines Arena',19600),('MIL','BMO Harris Bradley Center',18717),('MIN','Target Center',19356),('NOP','Smoothie King Center',16867),('NYK','Madison Square Garden',19812),('OKC','Chesapeake Energy Arena',18203),('ORL','Amway Center',18846),('PHI','Wells Fargo Center',21600),('PHX','Talking Stick Resort Arena',18055),('POR','Moda Center',19441),('SAC','Golden 1 Center',17500),('SAS','AT&T Center',18418),('TOR','Air Canada Centre',19800),('UTA','Vivint Smart Home Arena',19911),('WSH','Verizon Center',20356);
/*!40000 ALTER TABLE `arena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `championship`
--

DROP TABLE IF EXISTS `championship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `championship` (
  `year` int(4) NOT NULL DEFAULT '0',
  `team_code_winner` varchar(5) DEFAULT NULL,
  `team_code_loser` varchar(5) DEFAULT NULL,
  `mvp_first` varchar(20) DEFAULT NULL,
  `mvp_last` varchar(20) DEFAULT NULL,
  `winner_games_won` tinyint(4) DEFAULT NULL,
  `loser_games_won` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`year`),
  KEY `team_code_winner` (`team_code_winner`),
  KEY `team_code_loser` (`team_code_loser`),
  CONSTRAINT `championship_ibfk_1` FOREIGN KEY (`team_code_winner`) REFERENCES `team` (`code`),
  CONSTRAINT `championship_ibfk_2` FOREIGN KEY (`team_code_loser`) REFERENCES `team` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `championship`
--

LOCK TABLES `championship` WRITE;
/*!40000 ALTER TABLE `championship` DISABLE KEYS */;
INSERT INTO `championship` VALUES (1947,'GSW','CHI',NULL,NULL,4,1),(1948,'BAL','GSW',NULL,NULL,4,2),(1949,'LAL','PHI',NULL,NULL,4,2),(1950,'LAL','SYR',NULL,NULL,4,2),(1951,'ROC','NYK',NULL,NULL,4,3),(1952,'LAL','NYK',NULL,NULL,4,3),(1953,'LAL','NYK',NULL,NULL,4,1),(1954,'LAL','SYR',NULL,NULL,4,3),(1955,'SYR','FWP',NULL,NULL,4,3),(1956,'PHI','FWP',NULL,NULL,4,1),(1957,'BOS','ATL',NULL,NULL,4,3),(1958,'STL','BOS',NULL,NULL,4,2),(1959,'BOS','MIN',NULL,NULL,4,0),(1960,'BOS','ATL',NULL,NULL,4,3),(1961,'BOS','ATL',NULL,NULL,4,1),(1962,'BOS','LAL',NULL,NULL,4,3),(1963,'BOS','LAL',NULL,NULL,4,2),(1964,'BOS','LAL',NULL,NULL,4,1),(1965,'BOS','LAL',NULL,NULL,4,1),(1966,'BOS','LAL',NULL,NULL,4,3),(1967,'PHI','GSW',NULL,NULL,4,2),(1968,'BOS','LAL',NULL,NULL,4,2),(1969,'BOS','LAL','Jerry','West',4,3),(1970,'NYK','LAL','Willis','Reed',4,3),(1971,'MIL','BAL','Kareem','Abdul-Jabbar',4,0),(1972,'LAL','NYK','Wilt','Chamberlain',4,1),(1973,'NYK','LAL','Willis','Reed',4,1),(1974,'BOS','MIL','John','Havlicek',4,3),(1975,'GSW','WAS','Rick','Barry',4,0),(1976,'BOS','PHX','Joe','White',4,2),(1977,'POR','PHI','Bill','Walton',4,2),(1978,'WDC','SEA','Westley','Unseld',4,3),(1979,'SEA','WAS','Dennis','Johnson',4,1),(1980,'LAL','PHI','Magic','Johnson',4,2),(1981,'BOS','HOU','Cedric','Maxwell',4,2),(1982,'LAL','PHI','Magic','Johnson',4,2),(1983,'PHI','LAL','Moses','Malone',4,0),(1984,'BOS','LAL','Larry','Bird',4,3),(1985,'LAL','BOS','Kareem','Abdul-Jabbar',4,2),(1986,'BOS','HOU','Larry','Bird',4,2),(1987,'LAL','BOS','Magic','Johnson',4,2),(1988,'LAL','DET','James','Worthy',4,3),(1989,'DET','LAL','Joe','Dumars',4,0),(1990,'DET','POR','Isiah','Thomas',4,1),(1991,'CHI','LAL','Michael','Jordan',4,1),(1992,'CHI','POR','Michael','Jordan',4,2),(1993,'CHI','PHX','Michael','Jordan',4,2),(1994,'HOU','NYK','Hakeem','Olajuwon',4,3),(1995,'HOU','ORL','Hakeem','Olajuwon',4,0),(1996,'CHI','SEA','Michael','Jordan',4,2),(1997,'CHI','UTA','Michael','Jordan',4,2),(1998,'CHI','UTA','Michael','Jordan',4,2),(1999,'SAS','NYK','Tim','Duncan',4,1),(2000,'LAL','IND','Shaquille','O\'Neal',4,2),(2001,'LAL','PHI','Shaquille','O\'Neal',4,1),(2002,'LAL','BKN','Shaquille','O\'Neal',4,0),(2003,'SAS','BKN','Tim','Duncan',4,2),(2004,'DET','LAL','Chauncey','Billups',4,1),(2005,'SAS','DET','Tim','Duncan',4,3),(2006,'MIA','DAL','Dwyane','Wade',4,2),(2007,'SAS','CLE','Tony','Parker',4,0),(2008,'BOS','LAL','Paul','Pierce',4,2),(2009,'LAL','ORL','Kobe','Bryant',4,1),(2010,'LAL','BOS','Kobe','Bryant',4,3),(2011,'DAL','MIA','Dirk','Nowitzki',4,2),(2012,'MIA','OKC','LeBron','James',4,1),(2013,'MIA','SAS','LeBron','James',4,3),(2014,'SAS','MIA','Kawhi','Leonard',4,1),(2015,'GSW','CLE','Andre','Iguodala',4,2),(2016,'CLE','GSW','LeBron','James',4,3);
/*!40000 ALTER TABLE `championship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coach` (
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `team_code` varchar(5) NOT NULL DEFAULT '',
  `salary` int(10) DEFAULT NULL,
  PRIMARY KEY (`team_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES ('Mike','Budenholzer','ATL',2000000),('Tony','Brown','BKN',NULL),('Brad','Stevens','BOS',3666667),('Steve','Clifford','CHA',2000000),('Fred','Hoiberg','CHI',5000000),('David','Blatt','CLE',3330000),('Rick','Carlisle','DAL',7000000),('Mike','Malone','DEN',NULL),('Stan','Van Gundy','DET',7000000),('Steve','Kerr','GSW',5000000),('J.B.','Bickerstaff','HOS',NULL),('Frank','Vogel','IND',2000000),('Doc','Rivers','LAC',10000000),('Byron','Scott','LAL',4250000),('Dave','Joerger','MEM',2000000),('Erik','Spoelstra','MIA',3000000),('Jason','Kidd','MIL',5000000),('Sam','Mitchell','MIN',NULL),('Alvin','Gentry','NOP',3437500),('Derek','Fisher','NYK',5000000),('Billy','Donovan','OKC',6000000),('Scott','Skiles','ORL',NULL),('Brett','Brown','PHI',2000000),('Jeff','Hornacek','PHX',2000000),('Terry','Stotts','POR',5000000),('George','Karl','SAC',3625000),('Gregg','Popovich','SAS',11000000),('Dwane','Casey','TOR',3750000),('Quin','Snyder','UTA',NULL),('Randy','Wittman','WSH',3000000);
/*!40000 ALTER TABLE `coach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `college`
--

DROP TABLE IF EXISTS `college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `college` (
  `name` varchar(20) NOT NULL,
  `division` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college`
--

LOCK TABLES `college` WRITE;
/*!40000 ALTER TABLE `college` DISABLE KEYS */;
INSERT INTO `college` VALUES ('Alabama','NCAA1'),('Arizona','NCAA1'),('Arizona State','NCAA1'),('Arkansas','NCAA1'),('Baylor','NCAA1'),('Belmont','NCAA1'),('Blinn','NJCAA'),('Boston College','NCAA1'),('Bowling Green','NCAA1'),('Bucknell','NCAA1'),('Butler','NCAA1'),('Cal State-Fullerton','NCAA1'),('California','NCAA1'),('California-Santa Bar','NCAA1'),('Cincinnati','NCAA1'),('Clemson','NCAA1'),('Colorado','NCAA1'),('Colorado State','NCAA1'),('Connecticut','NCAA1'),('Creighton','NCAA1'),('Davidson','NCAA1'),('Dayton','NCAA1'),('DePaul','NCAA1'),('Duke','NCAA1'),('Eastern Washington','NCAA1'),('Florida','NCAA1'),('Florida State','NCAA1'),('Fresno State','NCAA1'),('Georgetown','NCAA1'),('Georgia','NCAA1'),('Georgia State','NCAA1'),('Georgia Tech','NCAA1'),('Gonzaga','NCAA1'),('Harvard','NCAA1'),('Houston','NCAA1'),('Illinois','NCAA1'),('Indiana','NCAA1'),('Indiana Purdue-India','NCAA1'),('Iowa State','NCAA1'),('Kansas','NCAA1'),('Kansas State','NCAA1'),('Kentucky','NCAA1'),('Le Moyne','NCAA1'),('Lehigh','NCAA1'),('Long Beach State','NCAA1'),('Louisiana State','NCAA1'),('Louisiana Tech','NCAA1'),('Louisiana-Lafayette','NCAA1'),('Louisville','NCAA1'),('Marquette','NCAA1'),('Marshall','NCAA1'),('Maryland','NCAA1'),('Memphis','NCAA1'),('Miami (FL)','NCAA1'),('Miami (Fla.)','NCAA1'),('Michigan','NCAA1'),('Michigan State','NCAA1'),('Minnesota','NCAA1'),('Missouri','NCAA1'),('Morehead State','NCAA1'),('Murray State','NCAA1'),('Nevada','NCAA1'),('Nevada-Las Vegas','NCAA1'),('New Mexico','NCAA1'),('New Mexico State','NCAA1'),('None','NCAA1'),('Norfolk State','NCAA1'),('North Carolina','NCAA1'),('North Carolina State','NCAA1'),('Northeastern','NCAA1'),('Notre Dame','NCAA1'),('Ohio State','NCAA1'),('Ohio U.','NCAA1'),('Oklahoma','NCAA1'),('Oklahoma State','NCAA1'),('Old Dominion','NCAA1'),('Oregon','NCAA1'),('Pittsburgh','NCAA1'),('Providence','NCAA1'),('Purdue','NCAA1'),('Saint Joseph\'s','NCAA1'),('Saint Louis','NCAA1'),('Saint Mary\'s (CA)','NCAA1'),('San Diego State','NCAA1'),('Seton Hall','NCAA1'),('Southern California','NCAA1'),('St. Bonaventure','NCAA1'),('St. John\'s (NY)','NCAA1'),('Stanford','NCAA1'),('Syracuse','NCAA1'),('Temple','NCAA1'),('Tennessee','NCAA1'),('Tennessee State','NCAA1'),('Texas','NCAA1'),('Texas A&M','NCAA1'),('UCLA','NCAA1'),('UNLV','NCAA1'),('Utah','NCAA1'),('Vanderbilt','NCAA1'),('Villanova','NCAA1'),('Virginia','NCAA1'),('Virginia Commonwealt','NCAA1'),('Virginia Tech','NCAA1'),('Wake Forest','NCAA1'),('Washington','NCAA1'),('Washington State','NCAA1'),('Weber State','NCAA1'),('Western Kentucky','NCAA1'),('Wichita State','NCAA1'),('Wisconsin','NCAA1'),('Wyoming','NCAA1'),('Xavier','NCAA1');
/*!40000 ALTER TABLE `college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corporate_sponsor`
--

DROP TABLE IF EXISTS `corporate_sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corporate_sponsor` (
  `team_code` varchar(5) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `sponsorship_amount` int(12) DEFAULT NULL,
  PRIMARY KEY (`team_code`,`name`),
  CONSTRAINT `corporate_sponsor_ibfk_1` FOREIGN KEY (`team_code`) REFERENCES `team` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corporate_sponsor`
--

LOCK TABLES `corporate_sponsor` WRITE;
/*!40000 ALTER TABLE `corporate_sponsor` DISABLE KEYS */;
INSERT INTO `corporate_sponsor` VALUES ('BOS','Adidas',100000000),('BOS','Gatorade',20000000),('DAL','AT&T',42000000),('DAL','Coca-Cola',24000000),('HOU','Budweiser',67000000),('HOU','McDonalds',34000000),('LAL','Adidas',25000000),('LAL','Delta',12000000),('LAL','Gatorade',25000000),('LAL','Nike',75000000),('NYK','Anheuser-Busch',55000000),('NYK','Chase',60000000),('NYK','Coca-Cola',35000000);
/*!40000 ALTER TABLE `corporate_sponsor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game` (
  `team_code_home` varchar(5) NOT NULL DEFAULT '',
  `team_code_away` varchar(5) NOT NULL DEFAULT '',
  `date` date NOT NULL DEFAULT '0000-00-00',
  `home_score` smallint(6) DEFAULT NULL,
  `away_score` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`team_code_home`,`team_code_away`,`date`),
  KEY `team_code_away` (`team_code_away`),
  CONSTRAINT `game_ibfk_1` FOREIGN KEY (`team_code_home`) REFERENCES `team` (`code`),
  CONSTRAINT `game_ibfk_2` FOREIGN KEY (`team_code_away`) REFERENCES `team` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES ('ATL','OKC','2016-12-05',99,102),('BKN','DEN','2016-12-07',116,111),('CHI','CLE','2016-12-02',111,105),('DAL','CHA','2016-12-05',101,109),('DEN','HOU','2016-12-02',110,128),('DET','CHI','2016-12-06',102,91),('HOU','LAL','2016-12-07',134,95),('LAC','IND','2016-12-04',102,111),('MEM','LAL','2016-12-03',103,100),('MIL','BKN','2016-12-03',112,103),('MIL','POR','2016-12-07',115,107),('MIL','SAS','2016-12-05',96,97),('MIN','SAS','2016-12-06',91,105),('NOP','LAC','2016-12-02',96,114),('NYK','SAC','2016-12-04',106,98),('ORL','BOS','2016-12-07',87,117),('PHI','DEN','2016-12-05',98,106),('TOR','ATL','2016-12-03',128,84),('UTA','DEN','2016-12-03',105,98),('WSH','ORL','2016-12-06',116,124);
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_manager`
--

DROP TABLE IF EXISTS `general_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_manager` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `team_code` varchar(20) DEFAULT NULL,
  `start_season` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_manager`
--

LOCK TABLES `general_manager` WRITE;
/*!40000 ALTER TABLE `general_manager` DISABLE KEYS */;
INSERT INTO `general_manager` VALUES ('1','Danny','Ainge','BOS',2003),('10','John','Hammond','MIL',2008),('11','Rob','Hennigan','ORL',2012),('12','Scott','Layden','MIN',2015),('13','Dennis','Lindsey','UTA',2012),('14','Herb','Livsey','DEN',2016),('15','Sean','Marks','BKN',2015),('16','Ryan','McDonough','PHX',2013),('17','Steve','Mills','NYK',2013),('18','Daryl','Morey','HOS',2007),('19','Bob','Myers','GSW',2012),('2','Jeff','Bower','DET',2014),('20','Donnie','Nelson','DAL',2002),('21','Neil','Olshey','POR',2012),('22','Sam','Presti','OKC',2007),('23','Kevin','Pritchard','IND',2012),('24','Chris','Wallace','MEM',2007),('25','Jeff','Weltman','TOR',2016),('26','Wes','Wilcox','ATL',2015),('27','Dave','Wohl','LAL',2014),('3','R.C.','Buford','SAS',2002),('4','Rich','Cho','CHA',2011),('5','Dell','Demps','NOP',2010),('6','Andy','Elisburg','MIA',2013),('7','Gar','Forman','CHI',2009),('8','David','Griffin','CLE',2013),('9','Ernie','Grunfeld','WSH',2003);
/*!40000 ALTER TABLE `general_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `injuries`
--

DROP TABLE IF EXISTS `injuries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `injuries` (
  `player_id` varchar(30) NOT NULL DEFAULT '',
  `date` date NOT NULL DEFAULT '0000-00-00',
  `type` varchar(20) NOT NULL DEFAULT '',
  `status` text,
  PRIMARY KEY (`player_id`,`date`,`type`),
  CONSTRAINT `injuries_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `injuries`
--

LOCK TABLES `injuries` WRITE;
/*!40000 ALTER TABLE `injuries` DISABLE KEYS */;
INSERT INTO `injuries` VALUES ('103','2012-01-16','Knee','out indefinitely'),('112','0000-00-00','Groin','expected to miss 2-4 weeks'),('113','2012-04-16','Achilles','out indefinitely'),('116','0000-00-00','Concussion','out indefinitely'),('136','0000-00-00','Ankle','out indefinitely'),('137','2012-04-16','Toe','is downgraded to doubtful Monday vs. LA Lakers'),('154','2012-04-16','Knee','is downgraded to doubtful Monday vs. Brooklyn'),('168','2012-05-16','Illness','is downgraded to expected to miss Monday vs. Denver'),('174','0000-00-00','Calf','out indefinitely'),('176','2012-05-16','Shoulder','expected to miss Tuesday vs. New York'),('191','2011-03-16','Hamstring','out indefinitely'),('193','2012-05-16','Wrist','is downgraded to expected to miss Monday vs. Denver'),('202','2012-05-16','Rest','expected to miss Tuesday vs. Memphis'),('218','2012-05-16','Hamstring','expected to miss 2-4 weeks'),('220','2012-05-16','Ankle','doubtful Tuesday vs. New York'),('221','2012-05-16','Toe','expected to miss Monday vs. Memphis'),('227','2012-05-16','Wrist','is downgraded to expected to miss Tuesday vs. New York'),('259','2012-04-16','Knee','? Monday vs. Utah'),('267','2012-05-16','Hip','doubtful Tuesday vs. New York'),('27','2012-05-16','Foot','injured last game'),('286','0000-00-00','Knee','out indefinitely'),('288','2012-05-16','Legal problems','?'),('295','2011-01-16','Knee','expected to miss 4-6 weeks'),('298','0000-00-00','Back','out indefinitely'),('299','2012-05-16','Concussion','is upgraded to probable Monday vs. Toronto'),('312','0000-00-00','Ankle','out indefinitely'),('317','2012-03-16','Wrist','expected to miss next 2 games'),('334','2012-05-16','Hip','is upgraded to probable Monday vs. Oklahoma City'),('336','0000-00-00','Back','out indefinitely'),('339','2012-05-16','Suspension','expected to miss Monday vs. Portland'),('346','0000-00-00','Knee','out indefinitely'),('350','2012-05-16','Knee','expected to miss next 3 games'),('370','2012-05-16','Knee','is downgraded to doubtful Monday vs. Charlotte'),('383','2012-05-16','Ankle','is upgraded to probable Monday vs. Atlanta'),('385','0000-00-00','Head','out indefinitely'),('407','2012-05-16','Back','is upgraded to probable Monday vs. Boston'),('408','2012-05-16','Illness','is upgraded to probable Monday vs. Washington'),('423','2012-05-16','Hip','is downgraded to expected to miss Monday vs. New Orleans'),('435','0000-00-00','Personal','out indefinitely'),('50','2012-05-16','Toe','? Tuesday vs. San Antonio'),('61','0000-00-00','Knee','out indefinitely'),('73','2012-05-16','Ankle','? Tuesday vs. Miami'),('75','0000-00-00','Knee','out indefinitely'),('77','0000-00-00','Pectoral','out indefinitely'),('82','0000-00-00','Knee','expected to miss 4-6 weeks'),('84','0000-00-00','Wrist','out indefinitely');
/*!40000 ALTER TABLE `injuries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner` (
  `team_code` varchar(5) NOT NULL DEFAULT '',
  `owner_first` varchar(20) NOT NULL DEFAULT '',
  `owner_last` varchar(20) NOT NULL DEFAULT '',
  `owned_since` year(4) DEFAULT NULL,
  `operating_entity` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`team_code`,`owner_first`,`owner_last`),
  CONSTRAINT `owner_ibfk_1` FOREIGN KEY (`team_code`) REFERENCES `team` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES ('ATL','Tony','Ressler',2015,'Hawks'),('BKN','Mikhael','Prokhorov',2010,'ONEXI'),('BOS','H. Irving','Gousbeck',2003,'Bosto'),('CHA','Michael','Jordan',2010,'Horne'),('CHI','Jerry','Reinsdorf',1985,'Chica'),('CLE','Dan','Gilbert',2005,'Caval'),('CLE','Gary','Gilbert',2005,'Caval'),('CLE','Gordon','Gund',2005,'Caval'),('DAL','Mark','Cuban',2000,'Dalla'),('DEN','Stan','Kroenke',2000,'Kroen'),('DET','Tom','Gores',2011,'Palac'),('GSW','Joe','Lacob',2010,'GSW S'),('GSW','Peter','Guber',2010,'GSW S'),('HOU','Leslie','Alexander',1993,'Rocke'),('IND','Herbert','Simon',1983,'Pacer'),('LAC','Steve','Ballmer',2014,'LAC B'),('LAL','Jeanie','Buss',1979,'The L'),('MEM','Robert','Pera',2012,'Memph'),('MIA','Micky','Arison',1995,'Miami'),('MIL','Marc','Larsy',2014,'Milwa'),('MIL','Wesley','Edens',2014,'Milwa'),('MIN','Glen','Taylor',1995,'Minne'),('NOP','Tom','Benson',2012,'New O'),('NYK','James','Dolan',1997,'The M'),('OKC','Clay','Bennett',2006,'The P'),('ORL','Richard','DeVos',1991,'RDV S'),('PHI','Adam','Aron',2011,'Phile'),('PHI','Art','Wrubel',2011,'Phile'),('PHI','David','Blitzer',2011,'Phile'),('PHI','David B.','Heller',2011,'Phile'),('PHI','Erick','Thohir',2011,'Phile'),('PHI','Handy','Soetedjo',2011,'Phile'),('PHI','Jada','Pinkett-Smith',2011,'Phile'),('PHI','James','Lassiter',2011,'Phile'),('PHI','Joshua','Harris',2011,'Phile'),('PHI','Marc','Leder',2011,'Phile'),('PHI','Martin','Geller',2011,'Phile'),('PHI','Michael','Rubin',2011,'Phile'),('PHI','Travis','Hennings',2011,'Phile'),('PHI','Will','Smith',2011,'Phile'),('PHX','Robert','Sarver',2004,'Sun L'),('POR','Paul','Allen',1998,'Vulca'),('SAC','Vivek','Ranadive',2013,'Sacra'),('SAS','Peter','Holt',1993,'Spurs'),('TOR','Larry','Tanenebaum',1998,'Maple'),('UTA','Gail','Miller',1985,'Larry'),('WSH','Ted','Leonsis',2010,'Monum');
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `age` tinyint(4) DEFAULT NULL,
  `height_feet` tinyint(4) DEFAULT NULL,
  `height_inches` tinyint(4) DEFAULT NULL,
  `weight` smallint(6) DEFAULT NULL,
  `team_code` varchar(5) DEFAULT NULL,
  `college_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `team_code` (`team_code`),
  KEY `college_name` (`college_name`),
  CONSTRAINT `player_ibfk_1` FOREIGN KEY (`team_code`) REFERENCES `team` (`code`),
  CONSTRAINT `player_ibfk_2` FOREIGN KEY (`college_name`) REFERENCES `college` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES ('1','AJ','Hammons',24,7,0,260,'DAL','Purdue'),('10','Alan','Williams',23,6,8,260,'PHX','California-Santa Bar'),('100','Dennis','Schroder',23,6,1,172,'ATL','None'),('101','Denzel','Valentine',23,6,6,212,'CHI','Michigan State'),('102','Deron','Williams',32,6,3,200,'DAL','Illinois'),('103','Derrick','Favors',25,6,10,265,'UTA','Georgia Tech'),('105','Derrick','Rose',28,6,3,190,'NYK','Memphis'),('106','Derrick','Williams',25,6,8,240,'MIA','Arizona'),('107','Devin','Booker',20,6,6,206,'PHX','Kentucky'),('108','Devin','Harris',33,6,3,185,'DAL','Wisconsin'),('109','Dewayne','Dedmon',27,7,0,245,'SAS','Southern California'),('11','Alex','Abrines',23,6,6,190,'OKC','None'),('110','Deyonta','Davis',20,6,10,240,'MEM','Michigan State'),('111','Diamond','Stone',19,6,11,255,'LAC','Maryland'),('112','Dion','Waiters',24,6,4,220,'MIA','Syracuse'),('113','Dirk','Nowitzki',38,7,0,245,'DAL','None'),('114','Domantas','Sabonis',20,6,11,240,'OKC','Gonzaga'),('115','Dorian','Finney-Smith',23,6,8,220,'DAL','Florida'),('116','Doug','McDermott',24,6,8,219,'CHI','Creighton'),('117','Dragan','Bender',19,7,1,225,'PHX','None'),('118','Draymond','Green',26,6,7,230,'GSW','Michigan State'),('119','Dwight','Howard',30,6,11,265,'ATL','None'),('12','Alex','Len',23,7,1,260,'PHX','Maryland'),('120','Dwight','Powell',25,6,11,240,'DAL','Stanford'),('121','Dwyane','Wade',34,6,4,220,'CHI','Marquette'),('122','E\'Twaun','Moore',27,6,4,191,'NOP','Purdue'),('123','Ed','Davis',27,6,10,245,'POR','North Carolina'),('124','Edy','Tavares',24,7,3,260,'ATL','None'),('125','Elfrid','Payton',22,6,4,185,'ORL','Louisiana-Lafayette'),('126','Emmanuel','Mudiay',20,6,5,200,'DEN','None'),('127','Enes','Kanter',24,6,11,245,'OKC','Kentucky'),('128','Eric','Bledsoe',26,6,1,205,'PHX','Kentucky'),('129','Eric','Gordon',27,6,4,215,'HOU','Indiana'),('13','Alexis','Ajinca',28,7,2,248,'NOP','None'),('130','Ersan','Ilyasova',29,6,10,235,'PHI','None'),('131','Evan','Fournier',24,6,7,205,'ORL','None'),('132','Evan','Turner',28,6,7,220,'POR','Ohio State'),('133','Frank','Kaminsky',23,7,0,240,'CHA','Wisconsin'),('134','Fred','VanVleet',22,6,0,195,'TOR','Wichita State'),('135','Garrett','Temple',30,6,6,195,'SAC','Louisiana State'),('136','Gary','Harris',22,6,4,210,'DEN','Michigan State'),('137','George','Hill',30,6,3,188,'UTA','Indiana Purdue-India'),('138','Georges','Niang',23,6,8,230,'IND','Iowa State'),('139','Georgios','Papagiannis',19,7,1,240,'SAC','None'),('14','Allen','Crabbe',24,6,6,215,'POR','California'),('140','Gerald','Green',30,6,7,205,'BOS','None'),('141','Gerald','Henderson',28,6,5,215,'PHI','Duke'),('142','Giannis','Antetokounmpo',21,6,11,222,'MIL','None'),('143','Glenn','Robinson',22,6,6,222,'IND','Michigan'),('144','Goran','Dragic',30,6,3,190,'MIA','None'),('145','Gordon','Hayward',26,6,8,226,'UTA','Butler'),('146','Gorgui','Dieng',26,6,11,240,'MIN','Louisville'),('147','Greg','Monroe',26,6,11,265,'MIL','Georgetown'),('148','Greivis','Vasquez',29,6,6,217,'BKN','Maryland'),('149','Harrison','Barnes',24,6,8,225,'DAL','North Carolina'),('15','Alonzo','Gee',29,6,6,225,'DEN','Alabama'),('150','Hassan','Whiteside',27,7,0,265,'MIA','Marshall'),('151','Henry','Ellenson',19,6,11,245,'DET','Marquette'),('152','Hollis','Thompson',25,6,8,206,'PHI','Georgetown'),('153','Ian','Clark',25,6,3,175,'GSW','Belmont'),('154','Ian','Mahinmi',30,6,11,262,'WSH','None'),('155','Iman','Shumpert',26,6,5,220,'CLE','Georgia Tech'),('156','Isaiah','Canaan',25,6,0,201,'CHI','Murray State'),('157','Isaiah','Thomas',27,5,9,185,'BOS','Washington'),('158','Isaiah','Whitehead',21,6,4,213,'BKN','Seton Hall'),('159','Ish','Smith',28,6,0,175,'DET','Wake Forest'),('16','Amir','Johnson',29,6,9,240,'BOS','None'),('160','Ivica','Zubac',19,7,1,240,'LAL','None'),('161','J.J.','Barea',32,6,0,185,'DAL','Northeastern'),('162','JJ','Redick',32,6,4,190,'LAC','Duke'),('163','JR','Smith',31,6,6,225,'CLE','None'),('164','JaMychal','Green',26,6,9,227,'MEM','Alabama'),('165','JaVale','McGee',28,7,0,270,'GSW','Nevada'),('166','Jabari','Parker',21,6,8,250,'MIL','Duke'),('167','Jae','Crowder',26,6,6,235,'BOS','Marquette'),('168','Jahlil','Okafor',20,6,11,275,'PHI','Duke'),('169','Jake','Layman',22,6,9,210,'POR','Maryland'),('17','Anderson','Varejao',34,6,11,273,'GSW','None'),('170','Jakob','Poeltl',21,7,0,230,'TOR','Utah'),('171','Jamal','Crawford',36,6,5,195,'LAC','Michigan'),('172','Jamal','Murray',19,6,4,207,'DEN','Kentucky'),('173','Jameer','Nelson',34,6,0,190,'DEN','Saint Joseph\'s'),('174','James','Ennis',26,6,7,210,'MEM','Long Beach State'),('175','James','Harden',27,6,5,220,'HOU','Arizona State'),('176','James','Johnson',29,6,9,250,'MIA','Wake Forest'),('177','James','Jones',36,6,8,218,'CLE','Miami (FL)'),('178','James','Michael McAdoo',23,6,9,240,'GSW','North Carolina'),('179','James','Young',21,6,6,215,'BOS','Kentucky'),('18','Andre','Drummond',23,6,11,279,'DET','Connecticut'),('180','Jared','Dudley',31,6,7,225,'PHX','Boston College'),('181','Jarell','Martin',22,6,10,239,'MEM','Louisiana State'),('182','Jarnell','Stokes',22,6,9,255,'DEN','Tennessee'),('183','Jason','Smith',30,7,0,240,'WSH','Colorado State'),('184','Jason','Terry',39,6,2,185,'MIL','Arizona'),('185','Jaylen','Brown',20,6,7,225,'BOS','California'),('186','Jeff','Green',30,6,9,235,'ORL','Georgetown'),('187','Jeff','Teague',28,6,2,186,'IND','Wake Forest'),('188','Jeff','Withey',26,7,0,231,'UTA','Kansas'),('189','Jerami','Grant',22,6,9,210,'OKC','Syracuse'),('19','Andre','Iguodala',32,6,6,215,'GSW','Arizona'),('190','Jeremy','Lamb',24,6,5,185,'CHA','Connecticut'),('191','Jeremy','Lin',28,6,3,200,'BKN','Harvard'),('192','Jerian','Grant',24,6,4,198,'CHI','Notre Dame'),('193','Jerryd','Bayless',28,6,3,200,'PHI','Arizona'),('194','Jimmy','Butler',27,6,7,231,'CHI','Marquette'),('195','Joakim','Noah',31,6,11,230,'NYK','Florida'),('196','Jodie','Meeks',29,6,4,210,'ORL','Kentucky'),('197','Joe','Harris',25,6,6,219,'BKN','Virginia'),('198','Joe','Ingles',29,6,8,226,'UTA','None'),('199','Joe','Johnson',35,6,7,240,'UTA','Arkansas'),('2','Aaron','Brooks',31,6,0,161,'IND','Oregon'),('20','Andre','Roberson',25,6,7,210,'OKC','Colorado'),('200','Joe','Young',24,6,2,180,'IND','Oregon'),('201','Joel','Bolomboy',22,6,9,235,'UTA','Weber State'),('202','Joel','Embiid',22,7,0,250,'PHI','Kansas'),('203','Joffrey','Lauvergne',25,6,11,220,'OKC','None'),('204','John','Henson',25,6,11,229,'MIL','North Carolina'),('205','John','Jenkins',25,6,4,215,'PHX','Vanderbilt'),('206','John','Lucas III',34,5,11,166,'MIN','Oklahoma State'),('207','John','Wall',26,6,4,210,'WSH','Kentucky'),('208','Jon','Leuer',27,6,10,228,'DET','Wisconsin'),('209','Jonas','Jerebko',29,6,10,231,'BOS','None'),('21','Andrew','Bogut',32,7,0,260,'DAL','Utah'),('210','Jonas','Valanciunas',24,7,0,255,'TOR','None'),('211','Jonathan','Gibson',29,6,2,185,'DAL','New Mexico State'),('212','Jonathon','Simmons',27,6,6,195,'SAS','Houston'),('213','Jordan','Clarkson',24,6,5,194,'LAL','Missouri'),('214','Jordan','Farmar',30,6,2,180,'SAC','UCLA'),('215','Jordan','Hill',29,6,10,240,'MIN','Arizona'),('216','Jordan','McRae',25,6,5,179,'CLE','Tennessee'),('217','Jordan','Mickey',22,6,8,235,'BOS','Louisiana State'),('218','Jose','Calderon',35,6,3,200,'LAL','None'),('219','Josh','McRoberts',29,6,10,240,'MIA','Duke'),('22','Andrew','Harrison',22,6,6,213,'MEM','Kentucky'),('220','Josh','Richardson',23,6,6,200,'MIA','Tennessee'),('221','Jrue','Holiday',26,6,4,205,'NOP','UCLA'),('222','Juan','Hernangomez',21,6,9,230,'DEN','None'),('223','Julius','Randle',22,6,9,250,'LAL','Kentucky'),('224','Justin','Anderson',23,6,6,228,'DAL','Virginia'),('225','Justin','Hamilton',26,7,0,255,'BKN','Louisiana State'),('226','Justin','Holiday',27,6,6,185,'NYK','Washington'),('227','Justise','Winslow',20,6,7,225,'MIA','Duke'),('228','Jusuf','Nurkic',22,7,0,280,'DEN','None'),('229','KJ','McDaniels',23,6,6,205,'HOU','Clemson'),('23','Andrew','Nicholson',26,6,9,250,'WSH','St. Bonaventure'),('230','Karl-Anthony','Towns',21,7,0,244,'MIN','Kentucky'),('231','Kawhi','Leonard',25,6,7,230,'SAS','San Diego State'),('232','Kay','Felder',21,5,9,176,'CLE','None'),('233','Kelly','Olynyk',25,7,0,238,'BOS','Gonzaga'),('234','Kelly','Oubre',20,6,7,205,'WSH','Kansas'),('235','Kemba','Walker',26,6,1,184,'CHA','Connecticut'),('236','Kenneth','Faried',27,6,8,228,'DEN','Morehead State'),('237','Kent','Bazemore',27,6,5,201,'ATL','Old Dominion'),('238','Kentavious','Caldwell-Pope',23,6,5,205,'DET','Georgia'),('239','Kevin','Durant',28,6,9,240,'GSW','Texas'),('24','Andrew','Wiggins',21,6,8,199,'MIN','Kansas'),('240','Kevin','Love',28,6,10,251,'CLE','UCLA'),('241','Kevin','Seraphin',26,6,10,278,'IND','Le Moyne'),('242','Kevon','Looney',20,6,9,220,'GSW','UCLA'),('243','Klay','Thompson',26,6,7,215,'GSW','Washington State'),('244','Kosta','Koufos',27,7,0,265,'SAC','Ohio State'),('245','Kris','Dunn',22,6,4,205,'MIN','Providence'),('246','Kris','Humphries',31,6,9,235,'ATL','Minnesota'),('247','Kristaps','Porzingis',21,7,3,240,'NYK','None'),('248','Kyle','Anderson',23,6,9,230,'SAS','UCLA'),('249','Kyle','Korver',35,6,7,212,'ATL','Creighton'),('25','Anthony','Bennett',23,6,8,235,'BKN','Nevada-Las Vegas'),('250','Kyle','Lowry',30,6,0,205,'TOR','Villanova'),('251','Kyle','O\'Quinn',26,6,10,250,'NYK','Norfolk State'),('252','Kyle','Singler',28,6,8,228,'OKC','Duke'),('253','Kyle','Wiltjer',24,6,10,240,'HOU','Gonzaga'),('254','Kyrie','Irving',24,6,3,193,'CLE','Duke'),('255','LaMarcus','Aldridge',31,6,11,260,'SAS','Texas'),('256','Lance','Stephenson',26,6,5,230,'NOP','Cincinnati'),('257','Lance','Thomas',28,6,8,235,'NYK','Duke'),('258','Langston','Galloway',24,6,2,200,'NOP','Saint Joseph\'s'),('259','Larry','Nance Jr.',23,6,9,230,'LAL','Wyoming'),('26','Anthony','Brown',24,6,7,210,'NOP','Stanford'),('260','Lavoy','Allen',27,6,9,260,'IND','Temple'),('261','LeBron','James',31,6,8,250,'CLE','None'),('262','Leandro','Barbosa',34,6,3,194,'PHX','None'),('263','Lou','Williams',30,6,1,175,'LAL','None'),('264','Luc','Mbah a Moute',30,6,8,230,'LAC','UCLA'),('265','Lucas','Nogueira',24,7,0,220,'TOR','None'),('266','Luis','Scola',36,6,9,241,'BKN','None'),('267','Luke','Babbitt',27,6,9,225,'MIA','Nevada'),('268','Luol','Deng',31,6,9,220,'LAL','Duke'),('269','Malachi','Richardson',20,6,6,205,'SAC','Syracuse'),('27','Anthony','Davis',23,6,11,253,'NOP','Kentucky'),('270','Malcolm','Brogdon',23,6,5,215,'MIL','Virginia'),('271','Malcolm','Delaney',27,6,3,190,'ATL','Virginia Tech'),('272','Malik','Beasley',20,6,5,196,'DEN','Florida State'),('273','Manu','Ginobili',39,6,6,205,'SAS','None'),('274','Marc','Gasol',31,7,1,255,'MEM','None'),('275','Marcelo','Huertas',33,6,3,200,'LAL','None'),('276','Marcin','Gortat',32,6,11,240,'WSH','None'),('277','Marco','Belinelli',30,6,5,210,'CHA','None'),('278','Marcus','Morris',27,6,9,235,'DET','Kansas'),('279','Marcus','Smart',22,6,4,220,'BOS','Oklahoma State'),('28','Anthony','Morrow',31,6,5,210,'OKC','Georgia Tech'),('280','Marcus','Thornton',29,6,4,205,'WSH','Louisiana State'),('281','Mario','Hezonja',21,6,8,218,'ORL','None'),('282','Markieff','Morris',27,6,10,245,'WSH','Kansas'),('283','Marquese','Chriss',19,6,10,233,'PHX','Washington'),('284','Marreese','Speights',29,6,10,255,'LAC','Florida'),('285','Marshall','Plumlee',24,7,0,250,'NYK','Duke'),('286','Marvin','Williams',30,6,9,237,'CHA','North Carolina'),('287','Mason','Plumlee',26,6,11,255,'POR','Duke'),('288','Matt','Barnes',36,6,7,226,'SAC','UCLA'),('289','Matthew','Dellavedova',26,6,4,198,'MIL','Saint Mary\'s (CA)'),('29','Anthony','Tolliver',31,6,8,240,'SAC','Creighton'),('290','Maurice','Harkless',23,6,9,220,'POR','St. John\'s (NY)'),('291','Maurice','Ndour',24,6,9,200,'NYK','Ohio U.'),('292','Metta','World Peace',37,6,7,260,'LAL','St. John\'s (NY)'),('293','Meyers','Leonard',24,7,1,255,'POR','Illinois'),('294','Michael','Beasley',27,6,10,235,'MIL','Kansas State'),('295','Michael','Carter-Williams',25,6,6,190,'CHI','Syracuse'),('296','Michael','Gbinije',24,6,7,200,'DET','Syracuse'),('297','Michael','Kidd-Gilchrist',23,6,7,232,'CHA','Kentucky'),('298','Mike','Conley',29,6,1,175,'MEM','Ohio State'),('299','Mike','Dunleavy',36,6,9,230,'CLE','Duke'),('3','Aaron','Gordon',21,6,9,220,'ORL','Arizona'),('30','Archie','Goodwin',22,6,5,205,'NOP','Kentucky'),('300','Mike','Miller',36,6,8,218,'DEN','Florida'),('301','Mike','Muscala',25,6,11,240,'ATL','Bucknell'),('302','Mike','Scott',28,6,8,237,'ATL','Virginia'),('303','Miles','Plumlee',28,6,11,249,'MIL','Duke'),('304','Mindaugas','Kuzminskas',27,6,9,215,'NYK','None'),('305','Mirza','Teletovic',31,6,9,245,'MIL','None'),('306','Monta','Ellis',31,6,3,185,'IND','None'),('307','Montrezl','Harrell',22,6,8,240,'HOU','Louisville'),('308','Myles','Turner',20,6,11,243,'IND','Texas'),('309','Nemanja','Bjelica',28,6,10,225,'MIN','None'),('31','Arinze','Onuaku',29,6,9,255,'ORL','Syracuse'),('310','Nene',NULL,34,6,11,250,'HOU','None'),('311','Nick','Collison',36,6,10,255,'OKC','Kansas'),('312','Nick','Young',31,6,7,210,'LAL','Southern California'),('313','Nicolas','Batum',27,6,8,200,'CHA','None'),('314','Nicolas','Brussino',23,6,8,215,'DAL','None'),('315','Nicolas','Laprovittola',26,6,4,180,'SAS','None'),('316','Nik','Stauskas',23,6,6,205,'PHI','Michigan'),('317','Nikola','Jokic',21,6,10,250,'DEN','None'),('318','Nikola','Mirotic',25,6,10,238,'CHI','None'),('319','Nikola','Vucevic',26,7,0,260,'ORL','Southern California'),('32','Aron','Baynes',29,6,10,260,'DET','Washington State'),('320','Noah','Vonleh',21,6,9,245,'POR','Indiana'),('321','Norman','Powell',23,6,4,215,'TOR','UCLA'),('322','Omer','Asik',30,7,0,255,'NOP','None'),('323','Omri','Casspi',28,6,9,225,'SAC','None'),('324','Otto','Porter',23,6,8,198,'WSH','Georgetown'),('325','PJ','Tucker',31,6,6,245,'PHX','Texas'),('326','Pascal','Siakam',22,6,9,230,'TOR','New Mexico State'),('327','Pat','Connaughton',23,6,5,210,'POR','Notre Dame'),('328','Patrick','Beverley',28,6,1,185,'HOU','Arkansas'),('329','Patrick','McCaw',21,6,7,185,'GSW','Nevada-Las Vegas'),('33','Arron','Afflalo',31,6,5,210,'SAC','UCLA'),('330','Patrick','Patterson',27,6,9,235,'TOR','Kentucky'),('331','Patty','Mills',28,6,0,185,'SAS','Saint Mary\'s (CA)'),('332','Pau','Gasol',36,7,0,250,'SAS','None'),('333','Paul','George',26,6,9,220,'IND','Fresno State'),('334','Paul','Millsap',31,6,8,246,'ATL','Louisiana Tech'),('335','Paul','Pierce',39,6,7,235,'LAC','Kansas'),('336','Paul','Zipser',22,6,8,210,'CHI','None'),('337','Quincy','Acy',26,6,7,240,'DAL','Baylor'),('338','RJ','Hunter',23,6,5,185,'CHI','Georgia State'),('339','Rajon','Rondo',30,6,1,186,'CHI','Kentucky'),('34','Austin','Rivers',24,6,4,200,'LAC','Duke'),('340','Rakeem','Christmas',25,6,9,250,'IND','Syracuse'),('341','Ramon','Sessions',30,6,3,190,'CHA','Nevada'),('342','Randy','Foye',33,6,4,218,'BKN','Villanova'),('343','Rashad','Vaughn',20,6,6,202,'MIL','UNLV'),('344','Raul','Neto',24,6,1,179,'UTA','None'),('345','Raymond','Felton',32,6,1,205,'LAC','North Carolina'),('346','Reggie','Bullock',25,6,7,205,'DET','North Carolina'),('347','Richard','Jefferson',36,6,7,233,'CLE','Arizona'),('348','Richaun','Holmes',23,6,10,245,'PHI','Bowling Green'),('349','Ricky','Rubio',26,6,4,190,'MIN','None'),('35','Avery','Bradley',26,6,2,180,'BOS','Texas'),('350','Robert','Covington',25,6,9,215,'PHI','Tennessee State'),('351','Robin','Lopez',28,7,0,255,'CHI','Stanford'),('352','Rodney','Hood',24,6,8,206,'UTA','Duke'),('353','Rodney','McGruder',25,6,4,205,'MIA','Kansas State'),('354','Rodney','Stuckey',30,6,5,205,'IND','Eastern Washington'),('355','Ron','Baker',23,6,4,220,'NYK','Wichita State'),('356','Rondae','Hollis-Jefferson',21,6,7,214,'BKN','Arizona'),('357','Roy','Hibbert',29,7,2,270,'CHA','Georgetown'),('358','Rudy','Gay',30,6,8,230,'SAC','Connecticut'),('359','Rudy','Gobert',24,7,1,245,'UTA','None'),('36','Ben','McLemore',23,6,5,195,'SAC','Kansas'),('360','Russell','Westbrook',28,6,3,200,'OKC','UCLA'),('361','Ryan','Anderson',28,6,10,240,'HOU','California'),('362','Ryan','Kelly',25,6,11,230,'ATL','Duke'),('363','Salah','Mejri',30,7,2,245,'DAL','None'),('364','Sam','Dekker',22,6,9,230,'HOU','Wisconsin'),('365','Sasha','Vujacic',32,6,7,195,'NYK','None'),('366','Sean','Kilpatrick',26,6,4,219,'BKN','Cincinnati'),('367','Semaj','Christon',24,6,3,190,'OKC','Xavier'),('368','Serge','Ibaka',27,6,10,235,'ORL','None'),('369','Sergio','Rodriguez',30,6,3,176,'PHI','None'),('37','Beno','Udrih',34,6,3,205,'DET','None'),('370','Seth','Curry',26,6,2,185,'DAL','Duke'),('371','Shabazz','Muhammad',24,6,6,223,'MIN','UCLA'),('372','Shabazz','Napier',25,6,1,175,'POR','Connecticut'),('373','Shaun','Livingston',31,6,7,192,'GSW','None'),('374','Sheldon','McClellan',23,6,6,200,'WSH','Miami (Fla.)'),('375','Shelvin','Mack',26,6,3,203,'UTA','Butler'),('376','Skal','Labissiere',20,6,11,225,'SAC','Kentucky'),('377','Solomon','Hill',25,6,7,225,'NOP','Arizona'),('378','Spencer','Hawes',28,7,1,245,'CHA','Washington'),('379','Stanley','Johnson',20,6,7,245,'DET','Arizona'),('38','Bismack','Biyombo',24,6,9,255,'ORL','None'),('380','Stephen','Curry',28,6,3,190,'GSW','Davidson'),('381','Stephen','Zimmerman',20,7,0,240,'ORL','Nevada-Las Vegas'),('382','Steve','Novak',33,6,10,225,'MIL','Marquette'),('383','Steven','Adams',23,7,0,255,'OKC','Pittsburgh'),('384','TJ','McConnell',24,6,2,200,'PHI','Arizona'),('385','TJ','Warren',23,6,8,225,'PHX','North Carolina State'),('386','Taj','Gibson',31,6,9,236,'CHI','Southern California'),('387','Tarik','Black',25,6,9,250,'LAL','Kansas'),('388','Taurean','Prince',22,6,8,220,'ATL','Baylor'),('389','Terrence','Jones',24,6,9,255,'NOP','Kentucky'),('39','Blake','Griffin',27,6,10,251,'LAC','Oklahoma'),('390','Terrence','Ross',25,6,7,195,'TOR','Washington'),('391','Terry','Rozier',22,6,2,190,'BOS','Louisville'),('392','Thabo','Sefolosha',32,6,7,220,'ATL','None'),('393','Thaddeus','Young',28,6,8,221,'IND','Georgia Tech'),('394','Thomas','Robinson',25,6,10,237,'LAL','Kansas'),('395','Thon','Maker',19,7,1,223,'MIL','None'),('396','Tim','Frazier',26,6,1,170,'NOP','None'),('397','Tim','Hardaway Jr.',24,6,6,205,'ATL','Michigan'),('398','Tim','Quarterman',22,6,6,190,'POR','Louisiana State'),('399','Timofey','Mozgov',30,7,1,275,'LAL','None'),('4','Aaron','Harrison',22,6,6,210,'CHA','Kentucky'),('40','Boban','Marjanovic',28,7,3,290,'DET','None'),('400','Timothe','Luwawu-Cabarrot',21,6,6,205,'PHI','None'),('401','Tobias','Harris',24,6,9,235,'DET','Tennessee'),('402','Tomas','Satoransky',25,6,7,210,'WSH','None'),('403','Tony','Allen',34,6,4,213,'MEM','Oklahoma State'),('404','Tony','Parker',34,6,2,185,'SAS','None'),('405','Tony','Snell',25,6,7,217,'MIL','New Mexico'),('406','Treveon','Graham',23,6,6,226,'CHA','Virginia Commonwealt'),('407','Trevor','Ariza',31,6,8,215,'HOU','UCLA'),('408','Trevor','Booker',29,6,8,228,'BKN','Clemson'),('409','Trey','Burke',24,6,1,191,'WSH','Michigan'),('41','Bobby','Brown',32,6,2,175,'HOU','Cal State-Fullerton'),('410','Trey','Lyles',21,6,10,234,'UTA','Kentucky'),('411','Tristan','Thompson',25,6,9,238,'CLE','Texas'),('412','Troy','Daniels',25,6,4,205,'MEM','Virginia Commonwealt'),('413','Troy','Williams',21,6,7,210,'MEM','Indiana'),('414','Ty','Lawson',29,5,11,195,'SAC','North Carolina'),('415','Tyler','Ennis',22,6,3,194,'HOU','Syracuse'),('416','Tyler','Johnson',24,6,4,186,'MIA','Fresno State'),('417','Tyler','Ulis',20,5,10,150,'PHX','Kentucky'),('418','Tyler','Zeller',26,7,0,253,'BOS','North Carolina'),('419','Tyson','Chandler',34,7,1,240,'PHX','None'),('42','Bobby','Portis',21,6,11,246,'CHI','Arkansas'),('420','Tyus','Jones',20,6,2,195,'MIN','Duke'),('421','Udonis','Haslem',36,6,8,235,'MIA','Florida'),('422','Victor','Oladipo',24,6,4,210,'OKC','Indiana'),('423','Vince','Carter',39,6,6,220,'MEM','North Carolina'),('424','Wade','Baldwin',20,6,4,202,'MEM','Vanderbilt'),('425','Wayne','Ellington',29,6,4,200,'MIA','North Carolina'),('426','Wesley','Johnson',29,6,7,215,'LAC','Syracuse'),('427','Wesley','Matthews',30,6,5,220,'DAL','Marquette'),('428','Will','Barton',25,6,6,175,'DEN','Memphis'),('429','Willie','Cauley-Stein',23,7,0,240,'SAC','Kentucky'),('43','Bojan','Bogdanovic',27,6,8,225,'BKN','None'),('430','Willie','Reed',26,6,10,220,'MIA','Saint Louis'),('431','Willy','Hernangomez',22,6,11,240,'NYK','None'),('432','Wilson','Chandler',29,6,8,225,'DEN','DePaul'),('433','Yogi','Ferrell',23,6,0,180,'BKN','Indiana'),('434','Zach','LaVine',21,6,5,185,'MIN','UCLA'),('435','Zach','Randolph',35,6,9,260,'MEM','Michigan State'),('436','Zaza','Pachulia',32,6,11,275,'GSW','None'),('437','Lonzo','Ball',19,6,6,190,NULL,'UCLA'),('438','Josh','Hawkinson',20,6,10,220,NULL,'Washington State'),('439','Emmett','Naar',21,6,1,210,NULL,'Saint Mary\'s (CA)'),('44','Boris','Diaw',34,6,8,250,'UTA','None'),('440','Kyron','Cartwright',22,5,11,195,NULL,'Providence'),('441','Siyani','Chambers',19,6,0,185,NULL,'Harvard'),('442','Jaaron','Simmons',20,6,1,195,NULL,'Ohio State'),('443','De\'Aaron','Fox',21,6,3,208,NULL,'Kentucky'),('444','Paris','Lee',20,6,0,201,NULL,'Illinois'),('445','Lindsey','Drew',21,6,4,214,NULL,'Nevada'),('446','Jaquan','Lyle',20,6,5,223,NULL,'Ohio State'),('447','Matt','Farrell',19,6,0,198,NULL,'Notre Dame'),('448','Monte','Morris',20,6,2,204,NULL,'Iowa State'),('45','Bradley','Beal',23,6,5,207,'WSH','Florida'),('46','Brandon','Bass',31,6,8,250,'LAC','Louisiana State'),('47','Brandon','Ingram',19,6,9,190,'LAL','Duke'),('48','Brandon','Jennings',27,6,1,170,'NYK','None'),('49','Brandon','Knight',25,6,3,195,'PHX','Kentucky'),('5','Adreian','Payne',25,6,10,237,'MIN','Michigan State'),('50','Brandon','Rush',31,6,6,225,'MIN','Kansas'),('51','Brian','Roberts',31,6,1,173,'CHA','Dayton'),('52','Brook','Lopez',28,7,0,268,'BKN','Stanford'),('53','Bruno','Caboclo',21,6,9,205,'TOR','None'),('54','Bryn','Forbes',23,6,3,190,'SAS','Michigan'),('55','Buddy','Hield',22,6,4,214,'NOP','Oklahoma'),('56','CJ','McCollum',25,6,3,190,'POR','Lehigh'),('57','CJ','Miles',29,6,6,225,'IND','None'),('58','CJ','Watson',32,6,2,175,'ORL','Tennessee'),('59','CJ','Wilcox',25,6,5,195,'ORL','Washington'),('6','Al','Horford',30,6,10,245,'BOS','Florida'),('60','Carmelo','Anthony',32,6,8,240,'NYK','Syracuse'),('61','Chandler','Parsons',28,6,10,230,'MEM','Florida'),('62','Channing','Frye',33,6,11,255,'CLE','Arizona'),('63','Cheick','Diallo',20,6,9,220,'NOP','Kansas'),('64','Chris','Andersen',38,6,10,245,'CLE','Blinn'),('65','Chris','McCullough',21,6,9,215,'BKN','Syracuse'),('66','Chris','Paul',31,6,0,175,'LAC','Wake Forest'),('67','Christian','Wood',21,6,11,220,'CHA','Nevada-Las Vegas'),('68','Clint','Capela',22,6,10,240,'HOU','None'),('69','Cody','Zeller',24,7,0,240,'CHA','Indiana'),('7','Al','Jefferson',31,6,10,289,'IND','None'),('70','Cole','Aldrich',28,6,11,250,'MIN','Kansas'),('71','Corey','Brewer',30,6,9,186,'HOU','Florida'),('72','Cory','Joseph',25,6,3,190,'TOR','Texas'),('73','Courtney','Lee',31,6,5,200,'NYK','Western Kentucky'),('74','Cristiano','Felicio',24,6,9,266,'CHI','None'),('75','D\'Angelo','Russell',20,6,5,195,'LAL','Ohio State'),('76','D.J.','Augustin',29,6,0,183,'ORL','Texas'),('77','Damian','Lillard',26,6,3,195,'POR','Weber State'),('78','Damjan','Rudez',30,6,10,228,'ORL','None'),('79','Daniel','Ochefu',22,6,11,245,'WSH','Villanova'),('8','Al-Farouq','Aminu',26,6,9,220,'POR','Wake Forest'),('80','Danilo','Gallinari',28,6,10,225,'DEN','None'),('81','Danny','Green',29,6,6,215,'SAS','North Carolina'),('82','Dante','Cunningham',29,6,8,230,'NOP','Villanova'),('83','Dante','Exum',21,6,6,190,'UTA','None'),('84','Danuel','House',23,6,7,215,'WSH','Texas A&M'),('85','Dario','Saric',22,6,10,223,'PHI','None'),('86','Darrell','Arthur',28,6,9,235,'DEN','Kansas'),('87','Darren','Collison',29,6,0,175,'SAC','UCLA'),('88','Darrun','Hilliard',23,6,6,205,'DET','Villanova'),('89','David','Lee',33,6,9,245,'SAS','Florida'),('9','Alan','Anderson',34,6,6,220,'LAC','Michigan State'),('90','David','West',36,6,9,250,'GSW','Xavier'),('91','Davis','Bertans',24,6,10,210,'SAS','None'),('92','DeAndre','Jordan',28,6,11,265,'LAC','Texas A&M'),('93','DeAndre','Liggins',28,6,6,209,'CLE','Kentucky'),('94','DeAndre\'','Bembry',22,6,6,210,'ATL','Saint Joseph\'s'),('95','DeMar','DeRozan',27,6,7,220,'TOR','Southern California'),('96','DeMarcus','Cousins',26,6,11,270,'SAC','Kentucky'),('97','DeMarre','Carroll',30,6,8,212,'TOR','Missouri'),('98','Dejounte','Murray',20,6,5,170,'SAS','Washington'),('99','Demetrius','Jackson',22,6,1,201,'BOS','Notre Dame');
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_stats`
--

DROP TABLE IF EXISTS `player_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_stats` (
  `player_id` varchar(20) DEFAULT NULL,
  `field_goals_made` float DEFAULT NULL,
  `free_throws_made` float DEFAULT NULL,
  `blocks` float DEFAULT NULL,
  `steals` float DEFAULT NULL,
  `field_goals_attempted` float DEFAULT NULL,
  `games_played` float DEFAULT NULL,
  `minutes` float DEFAULT NULL,
  `points_per_game` float DEFAULT NULL,
  `free_throws_attempted` float DEFAULT NULL,
  `rebounds` float DEFAULT NULL,
  `assists` float DEFAULT NULL,
  `turnovers` float DEFAULT NULL,
  `personal_fouls` float DEFAULT NULL,
  KEY `player_id` (`player_id`),
  CONSTRAINT `player_stats_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_stats`
--

LOCK TABLES `player_stats` WRITE;
/*!40000 ALTER TABLE `player_stats` DISABLE KEYS */;
INSERT INTO `player_stats` VALUES ('1',0.4,0.3,0.3,0,1,7,3.4,1.3,0.6,1.1,0.3,0,0.1),('2',2.8,0.6,0.3,0.6,6.3,16,16,7.1,0.7,1.1,2.4,1.5,1.9),('3',4,1.1,0.6,0.8,9.7,20,26,9.9,1.9,4.5,1.7,1.1,1.9),('4',0,0.3,0,0,1,4,3.6,0.3,0.5,0.5,0.5,0,0.5),('5',2.1,1.6,0.6,0.6,4,7,9.4,6.1,1.9,2,0.4,0.7,2.1),('6',6.3,1.1,2.9,0.7,11.9,9,32.4,15.3,1.3,6.8,4.8,1.3,2.4),('7',3.4,0.5,0.3,0.2,7.2,19,15.5,7.3,0.7,4.3,1,0.6,2.1),('8',2.1,1,0.9,1.5,7.8,8,26.1,6.4,1.9,6.6,1.6,1.5,1.3),('9',1,0,0,0,3,2,7.2,3,0,1,0.5,0.5,2),('10',2.1,0.9,1,0.6,3.1,7,10.9,5.1,1.7,5.3,0.1,1,2),('11',1.4,0.6,0.1,0.3,4.1,16,12.6,4.3,0.7,0.9,0.4,0.8,0.9),('12',3.3,2.3,1.6,0.6,6.6,19,23.8,8.8,3.3,8.5,0.7,1.6,3.5),('13',1.4,0.3,0.6,0.1,3.7,9,12,3.2,0.4,3.4,0.1,0.6,1.6),('14',3.1,1.4,0.3,0.5,7.3,20,27.8,8.9,1.6,2.7,1.4,0.9,2.2),('15',0.4,0.6,0.1,0.6,1.4,8,9.4,1.4,1.1,1.5,0.8,0.3,1.1),('16',2.6,1.1,0.6,0.6,4.8,19,20.5,6.5,1.3,4.1,2,0.9,2.7),('17',0.4,1.4,0.2,0.2,1,5,5.3,2.2,1.6,1.8,0.8,0.4,1),('18',6.2,1.9,1.1,1.6,11.9,20,29.4,14.3,3.9,13.3,1.3,2,2.4),('19',2.3,0.4,0.3,1,5.2,19,25,5.8,0.8,3.1,3.7,0.6,1.4),('20',2.9,0.3,1.1,1.3,6.3,20,30.3,7,1.3,4.6,1.2,0.6,2.6),('21',1.8,0.2,0.9,0.6,4,14,26.2,3.8,0.8,10.6,2.4,1.9,3.6),('22',1.9,2.3,0.5,1.3,6.1,19,26.5,6.9,3,2.3,3.7,1.6,3.5),('23',1.8,0.4,0.3,0.5,4,12,10.5,4,0.8,1.7,0.2,0.4,1.8),('24',7.7,5.6,0.4,0.5,18.1,19,36.4,22.5,7.3,4.1,2.4,2.5,1.9),('25',1.7,1.1,0,0.3,4.2,12,10.8,5,1.7,3.4,0.6,0.3,0.8),('26',1.5,0,0.2,0.5,3.2,6,12.7,3.7,0,2.2,0.5,0.5,1.3),('27',11.1,8.7,2.7,1.7,21.5,19,37.2,31.5,10.6,10.9,2.3,2.3,2.1),('28',2.3,0.5,0.1,0.2,5,14,12.8,5.9,0.6,0.4,0.7,0.3,0.6),('29',0.9,0.6,0,0.1,2.4,8,12.1,2.8,0.6,2,0.6,0.5,1.1),('30',0.7,3.3,0.3,0,1.7,3,9.9,5,3.3,0,0.3,0,0.3),('31',0.3,0,0.3,0,0.3,3,3.9,0.7,0,0.3,0,0,0.7),('32',1.6,1.5,0.4,0.3,3.6,21,16.5,4.8,1.8,4.2,0.4,1.1,2.3),('33',3,1.7,0.1,0.3,7.1,19,26.2,8.4,1.9,2.5,1.2,0.2,1.7),('34',3,1,0.2,0.7,7.3,21,22.4,7.9,1.6,1.7,2,1,2.1),('35',7.1,1.2,0.3,1.1,15.3,19,35.9,17.6,1.5,7.8,2.6,1.7,2.6),('36',2.5,0.7,0.1,0.3,5.7,15,15.5,6.4,0.9,1.3,0.7,0.8,1.1),('37',2.9,0.9,0,0.3,6.3,21,17.5,7,1,1.8,3.5,0.9,0.9),('38',1.8,1.5,1.4,0.2,4.2,19,25.3,5.1,3,8.4,1,1.5,2.5),('39',7.6,5.7,0.6,1.2,15.7,20,33,21,7.4,8.6,4.8,1.9,2.6),('40',0.8,0.7,0.3,0.1,2.7,9,5.1,2.2,0.8,1.9,0,0.1,0.8),('41',0.2,0,0,0,2,6,3.7,0.3,0,0.3,0,0.2,0.3),('42',1.8,0.5,0.1,0.1,3.6,16,11.4,4.3,0.8,3.2,0.7,0.4,1.5),('43',5,3,0.1,0.4,11.2,19,27.7,14.6,3.5,3.5,1.4,1.5,1.6),('44',1.4,0.4,0,0.3,3.9,11,19.6,3.4,0.5,2,1.5,1.1,2),('45',7.6,3.7,0.5,0.9,16.9,15,34.5,21.7,4.5,3.1,2.9,1.8,2.1),('46',1.5,0.5,0.2,0.1,2.8,12,8.9,3.6,0.5,1.4,0.4,0.3,0.8),('47',2.9,1.8,0.4,0.7,7.7,21,25.9,8.1,2.3,3.8,1.8,1.3,1.6),('48',2.3,0.9,0,1.1,6.3,19,21.5,6.5,1.3,2.8,5.1,1.6,1.7),('49',4.4,3.1,0,0.6,11.9,19,24.9,13.1,3.5,2.8,2.8,2.2,1.7),('50',0.6,0.1,0.2,0.2,2.4,9,10.7,1.6,0.2,1,0.7,0.4,0.4),('51',0.2,1,0,0,1.4,5,4.3,1.4,1.2,0.8,0.4,0,0),('52',6.9,3.6,1.6,0.6,15.2,17,28,19.6,4.4,5.2,2.1,2.1,2.1),('53',0.5,0,0,1,1,2,3.7,1.5,0,0.5,0.5,0.5,0.5),('54',0.4,0.1,0,0.1,1.3,9,5.6,1.1,0.1,0.4,0.1,0,0.6),('55',2.7,0.6,0.2,0.3,7.5,20,16,6.9,0.6,2.2,1,0.8,1.3),('56',8.2,3.2,0.5,1.3,17.5,20,34.6,22.2,3.5,3.9,3.7,2.2,3.2),('57',4.6,1.5,0.6,1,9.4,13,22.8,13,1.6,2.8,0.8,0.5,1.8),('58',0.6,0.6,0,0.6,2.3,17,12.2,2.2,0.8,1.2,1,0.2,0.8),('59',0.3,0.3,0,0,1,8,5.6,1,0.3,0.4,0.6,0.4,0.1),('60',8.2,4.1,0.3,1.2,18.9,19,33.9,22.6,4.7,6.2,2.6,1.9,2.9),('61',3,0.8,0.3,0.3,7.7,6,21.1,7.7,1,3,0.8,1.3,0.8),('62',3.7,0.8,0.8,0.4,8.2,13,18,10.8,0.9,3.2,0.6,0.7,1.9),('63',0,0,0.5,0,1,2,3.6,0,0,0.5,0,0,0),('64',0.8,1,0.4,0.3,2.1,8,8.9,2.5,1.5,2.8,0.6,0.6,1.5),('65',1.2,0.1,0.2,0,2.7,9,5.5,2.7,0.1,1.6,0.1,0.2,0.4),('66',5.7,4.3,0.2,2.6,12.5,21,31.3,17.8,4.8,5.3,9,2.2,2.3),('67',0,0,0,0,1,1,3.3,0,0,2,0,0,0),('68',5.6,1,1.9,0.4,8.8,20,26.3,12.1,2.2,8.4,0.8,1.3,2.7),('69',4.1,2.6,1.1,0.5,6.8,16,24.2,10.8,4.3,5.9,1.3,0.8,3.3),('70',1.2,0.5,0.5,0.6,2.1,19,12.3,2.8,0.7,3.8,0.5,0.3,2.2),('71',1.7,0.6,0.2,0.5,3.8,20,14.8,4.3,0.9,2.2,1,0.6,1.8),('72',3.2,1.5,0.1,0.8,7.1,19,21.3,8.4,1.9,2.6,2.2,1,1.5),('73',3.8,0.6,0.3,0.9,8.6,18,29.7,9.5,0.7,2.8,1.8,0.9,2),('74',0.9,0.3,0.1,0.2,2.5,11,9.4,2.1,0.4,3.2,0.5,0.4,1.3),('75',5.7,2.2,0.3,1.3,13.8,13,26.8,16.1,2.9,3.4,4.8,3,2.3),('76',3.1,1.7,0,0.4,7.6,20,19.8,9.3,1.9,1.2,3,1.4,1.4),('77',9.1,7.6,0.2,1,19.3,20,35.6,28.2,8.6,4.9,5.5,3,2.6),('78',0.5,0,0,0.5,1.6,11,8.9,1.5,0,0.9,0.2,0.5,0.5),('79',0.3,0,0,0,1,3,2.7,0.7,0,1,0,0.3,0.7),('80',4.9,5.1,0.4,0.6,12.1,16,36.1,16.8,6,4.6,2.1,1.4,1.3),('81',2.6,0.7,0.8,0.7,5.7,12,26.5,7.6,0.8,3.2,2.3,0.9,1.8),('82',2.2,0.1,0.7,0.6,5.6,15,23.5,5.6,0.3,3.9,0.5,0.7,1.8),('83',2.4,0.9,0.4,0.2,6.1,19,20.6,6.4,1.2,2.4,1.5,1,2.2),('84',0,0,0,0,0,1,0.8,0,0,1,0,0,0),('85',3.3,0.9,0.3,0.4,9.1,19,24.6,8.7,1.4,5.6,1.9,2.1,1.9),('86',2.3,0,0.2,0.2,5.3,6,13.5,5.7,0,2,0.7,0.7,1.7),('87',4.6,2.8,0.1,1.4,9.5,11,29.9,12.9,3.3,2,4.7,2,1.6),('88',1.2,0.9,0.1,0.2,3.1,11,10.4,3.7,1.3,0.8,1.2,0.7,1.5),('89',2.7,1.4,0.5,0.5,4.8,20,17.1,6.7,1.8,5,1.5,0.8,1.7),('90',1.6,0.5,0.5,0.6,3.2,19,10.5,3.7,0.8,2.5,1.4,1.3,1.5),('91',1.3,0.2,0.6,0.1,2.8,16,11.6,3.8,0.3,1.2,0.3,0.3,0.9),('92',4.3,2.6,1.7,0.5,6.9,21,31.5,11.1,4.9,12.8,0.7,1.6,2.8),('93',0.7,0.6,0.1,0.4,1.5,10,8.1,2,0.7,1.3,0.7,0.7,1),('94',0.6,0.1,0,0.1,1.7,7,5,1.3,0.3,0.7,0.3,0.3,0),('95',10.1,7.5,0.1,1.3,21.1,19,36,28.3,9.1,5.4,4.3,2.7,1.9),('96',9.8,7.3,1.3,1.2,21.1,19,34,28.7,9.8,10.4,3.2,2.8,4.1),('97',3.7,1.2,0.6,0.9,8,15,25.7,10.3,1.6,3.5,0.9,0.3,2),('98',0.4,0.4,0,0,1.3,11,4.2,1.3,0.7,0.5,0.7,0.7,0.6),('99',1,1,0,0,1.3,3,5,3.3,2,1,0.7,0,0),('100',6,2.4,0.2,0.7,13.8,20,29.6,15.6,3.1,3.1,6,3.2,1.3),('101',0.7,0.1,0.1,0.3,2.6,14,9.3,2.1,0.1,1.2,0.4,0.3,1.2),('102',4.2,1.3,0.2,0.3,11,10,27.6,11.1,1.6,2.6,5.1,2.4,2.5),('103',4.2,2,1,1,8.9,11,24,10.5,3.3,6.5,0.6,1.3,2.3),('105',6.6,3.2,0.5,0.7,14.9,19,32.2,16.8,3.7,4.2,4.8,2.6,1.8),('106',2.5,0.8,0.2,0.3,6.4,11,15.5,6.4,1.6,2.3,0.4,0.2,0.8),('107',7.1,3.3,0.3,0.9,17,18,33.4,19.1,4.2,2.6,2.6,2.4,2.9),('108',0.5,0,0,0,3,2,11,1.5,0,0.5,0.5,0,1.5),('109',1.5,0.9,1.4,0.6,3.4,14,13.9,3.9,1.2,5.4,0.1,0.6,2.4),('110',1,0.4,0.6,0.1,1.8,16,8.2,2.4,0.6,2,0.1,0.4,1.5),('111',0.7,0.7,0.3,0,2.3,3,4.6,2,0.7,1,0,0.3,1.3),('112',5.5,1.9,0.6,0.9,14.3,16,31.8,14.2,2.9,3.4,4,2.2,2.6),('113',4.8,1.4,0.6,0.6,13.4,5,26.1,12.2,1.4,6.4,1.4,1,1.8),('114',2.9,0.1,0.3,0.7,6.1,20,21.6,6.9,0.1,3.3,1.5,1.2,2.8),('115',1.3,0.6,0.2,0.4,3.8,17,18,3.8,0.8,2,0.8,0.4,1.5),('116',4.1,1.4,0.1,0.3,8,9,23.7,10.6,1.7,2.7,1.3,0.7,1.3),('117',1.1,0,0.4,0.1,2.9,14,10.2,2.7,0.2,1.3,0.3,0.6,1.1),('118',3.9,2,1.7,2.1,9.2,18,33.7,10.7,2.9,9,7.1,1.9,2.9),('119',5.5,2.8,1.6,1.1,9.1,19,29,13.8,5.8,12.5,1.1,2.6,3.5),('120',2.3,1.2,0.7,1.5,5.2,18,19.3,5.8,1.6,4.6,0.6,0.5,1.9),('121',7.2,3.4,0.6,1.6,16.2,17,30.8,19.1,4,4.3,3.1,2.2,2.1),('122',4.6,0.8,0.4,0.8,10.2,19,26.7,11.1,1.1,2.3,3.1,1.3,1.9),('123',1.5,0.8,0.6,0.4,3.1,20,18,3.8,1.4,5.1,0.7,0.9,3.2),('124',1,0,0,0,1,1,3.6,2,2,1,0,0,0),('125',4.2,1.3,0.7,1.3,9.9,20,29.1,10.1,2.2,3.9,5.3,2,2.1),('126',4.7,3.5,0.3,0.9,13.4,19,31.7,14,4.4,4.7,4.4,3.3,2.1),('127',5.2,2.3,0.8,0.4,9.2,20,19,12.8,2.8,5.9,0.6,1.3,2.2),('128',6.5,4.7,0.3,1.3,14.8,19,32.5,18.8,5.9,5.9,5.3,3.1,3),('129',5.8,1.8,0.5,0.8,13.6,20,31.4,16.5,2.3,3,2.6,1.9,2.2),('130',4.2,1.5,0.2,0.4,9.3,19,24.7,11.4,1.8,5.4,1.3,1.2,2.2),('131',6.1,3.8,0,1.1,13.7,20,34,17.8,4.5,3.1,3.4,2.4,2.6),('132',3.6,1.4,0.3,0.7,8.6,20,24.7,9.1,1.5,4,2.8,1.3,1.7),('133',4.2,1.2,0.4,0.5,10.5,17,26.3,10.9,1.6,4.5,2.7,1.2,1.5),('134',0.3,0,0,0.5,0.8,4,2.2,0.5,0,0,0,0.3,0.3),('135',1.9,0.5,0.5,0.9,4.8,19,21.5,5.3,0.6,2.5,1.7,0.8,1.4),('136',4.2,1.6,0.2,0.4,9.2,5,22.7,10.8,2.4,3.2,2.4,1.2,2),('137',7.1,3.5,0.2,1.1,13.3,11,32.7,20,3.9,3.5,4.2,1.4,2.4),('138',0.3,0.2,0,0.1,2.1,13,5.5,0.8,0.2,1,0.4,0.3,0.4),('139',1,0,0,0,1,1,5.8,2,0,1,0,1,3),('140',1.5,0.4,0.1,0.1,4.7,10,10.9,4.1,0.4,2,1.5,0.6,1.1),('141',3.9,1.1,0.2,0.8,8.6,18,24.5,9.8,1.4,2.6,1.4,0.8,2.2),('142',8.3,5.2,2.2,2.2,15.8,18,34.5,22.4,6.7,8.6,6.1,3.4,3.8),('143',2.7,0.8,0.2,0.5,5.9,17,19.8,7,1.2,3.2,0.6,0.5,1.1),('144',5.9,3.7,0.2,1,13.9,14,32.8,17,4.8,3.6,6.6,2.6,2.9),('145',7.3,6.1,0.2,0.9,16.7,14,35.8,22.1,6.7,6.6,4.1,1.8,1.7),('146',4.1,1.7,1.2,1,7.9,19,31.1,10.1,2.3,8.1,2.5,2,3.4),('147',3.2,2.3,0.6,1.4,6.7,17,18.4,8.8,2.5,6.6,2.2,1.5,1.8),('148',0.7,0.7,0.3,0.3,2.7,3,12.9,2.3,1,0.7,1.7,0.3,2),('149',8.2,3,0.2,0.8,17.9,18,37.5,20.3,3.4,5.8,1.2,1.4,1.7),('150',7.2,2.8,2.4,0.8,13.1,19,32.8,17.3,5.2,14.8,0.7,2.1,3.4),('151',0.2,0,0,0,0.6,5,2.8,0.4,0,1.2,0.2,0,0),('152',2.6,0.6,0.2,0.6,6,19,19.8,6.8,0.8,3.2,0.9,0.3,2.1),('153',2.4,0.4,0.1,0.4,5,16,13.2,6.4,0.6,1.4,0.8,0.4,0.9),('154',0,1,1,1,1,1,14.1,1,2,1,0,2,3),('155',2.2,1.1,0.4,1,4.6,17,21.7,6.5,1.2,2.5,1.9,1.4,2.1),('156',2.4,1.1,0.1,0.7,6.2,18,20.2,7.1,1.2,1.6,1.1,0.6,1.3),('157',7.9,7.8,0.2,0.8,18.8,19,33.3,25.7,8.8,2.6,6.3,2.3,2.4),('158',2.2,0.9,0.6,0.6,6.1,15,22.3,5.7,1.1,2.4,2.9,2.2,2.5),('159',4.6,1.2,0.3,1,10.7,21,29.6,10.8,1.5,3,6.4,1.5,1.7),('160',1,0.3,0,0.3,2,3,9,2.3,0.7,2,0,0.3,2),('161',5.7,3,0.1,0.7,13.7,9,33.1,16.3,3.1,3.4,5.4,2,0.9),('162',5.4,2.4,0.2,0.8,10.9,20,26.7,15.6,2.7,2,1.1,1.7,1.4),('163',2.7,0.4,0.5,1.5,8.7,15,30.6,8.1,0.4,2.3,1.3,0.7,2.7),('164',3.5,1.7,0.7,0.7,7,20,29.1,9.3,2.2,6.5,1.1,1.3,3.8),('165',1.7,0.6,0.7,0.1,2.5,15,6.6,3.9,1.3,1.9,0.3,0.9,1.1),('166',7.2,3.1,0.2,1.2,15.6,18,32.5,18.6,4.1,5.9,2.2,1.4,1.7),('167',5,1.2,0.5,1.3,10.2,11,28.8,13.4,1.3,4.9,2.2,1.4,2.5),('168',4.9,1.2,1.2,0.3,9.6,18,21.5,11,2.4,4.4,0.8,1.3,2.4),('169',1.3,0.3,0.1,0.4,2.7,12,7,3.5,0.4,0.8,0.5,0.3,1),('170',1.2,0.8,0.4,0.4,2.7,10,14.1,3.2,1.2,4,0.4,0.4,3),('171',4.2,2,0,0.7,10.4,21,25.3,11.9,2.3,1.5,2,1.1,1.2),('172',3.4,1.4,0.3,0.4,8.9,19,21.9,9.9,1.7,2.8,2,1.5,1.9),('173',3.6,0.7,0.1,0.4,8.1,19,26.2,9.4,0.8,2.6,4.3,1.9,3.2),('174',3,2.1,0.1,0.9,6.8,14,29.2,9.1,2.6,5.3,1.4,1.1,3.1),('175',8.4,8.6,0.4,1.3,19,20,37.2,28.3,10.4,7.6,11.8,5.6,2.8),('176',3.7,1.7,1.1,0.8,7.8,19,24.8,10.3,2.2,4.7,1.9,1.7,2.5),('177',0.9,0.2,0.2,0.1,1.5,10,5,2.8,0.2,0.3,0.2,0.3,0.4),('178',0.8,0.1,0.3,0.1,1.8,8,6.3,1.6,0.3,0.8,0.4,0,0.1),('179',0.5,0,0,0.3,1.3,11,5.8,1.3,0,1,0.3,0.1,0.2),('180',3.1,1.1,0.2,0.8,6.3,18,25.3,8.8,1.7,3.7,2.1,1.2,2.8),('181',1.6,1.1,0.4,0.4,4.4,19,14.6,4.5,1.4,4.1,0.1,1,2.3),('182',0.5,0.5,0,0.5,0.5,2,3.3,1.5,1,1,1,0,1.5),('183',1.2,0.1,0.4,0.2,3.2,17,11.9,2.6,0.1,2.4,0.2,0.9,2.2),('184',1.1,0.3,0.3,0.5,3.3,13,18.1,3.2,0.4,1.2,1.2,0.5,1.2),('185',1.8,0.8,0.3,0.5,4.4,19,13.4,4.9,1.4,2,0.7,0.7,1.6),('186',2.8,1.8,0.4,0.3,8.1,19,22.9,8.3,2.2,3.3,1.5,1.1,1.4),('187',5.1,4.1,0.7,2,12.1,19,31.5,15.1,4.8,3.9,6.8,2.7,2.4),('188',1,0.9,0.9,0.4,1.7,16,10.1,2.9,1.2,2.4,0.1,0.4,1.4),('189',2.3,1.2,1.1,0.5,4.8,19,19.9,6.3,2.5,2.8,0.3,0.7,1.9),('190',3.6,2,0.5,0.4,7.9,8,17.2,9.8,2.5,6,1,0.9,1),('191',5.2,3.4,0.6,1.4,11.6,5,26.9,15,4.4,3.8,6.2,2.4,0.4),('192',1.4,0.8,0.1,0.9,4.5,12,12.1,4,0.8,1.5,1.3,0.3,1.2),('193',3.7,3,0,0,10.7,3,23.8,11,3.3,4,4.3,3,1.3),('194',7.8,8.7,0.2,1.7,16.6,18,35.9,25.6,9.9,6.5,4.1,2,1.7),('195',1.8,0.4,0.9,0.8,3.9,15,22.5,4,1.4,8.1,3.1,1.1,2.5),('196',2,4,0,3,6,1,16.9,10,4,1,0,1,1),('197',3.6,0.7,0.1,0.7,8.1,19,24.7,9.6,1.1,2.7,1.4,1.4,2.5),('198',1.8,0.6,0.1,0.7,3.8,20,16,5.1,0.8,1.8,1.6,0.6,1.7),('199',3.5,0.9,0.1,0.5,7.6,20,24.8,9.2,1,3.5,2.1,0.8,1.1),('200',1,0.4,0,0.1,2.9,14,6.1,2.6,0.6,0.8,0.7,0.1,0.3),('201',0.3,0.1,0.3,0.1,0.4,7,2.1,0.7,0.3,1.1,0.1,0.1,0.1),('202',6.3,4.7,2.2,0.5,13.2,13,23.1,18.7,6.1,7.9,1.7,3.8,3.4),('203',2.3,0.3,0.2,0.5,4.9,18,14.8,5.8,0.7,3.6,0.8,0.6,1.7),('204',2.8,1.5,1.5,0.4,5.4,16,19.1,7.1,2.1,5.9,1.1,1,2.8),('205',0,1,0,0,1,2,2.8,1,1,0.5,0,0,0),('206',0.2,0,0,0.4,0.8,5,2.1,0.4,0,0,0.2,0,0),('207',8.1,4.9,0.6,2,18.3,16,35.5,22.3,5.9,4.4,9.6,4.5,2.5),('208',4.2,1.3,0.5,0.4,8.6,21,26.9,10.7,1.4,6.9,1.4,1,2.1),('209',1.9,0.4,0.3,0.6,3.9,19,17.3,4.9,0.5,3.5,0.6,0.6,1.7),('210',5.2,2.7,0.9,0.4,9.4,17,28.6,13.2,3.3,9.6,0.8,1.6,2.6),('211',3,2.4,0,0.8,7.4,8,17.7,9.6,3.3,1.9,2.3,2.1,1.5),('212',2,1.6,0.4,0.8,4.7,20,18.8,5.7,2.1,2.1,2.1,1,1.6),('213',6,2,0.1,1.8,13.4,21,28.2,15.1,2.4,2.7,2.2,2,1.8),('214',2,0,0,1,6,2,17.7,6,0,1.5,4.5,1.5,0.5),('215',1,1,0,0,1.5,2,5.4,3,1,3,0,1,1.5),('216',1.5,0.4,0.1,0.3,4.9,11,10.5,3.7,0.5,1.3,0.6,0.3,0.9),('217',1,0.3,0,0.1,2.1,8,8.2,2.3,0.6,1.8,0.4,0.5,1),('218',2,0.3,0.1,0.4,4,13,14.4,5.1,0.3,2,2.7,1.6,1.1),('219',1.3,0.2,0.3,0.5,4.6,10,13.5,2.8,0.4,3.6,1.7,0.6,1.3),('220',4.2,0.7,0.5,0.8,10.5,13,28.1,10.9,1,3.1,1.8,1.2,2.6),('221',6.4,1.6,0.5,1,13.4,8,27.5,16.1,2.6,2.9,6,2.6,2.6),('222',1.1,0.8,0.3,0.4,2.4,15,11.9,3.4,1.4,2.7,0.4,0.4,1.1),('223',5.1,2.6,0.6,0.7,9.8,18,27.2,12.9,3.6,8.8,3.6,3.1,3.2),('224',2.8,1.7,0.5,0.7,7.4,18,20.8,8.1,2.2,4.1,1,1.2,1.9),('225',2.7,0.6,0.5,0.7,6.1,19,22.3,7.3,0.8,4.3,0.9,0.7,1.7),('226',2.3,0.8,0.5,0.7,5.8,19,18.9,6.4,0.9,3,1,0.7,1.5),('227',4.7,1.6,0.3,1.7,14,9,35.9,11.6,2.1,4.7,3.9,1.6,3.2),('228',4.1,1.5,1.1,0.7,8.3,19,22,9.7,2.9,7.6,1.5,2.4,2.3),('229',1.8,0.4,0.6,0.3,3.5,13,12,4.5,0.5,1.4,0.2,0.4,1),('230',8.5,3.7,1.5,0.8,17.5,19,34.8,22.3,4.8,9.9,2.4,2.2,3.1),('231',7.9,6.6,0.5,2.2,17.5,20,33.9,24.3,7.2,6,3,1.9,1.6),('232',0.9,1.1,0.1,0,2.7,7,9,2.9,1.4,1.1,1.7,0.9,0.7),('233',3.2,1.1,0.2,0.5,6.9,13,22.7,8.8,1.2,4.2,1.7,1.2,2.8),('234',1.7,0.9,0.1,0.5,4,17,15.1,4.8,1.2,2.6,0.6,0.6,1.6),('235',8.3,4.3,0.3,1.6,17.7,19,33.2,23.9,5.5,4.1,4.9,2.1,1.4),('236',3.5,2.5,1.2,1.2,7.2,19,23.8,9.5,3.5,9.2,1,1.3,2.2),('237',4.2,1.7,0.7,1.8,11.2,20,27.5,11.4,2,3.3,2.6,1.8,2.3),('238',5.4,2.2,0.1,1.2,13,21,33.1,15.2,2.7,3.4,2.9,1,1.7),('239',9.8,5.9,1.7,1.6,17.5,19,35.2,27.7,6.9,8.6,4.6,2.3,2.2),('240',6.6,5.4,0.4,0.9,14.7,18,31.8,21.1,6.3,10.4,1.6,2,2.1),('241',2,0.2,0.4,0.3,4,11,9.6,4.2,0.4,3.5,0.5,0.5,1.1),('242',1.3,0.6,0.5,0.2,1.9,16,8.2,3.3,0.9,2.5,0.6,0.2,1.3),('243',7.7,2.1,0.3,0.6,16.8,19,34.2,20.4,2.4,3.5,2.1,2.1,2.3),('244',2.4,0.5,0.5,0.4,4.7,19,19.6,5.3,0.9,5.8,0.6,1.1,2.2),('245',1.2,0.9,0.3,1.3,3.5,19,17.7,3.4,1.4,2.3,2.6,1.3,2.2),('246',1.3,1.1,0.6,0.2,3.4,16,11.3,4,1.3,3.1,0.6,0.8,0.9),('247',7.6,3.4,1.6,0.7,15.8,19,34.2,20.8,4.3,7.1,1.4,1.5,3.7),('248',0.9,0.2,0.3,0.7,2.1,17,14.6,2.2,0.4,2.8,0.8,0.4,0.6),('249',3.1,0.6,0.4,0.8,7,18,27.8,8.6,0.7,2.5,2,1.6,1.6),('250',6.7,4.2,0.3,1.6,15.6,19,37.6,20.6,4.9,4.9,7.3,3.1,2.9),('251',2.3,0.7,1.1,0.3,4.1,19,13.8,5.3,1,4.3,1,0.9,2),('252',0.8,0.3,0.2,0.1,2.8,10,12,2.1,0.4,1.5,0.1,0.5,1.2),('253',0.3,0,0,0,1,4,2.6,0.8,0,0.8,0,0.5,0.5),('254',9.2,3.5,0.2,0.7,19.2,18,34,24.4,4.1,3.2,4.6,2.3,2),('255',6.7,3.6,1,0.7,14.2,18,32.9,17.6,4.4,6.7,1.6,1.5,2.2),('256',4.3,0.8,0.2,0.3,9.2,6,27.1,9.7,1.3,3,4.8,1.8,3),('257',1.7,0,0.1,0.6,4.3,9,15.9,3.8,0,2.1,0.4,0.6,1.3),('258',3.2,0.5,0.1,1.2,8.4,20,20.6,8.5,0.7,2.5,1.6,0.7,1.5),('259',3.4,0.8,0.4,1.2,5.7,20,22.1,7.6,1,5.8,1.3,0.6,2.1),('260',0.8,0.2,0.4,0.3,2.7,19,15.5,1.9,0.3,3.1,1.1,0.4,1.4),('261',8.6,4.6,0.4,1.1,17.2,17,36.3,23.3,6.5,7.7,9.3,4.2,1.7),('262',2.2,0.3,0,0.3,4.8,18,12.5,5.1,0.3,1.3,1.2,0.2,0.9),('263',5.3,4,0.1,1.2,12.1,21,23.9,16.5,4.8,2.2,3.5,2.1,1),('264',2.2,1,0.5,1.4,4.4,21,23.4,6.1,1.7,2.4,0.3,0.7,1.3),('265',1.8,0.9,1.8,1.2,2.4,13,18.5,4.5,1.3,3.8,0.7,0.7,3),('266',1.9,0.7,0.2,0.5,4.1,18,13.5,4.9,1.2,4.1,0.9,1.1,1.8),('267',1.5,0.3,0.1,0.4,4.4,19,15.9,4.2,0.4,1.8,0.5,0.4,1.2),('268',2.3,1,0.1,0.8,7.2,21,23.9,6.4,1.4,5.2,1.4,0.8,1),('269',0.5,0,0,0,2,2,4,1.5,0,0,0,0,0.5),('270',2.8,1.2,0.1,0.8,6.9,18,20.7,7.6,1.3,2.4,2.7,1.2,1.4),('271',2.1,1.4,0.1,0.4,5.5,20,16.6,6,1.5,1.8,3.2,1.5,1.5),('272',1,0.4,0,0.2,3.2,9,5.9,2.9,0.7,0.4,0.3,0,0.4),('273',2.6,1.6,0.2,1.1,6.6,17,19.6,8,1.8,2.8,2.6,1.5,1.7),('274',6.8,3.3,1.7,0.7,15.2,19,33.1,18.4,4,5.5,3.7,2.1,2.1),('275',0.6,0.1,0.1,0.3,2.3,8,8.3,1.4,0.8,0.9,2.1,0.6,0.5),('276',5,1.8,1.2,0.4,8.6,18,35.3,11.8,2.9,12.1,1.6,1.4,3.5),('277',3.5,1.5,0.2,0.8,8.2,19,25.2,10.1,1.7,2.7,1.9,0.7,1.3),('278',5.7,1.2,0.4,0.8,13.2,21,31.9,14,1.5,4,2.1,1,2),('279',3.6,1.1,0.4,1.3,10.2,16,30.5,9.7,1.9,4.1,4.1,1.9,2.3),('280',2.6,1.1,0,0.8,7.4,17,19.7,7.3,1.1,2.4,1.3,0.8,1.5),('281',1.6,0.5,0.2,0.3,5.4,13,12.1,4.1,0.7,1.6,0.7,1,0.7),('282',4.7,2.7,0.7,1.2,11.5,18,31.6,12.8,3.4,5.7,1.6,2.3,3),('283',2.4,0.8,0.5,0.5,5.5,19,15.2,6,1.5,2.8,0.5,1.4,2.8),('284',2.8,2,0.5,0.4,6.7,21,15.6,8.5,2.5,4.7,0.7,0.6,2.7),('285',0.5,1,0,0.5,0.5,2,12.5,2,1.5,3,0.5,0,1.5),('286',3.4,1.1,0.5,0.3,10.1,15,27.6,9.9,1.4,6.1,1.3,0.7,1.7),('287',4.3,1.5,0.9,0.7,7.8,20,27.2,10.1,2.9,7.1,4.8,1.6,2.7),('288',2.7,1,0.5,0.7,7.2,19,26,7.8,1.3,5.1,2.7,1.9,2.6),('289',3.1,0.9,0.1,1,7.7,18,28.5,8.2,1.1,2.7,6.2,2.2,2.1),('290',5.3,1,0.7,0.9,10.3,20,31,13,1.3,5.3,0.8,1.2,2.7),('291',0.9,0.5,0.2,0.3,1.9,10,8.1,2.3,0.6,1.6,0,0.2,1.1),('292',0.4,0.3,0.1,0.4,1.8,8,5.8,1.3,0.5,0.8,0.4,0.1,1),('293',2.2,0.6,0.3,0.1,5.7,18,15.8,6,0.6,3.3,0.9,0.6,2.2),('294',3.5,1.2,0.2,0.5,7,18,15.6,8.4,1.7,3.5,0.8,1.1,1.6),('295',1.3,1,0.7,0.7,5,3,15,4,1.3,3,2.7,2,2),('296',0.2,0.3,0,0,1.3,6,3.5,0.7,0.3,0.3,0.2,0,0.3),('297',3.5,2.6,1.1,0.9,7.5,18,31.1,9.6,3.8,7,1.3,0.9,2.4),('298',6.1,4.6,0.6,1.4,13.8,17,32.2,19.2,5.1,3.6,5.7,2.3,1.6),('299',1.4,0.6,0.1,0.3,4.1,14,15.6,4.2,0.7,1.7,1,0.5,1.2),('300',0.8,0,0,0,1,4,4.3,2.3,0,1,1,0.3,0.3),('301',3.4,1.2,0.7,0.6,6.2,20,21.9,8.7,1.5,4.1,1.5,1.1,1.8),('302',0.5,0,0,0,2.5,2,7.6,1,0,2,1.5,1,0.5),('303',1,0.8,0.3,0.5,2.1,17,11.6,2.8,1.2,2.2,0.9,0.8,2.1),('304',1.7,0.5,0,0.4,4,16,11.9,4.6,0.6,1.6,0.9,0.3,0.9),('305',2.3,0.5,0.2,0.1,5.9,17,16,6.9,0.7,2.4,0.6,0.6,1.6),('306',4.1,1.4,0.6,1.3,9.2,19,33,10.3,1.7,3.6,4.1,2.6,2.5),('307',2.9,0.4,0.6,0.2,4.9,11,13.2,6.2,0.7,3.9,0.7,1.2,1.5),('308',5.7,3.3,2.3,0.9,10.6,18,28.6,14.9,4.1,7.8,1,1.6,3.2),('309',2.3,0.9,0.3,0.7,5.9,19,17.2,6.7,1.2,3.6,1.1,1.1,2.2),('310',2.8,1.4,2.5,0,5.1,17,17.2,NULL,2.3,3.5,0.9,0.4,7.2),('311',0,0,0,0,0.4,5,4.4,0,0,0.4,1,0.2,0.6),('312',4.5,1.8,0.4,0.3,9.8,18,25,13.3,1.9,2.4,1.1,0.7,2.7),('313',4.3,3,0.4,1,11.2,18,34.3,13.3,3.7,6.8,5.2,2.3,1.6),('314',0.6,0.4,0.1,0.4,1.4,14,7.4,1.9,0.4,1.1,1,0.4,0.6),('315',1.2,0.6,0,0.3,2.9,11,11.1,3.5,0.6,0.8,1.4,1,1.2),('316',3.4,1.2,0.4,0.4,7,19,25.3,9.7,1.5,2.6,1.7,1.7,1.4),('317',3.7,1.6,0.4,0.7,7.4,18,23.5,9.4,2.1,6.7,2.8,1.3,3.2),('318',3,1.6,0.7,0.7,7.9,18,22.8,9,2.3,5.7,1.2,1.2,1.2),('319',5.5,1.1,0.9,0.7,12.6,20,27.7,12.4,1.8,11.6,2.4,1.3,2.2),('320',1.1,0.5,0.4,0.3,2.9,16,11.1,3,0.6,3.3,0.2,0.8,1.4),('321',2.2,1.4,0.1,0.4,4.7,15,15.3,6.7,1.8,2.1,1.3,0.5,2),('322',1.4,0.9,0.4,0.2,2.6,20,18.3,3.7,1.5,6.5,0.6,0.6,1.5),('323',2.1,0.3,0.1,0.3,5.2,10,18.1,5,0.5,3.6,1.1,1,0.9),('324',5.9,1.3,0.5,1.9,11.3,18,34.7,14.6,1.6,8.3,1.6,0.8,2.7),('325',1.8,1.6,0.2,1.1,4.7,19,23.8,5.8,2.2,5.7,1,0.9,2),('326',2.6,0.4,0.6,0.6,4.6,19,19.3,5.7,0.6,4,0.4,0.7,2.4),('327',0.6,0.2,0.1,0,0.8,9,4.6,1.4,0.3,0.7,0.4,0,0),('328',2.7,0.6,0.8,1.3,6.3,9,28.3,7,0.9,4.4,3.9,1.2,3.2),('329',1.2,0.2,0.4,0.4,2.9,14,13.6,3.2,0.4,1,1.1,0.4,1.2),('330',2.4,0.8,0.5,1.1,6.7,19,29.2,7.2,1.1,5.8,1.7,0.6,2.5),('331',4,1.5,0,0.6,7.8,20,23.7,11.5,1.6,2.1,3.6,1.4,1.6),('332',4.7,1.3,1.2,0.5,9.7,19,26,11.2,2.3,7.3,2.6,1.2,1.6),('333',7.5,3.3,0.5,1.8,17,12,35,20.8,3.6,6.8,3.5,3.2,2.5),('334',6.1,2.9,0.8,1.6,13.8,18,32.4,16.1,3.9,8.1,3.5,2.3,2.7),('335',1.4,1.2,0.2,0.2,3.4,5,14,5,1.2,1.4,0.4,0.6,3.2),('336',0,0,0,0.2,1,5,5.2,0,0,1.4,0.6,0.2,0.4),('337',0.8,0.3,0,0,2.8,6,8,2.2,0.5,1.3,0,0.3,1.5),('338',0,0,0,0,0.5,2,3.7,0,0,0.5,0,0,0),('339',3.6,0.8,0.3,1.4,9.2,16,31,8.6,1.2,7,7.6,2.4,2.3),('340',0.3,0.3,0.3,0,1.3,3,4.8,1,0.3,1,0.3,0,0.3),('341',1.9,1.5,0.1,0.6,4.9,19,16.8,5.5,2.3,1.4,3.4,0.9,0.9),('342',1.8,0.7,0.2,0.3,5.5,13,18,5.5,0.8,2.6,2.3,1.4,1.5),('343',2.1,0,0.4,0.5,5.2,10,13.4,5.4,0,1.1,0.2,0.3,0.8),('344',0.6,0.1,0,0,1,8,3.1,1.6,0.1,0.3,0.3,0.4,0.3),('345',2.1,0.2,0.3,0.7,4.7,21,17.2,5.1,0.3,1.7,1.4,0.8,1.5),('346',1.8,0,0.5,0.3,4,4,10.4,4,0,1.3,0.3,0.3,0),('347',1.7,0.6,0.1,0.3,3.8,18,18.7,4.7,0.8,2.6,0.8,0.4,1.3),('348',2.7,0.9,0.8,0.7,5.1,15,15.7,6.9,1.3,4.5,0.8,0.9,1.9),('349',1.9,2.1,0,1.6,5.1,14,30.1,6.4,2.8,3.6,6.4,2,2.6),('350',2.7,1.2,0.7,1.9,8.7,19,27.5,8.5,1.6,5.1,1.1,1.6,2.6),('351',4.5,0.8,1.9,0.2,10,18,27.9,9.8,1.1,7.7,0.8,0.7,2),('352',5.9,2,0.3,0.7,13.4,18,31.5,16.1,2.6,4.3,2.1,1.3,2.6),('353',2.3,0.8,0.3,0.7,5.3,18,22.9,6.3,1.1,3.2,0.8,0.8,2),('354',3,2.2,0,0.6,7,9,19.3,8.7,3.6,2.2,1.4,2,1.3),('355',1,0.3,0.3,0.8,3.3,4,8.4,2.8,0.5,0.5,0.5,0.3,0.3),('356',2.1,2.4,0.6,1.1,6.1,16,24.3,6.9,3.1,4.6,2.6,1.5,2.7),('357',2.4,1.5,0.9,0.2,4.2,14,15.6,6.2,2.1,3.6,0.7,0.8,2.1),('358',6.9,4.1,0.8,1.3,14.9,18,34.7,19.2,4.9,6.4,3.1,2.5,2.6),('359',3.7,3.4,2.6,0.6,5.8,20,31.2,10.8,5.2,11.1,1,1.6,3.2),('360',10.4,8.7,0.4,1.4,24.3,20,35.7,31.2,10.5,10.5,11.3,5.5,2.6),('361',4.6,1.6,0.1,0.4,11.1,20,31.1,13.5,1.8,5.5,1.1,1.1,1.9),('362',0.3,0.3,0.3,0.3,1,7,5,1,0.3,1.1,0.4,0.1,0.3),('363',1.2,0.4,0.8,0.5,1.9,14,11.7,2.8,0.6,3.9,0.3,0.5,2.2),('364',2.6,0.5,0.3,0.7,5.2,20,18.4,6.6,0.7,3.7,1.1,0.6,1.3),('365',0.7,0.3,0,0.3,2.2,12,7.2,1.9,0.3,1.4,0.7,0.4,0.5),('366',5.3,3.9,0.2,0.7,12.8,19,27.2,16.2,4.8,4.6,2.6,2.7,1.8),('367',1.1,0.2,0.1,0.3,3.6,19,13.2,2.6,0.4,1.1,2.3,0.5,1.2),('368',5.7,1.8,1.8,0.5,12,20,30.2,14.5,2.1,6.7,0.8,1.3,2.6),('369',3.2,0.3,0.2,0.9,8.4,19,26.9,7.7,0.4,3.1,6.8,2.6,1.1),('370',4.1,0.8,0.2,1.1,9.6,17,28,10.3,1.1,2.5,2.6,1.4,1.9),('371',2.4,1.8,0.1,0.3,5.4,16,15.6,6.9,2.1,2.1,0.4,0.7,0.9),('372',0.8,0.5,0,0.6,2.3,13,6.1,2.8,0.9,0.6,1,0.4,0.6),('373',2,0.5,0.1,0.4,3.7,19,17.4,4.5,0.9,2.1,1.8,0.7,1.6),('374',1.7,0.9,0,0.6,3.9,7,11.1,4.6,1,0.7,0.4,0.1,0.7),('375',2.9,0.5,0,0.9,6.7,20,19.8,6.9,0.9,2,2.7,1.7,1.8),('376',3,2,0,0,5,1,15.4,8,3,3,0,0,0),('377',1.6,1.3,0.6,1.2,4.4,20,26,5.1,1.6,3.8,1.8,1,2.5),('378',3.1,0.7,0.8,0.5,6.3,18,17.5,7.2,0.9,4.2,1.9,1.3,1.4),('379',1.4,0.6,0.4,0.4,3.4,18,14.3,3.8,0.9,2.3,0.9,0.5,1.3),('380',8.8,4.9,0.3,1.5,18,19,33.8,26.7,5.4,4.1,5.9,3.1,2.5),('381',0.5,0,0,0,1,2,5.6,1,0.5,2,0.5,0,0),('382',0,0,0,0,1,2,2.6,0,0,0.5,0,0,0),('383',4.3,2.3,1,1.2,7.9,20,31.4,10.9,3,7.8,0.7,2,2.5),('384',1.5,0.5,0.1,1.4,3.5,19,18.3,3.5,0.7,2.2,4.2,1.3,1.7),('385',7.2,2.8,0.3,1.9,15.6,13,32.3,17.7,3.4,4.3,1,1,2.8),('386',5.4,1.5,1.1,0.7,9.9,18,29.1,12.4,2.2,8.2,1.7,1.7,2.4),('387',2.2,1.5,0.6,0.3,4.4,21,15.6,5.9,1.9,5.2,0.7,0.7,2.5),('388',1.5,0.7,0.3,0.3,3.4,13,11.8,4.2,0.8,2.6,0.8,0.8,1.2),('389',4.1,1.9,1.1,0.9,8.8,19,24.5,10.4,2.8,5.7,1.3,1,1.4),('390',3.8,1,0.1,1,7.8,18,20.1,10.2,1.1,2.1,0.6,0.6,1.4),('391',2.2,0.8,0.2,0.8,5.4,19,18.7,6.2,1.2,3.5,1.8,0.6,1.1),('392',3,0.8,0.2,2.1,6.1,17,24.2,7.2,1.2,4.7,1.7,1.1,1.2),('393',5.1,0.5,0.4,1.3,9.6,19,30.2,11.6,1.2,6.1,1.6,1.3,1.5),('394',1.1,0.4,0.2,0.3,3,12,7.8,2.6,1,3.1,0.3,0.3,1),('395',0.7,0.5,0.2,0,1.3,6,3.1,2.2,0.7,1.3,0,0,0.5),('396',4,2.3,0.2,1,9.1,20,31,11.2,2.9,3.2,7.6,2.7,2.9),('397',4.2,1.3,0.2,0.4,9.1,20,20.9,11.1,2.1,1.8,1.5,0.7,0.9),('398',1,0,0.3,0,1,7,3,2.3,0,0.4,0.4,0,0.1),('399',3.5,1.2,0.6,0.3,6.1,20,21.1,8.1,1.4,4.7,1.1,1.4,2.4),('400',0.7,0.7,0.2,0.2,2,12,6,2.1,0.8,0.9,0.3,0.3,0.5),('401',6.6,2.6,0.7,0.8,13.4,21,33,17.1,2.9,4.9,1.8,1.6,1.9),('402',1.6,0.6,0,0.6,4.1,17,17.3,4.1,1,1.9,2.6,1,1.8),('403',3.2,1.4,0.6,1.6,7.9,13,24.2,8,1.9,4.1,0.8,1.3,2.7),('404',3.7,1.9,0.1,0.5,8.5,13,26.3,9.7,2.2,1.9,4.3,1.6,1.9),('405',3.5,0.5,0.1,0.4,8.3,17,29,9.2,0.7,4.1,1.1,0.8,1.9),('406',0.8,0,0,0,1.2,5,9.6,2.2,0,1.2,0.4,0.2,2.2),('407',4.5,0.9,0.2,2.1,10.1,20,33.6,12.6,1.1,5,2.2,0.9,1.7),('408',4.4,1.2,0.6,2.1,8.2,18,27.6,10.4,1.6,8.3,2.4,1.5,2.4),('409',2,0.2,0.1,0.2,4.7,14,11.9,4.4,0.4,0.6,1.1,0.6,0.6),('410',3.7,1,0.4,0.5,8.6,20,23.2,9.5,1.2,4.5,1.3,1.3,1.6),('411',2.8,1.2,1.6,0.4,4.4,18,29,6.7,2.6,9.6,0.9,0.5,2.3),('412',1.8,1,0.1,0.2,5.4,9,15.3,5.7,1.1,1.2,0.7,0.4,0.6),('413',1.9,0.9,0.3,0.9,4.7,14,15.5,5.1,1.6,1.1,0.8,1,1.5),('414',2.7,1.4,0.1,1.2,6.7,19,26.9,7.4,1.8,3.1,4.8,1.7,1.8),('415',1.2,0.1,0,0.4,3,14,8.6,2.8,0.1,0.8,1.4,1,1.4),('416',4.3,2.8,0.5,1.1,10.2,18,29.6,12.4,3.7,4.7,3.1,1.2,2),('417',1.5,0.8,0.1,1.4,3.6,11,11.3,3.7,0.9,0.7,1.8,1,0.8),('418',2.3,0.7,0.8,0.2,4.6,19,14.3,5.2,1.2,3.8,1.1,0.5,1.7),('419',3.1,1,0.5,0.6,4.3,11,27,7.2,1.5,11.7,0.5,1.4,3.2),('420',1.3,1,0,0.9,3.1,14,14.4,4.2,1.1,1.7,3,0.9,0.9),('421',0.3,0.2,0,0.2,1.3,6,6.3,0.8,0.3,1.7,0.2,0,1.2),('422',6.8,1.5,0.4,1,14.5,20,35.2,17.3,2.2,4.4,3,1.8,1.9),('423',3.2,1.5,0.4,0.8,8.3,18,26.5,9.3,1.9,3.9,1.8,0.8,2.6),('424',1.5,0.5,0.3,0.7,4.7,13,16.4,3.8,0.8,2.1,2.2,1.5,1.5),('425',6,1,0,1.7,10.7,3,30.7,16,1.3,1.3,1.3,0.3,1),('426',1.1,0.1,0.7,0.3,3.3,15,12.7,2.9,0.1,3.1,0.3,0.3,1.9),('427',4.6,2.5,0.2,1.2,13,17,36.3,14.4,2.9,3.1,2.2,1.8,2.2),('428',4.1,3.3,0.3,0.1,10.9,7,28.8,12.7,4.4,4.7,2.3,1.1,1.3),('429',2.1,0.7,0.5,0.4,3.7,15,11.9,4.9,1.1,1.7,0.3,0.7,2.3),('430',1.7,0.5,0.3,0.1,2.7,12,12.7,3.8,1.2,3.3,0.4,0.3,1.4),('431',2.6,0.6,0.4,0.4,4.3,16,13.7,5.7,0.9,4.3,0.8,1.8,1.8),('432',7.4,2.4,0.2,0.7,15.4,17,30.6,18.5,3.2,7.5,1.6,1.6,1.9),('433',1.8,1,0.2,0.2,4.9,10,15.1,5.4,1.6,1.2,1.7,1.4,1.1),('434',7.3,2.9,0.2,0.9,15.7,18,36.8,19.9,3.3,3.2,2.7,1.8,2.2),('435',6.1,1.8,0.1,0.5,12.7,15,22.3,14.2,2.4,7.9,1,1.3,2.1),('436',1.7,1.1,0.5,0.7,3.4,19,17.2,4.4,1.1,5.8,2.3,1.3,1.9);
/*!40000 ALTER TABLE `player_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professional`
--

DROP TABLE IF EXISTS `professional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professional` (
  `player_id` varchar(20) DEFAULT NULL,
  `salary` int(9) DEFAULT NULL,
  `draft_round` int(4) DEFAULT NULL,
  `draft_number` int(4) DEFAULT NULL,
  `year_drafted` int(4) DEFAULT NULL,
  KEY `player_id` (`player_id`),
  CONSTRAINT `professional_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professional`
--

LOCK TABLES `professional` WRITE;
/*!40000 ALTER TABLE `professional` DISABLE KEYS */;
INSERT INTO `professional` VALUES ('332',15500000,1,3,2001),('137',8000000,1,26,2008),('181',1286160,1,25,2015),('106',4598000,1,2,2011),('342',2500000,1,7,2006),('300',3500000,1,5,2000),('417',918369,2,34,2016),('118',15330435,2,35,2012),('250',12000000,1,24,2006),('345',1551659,1,5,2005),('393',12078652,1,12,2007),('240',21165675,1,5,2008),('319',11750000,1,16,2011),('39',20093064,1,1,2009),('2',2700000,1,26,2007),('196',6540000,2,41,2009),('195',17000000,1,9,2007),('22',945000,2,44,2015),('157',6587131,2,60,2011),('94',NULL,1,21,2016),('174',2898000,2,50,2013),('334',20072033,2,47,2006),('35',8269663,1,19,2010),('199',11000000,1,10,2001),('428',3533333,2,40,2012),('316',2993040,1,8,2014),('189',980431,2,39,2014),('177',1551659,2,49,2003),('96',15756438,1,5,2010),('295',3183526,1,11,2013),('223',3267120,1,7,2014),('274',21165675,2,48,2007),('404',14445313,1,28,2001),('348',1024000,2,37,2015),('261',30963450,1,1,2003),('52',21165675,1,10,2008),('120',8375000,2,45,2014),('224',1514160,1,21,2015),('435',10000000,1,19,2001),('93',543471,2,53,2011),('127',17145838,1,3,2011),('414',1315448,1,18,2009),('427',17145838,0,0,0),('431',1375000,2,35,2015),('315',543471,0,0,0),('433',100000,0,0,0),('391',1906440,1,16,2015),('11',5994764,2,32,2013),('365',1410598,1,27,2004),('227',2593440,1,10,2015),('192',1643040,1,19,2015),('329',543471,2,38,2016),('363',874636,0,0,0),('216',874636,2,58,2014),('385',2128920,1,14,2014),('8',7680965,1,8,2010),('6',26540100,1,3,2007),('251',3918750,2,49,2012),('176',4000000,1,16,2009),('16',12000000,2,56,2005),('212',874636,0,0,0),('418',8000000,1,17,2012),('159',NULL,0,0,0),('130',8400000,2,36,2005),('163',12800000,1,18,2004),('183',5000000,1,20,2007),('50',3500000,1,13,2008),('273',14000000,2,57,1999),('194',17552209,1,30,2011),('73',11242000,1,22,2008),('268',18000000,1,7,2004),('215',4000000,1,8,2009),('413',543471,0,0,0),('364',1720560,1,18,2015),('128',14000000,1,18,2010),('436',2898000,2,42,2003),('400',NULL,1,24,2016),('265',1921320,1,16,2013),('98',1180080,1,29,2016),('222',1987440,1,15,2016),('171',13253012,1,8,2000),('198',2100000,0,0,0),('25',1015696,1,1,2013),('387',6191000,0,0,0),('416',5628000,0,0,0),('320',2751360,1,9,2014),('208',10991957,2,40,2011),('238',3678319,1,8,2013),('290',NULL,1,15,2012),('92',21165675,2,35,2008),('213',12500000,2,46,2014),('144',15891725,2,45,2008),('188',1015696,2,39,2013),('80',15050000,1,6,2008),('380',12112359,1,7,2009),('303',12400000,1,26,2012),('206',NULL,0,0,0),('142',2995420,1,15,2013),('246',8630000,1,14,2004),('220',874636,2,40,2015),('134',543471,0,0,0),('426',5628000,1,4,2010),('233',3094013,1,13,2013),('383',3140517,1,12,2013),('90',1551659,1,18,2003),('285',543471,0,0,0),('292',1551659,1,16,1999),('245',3872520,1,5,2016),('430',874636,0,0,0),('339',14000000,1,21,2006),('420',1339680,1,24,2015),('179',1825200,1,17,2014),('269',1439880,1,22,2016),('255',20575005,1,2,2006),('160',1034865,2,32,2016),('354',7000000,1,15,2007),('412',3332940,0,0,0),('37',980431,1,28,2004),('323',2963814,1,23,2009),('310',NULL,1,7,2002),('66',22868827,1,4,2005),('279',3578880,1,6,2014),('271',2500000,0,0,0),('235',12000000,1,9,2011),('205',1050961,1,23,2012),('408',9250000,1,23,2010),('161',NULL,0,0,0),('346',2255644,1,25,2013),('293',9213484,1,11,2012),('298',26540100,1,4,2007),('392',4000000,1,13,2006),('280',1315448,2,43,2009),('9',1315448,0,0,0),('297',13000000,1,2,2012),('187',8000000,1,19,2009),('327',874636,2,41,2015),('366',980431,0,0,0),('132',16393443,1,2,2010),('407',7800000,2,43,2004),('72',7315000,1,29,2011),('306',10763500,2,40,2005),('51',1050961,0,0,0),('434',2240880,1,13,2014),('302',3333333,2,43,2012),('375',2433334,2,34,2011),('186',15000000,1,5,2007),('146',2348782,1,21,2013),('357',5000000,1,17,2008),('403',5000000,1,25,2004),('1',650000,2,46,2016),('123',6666667,1,13,2010),('239',26540100,1,2,2007),('165',1403611,1,18,2008),('77',24328425,1,6,2012),('402',2870813,2,32,2012),('34',11000000,1,10,2012),('71',7612172,1,7,2007),('10',874636,0,0,0),('254',17638063,1,1,2011),('86',8070175,1,27,2008),('88',874636,2,38,2015),('197',980431,2,33,2014),('340',1052342,2,36,2015),('184',1551659,1,10,1999),('394',1050961,1,5,2012),('359',2121287,1,27,2013),('89',1551659,1,30,2005),('214',50093,1,26,2006),('63',543471,2,33,2016),('236',12078652,1,22,2011),('373',5782450,1,4,2004),('259',NULL,1,27,2015),('423',4264057,1,5,1998),('374',543471,0,0,0),('45',22116750,1,3,2012),('326',1196040,1,27,2016),('218',7708427,0,0,0),('24',6006600,1,1,2014),('172',3210840,1,7,2016),('59',1209600,1,28,2014),('169',600000,2,47,2016),('56',3219579,1,10,2013),('415',1733880,1,18,2014),('312',5443918,1,16,2007),('5',2022240,1,15,2014),('325',5300000,2,35,2006),('65',1191480,1,29,2015),('244',8046500,1,23,2008),('101',2092200,1,14,2016),('79',543471,0,0,0),('17',10851659,2,30,2004),('226',1015696,0,0,0),('336',750000,2,48,2016),('201',600000,2,52,2016),('321',874636,2,46,2015),('286',12250000,1,2,2005),('107',2148360,1,13,2015),('344',877800,2,47,2013),('173',4540525,1,20,2004),('38',17000000,1,7,2011),('182',150000,2,35,2014),('102',14474787,1,3,2005),('429',3551160,1,6,2015),('36',4008882,1,7,2013),('350',1015696,0,0,0),('328',6000000,2,42,2009),('421',4000000,0,0,0),('272',1627320,1,19,2016),('111',543471,2,40,2016),('230',5960160,1,1,2015),('29',8000000,0,0,0),('138',650000,2,50,2016),('30',2177734,1,29,2013),('381',950000,2,41,2016),('386',8950000,1,26,2009),('27',22116750,1,1,2012),('116',2483040,1,11,2014),('135',8000000,0,0,0),('425',6000000,1,28,2009),('241',1800000,1,17,2010),('207',15756438,1,1,2010),('377',11709603,1,23,2013),('351',13219250,1,15,2008),('396',2090000,0,0,0),('143',NULL,2,40,2014),('256',1227286,2,40,2010),('122',8801363,2,55,2011),('133',2730000,1,9,2015),('229',3333333,2,32,2014),('369',6800000,1,27,2006),('49',12606250,1,8,2011),('60',24559380,1,3,2003),('152',1015696,0,0,0),('167',6286408,2,34,2012),('378',5782450,1,10,2007),('125',2613600,1,10,2014),('253',543471,0,0,0),('190',7000000,1,12,2012),('252',4837500,2,33,2011),('249',5239437,2,51,2003),('46',1551659,2,33,2005),('311',3750000,1,12,2003),('432',11233146,1,23,2007),('70',7643979,1,11,2010),('219',5782450,2,37,2007),('164',980431,0,0,0),('399',16000000,0,0,0),('424',1793760,1,17,2016),('28',3488000,0,0,0),('211',543471,0,0,0),('232',543471,2,54,2016),('109',2898000,0,0,0),('267',1227286,1,16,2010),('305',10500000,0,0,0),('150',22116750,2,33,2010),('12',4823621,1,5,2013),('148',4347826,1,28,2010),('57',4583450,2,34,2005),('341',6000000,2,56,2007),('337',1050961,2,37,2012),('349',13400000,1,5,2009),('42',1404600,1,22,2015),('358',13333333,1,8,2006),('55',3517200,1,6,2016),('84',543471,0,0,0),('168',4788840,1,3,2015),('100',NULL,1,17,2013),('14',18500000,2,31,2013),('48',5000000,1,10,2009),('398',543471,0,0,0),('121',23200000,1,5,2003),('217',1223653,2,33,2015),('202',4826160,1,3,2014),('243',16663575,1,11,2011),('356',1395600,1,23,2015),('330',6050000,1,14,2010),('156',1015696,2,34,2013),('145',16073140,1,9,2010),('277',6333333,1,18,2007),('352',1406520,1,23,2014),('296',650000,2,49,2016),('299',4837500,1,3,2002),('210',14382023,1,5,2011),('248',1192080,1,30,2014),('258',5200000,0,0,0),('149',22116750,1,7,2012),('270',875000,2,36,2016),('153',1015696,0,0,0),('370',2898000,0,0,0),('178',980431,0,0,0),('234',2006640,1,15,2015),('43',3573020,2,31,2011),('382',1551659,2,32,2006),('322',9904494,2,36,2008),('83',3940320,1,5,2014),('75',5332800,1,2,2015),('139',2202240,1,13,2016),('82',3000000,2,33,2009),('411',15330435,1,4,2011),('275',1500000,0,0,0),('242',1142880,1,30,2015),('367',543471,2,55,2014),('294',1403611,1,2,2008),('284',1403611,1,16,2008),('78',980431,0,0,0),('301',1015696,2,44,2013),('58',5000000,0,0,0),('401',17200000,1,19,2011),('74',874636,0,0,0),('263',NULL,2,45,2005),('129',12385665,1,7,2008),('44',7000000,1,21,2003),('154',16000000,1,28,2005),('68',1296240,1,25,2014),('81',10000000,2,46,2009),('3',4351320,1,4,2014),('314',543471,0,0,0),('360',26540100,1,4,2008),('410',2340600,1,12,2015),('113',25000000,1,9,1998),('264',2203000,2,37,2008),('95',26540100,1,9,2009),('115',543471,0,0,0),('355',543471,0,0,0),('347',2500000,1,13,2001),('287',2328530,1,22,2013),('288',6125000,2,45,2002),('257',6191000,0,0,0),('372',1350120,1,24,2014),('126',3241800,1,7,2015),('291',543471,0,0,0),('397',NULL,1,24,2013),('155',9662922,1,17,2011),('23',6088993,1,19,2012),('162',7377500,1,11,2006),('26',874636,2,34,2015),('338',2064586,1,28,2015),('361',18735364,1,21,2008),('151',1704120,1,18,2016),('376',1188840,1,28,2016),('203',1709719,2,55,2013),('368',12250000,1,24,2008),('419',12415000,1,2,2001),('158',1074145,2,42,2016),('193',9424084,1,11,2008),('53',1324700,1,20,2014),('31',980431,0,0,0),('283',2941440,1,8,2016),('362',979847,2,48,2013),('422',6552960,1,2,2013),('405',2368327,1,20,2013),('112',2898000,1,4,2012),('237',15730337,0,0,0),('317',1358500,2,41,2014),('309',3800000,2,35,2010),('384',874636,0,0,0),('353',543471,0,0,0),('117',4276320,1,4,2016),('390',10000000,1,8,2012),('141',9000000,1,12,2009),('18',22116750,1,9,2012),('313',20869566,1,25,2008),('307',1045000,2,32,2015),('33',12500000,1,27,2007),('114',2440200,1,11,2016),('69',5318313,1,4,2013),('278',4625000,1,14,2011),('99',1450000,2,45,2016),('41',980431,0,0,0),('105',21323252,1,1,2008),('308',2380440,1,11,2015),('266',5000000,2,55,2002),('260',3500000,2,50,2011),('276',12000000,2,57,2005),('185',4743000,1,3,2016),('231',17638063,1,15,2011),('7',10230179,1,15,2004),('62',7806971,1,8,2005),('108',4227996,1,5,2004),('324',5893981,1,3,2013),('87',5229454,1,21,2009),('124',NULL,2,43,2014),('97',14200000,1,27,2009),('395',2568600,1,10,2016),('166',5374320,1,2,2014),('19',11131368,1,9,2004),('379',2869440,1,8,2015),('15',1400000,0,0,0),('136',1655880,1,19,2014),('388',2318280,1,12,2016),('131',17000000,1,20,2012),('281',3909840,1,5,2015),('225',3000000,2,45,2012),('180',10470000,1,22,2007),('204',12267606,1,14,2012),('409',3386597,1,9,2013),('20',2183072,1,26,2013),('228',1921320,1,16,2014),('110',1369229,2,31,2016),('209',5000000,2,39,2009),('32',6500000,0,0,0),('4',874636,0,0,0),('282',7400000,1,13,2011),('47',5281680,1,2,2016),('304',2898000,0,0,0),('119',23500000,1,1,2004),('289',9607500,0,0,0),('331',NULL,2,55,2009),('147',17145838,1,7,2010),('371',3046299,1,14,2013),('247',4317720,1,4,2015),('54',543471,0,0,0),('61',22116750,2,38,2011),('64',1551659,0,0,0),('175',26540100,1,3,2009),('140',1410598,1,18,2005),('318',5782450,1,23,2011),('200',NULL,2,43,2015),('170',2703960,1,9,2016),('76',NULL,1,9,2008),('406',543471,0,0,0),('262',4000000,1,28,2003),('21',11027027,1,1,2005),('103',11050000,1,3,2010),('85',2318280,1,12,2014),('221',11000000,1,17,2009),('389',1050961,1,18,2012),('40',5628000,0,0,0),('191',11483254,0,0,0),('91',543471,2,42,2011),('13',4863206,1,20,2008),('343',1811040,1,17,2015),('333',18100000,1,10,2010),('335',3527920,1,10,1998),('67',874636,0,0,0);
/*!40000 ALTER TABLE `professional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `code` varchar(5) NOT NULL DEFAULT '',
  `name` varchar(30) DEFAULT NULL,
  `budget` int(10) DEFAULT NULL,
  `year_founded` int(4) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES ('ATL','Atlanta Hawks',99289619,1949),('BAL','Baltimore Bullets',NULL,1946),('BKN','Brooklyn Nets',95760561,1946),('BOS','Boston Celtics',76058742,1976),('CHA','Charlotte Hornets',99709772,1988),('CHI','Chicago Bulls',97133573,1966),('CLE','Cleveland Cavaliers',129294180,1970),('DAL','Dallas Mavericks',110920751,1980),('DEN','Denver Nuggets',75242914,1976),('DET','Detroit Pistons',108342037,1948),('FWP','Fort Wayne Pistons',NULL,1941),('GSW','Golden State Warriors',99638439,1946),('HOU','Houston Rockets',100102341,1988),('IND','Indiana Pacers',89952004,1976),('LAC','Los Angeles Clippers',114740032,1970),('LAL','Los Angeles Lakers',93613079,1948),('MEM','Memphis Grizzlies',110507392,1995),('MIA','Miami Heat',101438503,1946),('MIL','Milwaukee Bucks',98493671,1983),('MIN','Minnesota Timberwolves',83752739,1989),('NOP','New Orleans Pelicans',98799974,1988),('NYK','New York Knicks',102632073,1946),('OKC','Oklahoma City Thunder',87949548,1967),('ORL','Orlando Magic',106785222,1995),('PHI','Philadelphia 76ers',80432886,1976),('PHX','Phoenix Suns',81444454,1968),('POR','Portland Trail Blazers',112823448,1970),('ROC','Rochester Royals',NULL,1946),('SAC','Sacramento Kings',96085370,1976),('SAS','San Antonio Spurs',108309286,1976),('SEA','Seattle Supersonics',NULL,1948),('STL','St. Louis Hawks',NULL,1946),('SYR','Syracuse Nationals',NULL,1954),('TOR','Toronto Raptors',106727969,1995),('UTA','Utah Jazz',80498192,1974),('WAS','Washington Nationols',NULL,1946),('WDC','Washington Bullets',NULL,1958),('WSH','Washington Wizards',103285007,1961);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `id` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `team_code_1` varchar(5) DEFAULT NULL,
  `team_code_2` varchar(5) DEFAULT NULL,
  `description` text,
  KEY `team_code_1` (`team_code_1`),
  KEY `team_code_2` (`team_code_2`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`team_code_1`) REFERENCES `team` (`code`),
  CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`team_code_2`) REFERENCES `team` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES ('1','0000-00-00','ORL','OKC','The Orlando Magic send Serge Ibaka to the OKC Thunder in exchange for Victor Oladipo forward Ersan Ilyasova and the rights to power forward Domantas Sabonis'),('2','0000-00-00','CHI','NYK','Chicago Bulls send José Calderón Jerian Grant Robin Lopez to New York Knicks in exchange Justin Holiday Derrick Rose and 2017 Chicago 2nd round pick'),('3','0000-00-00','CHI','DET','Chicago Bulls send Spencer Dinwiddie to the Detroit Pistons in exchange for Cameron Bairstow'),('4','0000-00-00','DET','ORL','Detroit Pistons send 2019 2nd round pick to Orland Magic in exchange for Jodie Meeks'),('5','2007-07-16','CHI','CLE','The Chicago Bulls send the draft rights to Albert Miralles to the Cleveland Cavaliers in exchange for Mike Dunleavy Jr. and the draft rights to Vladimir Veremeenko'),('6','2007-07-16','DAL','GSW','The Golden State Warriors send Andrew Bogut to the Dallas Mavericks in exchange for the 2019 Dallas conditional 2nd-round Pick'),('7','0000-00-00','UTA','BKN','The Utah Jazz send the draft rights to Isaiah Whitehead Whitehead to the Brooklyn Nets in exchange for the draft rights to Marcus Paige and cash considerations');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-08 22:55:37
