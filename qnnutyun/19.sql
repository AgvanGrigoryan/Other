 USE sss;
 CREATE TABLE IF NOT EXISTS `Employees` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `First Name` VARCHAR(200) COLLATE utf8_unicode_ci NOT NULL,
   `Last Name`  VARCHAR(200) COLLATE utf8_unicode_ci NOT NULL,
  `RegDate` DATETIME NOT NULL,
  `Gender` INT(11) NOT NULL DEFAULT '1',
  `Salary` DECIMAL(10,0) NOT NULL DEFAULT '200000',
  `NumberOfChildren` INT(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=INNODB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

SELECT * FROM Employees;

INSERT INTO `Employees` (`ID`, `First Name`, `Last Name`, `RegDate`, `Gender`, `Salary`, Employees ) VALUES
(1, 'Պետրոս', 'Մարտիրոսյան', '2014-03-28 00:00:00', 1, '200000', 5),
(2, 'adfgadf', 'Papikyan', '2014-03-09 00:00:00', 1, '200000', 1),
(3, 'Կարինե', 'Մարտիրոսյան', '2014-03-11 00:00:00', 2, '200000', 3),
(4, 'Դավիթ', 'Գարազմանյան', '2014-03-10 00:00:00', 1, '200000', 3),
(5, 'Զաքար', 'Զաքարյան', '2014-03-28 00:00:00', 1, '300000', 5),
(6, 'Գայանե', 'Մայանյան', '2014-03-24 00:00:00', 2, '300000', 3),
(8, 'Զաբել', 'Զաբելյան', '2014-03-28 00:00:00', 2, '340000', 5),
(9, 'Սարչապետ', 'Մարչապետյան', '2014-03-10 00:00:00', 1, '340000', 5),
(10, 'Սրբուհի', 'Աշոտյան', '2013-12-15 00:00:00', 2, '340000', 3),
(11, 'Հարևան', 'Վրացիդզե', '2013-09-08 00:00:00', 1, '340000', 3),
(13, 'Սրբուհի', 'Խելոքյանց', '0000-00-00 00:00:00', 1, '300000', 1),
(14, 'Վարդուհի', 'Խելոքյանունց', '0000-00-00 00:00:00', 1, '300000', 3),
(15, 'Սրբուհի', 'Խելոքյանց', '0000-00-00 00:00:00', 2, '300000', 3),
(16, 'Պետրոս', 'Պողոսյան', '2014-03-27 00:00:00', 1, '300000', 3),
(17, 'Գագո', 'Զադոյան', '2013-11-10 00:00:00', 1, '300000', 3),
(19, 'Անհայտ', 'Սեռյան', '2014-03-03 00:00:00', 0, '300000', 3),
(20, 'Բարդուղիմեոս', 'Պապիկյան', '2013-12-08 00:00:00', 1, '300000', 3),
(21, 'Մագա', 'Արատյան', '2014-06-26 00:00:00', 2, '500000', 2),
(22, 'Զառա', 'Մարատյան', '2014-06-26 00:00:00', 1, '500000', 0),
(23, 'Գերեգին', 'Մակարյան', '2014-01-26 00:00:00', 1, '320000', 0),
(24, 'Մարգար', 'Պլտոյան', '2012-05-22 00:00:00', 1, '421500', 0),
(25, 'Մագա', 'Մարգարյան', '2014-06-03 00:00:00', 2, '300000', 4),
(26, 'Մարինա', 'Դուռգա', '2014-06-26 00:00:00', 2, '150000', 5),
(27, 'Արտակ', 'Գրիգորյան', '2015-01-26 00:00:00', 1, '25000', 2),
(28, 'Մարտուն', 'Անթառանյան', '2015-02-26 00:00:00', 1, '170000', 6),
(29, 'Մարգարիտա', 'Ծաղիկյան', '2012-01-26 00:00:00', 2, '40000', 2),
(30, 'Պետրոս', 'Պողոսյան', '2015-03-11 00:00:00', 1, '25000', 2);




CREATE TABLE IF NOT EXISTS `EmployeeFees` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `EmployeeID` INT(11) NOT NULL,
  `PaymentDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Amount` DECIMAL(10,0) NOT NULL,
  `Cheque` INT(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=INNODB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `EmployeeFees`
--

INSERT INTO `EmployeeFees` (`ID`, `EmployeeID`, `PaymentDate`, `Amount`, `Cheque`) VALUES
(1, 5, '2014-06-04 12:34:03', '15000', 0),
(2, 5, '2014-06-04 12:35:31', '15000', 0),
(3, 5, '2014-06-04 12:38:20', '15000', 0),
(4, 5, '2014-06-04 12:38:20', '8000', 1),
(5, 3, '2014-06-04 12:38:20', '12000', 1),
(6, 1, '2014-06-04 12:38:48', '15000', 1),
(7, 2, '2014-06-04 12:38:48', '8000', 1),
(8, 2, '2006-06-04 12:38:48', '12000', 0),
(9, 8, '2014-06-04 12:39:46', '15000', 1),
(10, 9, '2014-06-04 12:39:46', '8000', 1),
(11, 7, '2014-06-04 12:39:46', '80000', 0),
(12, 10, '2014-06-04 12:39:46', '15000', 1),
(13, 1, '2014-06-04 12:39:46', '5000', 1),
(14, 4, '2014-06-04 12:39:46', '3000', 0),
(15, 16, '2015-01-04 13:38:48', '3000', 0),
(16, 12, '2014-07-04 12:38:48', '3000', 1),
(17, 8, '2012-09-04 12:38:48', '4000', 0),
(18, 8, '2013-07-04 16:38:48', '2500', 0),
(19, 21, '2015-07-04 12:38:48', '4500', 0),
(20, 19, '2014-05-04 12:38:48', '12000', 1),
(21, 6, '2011-07-04 12:38:48', '125000', 1),
(22, 1, '2010-07-04 08:38:48', '3600', 0),
(23, 12, '2014-07-04 12:38:48', '2500', 0),
(24, 5, '2014-07-04 12:38:48', '1000', 1),
(25, 9, '2011-03-25 10:38:48', '25000', 1),
(26, 8, '2014-07-04 12:38:48', '12500', 0),
(27, 1, '2012-03-04 12:12:48', '100000', 1);

CREATE TABLE IF NOT EXISTS `EmployeeContacts` (
  `ContactID` INT(11) NOT NULL AUTO_INCREMENT,
  `EmployeeID` INT(11) NOT NULL,
  `ContactInfo` VARCHAR(200) COLLATE utf8_unicode_ci NOT NULL,
  `ContactType` INT(11) NOT NULL DEFAULT '1',
  `RegDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ContactID`)
) ENGINE=INNODB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=53 ;

--
-- Dumping data for table `EmployeeContacts`
--

INSERT INTO `EmployeeContacts` (`ContactID`, `EmployeeID`, ContactInfo, `ContactType`, `RegDate`) VALUES
(1, 1, 'petros@martirosyanc.com', 1, '0000-00-00 00:00:00'),
(2, 1, 'peto@martiros.am', 1, '2015-03-08 10:10:30'),
(3, 1, '5259558', 2, '2015-03-08 10:10:30'),
(4, 2, 'adfgadf@gmail.com', 1, '2015-03-08 10:11:44'),
(5, 3, 'karine@gmail.com', 1, '2015-03-08 10:24:44'),
(6, 3, '8565859', 2, '2015-03-08 10:24:44'),
(7, 3, '855259', 2, '2015-03-08 10:24:44'),
(8, 3, 'karinka856', 3, '2015-03-08 10:24:44'),
(9, 4, 'davit@garazmanyan.io', 1, '2015-03-08 10:24:44'),
(10, 4, 'davitgarazm@gmail.com', 1, '2015-03-08 10:24:44'),
(11, 4, 'davit1@gmail.com', 1, '2015-03-08 10:24:44'),
(12, 4, '85695585', 2, '2015-03-08 10:24:44'),
(13, 5, 'zaqar@zaq.am', 1, '2015-03-08 10:24:44'),
(14, 5, '52555858', 2, '2015-03-08 10:24:44'),
(15, 5, '55256958', 2, '2015-03-08 10:24:44'),
(16, 5, 'zaqarik1981', 3, '2015-03-08 10:24:44'),
(17, 6, 'gayanq@zaq.am', 1, '2015-03-08 10:24:44'),
(18, 6, '85625952', 2, '2015-03-08 10:24:44'),
(19, 6, '56596958', 2, '2015-03-08 10:24:44'),
(20, 6, 'gayancho', 3, '2015-03-08 10:24:44'),
(21, 8, 'zabel@myau.am', 1, '2015-03-08 10:24:44'),
(22, 8, 'zabelllla', 2, '2015-03-08 10:24:44'),
(23, 9, 'sarchapet@march.com', 1, '2015-03-08 10:24:44'),
(24, 9, '52252', 2, '2015-03-08 10:24:44'),
(25, 9, '95625', 2, '2015-03-08 10:24:44'),
(26, 9, 'samarchapet', 3, '2015-03-08 10:24:44'),
(27, 10, 'srbuhiashotyan@mail.ru', 1, '2015-03-08 10:24:44'),
(28, 10, '95625575', 2, '2015-03-08 10:24:44'),
(29, 10, '85659524', 2, '2015-03-08 10:24:44'),
(30, 10, 'ashotyansrbuhi', 3, '2015-03-08 10:24:44'),
(31, 17, 'zadoyangago@mail.com', 1, '2015-03-08 10:24:44'),
(32, 17, '5626585', 2, '2015-03-08 10:24:44'),
(33, 18, '8585558', 2, '2015-03-08 10:24:44'),
(34, 19, '52624878', 2, '2015-03-08 10:24:44'),
(35, 20, '52487588', 2, '2015-03-08 10:24:44'),
(36, 21, '9512357', 2, '2015-03-08 10:24:44'),
(37, 21, '753258', 2, '2015-03-08 10:24:44'),
(38, 21, '8595258', 2, '2015-03-08 10:24:44'),
(39, 21, '8597515', 2, '2015-03-08 10:24:44'),
(40, 22, '129512357', 2, '2015-03-08 10:24:44'),
(41, 22, '13753258', 2, '2015-03-08 10:24:44'),
(42, 22, '158595258', 2, '2015-03-08 10:24:44'),
(43, 22, '218597515', 2, '2015-03-08 10:24:44'),
(44, 23, 'dss152', 3, '2015-03-08 10:24:44'),
(45, 23, 'dmjjdi25', 3, '2015-03-08 10:24:44'),
(46, 23, 'kjh85', 3, '2015-03-08 10:24:44'),
(47, 23, 'hjbhy25', 3, '2015-03-08 10:24:44'),
(48, 25, 'magaa@mail.ru', 1, '2015-03-08 10:24:44'),
(49, 25, '894523', 2, '2015-03-08 10:24:44'),
(50, 25, '325487', 2, '2015-03-08 10:24:44'),
(51, 25, 'magaaaaa', 3, '2015-03-08 10:24:44'),
(52, 25, 'facebook.com/asdfsda', 5, '2015-03-09 15:59:20');

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeContactsTypes`
--

CREATE TABLE IF NOT EXISTS `EmployeeContactsTypes` (
  `ContactTypeID` INT(11) NOT NULL AUTO_INCREMENT,
  `ContactTypeDescr` VARCHAR(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ContactTypeID`)
) ENGINE=INNODB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `EmployeeContactsTypes`
--

INSERT INTO `EmployeeContactsTypes` (`ContactTypeID`, `ContactTypeDescr`) VALUES
(1, 'Էլ․֊փոստ'),
(2, 'Հեռախոս'),
(3, 'Սքայփ'),
(4, 'Viber');

SELECT * FROM EmployeeFees;
SELECT * FROM Employees;
SELECT * FROM EmployeeContacts;
SELECT * FROM EmployeeContactsTypes;
-- 12 --
CREATE INDEX asa ON Employees ( `First Name`);
SELECT * FROM Employees USE INDEX (asa) WHERE `First Name`='Պետրոս';

-- 33  --
UPDATE  EmployeeContacts SET ContactInfo = REPLACE(ContactInfo,'99','52') WHERE ContactInfo LIKE('99%') ;
UPDATE  EmployeeContacts SET ContactInfo = CONCAT('99', SUBSTR(contactinfo,2)) WHERE contactinfo LIKE '95%';

SELECT * FROM EmployeeContacts WHERE ContactInfo LIKE('52%');

--  22 --
CREATE TABLE `NewEmployees` SELECT * FROM `employees` WHERE `Gender` = 1;
SELECT * FROM `Newemployees`;
-- 27 --
SELECT * FROM `employees` WHERE  LENGTH(`First Name`) = LENGTH(`Last Name`);

-- 2 --
SELECT *,
CASE 
	WHEN WEEKDAY(`RegDate`) = 0 THEN "Erkushabti"
	WHEN WEEKDAY(`RegDate`) = 1 THEN "Ereqshabti"
	WHEN WEEKDAY(`RegDate`) = 2 THEN "Choreqshabti"
	WHEN WEEKDAY(`RegDate`) = 3 THEN "Hingshabti"
	WHEN WEEKDAY(`RegDate`) = 4 THEN "Urbat"
	WHEN WEEKDAY(`RegDate`) = 5 THEN "Shabat"
	WHEN WEEKDAY(`RegDate`) = 6 THEN "Kiraki"
	ELSE "Not valid day"
END AS `shabatva_or`FROM `employees`;

-- 16  --
SELECT *, GROUP_CONCAT(contactinfo) FROM employeecontacts GROUP BY employeeId;

-- 16 --
ALTER TABLE usanox4_1 ADD qnnutyun VARCHAR(100) NOT NULL;
UPDATE usanox4_1 SET qnnutyun=IF(hayocLezu>=4,CONCAT (qnnutyun,"hayocLezu, "),qnnutyun);
UPDATE usanox4_1 SET qnnutyun=IF(hanrahashiv>=4,CONCAT (qnnutyun,"hanrahashiv, "),qnnutyun);
UPDATE usanox4_1 SET qnnutyun=IF(patmutyun>=4,CONCAT (qnnutyun,"patmutyun, "),qnnutyun);
UPDATE usanox4_1 SET qnnutyun=IF(angleren>=4,CONCAT (qnnutyun,"angleren "),qnnutyun);
UPDATE usanox4_1 SET qnnutyun=TRIM(TRAILING ','FROM qnnutyun);
SELECT * FROM usanox4_1;

-- 25--
SELECT * FROM `employees` WHERE  MONTH(regdate) = MONTH(NOW()) AND DAY(regdate)=DAY(NOW());
SELECT * FROM `employees` WHERE  MONTH(regdate) = MONTH(NOW()) AND DAY(regdate)=DAY(NOW());

-- 24 --
ALTER TABLE usanox ADD mijin INT;
UPDATE usanox SET mijin =(hanr+erkr+inform)/3 WHERE id BETWEEN 1 AND 10;








CREATE TABLE IF NOT EXISTS StudentExams (
	ID INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	FirstName VARCHAR(255),
	LastName VARCHAR(255),
	Gender VARCHAR(10),
	CompletedExams VARCHAR(255)
);

ALTER TABLE StudentExams ADD hanrahashiv INT;
ALTER TABLE StudentExams ADD hayoc_lezu INT;
ALTER TABLE StudentExams ADD patmutyun INT;

SELECT * FROM StudentExams;

INSERT INTO StudentExams (FirstName, LastName, Gender, CompletedExams) VALUES
	("Hayk", "Arsenyan", "Male", "", 9, 9, 8),
	("Artak", "Ghazaryan", "Male", "", 8, 7, 8),
	("Anahit", "Dallakyan", "Female", "", 4, 8, 5);




































