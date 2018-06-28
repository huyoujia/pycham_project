-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: jiaju_db
-- ------------------------------------------------------
-- Server version	5.7.18-1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add permission',4,'add_permission'),(11,'Can change permission',4,'change_permission'),(12,'Can delete permission',4,'delete_permission'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add 轮播图',7,'add_banner'),(20,'Can change 轮播图',7,'change_banner'),(21,'Can delete 轮播图',7,'delete_banner'),(22,'Can add 分类',8,'add_category'),(23,'Can change 分类',8,'change_category'),(24,'Can delete 分类',8,'delete_category'),(25,'Can add 家居',9,'add_furnishing'),(26,'Can change 家居',9,'change_furnishing'),(27,'Can delete 家居',9,'delete_furnishing'),(28,'Can add 动态',10,'add_news'),(29,'Can change 动态',10,'change_news'),(30,'Can delete 动态',10,'delete_news'),(31,'Can add 动态分类',11,'add_newscategory'),(32,'Can change 动态分类',11,'change_newscategory'),(33,'Can delete 动态分类',11,'delete_newscategory');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$0gzdBdaI3SRS$EeYnN9vN7P7Tt5OyBz6GI+c84JeSS7yqp0f5spluOC4=','2018-06-26 11:34:45.702668',1,'huyoujia','','','111111@qq.com',1,1,'2018-06-20 12:05:09.542931');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-06-20 12:06:17.351090','1','轮播图1',1,'[{\"added\": {}}]',7,1),(2,'2018-06-20 12:06:35.428949','2','轮播图2',1,'[{\"added\": {}}]',7,1),(3,'2018-06-20 12:06:48.251590','3','轮播图3',1,'[{\"added\": {}}]',7,1),(4,'2018-06-20 12:09:11.026995','1','沙发',1,'[{\"added\": {}}]',8,1),(5,'2018-06-20 12:09:48.674348','2','床',1,'[{\"added\": {}}]',8,1),(6,'2018-06-20 12:10:29.526736','3','餐桌',1,'[{\"added\": {}}]',8,1),(7,'2018-06-21 07:32:58.841398','2','餐桌',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',8,1),(8,'2018-06-22 02:38:38.770551','1','沙发',2,'[{\"changed\": {\"fields\": [\"cimage\"]}}]',8,1),(9,'2018-06-22 02:38:53.972216','1','沙发',2,'[]',8,1),(10,'2018-06-22 02:39:08.036919','3','餐桌',2,'[{\"changed\": {\"fields\": [\"cimage\"]}}]',8,1),(11,'2018-06-22 02:39:57.615264','3','餐桌',2,'[{\"changed\": {\"fields\": [\"cimage\"]}}]',8,1),(12,'2018-06-22 02:40:21.303261','1','沙发',2,'[{\"changed\": {\"fields\": [\"cimage\"]}}]',8,1),(13,'2018-06-23 06:35:08.052429','1','沙发',1,'[{\"added\": {}}]',9,1),(14,'2018-06-24 10:59:23.071010','2','梦美斯宣',1,'[{\"added\": {}}]',9,1),(15,'2018-06-24 10:59:40.709133','3','维斯拉斯',1,'[{\"added\": {}}]',9,1),(16,'2018-06-24 11:10:07.704006','1','沙发',2,'[{\"changed\": {\"fields\": [\"bgimage\"]}}]',9,1),(17,'2018-06-24 11:10:32.998440','2','梦美斯宣',2,'[{\"changed\": {\"fields\": [\"bgimage\"]}}]',9,1),(18,'2018-06-24 11:10:44.982384','3','维斯拉斯',2,'[{\"changed\": {\"fields\": [\"bgimage\"]}}]',9,1),(19,'2018-06-24 11:24:52.232880','4','11',1,'[{\"added\": {}}]',9,1),(20,'2018-06-26 11:38:09.613131','4','布艺沙发',2,'[{\"changed\": {\"fields\": [\"btitle\"]}}]',9,1),(21,'2018-06-26 11:39:21.563562','1','化纤维沙发',2,'[{\"changed\": {\"fields\": [\"btitle\"]}}]',9,1),(22,'2018-06-26 12:25:54.201151','3','餐桌',3,'',8,1),(23,'2018-06-27 00:39:31.002430','5','1',1,'[{\"added\": {}}]',9,1),(24,'2018-06-27 00:39:55.305276','6','2',1,'[{\"added\": {}}]',9,1),(25,'2018-06-27 00:40:10.909439','7','3',1,'[{\"added\": {}}]',9,1),(26,'2018-06-27 00:40:23.460964','8','4',1,'[{\"added\": {}}]',9,1),(27,'2018-06-27 00:40:37.304358','9','5',1,'[{\"added\": {}}]',9,1),(28,'2018-06-27 00:40:49.811303','10','6',1,'[{\"added\": {}}]',9,1),(29,'2018-06-27 09:24:48.479840','1','筑梦动态',1,'[{\"added\": {}}]',11,1),(30,'2018-06-27 09:25:10.259285','1','公司新闻',1,'[{\"added\": {}}]',10,1),(31,'2018-06-27 09:26:02.125985','2','指导',1,'[{\"added\": {}}]',10,1),(32,'2018-06-27 09:26:20.535041','1','参观',2,'[{\"changed\": {\"fields\": [\"ntitle\"]}}]',10,1),(33,'2018-06-27 10:27:11.836968','3','指导',1,'[{\"added\": {}}]',10,1),(34,'2018-06-27 10:27:27.146686','2','访问',2,'[{\"changed\": {\"fields\": [\"ntitle\"]}}]',10,1),(35,'2018-06-27 10:27:36.180664','2','访问',2,'[]',10,1),(36,'2018-06-27 10:28:13.597439','4','喜讯',1,'[{\"added\": {}}]',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(4,'auth','permission'),(3,'auth','user'),(5,'contenttypes','contenttype'),(7,'homeapp','banner'),(8,'homeapp','category'),(9,'homeapp','furnishing'),(10,'homeapp','news'),(11,'homeapp','newscategory'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-06-20 11:58:09.463685'),(2,'auth','0001_initial','2018-06-20 11:58:10.076599'),(3,'admin','0001_initial','2018-06-20 11:58:10.210412'),(4,'admin','0002_logentry_remove_auto_add','2018-06-20 11:58:10.225835'),(5,'contenttypes','0002_remove_content_type_name','2018-06-20 11:58:10.314417'),(6,'auth','0002_alter_permission_name_max_length','2018-06-20 11:58:10.346486'),(7,'auth','0003_alter_user_email_max_length','2018-06-20 11:58:10.425739'),(8,'auth','0004_alter_user_username_opts','2018-06-20 11:58:10.442470'),(9,'auth','0005_alter_user_last_login_null','2018-06-20 11:58:10.502065'),(10,'auth','0006_require_contenttypes_0002','2018-06-20 11:58:10.506365'),(11,'auth','0007_alter_validators_add_error_messages','2018-06-20 11:58:10.522744'),(12,'auth','0008_alter_user_username_max_length','2018-06-20 11:58:10.608268'),(13,'homeapp','0001_initial','2018-06-20 11:58:10.730383'),(14,'sessions','0001_initial','2018-06-20 11:58:10.784203'),(15,'homeapp','0002_auto_20180622_1031','2018-06-22 02:31:36.117393'),(16,'homeapp','0003_furnishing_bgimage','2018-06-24 11:08:55.728892'),(17,'homeapp','0004_news_newcontent','2018-06-27 08:09:26.472185'),(18,'homeapp','0005_auto_20180627_1624','2018-06-27 08:24:32.886952');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('c3cp7zo9wp3my9a5xfql6o711a977xyv','YWFhYzNkMTJmMDZkYzY2YjI3NGE4MmEzMjNhMjMzNzBjZjRkZjEyYTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzBmM2M2Mjc1MjE3YWE1YjYxOTY2NDA1YTMyMjExZTY4ZjZjNmRjNCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-07-04 12:05:49.898927'),('j550035epefo2cyvcqowossfzlhi4d2f','YTQyZDk5YzgzZjAzZjJkMGUzYWQ4NWYwY2E0ZmI1ZjRlZWFjZTEzYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjMwZjNjNjI3NTIxN2FhNWI2MTk2NjQwNWEzMjIxMWU2OGY2YzZkYzQiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2018-07-10 11:34:45.762576');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homeapp_banner`
--

DROP TABLE IF EXISTS `homeapp_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homeapp_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `btitle` varchar(20) NOT NULL,
  `bimage` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homeapp_banner`
--

LOCK TABLES `homeapp_banner` WRITE;
/*!40000 ALTER TABLE `homeapp_banner` DISABLE KEYS */;
INSERT INTO `homeapp_banner` VALUES (1,'轮播图1','static/images/timg2_YuwmLcW.jpeg'),(2,'轮播图2','static/images/timg3_VUgWIyD.jpeg'),(3,'轮播图3','static/images/timg4_m5ARntS.jpeg');
/*!40000 ALTER TABLE `homeapp_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homeapp_category`
--

DROP TABLE IF EXISTS `homeapp_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homeapp_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `cimage` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homeapp_category`
--

LOCK TABLES `homeapp_category` WRITE;
/*!40000 ALTER TABLE `homeapp_category` DISABLE KEYS */;
INSERT INTO `homeapp_category` VALUES (1,'沙发','static/images/z_shafa_1XDx7fL.png'),(2,'餐桌','static/images/z_chuang_NSuPVKo.png');
/*!40000 ALTER TABLE `homeapp_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homeapp_furnishing`
--

DROP TABLE IF EXISTS `homeapp_furnishing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homeapp_furnishing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `btitle` varchar(30) NOT NULL,
  `category_id` int(11) NOT NULL,
  `Fimage` varchar(300) NOT NULL,
  `bgimage` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `homeapp_furnishing_category_id_504c6bd0_fk_homeapp_category_id` (`category_id`),
  CONSTRAINT `homeapp_furnishing_category_id_504c6bd0_fk_homeapp_category_id` FOREIGN KEY (`category_id`) REFERENCES `homeapp_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homeapp_furnishing`
--

LOCK TABLES `homeapp_furnishing` WRITE;
/*!40000 ALTER TABLE `homeapp_furnishing` DISABLE KEYS */;
INSERT INTO `homeapp_furnishing` VALUES (1,'化纤维沙发',1,'static/images/沙发_hEgBuan.jpg','static/images/z_shafazibg_CC75bVk.png'),(2,'梦美斯宣',2,'static/images/canzhuo.jpg','static/images/z_cpzl_cz_bg_LjhtpHS.png'),(3,'维斯拉斯',2,'static/images/can.jpg','static/images/z_cpzl_cz_bg_jISHiv3.png'),(4,'布艺沙发',1,'static/images/沙发2.jpg','static/images/z_shafazibg_NN5aMoT.png'),(5,'1',1,'static/images/沙发3.jpg','static/images/z_shafazibg_CSiHfND.png'),(6,'2',1,'static/images/沙发4.jpeg','static/images/z_shafazibg_2wAJmn0.png'),(7,'3',1,'static/images/沙发5.jpg','static/images/z_shafazibg_tVqFtfR.png'),(8,'4',1,'static/images/沙发6.jpg','static/images/z_shafazibg_40lV0WZ.png'),(9,'5',1,'static/images/沙发7.jpg','static/images/z_shafazibg_sXLFJJg.png'),(10,'6',1,'static/images/沙发8.jpeg','static/images/z_shafazibg_I0xuGrs.png');
/*!40000 ALTER TABLE `homeapp_furnishing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homeapp_news`
--

DROP TABLE IF EXISTS `homeapp_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homeapp_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ntitle` varchar(50) NOT NULL,
  `nimage` varchar(300) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `views` int(11) NOT NULL,
  `ncategory_id` int(11) NOT NULL,
  `newcontent` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `homeapp_news_ncategory_id_2474fa1c_fk_homeapp_newscategory_id` (`ncategory_id`),
  CONSTRAINT `homeapp_news_ncategory_id_2474fa1c_fk_homeapp_newscategory_id` FOREIGN KEY (`ncategory_id`) REFERENCES `homeapp_newscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homeapp_news`
--

LOCK TABLES `homeapp_news` WRITE;
/*!40000 ALTER TABLE `homeapp_news` DISABLE KEYS */;
INSERT INTO `homeapp_news` VALUES (1,'参观','static/images/动态1_sr8nvPQ.jpg','2018-06-27 09:16:00.000000',0,1,'神州高铁技术股份有限公司董事长王志全一行莅临公司进行参观调研'),(2,'访问','static/images/动态2.jpg','2018-06-27 09:25:00.000000',0,1,'公司董事长鲁方祥率队访问成都轨道交通集团'),(3,'指导','static/images/动态3.jpg','2018-06-27 10:25:00.000000',0,1,'经济运行与安全生产监管局领导莅临卡莱博尔调研指导'),(4,'喜讯','static/images/动态4.jpg','2018-06-27 10:27:00.000000',6,1,'【喜讯】卡莱博尔荣获2018年度成都市新经济百家重点培育企业称号');
/*!40000 ALTER TABLE `homeapp_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homeapp_newscategory`
--

DROP TABLE IF EXISTS `homeapp_newscategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homeapp_newscategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nctitle` varchar(50) NOT NULL,
  `ncimage` varchar(300) NOT NULL,
  `nccontent` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homeapp_newscategory`
--

LOCK TABLES `homeapp_newscategory` WRITE;
/*!40000 ALTER TABLE `homeapp_newscategory` DISABLE KEYS */;
INSERT INTO `homeapp_newscategory` VALUES (1,'筑梦动态','static/images/动态1.jpg','气温温热太阳一样');
/*!40000 ALTER TABLE `homeapp_newscategory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-28 10:14:22
