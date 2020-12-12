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

-- 테이블 HTC_Cafe.Faq 구조 내보내기
DROP TABLE IF EXISTS `Faq`;
CREATE TABLE IF NOT EXISTS `Faq` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(70) NOT NULL,
  `answer` varchar(200) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- 테이블 데이터 HTC_Cafe.Faq:~4 rows (대략적) 내보내기
DELETE FROM `Faq`;
/*!40000 ALTER TABLE `Faq` DISABLE KEYS */;
INSERT INTO `Faq` (`fid`, `question`, `answer`) VALUES
	(1, '본사는 어디에 있나요?', '본사는 서울에 있습니다.'),
	(2, '커피는 맛있나요', '한번 먹은 사람은 있어도 두번먹은 사람은 없습니다.'),
	(3, '추천 메뉴가 있을까요?', '아메리카노가 제일 맛있습니다.'),
	(4, '매장 전화번호는 무엇인가요', '041-000-0000 입니다.'),
	(5, '매장은 어디에 있나요?', '당신 마음속에 자리하고 있죠ㅎ');
/*!40000 ALTER TABLE `Faq` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
