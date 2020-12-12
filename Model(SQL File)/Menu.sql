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

-- 테이블 HTC_Cafe.Menu 구조 내보내기
DROP TABLE IF EXISTS `Menu`;
CREATE TABLE IF NOT EXISTS `Menu` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- 테이블 데이터 HTC_Cafe.Menu:~24 rows (대략적) 내보내기
DELETE FROM `Menu`;
/*!40000 ALTER TABLE `Menu` DISABLE KEYS */;
INSERT INTO `Menu` (`mid`, `menuName`, `price`, `quantity`, `category`, `img`) VALUES
	(1, '아메리카노', 1500, 200, 'Hot', 'americano.jpg'),
	(2, '카페라떼', 3800, 200, 'Hot', 'cafelatte.jpg'),
	(3, '카라멜마키아또', 3800, 200, 'Hot', 'macchiato.jpg'),
	(4, '카페모카', 3000, 200, 'Hot', 'cafemocha.jpg'),
	(5, '카푸치노', 3000, 200, 'Hot', 'cappuccino.jpg'),
	(6, '에스프레소', 2500, 200, 'Hot', 'espresso.jpg'),
	(7, '아이스아메리카노', 2000, 200, 'Ice', 'icedamericano.jpg'),
	(8, '아이스카푸치노', 2000, 200, 'Ice', 'icedcappuccino.jpg'),
	(9, '아이스카페라떼', 2000, 200, 'Ice', 'icedcafelatte.jpg'),
	(10, '아이스카페모카', 2000, 200, 'Ice', 'icedcafemocha.jpg'),
	(11, '아이스카라멜마끼아또', 2000, 200, 'Ice', 'icedmacchiato.jpg'),
	(12, '아이스바닐라 라떼', 2000, 200, 'Ice', 'iceda.jpg'),
	(13, '아이스민트모카', 2000, 200, 'Ice', 'icedb.jpg'),
	(14, '레몬에이드', 2000, 200, 'Non Coffee', 'cc.jpg'),
	(15, '청포도에이드', 2000, 200, 'Non Coffee', 'ddd.jpg'),
	(16, '자몽에이드', 2000, 200, 'Non Coffee', 'vvv.jpg'),
	(17, '민트초코칩플렛치노', 2000, 200, 'Non Coffee', 'asd.jpg'),
	(18, '딸기쉐이크', 2000, 200, 'Non Coffee', 'qqq.jpg'),
	(19, '쿠앤크쉐이크', 2000, 200, 'Non Coffee', 'www.jpg'),
	(20, '마카롱', 2000, 200, 'Bakery', 'eee.jpg'),
	(21, '생크림와플', 2000, 200, 'Bakery', 'ggg.jpg'),
	(22, '플레인베이글', 2000, 200, 'Bakery', 'hhh.jpg'),
	(23, '초코티라미수케이크', 2000, 200, 'Bakery', 'jjj.jpg'),
	(24, '수플레치즈케이크', 2000, 200, 'Bakery', 'kkk.jpg');
/*!40000 ALTER TABLE `Menu` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
