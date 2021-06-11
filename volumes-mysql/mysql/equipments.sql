-- MySQL dump 10.13  Distrib 8.0.24, for Linux (x86_64)
--
-- Host: localhost    Database: equipments
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_equipments_device`
--

DROP TABLE IF EXISTS `app_equipments_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_equipments_device` (
  `device_id` int NOT NULL AUTO_INCREMENT,
  `purchase_date` date NOT NULL,
  `category` varchar(20) NOT NULL,
  `amount` int NOT NULL,
  `spec` longtext NOT NULL,
  `is_assets` varchar(20) NOT NULL,
  `etc` longtext NOT NULL,
  `sort` varchar(20) NOT NULL,
  PRIMARY KEY (`device_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_equipments_device`
--

LOCK TABLES `app_equipments_device` WRITE;
/*!40000 ALTER TABLE `app_equipments_device` DISABLE KEYS */;
INSERT INTO `app_equipments_device` VALUES (19,'2020-10-16','노트북',2,'CPU : AMD Ryzen 7 4800H with Radeon Graphics 2.90GHz / RAM : 32GB / HDD : 1TB / GPU : GTX1660','자산 외','','asus'),(20,'2020-10-16','모니터',3,'32인치','자산 외','','viewsync'),(21,'2020-10-29','노트북',3,'CPU : AMD Ryzen(TM) 7 4700U / RAM : 16GB / HDD : 512GB / GPU : AMD Radeon(TM) Graphics','자산 외','','ultra'),(22,'2020-10-29','모니터',2,'32인치','자산 외','','viewsync'),(23,'2020-10-29','키보드',3,'기계식','자산 외','','abko'),(24,'2020-10-29','기타',1,'next','자산 외','','도킹스테이션'),(25,'2020-12-03','모니터',3,'32인치','자산 외','','viewsync'),(26,'2020-12-21','키보드',5,'','자산 외','마우스, 키보드 세트','logitech'),(27,'2020-12-21','마우스',5,'','자산 외','마우스, 키보드 세트','logitech'),(28,'2021-01-19','노트북',3,'CPU : i5-1035G7 / RAM : 16GB / SSD : 256GB / GPU : Intel(R) Iris(R) Plus Graphics','자산 외','','gram'),(29,'2021-01-19','노트북',4,'CPU : i7-10750H  /RAM : 16GB / SSD : 500GB /GPU : NVIDIA GeForce GTX 1650 Ti','자산 외','','hansung'),(30,'2021-01-19','사무실가전',2,'whinix','자산 외','','공기청정기'),(31,'2020-12-30','외장저장장치',9,'마이크론 Crucial X8 Portable SSD 대원CTS 500GB','자산 외','','ssd'),(32,'2020-12-30','음향장비',1,'Creative PEBBLE V3','자산 외','','스피커'),(33,'2021-01-12','네트워크장비',1,'ASUS  RT-AX86U 유무선공유기','자산 외','','공유기'),(34,'2021-04-08','네트워크장비',1,'ASUS  RT-AX56U 유무선공유기','자산 외','','공유기'),(35,'2021-04-08','네트워크장비',1,'EFM ipTIME SG 16M-mini 스위치허브','자산 외','','스위치허브'),(36,'2021-04-08','키보드',4,'','자산 외','키보드, 마우스 세트','logitech'),(37,'2021-04-08','마우스',4,'','자산 외','키보드, 마우스 세트','logitech'),(38,'2020-06-01','네트워크장비',1,'CISCO SG220-26 26-Port Gigabit Smart Switch','자산 외','510호 사무실 할당','스위치허브'),(39,'2020-06-01','모니터',3,'24인치','렌탈','본사 렌탈 / 고장 3개','samsung'),(40,'2020-06-01','키보드',12,'','렌탈','본사렌탈 / 사용불편 3개','logitech'),(41,'2020-06-01','마우스',12,'','렌탈','본사렌탈 / 사용불편 3개','logitech'),(42,'2020-06-01','모니터',11,'24인치','렌탈','본사렌탈','lg'),(43,'2020-06-01','노트북',2,'CPU : Intel® Core™ i5-8265U CPU @ 1.60GHz 1.80 GHz / RAM : 8GB / SSD : 256GB / GPU : Intel® UHD Graphics 620','렌탈','본사렌탈','gram'),(44,'2020-06-01','노트북',5,'CPU : Intel® Core™ i5-8265U CPU @ 1.60GHz 1.80 GHz / RAM : 16GB / SSD : 512GB / GPU : Intel® UHD Graphics 620','렌탈','본사렌탈','gram'),(45,'2020-10-26','모니터',3,'24인치','렌탈','12개에서 9개 반납 / 인공지능학습용데이터구축사업 2020 (폐암예후예측) / 렌탈사용기간: 2021.1.27 ~ 2021.2.28 ( 노트북*1, 모니터*1 안가져감) / 2021.1.27 ~ 2021.6.30 ( 노트북*2, 모니터*2 )','samsung'),(46,'2020-10-26','노트북',3,'CPU : Intel® Core™ i5-6200U CPU @ 2.30GHz 2.40 GHz / RAM : 8GB / SSD : 128GB / GPU : Intel® UHD Graphics 520','렌탈','12개에서 9개 반납 / 인공지능학습용데이터구축사업 2020 (폐암예후예측) / 렌탈사용기간: 2021.1.27 ~ 2021.2.28 ( 노트북*1, 모니터*1 안가져감) / 2021.1.27 ~ 2021.6.30 ( 노트북*2, 모니터*2 )','samsung'),(47,'2020-10-26','액세서리',3,'','렌탈','12개에서 9개 반납 / 인공지능학습용데이터구축사업 2020 (폐암예후예측) / 렌탈사용기간: 2021.1.27 ~ 2021.2.28 ( 노트북*1, 모니터*1 안가져감) / 2021.1.27 ~ 2021.6.30 ( 노트북*2, 모니터*2 )','samsung노트북가방'),(48,'2020-10-26','기타',3,'','렌탈','12개에서 9개 반납 / 인공지능학습용데이터구축사업 2020 (폐암예후예측) / 렌탈사용기간: 2021.1.27 ~ 2021.2.28 ( 노트북*1, 모니터*1 안가져감) / 2021.1.27 ~ 2021.6.30 ( 노트북*2, 모니터*2 )','hdmi'),(49,'2020-10-29','데스크톱',1,'CPU : 인텔 코어i5-10세대 10400 (코멧레이크S) / RAM : 16GB / HDD : 500GB / SSD : 240GB','자산','나주사무소 정성효 수석 외부망용','조립식'),(50,'2020-10-29','데스크톱',1,'CPU : 인텔 코어i5-10세대 10400 (코멧레이크S) / RAM : 16GB (*2) / HDD : 500GB / SSD : 240GB','자산','나주사무소 정성효 수석 내부망용','조립식'),(51,'2020-10-29','모니터',2,'24인치','자산','나주사무소 정성효 수석 내외부망용','samsung'),(52,'2020-10-29','키보드',2,'','자산','나주사무소 정성효 수석 내외부망용','logitech'),(53,'2020-10-29','마우스',2,'','자산','나주사무소 정성효 수석 내외부망용','logitech'),(54,'2020-10-16','데스크톱',4,'CPU : Intel® Core™ i9-10900K CPU @ 3.70GHz / RAM : 128GB / HDD : 10000.8GB (*3) / SSD : 1000.2GB / GPU : RTX 3090','자산','bts / lovelyz / twice / ai-center-1 / 인공지능학습용데이터구축사업 2020 (폐암예후예측)','조립식'),(57,'2020-10-29','외장저장장치',6,'Seagate HDD 2TB','자산','','hdd'),(58,'2020-10-29','외장저장장치',3,'UltraStar HDD 10TB','자산','','hdd'),(59,'2020-12-03','데스크톱',2,'CPU : AMD 라이젠9-4세대 5900X (버미어) (정품) / RAM : 128GB / HDD 10TB (*2) / SSD 1TB / GPU : RTX 3090','자산','인공지능산업융합사업단 시제품제작지원사업 2020 GPU서버','조립식'),(60,'2020-12-21','데스크톱',1,'CPU : 인텔 코어i5-9세대 9500F (커피레이크-R) (정품) / RAM : 16GB / SSD : 250GB / GPU : MSI 지포스 GTX1050 Ti OC 4GB 스톰','자산','인공지능산업융합사업단 시제품제작지원사업2020 운영PC','조립식'),(61,'2020-12-21','음향장비',2,'컴소닉 필라 방송용 스탠드 마이크 CM-9010 USB','자산','','지향성마이크'),(62,'2021-03-02','노트북',3,'CPU : AMD Ryzen 7 4800H with Radeon Graphics 2.90 GHz / RAM : 16GB / SSD :  512GB / GPU : AMD Radeon(TM) Graphics','자산','','hansung'),(63,'2020-08-20','사무실가전',1,'복합기 (DC AC 2263)','렌탈','렌탈 주식회사 성지시스템','복합기'),(64,'2021-03-02','사무실가전',1,'','','2020년 3월 어간에 510호 들어왔음','냉장고'),(65,'2020-11-05','사무실가전',2,'신도테크노 TS-2030CD','자산','㈜엔코퍼레이션 ₩ 770,000','파쇄기'),(66,'2020-12-03','기타',1,'HS-Kiosk-Pivot / 55인치 적외선 터치모니터 / 가로, 세로 회전형(피벗)','자산','하단 PC부 일반 데스크탑 수납가능하게 수정 / PC는 별도 / 2,150,000','키오스크'),(68,'2021-02-02','모니터',3,'32인치','자산 외','','viewsonic'),(69,'2021-04-21','액세서리',7,'','자산 외','','gram노트북가방'),(70,'2021-04-21','마우스',5,'','자산 외','','gram노트북용'),(71,'2021-04-22','마우스',2,'','자산 외','','micronics'),(72,'2021-04-22','외장저장장치',1,'Seagate HDD 1TB','자산 외','','hdd'),(73,'2020-10-16','키보드',4,'','자산','마우스, 키보드 세트','logitech'),(74,'2020-10-16','마우스',4,'','자산','마우스, 키보드 세트','logitech'),(75,'2020-06-01','네트워크장비',1,'iptime 라우터(JH)','자산 외','iplex에서 할당','공유기');
/*!40000 ALTER TABLE `app_equipments_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_equipments_usage`
--

DROP TABLE IF EXISTS `app_equipments_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_equipments_usage` (
  `usage_id` int NOT NULL AUTO_INCREMENT,
  `updated_at` datetime(6) NOT NULL,
  `device_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`usage_id`),
  KEY `app_equipments_usage_device_id_788e0033_fk_app_equip` (`device_id`),
  KEY `app_equipments_usage_user_id_6ea68ada_fk_app_equip` (`user_id`),
  CONSTRAINT `app_equipments_usage_device_id_788e0033_fk_app_equip` FOREIGN KEY (`device_id`) REFERENCES `app_equipments_device` (`device_id`),
  CONSTRAINT `app_equipments_usage_user_id_6ea68ada_fk_app_equip` FOREIGN KEY (`user_id`) REFERENCES `app_equipments_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_equipments_usage`
--

LOCK TABLES `app_equipments_usage` WRITE;
/*!40000 ALTER TABLE `app_equipments_usage` DISABLE KEYS */;
INSERT INTO `app_equipments_usage` VALUES (18,'2021-04-21 14:26:10.303204',23,3),(19,'2021-04-21 14:26:27.576428',41,3),(21,'2021-04-21 14:27:22.729750',19,6),(22,'2021-04-21 14:30:26.694229',59,6),(23,'2021-04-21 14:33:16.676127',20,6),(24,'2021-04-21 14:33:24.333877',20,6),(25,'2021-04-21 14:33:34.680236',23,6),(26,'2021-04-21 14:33:57.453107',58,6),(27,'2021-04-21 14:34:05.567905',58,6),(28,'2021-04-21 14:35:58.069632',69,6),(30,'2021-04-21 14:36:53.807011',19,8),(31,'2021-04-21 14:37:04.259828',59,8),(32,'2021-04-21 14:37:49.327804',42,8),(33,'2021-04-21 14:38:02.094751',20,8),(36,'2021-04-21 14:38:33.624767',40,8),(37,'2021-04-21 14:38:48.810559',57,8),(38,'2021-04-21 14:38:54.445526',57,8),(39,'2021-04-21 14:38:59.657583',57,8),(40,'2021-04-21 14:39:07.925042',24,8),(41,'2021-04-21 14:39:22.530808',58,8),(43,'2021-04-21 14:40:24.332726',21,4),(45,'2021-04-21 14:41:09.418801',57,4),(46,'2021-04-21 14:42:57.863939',70,4),(48,'2021-04-21 14:43:54.980656',42,5),(49,'2021-04-21 14:44:03.750355',41,5),(50,'2021-04-21 14:44:09.463923',40,5),(51,'2021-04-21 14:44:44.551786',44,12),(52,'2021-04-21 14:44:53.300332',42,12),(53,'2021-04-21 14:45:06.873221',41,12),(54,'2021-04-21 14:45:13.672436',40,12),(56,'2021-04-21 14:47:41.161502',68,11),(59,'2021-04-21 14:48:42.463104',29,9),(60,'2021-04-21 14:48:52.628842',42,9),(61,'2021-04-21 14:49:12.198091',41,9),(63,'2021-04-21 14:49:17.408422',40,9),(65,'2021-04-21 14:50:36.273151',44,10),(66,'2021-04-21 14:51:09.218057',22,10),(68,'2021-04-21 14:51:33.752697',40,10),(70,'2021-04-21 14:52:42.947052',41,10),(71,'2021-04-21 14:53:04.347166',70,10),(72,'2021-04-21 15:07:36.482902',69,10),(73,'2021-04-21 15:12:58.294721',28,14),(74,'2021-04-21 15:13:05.931210',42,14),(78,'2021-04-21 15:20:40.437431',72,13),(85,'2021-04-21 15:36:33.564493',54,15),(86,'2021-04-21 15:36:39.566957',54,15),(87,'2021-04-21 15:36:45.108487',54,15),(88,'2021-04-21 15:36:50.599062',54,15),(90,'2021-04-21 15:37:14.861252',39,15),(91,'2021-04-21 15:38:05.397450',39,15),(92,'2021-04-21 15:38:18.060471',39,15),(95,'2021-04-21 15:39:49.752691',31,15),(96,'2021-04-21 15:39:57.425692',31,15),(97,'2021-04-21 15:40:04.419362',31,15),(98,'2021-04-21 15:40:10.311270',31,15),(99,'2021-04-21 15:40:15.774052',31,15),(100,'2021-04-21 15:40:21.602131',31,15),(101,'2021-04-21 15:40:27.521221',31,15),(102,'2021-04-21 15:40:33.204202',31,15),(103,'2021-04-21 15:40:33.842476',31,15),(104,'2021-04-21 15:41:01.936314',61,15),(105,'2021-04-21 15:41:13.248255',32,15),(106,'2021-04-21 15:41:48.258630',46,20),(107,'2021-04-21 15:41:54.065262',46,20),(108,'2021-04-21 15:41:59.447504',46,20),(109,'2021-04-21 15:42:26.651876',47,20),(110,'2021-04-21 15:42:31.999671',47,20),(111,'2021-04-21 15:42:37.476217',47,20),(112,'2021-04-21 15:42:44.456879',48,20),(113,'2021-04-21 15:42:50.185198',48,20),(114,'2021-04-21 15:42:54.839106',48,20),(115,'2021-04-21 15:44:05.755606',42,37),(118,'2021-04-21 15:45:33.354793',45,36),(120,'2021-04-21 15:50:44.093083',40,36),(122,'2021-04-21 15:55:57.654705',41,36),(127,'2021-04-21 15:59:18.435213',21,29),(128,'2021-04-21 15:59:31.190547',42,29),(129,'2021-04-21 15:59:39.559541',41,29),(130,'2021-04-21 15:59:44.945933',40,29),(132,'2021-04-21 16:00:13.867717',69,29),(133,'2021-04-21 16:00:40.408965',29,30),(134,'2021-04-21 16:01:00.018022',29,28),(135,'2021-04-21 16:01:25.879967',42,30),(136,'2021-04-21 16:01:34.791109',41,30),(137,'2021-04-21 16:01:39.771213',40,30),(138,'2021-04-21 16:02:03.800061',68,28),(141,'2021-04-21 16:02:34.528119',69,28),(144,'2021-04-21 16:04:07.526060',44,7),(145,'2021-04-21 16:04:21.381809',25,7),(146,'2021-04-21 16:04:37.409963',41,7),(147,'2021-04-21 16:04:42.862059',40,7),(148,'2021-04-21 16:05:08.942014',44,27),(149,'2021-04-21 16:05:22.231525',25,27),(154,'2021-04-21 16:15:01.355576',41,8),(157,'2021-04-21 16:15:48.421626',27,15),(158,'2021-04-21 16:15:54.449398',26,15),(159,'2021-04-21 16:16:35.890624',62,23),(160,'2021-04-21 16:16:44.372177',42,23),(161,'2021-04-21 16:16:49.667586',27,23),(163,'2021-04-21 16:17:02.038537',57,23),(164,'2021-04-21 16:17:07.213750',57,23),(165,'2021-04-21 16:17:22.593006',43,24),(166,'2021-04-21 16:17:30.386879',45,24),(167,'2021-04-21 16:17:42.437767',70,24),(168,'2021-04-21 16:18:01.507964',43,25),(169,'2021-04-21 16:18:09.422477',45,25),(170,'2021-04-21 16:18:56.995568',70,25),(171,'2021-04-21 16:19:17.416652',62,26),(172,'2021-04-21 16:19:27.876434',25,26),(174,'2021-04-21 16:20:01.274143',71,26),(175,'2021-04-21 16:20:10.398598',36,26),(176,'2021-04-21 16:20:45.791782',69,26),(177,'2021-04-21 16:21:36.353124',21,33),(178,'2021-04-21 16:21:47.051383',49,33),(179,'2021-04-21 16:21:52.436755',50,33),(180,'2021-04-21 16:22:05.159004',53,33),(181,'2021-04-21 16:22:09.844288',53,33),(182,'2021-04-21 16:22:14.129133',52,33),(183,'2021-04-21 16:22:17.746170',52,33),(184,'2021-04-21 16:22:28.246953',51,33),(185,'2021-04-21 16:22:34.281907',51,33),(186,'2021-04-21 16:22:42.240013',69,33),(187,'2021-04-21 16:23:50.173480',66,17),(188,'2021-04-21 16:23:55.684164',60,17),(189,'2021-04-21 16:24:01.273277',37,17),(190,'2021-04-21 16:24:05.194276',36,17),(191,'2021-04-21 16:24:12.175111',61,17),(192,'2021-04-21 16:24:40.675137',64,16),(193,'2021-04-21 16:24:56.906994',30,17),(195,'2021-04-21 16:27:20.091177',63,39),(196,'2021-04-21 16:27:25.735871',65,39),(198,'2021-04-21 16:29:57.512393',38,15),(204,'2021-04-21 16:48:49.966137',68,3),(207,'2021-04-22 06:12:29.168848',36,23),(208,'2021-04-23 05:51:25.686365',65,31),(209,'2021-04-26 05:10:44.151654',28,3),(210,'2021-04-27 00:22:41.171662',75,21),(211,'2021-04-27 00:25:16.027444',33,42),(212,'2021-04-27 00:25:18.517836',34,42),(213,'2021-04-27 00:25:29.878459',35,41),(215,'2021-05-07 05:08:54.445390',22,4),(216,'2021-05-07 05:09:12.604026',42,15),(217,'2021-05-13 05:00:42.897581',73,43),(218,'2021-05-13 05:00:49.734801',74,43),(219,'2021-05-13 05:01:05.739821',30,42),(220,'2021-05-13 05:01:31.871436',74,41),(221,'2021-05-13 05:01:35.714893',73,41),(222,'2021-05-13 05:01:39.038846',42,41),(223,'2021-05-17 05:46:39.689762',23,27),(224,'2021-05-17 05:46:59.825497',71,28),(225,'2021-05-17 05:52:01.762558',37,27),(227,'2021-05-17 05:52:49.175593',74,28),(228,'2021-05-17 05:52:52.224756',26,28),(229,'2021-05-17 05:55:20.940688',70,20),(230,'2021-05-17 05:55:27.625463',69,20),(231,'2021-05-21 06:59:23.990126',28,44),(233,'2021-05-30 23:54:08.075981',62,37),(234,'2021-05-30 23:55:46.040213',44,10),(236,'2021-05-30 23:56:24.123814',29,13);
/*!40000 ALTER TABLE `app_equipments_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_equipments_user`
--

DROP TABLE IF EXISTS `app_equipments_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_equipments_user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `rank` varchar(20) NOT NULL,
  `seat` int NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `seat` (`seat`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_equipments_user`
--

LOCK TABLES `app_equipments_user` WRITE;
/*!40000 ALTER TABLE `app_equipments_user` DISABLE KEYS */;
INSERT INTO `app_equipments_user` VALUES (3,'김정태','법인장님',100),(4,'이슬아','대리',101),(5,'이서연','주임',102),(6,'신형욱','책임',103),(7,'이정민','주임',104),(8,'유연수','주임',105),(9,'이진옥','주임',106),(10,'노동경','주임',107),(11,'정현호','주임',108),(12,'김승민','주임',109),(13,'노재민','주임',111),(14,'이형석','주임',112),(15,'서버','보관장소',150),(16,'탕비실','보관장소',151),(17,'서랍좌측','보관장소',152),(18,'서랍1','보관장소',153),(19,'서랍2','보관장소',154),(20,'서랍3','보관장소',155),(21,'바깥창고','보관장소',158),(22,'안쪽창고','보관장소',159),(23,'신충식','수석',206),(24,'장유림','주임',215),(25,'유혜지','주임',216),(26,'임하림','주임',207),(27,'김양재','주임',210),(28,'류윤정','주임',208),(29,'하새롬','주임',211),(30,'김현지','주임',209),(31,'복사기앞','보관장소',260),(32,'정수기앞','보관장소',261),(33,'정성효','수석',300),(34,'이우영','책임',301),(36,'공석110','주임',110),(37,'공석113','주임',113),(38,'파트사이','보관장소',161),(39,'출입문앞','보관장소',157),(40,'출입문좌구석','보관장소',259),(41,'우측모퉁이','보관장소',253),(42,'회의실(508)옆중앙','보관장소',254),(43,'김종빈','수석',256),(44,'법인장님 뒷책상','보관장소',117);
/*!40000 ALTER TABLE `app_equipments_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add device',7,'add_device'),(26,'Can change device',7,'change_device'),(27,'Can delete device',7,'delete_device'),(28,'Can view device',7,'view_device'),(29,'Can add user',8,'add_user'),(30,'Can change user',8,'change_user'),(31,'Can delete user',8,'delete_user'),(32,'Can view user',8,'view_user'),(33,'Can add usage',9,'add_usage'),(34,'Can change usage',9,'change_usage'),(35,'Can delete usage',9,'delete_usage'),(36,'Can view usage',9,'view_usage');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$RmUagR6jKOsy$Qgv1zL8POy/ctm5HeAlqazlFBAo24Yf5kDy6mu1OjRY=','2021-05-21 06:58:44.616906',1,'ehdrud1129','','','ehdrud1129@saltlux.com',1,1,'2021-04-16 05:39:43.585015'),(2,'pbkdf2_sha256$216000$AqFwJB9fN9Ai$9clcq3aGK44RumEsaGV/38oT8c88t9Mf8Exk+jgGfg4=','2021-04-22 06:16:21.954131',1,'admin','','','ehdrud1129@saltlux.com',1,1,'2021-04-22 06:16:10.847005');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-04-16 05:41:38.861888','1','노트북 | asus | 2020-10-16 | CPU : AMD Ryzen 7 4800H with Radeon Graphics 2.90GHz / RAM : 32GB / HDD : 1TB / GPU : GTX1660',1,'[{\"added\": {}}]',7,1),(2,'2021-04-16 05:41:42.920538','1','노트북 | asus | 2020-10-16 | CPU : AMD Ryzen 7 4800H with Radeon Graphics 2.90GHz / RAM : 32GB / HDD : 1TB / GPU : GTX1660',2,'[]',7,1),(3,'2021-04-16 05:42:25.526021','2','모니터 | viewsync | 2020-10-16 | 32인치',1,'[{\"added\": {}}]',7,1),(4,'2021-04-16 05:42:56.567399','3','노트북 | ultra | 2020-10-29 | CPU : AMD Ryzen(TM) 7 4700U / RAM : 16GB / HDD : 512GB / GPU : AMD Radeon(TM) Graphics',1,'[{\"added\": {}}]',7,1),(5,'2021-04-16 05:43:25.254194','4','모니터 | viewsync | 2020-10-29 | 32인치',1,'[{\"added\": {}}]',7,1),(6,'2021-04-16 05:43:32.838324','4','모니터 | viewsync | 2020-10-29 | 32인치',2,'[]',7,1),(7,'2021-04-16 05:43:39.587600','3','노트북 | ultra | 2020-10-29 | CPU : AMD Ryzen(TM) 7 4700U / RAM : 16GB / HDD : 512GB / GPU : AMD Radeon(TM) Graphics',2,'[]',7,1),(8,'2021-04-16 05:44:12.619733','5','키보드 | abko | 2020-10-29 | 기계식',1,'[{\"added\": {}}]',7,1),(9,'2021-04-16 05:45:09.966549','6','기타 | 도킹스테이션 | 2020-10-29 | ',1,'[{\"added\": {}}]',7,1),(10,'2021-04-16 05:45:43.993097','7','모니터 | viewsync | 2020-12-03 | 32인치',1,'[{\"added\": {}}]',7,1),(11,'2021-04-16 05:47:31.576689','8','키보드 | logitech | 2020-12-21 | ',1,'[{\"added\": {}}]',7,1),(12,'2021-04-16 05:48:13.409080','9','마우스 | logitech | 2020-12-21 | ',1,'[{\"added\": {}}]',7,1),(13,'2021-04-16 05:49:05.380972','10','노트북 | gram | 2021-01-19 | CPU : i5-1035G7 / RAM : 16GB / SSD : 256GB / GPU : Intel(R) Iris(R) Plus Graphics',1,'[{\"added\": {}}]',7,1),(14,'2021-04-16 05:49:34.715627','11','노트북 | hansung | 2021-01-19 | CPU : i7-10750H  /RAM : 16GB / SSD : 500GB /GPU : NVIDIA GeForce GTX 1650 Ti',1,'[{\"added\": {}}]',7,1),(15,'2021-04-16 05:52:52.557105','12','사무실가전 | 공기청정기 | 2021-01-19 | whinix',1,'[{\"added\": {}}]',7,1),(16,'2021-04-16 05:54:18.833021','13','외장저장장치 | micron | 2020-12-30 | 마이크론 Crucial X8 Portable SSD 대원CTS 500GB',1,'[{\"added\": {}}]',7,1),(17,'2021-04-16 05:54:54.545444','14','음향장비 | 스피커 | 2020-12-30 | Creative PEBBLE V3',1,'[{\"added\": {}}]',7,1),(18,'2021-04-16 06:01:39.077399','13','외장저장장치 | ssd | 2020-12-30 | 마이크론 Crucial X8 Portable SSD 대원CTS 500GB',2,'[{\"changed\": {\"fields\": [\"Brand\"]}}]',7,1),(19,'2021-04-16 06:03:41.153190','1','1 | 김정태',1,'[{\"added\": {}}]',8,1),(20,'2021-04-16 06:03:48.979514','2','3 | 신형욱',1,'[{\"added\": {}}]',8,1),(21,'2021-04-16 06:26:41.423406','15','네트워크장비 | asus | 2021-04-16 | ertjss',1,'[{\"added\": {}}]',7,1),(22,'2021-04-16 06:26:48.974636','6','기타 |  | 2020-10-29 | ',3,'',7,1),(23,'2021-04-16 06:26:54.410633','15','네트워크장비 | asus | 2021-04-16 | ertjss',3,'',7,1),(24,'2021-04-16 06:27:03.008991','1','노트북 |  | 2020-10-16 | CPU : AMD Ryzen 7 4800H with Radeon Graphics 2.90GHz / RAM : 32GB / HDD : 1TB / GPU : GTX1660',3,'',7,1),(25,'2021-04-16 06:27:07.310420','3','노트북 |  | 2020-10-29 | CPU : AMD Ryzen(TM) 7 4700U / RAM : 16GB / HDD : 512GB / GPU : AMD Radeon(TM) Graphics',3,'',7,1),(26,'2021-04-16 06:27:07.313930','11','노트북 |  | 2021-01-19 | CPU : i7-10750H  /RAM : 16GB / SSD : 500GB /GPU : NVIDIA GeForce GTX 1650 Ti',3,'',7,1),(27,'2021-04-16 06:27:07.316926','10','노트북 |  | 2021-01-19 | CPU : i5-1035G7 / RAM : 16GB / SSD : 256GB / GPU : Intel(R) Iris(R) Plus Graphics',3,'',7,1),(28,'2021-04-16 06:27:07.319144','9','마우스 |  | 2020-12-21 | ',3,'',7,1),(29,'2021-04-16 06:27:07.321845','2','모니터 |  | 2020-10-16 | 32인치',3,'',7,1),(30,'2021-04-16 06:27:07.323936','4','모니터 |  | 2020-10-29 | 32인치',3,'',7,1),(31,'2021-04-16 06:27:07.326036','7','모니터 |  | 2020-12-03 | 32인치',3,'',7,1),(32,'2021-04-16 06:27:07.328073','12','사무실가전 |  | 2021-01-19 | whinix',3,'',7,1),(33,'2021-04-16 06:27:07.330159','13','외장저장장치 |  | 2020-12-30 | 마이크론 Crucial X8 Portable SSD 대원CTS 500GB',3,'',7,1),(34,'2021-04-16 06:27:07.332118','14','음향장비 |  | 2020-12-30 | Creative PEBBLE V3',3,'',7,1),(35,'2021-04-16 06:27:17.680147','16','데스크톱 | hp | 2021-04-16 | redhresjhesjresj',1,'[{\"added\": {}}]',7,1),(36,'2021-04-16 06:27:44.898348','16','데스크톱 | hp | 2021-04-16 | redhresjhesjresj',3,'',7,1),(37,'2021-04-16 06:32:00.929223','18','데스크톱 | asus | 2021-04-16 | sghsh',1,'[{\"added\": {}}]',7,1),(38,'2021-04-16 06:39:41.518813','18','데스크톱 | asus | 2021-04-16 | sghsh',3,'',7,1),(39,'2021-04-16 06:40:16.899803','19','노트북 | asus | 2020-10-16 | CPU : AMD Ryzen 7 4800H with Radeon Graphics 2.90GHz / RAM : 32GB / HDD : 1TB / GPU : GTX1660',1,'[{\"added\": {}}]',7,1),(40,'2021-04-16 06:40:52.354110','20','모니터 | viewsync | 2020-10-16 | 32인치',1,'[{\"added\": {}}]',7,1),(41,'2021-04-16 06:41:16.650922','21','노트북 | ultra | 2020-10-29 | CPU : AMD Ryzen(TM) 7 4700U / RAM : 16GB / HDD : 512GB / GPU : AMD Radeon(TM) Graphics',1,'[{\"added\": {}}]',7,1),(42,'2021-04-16 06:42:13.909743','22','모니터 | viewsync | 2020-10-29 | 32인치',1,'[{\"added\": {}}]',7,1),(43,'2021-04-16 06:43:06.909287','23','키보드 | abko | 2020-10-29 | 기계식',1,'[{\"added\": {}}]',7,1),(44,'2021-04-16 06:44:13.414599','24','기타 | 도킹스테이션 | 2020-10-29 | next',1,'[{\"added\": {}}]',7,1),(45,'2021-04-16 06:44:46.349604','25','모니터 | viewsync | 2020-12-03 | 32인치',1,'[{\"added\": {}}]',7,1),(46,'2021-04-16 06:45:22.165057','26','키보드 | logitech | 2020-12-21 | ',1,'[{\"added\": {}}]',7,1),(47,'2021-04-16 06:45:43.548501','27','마우스 | logitech | 2020-12-21 | ',1,'[{\"added\": {}}]',7,1),(48,'2021-04-16 06:46:47.067237','26','키보드 | logitech | 2020-12-21 | ',2,'[{\"changed\": {\"fields\": [\"Etc\"]}}]',7,1),(49,'2021-04-16 06:46:52.450031','27','마우스 | logitech | 2020-12-21 | ',2,'[{\"changed\": {\"fields\": [\"Etc\"]}}]',7,1),(50,'2021-04-16 06:47:43.148117','28','노트북 | gram | 2021-01-19 | CPU : i5-1035G7 / RAM : 16GB / SSD : 256GB / GPU : Intel(R) Iris(R) Plus Graphics',1,'[{\"added\": {}}]',7,1),(51,'2021-04-16 06:48:08.402324','29','노트북 | hansung | 2021-01-19 | CPU : i7-10750H  /RAM : 16GB / SSD : 500GB /GPU : NVIDIA GeForce GTX 1650 Ti',1,'[{\"added\": {}}]',7,1),(52,'2021-04-16 06:48:41.521054','30','사무실가전 | 공기청정기 | 2021-01-19 | whinix',1,'[{\"added\": {}}]',7,1),(53,'2021-04-16 06:49:22.184108','31','외장저장장치 | ssd | 2020-12-30 | 마이크론 Crucial X8 Portable SSD 대원CTS 500GB',1,'[{\"added\": {}}]',7,1),(54,'2021-04-16 06:49:49.639680','32','음향장비 | 스피커 | 2020-12-30 | Creative PEBBLE V3',1,'[{\"added\": {}}]',7,1),(55,'2021-04-16 06:50:31.310463','33','네트워크장비 | 공유기 | 2021-01-12 | ASUS  RT-AX86U 유무선공유기',1,'[{\"added\": {}}]',7,1),(56,'2021-04-16 06:51:08.939998','34','네트워크장비 | 공유기 | 2021-04-08 | ASUS  RT-AX56U 유무선공유기',1,'[{\"added\": {}}]',7,1),(57,'2021-04-16 06:52:09.282054','35','네트워크장비 | 스위치허브 | 2021-04-08 | EFM ipTIME SG 16M-mini 스위치허브',1,'[{\"added\": {}}]',7,1),(58,'2021-04-16 06:55:52.860760','36','키보드 | logitech | 2021-04-08 | ',1,'[{\"added\": {}}]',7,1),(59,'2021-04-16 06:56:24.702109','37','마우스 | logitech | 2021-04-08 | ',1,'[{\"added\": {}}]',7,1),(60,'2021-04-16 06:59:15.025690','38','네트워크장비 | 스위치허브 | 2020-06-01 | CISCO SG220-26 26-Port Gigabit Smart Switch',1,'[{\"added\": {}}]',7,1),(61,'2021-04-16 07:00:53.236677','39','모니터 | samsung | 2020-06-01 | 24인치',1,'[{\"added\": {}}]',7,1),(62,'2021-04-16 07:01:40.221459','40','키보드 | logitech | 2020-06-01 | ',1,'[{\"added\": {}}]',7,1),(63,'2021-04-16 07:02:03.593218','41','마우스 | logitech | 2020-06-01 | ',1,'[{\"added\": {}}]',7,1),(64,'2021-04-16 07:03:00.573999','42','모니터 | lg | 2020-06-01 | 24인치',1,'[{\"added\": {}}]',7,1),(65,'2021-04-16 07:03:43.480006','43','노트북 | gram | 2020-06-01 | CPU : Intel® Core™ i5-8265U CPU @ 1.60GHz 1.80 GHz / RAM : 8GB / SSD : 256GB / GPU : Intel® UHD Graphics 620',1,'[{\"added\": {}}]',7,1),(66,'2021-04-16 07:04:17.213248','44','노트북 | gram | 2020-06-01 | CPU : Intel® Core™ i5-8265U CPU @ 1.60GHz 1.80 GHz / RAM : 16GB / SSD : 512GB / GPU : Intel® UHD Graphics 620',1,'[{\"added\": {}}]',7,1),(67,'2021-04-16 07:12:24.795593','45','모니터 | samsung | 2020-10-26 | 24인치',1,'[{\"added\": {}}]',7,1),(68,'2021-04-16 07:13:23.026828','46','노트북 | samsung | 2020-10-26 | CPU : Intel® Core™ i5-6200U CPU @ 2.30GHz 2.40 GHz / RAM : 8GB / SSD : 128GB / GPU : Intel® UHD Graphics 520',1,'[{\"added\": {}}]',7,1),(69,'2021-04-16 07:14:00.716832','47','액세서리 | samsung노트북가방 | 2020-10-26 | ',1,'[{\"added\": {}}]',7,1),(70,'2021-04-16 07:14:31.117307','48','기타 | hdmi | 2020-10-26 | ',1,'[{\"added\": {}}]',7,1),(71,'2021-04-16 07:14:42.623187','48','기타 | hdmi | 2020-10-26 | ',2,'[{\"changed\": {\"fields\": [\"Etc\"]}}]',7,1),(72,'2021-04-16 07:27:19.963142','49','데스크톱 | 조립식 | 2020-10-29 | CPU : 인텔 코어i5-10세대 10400 (코멧레이크S) / RAM : 16GB / HDD : 500GB / SSD : 240GB',1,'[{\"added\": {}}]',7,1),(73,'2021-04-16 07:27:52.588465','50','데스크톱 | 조립식 | 2020-10-29 | CPU : 인텔 코어i5-10세대 10400 (코멧레이크S) / RAM : 16GB (*2) / HDD : 500GB / SSD : 240GB',1,'[{\"added\": {}}]',7,1),(74,'2021-04-16 07:28:24.745396','51','모니터 | samsung | 2020-10-29 | 24인치',1,'[{\"added\": {}}]',7,1),(75,'2021-04-16 07:29:00.470957','52','키보드 | logitech | 2020-10-29 | ',1,'[{\"added\": {}}]',7,1),(76,'2021-04-16 07:29:16.093585','53','마우스 | logitech | 2020-10-29 | ',1,'[{\"added\": {}}]',7,1),(77,'2021-04-16 07:30:05.886606','54','데스크톱 | 조립식 | 2020-10-16 | CPU : Intel® Core™ i9-10900K CPU @ 3.70GHz / RAM : 128GB / HDD : 10000.8GB (*3) / SSD : 1000.2GB / GPU : RTX 3090',1,'[{\"added\": {}}]',7,1),(78,'2021-04-16 07:30:42.962837','55','키보드 | logitech | 2020-10-16 | ',1,'[{\"added\": {}}]',7,1),(79,'2021-04-16 07:31:15.186478','56','마우스 | logitech | 2020-10-16 | ',1,'[{\"added\": {}}]',7,1),(80,'2021-04-16 07:32:26.944046','57','외장저장장치 | hdd | 2020-10-29 | Seagate HDD 2TB',1,'[{\"added\": {}}]',7,1),(81,'2021-04-16 07:33:08.262011','58','외장저장장치 | hdd | 2020-10-29 | UltraStar HDD 10TB',1,'[{\"added\": {}}]',7,1),(82,'2021-04-16 07:33:53.421757','59','데스크톱 | 조립식 | 2020-12-03 | CPU : AMD 라이젠9-4세대 5900X (버미어) (정품) / RAM : 128GB / HDD 10TB (*2) / SSD 1TB / GPU : RTX 3090',1,'[{\"added\": {}}]',7,1),(83,'2021-04-16 07:34:24.842825','60','데스크톱 | 조립식 | 2020-12-21 | CPU : 인텔 코어i5-9세대 9500F (커피레이크-R) (정품) / RAM : 16GB / SSD : 250GB / GPU : MSI 지포스 GTX1050 Ti OC 4GB 스톰',1,'[{\"added\": {}}]',7,1),(84,'2021-04-16 07:34:59.466729','61','음향장비 | 지향성마이크 | 2020-12-21 | 컴소닉 필라 방송용 스탠드 마이크 CM-9010 USB',1,'[{\"added\": {}}]',7,1),(85,'2021-04-16 07:35:31.063507','62','노트북 | hansung | 2021-03-02 | CPU : AMD Ryzen 7 4800H with Radeon Graphics 2.90 GHz / RAM : 16GB / SSD :  512GB / GPU : AMD Radeon(TM) Graphics',1,'[{\"added\": {}}]',7,1),(86,'2021-04-21 09:57:09.510682','10','1 | 김정태 | 노트북 | gram | 2020-06-01 | CPU : Intel® Core™ i5-8265U CPU @ 1.60GHz 1.80 GHz / RAM : 16GB / SSD : 512GB / GPU : Intel® UHD Graphics 620',3,'',9,1),(87,'2021-04-21 09:57:09.513876','12','1 | 김정태 | 노트북 | hansung | 2021-03-02 | CPU : AMD Ryzen 7 4800H with Radeon Graphics 2.90 GHz / RAM : 16GB / SSD :  512GB / GPU : AMD Radeon(TM) Graphics',3,'',9,1),(88,'2021-04-21 09:57:17.704283','1','1 | 김정태',3,'',8,1),(89,'2021-04-21 09:57:17.706657','2','3 | 신형욱',3,'',8,1),(90,'2021-04-21 09:58:19.352559','3','100 | 김정태',1,'[{\"added\": {}}]',8,1),(91,'2021-04-21 09:58:35.299952','4','101 | 이슬아',1,'[{\"added\": {}}]',8,1),(92,'2021-04-21 09:58:43.710208','5','102 | 이서연',1,'[{\"added\": {}}]',8,1),(93,'2021-04-21 09:58:57.469149','6','103 | 신형욱',1,'[{\"added\": {}}]',8,1),(94,'2021-04-21 09:59:11.712986','7','104 | 이정민',1,'[{\"added\": {}}]',8,1),(95,'2021-04-21 09:59:26.340066','8','105 | 유연수',1,'[{\"added\": {}}]',8,1),(96,'2021-04-21 09:59:36.415824','9','106 | 이진옥',1,'[{\"added\": {}}]',8,1),(97,'2021-04-21 09:59:44.505259','10','107 | 노동경',1,'[{\"added\": {}}]',8,1),(98,'2021-04-21 09:59:52.699733','11','108 | 정현호',1,'[{\"added\": {}}]',8,1),(99,'2021-04-21 10:00:00.894881','12','109 | 김승민',1,'[{\"added\": {}}]',8,1),(100,'2021-04-21 10:00:11.632085','13','111 | 노재민',1,'[{\"added\": {}}]',8,1),(101,'2021-04-21 10:00:22.343506','14','112 | 이형석',1,'[{\"added\": {}}]',8,1),(102,'2021-04-21 10:01:02.200519','15','150 | 서버',1,'[{\"added\": {}}]',8,1),(103,'2021-04-21 10:01:15.688255','16','151 | 탕비실',1,'[{\"added\": {}}]',8,1),(104,'2021-04-21 10:01:38.104155','17','152 | 서랍좌측공간',1,'[{\"added\": {}}]',8,1),(105,'2021-04-21 10:01:48.214609','17','152 | 서랍좌측',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),(106,'2021-04-21 10:02:01.774883','18','153 | 서랍1',1,'[{\"added\": {}}]',8,1),(107,'2021-04-21 10:02:15.283006','19','154 | 서랍2',1,'[{\"added\": {}}]',8,1),(108,'2021-04-21 10:02:28.019076','20','155 | 서랍3',1,'[{\"added\": {}}]',8,1),(109,'2021-04-21 10:03:15.443518','21','158 | 바깥창고',1,'[{\"added\": {}}]',8,1),(110,'2021-04-21 10:03:24.870100','22','159 | 안쪽창고',1,'[{\"added\": {}}]',8,1),(111,'2021-04-21 10:03:47.863334','23','206 | 신충식',1,'[{\"added\": {}}]',8,1),(112,'2021-04-21 10:03:57.217082','24','215 | 장유림',1,'[{\"added\": {}}]',8,1),(113,'2021-04-21 10:04:06.200150','25','216 | 유혜지',1,'[{\"added\": {}}]',8,1),(114,'2021-04-21 10:04:17.976890','26','207 | 임하림',1,'[{\"added\": {}}]',8,1),(115,'2021-04-21 10:04:29.052361','27','210 | 김양재',1,'[{\"added\": {}}]',8,1),(116,'2021-04-21 10:04:38.685879','28','208 | 류윤정',1,'[{\"added\": {}}]',8,1),(117,'2021-04-21 10:04:46.016498','29','211 | 하새롬',1,'[{\"added\": {}}]',8,1),(118,'2021-04-21 10:04:53.456214','30','209 | 김현지',1,'[{\"added\": {}}]',8,1),(119,'2021-04-21 10:05:25.050032','31','260 | 복사기앞',1,'[{\"added\": {}}]',8,1),(120,'2021-04-21 10:05:33.448140','32','261 | 정수기앞',1,'[{\"added\": {}}]',8,1),(121,'2021-04-21 10:05:54.496730','33','300 | 정성효',1,'[{\"added\": {}}]',8,1),(122,'2021-04-21 10:06:14.523093','34','301 | 이우영',1,'[{\"added\": {}}]',8,1),(123,'2021-04-21 10:07:30.483488','14','100 | 김정태 | 노트북 | gram | 2021-01-19 | CPU : i5-1035G7 / RAM : 16GB / SSD : 256GB / GPU : Intel(R) Iris(R) Plus Graphics',1,'[{\"added\": {}}]',9,1),(124,'2021-04-21 10:10:20.047523','35','1 | test',1,'[{\"added\": {}}]',8,1),(125,'2021-04-21 10:26:30.294084','35','1 | test',3,'',8,1),(126,'2021-04-21 14:12:01.316664','14','100 | 김정태 | 노트북 | gram | 2021-01-19 | CPU : i5-1035G7 / RAM : 16GB / SSD : 256GB / GPU : Intel(R) Iris(R) Plus Graphics',3,'',9,1),(127,'2021-04-21 14:12:38.513425','16','100 | 김정태 | 노트북 | gram | 2021-01-19 | CPU : i5-1035G7 / RAM : 16GB / SSD : 256GB / GPU : Intel(R) Iris(R) Plus Graphics',1,'[{\"added\": {}}]',9,1),(128,'2021-04-21 14:25:04.537384','68','모니터 | viewsonic | 2021-02-02 | 32인치',1,'[{\"added\": {}}]',7,1),(129,'2021-04-21 14:35:46.457824','69','액세서리 | gram노트북가방 | 2021-04-21 | ',1,'[{\"added\": {}}]',7,1),(130,'2021-04-21 14:42:24.472648','70','마우스 | gram노트북용 | 2021-04-21 | ',1,'[{\"added\": {}}]',7,1),(131,'2021-04-21 15:15:09.430230','71','마우스 | micronics | 2021-04-22 | ',1,'[{\"added\": {}}]',7,1),(132,'2021-04-21 15:17:18.471766','36','110 | 공석110',1,'[{\"added\": {}}]',8,1),(133,'2021-04-21 15:20:11.225916','72','외장저장장치 | hdd | 2021-04-22 | Seagate HDD1TB',1,'[{\"added\": {}}]',7,1),(134,'2021-04-21 15:20:22.898779','72','외장저장장치 | hdd | 2021-04-22 | Seagate HDD 1TB',2,'[{\"changed\": {\"fields\": [\"Spec\"]}}]',7,1),(135,'2021-04-21 15:34:25.425947','83','110 | 공석110 | 데스크톱 | 조립식 | 자산 | CPU : 인텔 코어i5-10세대 10400 (코멧레이크S) / RAM : 16GB (*2) / HDD : 500GB / SSD : 240GB',3,'',9,1),(136,'2021-04-21 15:34:25.428901','81','110 | 공석110 | 데스크톱 | 조립식 | 자산 | CPU : 인텔 코어i5-10세대 10400 (코멧레이크S) / RAM : 16GB / HDD : 500GB / SSD : 240GB',3,'',9,1),(137,'2021-04-21 15:34:25.431892','79','110 | 공석110 | 모니터 | samsung | 렌탈 | 24인치',3,'',9,1),(138,'2021-04-21 15:43:37.441326','37','113 | 113공석',1,'[{\"added\": {}}]',8,1),(139,'2021-04-21 15:43:46.865744','37','113 | 공석113',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),(140,'2021-04-21 15:53:12.054636','121','110 | 공석110 | 네트워크장비 | 공유기 | ASUS  RT-AX56U 유무선공유기 | ',3,'',9,1),(141,'2021-04-21 15:58:17.999580','126','110 | 공석110 | 모니터 | samsung | 24인치 | 12개에서 9개 반납 / 인공지능학습용데이터구축사업 2020 (폐암예후예측) / 렌탈사용기간: 2021.1.27 ~ 2021.2.28 ( 노트북*1, 모니터*1 안가져감) / 2021.1.27 ~ 2021.6.30 ( 노트북*2, 모니터*2 )',3,'',9,1),(142,'2021-04-21 15:58:18.002738','125','110 | 공석110 | 모니터 | viewsync | 32인치 | ',3,'',9,1),(143,'2021-04-21 16:10:01.678175','58','108 | 정현호 | 키보드 | logitech |  | bts / lovelyz / twice / ai-center-1',3,'',9,1),(144,'2021-04-21 16:12:05.515479','142','150 | 서버 | 마우스 | logitech |  | bts / lovelyz / twice / ai-center-1',3,'',9,1),(145,'2021-04-21 16:12:05.518474','143','150 | 서버 | 키보드 | logitech |  | bts / lovelyz / twice / ai-center-1',3,'',9,1),(146,'2021-04-21 16:14:14.846454','35','105 | 유연수 | 마우스 | logitech |  | bts / lovelyz / twice / ai-center-1',3,'',9,1),(147,'2021-04-21 16:20:34.221536','173','207 | 임하림 | 마우스 | logitech |  | 키보드, 마우스 세트',3,'',9,1),(148,'2021-04-21 16:25:50.851095','38','161 | 파트사이',1,'[{\"added\": {}}]',8,1),(149,'2021-04-21 16:26:49.542252','39','157 | 출입문앞',1,'[{\"added\": {}}]',8,1),(150,'2021-04-21 16:30:34.322124','40','259 | 출입문좌',1,'[{\"added\": {}}]',8,1),(151,'2021-04-21 16:30:49.723704','40','259 | 출입문좌구석_508',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),(152,'2021-04-21 16:31:07.417966','40','259 | 출입문좌구석',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),(153,'2021-04-27 00:24:22.295423','41','253 | 우측모퉁이',1,'[{\"added\": {}}]',8,2),(154,'2021-04-27 00:24:51.566540','42','254 | 회의실(508)옆중앙',1,'[{\"added\": {}}]',8,2),(155,'2021-04-29 00:19:25.604832','43','256 | 회의실(508)앞',1,'[{\"added\": {}}]',8,1),(156,'2021-05-13 05:00:20.292958','43','256 | 김종빈',2,'[{\"changed\": {\"fields\": [\"Name\", \"Rank\"]}}]',8,1),(157,'2021-05-21 06:59:04.555308','44','117 | 법인장님 뒷책상',1,'[{\"added\": {}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'app_equipments','device'),(9,'app_equipments','usage'),(8,'app_equipments','user'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-04-16 05:36:17.888571'),(2,'auth','0001_initial','2021-04-16 05:36:18.090032'),(3,'admin','0001_initial','2021-04-16 05:36:18.615193'),(4,'admin','0002_logentry_remove_auto_add','2021-04-16 05:36:18.724150'),(5,'admin','0003_logentry_add_action_flag_choices','2021-04-16 05:36:18.735148'),(6,'app_equipments','0001_initial','2021-04-16 05:36:18.847954'),(7,'app_equipments','0002_auto_20210331_0011','2021-04-16 05:36:18.949774'),(8,'contenttypes','0002_remove_content_type_name','2021-04-16 05:36:19.078997'),(9,'auth','0002_alter_permission_name_max_length','2021-04-16 05:36:19.137738'),(10,'auth','0003_alter_user_email_max_length','2021-04-16 05:36:19.279809'),(11,'auth','0004_alter_user_username_opts','2021-04-16 05:36:19.300439'),(12,'auth','0005_alter_user_last_login_null','2021-04-16 05:36:19.355647'),(13,'auth','0006_require_contenttypes_0002','2021-04-16 05:36:19.360667'),(14,'auth','0007_alter_validators_add_error_messages','2021-04-16 05:36:19.369664'),(15,'auth','0008_alter_user_username_max_length','2021-04-16 05:36:19.448583'),(16,'auth','0009_alter_user_last_name_max_length','2021-04-16 05:36:19.511491'),(17,'auth','0010_alter_group_name_max_length','2021-04-16 05:36:19.570616'),(18,'auth','0011_update_proxy_permissions','2021-04-16 05:36:19.583550'),(19,'auth','0012_alter_user_first_name_max_length','2021-04-16 05:36:19.647507'),(20,'sessions','0001_initial','2021-04-16 05:36:19.681820'),(21,'app_equipments','0003_auto_20210416_1451','2021-04-16 05:51:05.121365'),(22,'app_equipments','0004_auto_20210416_1500','2021-04-16 06:01:03.285995'),(23,'app_equipments','0002_auto_20210416_1526','2021-04-16 06:26:08.806933'),(24,'app_equipments','0003_auto_20210416_1530','2021-04-16 06:30:28.214623');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('4wl2huk2ouk2hju9fwy4vqb6nj0rvcxk','.eJxVjEEOwiAQRe_C2hAYKBNcuvcMDcyAVA0kpV013t2QdKHb_977h5jDvpV572mdFxZXAeLyu8VAr1QH4Geojyap1W1dohyKPGmX98bpfTvdv4MSehm1mWw0ygSmSUfQ7NAAeEQ2mB2ryTkmApVAKbSeYrCIOTqrfSZgFp8vzJQ3lQ:1lZSdR:t3v9DSi8OUpFiUWyuAZt7QwdFDQ5kwjJGEpinONM1R8','2021-05-06 06:16:21.957242'),('d9w0k9bhavcay7k0rqj43plf0e1xx9db','.eJxVjEEOwiAQRe_C2pBhCgVcuvcMZBioVA0kpV0Z765NutDtf-_9lwi0rSVsPS9hTuIslDj9bpH4kesO0p3qrUludV3mKHdFHrTLa0v5eTncv4NCvXxrjYDgHRo0jiMOaiJtNRvPKg7aAgCbgRBp9GlUCC56mxUndJnATka8P6FkNpg:1ljz7M:Xye1eLaUdWovft9phbnoyad1uk35y1nhbD37fQxi8PM','2021-06-04 06:58:44.619444'),('eedpwyy8howcugrbmxcqru9qe8au9xw6','.eJxVjEEOwiAQRe_C2pBhCgVcuvcMZBioVA0kpV0Z765NutDtf-_9lwi0rSVsPS9hTuIslDj9bpH4kesO0p3qrUludV3mKHdFHrTLa0v5eTncv4NCvXxrjYDgHRo0jiMOaiJtNRvPKg7aAgCbgRBp9GlUCC56mxUndJnATka8P6FkNpg:1lbuOA:ya8o6LugkKYiIR1kxZOnK6y7y0SReKS-yCeclcIX4g8','2021-05-13 00:18:42.524379'),('fjkp8zyj33u3ulix45if55lonlv2w1t2','.eJxVjEEOwiAQRe_C2pBhCgVcuvcMZBioVA0kpV0Z765NutDtf-_9lwi0rSVsPS9hTuIslDj9bpH4kesO0p3qrUludV3mKHdFHrTLa0v5eTncv4NCvXxrjYDgHRo0jiMOaiJtNRvPKg7aAgCbgRBp9GlUCC56mxUndJnATka8P6FkNpg:1lh3SA:tpIGMBRyWgLnG_g9OO_ZmKsVnEONgL4UHKYaJRTEMJI','2021-05-27 05:00:06.845074'),('j7cri1fn6advf6rzo6ra2ukwv8at7o2l','.eJxVjEEOwiAQRe_C2pBhCgVcuvcMZBioVA0kpV0Z765NutDtf-_9lwi0rSVsPS9hTuIslDj9bpH4kesO0p3qrUludV3mKHdFHrTLa0v5eTncv4NCvXxrjYDgHRo0jiMOaiJtNRvPKg7aAgCbgRBp9GlUCC56mxUndJnATka8P6FkNpg:1lXHD2:cYFB0b0CDodSv80GkLLR_gCJITHWudxLVsdueSVSpA0','2021-04-30 05:40:04.485575');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-04  3:18:18
