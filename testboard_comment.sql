
CREATE TABLE IF NOT EXISTS `testboard_comment` (
  `comment_num` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_num` int(11) NOT NULL,
  `writer` varchar(50) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `comment_date` date DEFAULT NULL,
  PRIMARY KEY (`comment_num`) USING BTREE,
  KEY `writer` (`writer`),
  KEY `FK_testboard_comment_testboard` (`post_num`),
  CONSTRAINT `FK_testboard_comment_member` FOREIGN KEY (`writer`) REFERENCES `member` (`id`),
  CONSTRAINT `FK_testboard_comment_testboard` FOREIGN KEY (`post_num`) REFERENCES `testboard` (`num`)
) 