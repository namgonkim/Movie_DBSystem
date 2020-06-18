-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 19-12-12 12:07
-- 서버 버전: 10.4.10-MariaDB
-- PHP 버전: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `db_movie`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `act`
--

CREATE TABLE `act` (
  `act_ID` int(11) NOT NULL,
  `actor_Name` varchar(45) NOT NULL,
  `actor_Birth` date NOT NULL,
  `movie_movie_ID` varchar(45) NOT NULL,
  `movie_Title` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `act`
--

INSERT INTO `act` (`act_ID`, `actor_Name`, `actor_Birth`, `movie_movie_ID`, `movie_Title`) VALUES
(1, '	크리스틴 벨	', '1980-07-18', '1', '겨울 왕국2'),
(2, '	이디나 덴젤	', '1971-05-30', '1', '겨울 왕국2'),
(3, '	맷 데이먼	', '1970-10-08', '2', '포드v페라리'),
(4, '	크리스찬 베일	', '1974-01-30', '3', '나이브스아웃'),
(5, '	다니엘 크레이그	', '1968-03-02', '3', '나이브스아웃'),
(6, '크리스 에반스', '1981-06-13', '4', '라스트크리스마스'),
(7, '에밀리아 클라크', '1986-10-23', '4', '라스트크리스마스'),
(8, '엠마 톰슨', '1959-04-15', '5', '파비안느에 관한 진실'),
(9, '까뜨린느 드뇌브', '1943-10-22', '5', '파비안느에 관한 진실'),
(10, '줄리엣 비노쉬', '1964-03-06', '5', '파비안느에 관한 진실'),
(11, '나문희', '1941-11-30', '6', '감쪽같은 그녀'),
(12, '김수안', '2006-01-27', '7', '블랙머니'),
(13, '조진웅', '1978-10-31', '7', '블랙머니'),
(14, '이하늬', '1983-04-22', '7', '블랙머니'),
(15, '나탈리 포트만', '1981-06-09', '8', '블랙 스완'),
(16, '밀라 쿠니스', '1983-08-14', '8', '블랙 스완'),
(17, '김희애', '1970-03-12', '9', '윤희에게'),
(18, '김소혜', '1999-07-19', '9', '윤희에게'),
(19, '프랑수아 시빌', '1990-01-29', '10', '러브 엣'),
(20, '조세핀 자피', '1994-07-12', '10', '러브 엣'),
(21, '헬렌 미렌', '1945-07-26', '11', '굿 라이어'),
(22, '이안 맥켈런', '1939-05-25', '11', '굿 라이어'),
(23, '이영애', '1977-03-22', '12', '나를 찾아줘'),
(24, '박해준', '1974-04-30', '12', '나를 찾아줘'),
(25, '아놀드 슈왈제네거', '1947-07-30', '13', '터미네이터:다크 페이트'),
(26, '린다 해밀턴', '1956-09-26', '13', '터미네이터:다크 페이트'),
(27, '김재철', '1982-06-25', '14', '어제 일은 모두 괜찮아'),
(28, '윤찬영', '2001-04-25', '14', '어제 일은 모두 괜찮아'),
(29, '모리 나나', '2001-08-31', '15', '날씨의 아이'),
(30, '다이고 코타로', '2000-09-01', '15', '날씨의 아이'),
(31, '이유영', '1980-05-30', '17', '어메이징 그레이스'),
(32, '강신일', '1960-11-20', '16', '집 이야기'),
(33, '아레사 프랭클린', '1942-03-25', '17', '어메이징 그레이스'),
(34, '로버트 다우니', '1965-04-04', '17', '어메이징 그레이스'),
(35, '박용우', '1976-06-04', '18', '카센타'),
(36, '조은지', '1981-02-10', '18', '카센타'),
(37, '제니퍼 로페즈', '1969-07-24', '19', '허슬러'),
(38, '콘스탄스 우', '1982-03-22', '19', '허슬러'),
(39, '정유미', '1987-07-22', '20', '82년생 김지영'),
(40, '공유', '1984-07-04', '20', '82년생 김지영');

-- --------------------------------------------------------

--
-- 테이블 구조 `actor`
--

CREATE TABLE `actor` (
  `Name` varchar(45) NOT NULL,
  `Birth` date NOT NULL,
  `Company` varchar(128) NOT NULL,
  `Repre_work` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `actor`
--

INSERT INTO `actor` (`Name`, `Birth`, `Company`, `Repre_work`) VALUES
('	다니엘 크레이그	', '1968-03-02', '	Cester	', '	나이브스 아웃	'),
('	맷 데이먼	', '1970-10-08', '	Mistic	', '	포드v페라리	'),
('	이디나 덴젤	', '1971-05-30', '	Twitter	', '	겨울 왕국2	'),
('	크리스찬 베일	', '1974-01-30', '	Blasic	', '	다크나이트	'),
('	크리스틴 벨	', '1980-07-18', '	Twitter	', '	겨울 왕국2	'),
('강신일', '1960-11-20', '스타빌리', '집 이야기'),
('공유', '1984-07-04', '숲', '82년생 김지영'),
('김소혜', '1999-07-19', 'IOI', '윤희에게'),
('김수안', '2006-01-27', '블러썸', '신과함께-죄와 벌'),
('김재철', '1982-06-25', '동아', '어제 일은 모두 괜찮아'),
('김희애', '1970-03-12', 'YG', '윤희에게'),
('까뜨린느 드뇌브', '1943-10-22', 'Badim', '파비안느에 관한 진실'),
('나문희', '1941-11-30', '콘텐츠파크', '감쪽같은 그녀'),
('나탈리 포트만', '1981-06-09', 'Benja', '블랙스완'),
('다이고 코타로', '2000-09-01', 'Light	', '날씨의 아이'),
('로버트 다우니', '1965-04-04', 'Instar', '어벤져스:엔드 게임'),
('린다 해밀턴', '1956-09-26', 'Night', '터미네이터:다크 페이트'),
('모리 나나', '2001-08-31', '아브레', '	날씨의 아이'),
('밀라 쿠니스', '1983-08-14', 'Uk', '블랙스완'),
('박용우', '1976-06-04', '프레인', '카센타'),
('박해준', '1974-04-30', '플레오이', '나를 찾아줘'),
('아놀드 슈왈제네거', '1947-07-30', '	Maria', '터미네이터:다크 페이트'),
('아레사 프랭클린', '1942-03-25', 'Instar', '어메이징 그레이스'),
('에밀리아 클라크', '1986-10-23', 'Instar', '라스트 크리스마스'),
('엠마 톰슨', '1959-04-15', 'Caim', '레이트 나잇'),
('윤찬영', '2001-04-25', '스노우', '어제 일은 모두 괜찮아'),
('이안 맥켈런', '1939-05-25', 'Caim', '굿 라이어	'),
('이영애', '1977-03-22', '굳피플', '나를 찾아줘'),
('이유영', '1980-05-30', '에이스펙', '집 이야기'),
('이하늬', '1983-04-22', '사람', '블랙머니'),
('정유미', '1987-07-22', '숲	', '82년생 김지영'),
('제니퍼 로페즈', '1969-07-24', 'Twitter', '허슬러'),
('조세핀 자피', '1994-07-12', 'Instar', '러브 엣	'),
('조은지', '1981-02-10', '프레인', '카센타'),
('조진웅', '1978-10-31', '사람', '블랙머니'),
('줄리엣 비노쉬', '1964-03-06', 'Bino', '파비안느에 관한 진실'),
('콘스탄스 우', '1982-03-22', 'Twitter	', '허슬러'),
('크리스 에반스', '1981-06-13', 'Evan	', '어벤져스:엔드 게임'),
('프랑수아 시빌', '1990-01-29', 'Instar', '러브 엣'),
('헬렌 미렌', '1945-07-26', 'Hack', '굿 라이어');

-- --------------------------------------------------------

--
-- 테이블 구조 `casting`
--

CREATE TABLE `casting` (
  `casting_ID` int(11) NOT NULL,
  `actor_Name` varchar(45) NOT NULL,
  `actor_Birth` date NOT NULL,
  `director_Name` varchar(45) NOT NULL,
  `director_Birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `casting`
--

INSERT INTO `casting` (`casting_ID`, `actor_Name`, `actor_Birth`, `director_Name`, `director_Birth`) VALUES
(1, '	크리스틴 벨	', '1980-07-18', '크리스 벅', '1958-02-24'),
(2, '	이디나 덴젤	', '1971-05-30', '크리스 벅', '1958-02-24'),
(3, '	맷 데이먼	', '1970-10-08', '제임스 맨골드', '1963-12-16'),
(4, '	크리스찬 베일	', '1974-01-30', '라이언 존슨	', '1973-12-17'),
(5, '	다니엘 크레이그	', '1968-03-02', '라이언 존슨	', '1973-12-17'),
(6, '크리스 에반스', '1981-06-13', '폴 페이그', '1962-09-17'),
(7, '에밀리아 클라크', '1986-10-23', '폴 페이그', '1962-09-17'),
(8, '엠마 톰슨', '1959-04-15', '고레에다 히로카즈', '1962-06-06'),
(9, '까뜨린느 드뇌브', '1943-10-22', '고레에다 히로카즈', '1962-06-06'),
(10, '줄리엣 비노쉬', '1964-03-06', '고레에다 히로카즈', '1962-06-06'),
(11, '나문희', '1941-11-30', '허인무', '1974-07-04'),
(12, '김수안', '2006-01-27', '정지영', '1946-11-19'),
(13, '조진웅', '1978-10-31', '정지영', '1946-11-19'),
(14, '이하늬', '1983-04-22', '정지영', '1946-11-19'),
(15, '나탈리 포트만', '1981-06-09', '대런 아로노프스키', '1969-02-12'),
(16, '밀라 쿠니스', '1983-08-14', '대런 아로노프스키', '1969-02-12'),
(17, '김희애', '1970-03-12', '임대형', '1986-03-03'),
(18, '김소혜', '1999-07-19', '임대형', '1986-03-03'),
(19, '프랑수아 시빌', '1990-01-29', '위고 젤랭', '1966-03-12'),
(20, '조세핀 자피', '1994-07-12', '위고 젤랭', '1966-03-12'),
(21, '헬렌 미렌', '1945-07-26', '빌 콘돈', '1955-10-22'),
(22, '이안 맥켈런', '1939-05-25', '빌 콘돈', '1955-10-22'),
(23, '이영애', '1977-03-22', '김승우', '1970-03-19'),
(24, '박해준', '1974-04-30', '김승우', '1970-03-19'),
(25, '아놀드 슈왈제네거', '1947-07-30', '팀 밀러', '1962-05-30'),
(26, '린다 해밀턴', '1956-09-26', '팀 밀러', '1962-05-30'),
(27, '김재철', '1982-06-25', '이성한', '1971-08-25'),
(28, '윤찬영', '2001-04-25', '이성한', '1971-08-25'),
(29, '모리 나나', '2001-08-31', '신카이 마코토', '1973-02-09'),
(30, '다이고 코타로', '2000-09-01', '신카이 마코토', '1973-02-09'),
(31, '이유영', '1980-05-30', '시드니 폴락	', '1934-07-01'),
(32, '강신일', '1960-11-20', '박제범', '1970-04-20'),
(33, '아레사 프랭클린', '1942-03-25', '시드니 폴락	', '1934-07-01'),
(34, '로버트 다우니', '1965-04-04', '시드니 폴락	', '1934-07-01'),
(35, '박용우', '1976-06-04', '하윤재', '1971-06-03'),
(36, '조은지', '1981-02-10', '하윤재', '1971-06-03'),
(37, '제니퍼 로페즈', '1969-07-24', '로렌 스카파리아', '1978-05-01'),
(38, '콘스탄스 우', '1982-03-22', '로렌 스카파리아', '1978-05-01'),
(39, '정유미', '1987-07-22', '김도영', '1970-11-05'),
(40, '공유', '1984-07-04', '김도영', '1970-11-05');

-- --------------------------------------------------------

--
-- 테이블 구조 `contract`
--

CREATE TABLE `contract` (
  `contract_ID` int(128) NOT NULL,
  `theater_theater_ID` varchar(45) NOT NULL,
  `filmmaker_Name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `contract`
--

INSERT INTO `contract` (`contract_ID`, `theater_theater_ID`, `filmmaker_Name`) VALUES
(1, '1', 'Booyeong'),
(2, '1', 'CGV'),
(3, '1', 'Disney'),
(4, '2', 'Firstrun'),
(5, '2', 'Lottle'),
(6, '2', 'MediaCastle'),
(7, '3', 'Netflix'),
(8, '3', 'Tcast'),
(9, '3', 'UniP'),
(10, '3', 'WB');

-- --------------------------------------------------------

--
-- 테이블 구조 `direct`
--

CREATE TABLE `direct` (
  `direct_ID` int(11) NOT NULL,
  `movie_movie_ID` varchar(45) NOT NULL,
  `movie_Title` varchar(128) NOT NULL,
  `director_Name` varchar(45) NOT NULL,
  `director_Birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `direct`
--

INSERT INTO `direct` (`direct_ID`, `movie_movie_ID`, `movie_Title`, `director_Name`, `director_Birth`) VALUES
(1, '1', '겨울 왕국2', '크리스 벅', '1958-02-24'),
(2, '2', '포드v페라리', '제임스 맨골드', '1963-12-16'),
(3, '3', '나이브스아웃', '라이언 존슨	', '1973-12-17'),
(4, '4', '라스트크리스마스', '폴 페이그', '1962-09-17'),
(5, '5', '파비안느에 관한 진실', '고레에다 히로카즈', '1962-06-06'),
(6, '6', '감쪽같은 그녀', '허인무', '1974-07-04'),
(7, '7', '블랙머니', '정지영', '1946-11-19'),
(8, '8', '블랙 스완', '대런 아로노프스키', '1969-02-12'),
(9, '9', '윤희에게', '임대형', '1986-03-03'),
(10, '10', '러브 엣', '위고 젤랭', '1966-03-12'),
(11, '11', '굿 라이어', '빌 콘돈', '1955-10-22'),
(12, '12', '나를 찾아줘', '김승우', '1970-03-19'),
(13, '13', '터미네이터:다크 페이트', '팀 밀러', '1962-05-30'),
(14, '14', '어제 일은 모두 괜찮아', '이성한', '1971-08-25'),
(15, '15', '날씨의 아이', '신카이 마코토', '1973-02-09'),
(16, '16', '집 이야기', '박제범', '1970-04-20'),
(17, '17', '어메이징 그레이스', '시드니 폴락	', '1934-07-01'),
(18, '18', '카센타', '하윤재', '1971-06-03'),
(19, '19', '허슬러', '로렌 스카파리아', '1978-05-01'),
(20, '20', '82년생 김지영', '김도영', '1970-11-05');

-- --------------------------------------------------------

--
-- 테이블 구조 `director`
--

CREATE TABLE `director` (
  `Name` varchar(45) NOT NULL,
  `Birth` date NOT NULL,
  `Expertise` varchar(45) NOT NULL,
  `Repre_work` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `director`
--

INSERT INTO `director` (`Name`, `Birth`, `Expertise`, `Repre_work`) VALUES
('고레에다 히로카즈', '1962-06-06', '황금종려상', '파비안느에 관한 진실'),
('김도영', '1970-11-05', '여성영화제 작품상', '82년생 김지영'),
('김승우', '1970-03-19', '감독상', '나를 찾아줘'),
('대런 아로노프스키', '1969-02-12', '영화비평과협회 감독상', '블랙 스완'),
('라이언 존슨	', '1973-12-17', '센트럴 오하이오 각본상', '나이브스 아웃'),
('로렌 스카파리아', '1978-05-01', '21일 감독상', '허슬러'),
('박제범', '1970-04-20', '감독상', '집 이야기'),
('빌 콘돈', '1955-10-22', '시애틀국제영화제 감독상', '굿 라이어'),
('시드니 폴락	', '1934-07-01', '워 헌트 감독상', '어메이징 그레이스'),
('신카이 마코토', '1973-02-09', '애니메이션상', '날씨의 아이'),
('위고 젤랭', '1966-03-12', '감독상', '러브 엣'),
('이성한', '1971-08-25', '스페어 감독상', '어제 일은 모두 괜찮아'),
('임대형', '1986-03-03', '단편 영화제 특별상', '윤희에게'),
('정지영', '1946-11-19', '도쿄국제영화제 대상', '블랙머니'),
('제임스 맨골드', '1963-12-16', '골든 글로브 작품상	', '포드v페라리'),
('크리스 벅', '1958-02-24', '애니상 최우수감독상', '겨울 왕국2'),
('팀 밀러', '1962-05-30', '데드풀 감독상', '터미네이터:다크 페이트'),
('폴 페이그', '1962-09-17', '샌디에이고 영화제 작품상', '라스트 크리스마스'),
('하윤재', '1971-06-03', '카센타 감독상', '카센타'),
('허인무', '1974-07-04', '온라인 우수인기상', '감쪽같은 그녀');

-- --------------------------------------------------------

--
-- 테이블 구조 `evaluation`
--

CREATE TABLE `evaluation` (
  `Result` int(11) DEFAULT NULL,
  `Audience_count` int(11) DEFAULT NULL,
  `Recommends` int(11) DEFAULT NULL,
  `movie_movie_ID` varchar(45) NOT NULL,
  `movie_Title` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `evaluation`
--

INSERT INTO `evaluation` (`Result`, `Audience_count`, `Recommends`, `movie_movie_ID`, `movie_Title`) VALUES
(3252, 10815950, 27306, '1', '겨울 왕국2'),
(25, 84749, 940, '10', '러브 엣'),
(6, 21917, 225, '11', '굿 라이어'),
(189, 628679, 3324, '12', '나를 찾아줘'),
(724, 2407027, 7725, '13', '터미네이터:다크 페이트'),
(4, 14785, 881, '14', '어제 일은 모두 괜찮아'),
(197, 652587, 7046, '15', '날씨의 아이'),
(2, 8969, 258, '16', '집 이야기'),
(1, 4059, 121, '17', '어메이징 그레이스'),
(4, 14474, 301, '18', '카센타'),
(13, 43490, 1235, '19', '허슬러'),
(153, 508745, 2206, '2', '포드v페라리'),
(1113, 3674362, 38325, '20', '82년생 김지영'),
(78, 260968, 1301, '3', '나이브스아웃'),
(48, 161569, 1707, '4', '라스트크리스마스'),
(4, 16227, 407, '5', '파비안느에 관한 진실'),
(87, 290076, 1882, '6', '감쪽같은 그녀'),
(732, 2437616, 4788, '7', '블랙머니'),
(488, 1627518, 1104, '8', '블랙 스완'),
(31, 102134, 2092, '9', '윤희에게');

-- --------------------------------------------------------

--
-- 테이블 구조 `extra`
--

CREATE TABLE `extra` (
  `Pay` double NOT NULL,
  `actor_Name` varchar(45) NOT NULL,
  `actor_Birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `extra`
--

INSERT INTO `extra` (`Pay`, `actor_Name`, `actor_Birth`) VALUES
(652, '	이디나 덴젤	', '1971-05-30'),
(2624, '	크리스찬 베일	', '1974-01-30'),
(102, '강신일', '1960-11-20'),
(570, '공유', '1984-07-04'),
(1208, '김소혜', '1999-07-19'),
(2572, '김수안', '2006-01-27'),
(1408, '다이고 코타로', '2000-09-01'),
(519, '로버트 다우니', '1965-04-04'),
(1898, '린다 해밀턴', '1956-09-26'),
(408, '밀라 쿠니스', '1983-08-14'),
(1629, '박해준', '1974-04-30'),
(34, '엠마 톰슨', '1959-04-15'),
(123, '윤찬영', '2001-04-25'),
(2802, '이안 맥켈런', '1939-05-25'),
(2704, '이하늬', '1983-04-22'),
(224, '조세핀 자피', '1994-07-12'),
(2376, '조은지', '1981-02-10'),
(2969, '줄리엣 비노쉬', '1964-03-06'),
(2697, '콘스탄스 우', '1982-03-22'),
(2666, '크리스 에반스', '1981-06-13');

-- --------------------------------------------------------

--
-- 테이블 구조 `filmmaker`
--

CREATE TABLE `filmmaker` (
  `Name` varchar(128) NOT NULL,
  `Location` varchar(45) DEFAULT NULL,
  `Finance` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `filmmaker`
--

INSERT INTO `filmmaker` (`Name`, `Location`, `Finance`) VALUES
('Booyeong', '한국', 990),
('CGV', '한국', 3700),
('Disney', '미국', 9800),
('Firstrun', '미국', 3500),
('Lottle', '한국', 2100),
('MediaCastle', '일본', 3100),
('Netflix', '미국', 5700),
('Tcast', '프랑스', 2700),
('UniP', '미국', 5500),
('WB', '미국', 6900);

-- --------------------------------------------------------

--
-- 테이블 구조 `genre`
--

CREATE TABLE `genre` (
  `genre_ID` int(11) NOT NULL,
  `genre_type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `genre`
--

INSERT INTO `genre` (`genre_ID`, `genre_type`) VALUES
(1, '드라마'),
(2, '스릴러'),
(3, 'SF'),
(4, '멜로'),
(5, '애니메이션');

-- --------------------------------------------------------

--
-- 테이블 구조 `invest`
--

CREATE TABLE `invest` (
  `invest_ID` int(11) NOT NULL,
  `filmmaker_Name` varchar(128) NOT NULL,
  `movie_movie_ID` varchar(45) NOT NULL,
  `movie_Title` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `invest`
--

INSERT INTO `invest` (`invest_ID`, `filmmaker_Name`, `movie_movie_ID`, `movie_Title`) VALUES
(1, 'Booyeong', '1', '겨울 왕국2'),
(2, 'Booyeong', '2', '포드v페라리'),
(3, 'Disney', '3', '나이브스아웃'),
(4, 'Firstrun', '4', '라스트크리스마스'),
(5, 'Lottle', '5', '파비안느에 관한 진실'),
(6, 'CGV', '6', '감쪽같은 그녀'),
(7, 'Disney', '7', '블랙머니'),
(8, 'Firstrun', '8', '블랙 스완'),
(9, 'Lottle', '9', '윤희에게'),
(10, 'Lottle', '10', '러브 엣'),
(11, 'MediaCastle', '11', '굿 라이어'),
(12, 'MediaCastle', '12', '나를 찾아줘'),
(13, 'Netflix', '13', '터미네이터:다크 페이트'),
(14, 'Netflix', '14', '어제 일은 모두 괜찮아'),
(15, 'Tcast', '15', '날씨의 아이'),
(16, 'Tcast', '16', '집 이야기'),
(17, 'UniP', '17', '어메이징 그레이스'),
(18, 'UniP', '18', '카센타'),
(19, 'WB', '19', '허슬러'),
(20, 'WB', '20', '82년생 김지영');

-- --------------------------------------------------------

--
-- 테이블 구조 `main`
--

CREATE TABLE `main` (
  `Salary` int(11) NOT NULL,
  `actor_Name` varchar(45) NOT NULL,
  `actor_Birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `main`
--

INSERT INTO `main` (`Salary`, `actor_Name`, `actor_Birth`) VALUES
(14569, '	다니엘 크레이그	', '1968-03-02'),
(12287, '	맷 데이먼	', '1970-10-08'),
(11198, '	크리스틴 벨	', '1980-07-18'),
(10034, '김재철', '1982-06-25'),
(13278, '김희애', '1970-03-12'),
(11642, '까뜨린느 드뇌브', '1943-10-22'),
(14164, '나문희', '1941-11-30'),
(14043, '나탈리 포트만', '1981-06-09'),
(12798, '모리 나나', '2001-08-31'),
(16435, '박용우', '1976-06-04'),
(18989, '아놀드 슈왈제네거', '1947-07-30'),
(19863, '아레사 프랭클린', '1942-03-25'),
(15555, '에밀리아 클라크', '1986-10-23'),
(14888, '이영애', '1977-03-22'),
(12993, '이유영', '1980-05-30'),
(13255, '정유미', '1987-07-22'),
(19442, '제니퍼 로페즈', '1969-07-24'),
(13409, '조진웅', '1978-10-31'),
(14910, '프랑수아 시빌', '1990-01-29'),
(12452, '헬렌 미렌', '1945-07-26');

-- --------------------------------------------------------

--
-- 테이블 구조 `moive_genre`
--

CREATE TABLE `moive_genre` (
  `movie_genre_ID` int(11) NOT NULL,
  `movie_movie_ID` varchar(45) NOT NULL,
  `movie_Title` varchar(128) NOT NULL,
  `genre_genre_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `moive_genre`
--

INSERT INTO `moive_genre` (`movie_genre_ID`, `movie_movie_ID`, `movie_Title`, `genre_genre_ID`) VALUES
(1, '1', '겨울 왕국2', 1),
(2, '2', '포드v페라리', 1),
(3, '3', '나이브스아웃', 1),
(4, '4', '라스트크리스마스', 1),
(5, '5', '파비안느에 관한 진실', 2),
(6, '6', '감쪽같은 그녀', 2),
(7, '7', '블랙머니', 2),
(8, '8', '블랙 스완', 2),
(9, '9', '윤희에게', 3),
(10, '10', '러브 엣', 3),
(11, '11', '굿 라이어', 3),
(12, '12', '나를 찾아줘', 3),
(13, '13', '터미네이터:다크 페이트', 4),
(14, '14', '어제 일은 모두 괜찮아', 4),
(15, '15', '날씨의 아이', 4),
(16, '16', '집 이야기', 4),
(17, '17', '어메이징 그레이스', 5),
(18, '18', '카센타', 5),
(19, '19', '허슬러', 5),
(20, '20', '82년생 김지영', 5);

-- --------------------------------------------------------

--
-- 테이블 구조 `movie`
--

CREATE TABLE `movie` (
  `movie_ID` varchar(45) NOT NULL,
  `Title` varchar(128) NOT NULL,
  `Release_date` datetime DEFAULT current_timestamp(),
  `Country` varchar(45) DEFAULT NULL,
  `Running_time` int(11) DEFAULT NULL,
  `Grade` double DEFAULT NULL,
  `Intro` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `movie`
--

INSERT INTO `movie` (`movie_ID`, `Title`, `Release_date`, `Country`, `Running_time`, `Grade`, `Intro`) VALUES
('1', '겨울 왕국2', '2019-11-21 00:00:00', '미국', 103, 10, '내 마법의 힘은 어디서 왔을까?\r\n나를 부르는 저 목소리는 누구지?\r\n어느 날 부턴가 의문의 목소리가 엘사를 부르고, 평화로운 아렌델 왕국을 위협한다.\r\n트롤은 모든 것은 과거에서 시작되었음을 알려주며 엘사의 힘의 비밀과 진실을 찾아 떠나야한다고 조언한다...'),
('10', '러브 엣', '2019-11-27 00:00:00', '벨기에', 118, 2, '올 겨울, 얼어붙은 연애세포를 녹여줄 달달심쿵 로맨스가 시작된다!\r\n#어느 날, 눈 떠보니 평행세계!\r\n아내 ‘올리비아’와 다투고 만취 상태로 잠에서 깨어난 ‘라파엘’은  \r\n평소와 다름을 느낀다. 같은 듯 다른 세상.....?'),
('11', '굿 라이어', '2019-12-07 00:00:00', '미국', 109, 3, '평생을 공들인 계획, 드디어 실행에 나선다! \r\n거짓말은 완벽하게, 복수는 우아하게! \r\n부유한 미망인 \'베티(헬렌 미렌)\'는 온라인 데이트 사이트에서 \'로이(이안 맥켈런)\'를만나고, 두 사람은 서로를 의지하며 좋은 관계를 만들어나간다......'),
('12', '나를 찾아줘', '2019-11-27 00:00:00', '한국', 107, 5, '6년 전 실종된 아들을 봤다는 연락을 받은 ‘정연’(이영애).\r\n숱하게 반복되던 거짓 제보와 달리  \r\n생김새부터 흉터까지 똑같은 아이를 봤다는 낯선 이의 이야기에\r\n‘정연’은 지체 없이 홀로 낯선 곳으로 향한다. .......'),
('13', '터미네이터:다크 페이트', '2019-11-30 00:00:00', '미국', 128, 7, '심판의 날 그 후, 모든 것이 다시 시작된다! \r\n심판의 날 그 후, 뒤바뀐 미래 \r\n새로운 인류의 희망 ‘대니’(나탈리아 레이즈)를 지키기 위해 슈퍼 솔져 ‘그레이스’(맥켄지 데이비스)가\r\n미래에서 찾아오고, ‘대니’를 제거하기 위한 터미네이터 ‘Rev-9’(가브리엘 루나)의 추격이 시작된다......'),
('14', '어제 일은 모두 괜찮아', '2018-07-25 00:00:00', '한국', 107, 6, '수없이 실패하고 아파도… 어제니까 괜찮아!\r\n학교와 가정에서 소외된 지근, 용주, 현정, 수연네 아이들은 외줄 타기를 하듯 위태로운 나날을 보내고 있다.\r\n그 곁에서 낮에는 학생들을 가르치고, 밤에는 거리에서 아이들과 함께하는 교사 민재는....'),
('15', '날씨의 아이', '2018-03-06 00:00:00', '일본', 112, 9, '“이제 비는 그치고, 우리의 세상이 빛나기 시작할 거야”\r\n비가 그치지 않던 어느 여름날,\r\n가출 소년 ‘호다카’는 수상한 잡지사에 취직하게 되고\r\n비밀스러운 소녀 ‘히나’를 우연히 만난다.\r\n“지금부터 하늘이 맑아질 거야”'),
('16', '집 이야기', '2019-11-28 00:00:00', '한국', 92, 4, '“당신은 지금 몇 번째 집에 살고 있나요?”\r\n혼자 서울살이를 하고 있는 신문사 편집기자 은서는 살던 집의 계약이 끝나가고 정착할 마음에 드는 집을 찾지 못하자 아버지가 살고 있는 고향 집에 잠시 머물기로 한다. 인천에서 24시간 출장 열쇠를 전문으로 하는 아버지 진철은 가족들이 떠나버린 집에서 혼자 살고 있다...'),
('17', '어메이징 그레이스', '2017-10-10 00:00:00', '미국', 56, 5, '환희, 열정, 전율! \r\n영혼을 다독이는, 소울의 여왕 아레사 프랭클린 가스펠 녹음 실황!\r\n전 세계 최고 판매량으로 기네스북 등재된\r\n소울의 여왕 아레사 프랭클린의 ‘어메이징 그레이스’ 녹음 현장!\r\n최고의 뮤지션들이 아닌 남부 캘리포니아 지역 성가대와 함께한 관객들이 만들어내는 기적의 89분!'),
('18', '카센타', '2019-03-12 00:00:00', '한국', 97, 7, '파리 날리는 국도변 카센터를 운영하는 재구와 순영 부부(박용우, 조은지). \r\n어느 날부터 타이어가 펑크 난 차량이 부쩍 늘어나게 되고 재구는 이것이 인근 공사현장을 오가는 트럭에서 떨어진 금속 조각 때문인 걸 알게 된다. 순간 재구는 떨어진 금속 조각과 펑크 난 타이어 그리고 주머니를 채운 지폐를 보며 기발하고 수상한 계획을 세우게 된다...'),
('19', '허슬러', '2019-07-17 00:00:00', '미국', 109, 6, '“룰대로만 사는 사람은 손해만 봐”\r\n가진 자들만이 돈을 불리며 판을 치는 세상,\r\n권력과 돈이면 모든 것을 살 수 있다는 그들에게필요한 건 화끈한 한.방!\r\n외모, 두뇌플레이 모두 갖춘 그녀들이\r\n은밀히 움직이기 시작하는데...\r\n세상을 향한 그녀들의 통쾌한 한방!\r\n지금부터가 진짜 시작이다!'),
('2', '포드v페라리', '2019-12-04 00:00:00', '미국', 152, 7, '자존심을 건 대결의 시작!\r\n1960년대, 매출 감소에 빠진 ‘포드’는 판매 활로를 찾기 위해\r\n스포츠카 레이스를 장악한 절대적 1위 ‘페라리’와의 인수 합병을 추진한다.\r\n막대한 자금력에도 불구, 계약에 실패하고 엔초 페라리로부터 모욕까지 당한 헨리 포드 2세는르망 24시간 레이스에서 페라리를 박살 낼 차를 만들 것을 지시한다.\r\n불가능을 즐기는 두 남자를 주목하라!'),
('20', '82년생 김지영', '2019-10-23 00:00:00', '한국', 118, 6, '1982년 봄에 태어나\r\n누군가의 딸이자 아내, 동료이자 엄마로\r\n2019년 오늘을 살아가는 ‘지영’(정유미).\r\n때론 어딘가 갇힌 듯 답답하기도 하지만\r\n남편 ‘대현’(공유)과 사랑스러운 딸,\r\n그리고 자주 만나지 못해도 항상 든든한 가족들이 ‘지영’에겐 큰 힘이다.\r\n모두가 알지만 아무도 몰랐던 당신과 나의 이야기'),
('3', '나이브스아웃', '2019-10-04 00:00:00', '미국', 130, 7, '베스트셀러 미스터리 작가가 85세 생일에 숨진 채 발견된다. \r\n그의 죽음의 원인을 파헤치기 위해 경찰과 함께 탐정 브누아 블랑이 파견 되는데…'),
('4', '라스트크리스마스', '2019-12-05 00:00:00', '미국', 103, 8, '이번 크리스마스에는 행복할 수 있을까요?\r\n친구도 없고, 연애도 못하고, 엄마에게 얹혀 살고 있는 인생 뭐 하나 마음대로 되는게 없는 ‘케이트’(에밀리아 클라크).\r\n매번 오디션에서 떨어지고,마지못해 별볼일 없는 크리스마스 장식용품 가게에서 일하고 있다.\r\n매일 반복되는 일상이 지나고 크리스마스가 다가오던 어느 날, 언제 어디서든 나타나는, 다른 남자들과 다른 톰의 매력에 점점 끌리게 되는데…'),
('5', '파비안느에 관한 진실', '2017-11-08 00:00:00', '프랑스', 103, 8, '자신의 회고록 발간을 앞둔 전설적인 여배우 파비안느(까뜨린느 드뇌브). \r\n이를 축하하기 위해 딸 뤼미르(줄리엣 비노쉬)가 남편 행크(에단 호크), 어린 딸 샤를로트와 함께 오랜만에 파비안느의 집을 찾는다.\r\n반가운 재회도 잠시, 엄마의 회고록을 읽은 뤼미르는 책 속 내용이 거짓으로 가득 찼음을 알게 되는데… '),
('6', '감쪽같은 그녀', '2016-10-19 00:00:00', '한국', 104, 6, '“초면에 실례하겠습니다~”\r\n72살 나 홀로 라이프를 즐기는 ‘말순’ 할매의 인생에 듣도 보도 못한 손녀(?)가 나타났다! \r\n특기는 자수,용돈 벌이는 그림 맞추기(?)\r\n동네를 주름 잡으며 나 혼자 잘 살고 있던 ‘말순’ 할매 앞에 다짜고짜 자신을 손녀라고 소개하는 열두 살 ‘공주’가 갓난 동생 ‘진주’까지 업고 찾아온다!'),
('7', '블랙머니', '2019-12-03 00:00:00', '한국', 113, 7, '고발은 의무! 수사는 직진!\r\n할말은 하고 깔 건 깐다!\r\n일명 서울지검 ‘막프로’! 검찰 내에서 거침없이 막 나가는 문제적 검사로 이름을 날리는 ‘양민혁’은 자신이 조사를 담당한 피의자가 자살하는 사건으로 인해 하루 아침에 벼랑 끝에 내몰린다. 억울한 누명을 벗기 위해 내막을 파헤치던 그는 피의자가 대한은행 헐값 매각사건의 중요 증인이었음을 알게 된다.'),
('8', '블랙 스완', '2019-11-14 00:00:00', '미국', 108, 4, '“나는 완벽했어요.” \r\n새롭게 해석된 [백조의 호수] 공연에서\r\n순수하고 가녀린 백조와 관능적이고 도발적인 흑조, 1인 2역을 완벽하게 해내고 싶은 프리마돈나 ‘니나\'.\r\n완벽을 향한 그녀의 욕망은 집착이 되어가고 모두 자신을 파괴할 것 같은 불안감이 깊어질수록 점차 어두운 내면이 드러나는데…'),
('9', '윤희에게', '2019-11-14 00:00:00', '한국', 105, 8, '다시 날 가슴 뛰게 만든 그 말\r\n\"윤희에게, 잘 지내니?\"\r\n평범한 일상을 살아가던 \'윤희\' 앞으로 도착한 한 통의 편지. 편지를 몰래 읽어본 딸 \'새봄\'은 편지의 내용을 숨긴 채 발신인이 살고 있는 곳으로 여행을 제안하고, \'윤희\'는 비밀스러웠던 첫사랑의 기억으로 가슴이 뛴다.\r\n\'새봄\'과 함께 여행을 떠난 ‘윤희’는\r\n끝없이 눈이 내리는 그곳에서 첫사랑을 만날지도 모른다는 기대를 품는데…');

-- --------------------------------------------------------

--
-- 테이블 구조 `screen`
--

CREATE TABLE `screen` (
  `screen_ID` int(11) NOT NULL,
  `theater_theater_ID` varchar(45) NOT NULL,
  `movie_movie_ID` varchar(45) NOT NULL,
  `movie_Title` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `screen`
--

INSERT INTO `screen` (`screen_ID`, `theater_theater_ID`, `movie_movie_ID`, `movie_Title`) VALUES
(1, '1', '1', '겨울 왕국2'),
(2, '1', '2', '포드v페라리'),
(3, '1', '3', '나이브스아웃'),
(4, '1', '4', '라스트크리스마스'),
(5, '1', '5', '파비안느에 관한 진실'),
(6, '1', '6', '감쪽같은 그녀'),
(7, '1', '7', '블랙머니'),
(8, '2', '8', '블랙 스완'),
(9, '2', '9', '윤희에게'),
(10, '2', '10', '러브 엣'),
(11, '2', '11', '굿 라이어'),
(12, '2', '12', '나를 찾아줘'),
(13, '2', '13', '터미네이터:다크 페이트'),
(14, '2', '14', '어제 일은 모두 괜찮아'),
(15, '3', '15', '날씨의 아이'),
(16, '3', '16', '집 이야기'),
(17, '3', '17', '어메이징 그레이스'),
(18, '3', '18', '카센타'),
(19, '3', '19', '허슬러'),
(20, '3', '20', '82년생 김지영');

-- --------------------------------------------------------

--
-- 테이블 구조 `theater`
--

CREATE TABLE `theater` (
  `theater_ID` varchar(45) NOT NULL,
  `Publisher` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `theater`
--

INSERT INTO `theater` (`theater_ID`, `Publisher`) VALUES
('1', 'CGV'),
('2', '롯데시네마'),
('3', '메가박스');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `act`
--
ALTER TABLE `act`
  ADD PRIMARY KEY (`act_ID`),
  ADD UNIQUE KEY `actor_Name_UNIQUE` (`actor_Name`),
  ADD UNIQUE KEY `actor_Birth_UNIQUE` (`actor_Birth`),
  ADD KEY `fk_act_actor1_idx` (`actor_Name`,`actor_Birth`),
  ADD KEY `fk_act_movie1_idx` (`movie_movie_ID`,`movie_Title`);

--
-- 테이블의 인덱스 `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`Name`,`Birth`);

--
-- 테이블의 인덱스 `casting`
--
ALTER TABLE `casting`
  ADD PRIMARY KEY (`casting_ID`),
  ADD KEY `fk_casting_actor1_idx` (`actor_Name`,`actor_Birth`),
  ADD KEY `fk_casting_director1_idx` (`director_Name`,`director_Birth`);

--
-- 테이블의 인덱스 `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`contract_ID`),
  ADD KEY `fk_contract_theater1_idx` (`theater_theater_ID`),
  ADD KEY `fk_contract_filmmaker1_idx` (`filmmaker_Name`);

--
-- 테이블의 인덱스 `direct`
--
ALTER TABLE `direct`
  ADD PRIMARY KEY (`direct_ID`),
  ADD KEY `fk_direct_movie1_idx` (`movie_movie_ID`,`movie_Title`),
  ADD KEY `fk_direct_director1_idx` (`director_Name`,`director_Birth`);

--
-- 테이블의 인덱스 `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`Name`,`Birth`);

--
-- 테이블의 인덱스 `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`movie_movie_ID`,`movie_Title`),
  ADD KEY `fk_evaluation_movie1_idx` (`movie_movie_ID`,`movie_Title`);

--
-- 테이블의 인덱스 `extra`
--
ALTER TABLE `extra`
  ADD PRIMARY KEY (`actor_Name`,`actor_Birth`);

--
-- 테이블의 인덱스 `filmmaker`
--
ALTER TABLE `filmmaker`
  ADD PRIMARY KEY (`Name`);

--
-- 테이블의 인덱스 `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_ID`);

--
-- 테이블의 인덱스 `invest`
--
ALTER TABLE `invest`
  ADD PRIMARY KEY (`invest_ID`),
  ADD KEY `fk_invest_filmmaker1_idx` (`filmmaker_Name`),
  ADD KEY `fk_invest_movie1_idx` (`movie_movie_ID`,`movie_Title`);

--
-- 테이블의 인덱스 `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`actor_Name`,`actor_Birth`);

--
-- 테이블의 인덱스 `moive_genre`
--
ALTER TABLE `moive_genre`
  ADD PRIMARY KEY (`movie_genre_ID`),
  ADD KEY `fk_moive_genre_movie1_idx` (`movie_movie_ID`,`movie_Title`),
  ADD KEY `fk_moive_genre_genre1_idx` (`genre_genre_ID`);

--
-- 테이블의 인덱스 `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movie_ID`,`Title`),
  ADD UNIQUE KEY `movie_ID_UNIQUE` (`movie_ID`);

--
-- 테이블의 인덱스 `screen`
--
ALTER TABLE `screen`
  ADD PRIMARY KEY (`screen_ID`),
  ADD KEY `fk_screen_theater1_idx` (`theater_theater_ID`),
  ADD KEY `fk_screen_movie1_idx` (`movie_movie_ID`,`movie_Title`);

--
-- 테이블의 인덱스 `theater`
--
ALTER TABLE `theater`
  ADD PRIMARY KEY (`theater_ID`);

--
-- 덤프된 테이블의 제약사항
--

--
-- 테이블의 제약사항 `act`
--
ALTER TABLE `act`
  ADD CONSTRAINT `fk_act_actor1` FOREIGN KEY (`actor_Name`,`actor_Birth`) REFERENCES `actor` (`Name`, `Birth`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_act_movie1` FOREIGN KEY (`movie_movie_ID`,`movie_Title`) REFERENCES `movie` (`movie_ID`, `Title`);

--
-- 테이블의 제약사항 `casting`
--
ALTER TABLE `casting`
  ADD CONSTRAINT `fk_casting_actor1` FOREIGN KEY (`actor_Name`,`actor_Birth`) REFERENCES `actor` (`Name`, `Birth`),
  ADD CONSTRAINT `fk_casting_director1` FOREIGN KEY (`director_Name`,`director_Birth`) REFERENCES `director` (`Name`, `Birth`);

--
-- 테이블의 제약사항 `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `fk_contract_filmmaker1` FOREIGN KEY (`filmmaker_Name`) REFERENCES `filmmaker` (`Name`),
  ADD CONSTRAINT `fk_contract_theater1` FOREIGN KEY (`theater_theater_ID`) REFERENCES `theater` (`theater_ID`);

--
-- 테이블의 제약사항 `direct`
--
ALTER TABLE `direct`
  ADD CONSTRAINT `fk_direct_director1` FOREIGN KEY (`director_Name`,`director_Birth`) REFERENCES `director` (`Name`, `Birth`),
  ADD CONSTRAINT `fk_direct_movie1` FOREIGN KEY (`movie_movie_ID`,`movie_Title`) REFERENCES `movie` (`movie_ID`, `Title`);

--
-- 테이블의 제약사항 `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `fk_evaluation_movie1` FOREIGN KEY (`movie_movie_ID`,`movie_Title`) REFERENCES `movie` (`movie_ID`, `Title`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 테이블의 제약사항 `extra`
--
ALTER TABLE `extra`
  ADD CONSTRAINT `fk_extra_actor1` FOREIGN KEY (`actor_Name`,`actor_Birth`) REFERENCES `actor` (`Name`, `Birth`);

--
-- 테이블의 제약사항 `invest`
--
ALTER TABLE `invest`
  ADD CONSTRAINT `fk_invest_filmmaker1` FOREIGN KEY (`filmmaker_Name`) REFERENCES `filmmaker` (`Name`),
  ADD CONSTRAINT `fk_invest_movie1` FOREIGN KEY (`movie_movie_ID`,`movie_Title`) REFERENCES `movie` (`movie_ID`, `Title`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 테이블의 제약사항 `main`
--
ALTER TABLE `main`
  ADD CONSTRAINT `fk_main_actor1` FOREIGN KEY (`actor_Name`,`actor_Birth`) REFERENCES `actor` (`Name`, `Birth`);

--
-- 테이블의 제약사항 `moive_genre`
--
ALTER TABLE `moive_genre`
  ADD CONSTRAINT `fk_moive_genre_genre1` FOREIGN KEY (`genre_genre_ID`) REFERENCES `genre` (`genre_ID`),
  ADD CONSTRAINT `fk_moive_genre_movie1` FOREIGN KEY (`movie_movie_ID`,`movie_Title`) REFERENCES `movie` (`movie_ID`, `Title`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 테이블의 제약사항 `screen`
--
ALTER TABLE `screen`
  ADD CONSTRAINT `fk_screen_movie1` FOREIGN KEY (`movie_movie_ID`,`movie_Title`) REFERENCES `movie` (`movie_ID`, `Title`),
  ADD CONSTRAINT `fk_screen_theater1` FOREIGN KEY (`theater_theater_ID`) REFERENCES `theater` (`theater_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
