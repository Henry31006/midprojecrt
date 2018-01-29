-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: midternprojectdb
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(60) NOT NULL,
  `item_from` varchar(20) NOT NULL,
  `item_to` varchar(20) NOT NULL,
  `item_arrive_time` datetime(6) NOT NULL,
  `item_description` varchar(150) NOT NULL,
  `item_price` double NOT NULL,
  `item_price_currency` varchar(10) NOT NULL,
  `item_image` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,' electric guitar','us','tw','2018-01-29 16:00:00.000000','數量: 1台\r\n型號: the modern classic ES-355 gibson',50000,'TWD','ES5515SCBG1_FINISHES_FAMILY.jpg','test@gmail.com'),(2,'macbookpro','us','tw','2018-01-29 16:00:00.000000','數量: 1台\r\n規格: 13吋，全新',1799,'USD','MACBOOKPRO.jpg','test@gmail.com'),(3,'SEIKO-Premier SPC058J1','jp','tw','2018-01-28 16:00:00.000000','數量:1隻',12000,'TWD','953014682172879.jpg','test@gmail.com'),(4,'bacherovka','de','tw','2019-01-23 16:00:00.000000','數量: 一瓶250cc的\r\n他其實是捷克的酒= =',10,'EUR','bacherovka.jpg','test@gmail.com'),(5,'wer','nz','my','2018-01-25 16:00:00.000000','wer',564,'TWD','bacherovka.jpg','test@gmail.com'),(6,'123','hk','kr','2018-01-30 16:00:00.000000','qwe',50,'USD','MACBOOKPRO.jpg','a@b.c'),(7,'超炫泡雷射槍','us','cn','2018-05-02 16:00:00.000000','規格:獨一無二',10000,'USD','Images.jpg','TingKuan@gmail.com'),(8,'爵士鼓','nz','tw','2018-01-25 16:00:00.000000','COOL!!',100000,'NZD','drum.jpeg','Gracevanvan@gmail.com'),(9,'iPhone X','us','tw','2018-01-30 16:00:00.000000','iPhone X',20000,'TWD','apple-091217-iphone-x-4119.jpg','peter@gmail.com'),(10,'UA球鞋','us','tw','2018-02-05 16:00:00.000000','數量:1\r\n規格: 紅白、10號半\r\n其他: 請附發票',499,'USD','images (2).jpg','aaa@gmail.com'),(15,'二鍋頭','cn','tw','2018-01-29 16:00:00.000000','數量: 1罈',500,'CNY','20131209142114ecc92a19f0de821519b715d10cbf7c62.jpg','aaa@gmail.com');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-26 11:38:34
