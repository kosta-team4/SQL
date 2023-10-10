
CREATE TABLE IF NOT EXISTS `testboard` (
  `num` int(1) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `writedate` date DEFAULT NULL,
  `fileurl` varchar(255) DEFAULT NULL,
  `writer` varchar(255) DEFAULT NULL,
  `viewcount` int(11) DEFAULT 0,
  PRIMARY KEY (`num`) USING BTREE,
  KEY `writer` (`writer`) USING BTREE,
  CONSTRAINT `testboard_ibfk_1` FOREIGN KEY (`writer`) REFERENCES `member` (`id`)
) 