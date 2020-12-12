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

-- 테이블 HTC_Cafe.Orders 구조 내보내기
DROP TABLE IF EXISTS `Orders`;
CREATE TABLE IF NOT EXISTS `Orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `orderList` varchar(500) DEFAULT NULL,
  `totalCost` int(11) DEFAULT NULL,
  `pickUp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `FK_Order_uid` (`uid`),
  CONSTRAINT `FK_Order_uid` FOREIGN KEY (`uid`) REFERENCES `Userinfo` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- 테이블 데이터 HTC_Cafe.Orders:~20 rows (대략적) 내보내기
DELETE FROM `Orders`;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` (`oid`, `uid`, `orderList`, `totalCost`, `pickUp`) VALUES
	(33, 60, '카페라떼 카라멜마키아또 ', 7600, '매장 내 섭취'),
	(34, 60, '아메리카노 카푸치노 ', 4500, '매장 내 섭취'),
	(35, 60, '카페모카 카푸치노 ', 6000, '매장 내 섭취'),
	(36, 60, '카페모카 카푸치노 ', 6000, '매장 내 섭취'),
	(37, 64, '아메리카노 카푸치노 ', 4500, '매장 내 섭취'),
	(38, 64, '카라멜마키아또 에스프레소 ', 6300, '매장 내 섭취'),
	(39, 64, '카페모카 ', 3000, '매장 내 섭취'),
	(40, 64, '아메리카노 ', 1500, '매장 내 섭취'),
	(41, 64, '카페모카 ', 3000, '매장 내 섭취'),
	(42, 64, '카페모카 카푸치노 ', 6000, '매장 내 섭취'),
	(43, 64, '아메리카노 ', 1500, '매장 내 섭취'),
	(44, 64, '아메리카노 카페라떼 ', 5300, '매장 내 섭취'),
	(45, 60, '아메리카노 카푸치노 ', 4500, '매장 내 섭취'),
	(46, 60, '카페라떼 에스프레소 ', 6300, '매장 내 섭취'),
	(47, 60, '카페라떼 카라멜마키아또 ', 7600, '매장 내 섭취'),
	(48, 64, '카라멜마키아또 ', 3800, '매장 내 섭취'),
	(49, 64, '카페라떼 ', 3800, '매장 내 섭취'),
	(50, 64, '아메리카노 에스프레소 ', 4000, '매장 내 섭취'),
	(51, 66, '아메리카노 카페라떼 에스프레소 ', 7800, '매장 내 섭취'),
	(52, 67, '청포도에이드 ', 2000, '매장 내 섭취'),
	(53, 64, '청포도에이드 ', 2000, '매장 내 섭취'),
	(54, 64, '레몬에이드 청포도에이드 민트초코칩플렛치노 ', 6000, '매장 내 섭취');
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
