Deel 2 Database creatie(

oefenbundel 1(

-- 1. Schrijf de SQL-instructie die ervoor zorgt dat een database met naam “Sales” aangemaakt wordt.

CREATE DATABASE `Sales`;

-- 2. Schrijf de SQL-instructie die ervoor zorgt dat een database met naam “BachelorIT” aangemaakt wordt. Het aanmaken mag enkel gebeurenindien deze database nog niet bestaat!

CREATE DATABASE IF NOT EXISTS `BachlorIT`;

-- 3. Schrijf de SQL-instructie die ervoor zorgt dat de zonet aangemaakte database “BachelorIT” wordt verwijderd.

DROP DATABASE `BachelorIT`
)

oefenbundel 5(

--- 1. 
CREATE DATABASE `AP`;

-- 2.
CREATE TABLE `ap`.`afdelingen`(
`AFDNR`	 CHAR(5) PRIMARY KEY,
`BUDGET` decimal(8,2) NOT NULL,
`LOCATIE` VARCHAR(30),
`ISACTIEF` TINYINT UNSINGED DEFAULT FALSE,
`GEMPUNTEN`	decimal(5,2)
);
-- 3. 
insert into `ap`.`afdelingen`('12345',2000.25,'Campus Ellermanstraat', FALSE, 12.43)


)

oefenbundel 6(
-- 1.
drop table `ap`.`afdelingen`;

--2.
CREATE TABLE `tblopleidingen` (
`code` varchar(10) PRIMARY KEY,
`omschrijving` MEDIUMTEXT,
`duur` YEAR
);

--3
CREATE TABLE `tblAfdelingen`(
`nr` smallint unsigned  PRIMARY KEY AUTO_INCREMENT,
`Naam` varchar(100)
`Replicatiecode` char(36)

)AUTO_INCREMENT(10);
--4
CREATE TABLE `tblMedewerkers` (
`Nr` MEDIUMINT unsigned PRIMARY KEY AUTO_INCREMENT,
`Naam` varchar(100),
`adres` varchar(135),
`afdelingNr` smallint unsigned,
FOREIGN KEY(`afdelingNr`)
REFERENCES `tblAfdelingen`(`nr`)
)AUTO_INCREMENT(1);

--6
CREATE TABLE `tblGevolgdeOpleidingen`(
`Medewerkernr` MEDIUMINT unsigned,
`Opleidingenscode` varchar(10),
`datum` date,
`voltooid` BIGINT UNSINGED

foreign key (`Medewerkernr`)
REFERENCES `tblMedewerkers`(`nr`),

foreign key(`opleidingscode`)
REFERENCES tblopleidingen`(`code`)
)

)

oefenbundel 7 (

--1
create database `planes`;

--2
create table `tblManufacturers`(
`id` smallint unsigned primary key auto_increment,
`name` varchar(70) not null,
)auto_increment (101);

--3
create table `tblPlaneDefinitions`(
`id` MEDIUMINT unsigned primary key auto_increment,
`ManufacturerId` smallint  unique unsigned not null,
`name` varchar(100) unique not null,
`designdate` date unique not null,
`IsMilitary` tinyint unsigned, 
`nmberofnegines` tinyint unsigned,
`weight` decimal(5,2),

foreign key (`manufacturedID`)
REFERENCES `tblManufacturers`(`id`)
on delete restrict
)auto_increment(1);

)
)

Deel 3 karaktersets en mutaties(

oefenbundel 1 (
--1
create database `learining` default charset utf8mb4;
--2
create table `tblLanguages`(
`id` 	tinyint unsigned primary key auto_increment,
`name` 	varchar(20) unique not null default charset latin1,
)
--3
create table `tblCourseDefinitions`(
`id` 				mediumint unsigned primary key auto_increment, 
`LanguegeId` 		tinyint unsigned not null, 
`name` 				varchar(100) not null,
`replicationkey` 	char(36) charset latin1 not null,

foreign key (`learining`)
REFERENCES `tblLanguages`(`id`)
);

)

oefenbundel 2(
use tennis2;
 --2
rename `bestuurleden` TO `tblbestuursleden`;
rename `boetes` TO `tblboetes`;
rename `spelers` TO `tblspelers``;
rename `teams` TO `tblTeams``s``;
rename `wedstrijden` TO `tblWedstrijden`;

--3
alter table `tblBoetes` ADD
(
	`reden` varchar(355)
);

--4
alter table `tblspelers` ADD
(
	`Voornaam` varchar(50)
);

--5
alter table `tblBoetes` ADD
(
	`paymentdate` date after `bedrag`
);

-- 6 
alter table `tblselers` 
drop `voorletters` ; 

--7 

alter table `tblBoetes`
change `paymentdate` `betalingsDatum` date;

--8
alter table `spelers`
change `naam` `naam` varchar(50) not null;

--9
alter table `tblSplers` add CONSTRAINT
unique(`naam`,`straat`, `huisnr`, `postcode`)
)

oefenbundel 3(

use tennis3;

-- 3 
INSERT INTO `BOETES` VALUES (15,27,'2020-08-08',75);


INSERT INTO `BOETES` VALUES
	(16,7,'2020-08-12',50),
	(18,44,'2020-08-18',60),
	(19,7,'2020-09-10',100);



)

oefenbundel 4 (
use tennis3;

--2
UPDATE `BOETES` SET
`bedrag`= `bedrag` * 1.05;
--3

UPDATE `boetes` 
set bedrag` = 120

where
	year(DATUM) =2020;
)

oefenbundel 5(
--2
DELETE FROM `BESTUURLEDEN`;
--3
DELETE FROM `BOETES`
WHERE
	`SPELERNR` = 7;
)
)

Deel 4 select instructie basics(

oefenbundel 1 (
--1
SELECT
	`BEDRAG`
	`BETAKLINGSNR`
FROM
	`BOETES`

--2
SELECT
	`TEAMNR`
	`SPELERNR`
	`GEWONNEN`-`VERLOREN`
FROM
	`WEDSTRIJDEN`
	
--3
SELECT
	`SPELERSNR`,
	`TEAMNR`,
	`GEWONNEN`-`VERLOREN` AS `RESULTAAT`
FROM
	`WEDSTRIJDEN`

)

oefenbundel 2(

--1

SELECT
	`SPELERNR`,
	`TEAMNR`,
	CASE
		WHEN(`GEWONNEN` > `VERLOREN`) THEN 'GEWONNEN'
		ELSE 'VERLOREN'
	END AS `RESULTAAT`
	
FROM
	`WEDSTRIJDEN`
	
--2 
SELECT 
	`SPELEER`,
	`JAARTOE`,
	CASE
		WHEN (`JAARTOE` < 1980) then 'ouderen'
		else (`JAARTOE` >= 1980 and `JAARTOE` < 1983 then 'jongeren'
		else 'kinderen'
	END AS `GROEP`
	
FROM
	`SPELERS`
	
--3
SELECT 
	`SPELEER`,
	`JAARTOE`,
	CASE
		WHEN (`JAARTOE` < 1980) then 
			CASE
				WHEN (`BONDSNR IS NULL) THEN 'recreatief ouderen'
				ELSE 'OUDEREN WEDSTRIJD'
			END
			
		else (`JAARTOE` >= 1980 and `JAARTOE` < 1983 then 'jongeren'
		else 'kinderen'
	END AS `GROEP`
	
FROM
	`SPELERS`		
)
)



)

oefenbundel 3(
-- Huidig formaat: 070-237893
-- Gewenst formaat: +31(0)70-237893
-- 1
SELECT
	`SPELERNR`,
	`NAAM`,
	CONCAT(
		'+31(0)', right(`TELEFOON`, LENGTH(`TELEFOON`)-1)
		) AS `inttelefoon`
FROM
	`spelers`

-- 2

SELECT
	`SPELERSNR`,
	case
		when
		(
			MONTH(`geb_datum`) = MONTH(CURRENT_DATE())
			AND DAY(`geb_datum`) = DAY(CURRENT_DATE())
		
		) THEN 'JARIG'
		ELSE 'Niet jarig'
	end as `feest`

FROM
	`spelers`;
	
)

oefenbundel 4 (

SELECT
	max(`gewonnen`-`verloren`) as `maximaal`
from
	`wedstrijden`

SELECT
	COUNT(*) as `aantal`
FROM 
	`wedstrijden`
)

oefenbundel 5(

-- 1

SELECT
	*
FROM
	`tblconsles`

-- 2
SELECT
	REPLACE(`naam`,' ','_') as `uitgever`
FROM
	`tbluitgevers`
-- 3
SELECT
	LCASE(`naam`) as `uitgever`
from
	`tbldefentions`
	
-- 4

SELECT
	REPLACE
	(
		REPLACE(LOWER(`naam`),'-','_'), ' ', '_')  AS `Game`
FROM
	`tblgamedefinitions`;



--5
SELECT
	`naam`
	concat( MONTH(`releasedatum`),'-',day(`releasedatum`), '-', year(`releasedatum`)
) AS `Releasedatum`
FROM
	`tblgamedefinitions`
	
-- 6
SELECT
		`naam`
		LENGTH(`naam`) AS `lengte`
FROM
	`tblgamedefinitions`
	
-- 7
SELECT
	max(`price`) as `hoogste_prijs`
from
	tblgames`

--8
SELECT
	sum(`price`) as `max_omzet`
FROM
	`tblgames`
	
-- 9 verbetering optie 
SELECT
	`gamedefinitionid`,
	`cosoleid`,
	case `gametypeid`
		when 1 then 'nieuw'
		when 2 then 'Occassie'
	end as `gametpe`,
	`price`
	`btw_percentage`
FROM
	`tblgames`;
	
-- 9 optie 2 (jens)
SELECT 
    gamedefinitionid,
    consoleid,
    CASE
        WHEN gametypeid = '1' THEN 'new'
        WHEN gametypeid = '2' THEN 'oud'
    END AS gametype,
    price,
    btw_percentage
FROM
    tblgames

--10
SELECT
	CONCAT(`id`, ';', `naam`, ';', `uitgever`, ';', `releasedatum`, ';') as `csv`
FROM
	`tblgamedefinitions`
)
)

Deel 5 (
oefenbundel 1 (
--1
SELECT
	`betalingsnr`,
	`bedrag`
FROM
	`BOETES`
WHERE
	`bedrag` > 60;

--2
SELECT 
	`spelernr`,
	`gewonnen`,
	`verloren`,
	gewonnen`+`verloren` AS `AANTAL_SETS`
FROM
	`wedstrijden`
WHERE
	`GEWONNEN`+`VERLOREN` = 5;
	
--3
SELECT
	`naam`,
	`plaats`
FROM
	`speler`
WHERE
	`plaats` = 'Den Haag' OR `plaats` = 'Rijswijk';
	
--4
SELECT
	`naam`,
	`gesllacht,
	`plaats`
FROM
	`speler`
WHERE
	`gesllacht` = 'V' AND `plaats` = 'Zoetermeer';
	
--5
SELECT
	*
FROM
	`BOETES`
WHERE
	(`SPELERSNR` = '44' AND YEAR(`DATUM`) = 1980) OR (MONTH(`DATUM`) <> 12);

--6
SELECT
	`spelernr`,
	`naam`,
	`plaats`,
	`straat`
FROM
	`speler`
WHERE
	(left(`straat`,1)= 's') AND plaats` <> 'Den Haag'; 

--7
SELECT
	`spelernr`,
	`naam`,
	`jaartoe`
FROM
	`speler`
where
	`jaartoe` > 1982;

SELECT
	`spelernr`,
	`naam`,
	`plaats`
FROM
	`speler`
WHERE
	`geslacht` = 'v' and `plaats` <>'Den Haag';
)

oefenbundel 2(
--1
SELECT
	`BETALINGSNR`,
	`BEDRAG`
FROM
	`BOETES`
WHERE
	`BEDRAG` IN (50, 75, 100);
--2	
SELECT
	*
FROM
	`SPELERS`
WHERE
	`SPELERNR` NOT IN (8, 27, 112);
--3
SELECT
	`SPELERS`,
	`NAAM`,
	`STRAAT`
FROM
	`SPELERS`
WHERE
	LEFT(`STRAAT`,1) IN ('e','l','s');
SELECT
	`SPELERS`,
	`JAARTOE`,
	`GEB_DATUM`,
	YEAR(CURRENT_DATE)-`JAARTOE` AS AANTAL_JAREN`,
	CASE
		WHEN YEAR(CURRENT_DATE)-`JAARTOE` >= 45 THEN '45+'
		WHEN YEAR(CURRENT_DATE)-`JAARTOE` >= 40 THEN '40+'
		WHEN YEAR(CURRENT_DATE)-`JAARTOE` >= 35 THEN '35+'
	END AS `DUURTIJD`
FROM
	`SPELERS`
WHERE
	YEAR(`GEB_DATUM`) IN (1956,1963,1970);	
)

oefenbundel 3 (

SELECT 
	`BETALINGNR`
FROM
	`BOETES`
WHERE 
	`BEDRAG` BETWEEN 50 AND 100;
	
SELECT 
	`BETALINGNR`
FROM
	`BOETES`
WHERE 
	`BEDRAG`  NOT BETWEEN 50 AND 100;

SELECT
	*
FROM 
	`WEDSTRIJDEN`
WHERE
	`SPELERSNR` BETWEEN 5 AND 10 
		AND SPELERNR``NOT IN (8,27);

)

oefenbundel 4 (

--1
SELECT 
	`SPELERNR`,
	`NAAM`,
	`STRAAT`
FROM
	`SPELERS`
WHERE
	`STRAAT` LIKE '%weg'; 

--2
SELECT 
	`SPELERNR`,
	`NAAM`,
	`STRAAT`
FROM
	`SPELERS`
WHERE 
	 `STRAAT` LIKE 'h%e%'; 
	 
--3
SELECT 
	`SPELERNR`,
	`NAAM`
FROM
	`SPELERS`
WHERE 
	 `STRAAT` NOT LIKE '_i%';

--4	 
SELECT 
	`SPELERNR`,
	`NAAM`,
	`STRAAT`
FROM
	`SPELERS`
WHERE 
	left(`naam`,2) like '_e' and
	right(`naam`,2) like 'e_';
	 
)

oefenbundel 5(

select
	`spelernr`
from
	`speler`
where
 -- `bondsnr` = null;
	`bondsnr` is null;


select
	count(*) as `actieve bestuurlseden`
from
	`bestuursleden`
where
	`eind_datum` is not null
)
)

deel 6 (

oefenbundel 1 (

--1
select
	b.`betalingsnr`,
	b.`bedrag`,
	s.`spelers`
from
	`boetes` b,
	`spelers` s
where
	s.´spelernr´ = b`speler`;

--2
select
	s.`spelernr`
	s.`naam`,
	w.*
from
  `spelers` s,
  `wedstrijden`,
 
where 
	s.`spelernr` = w.`spelernr`;
	
--3
select
	b.`betalingsnr`,
	b.`bedrag`,
	s.`naam`
from
	`boetes` b,
	`spelers` s
where
	s.`spelernr` = b`spelersnr`
	and s.`plaats` = 'Den Haag';
	
--4
select
	w.`wedsrijdnr`
	s.`naam`
	t.`divisie`
	case
		when w.gewonnen` > w.`verloren` then 'gewonnen'
		else 'verloren'
	end as `resultaat`
from
	`wedstrijden` w,
	`spelers` s,
	`teams` t
where
	w.`spelernr` = s.`spelernr`
	and w.`teamnr` = t.`teamnr`
	and w.`wedsrijdnr` >= 10;

)

oefenbundel 2(
--1

select
	s.*,
	b.`functie`,
	case
		when b.`eind_datum` is null then 'actief'
		else 'niet ectief'
		
	end as  `actief_Of_Niet`
from
	`spelers` s
	 inner join `bestuurleden` b on s.`spelernr` = b.`spelersnr`
where
	b.`functie` = 'voorzitter' or b.functie` = 'penningmeester';

--2
select
	s.`spelersnr`
	s.`naam`
	concat(w.`gewonnen`, '-' ,w.`verloren`) as 'Uitslag'
from
	`spelers` s
	inner join`wedstrijden` w on s.`spelernr` = w.`spelernr`
	inner join `teams` t on t.`spelernr` = s.`spelernr`
	
--3
select


from
	`spelers` s
	 inner join `wedstrijden` w on s.`spelernr` = w.`spelernr`
where
	W.`gewonnen` > w.`verloren`
	and month(`GEB_DATUM`) between 8 and 10;

)

oefenbundel 3(

SELECT
	s.`spelersnr`,
	w.`TEAMNR`
FROM
	`spelers` s
	left join `wedstrijden` w on s.`spelernr`;
	
SELECT
	s.spelernr`,
	coalesce(b.bedrag`,0)
FROM
	`spelers` s,
	 left join `boetes` b w on s.`spelernr` = w.`spelernr`



)







)

deel 7 (

oefenbundel 1(
 --1

SELECT
	(
		select
			`divisie`
		from
			`teams`
		where
			`teamnr` = 1
	
	)as devisie_1,
	(
		select
			`divisie`
		from
			`teams`
		where
			`teamnr` = 2
		
	
	
	
	) as Divisie_2;
	
--2

SELECT 
	s.`spelernr`,
	(
		select
			count(`spelernr`)
		from 
			`wedstrijden` w
		where
			s.`spelernr` = w.`spelernr`
	) as aantal

FROM 
	`spelers` s``
	
	
	
	
	
	

)



)

deel 8(
oefenbundel 1(
--1
select distinct
	`plaats`
from
	`spelers`

--2

select
	distinct `bedrag`,
	month(`datum`)
from
	`boetes`
	
--3
select
	distinct `functie`
from
	`bestuurleden`
)

oefenbundel 2 (
--1 

select 
	*
from
	`spelers` s
order by
	s.`naam` desc
--2
select 
	*
from
	`spelers`
order by
	`jaartoe` , `plaats` , `naam` desc

--3
SELECT 
	`naam`,
	`voorletters`,
	`spelersnr`
from
	`spelers` s 
order by
right(`naam`,1) desc

--4

select
	s.`naam`
	(
		select
			count(*)
		from
			`boetes` b
		where 
			b.``spelernr` = s.spelernr`
			
	) as aantal
	
from
 `spelers` s
 
order by
2 desc,s.`naam`

)

oefenbundel 3(

--1
SELECT
	 *
FROM
	`BOETES` b
order by
	b.`bedrag` DESC
LIMIT 3;

--2

select
	*
from
	`spelers` s
where
	s.`plaats` IN 
	(
		SELECT
			s2.`plaats``
		FROM
			`spelers` s2
		where
			s2.`naam` = 'bischoff'
	)
ORDER BY	
	s.`jaartoe` desc
limit 3;

--3

SELECT
	*
FROM
	`gamedefinition` gd
order  by 
	`releasedatum` desc
limit 30,10;

--4

SELECT
	`naam`
	`geboortedatum`
	(
		SELECT
			count(*)
		from
			`boetes` b
		where
			b.`spelernr` = s.`spelersnr`
	) AS aantal
FROM
	`spelers` s
order by
	3 DESC, s.geb_datum`
limit 3;

)


)