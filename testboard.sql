CREATE TABLE IF NOT EXISTS `testboard` (
  `numpost` int(100) NOT NULL AUTO_INCREMENT,
  `jmfldnm` varchar(50) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `writedate` date DEFAULT NULL,
  `fileurl` varchar(255) DEFAULT NULL,
  `writer` varchar(50) DEFAULT NULL,
  `viewcount` int(11) DEFAULT 0,
  PRIMARY KEY (`numpost`),
  KEY `FK_testboard_examinfo` (`jmfldnm`),
  KEY `FK_testboard_member` (`writer`),
  CONSTRAINT `FK_testboard_examinfo` FOREIGN KEY (`jmfldnm`) REFERENCES `examinfo` (`jmfldnm`),
  CONSTRAINT `FK_testboard_member` FOREIGN KEY (`writer`) REFERENCES `member` (`id`)
) 
