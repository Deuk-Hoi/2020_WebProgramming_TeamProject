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

-- 테이블 HTC_Cafe.Seat 구조 내보내기
DROP TABLE IF EXISTS `Seat`;
CREATE TABLE IF NOT EXISTS `Seat` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `seatNum` varchar(50) DEFAULT '',
  `seatTime` varchar(50) DEFAULT NULL,
  `takeTime` datetime DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `FK_SEAT_uid` (`uid`),
  KEY `FK_ORDER_oid` (`oid`),
  CONSTRAINT `FK_ORDER_oid` FOREIGN KEY (`oid`) REFERENCES `Orders` (`oid`),
  CONSTRAINT `FK_SEAT_uid` FOREIGN KEY (`uid`) REFERENCES `Userinfo` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- 테이블 데이터 HTC_Cafe.Seat:~20 rows (대략적) 내보내기
DELETE FROM `Seat`;
/*!40000 ALTER TABLE `Seat` DISABLE KEYS */;
INSERT INTO `Seat` (`sid`, `uid`, `seatNum`, `seatTime`, `takeTime`, `oid`) VALUES
	(45, 60, '2번테이블', '16:00~18:00', NULL, 33),
	(46, 60, '11번테이블', '16:00~18:00', NULL, 34),
	(47, 60, '9번테이블', '10:00~12:00', NULL, 35),
	(48, 60, NULL, '10:00~12:00', NULL, 36),
	(49, 64, '9번테이블', '10:00~12:00', NULL, 37),
	(50, 64, '6번테이블', '10:00~12:00', NULL, 38),
	(51, 64, '12번테이블', '10:00~12:00', NULL, 39),
	(52, 64, '8번테이블', '10:00~12:00', NULL, 40),
	(53, 64, '9번테이블', '10:00~12:00', NULL, 41),
	(54, 64, '3번테이블', '10:00~12:00', NULL, 42),
	(55, 64, '10번테이블', '10:00~12:00', NULL, 43),
	(56, 64, '7번테이블', '14:00~16:00', NULL, 44),
	(57, 60, '2번테이블', '10:00~12:00', NULL, 45),
	(58, 60, '9번테이블', '10:00~12:00', NULL, 46),
	(59, 60, '10번테이블', '10:00~12:00', NULL, 47),
	(60, 64, '6번테이블', '10:00~12:00', NULL, 48),
	(61, 64, '1번테이블', '10:00~12:00', NULL, 49),
	(62, 64, '7번테이블', '16:00~18:00', NULL, 50),
	(63, 66, '2번테이블', '14:00~16:00', NULL, 51),
	(64, 67, '8번테이블', '16:00~18:00', NULL, 52),
	(65, 64, '1번테이블', '16:00~18:00', NULL, 53),
	(66, 64, '11번테이블', '10:00~12:00', NULL, 54);
/*!40000 ALTER TABLE `Seat` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
