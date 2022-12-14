-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: day17
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `app_admin`
--

DROP TABLE IF EXISTS `app_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_admin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_admin`
--

LOCK TABLES `app_admin` WRITE;
/*!40000 ALTER TABLE `app_admin` DISABLE KEYS */;
INSERT INTO `app_admin` VALUES (3,'ye','0281089614cc29a1564b062fbf8ad458'),(4,'鍠滄鎵庝汉鐨勫皬鑳￠』','456'),(8,'鐜嬩簲','0281089614cc29a1564b062fbf8ad458'),(9,'璧垫煶','0281089614cc29a1564b062fbf8ad458'),(10,'鏉庡洓','0281089614cc29a1564b062fbf8ad458');
/*!40000 ALTER TABLE `app_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_department`
--

DROP TABLE IF EXISTS `app_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_department`
--

LOCK TABLES `app_department` WRITE;
/*!40000 ALTER TABLE `app_department` DISABLE KEYS */;
INSERT INTO `app_department` VALUES (6,'瀹ｄ紶閮?),(7,'鍏叧閮?),(8,'鐮斿彂閮?),(9,'鏁板瓧');
/*!40000 ALTER TABLE `app_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_prettynum`
--

DROP TABLE IF EXISTS `app_prettynum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_prettynum` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mobile` varchar(11) NOT NULL,
  `price` int NOT NULL,
  `level` smallint NOT NULL,
  `status` smallint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_prettynum`
--

LOCK TABLES `app_prettynum` WRITE;
/*!40000 ALTER TABLE `app_prettynum` DISABLE KEYS */;
INSERT INTO `app_prettynum` VALUES (10,'17806539038',10000,1,1),(11,'17806539036',0,2,2),(12,'12345678911',0,1,2),(13,'18855236947',10,3,2),(14,'18855236947',10,3,2),(15,'18855236947',10,3,2),(16,'18855236947',10,3,2),(17,'18855236947',10,3,2),(18,'18855236947',10,3,2),(19,'18855236947',10,3,2),(20,'18855236947',10,3,2),(21,'18855236947',10,3,2),(22,'18855236947',10,3,2),(23,'18855236947',10,3,2),(24,'18855236947',10,3,2),(25,'18855236947',10,3,2),(26,'18855236947',10,3,2),(27,'18855236947',10,3,2),(28,'18855236947',10,3,2),(29,'18855236947',10,3,2),(30,'18855236947',10,3,2),(31,'18855236947',10,3,2),(32,'18855236947',10,3,2),(33,'18855236947',10,3,2),(34,'18855236947',10,3,2),(35,'18855236947',10,3,2),(36,'18855236947',10,3,2),(37,'18855236947',10,3,2),(38,'18855236947',10,3,2),(39,'18855236947',10,3,2),(40,'18855236947',10,3,2),(41,'18855236947',10,3,2),(42,'18855236947',10,3,2),(43,'18855236947',10,3,2),(44,'18855236947',10,3,2),(45,'18855236947',10,3,2),(46,'18855236947',10,3,2),(47,'18855236947',10,3,2),(48,'18855236947',10,3,2),(49,'18855236947',10,3,2),(50,'18855236947',10,3,2),(51,'18855236947',10,3,2),(52,'18855236947',10,3,2),(53,'18855236947',10,3,2),(54,'18855236947',10,3,2),(55,'18855236947',10,3,2),(56,'18855236947',10,3,2),(57,'18855236947',10,3,2),(58,'18855236947',10,3,2),(59,'18855236947',10,3,2),(60,'18855236947',10,3,2),(61,'18855236947',10,3,2),(62,'18855236947',10,3,2),(63,'18855236947',10,3,2),(64,'18855236947',10,3,2),(65,'18855236947',10,3,2),(66,'18855236947',10,3,2),(67,'18855236947',10,3,2),(68,'18855236947',10,3,2),(69,'18855236947',10,3,2),(70,'18855236947',10,3,2),(71,'18855236947',10,3,2),(72,'18855236947',10,3,2),(73,'18855236947',10,3,2),(74,'18855236947',10,3,2),(75,'18855236947',10,3,2),(76,'18855236947',10,3,2),(77,'18855236947',10,3,2),(78,'18855236947',10,3,2),(79,'18855236947',10,3,2),(80,'18855236947',10,3,2),(81,'18855236947',10,3,2),(82,'18855236947',10,3,2),(83,'18855236947',10,3,2),(84,'18855236947',10,3,2),(85,'18855236947',10,3,2),(86,'18855236947',10,3,2),(87,'18855236947',10,3,2),(88,'18855236947',10,3,2),(89,'18855236947',10,3,2),(90,'18855236947',10,3,2),(91,'18855236947',10,3,2),(92,'18855236947',10,3,2),(93,'18855236947',10,3,2),(94,'18855236947',10,3,2),(95,'18855236947',10,3,2),(96,'18855236947',10,3,2),(97,'18855236947',10,3,2),(98,'18855236947',10,3,2),(99,'18855236947',10,3,2),(100,'18855236947',10,3,2),(101,'18855236947',10,3,2),(102,'18855236947',10,3,2),(103,'18855236947',10,3,2),(104,'18855236947',10,3,2),(105,'18855236947',10,3,2),(106,'18855236947',10,3,2),(107,'18855236947',10,3,2),(108,'18855236947',10,3,2),(109,'18855236947',10,3,2),(110,'18855236947',10,3,2),(111,'18855236947',10,3,2),(112,'18855236947',10,3,2),(113,'18855236947',10,3,2),(114,'18855236947',10,3,2),(115,'18855236947',10,3,2),(116,'18855236947',10,3,2),(117,'18855236947',10,3,2),(118,'18855236947',10,3,2),(119,'18855236947',10,3,2),(120,'18855236947',10,3,2),(121,'18855236947',10,3,2),(122,'18855236947',10,3,2),(123,'18855236947',10,3,2),(124,'18855236947',10,3,2),(125,'18855236947',10,3,2),(126,'18855236947',10,3,2),(127,'18855236947',10,3,2),(128,'18855236947',10,3,2),(129,'18855236947',10,3,2),(130,'18855236947',10,3,2),(131,'18855236947',10,3,2),(132,'18855236947',10,3,2),(133,'18855236947',10,3,2),(134,'18855236947',10,3,2),(135,'18855236947',10,3,2),(136,'18855236947',10,3,2),(137,'18855236947',10,3,2),(138,'18855236947',10,3,2),(139,'18855236947',10,3,2),(140,'18855236947',10,3,2),(141,'18855236947',10,3,2),(142,'18855236947',10,3,2),(143,'18855236947',10,3,2),(144,'18855236947',10,3,2),(145,'18855236947',10,3,2),(146,'18855236947',10,3,2),(147,'18855236947',10,3,2),(148,'18855236947',10,3,2),(149,'18855236947',10,3,2),(150,'18855236947',10,3,2),(151,'18855236947',10,3,2),(152,'18855236947',10,3,2),(153,'18855236947',10,3,2),(154,'18855236947',10,3,2),(155,'18855236947',10,3,2),(156,'18855236947',10,3,2),(157,'18855236947',10,3,2),(158,'18855236947',10,3,2),(159,'18855236947',10,3,2),(160,'18855236947',10,3,2),(161,'18855236947',10,3,2),(162,'18855236947',10,3,2),(163,'18855236947',10,3,2),(164,'18855236947',10,3,2),(165,'18855236947',10,3,2),(166,'18855236947',10,3,2),(167,'18855236947',10,3,2),(168,'18855236947',10,3,2),(169,'18855236947',10,3,2),(170,'18855236947',10,3,2),(171,'18855236947',10,3,2),(172,'18855236947',10,3,2),(173,'18855236947',10,3,2),(174,'18855236947',10,3,2),(175,'18855236947',10,3,2),(176,'18855236947',10,3,2),(177,'18855236947',10,3,2),(178,'18855236947',10,3,2),(179,'18855236947',10,3,2),(180,'18855236947',10,3,2),(181,'18855236947',10,3,2),(182,'18855236947',10,3,2),(183,'18855236947',10,3,2),(184,'18855236947',10,3,2),(185,'18855236947',10,3,2),(186,'18855236947',10,3,2),(187,'18855236947',10,3,2),(188,'18855236947',10,3,2),(189,'18855236947',10,3,2),(190,'18855236947',10,3,2),(191,'18855236947',10,3,2),(192,'18855236947',10,3,2),(193,'18855236947',10,3,2),(194,'18855236947',10,3,2),(195,'18855236947',10,3,2),(196,'18855236947',10,3,2),(197,'18855236947',10,3,2),(198,'18855236947',10,3,2),(199,'18855236947',10,3,2),(200,'18855236947',10,3,2),(201,'18855236947',10,3,2),(202,'18855236947',10,3,2),(203,'18855236947',10,3,2),(204,'18855236947',10,3,2),(205,'18855236947',10,3,2),(206,'18855236947',10,3,2),(207,'18855236947',10,3,2),(208,'18855236947',10,3,2),(209,'18855236947',10,3,2),(210,'18855236947',10,3,2),(211,'18855236947',10,3,2),(212,'18855236947',10,3,2),(213,'18855236947',10,3,2),(214,'18855236947',10,3,2),(215,'18855236947',10,3,2),(216,'18855236947',10,3,2),(217,'18855236947',10,3,2),(218,'18855236947',10,3,2),(219,'18855236947',10,3,2),(220,'18855236947',10,3,2),(221,'18855236947',10,3,2),(222,'18855236947',10,3,2),(223,'18855236947',10,3,2),(224,'18855236947',10,3,2),(225,'18855236947',10,3,2),(226,'18855236947',10,3,2),(227,'18855236947',10,3,2),(228,'18855236947',10,3,2),(229,'18855236947',10,3,2),(230,'18855236947',10,3,2),(231,'18855236947',10,3,2),(232,'18855236947',10,3,2),(233,'18855236947',10,3,2),(234,'18855236947',10,3,2),(235,'18855236947',10,3,2),(236,'18855236947',10,3,2),(237,'18855236947',10,3,2),(238,'18855236947',10,3,2),(239,'18855236947',10,3,2),(240,'18855236947',10,3,2),(241,'18855236947',10,3,2),(242,'18855236947',10,3,2),(243,'18855236947',10,3,2),(244,'18855236947',10,3,2),(245,'18855236947',10,3,2),(246,'18855236947',10,3,2),(247,'18855236947',10,3,2),(248,'18855236947',10,3,2),(249,'18855236947',10,3,2),(250,'18855236947',10,3,2),(251,'18855236947',10,3,2),(252,'18855236947',10,3,2),(253,'18855236947',10,3,2),(254,'18855236947',10,3,2),(255,'18855236947',10,3,2),(256,'18855236947',10,3,2),(257,'18855236947',10,3,2),(258,'18855236947',10,3,2),(259,'18855236947',10,3,2),(260,'18855236947',10,3,2),(261,'18855236947',10,3,2),(262,'18855236947',10,3,2),(263,'18855236947',10,3,2),(264,'18855236947',10,3,2),(265,'18855236947',10,3,2),(266,'18855236947',10,3,2),(267,'18855236947',10,3,2),(268,'18855236947',10,3,2),(269,'18855236947',10,3,2),(270,'18855236947',10,3,2),(271,'18855236947',10,3,2),(272,'18855236947',10,3,2),(273,'18855236947',10,3,2),(274,'18855236947',10,3,2),(275,'18855236947',10,3,2),(276,'18855236947',10,3,2),(277,'18855236947',10,3,2),(278,'18855236947',10,3,2),(279,'18855236947',10,3,2),(280,'18855236947',10,3,2),(281,'18855236947',10,3,2),(282,'18855236947',10,3,2),(283,'18855236947',10,3,2),(284,'18855236947',10,3,2),(285,'18855236947',10,3,2),(286,'18855236947',10,3,2),(287,'18855236947',10,3,2),(288,'18855236947',10,3,2),(289,'18855236947',10,3,2),(290,'18855236947',10,3,2),(291,'18855236947',10,3,2),(292,'18855236947',10,3,2),(293,'18855236947',10,3,2),(294,'18855236947',10,3,2),(295,'18855236947',10,3,2),(296,'18855236947',10,3,2),(297,'18855236947',10,3,2),(298,'18855236947',10,3,2),(299,'18855236947',10,3,2),(300,'18855236947',10,3,2),(301,'18855236947',10,3,2),(302,'18855236947',10,3,2),(303,'18855236947',10,3,2),(304,'18855236947',10,3,2),(305,'18855236947',10,3,2),(306,'18855236947',10,3,2),(307,'18855236947',10,3,2),(308,'18855236947',10,3,2),(309,'18855236947',10,3,2),(310,'18855236947',10,3,2),(311,'18855236947',10,3,2),(312,'18855236947',10,3,2);
/*!40000 ALTER TABLE `app_prettynum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_userinfo`
--

DROP TABLE IF EXISTS `app_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_userinfo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `password` varchar(64) NOT NULL,
  `age` int NOT NULL,
  `account` decimal(10,2) NOT NULL,
  `create_time` date NOT NULL,
  `gender` smallint NOT NULL,
  `depart_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_userinfo_depart_id_7c54c2f8_fk_app_department_id` (`depart_id`),
  CONSTRAINT `app_userinfo_depart_id_7c54c2f8_fk_app_department_id` FOREIGN KEY (`depart_id`) REFERENCES `app_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_userinfo`
--

LOCK TABLES `app_userinfo` WRITE;
/*!40000 ALTER TABLE `app_userinfo` DISABLE KEYS */;
INSERT INTO `app_userinfo` VALUES (1,'Vigen','123',23,45648.00,'2020-01-01',1,7),(8,'鍙跺鍋?,'456',56,0.00,'2022-11-01',1,7),(9,'鍙跺鍋?,'4564',56,0.00,'2011-08-05',2,7),(10,'鍙跺鍋?,'4564',56,0.00,'2011-08-05',1,9);
/*!40000 ALTER TABLE `app_userinfo` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add department',7,'add_department'),(26,'Can change department',7,'change_department'),(27,'Can delete department',7,'delete_department'),(28,'Can view department',7,'view_department'),(29,'Can add user info',8,'add_userinfo'),(30,'Can change user info',8,'change_userinfo'),(31,'Can delete user info',8,'delete_userinfo'),(32,'Can view user info',8,'view_userinfo'),(33,'Can add pretty num',9,'add_prettynum'),(34,'Can change pretty num',9,'change_prettynum'),(35,'Can delete pretty num',9,'delete_prettynum'),(36,'Can view pretty num',9,'view_prettynum'),(37,'Can add admin',10,'add_admin'),(38,'Can change admin',10,'change_admin'),(39,'Can delete admin',10,'delete_admin'),(40,'Can view admin',10,'view_admin');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(10,'app','admin'),(7,'app','department'),(9,'app','prettynum'),(8,'app','userinfo'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-11-16 14:05:18.790208'),(2,'auth','0001_initial','2022-11-16 14:05:19.492191'),(3,'admin','0001_initial','2022-11-16 14:05:19.632007'),(4,'admin','0002_logentry_remove_auto_add','2022-11-16 14:05:19.643009'),(5,'admin','0003_logentry_add_action_flag_choices','2022-11-16 14:05:19.652005'),(6,'app','0001_initial','2022-11-16 14:05:19.745145'),(7,'contenttypes','0002_remove_content_type_name','2022-11-16 14:05:19.853208'),(8,'auth','0002_alter_permission_name_max_length','2022-11-16 14:05:19.912510'),(9,'auth','0003_alter_user_email_max_length','2022-11-16 14:05:19.934662'),(10,'auth','0004_alter_user_username_opts','2022-11-16 14:05:19.942763'),(11,'auth','0005_alter_user_last_login_null','2022-11-16 14:05:19.991246'),(12,'auth','0006_require_contenttypes_0002','2022-11-16 14:05:20.000248'),(13,'auth','0007_alter_validators_add_error_messages','2022-11-16 14:05:20.013780'),(14,'auth','0008_alter_user_username_max_length','2022-11-16 14:05:20.076945'),(15,'auth','0009_alter_user_last_name_max_length','2022-11-16 14:05:20.132573'),(16,'auth','0010_alter_group_name_max_length','2022-11-16 14:05:20.150578'),(17,'auth','0011_update_proxy_permissions','2022-11-16 14:05:20.161660'),(18,'auth','0012_alter_user_first_name_max_length','2022-11-16 14:05:20.212205'),(19,'sessions','0001_initial','2022-11-16 14:05:20.240175'),(20,'app','0002_prettynum_alter_userinfo_account_and_more','2022-11-17 10:28:56.742609'),(21,'app','0003_admin','2022-11-18 03:57:01.027171');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1sj0oj6r3hv91fujfh5325725c6ukzje','eyJpbmZvIjp7ImlkIjo4LCJuYW1lIjoiXHU3MzhiXHU0ZTk0In19:1ow1Kf:Oc87FMoUk1UJwFFMO_IRG_XgqypqCDmhKU1dm9aApIs','2022-12-02 13:23:01.742864'),('4pnu113ekn188tvrjmxinrgx7j5zzg6z','eyJpbWFnZV9jb2RlIjoiS0VIQVgiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1ow4OW:LRi-FQfhglzHnuNQ9xxkDDVwycTJ8vS93egqfHTyF7k','2022-11-18 16:40:12.342758'),('6evgl8ztaqkca0l4juiwlf9dr637js65','eyJpbmZvIjp7ImlkIjozLCJuYW1lIjoieWUifX0:1ow2Ei:XGqN_C3gbDgZ6wosLXKvWp1UgQwbr3sQo-mPtkdcT2Q','2022-12-02 14:20:56.970782'),('7qf03o583rmbyydxhfks9p04xwcuczlv','eyJpbWFnZV9jb2RlIjoiS01BQVEiLCJfc2Vzc2lvbl9leHBpcnkiOjYwLCJpbmZvIjp7ImlkIjozLCJuYW1lIjoieWUifX0:1owFlu:U4rK0APBApx7SJJ7geyilse0Nsl8QK26DpTprI3Uhek','2022-11-19 04:49:06.579172'),('9cg03skh93fqbdq3w1pn391yxe6w296b','eyJpbWFnZV9jb2RlIjoiUUNHVEUiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1ow4bY:smHqJumXDunY85DNEGTgUztF5E0f7J_xKQwcos-Fi5I','2022-11-18 16:53:40.771254'),('bkq4vbhwi5ad21b37mipy2ad8w8uyqn0','eyJpbmZvIjp7ImlkIjozLCJuYW1lIjoieWUifX0:1ow2Rm:2BZ2JWHBK-Zef5KCbyZvAIg1GYOhgJnQ_0jrk276_9Q','2022-12-02 14:34:26.435769'),('cccyhp8uh2pnsqpf3oajqu6rhw2tgtpi','eyJpbWFnZV9jb2RlIjoiTlpKSFEiLCJfc2Vzc2lvbl9leHBpcnkiOjYwNDgwMCwiaW5mbyI6eyJpZCI6MywibmFtZSI6InllIn19:1owJUr:vd1nuIbkm80ZOmNM0s933Mc-dm1jJN5YRG3uCpOSO9Q','2022-11-26 08:46:45.579048'),('h4z27ptstrdwa1mtcj6eeqi68m0aiwwm','eyJpbmZvIjp7ImlkIjozLCJuYW1lIjoieWUifX0:1ow2Oi:vDo9PiLSrI4pYPS854E-MpyolzZUc2mqAnsbeVNitwE','2022-12-02 14:31:16.609038'),('jp0x6wxf3qgq9v353ru1ceesw7uupkue','eyJpbWFnZV9jb2RlIjoiR05JSlgiLCJfc2Vzc2lvbl9leHBpcnkiOjYwNDgwMCwiaW5mbyI6eyJpZCI6MywibmFtZSI6InllIn19:1owImC:s9mSPEIRNEsEo9HamTVFYrsiw4fVHX-NK84uiRB7ZNY','2022-11-26 08:00:36.710320'),('lp6jfi3ve5nux0d5q1m07qxf8386ian1','eyJpbWFnZV9jb2RlIjoiVkdRRlQiLCJfc2Vzc2lvbl9leHBpcnkiOjYwNDgwMCwiaW5mbyI6eyJpZCI6MywibmFtZSI6InllIn19:1owFo3:9f4MYDDP6DsOI9_GVX2I51_D4g49HGIrjC5O2_G4Xqo','2022-11-26 04:50:19.113915'),('nh7ui8josgykhr7ms81vnc6hxjqj41vl','eyJpbWFnZV9jb2RlIjoiQ0lUS1ciLCJfc2Vzc2lvbl9leHBpcnkiOjYwLCJpbmZvIjp7ImlkIjozLCJuYW1lIjoieWUifX0:1ow4Zn:pr5ry5PlPRA2XCvL0ZXJa3Yl5S8bFda6He8uocKqFn8','2022-11-18 16:51:51.968215'),('tevrk7db5njt606bq4m8cxk36vtcy5jl','eyJpbmZvIjp7ImlkIjozLCJuYW1lIjoieWUifX0:1ow2SE:EEtH4NHgSSWXS0Q5CPlsIa3D49vCH4PpnmlUEVgRjUM','2022-12-02 14:34:54.727659');
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

-- Dump completed on 2022-11-19 17:12:53
