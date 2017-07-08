<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!--
CREATE PROCEDURE codeigniter.addSample (
        IN firstname VARCHAR(45),
        IN lastname VARCHAR(45))
BEGIN

INSERT INTO sample (fname, lname) 
        SELECT firstname, lastname FROM DUAL
WHERE NOT EXISTS (SELECT * FROM sample 
      WHERE fname=firstname AND lname=lastname) 
LIMIT 1;
-->

<sql:update var="dropSample" dataSource="jdbc/codeigniter">
    DROP TABLE sample
</sql:update>

<sql:update var="dropAllMyLoads" dataSource="jdbc/codeigniter">
    DROP TABLE AllMyLoads
</sql:update>

<sql:update var="createSample" dataSource="jdbc/codeigniter">
    CREATE TABLE IF NOT EXISTS sample (id INT NOT NULL AUTO_INCREMENT, fname VARCHAR(45) NULL, lname VARCHAR(45) NULL, PRIMARY KEY (id))
</sql:update>

<sql:query var="addSample1" dataSource="jdbc/codeigniter">
    insert into sample(fname, lname) values("Sven", "Davison")
</sql:query>

<sql:query var="addSample1" dataSource="jdbc/codeigniter">
    insert into sample(fname, lname) values("Ben", "SpelledABC")
</sql:query>

<sql:update var="createAllMyLoads" dataSource="jdbc/codeigniter">
    CREATE TABLE IF NOT EXISTS AllMyLoads (
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
    `avgGroup` float DEFAULT NULL
    ) ENGINE=InnoDB DEFAULT CHARSET=latin1
</sql:update>


<sql:query var="insertAllMyLoads" dataSource="jdbc/codeigniter">
INSERT INTO `AllMyLoads` (`GroupSize`,`name`,`ProjectileName`,`BulletWeightGR`,`diameter`,`Powder`,`GrainsUsed`,`EnergyFootLBS`,`maxSpeed`,`minSpeed`,`avgSpeed`,`StandardDeviation`,`loadCount`,`cycleFailureCount`,`failureToFeedCount`,`coal`,`avgGroup`) VALUES 
	(-1,'.223','Varmint Grenade',50,'.224','IMR4064',23,940,2943,2889,2910,14,30,0,0,-1,-1),
	(-1,'.223','SP Bulk',55,'.224','IMR4198',20,927,2807,2687,2754,35,20,0,0,-1,-1),
	(0.72,'.223','FMJBT Bulk',55,'.224','IMR4064',24,873,2724,2634,2674,25,10,0,0,2.23,0.72),
	(1.3,'30-06','FMJ Bulk',150,'.308','IMR4064',49,2678,2835,2835,2835,15,50,0,0,-1,1.3),
	(-1,'30-06','A-Max',178,'.308','IMR4064',45,2329,2461,2390,2427,28,20,0,0,-1,-1),
	(-1,'30-06','A-Max',178,'.308','IMR4064',42,2048,2391,2244,2276,42,10,0,0,-1,-1),
	(-1,'300 BLK','FMJ Bulk',150,'.308','A1680',21,1333,2016,1985,2000,10,10,0,0,-1,-1),
	(0.58,'300 BLK','TAC-TX',110,'.308','Lil Gun',19,1326,2330,2998,2330,23,20,0,0,2.19,0.58),
	(-1,'300 BLK','Rem OTFB',120,'.308','FACTORY',0,1178,2127,2082,2102,-1,40,0,0,-1,-1),
	(-1,'300 BLK','Match Monster',155,'.308','Lil Gun',14,1166,1840,1840,1840,1,100,0,0,-1,-1),
	(-1,'300 BLK','FMJ Bulk',150,'.308','IMR4227',15,936,1697,1655,1676,9,20,0,7,-1,-1),
	(-1,'308 WIN','SST',165,'.308','IMR4064',40,2379,2569,2474,2525,30,15,0,0,-1,-1),
	(-1,'308 WIN','A-Max',208,'.308','RL-15',38.1,2355,2297,2224,2258,26,12,0,0,-1,-1),
	(-1,'308 WIN','FMJ Bulk',150,'.308','RL-15',42.1,2278,2652,2593,2615,23,8,0,0,-1,-1),
	(0.64,'308 WIN','SST',150,'.308','IMR4064',42,2261,2645,2576,2605,27,20,0,0,-1,0.64),
	(-1,'308 WIN','FMJ Bulk',150,'.308','IMR4895',38,1943,2452,2391,2415,21,15,0,0,-1,-1),
	(-1,'308 WIN','FMJ Bulk',150,'.308','Trail Boss',13,614,1391,1327,1362,31,6,6,6,-1,-1),
	(-1,'35 REM','Bulk FMJ PLD',158,'.357','Unique',12,897,1685,1503,1598,-1,10,0,0,-1,-1),
	(-1,'35 REM','Bulk FMJ PLD',158,'.357','Unique',10,728,1496,1404,1440,-1,10,0,0,-1,-1),
	(-1,'35 REM','Bulk FMJ PLD',158,'.357','Trail Boss',11,657,1433,1151,1368,-1,10,0,0,-1,-1),
	(-1,'35 REM','XTP',110,'.357','Unique',7,299,1147,1073,1107,-1,8,0,0,-1,-1),
	(-1,'357 Mag','Bulk FMJ PLD',158,'.357','IMR4227',14,841,1548,1548,1548,1,20,0,0,-1,-1),
	(-1,'357 Mag','Bulk FMJ PLD',158,'.357','Unique',6,375,1034,1034,1034,1,20,0,0,-1,-1),
	(-1,'38 Spc','Bulk FMJ PLD',158,'.357','Unique',5,233,815,815,815,1,20,0,0,-1,-1),
	(-1,'40 S&W','Bulk FMJ FL',180,'.400','Unique',5,346,930,930,930,1,800,0,0,-1,-1),
	(-1,'45 ACP','Bulk FMJ RN',220,'.45','Unique',5,285,771,754,764,-1,5,0,0,-1,-1)
</sql:query>



<sql:query var="rs" dataSource="jdbc/codeigniter">
    select * from sample
</sql:query>


<html>
    <head>
        <title>DB Test</title>
    </head>
    <body>

        <h2>Results</h2>

        <c:forEach var="row" items="${rs.rows}">
            FName: ${row.fname},LName ${row.lname}<br/>
        </c:forEach>

    </body>
</html>