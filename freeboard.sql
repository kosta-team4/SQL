CREATE TABLE IF NOT EXISTS `freeboard` (
  `numpost` int(100) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `writedate` date DEFAULT NULL,
  `fileurl` varchar(255) DEFAULT NULL,
  `writer` varchar(50) DEFAULT NULL,
  `viewcount` int(11) DEFAULT 0,
  PRIMARY KEY (`numpost`) USING BTREE,
  KEY `FK_testboard_member` (`writer`) USING BTREE,
  CONSTRAINT `freeboard_ibfk_2` FOREIGN KEY (`writer`) REFERENCES `member` (`id`)
) 