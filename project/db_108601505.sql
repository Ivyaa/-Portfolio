CREATE DATABASE  IF NOT EXISTS `db_108601505` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_108601505`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 192.168.56.102    Database: db_108601505
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_User`
--

DROP TABLE IF EXISTS `tbl_User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_User` (
  `User_id` int NOT NULL AUTO_INCREMENT,
  `User_account` varchar(64) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `User_address` varchar(64) NOT NULL,
  `User_phone_number` varchar(64) NOT NULL,
  `User_log_x` int NOT NULL,
  `User_log_y` int NOT NULL,
  `Create_datetime` datetime NOT NULL,
  `salt` char(200) NOT NULL,
  PRIMARY KEY (`User_id`),
  UNIQUE KEY `salt_UNIQUE` (`salt`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_User`
--

LOCK TABLES `tbl_User` WRITE;
/*!40000 ALTER TABLE `tbl_User` DISABLE KEYS */;
INSERT INTO `tbl_User` VALUES (1,'test001','Jacob Walker','320桃園市中壢區民權路170號','937882465',94,95,'2021-02-21 10:00:00','63652315D22919A8EC76F58F982EC08A6244474F8082B8E75A1271B3C63948E9'),(2,'test002','Rick Caulfield','320桃園市中壢區民生北路112號','945804302',8,20,'2021-01-01 12:00:05','AA52032EAB8CC92F7B77CCE828940F95C2369F18DDF1C6B3A80A8A6195D137FB'),(3,'test003','Bryce Landrum','320桃園市中壢區五興路121號','902923003',65,69,'2021-12-11 23:20:00','3C567E0EA40F26755BB221C96AB02CC726DE673E85016EC1D949D14E5B16B223'),(4,'test004','Alex Barlow','320桃園市中壢區民生北路185號','942930878',100,6,'2021-07-14 14:40:20','95B79B147E492681F98C749E3AC329C1A975D3F4000FF25D0643D8D55A4E4E2B'),(5,'test005','Alvin Anderson','320桃園市中壢區民權路520號','909563906',7,22,'2021-10-11 12:20:07','EB7F11AE33003238D3FF14094E3BC569F077B8F39DF472423FD339CE22B5F050'),(6,'test006','Willy Bieber','320桃園市中壢區中大路107號','901033637',49,87,'2021-12-05 02:00:00','5F79D14FB8A43CA9350E781EA1067B14B197D36671182C4C15E9EDBD921791DD'),(7,'test007','Johannes Harris','320桃園市中壢區民權路30號','984466058',2,24,'2020-07-07 12:45:37','9C681B6D73E80D3C1F10E06BDEB48914ABE207ADA83405DC14485B6AD060C021'),(8,'test008','Phil Taft','320桃園市中壢區中山路474號','973214446',55,1,'2020-08-08 22:45:30','6C40F0CC5D46DCE7D1A0E1D118E0750A7874087FC7199DDA34D171131002DCA9'),(9,'test009','Reggie Scott','320桃園市中壢區民生北路42號','900697437',33,74,'2020-01-21 11:15:31','039FB5567A6B559BE9999BF854BEF1699A14CB912AF431CCF90D9941900D8788'),(10,'test010','Aidan Hall','320桃園市中壢區中大路820號','907146500',37,14,'2020-03-26 08:10:12','ABC1523C0333408EFF2B8CCF4248A0B2175723EBC65C8D05940B9D434B7A39A2'),(11,'test011','Annie Abbadie','320桃園市中壢區民權路72號','977679834',91,47,'2019-04-16 07:40:42','015E6E1B59C1095D5484D37EADAD30A1BA1B23E96125ECD3A4FAA7E97B57AE6A'),(12,'test012','Nerissa Brown','320桃園市中壢區五興路847號','973337533',18,82,'2019-10-26 05:05:05','FC683C2A54777A59A747A304E48AF48F1CC3B5028690001D5E6FF51CF4F3CABB'),(13,'test013','Anna Stenson','320桃園市中壢區民生南路31號','904713945',64,66,'2019-09-21 08:41:12','B6A36D21C9A08C26DE91B3D8C9A55B29F196AEF84FF5EA6598D66DBCB37A7F9E'),(14,'test014','Sigrid Merrick','320桃園市中壢區中正路322號','998049104',19,91,'2019-09-23 12:20:02','BCF3A35C006CEDC0C1B9FE21E8F22528A8D09CB36A4F19B1B6A9B4713D8D22B'),(15,'test015','Alexis Bagshawe','320桃園市中壢區中大路365號','983234004',70,75,'2019-04-10 03:25:06','D2E8F9D3BC6FDDA90B838DB2A33C749F20DD43CE899752B7FA194F01C637D90E'),(16,'test016','Ivy Liu','320桃園市中壢區民生北路40號','966855745',54,75,'2021-06-14 15:04:09','1C1C415EDA3FAFDDBFD4F44B16AD0206890983883A53F50C761C4E9CEDD333B8'),(17,'test17','ivulllll','中大路300號','965587351',45,65,'2021-06-16 14:57:28','afdag'),(18,'eeeee','vjidosl','我是誰','153212',84,2,'2021-06-14 15:50:14','scjilsgedf5'),(19,'dd','dd','dd','dd',55,64,'2021-06-14 15:57:14','84dsdf'),(20,'fsgr','dfdf','ggrdh','dweg',15,55,'2021-06-14 16:06:24','sge'),(21,'test55','sef','dfefs','9857525',25,45,'2021-06-15 17:44:34','hgfgdfg'),(22,'test26','sdf','esgdcfsg','54352',45,86,'2021-06-15 17:45:46','rfsgfr'),(23,'dfs','sdf','sdf','df',10,1,'2021-06-15 17:47:03','dgfgd'),(24,'test55555','ddsegc','dsgcdee','desgc',12,56,'2021-06-16 14:47:02','asdcegsrh'),(25,'test1566','sge','sdvce','dctts',15,42,'2021-06-16 14:52:58','egfasdf'),(26,'dgsg','sdfsde','sdcvsg','sdfrgr',15,2,'2021-06-16 14:53:43','ylgiukf');
/*!40000 ALTER TABLE `tbl_User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_User_credential`
--

DROP TABLE IF EXISTS `tbl_User_credential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_User_credential` (
  `User_credential_id` int NOT NULL AUTO_INCREMENT,
  `User_id` int NOT NULL,
  `hashpwd` varchar(200) NOT NULL,
  `Create_datetime` datetime NOT NULL,
  PRIMARY KEY (`User_credential_id`),
  UNIQUE KEY `hashpwd_UNIQUE` (`hashpwd`),
  KEY `Usercredential_id_User_id_fk_idx` (`User_id`),
  CONSTRAINT `Usercredential_id_User_id_fk` FOREIGN KEY (`User_id`) REFERENCES `tbl_User` (`User_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_User_credential`
--

LOCK TABLES `tbl_User_credential` WRITE;
/*!40000 ALTER TABLE `tbl_User_credential` DISABLE KEYS */;
INSERT INTO `tbl_User_credential` VALUES (1,1,'12d645aba4188c2ca4467e723aa5f80fbf74dd2d4d1acafdb888a06ea152d400','2021-02-21 10:00:00'),(2,2,'37511f033628d86b4b916eeac92be7c519c7a2a0b69a9c275b8ac12df51c7170','2021-01-01 12:00:05'),(3,3,'b42173ac3c0c84579930b00fb5840673909e7cbb52835dd0eda3867ec78b0c1a','2021-12-11 23:20:00'),(4,4,'90dd9f1505cc9b5e7afe85fff9e8c0e1479982f47ded59713a351e56b04d8ebe','2021-07-14 14:40:20'),(5,5,'9fd17045e745b326a17b46bc898d1e31584b3fe151bfca775d05b955f66a4020','2021-10-11 12:20:07'),(6,6,'9b0ad459fd6229d16b62486fa4aadb93279b3a5078ec560dafb2ff2dacdd3ca2','2021-12-05 02:00:00'),(7,7,'385caacde6430ee92f88112fde9c7ab56057a489190cee002fb55d3f5e3958f4','2020-07-07 12:45:37'),(8,8,'ac30c90356c59a3ad72d6fab45ddc2d5f81c5cdd194b7a66e938ca72c4cef85b','2020-08-08 22:45:30'),(9,9,'ca3a5ef52e43abcb268591f9208f205cbc1a8d4c8009a9476a593d7fdfd546d3','2020-01-21 11:15:31'),(10,10,'1ac24680a1f8570fdf6979860e7b02bbb424d970b9b1d6500090a179653b7b95','2020-03-26 08:10:12'),(11,11,'6e29fad15e907474280d063c1f19f1c4a1309296ad05485cccc6f0a462fc254c','2019-04-16 07:40:42'),(12,12,'42ced92cee6c90bd603d316ef11f9b4af4e3037821019996978b6df8e4ad4788','2019-10-26 05:05:05'),(13,13,'215888d61256561f9bf24bdf9eab1e92166ba1e05442c3b4b0b2790dc25a9834','2019-09-21 08:41:12'),(14,14,'f7b3e132fbbbcfc87d2cb65e0552af74d7c7df55ed828e5c700a60491dbc27e4','2019-09-23 12:20:02'),(15,15,'6ca89a4472c0a426e37dfef1bc25aed829c4dac0f38c74b09a0fa47a233d60dd','2019-04-10 03:25:06'),(16,16,'c4f8f42fa5bbbac8a1f5d5639a491f2a31cd11c29bf779a72ae1d1ce25f38dac','2021-06-14 15:21:09'),(18,17,'sdfawe','2021-06-14 15:43:14'),(19,18,'dsjgilxnig5482','2021-06-14 15:50:14'),(20,19,'ddd','2021-06-14 15:57:14'),(21,20,'dgs','2021-06-14 16:06:24'),(22,21,'dfgrvd','2021-06-15 17:44:34'),(23,22,'sfsger','2021-06-15 17:45:46'),(24,23,'sefsd','2021-06-15 17:47:03'),(25,25,'sdcgrs','2021-06-16 14:52:58'),(26,26,'fvulhil','2021-06-16 14:53:43');
/*!40000 ALTER TABLE `tbl_User_credential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_coupon`
--

DROP TABLE IF EXISTS `tbl_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_coupon` (
  `Coupon_id` int NOT NULL,
  `Oupon_name` varchar(45) NOT NULL,
  `Promotion_code` varchar(45) NOT NULL,
  `S_date` datetime NOT NULL,
  `D_date` datetime NOT NULL,
  PRIMARY KEY (`Coupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_coupon`
--

LOCK TABLES `tbl_coupon` WRITE;
/*!40000 ALTER TABLE `tbl_coupon` DISABLE KEYS */;
INSERT INTO `tbl_coupon` VALUES (1,'世界睡眠日好康','3JFUMV','2021-03-21 00:00:00','2021-03-21 00:00:00'),(2,'元旦驚喜','V5GMR4','2021-01-01 00:00:00','2021-01-03 00:00:00'),(3,'父親節我罩你','TL9EUP','2021-08-08 00:00:00','2021-08-09 00:00:00'),(4,'破盤大放送','YSL2KF','2021-05-01 00:00:00','2021-07-01 00:00:00'),(5,'你開心我開心','DSHUNZ','2021-05-05 00:00:00','2021-06-30 00:00:00'),(6,'優惠隨便給','MK2X7V','2021-04-01 00:00:00','2021-06-15 00:00:00'),(7,'春假驚喜','DG99ZB','2021-04-02 00:00:00','2021-04-05 00:00:00'),(8,'暑假優惠','HUGQM3','2021-07-01 00:00:00','2021-08-31 00:00:00'),(9,'九月限定驚喜','74G8YW','2021-09-01 00:00:00','2021-09-30 00:00:00'),(10,'十月到好運到','2NE7KR','2021-10-01 00:00:00','2021-10-31 00:00:00'),(11,'光棍快樂','82WQER','2021-11-11 00:00:00','2021-11-11 00:00:00'),(12,'聖誕老人送禮物','3YGQ4T','2021-12-24 00:00:00','2021-12-26 00:00:00'),(13,'兒童節專屬好禮','WMSPL4','2021-04-04 00:00:00','2021-04-05 00:00:00'),(14,'情人節我幫你','LKQPQN','2021-02-13 00:00:00','2021-02-15 00:00:00'),(15,'母親節好禮','2HEKP4','2021-05-08 00:00:00','2021-05-09 00:00:00');
/*!40000 ALTER TABLE `tbl_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_deliveryman`
--

DROP TABLE IF EXISTS `tbl_deliveryman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_deliveryman` (
  `Delivery_man_id` int NOT NULL,
  `Deliveryman_name` varchar(100) NOT NULL,
  `Deliveryman_phone_number` int NOT NULL,
  `Deliveryman_address` varchar(100) NOT NULL,
  PRIMARY KEY (`Delivery_man_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_deliveryman`
--

LOCK TABLES `tbl_deliveryman` WRITE;
/*!40000 ALTER TABLE `tbl_deliveryman` DISABLE KEYS */;
INSERT INTO `tbl_deliveryman` VALUES (1,'Peter',940455888,'320桃園市中壢區中正路100號'),(2,'Spencer',904965039,'320桃園市中壢區中大路342號'),(3,'Adrian',944740134,'320桃園市中壢區五興路12號'),(4,'Jarrod',993007533,'320桃園市中壢區民族路101號'),(5,'Richard',992461642,'320桃園市中壢區中大路520號'),(6,'Walter',903323629,'320桃園市中壢區中大路10號'),(7,'Timothy',948528169,'320桃園市中壢區五興路30號'),(8,'Marty',967992517,'320桃園市中壢區中山路444號'),(9,'Corey',951000780,'320桃園市中壢區中正路42號'),(10,'Ethan',990914024,'320桃園市中壢區中大路820號'),(11,'Austin',998879355,'320桃園市中壢區民族路72號'),(12,'Paige',979188124,'320桃園市中壢區五興路87號'),(13,'Luna',999501521,'320桃園市中壢區中山路301號'),(14,'Bonnie',976947991,'320桃園市中壢區中正路372號'),(15,'Alexis',977215310,'320桃園市中壢區中大路345號');
/*!40000 ALTER TABLE `tbl_deliveryman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_meals`
--

DROP TABLE IF EXISTS `tbl_meals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_meals` (
  `Meals_id` int NOT NULL,
  `Restaurant_id` int NOT NULL,
  `Meals_name` varchar(45) NOT NULL,
  `Meals_price` int NOT NULL,
  PRIMARY KEY (`Meals_id`),
  KEY `meals_resraurant_id_restaurant_id_idx` (`Restaurant_id`),
  CONSTRAINT `meals_resraurant_id_restaurant_id` FOREIGN KEY (`Restaurant_id`) REFERENCES `tbl_restaurant` (`Restaurant_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_meals`
--

LOCK TABLES `tbl_meals` WRITE;
/*!40000 ALTER TABLE `tbl_meals` DISABLE KEYS */;
INSERT INTO `tbl_meals` VALUES (1,9,'拿鐵',80),(2,1,'薯條',55),(3,12,'蛋塔',60),(4,11,'麻油雞',40),(5,1,'雙層牛肉吉士堡',60),(6,4,'泡菜鍋',110),(7,1,'麥脆雞',50),(8,5,'珍珠奶茶',50),(9,6,'麗春紅茶',30),(10,10,'黑森林蛋糕',220),(11,14,'鮪魚壽司',40),(12,7,'滷肉飯',60),(13,8,'雞肉飯',45),(14,13,'鮭魚壽司',40),(15,13,'綜合生魚片',200),(16,2,'燒肉珍珠堡',70),(17,3,'蔬菜鍋',120),(18,2,'紅茶',30),(19,3,'原味鍋',100),(20,4,'牛肉鍋',120),(21,5,'大甲芋頭鮮奶',75),(22,6,'熟成紅茶',35),(23,7,'貢丸湯',40),(24,8,'切仔麵',40),(25,9,'黑咖啡',70),(26,10,'焦糖瑪奇朵',75),(27,11,'滷肉麵線',30),(29,12,'蜂蜜醬脆雞XL餐',185),(30,14,'豆皮壽司',30),(31,15,'火腿蛋餅',35),(32,15,'起司蛋餅',30),(33,15,'蛋餅',25),(34,15,'奶茶2號',45);
/*!40000 ALTER TABLE `tbl_meals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_order` (
  `Order_id` int NOT NULL AUTO_INCREMENT,
  `User_id` int NOT NULL,
  `Delivery_man_id` int NOT NULL,
  `Coupon_id` int DEFAULT NULL,
  `Order_status` int DEFAULT NULL,
  `Restaurant_rating` int DEFAULT NULL,
  `Delivery_rating` int DEFAULT NULL,
  `Delivery_fee` int NOT NULL,
  `Total_prize` int NOT NULL,
  PRIMARY KEY (`Order_id`),
  KEY `order_deliverymanid_deliveryman_id_idx` (`Delivery_man_id`),
  KEY `order_couponid_coupon_id_idx` (`Coupon_id`),
  KEY `order_userid_user_id_idx` (`User_id`),
  CONSTRAINT `order_couponid_coupon_id` FOREIGN KEY (`Coupon_id`) REFERENCES `tbl_coupon` (`Coupon_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_deliverymanid_deliveryman_id` FOREIGN KEY (`Delivery_man_id`) REFERENCES `tbl_deliveryman` (`Delivery_man_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_userid_user_id` FOREIGN KEY (`User_id`) REFERENCES `tbl_User` (`User_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order`
--

LOCK TABLES `tbl_order` WRITE;
/*!40000 ALTER TABLE `tbl_order` DISABLE KEYS */;
INSERT INTO `tbl_order` VALUES (1,2,1,NULL,4,NULL,NULL,20,130),(2,2,2,8,4,4,5,30,515),(3,3,11,7,3,NULL,NULL,30,220),(4,3,6,8,4,4,3,30,85),(5,5,14,11,3,NULL,NULL,15,90),(6,5,8,15,1,NULL,NULL,30,295),(7,4,4,NULL,4,5,4,30,130),(8,6,3,NULL,4,2,2,30,350),(9,6,5,1,4,3,2,15,135),(10,2,6,NULL,4,1,3,20,190),(36,3,5,NULL,NULL,NULL,NULL,30,115);
/*!40000 ALTER TABLE `tbl_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ordered_details`
--

DROP TABLE IF EXISTS `tbl_ordered_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_ordered_details` (
  `Order_id` int NOT NULL,
  `Meals_id` int NOT NULL,
  `Unit_price` int NOT NULL,
  `Count` int NOT NULL,
  KEY `ordered_details_mealsid_meals_id_idx` (`Meals_id`),
  KEY `ordered_details_orderid_order_id_idx` (`Order_id`),
  CONSTRAINT `ordered_details_mealsid_meals_id` FOREIGN KEY (`Meals_id`) REFERENCES `tbl_meals` (`Meals_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ordered_details_orderid_order_id` FOREIGN KEY (`Order_id`) REFERENCES `tbl_order` (`Order_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ordered_details`
--

LOCK TABLES `tbl_ordered_details` WRITE;
/*!40000 ALTER TABLE `tbl_ordered_details` DISABLE KEYS */;
INSERT INTO `tbl_ordered_details` VALUES (1,5,60,1),(1,7,50,1),(2,10,220,2),(2,26,75,1),(3,17,120,1),(3,19,100,1),(4,13,45,1),(4,24,40,1),(5,2,55,1),(5,7,50,1),(6,10,220,1),(6,26,75,1),(7,16,70,1),(7,18,30,1),(8,17,120,1),(8,19,100,2),(9,1,80,1),(9,25,70,1),(10,5,60,2),(10,7,50,1),(36,13,45,1),(36,24,40,1);
/*!40000 ALTER TABLE `tbl_ordered_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_restaurant`
--

DROP TABLE IF EXISTS `tbl_restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_restaurant` (
  `Restaurant_id` int NOT NULL,
  `Restaurant_name` varchar(45) NOT NULL,
  `Restaurant_phone_number` varchar(45) NOT NULL,
  `Restaurant_address` varchar(100) NOT NULL,
  `Restaurant_log_x` int NOT NULL,
  `Restaurant_log_y` int NOT NULL,
  `Business` int NOT NULL,
  `Openningtime` time NOT NULL,
  `Closingtime` time NOT NULL,
  PRIMARY KEY (`Restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_restaurant`
--

LOCK TABLES `tbl_restaurant` WRITE;
/*!40000 ALTER TABLE `tbl_restaurant` DISABLE KEYS */;
INSERT INTO `tbl_restaurant` VALUES (1,'麥當勞','0976578007','320桃園市中壢區中大路99號',2,21,1,'08:00:00','20:00:00'),(2,'摩斯漢堡','0947946958','320桃園市中壢區中正一路252號',87,5,1,'09:30:00','18:00:00'),(3,'伍味鍋','0997935827','320桃園市中壢區五興路121號',49,71,1,'07:00:00','22:00:00'),(4,'三媽臭臭鍋','0999369804','320桃園市中壢區民族路1041號',14,80,0,'10:00:00','23:00:00'),(5,'迷克夏','0977073228','320桃園市中壢區中大路50號',80,42,1,'11:00:00','16:00:00'),(6,'可不可熟成紅茶','0946602587','320桃園市中壢區中大路101號',21,99,0,'10:30:00','21:30:00'),(7,'鬍鬚張','0993381433','320桃園市中壢區中正一路380號',31,7,1,'10:00:00','20:00:00'),(8,'九大雞魯飯','0996380445','320桃園市中壢區中正二路448號',78,79,1,'06:00:00','22:00:00'),(9,'怡客咖啡','0945234928','320桃園市中壢區中正路42號',51,85,1,'11:00:00','21:30:00'),(10,'路易莎咖啡','0950621549','320桃園市中壢區中大路840號',12,38,1,'10:30:00','23:00:00'),(11,'二師父麻油雞','0950005890','320桃園市中壢區民族路721號',24,19,0,'08:00:00','22:00:00'),(12,'肯德基','0905179052','320桃園市中壢區五興路877號',4,24,0,'09:30:00','21:30:00'),(13,'爭鮮迴轉壽司','0907159968','320桃園市中壢區中正一路301號',63,17,1,'11:00:00','23:00:00'),(14,'壽司郎','0999233765','320桃園市中壢區中正路72號',83,39,1,'11:00:00','21:30:00'),(15,'弘爺早餐店','0900651160','320桃園市中壢區中正二路345號',16,27,1,'06:00:00','09:00:00');
/*!40000 ALTER TABLE `tbl_restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_108601505'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_Cancel_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`108601505`@`192.168.56.1` PROCEDURE `sp_Cancel_order`(
	IN getorderid int,
    out numberofresult int
)
BEGIN
	DELETE FROM db_108601505.tbl_order
    WHERE Order_id = getorderid;
    
    Set @result1 = row_count();
    
    DELETE FROM db_108601505.tbl_ordered_details
    WHERE Order_id = getorderid;
    
    Set @result2 = row_count();
    SELECT (@result2+@result1)
    INTO numberofresult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateNewOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`108601505`@`192.168.56.1` PROCEDURE `sp_CreateNewOrder`(
	IN getuserid int,
    IN getdeliveryid int,
    IN getrestaurantid int,
    IN getmeal_1_id int,
    IN getmeal_1_count int,
    IN getmeal_2_id int,
    IN getmeal_2_count int,
    out numberofresult int
)
sp:BEGIN

	IF (SELECT Business FROM db_108601505.tbl_restaurant WHERE Restaurant_id = getrestaurantid) = 0 
    THEN LEAVE sp;
    END IF;
    
    IF now() < (SELECT Openningtime FROM db_108601505.tbl_restaurant WHERE Restaurant_id = getrestaurantid)
    or now() > (SELECT Closingtime FROM db_108601505.tbl_restaurant WHERE Restaurant_id = getrestaurantid)
    THEN LEAVE sp;
    END IF;
    
    IF (SELECT location FROM
		(SELECT *,(sqrt((abs(user_loc_x-Restaurant_log_x))*(abs(user_loc_x-Restaurant_log_x))+(abs(user_loc_y-Restaurant_log_y))*(abs(user_loc_y-Restaurant_log_y)))) AS location FROM 
					(SELECT * FROM
						(SELECT 
						User_log_x AS user_loc_x,
						User_log_y AS user_loc_y
						FROM `db_108601505`.tbl_User
						WHERE User_id = getuserid) user_location_tbl
					JOIN
						`db_108601505`.tbl_restaurant) user_restaurant_location)
		AS result WHERE Restaurant_id = getrestaurantid) > 20
	THEN LEAVE sp;
    END IF;
    
    INSERT INTO db_108601505.tbl_order(User_id,Delivery_man_id,Delivery_fee,Total_prize)
	VALUES (getuserid,
			getdeliveryid,
            (SELECT delivery_fee FROM
				(SELECT 
                Restaurant_id,
				location,
				CASE 
				WHEN location <= 5 THEN 15
				WHEN location <=10 THEN 20
				WHEN location <=20 THEN 30
				END AS delivery_fee
				FROM
					(SELECT *,(sqrt((abs(user_loc_x-Restaurant_log_x))*(abs(user_loc_x-Restaurant_log_x))+(abs(user_loc_y-Restaurant_log_y))*(abs(user_loc_y-Restaurant_log_y)))) AS location FROM 
							(SELECT * FROM
								(SELECT 
								User_log_x AS user_loc_x,
								User_log_y AS user_loc_y
								FROM `db_108601505`.tbl_User
								WHERE User_id = getuserid) user_location_tbl
							JOIN
								`db_108601505`.tbl_restaurant) user_restaurant_location)		
				AS result
				WHERE 
					location <= 20 && business = 1 && NOW() >= Openningtime && NOW() <= Closingtime && Restaurant_id = getrestaurantid)
				AS total_result),
                ((SELECT Meals_price FROM db_108601505.tbl_meals WHERE Meals_id = getmeal_1_id)*getmeal_1_count+(SELECT Meals_price FROM db_108601505.tbl_meals WHERE Meals_id = getmeal_2_id)*getmeal_2_count
                +(SELECT delivery_fee FROM
					(SELECT 
                    Restaurant_id,
					location,
					CASE 
					WHEN location <= 5 THEN 15
					WHEN location <=10 THEN 20
					WHEN location <=20 THEN 30
					END AS delivery_fee
					FROM
						(SELECT *,(sqrt((abs(user_loc_x-Restaurant_log_x))*(abs(user_loc_x-Restaurant_log_x))+(abs(user_loc_y-Restaurant_log_y))*(abs(user_loc_y-Restaurant_log_y)))) AS location FROM 
								(SELECT * FROM
									(SELECT 
									User_log_x AS user_loc_x,
									User_log_y AS user_loc_y
									FROM `db_108601505`.tbl_User
									WHERE User_id = getuserid) user_location_tbl
								JOIN
									`db_108601505`.tbl_restaurant) user_restaurant_location)		
					AS result
					WHERE 
						location <= 20 && business = 1 && NOW() >= Openningtime && NOW() <= Closingtime && Restaurant_id = getrestaurantid)
					AS total_result))
                    );
    SET @result1 = row_count();
    
    SET FOREIGN_KEY_CHECKS=0;                 
	INSERT INTO db_108601505.tbl_ordered_details(Order_id,Meals_id,Unit_price,Count)
	VALUES((SELECT MAX(Order_id) FROM db_108601505.tbl_order),
    getmeal_1_id,
    (SELECT Meals_price FROM db_108601505.tbl_meals WHERE Meals_id = getmeal_1_id),
    getmeal_1_count);
    
    SET @result2 = row_count();
    
    INSERT INTO db_108601505.tbl_ordered_details(Order_id,Meals_id,Unit_price,Count)
	VALUES((SELECT MAX(Order_id) FROM db_108601505.tbl_order),
    getmeal_2_id,
    (SELECT Meals_price FROM db_108601505.tbl_meals WHERE Meals_id = getmeal_2_id),
    getmeal_2_count);
    
    SET @result3 = row_count();

    SELECT User_id AS user_id,
    tbl_order.Order_id AS order_id,
    tbl_meals.Restaurant_id As restaurant_id,
    tbl_meals.Meals_id AS meals_id,
    tbl_ordered_details.Unit_price AS unit_price,
    Count AS count
    FROM db_108601505.tbl_meals
		INNER JOIN db_108601505.tbl_ordered_details ON tbl_meals.Meals_id = tbl_ordered_details.Meals_id
		INNER JOIN db_108601505.tbl_order ON tbl_ordered_details.Order_id = tbl_order.Order_id
	WHERE tbl_order.Order_id = (SELECT MAX(Order_id) FROM db_108601505.tbl_order);

    SELECT (@result1+@result2+@result3) 
    INTO numberofresult;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetRestaurant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`108601505`@`192.168.56.1` PROCEDURE `sp_GetRestaurant`(
	IN getuserid int, 
    out numberofresult int
)
BEGIN
	SELECT Restaurant_id,Restaurant_name,delivery_fee FROM
    (SELECT 
	Restaurant_id,
	Restaurant_name,
	location,
	CASE 
	WHEN location <= 5 THEN 15
	WHEN location <=10 THEN 20
	WHEN location <=20 THEN 30
	END AS delivery_fee
	FROM
		(SELECT *,(sqrt((abs(user_loc_x-Restaurant_log_x))*(abs(user_loc_x-Restaurant_log_x))+(abs(user_loc_y-Restaurant_log_y))*(abs(user_loc_y-Restaurant_log_y)))) AS location FROM 
				(SELECT * FROM
					(SELECT 
					User_log_x AS user_loc_x,
					User_log_y AS user_loc_y
					FROM `db_108601505`.tbl_User
					WHERE User_id = getuserid) user_location_tbl
				JOIN
					`db_108601505`.tbl_restaurant) user_restaurant_location)
				
	AS result
	WHERE 
		location <= 20 && business = 1 && NOW() >= Openningtime && NOW() <= Closingtime )
	AS total_result;
    
 SELECT FOUND_ROWS()
 INTO numberofresult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_HistoryOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`108601505`@`192.168.56.1` PROCEDURE `sp_HistoryOrder`(
	IN getUserid INT,
    out numberofresult int
)
BEGIN
	SELECT 
	User_id AS user_id,
	Order_id AS order_id,
	Delivery_man_id AS deliveryman_id,
	Order_status AS order_status,
	Total_prize AS total_price
	FROM db_108601505.tbl_order
	WHERE User_id = getUserid;
    
    SELECT FOUND_ROWS()
    INTO numberofresult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`108601505`@`192.168.56.1` PROCEDURE `sp_Login`(
	IN getaccount varchar(64),
    IN gethashpwd varchar(64),
    out numberofresult int
)
BEGIN
	SELECT hashpwd,
	CASE
	WHEN gethashpwd = hashpwd THEN 'login succeed'
	ELSE 'login failed'
	END AS resultoflogin
	FROM
		(SELECT * FROM
			(SELECT User_id AS id
			FROM db_108601505.tbl_User
			WHERE User_account = getaccount)connection1
		INNER JOIN 
			`db_108601505`.tbl_User_credential
		ON id = User_id)
	AS result;

	select row_count()
    INTO numberofresult;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_RegisterUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`108601505`@`192.168.56.1` PROCEDURE `sp_RegisterUser`(
	IN getuseraccount varchar(64),
    IN getname varchar(64),
    IN getuseraddress varchar(64),
    IN getuserphone varchar(64),
    IN getlog_x int,
    IN getlog_y int,
    IN getsalt varchar(64),
    IN gethashpwd varchar(64),
    out numberofresult int
    
)
BEGIN
	INSERT INTO db_108601505.tbl_User(User_account,Name,User_address,User_phone_number,User_log_x,User_log_y,Create_datetime,salt)
	VALUES (getuseraccount,getname,getuseraddress,getuserphone,getlog_x,getlog_y,now(),getsalt);
    
    SET @result1 = row_count();
    SET @result = LAST_INSERT_ID();
    

	INSERT INTO db_108601505.tbl_User_credential (User_id,hashpwd,Create_datetime)
	VALUES (@result,gethashpwd,now());
    
    SET @result2 = row_count();

	SELECT (@result1+@result2)
	INTO numberofresult;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ResetNewPassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`108601505`@`192.168.56.1` PROCEDURE `sp_ResetNewPassword`(
	IN getuserid int,
    IN getsalt varchar(64),
    IN gethashpwd varchar(64),
    out numberofresult int
)
BEGIN
	UPDATE db_108601505.tbl_User 
    SET salt = getsalt,
    Create_datetime=now()
    WHERE User_id = getuserid;
    
    SET @result1 = row_count();
    
    UPDATE db_108601505.tbl_User_credential 
    SET hashpwd = gethashpwd
    WHERE User_id = getuserid;
 
	SET @result2 = row_count();
 
	SELECT (@result1+@result2)
    INTO numberofresult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SearchMealsOfRestaurant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`108601505`@`192.168.56.1` PROCEDURE `sp_SearchMealsOfRestaurant`(
	IN getmealsname varchar(45),
    out numberofresult INT
)
BEGIN
	SELECT
	Restaurant_name AS name,
	meals_name,
	price
	FROM
		(SELECT * FROM
			(SELECT 
			Restaurant_id AS mRest_id,
			Meals_name AS meals_name,
			Meals_price AS price
			FROM `db_108601505`.tbl_meals
			WHERE Meals_name LIKE CONCAT('%',getmealsname,'%')) Search_tbl
		INNER JOIN
			`db_108601505`.tbl_restaurant
		ON mRest_id = Restaurant_id)
	AS result;
    
SELECT FOUND_ROWS()
INTO numberofresult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_SearchStarRestaurant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`108601505`@`192.168.56.1` PROCEDURE `sp_SearchStarRestaurant`(
	IN getstarvalue int,
    out numberofresult int
)
sp:BEGIN
	IF getstarvalue = 0 
    THEN LEAVE sp;
    END IF;

	SELECT DISTINCT tbl_restaurant.Restaurant_id AS restaurant_id,Restaurant_name AS name,Restaurant_rating AS restaurant_rating FROM db_108601505.tbl_restaurant
		INNER JOIN db_108601505.tbl_meals ON tbl_restaurant.Restaurant_id = tbl_meals.Restaurant_id
		INNER JOIN db_108601505.tbl_ordered_details ON tbl_meals.Meals_id = tbl_ordered_details.Meals_id
		INNER JOIN db_108601505.tbl_order ON tbl_ordered_details.Order_id = tbl_order.Order_id
	WHERE Restaurant_rating >= getstarvalue;
    
    SELECT FOUND_ROWS()
    INTO numberofresult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdateOrderStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`108601505`@`192.168.56.1` PROCEDURE `sp_UpdateOrderStatus`(
	IN getorderid int,
    IN getnewstatus int,
    out numberofresult int
)
BEGIN
	UPDATE `db_108601505`.tbl_order SET `Order_status` = CASE
		WHEN getnewstatus <= Order_status THEN Order_status  
		WHEN getnewstatus > Order_status && getnewstatus <= 4 THEN getnewstatus
        ELSE 4
		END
	WHERE Order_id = getorderid; 
    
	SELECT ROW_COUNT()
    INTO numberofresult;
    
    SELECT 
    Order_id,
    Order_status
    From `db_108601505`.tbl_order
    WHERE Order_id = getorderid;
    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-17 21:48:02
