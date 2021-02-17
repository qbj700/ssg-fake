-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: textBoard
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `textBoard`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `textBoard` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `textBoard`;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `title` char(200) NOT NULL,
  `subtitle` char(200) NOT NULL,
  `body` text NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `memberId` int(10) unsigned NOT NULL,
  `boardId` int(10) unsigned NOT NULL,
  `recommendsCount` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'2020-12-17 17:38:26','2021-02-10 10:26:17','(공지사항) MODIFY CODE에 오신걸 환영합니다.👨‍🔧','IT관련 강의 및 소식을 다룰 예정','# MODIFY CODE 에서는\r\n## IT관련 강의 및 소식을 다룰 예정\r\n\r\n - 주된 개발언어\r\n  - JAVA\r\n  - SQL\r\n  - HTML\r\n  - CSS\r\n  - JS\r\n  - 그외 다수',16,1,1,0),(2,'2021-01-20 21:48:53','2021-02-10 10:26:17','JSP / 커뮤니티 사이트 개발일지 [1회차]','JSP 커뮤니티 개발일지 / 진행현황','# JSP 커뮤니티 개발일지 / 진행현황\r\n### 2021-01-20 (수)\r\n\r\n# 완료리스트\r\n- [x] 프레임워크 기초\r\n- [x] 로그인/로그아웃\r\n- [x] 회원가입\r\n- [x] 게시글 CRUD\r\n- [x] 인터셉터\r\n- [x] 로그인/로그아웃 상태 관련 권한체크\r\n- [x] 게시물 수정/삭제 관련 권한체크\r\n\r\n# 당장 할일 리스트\r\n- [ ] 게시물 블라인드\r\n- [ ] 좋아요, 싫어요\r\n- [ ]  게시물 검색\r\n- [ ] 게시물 페이징\r\n- [ ] 토스트 에디터 붙이기\r\n- [ ] 회원정보 수정\r\n- [ ] attr 서비스 도입\r\n- [ ] 임시비밀번호 사용시 경고 출력\r\n- [ ] 비밀번호 변경후 90일 경과시 경고 출력\r\n- [ ] 비번찾기(임시패스워드 발송)\r\n- [ ] 아이디찾기\r\n- [ ] 비밀번호 암호화\r\n\r\n# 추후 할일 리스트\r\n- [ ] 내 글에 새 댓글 알림\r\n- [ ] 내 댓글에 추가 댓글 알림\r\n- [ ] 댓글\r\n- [ ] 댓글멘션\r\n- [ ] 대댓글\r\n- [ ] 태그\r\n- [ ] 댓글, ajax화\r\n- [ ] 파일업로드\r\n- [ ] 회원인증\r\n- [ ] 관리자페이지\r\n- [ ] 1:1 쪽지\r\n- [ ] 신고\r\n\r\n<br>\r\n<br>\r\n***\r\n<br>\r\n<br>\r\n### 개발 진행상황 및 구현기능 시연 동영상\r\n```youtube\r\nmtiGEw-hXhk\r\n```',13,1,2,0),(10,'2021-02-04 16:15:51','2021-02-10 10:26:16','JAVA / codeup(코드업) 1011 : [기초-입출력] 문자 1개 입력받아 그대로 출력하기','문자형(char)으로 변수를 하나 선언하고, 변수에 문자를 저장한 후','## 문자 1개 입력받아 그대로 출력하기\r\n문자형(char)으로 변수를 하나 선언하고, 변수에 문자를 저장한 후\r\n변수에 저장되어 있는 문자를 그대로 출력해보자.\r\n<br>\r\n<br>\r\n참고\r\n```c\r\nchar x;\r\nscanf(\"%c\", &x);\r\nprintf(\"%c\", x);\r\n```\r\n<br>\r\n와 같은 방법으로 가능하다.\r\n<br>\r\n<br>\r\n### 입력\r\n- 문자 1개가 입력된다.\r\n- (단, 입력되는 문자는 알파벳 대, 소문자 및 숫자를 비롯한 아스키코드로 표현할 수 있는 문자들만 입력된다.)\r\n<br>\r\n<br>\r\n### 출력\r\n- 입력된 문자를 그대로 출력한다.\r\n<br>\r\n<br>\r\n### 입력예시\r\n```java\r\np\r\n```\r\n<br>\r\n<br>\r\n### 출력예시\r\n```java\r\np\r\n```\r\n<br>\r\n<br>\r\n***\r\n<br>\r\n<br>\r\n\r\n### 오답 제출 😭\r\n<br>\r\n```java\r\nimport java.util.Scanner;\r\n\r\npublic class Main{\r\n	public static void main (String[] args) {\r\n	    Scanner scanner = new Scanner(System.in);\r\n	    \r\n	    System.out.printf(\"문자 입력 : \");\r\n	    String command = scanner.nextLine();\r\n	    System.out.println(command);\r\n	}\r\n}\r\n```\r\n<br>\r\n코드업 진행하면서 처음 오답이였던 문제이다. \r\nscanner로 문자를 입력받고, 그 입력받은 문자를 그대로 출력하면 되는 문제였는데\r\n입력 부분에서 쓸대없이 문자 입력 이라는 입력 요청 문자를 출력해버려서\r\n출력되야하는 문자들이 아니라 문자 입력 이라는 문자가 정답으로 제출되어 버렸다.\r\n<br>\r\n***\r\n<br>\r\n### 정확한 풀이 😊\r\n<br>\r\n```java\r\nimport java.util.Scanner;\r\n\r\npublic class Main{\r\n	public static void main (String[] args) {\r\n	    Scanner scanner = new Scanner(System.in);\r\n	    \r\n	    String command = scanner.nextLine();\r\n	    System.out.println(command);\r\n	}\r\n}\r\n```\r\n<br>\r\n필요없는 코드는 제외하고, 딱 문자를 입력받은후 그대로 출력해준느 코드를 작성하였다.\r\n결과는 정확한 풀이(정풀)였다!\r\n\r\n주의사항으로는 import 를 꼭 빼먹지 말고 해주어야한다.\r\n\r\n그리고 \r\nJAVA → 클래스 이름을 반드시 Main으로 해야 채점이 가능하다 public class Main {}',0,1,5,0),(11,'2021-02-04 16:42:28','2021-02-10 10:26:15','JAVA / codeup(코드업) 1019 : [기초-입출력] 연월일 입력받아 그대로 출력하기','년, 월, 일을 입력받아 지정된 형식으로 출력하는 연습을 해보자.','## 연월일 입력받아 그대로 출력하기\r\n년, 월, 일을 입력받아 지정된 형식으로 출력하는 연습을 해보자.\r\n<br>\r\n<br>\r\n### 입력\r\n- 연, 월, 일이 \".(닷)\"으로 구분되어 입력된다.\r\n<br>\r\n<br>\r\n### 출력\r\n- 입력받은 연, 월, 일을 yyyy.mm.dd 형식으로 출력한다.\r\n- (%02d를 사용하면 2칸을 사용해 출력하는데, 한 자리 수인 경우 앞에 0을 붙여 출력한다.)\r\n<br>\r\n<br>\r\n### 입력예시\r\n```java\r\n2013.8.5\r\n```\r\n<br>\r\n<br>\r\n### 출력예시\r\n```java\r\n2013.08.05\r\n```\r\n<br>\r\n<br>\r\n***\r\n<br>\r\n<br>\r\n### 오답 제출 😭\r\n<br>\r\n```java\r\nimport java.util.Scanner;\r\n\r\npublic class Main{\r\n	public static void main (String[] args) {\r\n	    Scanner sc = new Scanner(System.in);\r\n	    \r\n	    String[] commandBits = sc.nextLine().split(\"\\\\.\");\r\n	    \r\n	    int year = Integer.parseInt(commandBits[0]);\r\n	    int month = Integer.parseInt(commandBits[1]);\r\n	    int day = Integer.parseInt(commandBits[2]);\r\n\r\n      System.out.printf(String.format(\"%d.%02d.%02d\",year,month,day));\r\n	}\r\n}\r\n```\r\n<br>\r\n입력받은 날짜들을 .을 기준으로 split 하여 각자의 연, 월, 일 로 나누어준후,\r\n\r\nInteger.parseInt 를 통해서 정수형으로 저장한다.\r\n\r\n이후 String.format을 통해서 출력을 해주려고 하였는데, 월과 일은 0으로 자릿수 채움을 해주었는데,\r\n\r\n년도의 경우 당연히 4자리 년도를 생각하여서 자릿수 채움을 해주지 않았는데, 그부분에서 오류가 난듯 하였다.\r\n<br>\r\n<br>\r\n***\r\n<br>\r\n<br>\r\n### 정확한 풀이 😊\r\n<br>\r\n```java\r\nimport java.util.Scanner;\r\n\r\npublic class Main{\r\n	public static void main (String[] args) {\r\n	    Scanner sc = new Scanner(System.in);\r\n	    \r\n	    String[] commandBits = sc.nextLine().split(\"\\\\.\");\r\n	    \r\n	    int year = Integer.parseInt(commandBits[0]);\r\n	    int month = Integer.parseInt(commandBits[1]);\r\n	    int day = Integer.parseInt(commandBits[2]);\r\n\r\n      System.out.printf(String.format(\"%04d.%02d.%02d\",year,month,day));\r\n	}\r\n}\r\n```\r\n<br>\r\n년도 부분도 0으로 자릿수 채움을 해주었더니 정확한 풀이(정풀) 이 되었다.\r\n\r\n년도는 당연히 4자리수 일거라는 안일한 생각이 오답을 부른것같다.\r\n\r\n컴퓨터 적인 사고로 문제를 들여다볼 필요가 있는 것 같다.',0,1,5,0),(12,'2021-02-08 23:43:14','2021-02-10 10:26:15','JSP / 커뮤니티 사이트 개발일지 [2회차]','JSP 커뮤니티 개발일지 / 진행현황','# JSP 커뮤니티 개발일지 / 진행현황\r\n### 2021-01-20 (수)\r\n\r\n# 완료리스트\r\n\r\n### 시스템 구조 관련\r\n- [x] 프레임워크 기초\r\n- [x] 인터셉터\r\n- [x] 인터셉터에 의해 로그인 필요로 저지당한경우, 로그인 성공시 원래 목적지로 다시 이동\r\n- [x] attr 서비스 도입\r\n- [x] tomcat7 maven plugin 이용하여 간단 배포 적용\r\n- [x] server 운영 모드일때 context path 제거 / server DB명 변경\r\n- [x] WEB 에서 바로 JSP 파일에 접근 못하도록 수정\r\n\r\n### 회원관련\r\n- [x] 로그인/로그아웃\r\n- [x] 회원가입\r\n- [x] 로그인/로그아웃 상태 관련 권한체크\r\n- [x] 비밀번호 암호화\r\n- [x] 아이디찾기\r\n- [x] 비번찾기(임시패스워드 발송)\r\n- [x] 회원정보 수정\r\n- [x] 임시비밀번호 사용시 경고 출력\r\n- [x] 비밀번호 변경후 90일 경과시 경고 출력\r\n\r\n### 게시물 관련\r\n- [x] 게시글 CRUD\r\n- [x] 게시물 수정/삭제 관련 권한체크\r\n- [x] 게시물 검색\r\n- [x] 게시물 페이징\r\n- [x] 토스트 에디터 붙이기\r\n\r\n# 당장 할일 리스트\r\n- [ ] 게시물 블라인드\r\n- [ ] 좋아요, 싫어요\r\n- [ ] 댓글\r\n- [ ] 대댓글\r\n- [ ] 댓글, ajax화\r\n- [ ] 댓글 좋아요, 싫어요\r\n\r\n# 추후 할일 리스트\r\n- [ ] 댓글멘션\r\n- [ ] 내 글에 새 댓글 알림\r\n- [ ] 내 댓글에 추가 댓글 알림\r\n- [ ] 태그\r\n- [ ] 파일업로드\r\n- [ ] 회원인증\r\n- [ ] 관리자페이지\r\n- [ ] 1:1 쪽지\r\n- [ ] 신고\r\n\r\n<br>\r\n<br>\r\n***\r\n<br>\r\n<br>\r\n### 개발 진행상황 및 구현기능 시연 동영상\r\n```youtube\r\nFHeIxsJQX-w\r\n```',0,1,2,0),(13,'2021-02-08 23:51:13','2021-02-10 10:26:14','JAVA / codeup(코드업) 1025 : [기초-입출력] 정수 1개 입력받아 나누어 출력하기','다섯 자리의 정수 1개를 입력받아 각 자리별로 나누어 출력한다.','## 정수 1개 입력받아 나누어 출력하기\r\n다섯 자리의 정수 1개를 입력받아 각 자리별로 나누어 출력한다.\r\n\r\n참고\r\n```c\r\nscanf(\"%1d%1d%1d%1d%1d\", &a, &b, &c, &d, &e);\r\n```\r\n를 사용하면 1개의 숫자로 각각 구분되어 저장된다.\r\n\r\n예시\r\n읽어들인 값을 적당히 바꿔 출력하기 위해서\r\n```c\r\nprintf(\"[%d]\", a*10000);\r\n```\r\n과 같은 방법도 가능하다.\r\n<br>\r\n<br>\r\n### 입력\r\n- 다섯 자리로 이루어진 1개의 정수를 입력받는다.\r\n- (단, 10,000 <= 입력받는 수 <= 99,999 )\r\n<br>\r\n<br>\r\n### 출력\r\n- 각 자리의 숫자를 분리해 한 줄에 하나씩 [ ]속에 넣어 출력한다.\r\n<br>\r\n<br>\r\n### 입력예시\r\n```java\r\n75254\r\n```\r\n<br>\r\n<br>\r\n### 출력예시\r\n```java\r\n[70000]\r\n[5000]\r\n[200]\r\n[50]\r\n[4]\r\n```\r\n<br>\r\n<br>\r\n***\r\n<br>\r\n<br>\r\n### 오답 제출 ????\r\n<br>\r\n```java\r\nimport java.util.Scanner;\r\n\r\npublic class Main {\r\n\r\n	public static void main(String[] args) {\r\n		Scanner sc = new Scanner(System.in);\r\n\r\n		String[] cmd = sc.nextLine().split(\"\");\r\n\r\n		System.out.println(Integer.parseInt(cmd[0]) * 10000);\r\n		System.out.println(Integer.parseInt(cmd[1]) * 1000);\r\n		System.out.println(Integer.parseInt(cmd[2]) * 100);\r\n		System.out.println(Integer.parseInt(cmd[3]) * 10);\r\n		System.out.println(Integer.parseInt(cmd[4]) * 1);\r\n\r\n		sc.close();\r\n	}\r\n\r\n}\r\n```\r\n<br>\r\n입력받은 숫자를 문자로 입력받아서 각 한자리씩 split 하여 배열에 저장했다.\r\n\r\nInteger.parseInt 를 통해서 정수형으로 자릿수에 맞춰 숫자를 곱해준후 출력을 하였으나,\r\n\r\n출력시에 [] 대괄호 안에 출력이 되어야하는데 그부분을 빼먹고 출력을 해버렸다.\r\n\r\n지금은 간단한 코드업 문제에서 실수가 있었지만, \r\n\r\n추후 실무에 가게 된다면 클라이언트의 요구에 대해 이런 사소한 실수도 없어야 하기에,\r\n\r\n다음부터는 출력 예시에 맞추어 꼭 맞춰 출력하는 연습을 해야겠다.\r\n<br>\r\n<br>\r\n***\r\n<br>\r\n<br>\r\n### 정확한 풀이 ????\r\n<br>\r\n```java\r\nimport java.util.Scanner;\r\n\r\npublic class Main {\r\n\r\n	public static void main(String[] args) {\r\n		Scanner sc = new Scanner(System.in);\r\n\r\n		String[] cmd = sc.nextLine().split(\"\");\r\n\r\n		System.out.println(\"[\"+Integer.parseInt(cmd[0]) * 10000+\"]\");\r\n		System.out.println(\"[\"+Integer.parseInt(cmd[1]) * 1000+\"]\");\r\n		System.out.println(\"[\"+Integer.parseInt(cmd[2]) * 100+\"]\");\r\n		System.out.println(\"[\"+Integer.parseInt(cmd[3]) * 10+\"]\");\r\n		System.out.println(\"[\"+Integer.parseInt(cmd[4]) * 1+\"]\");\r\n\r\n		sc.close();\r\n	}\r\n\r\n}\r\n```\r\n<br>\r\n오답 코드에서 [] 대괄호를 추가하여 출력 -> 정확한 풀이',0,1,5,0);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articleReply`
--

DROP TABLE IF EXISTS `articleReply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articleReply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `memberId` int(10) NOT NULL,
  `articleId` int(10) NOT NULL,
  `reply` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articleReply`
--

LOCK TABLES `articleReply` WRITE;
/*!40000 ALTER TABLE `articleReply` DISABLE KEYS */;
/*!40000 ALTER TABLE `articleReply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `name` char(50) NOT NULL,
  `code` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'2020-12-17 17:38:22','2020-12-17 17:38:22','공지사항','notice'),(2,'2021-01-20 21:47:01','2021-01-20 21:47:03','JSP','jsp'),(5,'2021-02-04 13:22:39','2021-02-04 13:22:39','CODE-UP','codeup');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ga4DataPagePath`
--

DROP TABLE IF EXISTS `ga4DataPagePath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ga4DataPagePath` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `pagePath` char(100) NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pagePath` (`pagePath`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ga4DataPagePath`
--

LOCK TABLES `ga4DataPagePath` WRITE;
/*!40000 ALTER TABLE `ga4DataPagePath` DISABLE KEYS */;
INSERT INTO `ga4DataPagePath` VALUES (41,'2021-01-06 16:23:23','2021-01-06 16:23:23','/',91),(42,'2021-01-06 16:23:23','2021-01-06 16:23:23','/article_list_it_1.html',24),(43,'2021-01-06 16:23:23','2021-01-06 16:23:23','/article_list_free_1.html',22),(44,'2021-01-06 16:23:23','2021-01-06 16:23:23','/article_list_notice_1.html',22),(45,'2021-01-06 16:23:23','2021-01-06 16:23:23','/index.html',18),(46,'2021-01-06 16:23:23','2021-01-06 16:23:23','/article_detail_1.html',16),(47,'2021-01-06 16:23:23','2021-01-06 16:23:23','/article_all_1.html',13),(48,'2021-01-06 16:23:23','2021-01-06 16:23:23','/article_detail_2.html',13),(49,'2021-01-06 16:23:23','2021-01-06 16:23:23','/statistics.html',13),(50,'2021-01-06 16:23:23','2021-01-06 16:23:23','/article_detail_4.html',10);
/*!40000 ALTER TABLE `ga4DataPagePath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `loginId` varchar(100) NOT NULL,
  `loginPw` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'2020-12-17 17:38:24','admin','admin','최형석');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommand`
--

DROP TABLE IF EXISTS `recommand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `memberId` int(10) NOT NULL,
  `articleId` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommand`
--

LOCK TABLES `recommand` WRITE;
/*!40000 ALTER TABLE `recommand` DISABLE KEYS */;
/*!40000 ALTER TABLE `recommand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `relTypeCode` char(20) NOT NULL,
  `relId` int(10) unsigned NOT NULL,
  `body` char(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `relTypeCode_2` (`relTypeCode`,`relId`,`body`),
  KEY `relTypeCode` (`relTypeCode`,`body`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'2021-01-16 14:35:18','2021-01-16 14:35:18','article',1,'JAVA'),(2,'2021-01-16 14:35:18','2021-01-16 14:35:18','article',1,'SQL'),(3,'2021-01-16 14:35:18','2021-01-16 14:35:18','article',1,'HTML');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-10 10:29:29
