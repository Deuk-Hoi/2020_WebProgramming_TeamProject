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

-- 테이블 HTC_Cafe.Event 구조 내보내기
DROP TABLE IF EXISTS `Event`;
CREATE TABLE IF NOT EXISTS `Event` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `etype` varchar(50) NOT NULL DEFAULT '0',
  `etitle` varchar(50) NOT NULL DEFAULT '0',
  `edate` date NOT NULL,
  `eview` int(11) DEFAULT NULL,
  `econtent` varchar(50) NOT NULL DEFAULT '0',
  `eimage` varchar(50) DEFAULT 'event_01',
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- 테이블 데이터 HTC_Cafe.Event:~20 rows (대략적) 내보내기
DELETE FROM `Event`;
/*!40000 ALTER TABLE `Event` DISABLE KEYS */;
INSERT INTO `Event` (`eid`, `etype`, `etitle`, `edate`, `eview`, `econtent`, `eimage`) VALUES
	(1, '이벤트', '[H.T.C 멤버십] \'더 강력해진 꽝없는 이벤트\' 참여하고 쿠폰 받으세요.', '2020-11-23', 31, '1', 'event_01'),
	(2, '이벤트', '[H.T.C 멤버십]  사다리타기 이벤트 참여하고 쿠폰 선물 받으세요!', '2020-11-23', 23, '2', 'event_02'),
	(3, '이벤트', '[H.T.C 멤버십]  ‘꽝없는 룰렛이벤트’ 룰렛 돌리고 쿠폰 받으세요.', '2020-10-22', 10, '3', 'event_03'),
	(4, '이벤트', '[H.T.C 멤버십] 드립백 세트 증정 이벤트!', '2020-10-22', 5, '4', 'event_04'),
	(5, '이벤트', '신메뉴 출시 기념 이벤트! 8월 2일~11일까지!', '2020-08-01', 5, '5', 'event_05'),
	(6, '이벤트', '12월 27일 단 하루 HTC 앗!메리카노를 500원으로 즐기세요!', '2020-10-22', 4, '6', 'event_06'),
	(7, '이벤트', '홈페이지 리뉴얼 오픈 이벤트!', '2020-10-22', 2, '7', 'event_07'),
	(8, '이벤트', '2020년 빽다방 캘린더 증정 이벤트!', '2020-10-22', 3, '8', 'event_08'),
	(9, '이벤트', 'SNS 이벤트에 참여하세요!', '2020-10-22', 8, '9', 'event_09'),
	(10, '이벤트', '캘린더 증정 이벤트 !', '2020-10-22', 10, '10', 'event_10'),
	(11, '이벤트', '[빽다방멤버십] \'더 강력해진 꽝없는 이벤트\' 참여하고 쿠폰 받으세요.', '2020-10-22', 1, '11', 'event_01'),
	(12, '이벤트', '[빽다방멤버십] \'더 강력해진 꽝없는 이벤트\' 참여하고 쿠폰 받으세요.', '2020-10-22', 1, '12', 'event_01'),
	(13, '이벤트', '[빽다방멤버십] \'더 강력해진 꽝없는 이벤트\' 참여하고 쿠폰 받으세요.', '2020-10-22', 2, '13', 'event_01'),
	(14, '이벤트', '호서대 이벤트에 참여해보세요.', '2020-11-24', 3, '14', 'event_01'),
	(15, '이벤트', '호서대 이벤트에 참여해보세요.', '2020-11-24', 1, '15', 'event_01'),
	(16, '이벤트', '호서대 이벤트에 참여해보세요.', '2020-11-24', 2, '16', 'event_01'),
	(17, '이벤트', '호서대 이벤트에 참여해보세요.', '2020-11-24', 1, '17', 'event_01'),
	(18, '이벤트', '호서대 이벤트에 참여해보세요.', '2020-11-24', 2, '18', 'event_01'),
	(19, '이벤트', '호서대 이벤트에 참여해보세요.', '2020-11-24', 1, '19', 'event_01'),
	(20, '이벤트', '호서대 이벤트에 참여해보세요.', '2020-11-24', 1, '20', 'event_01'),
	(21, 'qwe', '0', '2020-11-26', 2, '0', 'event_01');
/*!40000 ALTER TABLE `Event` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
