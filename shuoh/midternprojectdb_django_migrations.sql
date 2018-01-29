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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-01-15 11:27:34.442635'),(2,'auth','0001_initial','2018-01-15 11:27:39.636637'),(3,'admin','0001_initial','2018-01-15 11:27:41.205844'),(4,'admin','0002_logentry_remove_auto_add','2018-01-15 11:27:41.252721'),(5,'contenttypes','0002_remove_content_type_name','2018-01-15 11:27:41.974026'),(6,'auth','0002_alter_permission_name_max_length','2018-01-15 11:27:42.516064'),(7,'auth','0003_alter_user_email_max_length','2018-01-15 11:27:43.047315'),(8,'auth','0004_alter_user_username_opts','2018-01-15 11:27:43.078593'),(9,'auth','0005_alter_user_last_login_null','2018-01-15 11:27:43.448502'),(10,'auth','0006_require_contenttypes_0002','2018-01-15 11:27:43.479744'),(11,'auth','0007_alter_validators_add_error_messages','2018-01-15 11:27:43.526619'),(12,'auth','0008_alter_user_username_max_length','2018-01-15 11:27:44.650286'),(13,'auth','0009_alter_user_last_name_max_length','2018-01-15 11:27:45.209835'),(14,'sessions','0001_initial','2018-01-15 11:27:45.584835'),(15,'member','0001_initial','2018-01-22 01:40:39.693454'),(16,'member','0002_auto_20180121_1752','2018-01-22 01:40:40.718770'),(17,'item','0001_initial','2018-01-22 06:31:12.612798'),(18,'item','0002_item_item_image','2018-01-23 03:57:48.860616'),(19,'member','0003_auto_20180123_1404','2018-01-23 06:04:30.660195'),(20,'member','0004_member_user_about','2018-01-23 06:17:33.145633'),(21,'item','0003_item_user_email','2018-01-24 13:37:38.965029');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-26 11:38:33
