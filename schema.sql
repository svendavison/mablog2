-- MySQL dump 10.14  Distrib 5.5.52-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: codeigniter
-- ------------------------------------------------------
-- Server version	5.5.52-MariaDB

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
-- Temporary table structure for view `AllMyLoads`
--

DROP TABLE IF EXISTS `AllMyLoads`;
/*!50001 DROP VIEW IF EXISTS `AllMyLoads`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `AllMyLoads` (
  `GroupSize` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `ProjectileName` tinyint NOT NULL,
  `BulletWeightGR` tinyint NOT NULL,
  `diameter` tinyint NOT NULL,
  `Powder` tinyint NOT NULL,
  `GrainsUsed` tinyint NOT NULL,
  `EnergyFootLBS` tinyint NOT NULL,
  `maxSpeed` tinyint NOT NULL,
  `minSpeed` tinyint NOT NULL,
  `avgSpeed` tinyint NOT NULL,
  `StandardDeviation` tinyint NOT NULL,
  `loadCount` tinyint NOT NULL,
  `cycleFailureCount` tinyint NOT NULL,
  `failureToFeedCount` tinyint NOT NULL,
  `coal` tinyint NOT NULL,
  `avgGroup` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `MinecraftWHO`
--

DROP TABLE IF EXISTS `MinecraftWHO`;
/*!50001 DROP VIEW IF EXISTS `MinecraftWHO`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `MinecraftWHO` (
  `WhoList` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `MyLoads`
--

DROP TABLE IF EXISTS `MyLoads`;
/*!50001 DROP VIEW IF EXISTS `MyLoads`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `MyLoads` (
  `LoadId` tinyint NOT NULL,
  `GroupSize` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `ProjectileName` tinyint NOT NULL,
  `BulletWeightGR` tinyint NOT NULL,
  `diameter` tinyint NOT NULL,
  `Powder` tinyint NOT NULL,
  `GrainsUsed` tinyint NOT NULL,
  `EnergyFootLBS` tinyint NOT NULL,
  `maxSpeed` tinyint NOT NULL,
  `minSpeed` tinyint NOT NULL,
  `avgSpeed` tinyint NOT NULL,
  `StandardDeviation` tinyint NOT NULL,
  `loadCount` tinyint NOT NULL,
  `FailFeedPerc` tinyint NOT NULL,
  `cycleFailureCount` tinyint NOT NULL,
  `failureToFeedCount` tinyint NOT NULL,
  `coal` tinyint NOT NULL,
  `avgGroup` tinyint NOT NULL,
  `linkName` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `NewTwitterPulls`
--

DROP TABLE IF EXISTS `NewTwitterPulls`;
/*!50001 DROP VIEW IF EXISTS `NewTwitterPulls`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `NewTwitterPulls` (
  `id` tinyint NOT NULL,
  `author` tinyint NOT NULL,
  `body` tinyint NOT NULL,
  `posttime` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `PowderChoices`
--

DROP TABLE IF EXISTS `PowderChoices`;
/*!50001 DROP VIEW IF EXISTS `PowderChoices`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `PowderChoices` (
  `manufacturer` tinyint NOT NULL,
  `commonName` tinyint NOT NULL,
  `description` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `chamber`
--

DROP TABLE IF EXISTS `chamber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chamber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `projectileDiameter` varchar(45) DEFAULT NULL COMMENT '308 should be listed as .308, 30-06 would be .308 (as it also uses 308)... etc.',
  `linkName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `CustomerID` varchar(4) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `CountryCode` varchar(2) NOT NULL,
  `Budget` double NOT NULL,
  `Used` double NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `eve_PI`
--

DROP TABLE IF EXISTS `eve_PI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eve_PI` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `systemId` int(11) DEFAULT NULL,
  `ownerId` varchar(45) DEFAULT NULL,
  `moon` int(11) DEFAULT NULL,
  `timeToDepletion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `eve_player`
--

DROP TABLE IF EXISTS `eve_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eve_player` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `eve_system`
--

DROP TABLE IF EXISTS `eve_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eve_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `security` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `get223`
--

DROP TABLE IF EXISTS `get223`;
/*!50001 DROP VIEW IF EXISTS `get223`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `get223` (
  `LoadId` tinyint NOT NULL,
  `GroupSize` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `ProjectileName` tinyint NOT NULL,
  `BulletWeightGR` tinyint NOT NULL,
  `diameter` tinyint NOT NULL,
  `Powder` tinyint NOT NULL,
  `GrainsUsed` tinyint NOT NULL,
  `EnergyFootLBS` tinyint NOT NULL,
  `maxSpeed` tinyint NOT NULL,
  `minSpeed` tinyint NOT NULL,
  `avgSpeed` tinyint NOT NULL,
  `StandardDeviation` tinyint NOT NULL,
  `loadCount` tinyint NOT NULL,
  `FailFeedPerc` tinyint NOT NULL,
  `cycleFailureCount` tinyint NOT NULL,
  `failureToFeedCount` tinyint NOT NULL,
  `coal` tinyint NOT NULL,
  `avgGroup` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `get300blk`
--

DROP TABLE IF EXISTS `get300blk`;
/*!50001 DROP VIEW IF EXISTS `get300blk`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `get300blk` (
  `LoadId` tinyint NOT NULL,
  `GroupSize` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `ProjectileName` tinyint NOT NULL,
  `BulletWeightGR` tinyint NOT NULL,
  `diameter` tinyint NOT NULL,
  `Powder` tinyint NOT NULL,
  `GrainsUsed` tinyint NOT NULL,
  `EnergyFootLBS` tinyint NOT NULL,
  `maxSpeed` tinyint NOT NULL,
  `minSpeed` tinyint NOT NULL,
  `avgSpeed` tinyint NOT NULL,
  `StandardDeviation` tinyint NOT NULL,
  `loadCount` tinyint NOT NULL,
  `FailFeedPerc` tinyint NOT NULL,
  `cycleFailureCount` tinyint NOT NULL,
  `failureToFeedCount` tinyint NOT NULL,
  `coal` tinyint NOT NULL,
  `avgGroup` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `get308Win`
--

DROP TABLE IF EXISTS `get308Win`;
/*!50001 DROP VIEW IF EXISTS `get308Win`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `get308Win` (
  `LoadId` tinyint NOT NULL,
  `GroupSize` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `ProjectileName` tinyint NOT NULL,
  `BulletWeightGR` tinyint NOT NULL,
  `diameter` tinyint NOT NULL,
  `Powder` tinyint NOT NULL,
  `GrainsUsed` tinyint NOT NULL,
  `EnergyFootLBS` tinyint NOT NULL,
  `maxSpeed` tinyint NOT NULL,
  `minSpeed` tinyint NOT NULL,
  `avgSpeed` tinyint NOT NULL,
  `StandardDeviation` tinyint NOT NULL,
  `loadCount` tinyint NOT NULL,
  `FailFeedPerc` tinyint NOT NULL,
  `cycleFailureCount` tinyint NOT NULL,
  `failureToFeedCount` tinyint NOT NULL,
  `coal` tinyint NOT NULL,
  `avgGroup` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `get30_06`
--

DROP TABLE IF EXISTS `get30_06`;
/*!50001 DROP VIEW IF EXISTS `get30_06`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `get30_06` (
  `LoadId` tinyint NOT NULL,
  `GroupSize` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `ProjectileName` tinyint NOT NULL,
  `BulletWeightGR` tinyint NOT NULL,
  `diameter` tinyint NOT NULL,
  `Powder` tinyint NOT NULL,
  `GrainsUsed` tinyint NOT NULL,
  `EnergyFootLBS` tinyint NOT NULL,
  `maxSpeed` tinyint NOT NULL,
  `minSpeed` tinyint NOT NULL,
  `avgSpeed` tinyint NOT NULL,
  `StandardDeviation` tinyint NOT NULL,
  `loadCount` tinyint NOT NULL,
  `FailFeedPerc` tinyint NOT NULL,
  `cycleFailureCount` tinyint NOT NULL,
  `failureToFeedCount` tinyint NOT NULL,
  `coal` tinyint NOT NULL,
  `avgGroup` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `get357Mag`
--

DROP TABLE IF EXISTS `get357Mag`;
/*!50001 DROP VIEW IF EXISTS `get357Mag`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `get357Mag` (
  `LoadId` tinyint NOT NULL,
  `GroupSize` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `ProjectileName` tinyint NOT NULL,
  `BulletWeightGR` tinyint NOT NULL,
  `diameter` tinyint NOT NULL,
  `Powder` tinyint NOT NULL,
  `GrainsUsed` tinyint NOT NULL,
  `EnergyFootLBS` tinyint NOT NULL,
  `maxSpeed` tinyint NOT NULL,
  `minSpeed` tinyint NOT NULL,
  `avgSpeed` tinyint NOT NULL,
  `StandardDeviation` tinyint NOT NULL,
  `loadCount` tinyint NOT NULL,
  `FailFeedPerc` tinyint NOT NULL,
  `cycleFailureCount` tinyint NOT NULL,
  `failureToFeedCount` tinyint NOT NULL,
  `coal` tinyint NOT NULL,
  `avgGroup` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `get35Rem`
--

DROP TABLE IF EXISTS `get35Rem`;
/*!50001 DROP VIEW IF EXISTS `get35Rem`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `get35Rem` (
  `LoadId` tinyint NOT NULL,
  `GroupSize` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `ProjectileName` tinyint NOT NULL,
  `BulletWeightGR` tinyint NOT NULL,
  `diameter` tinyint NOT NULL,
  `Powder` tinyint NOT NULL,
  `GrainsUsed` tinyint NOT NULL,
  `EnergyFootLBS` tinyint NOT NULL,
  `maxSpeed` tinyint NOT NULL,
  `minSpeed` tinyint NOT NULL,
  `avgSpeed` tinyint NOT NULL,
  `StandardDeviation` tinyint NOT NULL,
  `loadCount` tinyint NOT NULL,
  `FailFeedPerc` tinyint NOT NULL,
  `cycleFailureCount` tinyint NOT NULL,
  `failureToFeedCount` tinyint NOT NULL,
  `coal` tinyint NOT NULL,
  `avgGroup` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `get38SPC`
--

DROP TABLE IF EXISTS `get38SPC`;
/*!50001 DROP VIEW IF EXISTS `get38SPC`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `get38SPC` (
  `LoadId` tinyint NOT NULL,
  `GroupSize` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `ProjectileName` tinyint NOT NULL,
  `BulletWeightGR` tinyint NOT NULL,
  `diameter` tinyint NOT NULL,
  `Powder` tinyint NOT NULL,
  `GrainsUsed` tinyint NOT NULL,
  `EnergyFootLBS` tinyint NOT NULL,
  `maxSpeed` tinyint NOT NULL,
  `minSpeed` tinyint NOT NULL,
  `avgSpeed` tinyint NOT NULL,
  `StandardDeviation` tinyint NOT NULL,
  `loadCount` tinyint NOT NULL,
  `FailFeedPerc` tinyint NOT NULL,
  `cycleFailureCount` tinyint NOT NULL,
  `failureToFeedCount` tinyint NOT NULL,
  `coal` tinyint NOT NULL,
  `avgGroup` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `get40`
--

DROP TABLE IF EXISTS `get40`;
/*!50001 DROP VIEW IF EXISTS `get40`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `get40` (
  `LoadId` tinyint NOT NULL,
  `GroupSize` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `ProjectileName` tinyint NOT NULL,
  `BulletWeightGR` tinyint NOT NULL,
  `diameter` tinyint NOT NULL,
  `Powder` tinyint NOT NULL,
  `GrainsUsed` tinyint NOT NULL,
  `EnergyFootLBS` tinyint NOT NULL,
  `maxSpeed` tinyint NOT NULL,
  `minSpeed` tinyint NOT NULL,
  `avgSpeed` tinyint NOT NULL,
  `StandardDeviation` tinyint NOT NULL,
  `loadCount` tinyint NOT NULL,
  `FailFeedPerc` tinyint NOT NULL,
  `cycleFailureCount` tinyint NOT NULL,
  `failureToFeedCount` tinyint NOT NULL,
  `coal` tinyint NOT NULL,
  `avgGroup` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `get45ACP`
--

DROP TABLE IF EXISTS `get45ACP`;
/*!50001 DROP VIEW IF EXISTS `get45ACP`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `get45ACP` (
  `LoadId` tinyint NOT NULL,
  `GroupSize` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `ProjectileName` tinyint NOT NULL,
  `BulletWeightGR` tinyint NOT NULL,
  `diameter` tinyint NOT NULL,
  `Powder` tinyint NOT NULL,
  `GrainsUsed` tinyint NOT NULL,
  `EnergyFootLBS` tinyint NOT NULL,
  `maxSpeed` tinyint NOT NULL,
  `minSpeed` tinyint NOT NULL,
  `avgSpeed` tinyint NOT NULL,
  `StandardDeviation` tinyint NOT NULL,
  `loadCount` tinyint NOT NULL,
  `FailFeedPerc` tinyint NOT NULL,
  `cycleFailureCount` tinyint NOT NULL,
  `failureToFeedCount` tinyint NOT NULL,
  `coal` tinyint NOT NULL,
  `avgGroup` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `getUnoAnalog`
--

DROP TABLE IF EXISTS `getUnoAnalog`;
/*!50001 DROP VIEW IF EXISTS `getUnoAnalog`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `getUnoAnalog` (
  `token` tinyint NOT NULL,
  `tokenvalue` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `grainType`
--

DROP TABLE IF EXISTS `grainType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grainType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `hotNonAdultHashtags`
--

DROP TABLE IF EXISTS `hotNonAdultHashtags`;
/*!50001 DROP VIEW IF EXISTS `hotNonAdultHashtags`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `hotNonAdultHashtags` (
  `id` tinyint NOT NULL,
  `tag` tinyint NOT NULL,
  `noticed` tinyint NOT NULL,
  `lastNoticed` tinyint NOT NULL,
  `isFromAdult` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `hotTopics`
--

DROP TABLE IF EXISTS `hotTopics`;
/*!50001 DROP VIEW IF EXISTS `hotTopics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `hotTopics` (
  `id` tinyint NOT NULL,
  `tag` tinyint NOT NULL,
  `noticed` tinyint NOT NULL,
  `lastNoticed` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `loadDataComments`
--

DROP TABLE IF EXISTS `loadDataComments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loadDataComments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(3000) DEFAULT 'no comment at this time.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `loaddata`
--

DROP TABLE IF EXISTS `loaddata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loaddata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `powderId` int(11) DEFAULT NULL,
  `chamberId` int(11) DEFAULT NULL,
  `projectileId` int(11) DEFAULT NULL,
  `maxSpeed` int(11) DEFAULT NULL,
  `minSpeed` int(11) DEFAULT NULL,
  `avgSpeed` int(11) DEFAULT NULL,
  `sdSpeed` int(11) DEFAULT NULL,
  `grainsUsed` float DEFAULT NULL,
  `loadCount` int(11) DEFAULT NULL,
  `cycleFailureCount` int(11) DEFAULT NULL,
  `failureToFeedCount` int(11) DEFAULT NULL,
  `coal` float DEFAULT NULL,
  `footPoundsAtMuzzle` int(11) DEFAULT NULL,
  `avgGroupInches` float DEFAULT NULL,
  `stdDeviation` int(11) DEFAULT '3000',
  `alwaysShow` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nifiHashtags`
--

DROP TABLE IF EXISTS `nifiHashtags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nifiHashtags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(45) DEFAULT NULL,
  `noticed` int(11) DEFAULT NULL,
  `lastNoticed` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `isFromAdult` bit(1) DEFAULT b'1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_UNIQUE` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=11120641 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nifiMediaURLs`
--

DROP TABLE IF EXISTS `nifiMediaURLs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nifiMediaURLs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mediaUrl` varchar(445) DEFAULT NULL,
  `isFromAdultFeed` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2001 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nifiTweets`
--

DROP TABLE IF EXISTS `nifiTweets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nifiTweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `screenname` varchar(45) DEFAULT NULL,
  `message` varchar(242) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `powder`
--

DROP TABLE IF EXISTS `powder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `powder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(145) DEFAULT NULL,
  `commonName` varchar(45) DEFAULT NULL,
  `grainTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_idx` (`grainTypeId`),
  CONSTRAINT `id` FOREIGN KEY (`grainTypeId`) REFERENCES `grainType` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `projectile`
--

DROP TABLE IF EXISTS `projectile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `friendlyName` varchar(45) DEFAULT NULL,
  `manufacturer` varchar(45) DEFAULT 'unspecified',
  `grains` int(11) DEFAULT NULL,
  `diameter` varchar(45) NOT NULL DEFAULT '.224',
  `isBoatTail` bit(1) NOT NULL DEFAULT b'1',
  `isPolymerTip` bit(1) NOT NULL DEFAULT b'0',
  `isFlatPoint` bit(1) NOT NULL DEFAULT b'0',
  `isRoundNose` bit(1) NOT NULL DEFAULT b'0',
  `isLeadFree` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `randomAdult`
--

DROP TABLE IF EXISTS `randomAdult`;
/*!50001 DROP VIEW IF EXISTS `randomAdult`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `randomAdult` (
  `id` tinyint NOT NULL,
  `mediaUrl` tinyint NOT NULL,
  `isFromAdultFeed` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `randomAdultTwitterPic`
--

DROP TABLE IF EXISTS `randomAdultTwitterPic`;
/*!50001 DROP VIEW IF EXISTS `randomAdultTwitterPic`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `randomAdultTwitterPic` (
  `id` tinyint NOT NULL,
  `mediaUrl` tinyint NOT NULL,
  `isFromAdultFeed` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `recentFifity`
--

DROP TABLE IF EXISTS `recentFifity`;
/*!50001 DROP VIEW IF EXISTS `recentFifity`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `recentFifity` (
  `id` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `screenname` tinyint NOT NULL,
  `message` tinyint NOT NULL,
  `created_at` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `recentTweets`
--

DROP TABLE IF EXISTS `recentTweets`;
/*!50001 DROP VIEW IF EXISTS `recentTweets`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `recentTweets` (
  `id` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `screenname` tinyint NOT NULL,
  `message` tinyint NOT NULL,
  `created_at` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `token` varchar(200) NOT NULL,
  `tokenvalue` varchar(2500) DEFAULT NULL,
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sl_dailyLog`
--

DROP TABLE IF EXISTS `sl_dailyLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sl_dailyLog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logDate` date DEFAULT NULL,
  `tokenId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sl_tokenName`
--

DROP TABLE IF EXISTS `sl_tokenName`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sl_tokenName` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tokenValue` varchar(85) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `twittercache`
--

DROP TABLE IF EXISTS `twittercache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `twittercache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(45) DEFAULT NULL,
  `body` varchar(245) DEFAULT NULL,
  `posttime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `emailAddress` varchar(45) NOT NULL,
  `password` varchar(128) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `AllMyLoads`
--

/*!50001 DROP TABLE IF EXISTS `AllMyLoads`*/;
/*!50001 DROP VIEW IF EXISTS `AllMyLoads`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `AllMyLoads` AS select `ld`.`avgGroupInches` AS `GroupSize`,`c`.`name` AS `name`,`pro`.`friendlyName` AS `ProjectileName`,`pro`.`grains` AS `BulletWeightGR`,`pro`.`diameter` AS `diameter`,`p`.`commonName` AS `Powder`,`ld`.`grainsUsed` AS `GrainsUsed`,`ld`.`footPoundsAtMuzzle` AS `EnergyFootLBS`,`ld`.`maxSpeed` AS `maxSpeed`,`ld`.`minSpeed` AS `minSpeed`,`ld`.`avgSpeed` AS `avgSpeed`,`ld`.`sdSpeed` AS `StandardDeviation`,`ld`.`loadCount` AS `loadCount`,`ld`.`cycleFailureCount` AS `cycleFailureCount`,`ld`.`failureToFeedCount` AS `failureToFeedCount`,`ld`.`coal` AS `coal`,`ld`.`avgGroupInches` AS `avgGroup` from ((((`loaddata` `ld` join `powder` `p` on((`ld`.`powderId` = `p`.`id`))) join `grainType` `gt` on((`p`.`grainTypeId` = `gt`.`id`))) join `chamber` `c` on((`c`.`id` = `ld`.`chamberId`))) join `projectile` `pro` on((`pro`.`id` = `ld`.`projectileId`))) order by `pro`.`diameter`,`c`.`name`,`ld`.`footPoundsAtMuzzle` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MinecraftWHO`
--

/*!50001 DROP TABLE IF EXISTS `MinecraftWHO`*/;
/*!50001 DROP VIEW IF EXISTS `MinecraftWHO`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MinecraftWHO` AS select substring_index((select `settings`.`tokenvalue` from `settings` where (`settings`.`token` = 'MinecraftWho')),':',-(1)) AS `WhoList` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MyLoads`
--

/*!50001 DROP TABLE IF EXISTS `MyLoads`*/;
/*!50001 DROP VIEW IF EXISTS `MyLoads`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MyLoads` AS select `ld`.`id` AS `LoadId`,`ld`.`avgGroupInches` AS `GroupSize`,`c`.`name` AS `name`,`pro`.`friendlyName` AS `ProjectileName`,`pro`.`grains` AS `BulletWeightGR`,`pro`.`diameter` AS `diameter`,`p`.`commonName` AS `Powder`,`ld`.`grainsUsed` AS `GrainsUsed`,`ld`.`footPoundsAtMuzzle` AS `EnergyFootLBS`,`ld`.`maxSpeed` AS `maxSpeed`,`ld`.`minSpeed` AS `minSpeed`,`ld`.`avgSpeed` AS `avgSpeed`,`ld`.`sdSpeed` AS `StandardDeviation`,`ld`.`loadCount` AS `loadCount`,format(((`ld`.`failureToFeedCount` / `ld`.`loadCount`) * 100),0) AS `FailFeedPerc`,`ld`.`cycleFailureCount` AS `cycleFailureCount`,`ld`.`failureToFeedCount` AS `failureToFeedCount`,`ld`.`coal` AS `coal`,`ld`.`avgGroupInches` AS `avgGroup`,`c`.`linkName` AS `linkName` from ((((`loaddata` `ld` join `powder` `p` on((`ld`.`powderId` = `p`.`id`))) join `grainType` `gt` on((`p`.`grainTypeId` = `gt`.`id`))) join `chamber` `c` on((`c`.`id` = `ld`.`chamberId`))) join `projectile` `pro` on((`pro`.`id` = `ld`.`projectileId`))) where (`ld`.`alwaysShow` = 1) order by `pro`.`diameter`,`c`.`name`,`ld`.`footPoundsAtMuzzle` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `NewTwitterPulls`
--

/*!50001 DROP TABLE IF EXISTS `NewTwitterPulls`*/;
/*!50001 DROP VIEW IF EXISTS `NewTwitterPulls`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `NewTwitterPulls` AS select `twittercache`.`id` AS `id`,`twittercache`.`author` AS `author`,`twittercache`.`body` AS `body`,`twittercache`.`posttime` AS `posttime` from `twittercache` order by `twittercache`.`posttime` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PowderChoices`
--

/*!50001 DROP TABLE IF EXISTS `PowderChoices`*/;
/*!50001 DROP VIEW IF EXISTS `PowderChoices`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `PowderChoices` AS select `p`.`manufacturer` AS `manufacturer`,`p`.`commonName` AS `commonName`,`gt`.`description` AS `description` from (`powder` `p` join `grainType` `gt` on((`gt`.`id` = `p`.`grainTypeId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `get223`
--

/*!50001 DROP TABLE IF EXISTS `get223`*/;
/*!50001 DROP VIEW IF EXISTS `get223`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `get223` AS select `ld`.`id` AS `LoadId`,`ld`.`avgGroupInches` AS `GroupSize`,`c`.`name` AS `name`,`pro`.`friendlyName` AS `ProjectileName`,`pro`.`grains` AS `BulletWeightGR`,`pro`.`diameter` AS `diameter`,`p`.`commonName` AS `Powder`,`ld`.`grainsUsed` AS `GrainsUsed`,`ld`.`footPoundsAtMuzzle` AS `EnergyFootLBS`,`ld`.`maxSpeed` AS `maxSpeed`,`ld`.`minSpeed` AS `minSpeed`,`ld`.`avgSpeed` AS `avgSpeed`,`ld`.`sdSpeed` AS `StandardDeviation`,`ld`.`loadCount` AS `loadCount`,format(((`ld`.`failureToFeedCount` / `ld`.`loadCount`) * 100),0) AS `FailFeedPerc`,`ld`.`cycleFailureCount` AS `cycleFailureCount`,`ld`.`failureToFeedCount` AS `failureToFeedCount`,`ld`.`coal` AS `coal`,`ld`.`avgGroupInches` AS `avgGroup` from ((((`loaddata` `ld` join `powder` `p` on((`ld`.`powderId` = `p`.`id`))) join `grainType` `gt` on((`p`.`grainTypeId` = `gt`.`id`))) join `chamber` `c` on((`c`.`id` = `ld`.`chamberId`))) join `projectile` `pro` on((`pro`.`id` = `ld`.`projectileId`))) where ((`ld`.`alwaysShow` = 1) and (`ld`.`chamberId` = 1)) order by `pro`.`diameter`,`c`.`name`,`ld`.`footPoundsAtMuzzle` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `get300blk`
--

/*!50001 DROP TABLE IF EXISTS `get300blk`*/;
/*!50001 DROP VIEW IF EXISTS `get300blk`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `get300blk` AS select `ld`.`id` AS `LoadId`,`ld`.`avgGroupInches` AS `GroupSize`,`c`.`name` AS `name`,`pro`.`friendlyName` AS `ProjectileName`,`pro`.`grains` AS `BulletWeightGR`,`pro`.`diameter` AS `diameter`,`p`.`commonName` AS `Powder`,`ld`.`grainsUsed` AS `GrainsUsed`,`ld`.`footPoundsAtMuzzle` AS `EnergyFootLBS`,`ld`.`maxSpeed` AS `maxSpeed`,`ld`.`minSpeed` AS `minSpeed`,`ld`.`avgSpeed` AS `avgSpeed`,`ld`.`sdSpeed` AS `StandardDeviation`,`ld`.`loadCount` AS `loadCount`,format(((`ld`.`failureToFeedCount` / `ld`.`loadCount`) * 100),0) AS `FailFeedPerc`,`ld`.`cycleFailureCount` AS `cycleFailureCount`,`ld`.`failureToFeedCount` AS `failureToFeedCount`,`ld`.`coal` AS `coal`,`ld`.`avgGroupInches` AS `avgGroup` from ((((`loaddata` `ld` join `powder` `p` on((`ld`.`powderId` = `p`.`id`))) join `grainType` `gt` on((`p`.`grainTypeId` = `gt`.`id`))) join `chamber` `c` on((`c`.`id` = `ld`.`chamberId`))) join `projectile` `pro` on((`pro`.`id` = `ld`.`projectileId`))) where ((`ld`.`alwaysShow` = 1) and (`ld`.`chamberId` = 3)) order by `pro`.`diameter`,`c`.`name`,`ld`.`footPoundsAtMuzzle` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `get308Win`
--

/*!50001 DROP TABLE IF EXISTS `get308Win`*/;
/*!50001 DROP VIEW IF EXISTS `get308Win`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `get308Win` AS select `ld`.`id` AS `LoadId`,`ld`.`avgGroupInches` AS `GroupSize`,`c`.`name` AS `name`,`pro`.`friendlyName` AS `ProjectileName`,`pro`.`grains` AS `BulletWeightGR`,`pro`.`diameter` AS `diameter`,`p`.`commonName` AS `Powder`,`ld`.`grainsUsed` AS `GrainsUsed`,`ld`.`footPoundsAtMuzzle` AS `EnergyFootLBS`,`ld`.`maxSpeed` AS `maxSpeed`,`ld`.`minSpeed` AS `minSpeed`,`ld`.`avgSpeed` AS `avgSpeed`,`ld`.`sdSpeed` AS `StandardDeviation`,`ld`.`loadCount` AS `loadCount`,format(((`ld`.`failureToFeedCount` / `ld`.`loadCount`) * 100),0) AS `FailFeedPerc`,`ld`.`cycleFailureCount` AS `cycleFailureCount`,`ld`.`failureToFeedCount` AS `failureToFeedCount`,`ld`.`coal` AS `coal`,`ld`.`avgGroupInches` AS `avgGroup` from ((((`loaddata` `ld` join `powder` `p` on((`ld`.`powderId` = `p`.`id`))) join `grainType` `gt` on((`p`.`grainTypeId` = `gt`.`id`))) join `chamber` `c` on((`c`.`id` = `ld`.`chamberId`))) join `projectile` `pro` on((`pro`.`id` = `ld`.`projectileId`))) where ((`ld`.`alwaysShow` = 1) and (`ld`.`chamberId` = 5)) order by `pro`.`diameter`,`c`.`name`,`ld`.`footPoundsAtMuzzle` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `get30_06`
--

/*!50001 DROP TABLE IF EXISTS `get30_06`*/;
/*!50001 DROP VIEW IF EXISTS `get30_06`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `get30_06` AS select `ld`.`id` AS `LoadId`,`ld`.`avgGroupInches` AS `GroupSize`,`c`.`name` AS `name`,`pro`.`friendlyName` AS `ProjectileName`,`pro`.`grains` AS `BulletWeightGR`,`pro`.`diameter` AS `diameter`,`p`.`commonName` AS `Powder`,`ld`.`grainsUsed` AS `GrainsUsed`,`ld`.`footPoundsAtMuzzle` AS `EnergyFootLBS`,`ld`.`maxSpeed` AS `maxSpeed`,`ld`.`minSpeed` AS `minSpeed`,`ld`.`avgSpeed` AS `avgSpeed`,`ld`.`sdSpeed` AS `StandardDeviation`,`ld`.`loadCount` AS `loadCount`,format(((`ld`.`failureToFeedCount` / `ld`.`loadCount`) * 100),0) AS `FailFeedPerc`,`ld`.`cycleFailureCount` AS `cycleFailureCount`,`ld`.`failureToFeedCount` AS `failureToFeedCount`,`ld`.`coal` AS `coal`,`ld`.`avgGroupInches` AS `avgGroup` from ((((`loaddata` `ld` join `powder` `p` on((`ld`.`powderId` = `p`.`id`))) join `grainType` `gt` on((`p`.`grainTypeId` = `gt`.`id`))) join `chamber` `c` on((`c`.`id` = `ld`.`chamberId`))) join `projectile` `pro` on((`pro`.`id` = `ld`.`projectileId`))) where ((`ld`.`alwaysShow` = 1) and (`ld`.`chamberId` = 2)) order by `pro`.`diameter`,`c`.`name`,`ld`.`footPoundsAtMuzzle` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `get357Mag`
--

/*!50001 DROP TABLE IF EXISTS `get357Mag`*/;
/*!50001 DROP VIEW IF EXISTS `get357Mag`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `get357Mag` AS select `ld`.`id` AS `LoadId`,`ld`.`avgGroupInches` AS `GroupSize`,`c`.`name` AS `name`,`pro`.`friendlyName` AS `ProjectileName`,`pro`.`grains` AS `BulletWeightGR`,`pro`.`diameter` AS `diameter`,`p`.`commonName` AS `Powder`,`ld`.`grainsUsed` AS `GrainsUsed`,`ld`.`footPoundsAtMuzzle` AS `EnergyFootLBS`,`ld`.`maxSpeed` AS `maxSpeed`,`ld`.`minSpeed` AS `minSpeed`,`ld`.`avgSpeed` AS `avgSpeed`,`ld`.`sdSpeed` AS `StandardDeviation`,`ld`.`loadCount` AS `loadCount`,format(((`ld`.`failureToFeedCount` / `ld`.`loadCount`) * 100),0) AS `FailFeedPerc`,`ld`.`cycleFailureCount` AS `cycleFailureCount`,`ld`.`failureToFeedCount` AS `failureToFeedCount`,`ld`.`coal` AS `coal`,`ld`.`avgGroupInches` AS `avgGroup` from ((((`loaddata` `ld` join `powder` `p` on((`ld`.`powderId` = `p`.`id`))) join `grainType` `gt` on((`p`.`grainTypeId` = `gt`.`id`))) join `chamber` `c` on((`c`.`id` = `ld`.`chamberId`))) join `projectile` `pro` on((`pro`.`id` = `ld`.`projectileId`))) where ((`ld`.`alwaysShow` = 1) and (`ld`.`chamberId` = 7)) order by `pro`.`diameter`,`c`.`name`,`ld`.`footPoundsAtMuzzle` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `get35Rem`
--

/*!50001 DROP TABLE IF EXISTS `get35Rem`*/;
/*!50001 DROP VIEW IF EXISTS `get35Rem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `get35Rem` AS select `ld`.`id` AS `LoadId`,`ld`.`avgGroupInches` AS `GroupSize`,`c`.`name` AS `name`,`pro`.`friendlyName` AS `ProjectileName`,`pro`.`grains` AS `BulletWeightGR`,`pro`.`diameter` AS `diameter`,`p`.`commonName` AS `Powder`,`ld`.`grainsUsed` AS `GrainsUsed`,`ld`.`footPoundsAtMuzzle` AS `EnergyFootLBS`,`ld`.`maxSpeed` AS `maxSpeed`,`ld`.`minSpeed` AS `minSpeed`,`ld`.`avgSpeed` AS `avgSpeed`,`ld`.`sdSpeed` AS `StandardDeviation`,`ld`.`loadCount` AS `loadCount`,format(((`ld`.`failureToFeedCount` / `ld`.`loadCount`) * 100),0) AS `FailFeedPerc`,`ld`.`cycleFailureCount` AS `cycleFailureCount`,`ld`.`failureToFeedCount` AS `failureToFeedCount`,`ld`.`coal` AS `coal`,`ld`.`avgGroupInches` AS `avgGroup` from ((((`loaddata` `ld` join `powder` `p` on((`ld`.`powderId` = `p`.`id`))) join `grainType` `gt` on((`p`.`grainTypeId` = `gt`.`id`))) join `chamber` `c` on((`c`.`id` = `ld`.`chamberId`))) join `projectile` `pro` on((`pro`.`id` = `ld`.`projectileId`))) where ((`ld`.`alwaysShow` = 1) and (`ld`.`chamberId` = 4)) order by `pro`.`diameter`,`c`.`name`,`ld`.`footPoundsAtMuzzle` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `get38SPC`
--

/*!50001 DROP TABLE IF EXISTS `get38SPC`*/;
/*!50001 DROP VIEW IF EXISTS `get38SPC`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `get38SPC` AS select `ld`.`id` AS `LoadId`,`ld`.`avgGroupInches` AS `GroupSize`,`c`.`name` AS `name`,`pro`.`friendlyName` AS `ProjectileName`,`pro`.`grains` AS `BulletWeightGR`,`pro`.`diameter` AS `diameter`,`p`.`commonName` AS `Powder`,`ld`.`grainsUsed` AS `GrainsUsed`,`ld`.`footPoundsAtMuzzle` AS `EnergyFootLBS`,`ld`.`maxSpeed` AS `maxSpeed`,`ld`.`minSpeed` AS `minSpeed`,`ld`.`avgSpeed` AS `avgSpeed`,`ld`.`sdSpeed` AS `StandardDeviation`,`ld`.`loadCount` AS `loadCount`,format(((`ld`.`failureToFeedCount` / `ld`.`loadCount`) * 100),0) AS `FailFeedPerc`,`ld`.`cycleFailureCount` AS `cycleFailureCount`,`ld`.`failureToFeedCount` AS `failureToFeedCount`,`ld`.`coal` AS `coal`,`ld`.`avgGroupInches` AS `avgGroup` from ((((`loaddata` `ld` join `powder` `p` on((`ld`.`powderId` = `p`.`id`))) join `grainType` `gt` on((`p`.`grainTypeId` = `gt`.`id`))) join `chamber` `c` on((`c`.`id` = `ld`.`chamberId`))) join `projectile` `pro` on((`pro`.`id` = `ld`.`projectileId`))) where ((`ld`.`alwaysShow` = 1) and (`ld`.`chamberId` = 8)) order by `pro`.`diameter`,`c`.`name`,`ld`.`footPoundsAtMuzzle` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `get40`
--

/*!50001 DROP TABLE IF EXISTS `get40`*/;
/*!50001 DROP VIEW IF EXISTS `get40`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `get40` AS select `ld`.`id` AS `LoadId`,`ld`.`avgGroupInches` AS `GroupSize`,`c`.`name` AS `name`,`pro`.`friendlyName` AS `ProjectileName`,`pro`.`grains` AS `BulletWeightGR`,`pro`.`diameter` AS `diameter`,`p`.`commonName` AS `Powder`,`ld`.`grainsUsed` AS `GrainsUsed`,`ld`.`footPoundsAtMuzzle` AS `EnergyFootLBS`,`ld`.`maxSpeed` AS `maxSpeed`,`ld`.`minSpeed` AS `minSpeed`,`ld`.`avgSpeed` AS `avgSpeed`,`ld`.`sdSpeed` AS `StandardDeviation`,`ld`.`loadCount` AS `loadCount`,format(((`ld`.`failureToFeedCount` / `ld`.`loadCount`) * 100),0) AS `FailFeedPerc`,`ld`.`cycleFailureCount` AS `cycleFailureCount`,`ld`.`failureToFeedCount` AS `failureToFeedCount`,`ld`.`coal` AS `coal`,`ld`.`avgGroupInches` AS `avgGroup` from ((((`loaddata` `ld` join `powder` `p` on((`ld`.`powderId` = `p`.`id`))) join `grainType` `gt` on((`p`.`grainTypeId` = `gt`.`id`))) join `chamber` `c` on((`c`.`id` = `ld`.`chamberId`))) join `projectile` `pro` on((`pro`.`id` = `ld`.`projectileId`))) where ((`ld`.`alwaysShow` = 1) and (`ld`.`chamberId` = 9)) order by `pro`.`diameter`,`c`.`name`,`ld`.`footPoundsAtMuzzle` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `get45ACP`
--

/*!50001 DROP TABLE IF EXISTS `get45ACP`*/;
/*!50001 DROP VIEW IF EXISTS `get45ACP`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `get45ACP` AS select `ld`.`id` AS `LoadId`,`ld`.`avgGroupInches` AS `GroupSize`,`c`.`name` AS `name`,`pro`.`friendlyName` AS `ProjectileName`,`pro`.`grains` AS `BulletWeightGR`,`pro`.`diameter` AS `diameter`,`p`.`commonName` AS `Powder`,`ld`.`grainsUsed` AS `GrainsUsed`,`ld`.`footPoundsAtMuzzle` AS `EnergyFootLBS`,`ld`.`maxSpeed` AS `maxSpeed`,`ld`.`minSpeed` AS `minSpeed`,`ld`.`avgSpeed` AS `avgSpeed`,`ld`.`sdSpeed` AS `StandardDeviation`,`ld`.`loadCount` AS `loadCount`,format(((`ld`.`failureToFeedCount` / `ld`.`loadCount`) * 100),0) AS `FailFeedPerc`,`ld`.`cycleFailureCount` AS `cycleFailureCount`,`ld`.`failureToFeedCount` AS `failureToFeedCount`,`ld`.`coal` AS `coal`,`ld`.`avgGroupInches` AS `avgGroup` from ((((`loaddata` `ld` join `powder` `p` on((`ld`.`powderId` = `p`.`id`))) join `grainType` `gt` on((`p`.`grainTypeId` = `gt`.`id`))) join `chamber` `c` on((`c`.`id` = `ld`.`chamberId`))) join `projectile` `pro` on((`pro`.`id` = `ld`.`projectileId`))) where ((`ld`.`alwaysShow` = 1) and (`ld`.`chamberId` = 6)) order by `pro`.`diameter`,`c`.`name`,`ld`.`footPoundsAtMuzzle` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `getUnoAnalog`
--

/*!50001 DROP TABLE IF EXISTS `getUnoAnalog`*/;
/*!50001 DROP VIEW IF EXISTS `getUnoAnalog`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `getUnoAnalog` AS select `settings`.`token` AS `token`,`settings`.`tokenvalue` AS `tokenvalue` from `settings` where (`settings`.`token` like 'AnalogCH%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `hotNonAdultHashtags`
--

/*!50001 DROP TABLE IF EXISTS `hotNonAdultHashtags`*/;
/*!50001 DROP VIEW IF EXISTS `hotNonAdultHashtags`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `hotNonAdultHashtags` AS select `nifiHashtags`.`id` AS `id`,`nifiHashtags`.`tag` AS `tag`,`nifiHashtags`.`noticed` AS `noticed`,`nifiHashtags`.`lastNoticed` AS `lastNoticed`,`nifiHashtags`.`isFromAdult` AS `isFromAdult` from `nifiHashtags` where ((`nifiHashtags`.`isFromAdult` = 0) and (`nifiHashtags`.`lastNoticed` > (now() - interval 15 minute))) order by `nifiHashtags`.`lastNoticed` desc limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `hotTopics`
--

/*!50001 DROP TABLE IF EXISTS `hotTopics`*/;
/*!50001 DROP VIEW IF EXISTS `hotTopics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `hotTopics` AS select `nifiHashtags`.`id` AS `id`,`nifiHashtags`.`tag` AS `tag`,`nifiHashtags`.`noticed` AS `noticed`,`nifiHashtags`.`lastNoticed` AS `lastNoticed` from `nifiHashtags` where (not((`nifiHashtags`.`tag` like '%?%'))) order by `nifiHashtags`.`noticed` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `randomAdult`
--

/*!50001 DROP TABLE IF EXISTS `randomAdult`*/;
/*!50001 DROP VIEW IF EXISTS `randomAdult`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `randomAdult` AS select `nifiMediaURLs`.`id` AS `id`,`nifiMediaURLs`.`mediaUrl` AS `mediaUrl`,`nifiMediaURLs`.`isFromAdultFeed` AS `isFromAdultFeed` from `nifiMediaURLs` order by rand() limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `randomAdultTwitterPic`
--

/*!50001 DROP TABLE IF EXISTS `randomAdultTwitterPic`*/;
/*!50001 DROP VIEW IF EXISTS `randomAdultTwitterPic`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`codeigniter`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `randomAdultTwitterPic` AS select `nifiMediaURLs`.`id` AS `id`,`nifiMediaURLs`.`mediaUrl` AS `mediaUrl`,`nifiMediaURLs`.`isFromAdultFeed` AS `isFromAdultFeed` from `nifiMediaURLs` where (`nifiMediaURLs`.`isFromAdultFeed` = 1) order by `nifiMediaURLs`.`id` desc limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `recentFifity`
--

/*!50001 DROP TABLE IF EXISTS `recentFifity`*/;
/*!50001 DROP VIEW IF EXISTS `recentFifity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `recentFifity` AS select 1 AS `id`,1 AS `username`,1 AS `screenname`,1 AS `message`,1 AS `created_at` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `recentTweets`
--

/*!50001 DROP TABLE IF EXISTS `recentTweets`*/;
/*!50001 DROP VIEW IF EXISTS `recentTweets`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `recentTweets` AS select `nifiTweets`.`id` AS `id`,`nifiTweets`.`username` AS `username`,`nifiTweets`.`screenname` AS `screenname`,`nifiTweets`.`message` AS `message`,`nifiTweets`.`created_at` AS `created_at` from `nifiTweets` order by `nifiTweets`.`created_at` desc limit 60 */;
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

-- Dump completed on 2017-07-04 16:41:07

-- Adding user..
create user 'codeigniter'@'localhost' identified by 'codeigniter';
create user 'codeigniter'@'%' identified by 'codeigniter';

grant all on codeigniter.* to 'codeigniter'@'localhost';
grant all on codeigniter.* to 'codeigniter'@'%';

