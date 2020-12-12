-- --------------------------------------------------------
-- 호스트:                          conative.myds.me
-- 서버 버전:                        5.7.31 - MySQL Community Server (GPL)
-- 서버 OS:                        Linux
-- HeidiSQL 버전:                  11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- 테이블 HTC_Cafe.Notice 구조 내보내기
DROP TABLE IF EXISTS `Notice`;
CREATE TABLE IF NOT EXISTS `Notice` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL,
  `content` varchar(300) NOT NULL,
  `photo` varchar(80) DEFAULT NULL,
  `date` date NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 테이블 데이터 HTC_Cafe.Notice:~2 rows (대략적) 내보내기
DELETE FROM `Notice`;
/*!40000 ALTER TABLE `Notice` DISABLE KEYS */;
INSERT INTO `Notice` (`nid`, `title`, `content`, `photo`, `date`, `views`) VALUES
	(1, '[인기] H.T.C 카페 오픈 안내', '세상에서 제일 맛있는 Hoseo Time Out Cafe가 아산에 상륙 했습니다.', 'notice1.PNG', '2020-11-19', 44),
	(2, '[안 인기] 커피 요금 인상 안내', 'H.T.C 카페의 모든 커피 요금이 인상됩니다. 고객 여러분들은 인지해주시기 바랍니다.', NULL, '2020-11-19', 8);
/*!40000 ALTER TABLE `Notice` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
