-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: centara
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Airport_transfer_service`
--

DROP TABLE IF EXISTS `Airport_transfer_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Airport_transfer_service` (
  `Arrival_time` datetime NOT NULL,
  `Transfer_location` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Vehicle` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Plate_no` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Plate_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Airport_transfer_service`
--

LOCK TABLES `Airport_transfer_service` WRITE;
/*!40000 ALTER TABLE `Airport_transfer_service` DISABLE KEYS */;
INSERT INTO `Airport_transfer_service` VALUES ('2022-11-17 08:30:00','Suvarnabhumi Airport','Sedan','กข1234'),('2021-11-29 18:15:00','Krabi International Airport','Limousine','ขข2626'),('2020-01-04 10:45:00','Don Mueang International Airport','SUV','คจ5678'),('2022-09-12 13:15:00','Phuket International Airport','Van','ฅฆ9101'),('2021-11-05 15:30:00','Chiang Mai International Airport','Limousine','งจ1212'),('2021-10-21 17:45:00','Krabi International Airport','Sedan','ฉช1414'),('2021-04-23 09:00:00','Suvarnabhumi Airport','Limousine','ทห2020'),('2021-01-25 11:15:00','Don Mueang International Airport','Sedan','ธา2222'),('2020-03-18 09:00:00','Suvarnabhumi Airport','SUV','บศ2121'),('2023-05-31 11:15:00','Don Mueang International Airport','Van','ปส3434'),('2021-11-18 13:45:00','Phuket International Airport','Limousine','พว5656'),('2022-04-18 16:00:00','Chiang Mai International Airport','Sedan','ภส7878'),('2022-03-05 18:15:00','Krabi International Airport','SUV','มล9090'),('2020-06-19 08:30:00','Suvarnabhumi Airport','Van','ยม1111'),('2020-11-12 16:00:00','Chiang Mai International Airport','Van','ยว2525'),('2019-10-11 10:45:00','Don Mueang International Airport','Limousine','รฟ1212'),('2022-05-29 13:15:00','Phuket International Airport','Sedan','ลย1414'),('2020-12-04 15:30:00','Chiang Mai International Airport','SUV','วด1616'),('2020-09-03 13:45:00','Phuket International Airport','SUV','ศษ2323'),('2022-12-20 17:45:00','Krabi International Airport','Van','สอ1818');
/*!40000 ALTER TABLE `Airport_transfer_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `B_PhoneNumbers`
--

DROP TABLE IF EXISTS `B_PhoneNumbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `B_PhoneNumbers` (
  `Branch_name` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Branch_Phonenumber` varchar(12) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`Branch_Phonenumber`),
  KEY `FK_BranchBPhone` (`Branch_name`),
  CONSTRAINT `FK_BranchBPhone` FOREIGN KEY (`Branch_name`) REFERENCES `Branch` (`Branch_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `B_PhoneNumbers`
--

LOCK TABLES `B_PhoneNumbers` WRITE;
/*!40000 ALTER TABLE `B_PhoneNumbers` DISABLE KEYS */;
INSERT INTO `B_PhoneNumbers` VALUES ('Al Hail Waves Hotel Managed By Centara','96824429300'),('Centara Anda Dhevi Resort and Spa Krabi','6675626222'),('Centara Ao Nang Beach Resort & Spa Krabi','6675815999'),('Centara Ayutthaya','6627691234'),('Centara Azure Hotel Pattaya','6633083333'),('Centara Ceysands Resort & Spa Sri Lanka','94342275073'),('Centara Chaan Talay Resort & Villas, Trat','663952156170'),('Centara Grand at Central Plaza Ladprao Bangkok','6625411234'),('Centara Grand at CentralWorld','6621001234'),('Centara Grand Beach Resort & Villas Hua Hin','6632512021'),('Centara Grand Beach Resort & Villas, Krabi','6675637789'),('Centara Grand Beach Resort Phuket','6676201234'),('Centara Grand Hotel Osaka','81666169945'),('Centara Grand Island Resort & Spa Maldives','9604009999'),('Centara Grand Mirage Beach Resort Pattaya','6638301234'),('Centara Hotel Hat Yai','6674352222'),('Centara Karon Resort Phuket','66763962008'),('Centara Kata Resort Phuket','6676370300'),('Centara Koh Chang Tropicana Resort','6639557122'),('Centara Korat','6644251234'),('Centara Mirage Beach Resort Dubai','97145229999'),('Centara Mirage Resort Mui Ne','842522222202'),('Centara Muscat Hotel Oman','96824236600'),('Centara Nova Hotel Pattaya','6638725999'),('Centara Pattaya Hotel','6638295999'),('Centara Q Resort Rayong','6638657378'),('Centara Ras Fushi Resort & Spa Maldives','9606643880'),('Centara Reserve Samui','6677230500'),('Centara Riverside Hotel Chiang Mai','6653275300'),('Centara Sonrisa Residences and Suites Sriracha','6638316888'),('Centara Ubon','6645319556'),('Centara Udon','6642343555'),('Centara Villas Phuket','6676372299'),('Centara Villas Samui','6677424020'),('Centara Watergate Pavillion Hotel Bangkok','6626251234'),('Centara West Bay Hotel & Residences Doha','97440095555'),('Centra by Centara Avenue Hotel Pattaya','6638723900'),('Centra by Centara Cha Am Beach Resort Hua Hin','66325082349'),('Centra by Centara Government Complex Hotel & Convention Centre Chaeng Watthana','6621431234'),('Centra by Centara Hotel Bangkok Phra Nakhon','6620226336'),('Centra by Centara Hotel Mae Sot','6655532601'),('Centra by Centara Maris Resort Jomtien','6638103333'),('Centra By Centara Muscat Dunes Hotel','96824397500'),('Centra by Centara Phu Pano Resort Krabi','66756078889'),('COSI Krabi Ao Nang Beach','6675819999'),('COSI Pattaya Wong Amat Beach','6638182345'),('COSI Samui Chaweng Beach','6621021232'),('Maikhao Dream Villa Resort and Spa, Centara Boutique Collection','6676371371'),('Maikhao Hotel managed by Centara','6676371388'),('ROUKH KIRI KHAO YAI','6644001300'),('Waterfront Suites Phuket by Centara','6676396767');
/*!40000 ALTER TABLE `B_PhoneNumbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Booking`
--

DROP TABLE IF EXISTS `Booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Booking` (
  `Cus_name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Citizen_ID` char(13) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Plate_no` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Cus_name`,`Citizen_ID`,`Plate_no`),
  KEY `FK_AirBook` (`Plate_no`),
  CONSTRAINT `FK_AirBook` FOREIGN KEY (`Plate_no`) REFERENCES `Airport_transfer_service` (`Plate_no`),
  CONSTRAINT `FK_CusBook1` FOREIGN KEY (`Cus_name`, `Citizen_ID`) REFERENCES `Customer` (`Cus_name`, `Citizen_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Booking`
--

LOCK TABLES `Booking` WRITE;
/*!40000 ALTER TABLE `Booking` DISABLE KEYS */;
INSERT INTO `Booking` VALUES ('Annelise Paulus','1100492727999','กข1234'),('Jaemin Weston','1182749386480','คจ5678'),('Mark Bowser','1809973622836','ฅฆ9101'),('Heinz Schloss','1728073618361','ฉช1414'),('Anney Smithson','1200973517352','ทห2020'),('Anton Jubilar','5343090036782','ธา2222'),('William Browning','1100472638299','ปส3434'),('Georgette Schlumberg','1200905628361','มล9090'),('Jisung Olenga','3101488261039','ยม1111'),('Johnny Smith','1100482638221','ลย1414'),('Gerald Robertson','1728075637599','วด1616');
/*!40000 ALTER TABLE `Booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Branch`
--

DROP TABLE IF EXISTS `Branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Branch` (
  `Branch_name` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Branch_location` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`Branch_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Branch`
--

LOCK TABLES `Branch` WRITE;
/*!40000 ALTER TABLE `Branch` DISABLE KEYS */;
INSERT INTO `Branch` VALUES ('Al Hail Waves Hotel Managed By Centara','Oman'),('Centara Anda Dhevi Resort and Spa Krabi','Thailand'),('Centara Ao Nang Beach Resort & Spa Krabi','Thailand'),('Centara Ayutthaya','Thailand'),('Centara Azure Hotel Pattaya','Thailand'),('Centara Ceysands Resort & Spa Sri Lanka','Sri Lanka'),('Centara Chaan Talay Resort & Villas, Trat','Thailand'),('Centara Grand at Central Plaza Ladprao Bangkok','Thailand'),('Centara Grand at CentralWorld','Thailand'),('Centara Grand Beach Resort & Villas Hua Hin','Thailand'),('Centara Grand Beach Resort & Villas, Krabi','Thailand'),('Centara Grand Beach Resort Phuket','Thailand'),('Centara Grand Hotel Osaka','Japan'),('Centara Grand Island Resort & Spa Maldives','Republic of Maldives'),('Centara Grand Mirage Beach Resort Pattaya','Thailand'),('Centara Hotel Hat Yai','Thailand'),('Centara Karon Resort Phuket','Thailand'),('Centara Kata Resort Phuket','Thailand'),('Centara Koh Chang Tropicana Resort','Thailand'),('Centara Korat','Thailand'),('Centara Mirage Beach Resort Dubai','UAE'),('Centara Mirage Resort Mui Ne','Vietnam'),('Centara Muscat Hotel Oman','Oman'),('Centara Nova Hotel Pattaya','Thailand'),('Centara Pattaya Hotel','Thailand'),('Centara Q Resort Rayong','Thailand'),('Centara Ras Fushi Resort & Spa Maldives','Republic of Maldives'),('Centara Reserve Samui','Thailand'),('Centara Riverside Hotel Chiang Mai','Thailand'),('Centara Sonrisa Residences and Suites Sriracha','Thailand'),('Centara Ubon','Thailand'),('Centara Udon','Thailand'),('Centara Villas Phuket','Thailand'),('Centara Villas Samui','Thailand'),('Centara Watergate Pavillion Hotel Bangkok','Thailand'),('Centara West Bay Hotel & Residences Doha','Qatar'),('Centra by Centara Avenue Hotel Pattaya','Thailand'),('Centra by Centara Cha Am Beach Resort Hua Hin','Thailand'),('Centra by Centara Government Complex Hotel & Convention Centre Chaeng Watthana','Thailand'),('Centra by Centara Hotel Bangkok Phra Nakhon','Thailand'),('Centra by Centara Hotel Mae Sot','Thailand'),('Centra by Centara Maris Resort Jomtien','Thailand'),('Centra By Centara Muscat Dunes Hotel','Oman'),('Centra by Centara Phu Pano Resort Krabi','Thailand'),('COSI Krabi Ao Nang Beach','Thailand'),('COSI Pattaya Wong Amat Beach','Thailand'),('COSI Samui Chaweng Beach','Thailand'),('Maikhao Dream Villa Resort and Spa, Centara Boutique Collection','Thailand'),('Maikhao Hotel managed by Centara','Thailand'),('ROUKH KIRI KHAO YAI','Thailand'),('Waterfront Suites Phuket by Centara','Thailand');
/*!40000 ALTER TABLE `Branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Card`
--

DROP TABLE IF EXISTS `Card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Card` (
  `Payment_ID` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CVV` char(3) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Card_holder_name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Expiry_date` date NOT NULL,
  PRIMARY KEY (`Payment_ID`),
  CONSTRAINT `FK_PayCard` FOREIGN KEY (`Payment_ID`) REFERENCES `Payment` (`Payment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Card`
--

LOCK TABLES `Card` WRITE;
/*!40000 ALTER TABLE `Card` DISABLE KEYS */;
INSERT INTO `Card` VALUES ('00048869977555','508','Annelise Paulus','2022-12-31'),('004838837475','094','Jaemin Weston','2021-01-31'),('004880285354','401','William Browning','2024-06-30'),('0048832079686','971','Chanyeol Richter','2024-07-31'),('020048047363454','696','Carlos Innugado','2022-01-31'),('03947282727383','555','Anton Jubilar','2021-10-31'),('330039494022','438','Robert Smith','2024-07-31'),('38470048656','315','Tim Warren','2024-04-30'),('393826392839273','678','Jinnipa Suh','2022-07-31'),('484638993744','291','Beam Jeong','2024-11-30'),('5885847556505','025','Johnny Smith','2022-09-30'),('746229273094736','597','Jisung Olenga','2020-08-31'),('92827293736463','562','Georgette Schlumberg','2022-09-30'),('9383629373927','231','Gerald Robertson','2021-03-31');
/*!40000 ALTER TABLE `Card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CentaraThe1Account`
--

DROP TABLE IF EXISTS `CentaraThe1Account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CentaraThe1Account` (
  `CentaraThe1_no` char(10) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Tier` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Cen_Password` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Cen_Point` int NOT NULL,
  `Register_date` date NOT NULL,
  `Promo_code` varchar(10) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`CentaraThe1_no`),
  KEY `FK_PromoCentara` (`Promo_code`),
  CONSTRAINT `FK_PromoCentara` FOREIGN KEY (`Promo_code`) REFERENCES `PromotionCode` (`Promo_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CentaraThe1Account`
--

LOCK TABLES `CentaraThe1Account` WRITE;
/*!40000 ALTER TABLE `CentaraThe1Account` DISABLE KEYS */;
INSERT INTO `CentaraThe1Account` VALUES ('0038372584','Classic','jsjf882PP',847,'2022-03-19','BIRTHDAY22'),('0075345887','Silver','ll00d8s',2234,'2020-03-28','SUMMER20'),('0077635212','Classic','dkdijed8898',223,'2022-04-30','WINTER2023'),('0078954324','Classic','ooppr334',965,'2022-08-17','WINTER22'),('0087654876','Gold','33uuyytt8',38553,'2021-02-22','BIRTHDAY21'),('0088654677','Gold','3jmd88ssd',68805,'2020-05-21','SUMMER20'),('0088798665','Gold','dddijd337',43992,'2020-09-01','SUMMER20'),('0092746538','Classic','slklxapp',127,'2020-08-05','SUMMER20'),('0098476340','Platinum Elite','smkceklm',878432,'2020-06-22','WINTER20'),('0238366211','Classic','kdidjjd99',223,'2023-08-11','BIRTHDAY23'),('0280288373','Silver','HYFw995',9675,'2021-08-25','BIRTHDAY21'),('0293088373','Silver','skfjs00s7',6708,'2020-04-22','WINTER20'),('0293713422','Silver','prrpj8338',3455,'2022-01-12','WINTER21'),('0777782714','Gold','sjsu2827',40093,'2020-04-11','SUMMER2022'),('0800968765','Platinum Elite','skj88gs0',2083342,'2016-04-14','SUMMER16'),('0809865878','Silver','osncjs9f0',9374,'2023-01-01','SUMMER23'),('0900872523','Platinum Elite','skds883k0',7464974,'2018-12-08','SUMMER18'),('0998372310','Classic','kdijj9783',234,'2023-04-19','WINTER23'),('8754900864','Platinum Elite','99djj8spep',8477322,'2012-10-16','BIRTHDAY12'),('8798622345','Gold','dljd99duus6',53434,'2019-09-13','SUMMER19'),('9283736353','Silver','hus83632',8862,'2021-03-21','BIRTHDAY22'),('9736293746','Gold','kkuuoop245',34566,'2021-09-01','BIRTHDAY21'),('9778649900','Platinum Elite','mdkkdj9937',8005345,'2015-12-16','BIRTHDAY15'),('9900765876','Gold','slknsi88s0',38429,'2020-04-11','BIRTHDAY20'),('9980967543','Silver','kskdud8hsl',9485,'2020-02-03','BIRTHDAY20');
/*!40000 ALTER TABLE `CentaraThe1Account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contain`
--

DROP TABLE IF EXISTS `Contain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Contain` (
  `Booking_no` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Branch_name` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Room_no` varchar(4) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`Booking_no`,`Branch_name`,`Room_no`),
  KEY `FK_BranchContain` (`Branch_name`),
  KEY `FK_RoomContain` (`Room_no`),
  CONSTRAINT `FK_BranchContain` FOREIGN KEY (`Branch_name`) REFERENCES `Branch` (`Branch_name`),
  CONSTRAINT `FK_ResevationContain` FOREIGN KEY (`Booking_no`) REFERENCES `Reservation` (`Booking_no`),
  CONSTRAINT `FK_RoomContain` FOREIGN KEY (`Room_no`) REFERENCES `Room` (`Room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contain`
--

LOCK TABLES `Contain` WRITE;
/*!40000 ALTER TABLE `Contain` DISABLE KEYS */;
INSERT INTO `Contain` VALUES ('CTR7607241','Centara Reserve Samui','105'),('CTR6359903','Centara Grand at Central Plaza Ladprao Bangkok','106'),('CTR2468513','Centara Grand Beach Resort & Villas Hua Hin','107'),('CTR1468359','Centara Azure Hotel Pattaya','109'),('CTR8865673','Centara Koh Chang Tropicana Resort','109'),('CTR4273859','Centra by Centara Maris Resort Jomtien','1104'),('CTR0127432','Centara Ayutthaya','1106'),('CTR6735981','Centara Villas Samui','1108'),('CTR9176645','Centara Mirage Beach Resort Dubai','1207'),('CTR6534921','Centara Villas Samui','1208'),('CTR3186835','Centara Korat','202'),('CTR0463245','Centara Grand Hotel Osaka','204'),('CTR1160043','Centra by Centara Maris Resort Jomtien','209'),('CTR7549812','Centra by Centara Phu Pano Resort Krabi','209'),('CTR1441854','Centra by Centara Hotel Mae Sot','307'),('CTR8945213','Centra By Centara Muscat Dunes Hotel','307'),('CTR5775239','Centra by Centara Hotel Mae Sot','507'),('CTR3996541','Centara Grand at Central Plaza Ladprao Bangkok','605'),('CTR5339017','Centara Ao Nang Beach Resort & Spa Krabi','606'),('CTR7601347','Centra by Centara Hotel Bangkok Phra Nakhon','702'),('CTR0983751','Centara Koh Chang Tropicana Resort','704'),('CTR2358476','Centara West Bay Hotel & Residences Doha','708'),('CTR0953881','Maikhao Hotel managed by Centara','710'),('CTR9162543','Centara Riverside Hotel Chiang Mai','808'),('CTR5003476','Centara Ras Fushi Resort & Spa Maldives','908');
/*!40000 ALTER TABLE `Contain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `Cus_name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Citizen_ID` char(13) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Email_address` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Phone_number` char(10) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Passport_no` char(11) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `CentaraThe1_no` char(10) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Payment_ID` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Birthdate` date NOT NULL,
  PRIMARY KEY (`Cus_name`,`Citizen_ID`),
  KEY `FK_CentaraAccCus` (`CentaraThe1_no`),
  KEY `FK_PayCus` (`Payment_ID`),
  CONSTRAINT `FK_CentaraAccCus` FOREIGN KEY (`CentaraThe1_no`) REFERENCES `CentaraThe1Account` (`CentaraThe1_no`),
  CONSTRAINT `FK_PayCus` FOREIGN KEY (`Payment_ID`) REFERENCES `Payment` (`Payment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES ('Annelise Paulus','1100492727999','Annenne@gmail.com','0856743326','023863053','0098476340','00048869977555','1996-01-17'),('Anney Smithson','1200973517352','Ananney@hotmail.com','0908876342','39948852','0088798665','93826290784','1995-10-16'),('Anton Jubilar','5343090036782','Aniupo@gmail.com','0945579876','948575354','0280288373','03947282727383','1998-01-25'),('Beam Jeong','3309966251828','beamJL@hotmail.com','0768341631','C03002927','9900765876','484638993744','1998-01-19'),('Carlos Innugado','1809972535188','Carr657@gmail.com','0645436687','274759533','0293088373','020048047363454','1995-05-30'),('Chanyeol Richter','1100482639246','ChanYRK@gmail.com','0312678899',NULL,'0092746538','0048832079686','1999-02-19'),('Georgee Papar','1200903615371','gogotttor@gmail.com','0873443578','C03003805','9778649900','39748290584','1989-02-04'),('Georgette Schlumberg','1200905628361','Hittle@hotmail.comr','0804327854','948572395','0900872523','92827293736463','1994-12-30'),('Gerald Robertson','1728075637599','grnalg@hotmail.com','0657885495','C03007568','8754900864','9383629373927','1999-05-21'),('Heinz Schloss','1728073618361','henntou@hotmail.com','0657894563','533827734','0077635212','928362839238','1993-01-13'),('Jaehyun Oblonski','1723840002947','Jaehyunlb@gmail.com','0548366740','C03009817','0087654876','9383628403','1996-11-09'),('Jaemin Weston','1182749386480','jamin01@hotmail.com','0808967756','948659534','0800968765','004838837475','1988-03-03'),('Janny Huizinga','1200901443526','Jannywr@gmail.com','0945489998','PA0940443','9283736353','083762539','1999-11-29'),('Jinnipa Suh','1100403837362','jinnilee@gmail.com','0345678995','987264242','0088654677','393826392839273','1987-03-22'),('Jisung Olenga','3101488261039','jissuugg@gmail.com','0536612326','C03005912','8798622345','746229273094736','1989-04-24'),('Johnny Smith','1100482638221','Jjohnny@hotmail.com','0643786542','C03098762','9980967543','5885847556505','2000-05-18'),('Juliette Brewer','1100498263919','jju154@hotmail.com','0678900745','34887321','0078954324','94857393744','1988-12-05'),('Mark Bowser','1809973622836','markmarkker@hotmail.com','0447688964','783947563','0998372310','03938485039','1987-04-11'),('Nichakul Park','1809907353827','nichak@hotmail.com','0868354683','XN0092736','0075345887','00484775939','1999-09-17'),('Robert Smith','1100463519377','rbsmth@hotmail.com','0939397650','XN0093744','9736293746','330039494022','1999-07-27'),('Sidney Wesson','1788236592834','sssidneyy@gmail.com','0995735690','C03028735','0238366211','93837203948','1994-01-02'),('Suzanna Grafton','1200903736183','seuzsuza@hotmail.com','0813586329','098263543','0293713422','03938095853','1999-12-19'),('Tim Warren','1100484630484','Timlkp@gmail.com','0896753578',NULL,'0809865878','38470048656','1999-02-07'),('Tring Robertson','1809902242071','tttring@hotmail.com','0805604824','C03008905','0777782714','8827169208','1989-03-09'),('William Browning','1100472638299','WLLIm452@hotmail.com','0987611345','475858363','0038372584','004880285354','1994-09-19');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Make`
--

DROP TABLE IF EXISTS `Make`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Make` (
  `Payment_ID` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CentaraThe1_no` char(10) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Cus_Name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Citizen_ID` char(13) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`Payment_ID`,`CentaraThe1_no`,`Cus_Name`,`Citizen_ID`),
  KEY `FK_CentaraMake` (`CentaraThe1_no`),
  KEY `FK_CusMake` (`Cus_Name`,`Citizen_ID`),
  CONSTRAINT `FK_CentaraMake` FOREIGN KEY (`CentaraThe1_no`) REFERENCES `CentaraThe1Account` (`CentaraThe1_no`),
  CONSTRAINT `FK_CusMake` FOREIGN KEY (`Cus_Name`, `Citizen_ID`) REFERENCES `Customer` (`Cus_name`, `Citizen_ID`),
  CONSTRAINT `FK_PayMake` FOREIGN KEY (`Payment_ID`) REFERENCES `Payment` (`Payment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Make`
--

LOCK TABLES `Make` WRITE;
/*!40000 ALTER TABLE `Make` DISABLE KEYS */;
INSERT INTO `Make` VALUES ('004880285354','0038372584','William Browning','1100472638299'),('00484775939','0075345887','Nichakul Park','1809907353827'),('928362839238','0077635212','Heinz Schloss','1728073618361'),('94857393744','0078954324','Juliette Brewer','1100498263919'),('9383628403','0087654876','Jaehyun Oblonski','1723840002947'),('393826392839273','0088654677','Jinnipa Suh','1100403837362'),('93826290784','0088798665','Anney Smithson','1200973517352'),('0048832079686','0092746538','Chanyeol Richter','1100482639246'),('00048869977555','0098476340','Annelise Paulus','1100492727999'),('93837203948','0238366211','Sidney Wesson','1788236592834'),('03947282727383','0280288373','Anton Jubilar','5343090036782'),('020048047363454','0293088373','Carlos Innugado','1809972535188'),('03938095853','0293713422','Suzanna Grafton','1200903736183'),('8827169208','0777782714','Tring Robertson','1809902242071'),('004838837475','0800968765','Jaemin Weston','1182749386480'),('38470048656','0809865878','Tim Warren','1100484630484'),('92827293736463','0900872523','Georgette Schlumberg','1200905628361'),('03938485039','0998372310','Mark Bowser','1809973622836'),('9383629373927','8754900864','Gerald Robertson','1728075637599'),('746229273094736','8798622345','Jisung Olenga','3101488261039'),('083762539','9283736353','Janny Huizinga','1200901443526'),('330039494022','9736293746','Robert Smith','1100463519377'),('39748290584','9778649900','Georgee Papar','1200903615371'),('484638993744','9900765876','Beam Jeong','3309966251828'),('5885847556505','9980967543','Johnny Smith','1100482638221');
/*!40000 ALTER TABLE `Make` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payment`
--

DROP TABLE IF EXISTS `Payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Payment` (
  `Payment_ID` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Amount` decimal(8,2) NOT NULL,
  `Paid_date` date NOT NULL,
  `Booking_no` char(10) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`Payment_ID`),
  KEY `FK_ReservationPayment` (`Booking_no`),
  CONSTRAINT `FK_ReservationPayment` FOREIGN KEY (`Booking_no`) REFERENCES `Reservation` (`Booking_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payment`
--

LOCK TABLES `Payment` WRITE;
/*!40000 ALTER TABLE `Payment` DISABLE KEYS */;
INSERT INTO `Payment` VALUES ('00048869977555',4370.00,'2022-07-17','CTR7549812'),('004838837475',12900.00,'2020-01-02','CTR2468513'),('00484775939',15350.00,'2021-09-27','CTR5003476'),('004880285354',14560.50,'2023-05-29','CTR8945213'),('0048832079686',15700.00,'2023-07-12','CTR6534921'),('020048047363454',3650.00,'2020-11-22','CTR4273859'),('03938095853',7680.50,'2019-12-20','CTR0953881'),('03938485039',12860.00,'2023-03-07','CTR5339017'),('03947282727383',14800.00,'2021-01-21','CTR2358476'),('083762539',5560.35,'2022-02-04','CTR8865673'),('330039494022',13500.00,'2023-07-17','CTR6735981'),('38470048656',5580.50,'2021-01-27','CTR1160043'),('393826392839273',7760.50,'2019-04-22','CTR3996541'),('39748290584',1920.50,'2021-02-24','CTR0463245'),('484638993744',9000.00,'2023-11-14','CTR6359903'),('5885847556505',7650.00,'2022-05-28','CTR7607241'),('746229273094736',4743.00,'2019-08-24','CTR1468359'),('8827169208',13367.50,'2023-12-05','CTR5775239'),('92827293736463',15800.00,'2022-03-04','CTR9162543'),('928362839238',2780.00,'2021-01-23','CTR7601347'),('93826290784',1890.00,'2022-12-16','CTR3186835'),('9383628403',11020.00,'2023-02-19','CTR0127432'),('9383629373927',3240.00,'2020-07-11','CTR0983751'),('93837203948',13500.00,'2023-01-12','CTR1441854'),('94857393744',15500.25,'2020-08-05','CTR9176645');
/*!40000 ALTER TABLE `Payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PromotionCode`
--

DROP TABLE IF EXISTS `PromotionCode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PromotionCode` (
  `Promo_code` varchar(10) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Promotion_duedate` date NOT NULL,
  PRIMARY KEY (`Promo_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PromotionCode`
--

LOCK TABLES `PromotionCode` WRITE;
/*!40000 ALTER TABLE `PromotionCode` DISABLE KEYS */;
INSERT INTO `PromotionCode` VALUES ('BIRTHDAY12','2012-12-31'),('BIRTHDAY15','2015-12-31'),('BIRTHDAY20','2020-12-31'),('BIRTHDAY21','2021-12-31'),('BIRTHDAY22','2022-12-31'),('BIRTHDAY23','2023-12-31'),('SUMMER16','2016-12-31'),('SUMMER18','2018-12-31'),('SUMMER19','2019-12-31'),('SUMMER20','2020-12-31'),('SUMMER2022','2022-12-31'),('SUMMER23','2023-12-31'),('WINTER20','2020-12-31'),('WINTER2023','2023-12-31'),('WINTER21','2021-12-31'),('WINTER22','2022-12-31'),('WINTER23','2023-12-31');
/*!40000 ALTER TABLE `PromotionCode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reservation`
--

DROP TABLE IF EXISTS `Reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reservation` (
  `Booking_no` char(10) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Destination` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Special_requests` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Reservation_date` date NOT NULL,
  `Total_num_of_customers` int NOT NULL,
  `Cus_name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Citizen_ID` char(13) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`Booking_no`),
  KEY `FK_CusRes` (`Cus_name`,`Citizen_ID`),
  CONSTRAINT `FK_CusRes` FOREIGN KEY (`Cus_name`, `Citizen_ID`) REFERENCES `Customer` (`Cus_name`, `Citizen_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reservation`
--

LOCK TABLES `Reservation` WRITE;
/*!40000 ALTER TABLE `Reservation` DISABLE KEYS */;
INSERT INTO `Reservation` VALUES ('CTR0127432','Centara Ayutthaya','City tour package','2023-02-19',4,'Jaehyun Oblonski','1723840002947'),('CTR0463245','Centara Grand Hotel Osaka','Room service','2021-02-24',2,'Georgee Papar','1200903615371'),('CTR0953881','Maikhao Hotel managed by Centara','Extra towels','2019-12-20',4,'Suzanna Grafton','1200903736183'),('CTR0983751','Centara Koh Chang Tropicana Resort','Beachfront dinner','2020-07-11',2,'Gerald Robertson','1728075637599'),('CTR1160043','Centra by Centara Maris Resort Jomtien',NULL,'2021-01-27',4,'Tim Warren','1100484630484'),('CTR1441854','Centra by Centara Hotel Mae Sot','Spa package','2023-01-12',5,'Sidney Wesson','1788236592834'),('CTR1468359','Centara Azure Hotel Pattaya','Nightclub access','2019-08-24',3,'Jisung Olenga','3101488261039'),('CTR2358476','Centara West Bay Hotel & Residences Doha','Cultural tour','2021-01-21',5,'Anton Jubilar','5343090036782'),('CTR2468513','Centara Grand Beach Resort & Villas Hua Hin','Golf package','2020-01-02',3,'Jaemin Weston','1182749386480'),('CTR3186835','Centara Korat','Wi-Fi access','2022-12-16',1,'Anney Smithson','1200973517352'),('CTR3996541','Centara Grand at Central Plaza Ladprao Bangkok','Gym access','2019-04-22',3,'Jinnipa Suh','1100403837362'),('CTR4273859','Centra by Centara Maris Resort Jomtien','Airport transfer','2020-11-22',2,'Carlos Innugado','1809972535188'),('CTR5003476','Centara Ras Fushi Resort & Spa Maldives','Diving excursion','2021-09-27',5,'Nichakul Park','1809907353827'),('CTR5339017','Centara Ao Nang Beach Resort & Spa Krabi',NULL,'2023-03-07',4,'Mark Bowser','1809973622836'),('CTR5775239','Centra by Centara Hotel Mae Sot','Complimentary breakfast','2023-12-05',5,'Tring Robertson','1809902242071'),('CTR6359903','Centara Grand at Central Plaza Ladprao Bangkok','Shopping voucher','2023-11-14',3,'Beam Jeong','3309966251828'),('CTR6534921','Centara Villas Samui','Yoga retreat','2023-07-12',6,'Chanyeol Richter','1100482639246'),('CTR6735981','Centara Villas Samui','In-room massage','2023-07-17',6,'Robert Smith','1100463519377'),('CTR7549812','Centra by Centara Phu Pano Resort Krabi','Island hopping','2022-07-17',3,'Annelise Paulus','1100492727999'),('CTR7601347','Centra by Centara Hotel Bangkok Phra Nakhon','Late checkout','2021-01-23',2,'Heinz Schloss','1728073618361'),('CTR7607241','Centara Reserve Samui','Private pool','2022-05-28',3,'Johnny Smith','1100482638221'),('CTR8865673','Centara Koh Chang Tropicana Resort','Breakfast in bed','2022-02-04',4,'Janny Huizinga','1200901443526'),('CTR8945213','Centra By Centara Muscat Dunes Hotel','Desert safari','2023-05-29',5,'William Browning','1100472638299'),('CTR9162543','Centara Riverside Hotel Chiang Mai','Cooking class','2022-03-04',6,'Georgette Schlumberg','1200905628361'),('CTR9176645','Centara Mirage Beach Resort Dubai','Early check-in','2020-08-05',5,'Juliette Brewer','1100498263919');
/*!40000 ALTER TABLE `Reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Room`
--

DROP TABLE IF EXISTS `Room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Room` (
  `Room_no` varchar(4) COLLATE utf8mb3_unicode_ci NOT NULL,
  `RoomType` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `BedType` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Price` decimal(8,2) NOT NULL,
  `Size` decimal(5,2) NOT NULL,
  `Scenery` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`Room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Room`
--

LOCK TABLES `Room` WRITE;
/*!40000 ALTER TABLE `Room` DISABLE KEYS */;
INSERT INTO `Room` VALUES ('101','Standard Room','Twin bed',1450.00,28.00,'City view'),('102','Standard Room','Single bed',1560.00,29.50,'City view'),('103','Superior Room','Twin bed',1760.00,34.00,'Garden view'),('104','Superior Room','Single bed',2070.00,34.00,'Garden view'),('105','Deluxe Room','Queen size bed',7650.00,68.00,'Garden view'),('106','Deluxe Room','King size bed',9000.00,68.00,'Garden view'),('107','Suite Room','King size bed',12900.00,72.00,'Pool Ocean view'),('108','Suite Room','King size bed',13500.00,75.00,'Pool Ocean view'),('109','Family Room','King size bed',4743.00,42.00,'City view'),('110','Family Room','King size bed',5580.00,47.00,'City view'),('1101','Standard Room','Twin bed',2000.50,28.00,'City view'),('1102','Standard Room','Single bed',2580.00,29.50,'City view'),('1103','Superior Room','Twin bed',2880.00,34.00,'Garden view'),('1104','Superior Room','Single bed',2920.00,34.00,'Garden view'),('1105','Deluxe Room','Queen size bed',8350.00,68.00,'Pool Ocean view'),('1106','Deluxe Room','King size bed',9850.00,68.00,'Garden view'),('1107','Suite Room','King size bed',13200.00,82.00,'Pool Ocean view'),('1108','Suite Room','King size bed',14000.00,84.00,'Pool Ocean view'),('1109','Family Room','King size bed',5400.00,45.00,'Garden view'),('1110','Family Room','King size bed',6380.00,52.00,'City view'),('1201','Standard Room','Twin bed',2100.00,28.00,'City view'),('1202','Standard Room','Single bed',2600.00,29.50,'City view'),('1203','Superior Room','Twin bed',2900.00,34.00,'Garden view'),('1204','Superior Room','Single bed',2950.50,34.00,'Garden view'),('1205','Deluxe Room','Queen size bed',8400.00,68.00,'Pool Ocean view'),('1206','Deluxe Room','King size bed',9900.00,68.00,'Garden view'),('1207','Suite Room','King size bed',14300.00,84.00,'Pool Ocean view'),('1208','Suite Room','King size bed',15500.00,85.00,'Pool Ocean view'),('1209','Family Room','King size bed',4743.00,47.00,'Garden view'),('1210','Family Room','King size bed',6510.00,54.00,'City view'),('201','Standard Room','Twin bed',1650.00,28.00,'City view'),('202','Standard Room','Single bed',1760.00,29.50,'City view'),('203','Superior Room','Twin bed',1860.00,34.00,'Garden view'),('204','Superior Room','Single bed',2075.00,34.00,'Garden view'),('205','Deluxe Room','Queen size bed',7550.00,68.00,'Garden view'),('206','Deluxe Room','King size bed',9100.00,68.00,'Garden view'),('207','Suite Room','King size bed',12800.00,72.00,'Pool Ocean view'),('208','Suite Room','King size bed',13550.00,75.00,'Pool Ocean view'),('209','Family Room','King size bed',4745.00,42.00,'City view'),('210','Family Room','King size bed',5680.00,47.00,'City view'),('301','Standard Room','Twin bed',1750.00,28.00,'City view'),('302','Standard Room','Single bed',1860.00,29.50,'City view'),('303','Superior Room','Twin bed',2060.00,34.00,'Garden view'),('304','Superior Room','Single bed',2170.00,34.00,'Garden view'),('305','Deluxe Room','Queen size bed',7650.00,68.00,'Garden view'),('306','Deluxe Room','King size bed',9200.00,68.00,'Garden view'),('307','Suite Room','King size bed',12910.00,72.00,'Pool Ocean view'),('308','Suite Room','King size bed',13500.00,75.00,'Pool Ocean view'),('309','Family Room','King size bed',4750.00,42.00,'City view'),('310','Family Room','King size bed',5600.00,47.00,'City view'),('401','Standard Room','Twin bed',1750.00,28.00,'City view'),('402','Standard Room','Single bed',1860.00,29.50,'City view'),('403','Superior Room','Twin bed',2160.00,34.00,'Garden view'),('404','Superior Room','Single bed',2270.00,34.00,'Garden view'),('405','Deluxe Room','Queen size bed',7650.00,68.00,'Garden view'),('406','Deluxe Room','King size bed',9200.00,68.00,'Pool Ocean view'),('407','Suite Room','King size bed',13000.00,72.00,'Pool Ocean view'),('408','Suite Room','King size bed',13600.00,75.00,'Pool Ocean view'),('409','Family Room','King size bed',4843.00,42.00,'City view'),('410','Family Room','King size bed',5780.00,47.00,'City view'),('501','Standard Room','Twin bed',1850.00,28.00,'City view'),('502','Standard Room','Single bed',1960.00,29.50,'City view'),('503','Superior Room','Twin bed',2360.00,34.00,'Garden view'),('504','Superior Room','Single bed',2670.00,34.00,'Garden view'),('505','Deluxe Room','Queen size bed',7950.00,68.00,'Garden view'),('506','Deluxe Room','King size bed',9600.00,68.00,'Pool Ocean view'),('507','Suite Room','King size bed',12900.00,75.00,'Pool Ocean view'),('508','Suite Room','King size bed',13700.00,77.00,'Pool Ocean view'),('509','Family Room','King size bed',5043.00,44.00,'City view'),('510','Family Room','King size bed',5880.00,48.00,'City view'),('601','Standard Room','Twin bed',1950.00,28.00,'City view'),('602','Standard Room','Single bed',1965.00,29.50,'City view'),('603','Superior Room','Twin bed',2460.00,34.00,'Garden view'),('604','Superior Room','Single bed',2675.00,34.00,'Garden view'),('605','Deluxe Room','Queen size bed',7950.00,68.00,'Garden view'),('606','Deluxe Room','King size bed',9650.00,68.00,'Garden view'),('607','Suite Room','King size bed',12950.00,76.00,'Pool Ocean view'),('608','Suite Room','King size bed',13750.00,78.00,'Pool Ocean view'),('609','Family Room','King size bed',5050.00,44.00,'City view'),('610','Family Room','King size bed',5980.00,48.00,'Garden view'),('701','Standard Room','Twin bed',1970.00,28.00,'City view'),('702','Standard Room','Single bed',2560.00,29.50,'City view'),('703','Superior Room','Twin bed',2760.00,34.00,'Garden view'),('704','Superior Room','Single bed',2870.00,34.00,'Garden view'),('705','Deluxe Room','Queen size bed',8050.00,68.00,'Garden view'),('706','Deluxe Room','King size bed',9700.00,68.00,'Garden view'),('707','Suite Room','King size bed',13000.00,78.00,'Pool Ocean view'),('708','Suite Room','King size bed',13800.00,79.00,'Pool Ocean view'),('709','Family Room','King size bed',5143.00,44.00,'City view'),('710','Family Room','King size bed',6100.00,50.00,'Garden view'),('801','Standard Room','Twin bed',1970.00,28.00,'City view'),('802','Standard Room','Single bed',2565.00,29.50,'City view'),('803','Superior Room','Twin bed',2765.00,34.00,'Garden view'),('804','Superior Room','Single bed',2875.00,34.00,'Garden view'),('805','Deluxe Room','Queen size bed',8250.00,68.00,'Pool Ocean view'),('806','Deluxe Room','King size bed',9750.00,68.00,'Garden view'),('807','Suite Room','King size bed',13100.00,79.00,'Pool Ocean view'),('808','Suite Room','King size bed',13850.00,80.00,'Pool Ocean view'),('809','Family Room','King size bed',5243.00,44.00,'City view'),('810','Family Room','King size bed',6150.00,50.00,'City view'),('901','Standard Room','Twin bed',1975.00,28.00,'City view'),('902','Standard Room','Single bed',2570.00,29.50,'City view'),('903','Superior Room','Twin bed',2860.00,34.00,'Garden view'),('904','Superior Room','Single bed',2900.00,34.00,'Garden view'),('905','Deluxe Room','Queen size bed',8300.00,68.00,'Garden view'),('906','Deluxe Room','King size bed',9800.50,68.00,'Garden view'),('907','Suite Room','King size bed',13150.00,81.00,'Pool Ocean view'),('908','Suite Room','King size bed',13900.00,82.00,'Pool Ocean view'),('909','Family Room','King size bed',5343.00,45.00,'City view'),('910','Family Room','King size bed',6210.00,51.00,'City view');
/*!40000 ALTER TABLE `Room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WeChatPay`
--

DROP TABLE IF EXISTS `WeChatPay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `WeChatPay` (
  `Payment_ID` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `WeChat_ID` varchar(10) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`Payment_ID`),
  CONSTRAINT `FK_PayWeChatPay` FOREIGN KEY (`Payment_ID`) REFERENCES `Payment` (`Payment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WeChatPay`
--

LOCK TABLES `WeChatPay` WRITE;
/*!40000 ALTER TABLE `WeChatPay` DISABLE KEYS */;
INSERT INTO `WeChatPay` VALUES ('00484775939','WC45678901'),('03938095853','WC45678901'),('03938485039','WC12345678'),('083762539','WC23456789'),('39748290584','WC34567890'),('8827169208','WC12345678'),('928362839238','WC34567890'),('93826290784','WC45678901'),('9383628403','WC67890123'),('93837203948','WC23456789'),('94857393744','WC56789012');
/*!40000 ALTER TABLE `WeChatPay` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-19 21:05:44

-- 1. 
SELECT r.Booking_no, r.Special_requests, r.Reservation_date AS 'Reservation date'
FROM Reservation r
WHERE Special_requests IS NOT NULL
  AND YEAR(r.Reservation_date) = 2022;


-- 2. 
SELECT r.Cus_name AS Customer, c.Branch_name AS Branch
FROM Reservation r
JOIN Contain c ON r.Booking_no = c.Booking_no
WHERE c.Branch_name = 'Centara Villas Samui';


-- 3. 
SELECT Payment_ID, Amount
FROM Payment
WHERE Amount > 10000
ORDER BY Amount desc;

-- 4. 
SELECT m.Cus_Name AS Customer, m.CentaraThe1_no AS 'CentaraThe1 number'
FROM Make m
ORDER BY m.Cus_Name ASC;

-- 5. 
SELECT c.Payment_ID, c.Card_holder_name AS 'Cardholder name', c.Expiry_date AS 'Expiry date'
FROM Card c
ORDER BY Expiry_date ASC;

-- 6. 
SELECT Cus_name AS Customer, Plate_no
FROM Booking
WHERE Cus_name LIKE 'J%'
ORDER BY Cus_name ASC;

-- 7. 
SELECT r.Cus_name AS Customer, c.Branch_name, c.Room_no AS Room
FROM Reservation r
JOIN Contain c ON r.Booking_no = c.Booking_no
WHERE c.Room_no LIKE '7%'
ORDER BY r.Cus_name ASC;


-- 8. 
SELECT COUNT(*) AS 'City View Room Count'
FROM Room
WHERE Scenery LIKE '%City view%';

-- 9. 
SELECT Room_no AS Room, Scenery, Price
FROM Room
WHERE Scenery LIKE '%Pool%'
ORDER BY Price DESC;


-- 10. 
SELECT r.Citizen_ID, r.Cus_name AS Customer, r.Destination, r.Reservation_date
FROM Reservation r
LEFT JOIN Contain C ON R.Booking_no = C.Booking_no
WHERE MONTH(r.Reservation_date) = 1;

-- 11. 
SELECT r.Cus_name AS Customer, r.booking_no, p.payment_id, w.wechat_id
FROM Reservation r
JOIN Payment p ON r.booking_no = p.booking_no
JOIN WechatPay w ON p.payment_id = w.payment_id
ORDER BY Customer ASC;

-- 12. 
SELECT c.CentaraThe1_no AS 'CentaraThe1 Number' , c.cus_name AS Customer
FROM Customer c
WHERE c.CentaraThe1_no IN (SELECT cen.CentaraThe1_no 
	FROM CentaraThe1Account cen WHERE cen.tier LIKE '%Gold%')
ORDER BY Customer asc;

-- 13. 
SELECT cus_name AS Customer, YEAR(curdate())-YEAR(birthdate) AS Age
FROM Customer
WHERE YEAR(curdate())-YEAR(birthdate) > 30
ORDER BY Age desc;

-- 14. 
SELECT r.cus_name AS Customer, r.Destination, b.branch_location
FROM Reservation r
JOIN Branch b ON r.Destination = b.branch_name
WHERE b.branch_location NOT LIKE '%Thailand%';

-- 15. 
SELECT cus_name AS Customer, birthdate, YEAR(curdate())-YEAR(birthdate) AS Age
FROM Customer
WHERE YEAR(curdate())-YEAR(birthdate) > (
	SELECT AVG(YEAR(curdate())-YEAR(birthdate)) 
	FROM Customer WHERE MONTH(birthdate) = 12)
ORDER BY Age desc;

-- 16. 
SELECT AVG(YEAR(curdate())-YEAR(birthdate)) As AvgAge
FROM Customer 
WHERE MONTH(birthdate) = 12;

-- 17. 
SELECT cus_name AS Customer, passport_no
FROM Customer
WHERE passport_no IS NOT NULL
ORDER BY Customer ASC;

-- 18. 
DROP VIEW IF EXISTS vw_PlatinumCustomers;
CREATE VIEW vw_PlatinumCustomers AS
(
SELECT c.cus_name, c.Citizen_ID, c.CentaraThe1_no, c.Email_address, c.Payment_ID
FROM Customer c
WHERE c.CentaraThe1_no IN 
	  (SELECT cen.CentaraThe1_no FROM CentaraThe1Account cen
       WHERE cen.tier LIKE '%Platinum%')
)
ORDER BY cus_name ASC;
SELECT * FROM vw_PlatinumCustomers;

-- 19. 
SELECT cus_name AS Customer, YEAR(curdate())-YEAR(birthdate) AS Age
FROM Customer
ORDER BY AGE ASC
LIMIT 10;

-- 20. 
SELECT cus_name AS Customer, Total_num_of_customers AS 'NO. of customers'
FROM Reservation
WHERE Total_num_of_customers > 3;

-- 21. 
SELECT cus_name AS Name, destination AS Destination, total_num_of_customers AS 'Total number of customers', booking_no AS 'Booking number'
FROM reservation
ORDER BY cus_name;

-- 22. 
select c.cus_name as Name, cen.tier as Tier, p.amount as Amount
from customer c
join payment p on c.Payment_ID = p.Payment_ID
left join CentaraThe1Account cen on c.CentaraThe1_no = cen.CentaraThe1_no
order by Amount desc
limit 10;

-- 23. 
select r.cus_name as Name, con.room_no as'Room number', r.Special_requests as 'Special requests'
from reservation r
left join Contain con on  r.booking_no = con.booking_no
where Special_requests = 'Early check-in' or Special_requests = 'Late checkout';

-- 24.
select con.Branch_name as Branch, sum(r.total_num_of_customers) as 'Total number of customers'
from contain con
left join reservation r on r.booking_no = con.booking_no
group by con.Branch_name
order by sum(r.total_num_of_customers) desc;

-- 25.
select round(avg((year(curdate())-year(Birthdate)))) as "Average age of customer" 
from customer;

-- 26.
select Cus_name as Name, destination as destination
from Reservation 
where destination like '%Krabi%';

-- 27.
select c.Payment_ID as 'Payment ID', c.cus_name as Name, p.amount as Amount
from customer c
join payment p on c.Payment_ID = p.Payment_ID
where (p.amount between 2000 and 9000)
order by Amount desc;

-- 28.
select c.cus_name as Name, cen.tier as Tier
from customer c
left join CentaraThe1Account cen on c.CentaraThe1_no = cen.CentaraThe1_no
where cen.tier = 'Platinum Elite';

-- 29.
select cus_name as Name, Phone_number as 'Phone number', Passport_no as 'Passport number'
from customer
where Passport_no like '%C%';

-- 30.
SELECT r.cus_name AS Name, r.destination as Destination, p.amount AS Amount
from reservation r
join payment p on r.booking_no = p.booking_no
WHERE p.amount < (SELECT AVG(amount) FROM payment)
order by p.amount asc;

-- 31.
SELECT b.Branch_name, b.Branch_location, bn.Branch_Phonenumber
FROM Branch b
JOIN B_PhoneNumbers bn ON b.Branch_name = bn.Branch_name;

-- 32.
SELECT r.Booking_no, SUM(p.Amount) AS Total_Paid
FROM Reservation r
LEFT JOIN Payment p ON r.Booking_no = p.Booking_no
GROUP BY r.Booking_no;

-- 33.
SELECT W.Payment_ID, W.WeChat_ID
FROM WeChatPay W
JOIN Payment P ON W.Payment_ID = P.Payment_ID
JOIN Reservation R ON P.Booking_no = R.Booking_no
JOIN Customer C ON R.Cus_name = C.Cus_name AND R.Citizen_ID = C.Citizen_ID
JOIN CentaraThe1Account A ON C.CentaraThe1_no = A.CentaraThe1_no
WHERE A.Tier = 'Gold';

-- 34.
SELECT B.Branch_name, SUM(P.Amount) AS TotalRevenue
FROM Payment P
JOIN Reservation R ON P.Booking_no = R.Booking_no
JOIN Contain C ON R.Booking_no = C.Booking_no
JOIN Branch B ON C.Branch_name = B.Branch_name
GROUP BY B.Branch_name;

-- 35.
SELECT CentaraThe1_no as 'CentaraThe1 number', Cen_Point as Point
FROM CentaraThe1Account
ORDER BY Cen_Point;

-- 36.
SELECT DISTINCT C.Cus_name AS 'Card holder name', C.Citizen_ID
FROM Customer C
JOIN Payment P ON C.Payment_ID = P.Payment_ID
JOIN Card CD ON P.Payment_ID = CD.Payment_ID;

-- 37.
SELECT AT.Vehicle, COUNT(B.Plate_no) as Total_Bookings
FROM Airport_transfer_service AT
LEFT JOIN Booking B ON AT.Plate_no = B.Plate_no
WHERE AT.Arrival_time BETWEEN '2020-01-01 00:00:00' AND '2023-12-31 00:00:00'
GROUP BY AT.Vehicle;

-- 38.
SELECT MONTH(Reservation_date) AS Month, COUNT(Booking_no) AS Total_Bookings
FROM Reservation
GROUP BY Month
ORDER BY Total_Bookings DESC
LIMIT 3;

-- 39.
SELECT SUM(Amount) AS Total_Revenue
FROM Payment
WHERE Paid_date BETWEEN '2023-01-01' AND '2023-12-31';

-- 40.
SELECT DISTINCT Reservation_date,Cus_name, Citizen_ID
FROM Reservation 
WHERE Reservation_date BETWEEN '2023-01-01' AND '2023-12-31'
ORDER BY Reservation_date ASC;


