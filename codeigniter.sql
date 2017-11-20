-- MySQL dump 10.16  Distrib 10.2.7-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: codeigniter
-- ------------------------------------------------------
-- Server version	10.2.7-MariaDB-10.2.7+maria~jessie

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
-- Table structure for table `AllMyLoads`
--

DROP TABLE IF EXISTS `AllMyLoads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AllMyLoads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `GroupSize` float DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `ProjectileName` varchar(45) DEFAULT NULL,
  `BulletWeightGR` int(11) DEFAULT NULL,
  `diameter` varchar(45) NOT NULL DEFAULT '',
  `Powder` varchar(45) DEFAULT NULL,
  `GrainsUsed` float DEFAULT NULL,
  `EnergyFootLBS` int(11) DEFAULT NULL,
  `maxSpeed` int(11) DEFAULT NULL,
  `minSpeed` int(11) DEFAULT NULL,
  `avgSpeed` int(11) DEFAULT NULL,
  `StandardDeviation` int(11) DEFAULT NULL,
  `loadCount` int(11) DEFAULT NULL,
  `cycleFailureCount` int(11) DEFAULT NULL,
  `failureToFeedCount` int(11) DEFAULT NULL,
  `coal` float DEFAULT NULL,
  `avgGroup` float DEFAULT NULL,
  `barrelLenInches` int(11) DEFAULT 16,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AllMyLoads`
--

LOCK TABLES `AllMyLoads` WRITE;
/*!40000 ALTER TABLE `AllMyLoads` DISABLE KEYS */;
INSERT INTO `AllMyLoads` VALUES (1,NULL,'.223','Varmint Grenade',50,'.224','IMR4064',23,940,2943,2889,2910,14,30,0,0,-1,-1,-1),(2,NULL,'.223','SP Bulk',55,'.224','IMR4198',20,927,2807,2687,2754,35,20,0,0,-1,-1,-1),(3,0.72,'.223','FMJBT Bulk',55,'.224','IMR4064',24,873,2724,2634,2674,25,10,0,0,2.23,0.72,-1),(4,1.3,'30-06','FMJ Bulk',150,'.308','IMR4064',49,2678,2835,2835,2835,15,50,0,0,-1,1.3,-1),(5,NULL,'30-06','A-Max',178,'.308','IMR4064',45,2329,2461,2390,2427,28,20,0,0,-1,-1,-1),(6,NULL,'300 BLK','FMJ Bulk',150,'.308','A1680',21,1333,2016,1985,2000,10,10,0,0,-1,-1,-1),(7,0.58,'300 BLK','TAC-TX',110,'.308','Lil Gun',19,1326,2330,2998,2330,23,20,0,0,2.19,0.58,-1),(8,NULL,'300 BLK','Rem OTFB',120,'.308','FACTORY',0,1178,2127,2082,2102,-1,40,0,0,-1,-1,-1),(9,NULL,'300 BLK','Match Monster',155,'.308','Lil Gun',14,1166,1840,1840,1840,1,100,0,0,-1,-1,-1),(10,NULL,'300 BLK','FMJ Bulk',150,'.308','IMR4227',15,936,1697,1655,1676,9,20,0,7,-1,-1,-1),(11,NULL,'308 WIN','SST',165,'.308','IMR4064',40,2379,2569,2474,2525,30,15,0,0,-1,-1,-1),(12,0.64,'308 WIN','SST',150,'.308','IMR4064',42,2261,2645,2576,2605,27,20,0,0,-1,0.64,-1),(13,NULL,'308 WIN','FMJ Bulk',150,'.308','IMR4895',38,1943,2452,2391,2415,21,15,0,0,-1,-1,-1),(14,NULL,'308 WIN','FMJ Bulk',150,'.308','Trail Boss',13,614,1391,1327,1362,31,6,6,6,-1,-1,-1),(15,NULL,'35 REM','Bulk FMJ PLD',158,'.357','Unique',10,728,1496,1404,1440,-1,10,0,0,-1,-1,-1),(16,NULL,'35 REM','Bulk FMJ PLD',158,'.357','Trail Boss',11,657,1433,1151,1368,-1,10,0,0,-1,-1,-1),(17,NULL,'357 Mag','Bulk FMJ PLD',158,'.357','IMR4227',14,841,1548,1548,1548,1,20,0,0,-1,-1,-1),(18,NULL,'357 Mag','Bulk FMJ PLD',158,'.357','Unique',6,375,1034,1034,1034,1,20,0,0,-1,-1,-1),(19,NULL,'38 Spc','Bulk FMJ PLD',158,'.357','Unique',5,233,815,815,815,1,20,0,0,-1,-1,-1),(20,NULL,'40 S&W','Bulk FMJ FL',180,'.400','Unique',5,346,930,930,930,1,800,0,0,-1,-1,-1),(21,NULL,'45 ACP','Bulk FMJ RN',220,'.45','Unique',5,285,771,754,764,-1,5,0,0,-1,-1,-1),(22,1.25,'.223 Wylde','V-Max',50,'','IMR3031',23.8,1129,3189,3189,3189,NULL,200,NULL,NULL,NULL,NULL,16),(23,0.75,'.223 Wylde','Nosler BallisticTip: Varmint',55,'','IMR4198',18.5,985,2840,2840,2840,NULL,NULL,NULL,NULL,NULL,NULL,16);
/*!40000 ALTER TABLE `AllMyLoads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogEntry`
--

DROP TABLE IF EXISTS `blogEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogEntry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(245) DEFAULT NULL,
  `imgpath` varchar(245) DEFAULT '/IMRUnicorn/extras/bridge.jpg',
  `imgpathalttext` varchar(50) DEFAULT NULL,
  `body` text DEFAULT 'No body... oops!',
  `publishDate` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogEntry`
--

LOCK TABLES `blogEntry` WRITE;
/*!40000 ALTER TABLE `blogEntry` DISABLE KEYS */;
INSERT INTO `blogEntry` VALUES (6,'Twitter Feed Now Live','Hanging my twitter out there.','/IMRUnicorn/extras/bridge.jpg',NULL,'<p>My twitter feed is now showing on the Twitter page. I did this because.. well filters and work stuff etc etc. Now for some sample spam to simulate long content.</p>\r\n\r\n<p>\r\nAppropriately aggregate principle-centered initiatives and revolutionary manufactured products. Quickly disintermediate stand-alone applications vis-a-vis professional data. Progressively foster cross-platform customer service for corporate functionalities. \r\n</p><p>\r\nIntrinsicly repurpose virtual portals and standards compliant vortals. Monotonectally leverage existing future-proof catalysts for change rather than efficient markets. Monotonectally envisioneer multifunctional niche markets whereas B2C models. \r\n</p><p>\r\nProfessionally recaptiualize professional opportunities and an expanded array of data. Professionally supply revolutionary portals for user friendly niche markets. Monotonectally optimize interactive communities through reliable partnerships. \r\n</p><p>\r\nDramatically reinvent turnkey quality vectors with diverse solutions. Interactively network cross functional vortals after standardized networks. Appropriately empower bricks-and-clicks deliverables whereas market-driven services. \r\n</p><p>\r\nPhosfluorescently network bleeding-edge deliverables before technically sound outsourcing. Dynamically matrix distributed initiatives for cutting-edge deliverables. Objectively administrate technically sound mindshare for dynamic convergence. \r\n</p><p>\r\nProgressively promote maintainable models vis-a-vis robust infrastructures. Enthusiastically supply team driven strategic theme areas with prospective information. Globally simplify innovative networks after cooperative scenarios. \r\n</p><p>\r\nSynergistically mesh web-enabled benefits without exceptional supply chains. Progressively extend error-free e-markets whereas synergistic strategic theme areas.\r\n</p>\r\n                ','2017-08-14 18:39:53'),(7,'Pocher Found','What do you do when you find a poacher?','/IMRUnicorn/extras/poach.jpg',NULL,'<p>Bumble bay tuna... you call the DNR. Lt. Chuck Fawley, for his attention. Should you need to reach him, his officer number is: 410-295-4600. In addition, should you have an immediate need, please do not hesitate to contact our 24/7 communications center and speak with a dispatcher: 410-260-8888.</p>','2017-08-14 18:41:36'),(8,'Sports Riders Unlimited: Group Ride','ride scheduled for Saturday!','/IMRUnicorn/extras/bridge.jpg',NULL,'<p>More info to come later, this is a place holder.</p>\r\n                ','2017-08-16 15:49:21'),(9,'Bombers Bar','When astroids become a little safer from miners.','/IMRUnicorn/extras/bridge.jpg',NULL,'We at bombers bar will defend poor little defenseless asteroids from those evil miners. Those big Rorquals eating up you poor space rocks.. WE WILL AVENGE YOU!\r\n\r\n\r\n</p>\r\n                ','2017-08-24 23:20:00'),(10,'Racial Slurs','Racial slurs are NOT tolerated but takes some effort...','/IMRUnicorn/extras/bridge.jpg',NULL,'&#65279;</p><p>[ 2017.09.07 22:07:06 ] Valdae > 0/\r\n&#65279;</p><p>[ 2017.09.07 22:07:08 ] Valdae > hay sooo\r\n&#65279;</p><p>[ 2017.09.07 22:07:22 ] Valdae > can you smack eternal around a bit.. being corp leader and alliance leader?\r\n&#65279;</p><p>[ 2017.09.07 22:07:30 ] Valdae > for making racial slurs in local\r\n&#65279;</p><p>[ 2017.09.07 22:07:42 ] Valdae > totaly distasteful.. and is violation of EULA rule #2\r\n&#65279;</p><p>[ 2017.09.07 22:07:58 ] Spoz Virtus > several things\r\n&#65279;</p><p>[ 2017.09.07 22:08:14 ] Spoz Virtus > firstly I will leave it to CCP to decide if and what to do if indeed Tyran did report him\r\n&#65279;</p><p>[ 2017.09.07 22:08:33 ] Valdae > ./shrug k\r\n&#65279;</p><p>[ 2017.09.07 22:08:44 ] Spoz Virtus > and secondly tbh if people didnt make a big fuss about it it\'d be ignored by now,\r\n&#65279;</p><p>[ 2017.09.07 22:08:55 ] Valdae > ...\r\n&#65279;</p><p>[ 2017.09.07 22:08:57 ] Spoz Virtus > although i would think the fuss enough is enough for him to not do it again most likely if that makes sense\r\n&#65279;</p><p>[ 2017.09.07 22:09:07 ] Valdae > i make a fuss becuse it\'s offensve as heck to have racist commens posted\r\n&#65279;</p><p>[ 2017.09.07 22:09:11 ] Valdae > it\'s not tollerable\r\n&#65279;</p><p>[ 2017.09.07 22:09:47 ] Spoz Virtus > and i think the discussion about it in local and the threat of rule #2 will be enough for him to not repeat it\r\n&#65279;</p><p>[ 2017.09.07 22:09:53 ] Valdae > perhaps.. i dont think he will though. because of his comments about it afterawrds.. seems to feel it\'s acceptable if not a joke\r\n&#65279;</p><p>[ 2017.09.07 22:10:45 ] Spoz Virtus > its not the thing he has really ever said before, and he is not the kind of person to back down if put on the spot - his response to critisim is to not back down\r\n&#65279;</p><p>[ 2017.09.07 22:10:59 ] Spoz Virtus > but he will acknowledge it im certain, just not lose face\r\n&#65279;</p><p>[ 2017.09.07 22:11:38 ] Valdae > i\'m familuar w/ this behavior in others. particularly US military\r\n&#65279;</p><p>[ 2017.09.07 22:11:39 ] Valdae > so.. i get it\r\n&#65279;</p><p>[ 2017.09.07 22:11:42 ] Valdae > but..\r\n&#65279;</p><p>[ 2017.09.07 22:11:55 ] Valdae > i feel stronglyu.. that you as corp leader.. and alliance leader.. inlocal at the time of the event\r\n&#65279;</p><p>[ 2017.09.07 22:11:59 ] Valdae > should say SOMETHING to him\r\n&#65279;</p><p>[ 2017.09.07 22:12:05 ] Valdae > perhaps not in local.. w/e\r\n&#65279;</p><p>[ 2017.09.07 22:12:07 ] Valdae > but.. ya\r\n&#65279;</p><p>[ 2017.09.07 22:12:08 ] Spoz Virtus > im not constantly reading local unfortunately\r\n&#65279;</p><p>[ 2017.09.07 22:12:23 ] Spoz Virtus > and to now go to it isnt the best way to always get through to people\r\n&#65279;</p><p>[ 2017.09.07 22:12:30 ] Valdae > which i also acknolage.. which is why i\'m making sure you\'re aware of it now.\r\n&#65279;</p><p>[ 2017.09.07 22:13:00 ] Valdae > so.. if i understand your stance correctly... if it passes a 15 minute window of being noticed.. it\'s excusable?\r\n&#65279;</p><p>[ 2017.09.07 22:13:17 ] Spoz Virtus > its not a stance and thats not the reasoning\r\n&#65279;</p><p>[ 2017.09.07 22:14:29 ] Spoz Virtus > the reasoning is also that he just lost his carrier in the CTA, said something in local which has already been picked apart in local and considering it doesnt happen in corp chat, nor alliance chat I believe that we can leave it for now\r\n&#65279;</p><p>[ 2017.09.07 22:15:02 ] Spoz Virtus > i would assume tyran did report him, so rather than actually show that i was insulted in local and give his ban attempt credit\r\n&#65279;</p><p>[ 2017.09.07 22:15:06 ] Spoz Virtus > i would rather not\r\n&#65279;</p><p>[ 2017.09.07 22:17:00 ] Valdae > got it.. so while you acknowlage the content of the racial slurs thus violating the EULA and offending people in lcoal, theres no desire to support the insident\'s claims which may or may not result in corrective action...?\r\n&#65279;</p><p>[ 2017.09.07 22:17:28 ] Valdae > i must be missing something\r\n&#65279;</p><p>[ 2017.09.07 22:17:52 ] Valdae > because that sounds like \"i know he made a racist comment, but i hope it goes away and i hope he doesn\'t say it again.\"\r\n&#65279;</p><p>[ 2017.09.07 22:18:13 ] Valdae > i mean.. not that you can control lcoal.. i get that\r\n&#65279;</p><p>[ 2017.09.07 22:18:22 ] Valdae > be diffrent if it was corp or alliance because you CAN control that\r\n&#65279;</p><p>[ 2017.09.07 22:19:26 ] Spoz Virtus > At the end of the day CCP controls everything.... but local is considerably more public\r\n&#65279;</p><p>[ 2017.09.07 22:19:46 ] Valdae > agreed\r\n&#65279;</p><p>[ 2017.09.07 22:20:10 ] Valdae > i guess... i\'m disapointed.. that someone in a double leadership role (corp adn alliance) chooses to ignore the issue.\r\n&#65279;</p><p>[ 2017.09.07 22:20:45 ] Spoz Virtus > Sorry to disapoint, lots of things let me down in this game too.\r\n&#65279;</p><p>[ 2017.09.07 22:21:12 ] Valdae > ./nod\r\n&#65279;</p><p>[ 2017.09.07 22:21:14 ] Valdae > tnx for hearing me out\r\n&#65279;</p><p>[ 2017.09.07 22:21:18 ] Valdae > i know you don thave to\r\n&#65279;</p><p>[ 2017.09.07 22:21:22 ] Valdae > but it does help to have an ear\r\n&#65279;</p><p>[ 2017.09.07 22:21:34 ] Spoz Virtus > I always hear people out, and im not always right in what i do\r\n&#65279;</p><p>[ 2017.09.07 22:21:43 ] Valdae > good leaders, never are.\r\n&#65279;</p><p>[ 2017.09.07 22:21:46 ] Spoz Virtus > but 5 minutes before I head to bed i really dont need to open this can of worms\r\n&#65279;</p><p>[ 2017.09.07 22:21:52 ] Valdae > if they are always right, they are dictators :P\r\n&#65279;</p><p>[ 2017.09.07 22:22:15 ] Spoz Virtus > but i understand what you are saying, i can very much see your point\r\n&#65279;</p><p>[ 2017.09.07 22:22:51 ] Spoz Virtus > and in the end I honestly think it was an overreaction/not thinking/anger at losing carrier thing from him\r\n&#65279;</p><p>[ 2017.09.07 22:23:52 ] Valdae > perhaps.. but we\'re adults\r\n&#65279;</p><p>[ 2017.09.07 22:23:56 ] Valdae > we\'re responsable for our actions.\r\n&#65279;</p><p>[ 2017.09.07 22:24:25 ] Valdae > i would have a totaly diffrent stance\r\n&#65279;</p><p>[ 2017.09.07 22:24:32 ] Valdae > if he said \"sorry\" or something of that effect\r\n&#65279;</p><p>[ 2017.09.07 22:24:56 ] Valdae > .. but to turn it into a joke or w/e that was... is... sending the wrong message\r\n&#65279;</p><p>[ 2017.09.07 22:24:58 ] Valdae > to everyone in local\r\n&#65279;</p><p>[ 2017.09.07 22:25:09 ] Valdae > that we.. accept and tollerate that behavior\r\n&#65279;</p><p>[ 2017.09.07 22:25:19 ] Valdae > good mood.. bad mood.. etc\r\n&#65279;</p><p>[ 2017.09.07 22:25:21 ] Valdae > ./shrug\r\n&#65279;</p><p>[ 2017.09.07 22:25:31 ] Spoz Virtus > Your argument is valid and I can\'t really defend him\r\n&#65279;</p><p>[ 2017.09.07 22:25:44 ] Spoz Virtus > and you are perhaps right and I and others should have a word with him\r\n&#65279;</p><p>[ 2017.09.07 22:26:01 ] Spoz Virtus > however I definately wouldnt do it in local - correcting peoples behaviour takes time and doesnt work well publically\r\n&#65279;</p><p>[ 2017.09.07 22:26:42 ] Spoz Virtus > i suppose shaming can work - and it should work - but not for all people.\r\n&#65279;</p><p>[ 2017.09.07 22:27:32 ] Spoz Virtus > because you are right on this issue\r\n&#65279;</p><p>[ 2017.09.07 22:28:06 ] Spoz Virtus > I will have a word with him, however I will keep it in corp chat, which is semi-public and I think serves a better purpose for visibility and authority\r\n&#65279;</p><p>[ 2017.09.07 22:28:29 ] Valdae > thankyou. ya.. alliance is.. probably too much\r\n&#65279;</p><p>[ 2017.09.07 22:28:34 ] Valdae > but it had to be called out in local\r\n&#65279;</p><p>[ 2017.09.07 22:28:38 ] Valdae > because thats where it was posted\r\n&#65279;</p><p>[ 2017.09.07 22:28:49 ] Valdae > alliance opens the worms too much imho also\r\n&#65279;</p><p>[ 2017.09.07 22:29:07 ] Spoz Virtus > it doesnt put him in a place with friends where he can discuss what he meant properly\r\n&#65279;</p><p>[ 2017.09.07 22:29:14 ] Spoz Virtus > it puts him on defensive again\r\n&#65279;</p><p>[ 2017.09.07 22:30:14 ] Valdae > how old is he?\r\n&#65279;</p><p>[ 2017.09.07 22:30:22 ] Valdae > not that it really matters but...\r\n&#65279;</p><p>[ 2017.09.07 22:30:27 ] Spoz Virtus > 24 so i believe\r\n&#65279;</p><p>[ 2017.09.07 22:30:33 ] Valdae > i mean..i know i amde some dumb mistakes as a \"kid\"\r\n&#65279;</p><p>[ 2017.09.07 22:30:43 ] Valdae > ./nod .. 19-29... big window for beign dumb\r\n&#65279;</p><p>[ 2017.09.07 22:30:44 ] Valdae > :P\r\n&#65279;</p><p>[ 2017.09.07 22:30:48 ] Valdae > i\'ve been there\r\n&#65279;</p><p>[ 2017.09.07 22:30:49 ] Valdae > i get it\r\n&#65279;</p><p>[ 2017.09.07 22:32:42 ] Spoz Virtus > lets see where this goes\r\n&#65279;</p><p>[ 2017.09.07 22:33:05 ] Valdae > ./nod\r\n&#65279;</p><p>[ 2017.09.07 22:33:06 ] Valdae > o7\r\n&#65279;</p><p>[ 2017.09.07 22:33:07 ] Valdae > o/\r\n&#65279;</p><p>[ 2017.09.07 22:33:11 ] Valdae > tnx again for th eear and time\r\n&#65279;</p><p>[ 2017.09.07 22:33:28 ] Spoz Virtus > a discussion is always a good thing, not enough of them on eve\r\n&#65279;</p><p>[ 2017.09.07 22:33:58 ] Valdae > i\'m.. not very propper.. but i\'m fairly political\r\n&#65279;</p><p>[ 2017.09.07 22:34:10 ] Valdae > haha working for US Department of Defense for 12 years does that to me i guess :P\r\n&#65279;</p><p>[ 2017.09.07 22:35:55 ] Spoz Virtus > I deal with issues like this a lot, things are always easier face to face though\r\n&#65279;</p><p>[ 2017.09.07 22:37:44 ] Spoz Virtus > and its good it wasnt in alliance, it really wouldnt have went well with everyone contributing\r\n&#65279;</p><p>[ 2017.09.07 22:52:02 ] Spoz Virtus > currently they are discussing SJW\'s - social justice warriors - i had to look it up myself\r\n&#65279;</p><p>[ 2017.09.07 22:53:20 ] Spoz Virtus > but a positive kind of discussion about sociaties changing values\r\n&#65279;</p><p>[ 2017.09.07 23:01:24 ] Valdae > i\'m about ot head to bed myself m8. tnx for the ear. hope things work out, hope he learns and not th ehard way.\r\n&#65279;</p><p>[ 2017.09.07 23:01:45 ] Spoz Virtus > We\'ll see what develops from this, I got your point across fairly well\r\n&#65279;</p><p>[ 2017.09.07 23:02:01 ] Valdae > ./nod i feel you did.. and feel we\'re on the same page @ this point\r\n&#65279;</p><p>[ 2017.09.07 23:02:05 ] Spoz Virtus > and your balanced argument shamed me into action in corp chat, perhaps i should have done without the pushing\r\n&#65279;</p><p>[ 2017.09.07 23:02:39 ] Valdae > ty for that comment. it ensures me i made the right choice to push :D\r\n&#65279;</p><p>[ 2017.09.07 23:03:06 ] Valdae > annnyway... pew pew time!\r\n&#65279;</p><p>[ 2017.09.07 23:03:08 ] Valdae > before bed\r\n&#65279;</p><p>[ 2017.09.07 23:03:11 ] Valdae > o7\r\n&#65279;</p><p>[ 2017.09.07 23:03:12 ] Valdae > o/\r\n&#65279;</p><p>[ 2017.09.07 23:03:12 ] Spoz Virtus > lol for sure\r\n&#65279;</p><p>[ 2017.09.07 23:03:13 ] Spoz Virtus > goodnighjt\r\n</p>','2017-09-07 23:07:14'),(11,'Load Data','I need to update the database a bit and find the data for it.','/IMRUnicorn/extras/bridge.jpg',NULL,'Every once in a while i look up the B.C. values for projectiles. I use this to check out come-up charts online while not right at my gunsafe. Some of my firearms have the comeups taped right to them. Laminated and taped to the stock!</p>\r\n<p>I should probably also add the sectional density, just incase i need it later. I only need it once per projectile... it seems like a no brainer.</p>','2017-10-13 11:35:50');
/*!40000 ALTER TABLE `blogEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample`
--

DROP TABLE IF EXISTS `sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample`
--

LOCK TABLES `sample` WRITE;
/*!40000 ALTER TABLE `sample` DISABLE KEYS */;
INSERT INTO `sample` VALUES (1,'Sven','Davison'),(2,'Ben','SpelledABC');
/*!40000 ALTER TABLE `sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'sven','jolene');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-13 22:41:17
