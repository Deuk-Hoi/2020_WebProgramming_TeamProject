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

-- 테이블 HTC_Cafe.Qna 구조 내보내기
DROP TABLE IF EXISTS `Qna`;
CREATE TABLE IF NOT EXISTS `Qna` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `title` varchar(30) NOT NULL,
  `contents` varchar(400) NOT NULL,
  `answer` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`qid`),
  KEY `FK_QNA_uid` (`uid`),
  CONSTRAINT `FK_QNA_uid` FOREIGN KEY (`uid`) REFERENCES `Userinfo` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- 테이블 데이터 HTC_Cafe.Qna:~27 rows (대략적) 내보내기
DELETE FROM `Qna`;
/*!40000 ALTER TABLE `Qna` DISABLE KEYS */;
INSERT INTO `Qna` (`qid`, `uid`, `name`, `phone`, `email`, `date`, `title`, `contents`, `answer`) VALUES
	(1, 41, '송준하', '0101010101', 'song@gmail.com', '2020-11-23 00:34:00', '배가 고파요', '히히히히히히ㅣ히힣', NULL),
	(2, 43, '', '01043042134', 'dh97k@naver.com', '2020-11-20 01:59:00', '안녕하세요', '반가워요', NULL),
	(3, 43, '김득회', '01043042134', 'dh97k@naver.com', '2020-11-06 00:16:00', '이번엔 될껄요?', '잘되네요', NULL),
	(4, 43, '김득회', '01043042134', 'dh97k@naver.com', '2020-11-06 00:16:00', 'ㄹㄴㅇㄹㅇ', '잘되네요ㄴㅇㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹ', NULL),
	(5, 43, '김득회', '01043042134', 'dh97k@naver.com', '2020-11-14 00:18:00', '이번에는 리다이렉트도 잘될꺼에요', '진짜요', NULL),
	(6, 43, '김득회', '01043042134', 'dh97k@naver.com', '2020-11-06 02:19:00', '심기일전 이에요', '잘될거에요', 'ㅁㄴㅇㄴㅁㅇㄴㅁㅇㄴㅁ'),
	(7, 43, '김득회', '01043042134', 'dh97k@naver.com', '2020-11-19 14:46:00', '안녕하세여', '맛이 없어요', '어쪄라고요!!!!'),
	(8, 43, 'ê¹ëí', '01043042134', 'dh97k@naver.com', '2020-12-26 01:35:00', '111', '11111', NULL),
	(9, 43, 'ê¹ëí', '01043042134', 'dh97k@naver.com', '2020-12-26 01:35:00', '111', '11111', NULL),
	(10, 43, 'ê¹ëí', '01043042134', 'dh97k@naver.com', '2020-12-11 00:54:00', 'qqwe', 'qweqewq', NULL),
	(11, 43, 'ê¹ëí', '01043042134', 'dh97k@naver.com', '2020-12-18 00:49:00', 'íì´í', 'asdsadas', NULL),
	(12, 43, 'ê¹ëí', '01043042134', 'dh97k@naver.com', '2020-12-04 02:48:00', 'ããã', 'ããããã', NULL),
	(13, 43, 'ê¹ëí', '01043042134', 'dh97k@naver.com', '2020-12-04 00:51:00', 'ã ã ã ', 'ã ã ã ', NULL),
	(14, 43, 'ê¹ëí', '01043042134', 'dh97k@naver.com', '2020-12-12 15:51:00', 'ã¹íë¡', 'ãë¡¤íë¡·ë¡', NULL),
	(15, 43, '김득회', '01043042134', 'dh97k@naver.com', '2020-12-11 00:57:00', '망했다', 'dsfds', NULL),
	(16, 43, '김득회', '01043042134', 'dh97k@naver.com', '2020-12-24 02:56:00', '이제 잘됩니다.', '낄낄', NULL),
	(17, 43, '김득회', '01043042134', 'dh97k@naver.com', '2020-12-11 17:35:00', '오늘도 테스트', '테스트 이에요', '이거슨 답변 완료'),
	(18, 43, '김득회', '01043042134', 'dh97k@naver.com', '2020-12-25 19:39:00', 'ffff', 'fffff', NULL),
	(19, 43, '김득회', '01043042134', 'dh97k@naver.com', '2020-12-11 21:37:00', 'sdf', 'sdfsdfdsfds', NULL),
	(20, 58, '항항', '10101', 'qweqwe@naver.com', '2020-12-11 05:37:00', '드케찡', '앙><', NULL),
	(21, 58, '항항', '10101', 'qweqwe@naver.com', '2020-12-11 06:38:00', '드케~><', '찡', NULL),
	(22, 60, '삑우s', '01026794766', 'reoiy12@naver.com', '2020-12-04 12:08:00', 'hi', 'hi', 'dkdkdk'),
	(23, 64, '김득회', '01043042134', 'dh97k@naver.com', '2020-12-19 12:19:00', '잘 될 껄요? ㄹㅇ ㅋㅋ', 'ㅋㅋㄹㅃㅃ', '정말 잘되네요 ㅋㅋㄹㅃㅃ'),
	(24, 64, '김득회', '01043042134', 'dh97k@naver.com', '2020-12-15 10:13:00', '카페에서 카드를 분실 했습니다.', '분실을 했는데 혹시 카페에 있을까요?', '저런.. 카페에 있었으면 전화가 먼저 갔을 겁니다.'),
	(25, 60, '삑우s', '01026794766', 'reoiy12@naver.com', '2020-12-17 11:59:00', '안녕하세요 웹 프로젝트 진행중입니다.', '재밌어요!', NULL),
	(26, 64, '김득회', '01043042134', 'dh97k@naver.com', '2020-12-19 16:35:00', 'fsfd', 'dsfssdfsd', '웹프로그래밍'),
	(27, 64, '김득회', '01043042134', 'dh97k@naver.com', '2020-12-03 13:18:00', '마지막 업로드', '잘가 친구야', '즐거웠어!'),
	(28, 64, '김득회', '01043042134', 'dh97k@naver.com', '2020-12-01 12:36:00', '진짜 마지막 테스트입니다.', '잘가~', '진짜 안녕~');
/*!40000 ALTER TABLE `Qna` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
