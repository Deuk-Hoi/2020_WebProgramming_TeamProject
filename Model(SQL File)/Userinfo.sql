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

-- 테이블 HTC_Cafe.Userinfo 구조 내보내기
DROP TABLE IF EXISTS `Userinfo`;
CREATE TABLE IF NOT EXISTS `Userinfo` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) NOT NULL,
  `userId` varchar(20) NOT NULL,
  `userPw` varchar(100) NOT NULL,
  `userEmail` varchar(40) NOT NULL,
  `userPhone` varchar(20) NOT NULL,
  `rank` varchar(20) NOT NULL DEFAULT 'Bronze',
  `couponNum` int(11) NOT NULL DEFAULT '0',
  `stampNum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- 테이블 데이터 HTC_Cafe.Userinfo:~15 rows (대략적) 내보내기
DELETE FROM `Userinfo`;
/*!40000 ALTER TABLE `Userinfo` DISABLE KEYS */;
INSERT INTO `Userinfo` (`uid`, `userName`, `userId`, `userPw`, `userEmail`, `userPhone`, `rank`, `couponNum`, `stampNum`) VALUES
	(1, '김득배', 'deuksheep@naver.com', 'holy', 'deuksheep@naver.com', '01043042134', 'Bronze', 0, 0),
	(41, '송', 'song', '5b449c5554073d84e8e179fb596d81ac4822e82b945ea10595e463870c4fdaf6', 'qwe@naver.com', '010101', 'Gold', 7, 8),
	(43, '김득회', 'rlaemrghl12', 'qwerty12', 'dh97k@naver.com', '01043042134', 'Bronze', 5, 3),
	(45, 'qwe', 'qwe', '18138372fad4b94533cd4881f03dc6c69296dd897234e0cee83f727e2e6b1f63', 'qwe@nave.com', '123123123', 'bronze', 0, 0),
	(49, '낄낄', 'qwer', 'qwer', 'qwe@naver.com', '1312', 'bronze', 0, 0),
	(53, 'ㅈ준하', 'jong', 'f6f2ea8f45d8a057c9566a33f99474da2e5c6a6604d736121650e2730c6fb0a3', 'qwe@naver.com', '10101', 'bronze', 0, 0),
	(54, '송준하', 'junha', '18138372fad4b94533cd4881f03dc6c69296dd897234e0cee83f727e2e6b1f63', 'reoiy12@naver.com', '1234', 'bronze', 0, 0),
	(56, 'songg', 'songg', '18138372fad4b94533cd4881f03dc6c69296dd897234e0cee83f727e2e6b1f63', 'qwe@naver.com', '010101', 'bronze', 0, 0),
	(57, '방방', 'bank', '18138372fad4b94533cd4881f03dc6c69296dd897234e0cee83f727e2e6b1f63', 'qwe123@naver.com', '010101', 'bronze', 0, 0),
	(58, '항항', 'haha', '54d5cb2d332dbdb4850293caae4559ce88b65163f1ea5d4e4b3ac49d772ded14', 'qweqwe@naver.com', '10101', 'bronze', 0, 0),
	(59, '송준하', 'uit', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'reoiy12@naver.com', '01026794766', 'bronze', 0, 0),
	(60, '삑우s', 'uit2', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 'reoiy12@naver.com', '01026794766', 'Bronze', 0, 3),
	(62, '정승원', 'rew', '85264', 'rew741@naver.com', '010-0101-0102', 'bronze', 0, 0),
	(63, '김송김', 'asdf', 'e017025ce7c0a2bb5e7ad66008e24fc9521cdb29bbc08eb58be3607a0b1d855b', 'sg04385@naver.com', '010-8888-9999', 'Bronze', 0, 0),
	(64, '김득회', 'rlaemrghl123', '9c6d405bba2db24bfbd22fc7ff74b39bd9c5e9c6ce66299c6519be517e6ed7c6', 'dh97k@naver.com', '01043042134', 'Platinum', 1, 7),
	(65, '김', 'rla', '9c6d405bba2db24bfbd22fc7ff74b39bd9c5e9c6ce66299c6519be517e6ed7c6', 'dh97k@naver.com', '01043042134', 'Bronze', 0, 0),
	(66, '박우식', 'zxc', '18138372fad4b94533cd4881f03dc6c69296dd897234e0cee83f727e2e6b1f63', 'qwe123@naver.com', '01010101', 'Bronze', 0, 1),
	(67, '이규환', 'lgh971025', 'e2ca29f9ad190dbafbe5dbf8ce3615e14a1ef5fc4946a1ef129f583beec110f1', 'lgh971025@naver.com', '01020416712', 'Bronze', 0, 1),
	(68, '테스트', 'test', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'test@naver.com', '0100000000', 'Bronze', 0, 0);
/*!40000 ALTER TABLE `Userinfo` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
