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

-- 테이블 HTC_Cafe.Cafeseat 구조 내보내기
DROP TABLE IF EXISTS `Cafeseat`;
CREATE TABLE IF NOT EXISTS `Cafeseat` (
  `csid` int(11) NOT NULL,
  `csname` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`csid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 HTC_Cafe.Cafeseat:~12 rows (대략적) 내보내기
DELETE FROM `Cafeseat`;
/*!40000 ALTER TABLE `Cafeseat` DISABLE KEYS */;
INSERT INTO `Cafeseat` (`csid`, `csname`) VALUES
	(1, '1번테이블'),
	(2, '2번테이블'),
	(3, '3번테이블'),
	(4, '4번테이블'),
	(5, '5번테이블'),
	(6, '6번테이블'),
	(7, '7번테이블'),
	(8, '8번테이블'),
	(9, '9번테이블'),
	(10, '10번테이블'),
	(11, '11번테이블'),
	(12, '12번테이블');
/*!40000 ALTER TABLE `Cafeseat` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
