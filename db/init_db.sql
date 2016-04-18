Create database IF NOT EXISTS simulator default charset utf8 COLLATE utf8_general_ci; 
	
USE `simulator`;

DROP TABLE IF EXISTS `testcase`;
CREATE TABLE `testcase` (
  `TESTCASE_ID` bigint(20) NOT NULL,
  `TESTCASE_NAME` varchar(128) NOT NULL,
  `CATEGORY` varchar(128) NOT NULL,
  `POINT` varchar(45) DEFAULT NULL,
  `CREATE_TIME` bigint(20) DEFAULT NULL,
  `UPDATE_TIME` bigint(20) DEFAULT NULL,
  `COMMENTS` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`TESTCASE_ID`),
  UNIQUE KEY `idnew_table_UNIQUE` (`TESTCASE_ID`),
  UNIQUE KEY `TestCaseName_UNIQUE` (`TESTCASE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `execution`;
CREATE TABLE `execution` (
  `EXECUTION_ID` bigint(20) NOT NULL,
  `TESTCASE_ID` bigint(20) NOT NULL,
  `CREATE_TIME` bigint(20) DEFAULT NULL,
  `UPDATE_TIME` bigint(20) DEFAULT NULL,
  `LOG` varchar(1000) DEFAULT NULL,
  `COMMENTS` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`EXECUTION_ID`),
  UNIQUE KEY `EXECUTION_ID_UNIQUE` (`EXECUTION_ID`),
  KEY `TESTCASE_ID_idx` (`TESTCASE_ID`),
  CONSTRAINT `TESTCASE_ID` FOREIGN KEY (`TESTCASE_ID`) REFERENCES `testcase` (`TESTCASE_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;