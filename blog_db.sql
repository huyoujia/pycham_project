-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: blog_db
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add 评论',6,'add_comment'),(17,'Can change 评论',6,'change_comment'),(18,'Can delete 评论',6,'delete_comment'),(19,'Can add 友情链接',7,'add_friendlylink'),(20,'Can change 友情链接',7,'change_friendlylink'),(21,'Can delete 友情链接',7,'delete_friendlylink'),(22,'Can add 标签',8,'add_tags'),(23,'Can change 标签',8,'change_tags'),(24,'Can delete 标签',8,'delete_tags'),(25,'Can add 博客',9,'add_post'),(26,'Can change 博客',9,'change_post'),(27,'Can delete 博客',9,'delete_post'),(28,'Can add 轮播图',10,'add_banner'),(29,'Can change 轮播图',10,'change_banner'),(30,'Can delete 轮播图',10,'delete_banner'),(31,'Can add 博客分类',11,'add_blogcategory'),(32,'Can change 博客分类',11,'change_blogcategory'),(33,'Can delete 博客分类',11,'delete_blogcategory'),(34,'Can add 邮箱验证',12,'add_emailverifyrecord'),(35,'Can change 邮箱验证',12,'change_emailverifyrecord'),(36,'Can delete 邮箱验证',12,'delete_emailverifyrecord'),(37,'Can add user',13,'add_bloguser'),(38,'Can change user',13,'change_bloguser'),(39,'Can delete user',13,'delete_bloguser');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogapp_banner`
--

DROP TABLE IF EXISTS `blogapp_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogapp_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `link_url` varchar(150) NOT NULL,
  `idx` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogapp_banner`
--

LOCK TABLES `blogapp_banner` WRITE;
/*!40000 ALTER TABLE `blogapp_banner` DISABLE KEYS */;
INSERT INTO `blogapp_banner` VALUES (1,'轮播图1','static/images/banner/b1_RqRZ6v0.jpg','http://www.baidu.com',0,1),(2,'轮播图2','static/images/banner/b2_EKSoM0s.jpg','http://www.qq.com',1,0);
/*!40000 ALTER TABLE `blogapp_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogapp_blogcategory`
--

DROP TABLE IF EXISTS `blogapp_blogcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogapp_blogcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogapp_blogcategory`
--

LOCK TABLES `blogapp_blogcategory` WRITE;
/*!40000 ALTER TABLE `blogapp_blogcategory` DISABLE KEYS */;
INSERT INTO `blogapp_blogcategory` VALUES (1,'王俊凯');
/*!40000 ALTER TABLE `blogapp_blogcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogapp_comment`
--

DROP TABLE IF EXISTS `blogapp_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogapp_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(400) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blogapp_comment_post_id_b709c5d9_fk_blogapp_post_id` (`post_id`),
  KEY `blogapp_comment_user_id_136384d7_fk_userapp_bloguser_id` (`user_id`),
  CONSTRAINT `blogapp_comment_post_id_b709c5d9_fk_blogapp_post_id` FOREIGN KEY (`post_id`) REFERENCES `blogapp_post` (`id`),
  CONSTRAINT `blogapp_comment_user_id_136384d7_fk_userapp_bloguser_id` FOREIGN KEY (`user_id`) REFERENCES `userapp_bloguser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogapp_comment`
--

LOCK TABLES `blogapp_comment` WRITE;
/*!40000 ALTER TABLE `blogapp_comment` DISABLE KEYS */;
INSERT INTO `blogapp_comment` VALUES (1,'安静 晴天  超喜欢的','2018-06-08 07:58:00.000000',3,1),(2,'安静 晴天  超喜欢的','2018-06-08 07:59:00.000000',3,1);
/*!40000 ALTER TABLE `blogapp_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogapp_friendlylink`
--

DROP TABLE IF EXISTS `blogapp_friendlylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogapp_friendlylink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `link` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogapp_friendlylink`
--

LOCK TABLES `blogapp_friendlylink` WRITE;
/*!40000 ALTER TABLE `blogapp_friendlylink` DISABLE KEYS */;
INSERT INTO `blogapp_friendlylink` VALUES (1,'百度','http://www.baidu.com'),(2,'腾讯','http://www.qq.com');
/*!40000 ALTER TABLE `blogapp_friendlylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogapp_post`
--

DROP TABLE IF EXISTS `blogapp_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogapp_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `content` varchar(4000) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `views` int(11) NOT NULL,
  `is_recomment` tinyint(1) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blogapp_post_category_id_c475debb_fk_blogapp_blogcategory_id` (`category_id`),
  KEY `blogapp_post_user_id_f3e20e29_fk_userapp_bloguser_id` (`user_id`),
  CONSTRAINT `blogapp_post_category_id_c475debb_fk_blogapp_blogcategory_id` FOREIGN KEY (`category_id`) REFERENCES `blogapp_blogcategory` (`id`),
  CONSTRAINT `blogapp_post_user_id_f3e20e29_fk_userapp_bloguser_id` FOREIGN KEY (`user_id`) REFERENCES `userapp_bloguser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogapp_post`
--

LOCK TABLES `blogapp_post` WRITE;
/*!40000 ALTER TABLE `blogapp_post` DISABLE KEYS */;
INSERT INTO `blogapp_post` VALUES (1,'王俊凯个人信息','王俊凯，1999年9月21日生于中国重庆，中国内地流行乐男歌手、影视演员、TFBOYS队长。2010年底成为TF家族练习生 [1]  一年后其他学员陆续退出，只有王俊凯坚持下来，TF家族因此得以存续。2012年2月，翻唱《囚鸟》被优酷等网站推荐走进大众视野。2013年8月6日，与王源、易烊千玺组成组合TFBOYS正式出道，王俊凯担任组合队长 [2]  。2015年5月，王俊凯参加在人民大会堂举办的共青团中央优秀青年座谈会 [3]  ；7月参加“中华全国学生联合会第26次代表大会”，同时兼任学生会副会长和五四优秀青年并登上当日新闻联播报道 [4]  。','2018-06-08 07:44:00.000000','static/image/post/7_soPosNP.jpg',200,1,1,1),(2,'《高能》王俊凯弹跳力破纪录 董子健单腿站技压众人','王俊凯弹跳力惊人，超强进击变身“小飞侠” 　　采青即舞狮过程中“狮子”通过跳跃猎取悬挂于高处“利是”。该动作是舞狮活动的高潮，需要表演者通过训练来掌握弹跳力和准确性。而为了训练少年们，本期节目也设置了“飞狮采青”环节，让他们各自选择自己想要挑战的距离，然后通过助跑和跳跃达到预期距离并踢落悬挂于半空中的道具。 　　一向运动神经出色的王俊凯在之前的“校园主播挑战赛”就凭借出色的弹跳力获得队友喝彩，而此次他为了团队的集体荣誉，挑战了3.6米超远距离！为了完成挑战，王俊凯在助跑阶段就提高速度，抵达起跳线之后纵身一跃，化身“小飞侠”。在半空中，王俊凯更轻舒长腿，一记飞踢踢落道具，赢得现场一片惊呼。被王俊凯踢中的道具更直接飞出赛场，足见其弹跳的力度之大，而如此惊人的成绩能否让其所在的队伍获胜呢？','2018-06-08 07:47:00.000000','static/image/post/10.jpg',123,1,1,1),(3,'单曲','单曲 歌曲名称（歌曲说明）	发行时间 圆梦一代 （与中国长安网、长安剑合作歌曲）	2018-05-04 我在诛仙逍遥涧 (《诛仙》游戏主题曲) （个人单曲）	2018-03-28 雾中列车 （电影《解忧杂货店》宣传曲-与李健合唱）	2017-12-25 躲猫猫 （组合）	2017-12-15 让我留在你身边(Live) （王俊凯18岁karryon成年礼live专辑）	2017-09-25 经典老歌串烧(Live) （王俊凯18岁karryon成年礼live专辑）	2017-09-25 给未来的自己(Live) （王俊凯18岁karryon成年礼live专辑）	2017-09-25 冷暖 （个人单曲-《王牌特工2:黄金圈》中国地区推广曲）	2017-09-24 焕蓝·未来(Karry On) （个人单曲-王俊凯18岁生日成年礼主题曲）	2017-09-23 我们的时光 （组合）	2017-08-10','2018-06-08 07:48:00.000000','static/image/post/11.jpg',234,0,1,1);
/*!40000 ALTER TABLE `blogapp_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogapp_post_tags`
--

DROP TABLE IF EXISTS `blogapp_post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogapp_post_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blogapp_post_tags_post_id_tags_id_07f7dfae_uniq` (`post_id`,`tags_id`),
  KEY `blogapp_post_tags_tags_id_9b78c133_fk_blogapp_tags_id` (`tags_id`),
  CONSTRAINT `blogapp_post_tags_post_id_ac6aba5d_fk_blogapp_post_id` FOREIGN KEY (`post_id`) REFERENCES `blogapp_post` (`id`),
  CONSTRAINT `blogapp_post_tags_tags_id_9b78c133_fk_blogapp_tags_id` FOREIGN KEY (`tags_id`) REFERENCES `blogapp_tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogapp_post_tags`
--

LOCK TABLES `blogapp_post_tags` WRITE;
/*!40000 ALTER TABLE `blogapp_post_tags` DISABLE KEYS */;
INSERT INTO `blogapp_post_tags` VALUES (4,1,2),(2,2,1),(3,3,1);
/*!40000 ALTER TABLE `blogapp_post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogapp_tags`
--

DROP TABLE IF EXISTS `blogapp_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogapp_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogapp_tags`
--

LOCK TABLES `blogapp_tags` WRITE;
/*!40000 ALTER TABLE `blogapp_tags` DISABLE KEYS */;
INSERT INTO `blogapp_tags` VALUES (1,'王俊凯'),(2,'小凯');
/*!40000 ALTER TABLE `blogapp_tags` ENABLE KEYS */;
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
  KEY `django_admin_log_user_id_c564eba6_fk_userapp_bloguser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_userapp_bloguser_id` FOREIGN KEY (`user_id`) REFERENCES `userapp_bloguser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-06-08 07:44:26.043260','1','王俊凯',1,'[{\"added\": {}}]',11,1),(2,'2018-06-08 07:44:37.178954','1','王俊凯',1,'[{\"added\": {}}]',8,1),(3,'2018-06-08 07:47:08.811861','1','王俊凯个人信息',1,'[{\"added\": {}}]',9,1),(4,'2018-06-08 07:48:08.544793','2','《高能》王俊凯弹跳力破纪录 董子健单腿站技压众人',1,'[{\"added\": {}}]',9,1),(5,'2018-06-08 07:49:44.876684','3','单曲',1,'[{\"added\": {}}]',9,1),(6,'2018-06-08 07:52:18.374970','1','王俊凯个人信息',2,'[{\"changed\": {\"fields\": [\"cover\"]}}]',9,1),(7,'2018-06-08 07:52:22.259623','1','王俊凯个人信息',2,'[{\"changed\": {\"fields\": [\"cover\"]}}]',9,1),(8,'2018-06-08 07:52:30.910961','2','《高能》王俊凯弹跳力破纪录 董子健单腿站技压众人',2,'[{\"changed\": {\"fields\": [\"cover\"]}}]',9,1),(9,'2018-06-08 07:52:38.117034','3','单曲',2,'[{\"changed\": {\"fields\": [\"cover\"]}}]',9,1),(10,'2018-06-08 07:55:03.655065','1','轮播图1',1,'[{\"added\": {}}]',10,1),(11,'2018-06-08 07:55:36.128693','2','轮播图2',1,'[{\"added\": {}}]',10,1),(12,'2018-06-08 07:58:26.858129','1','百度',1,'[{\"added\": {}}]',7,1),(13,'2018-06-08 07:58:35.418741','2','腾讯',1,'[{\"added\": {}}]',7,1),(14,'2018-06-08 07:59:13.904626','1','单曲',1,'[{\"added\": {}}]',6,1),(15,'2018-06-08 07:59:26.417211','2','单曲',1,'[{\"added\": {}}]',6,1),(16,'2018-06-08 08:38:17.950374','2','小凯',1,'[{\"added\": {}}]',8,1),(17,'2018-06-08 08:38:32.168696','1','王俊凯个人信息',2,'[]',9,1),(18,'2018-06-13 09:21:43.241345','5','panzhiwei',3,'',13,6),(19,'2018-06-13 09:21:43.255816','4','an',3,'',13,6),(20,'2018-06-13 09:21:43.262467','3','duan',3,'',13,6),(21,'2018-06-13 09:21:43.267473','2','hu',3,'',13,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(10,'blogapp','banner'),(11,'blogapp','blogcategory'),(6,'blogapp','comment'),(7,'blogapp','friendlylink'),(9,'blogapp','post'),(8,'blogapp','tags'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(13,'userapp','bloguser'),(12,'userapp','emailverifyrecord');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-06-08 06:51:07.217941'),(2,'contenttypes','0002_remove_content_type_name','2018-06-08 06:51:07.273168'),(3,'auth','0001_initial','2018-06-08 06:51:07.444693'),(4,'auth','0002_alter_permission_name_max_length','2018-06-08 06:51:07.477138'),(5,'auth','0003_alter_user_email_max_length','2018-06-08 06:51:07.489736'),(6,'auth','0004_alter_user_username_opts','2018-06-08 06:51:07.502526'),(7,'auth','0005_alter_user_last_login_null','2018-06-08 06:51:07.517093'),(8,'auth','0006_require_contenttypes_0002','2018-06-08 06:51:07.524537'),(9,'auth','0007_alter_validators_add_error_messages','2018-06-08 06:51:07.534551'),(10,'auth','0008_alter_user_username_max_length','2018-06-08 06:51:07.544544'),(11,'userapp','0001_initial','2018-06-08 06:51:07.764448'),(12,'admin','0001_initial','2018-06-08 06:51:07.840329'),(13,'admin','0002_logentry_remove_auto_add','2018-06-08 06:51:07.859704'),(14,'blogapp','0001_initial','2018-06-08 06:51:08.293298'),(15,'sessions','0001_initial','2018-06-08 06:51:08.321893');
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
INSERT INTO `django_session` VALUES ('n9n34yr9o3yicw9ci4e35t80gshg2z6f','MThiMThmZmU2MDU0ZGFjNmRlYzFhYmJjYjM3YWRkYzQ0MzIyNDlkNzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijk2OTZiOGViYzNkODFmMDdkZmRkMTg1ODVmODdmYmFkMDVlMmExNGMiLCJfYXV0aF91c2VyX2lkIjoiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2018-06-27 09:20:53.574450');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userapp_bloguser`
--

DROP TABLE IF EXISTS `userapp_bloguser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userapp_bloguser` (
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
  `nikename` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userapp_bloguser`
--

LOCK TABLES `userapp_bloguser` WRITE;
/*!40000 ALTER TABLE `userapp_bloguser` DISABLE KEYS */;
INSERT INTO `userapp_bloguser` VALUES (1,'pbkdf2_sha256$36000$UwnLtq4SEX4F$x0i1haYreN9RjNuQ9lQkj3jSX5wEjxn+y1+esYfFRFw=','2018-06-08 07:38:24.881046',1,'huyoujia','','','123456@qq.com',1,1,'2018-06-08 07:38:01.766621',''),(6,'pbkdf2_sha256$36000$jQYZ200kzCwi$C37uGQ1uJDd1YTbFpQbf+q+a7slUOljB999UBoxoCkc=','2018-06-13 09:20:53.567239',1,'anhuafeng','','','123456@qq.com',1,1,'2018-06-13 09:20:32.464869','');
/*!40000 ALTER TABLE `userapp_bloguser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userapp_bloguser_groups`
--

DROP TABLE IF EXISTS `userapp_bloguser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userapp_bloguser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bloguser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userapp_bloguser_groups_bloguser_id_group_id_3b320c4e_uniq` (`bloguser_id`,`group_id`),
  KEY `userapp_bloguser_groups_group_id_6521ba89_fk_auth_group_id` (`group_id`),
  CONSTRAINT `userapp_bloguser_gro_bloguser_id_f42c4df1_fk_userapp_b` FOREIGN KEY (`bloguser_id`) REFERENCES `userapp_bloguser` (`id`),
  CONSTRAINT `userapp_bloguser_groups_group_id_6521ba89_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userapp_bloguser_groups`
--

LOCK TABLES `userapp_bloguser_groups` WRITE;
/*!40000 ALTER TABLE `userapp_bloguser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `userapp_bloguser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userapp_bloguser_user_permissions`
--

DROP TABLE IF EXISTS `userapp_bloguser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userapp_bloguser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bloguser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userapp_bloguser_user_pe_bloguser_id_permission_i_9d7c9e6e_uniq` (`bloguser_id`,`permission_id`),
  KEY `userapp_bloguser_use_permission_id_e95be918_fk_auth_perm` (`permission_id`),
  CONSTRAINT `userapp_bloguser_use_bloguser_id_77042bc2_fk_userapp_b` FOREIGN KEY (`bloguser_id`) REFERENCES `userapp_bloguser` (`id`),
  CONSTRAINT `userapp_bloguser_use_permission_id_e95be918_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userapp_bloguser_user_permissions`
--

LOCK TABLES `userapp_bloguser_user_permissions` WRITE;
/*!40000 ALTER TABLE `userapp_bloguser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `userapp_bloguser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userapp_emailverifyrecord`
--

DROP TABLE IF EXISTS `userapp_emailverifyrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userapp_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `eamil` varchar(30) NOT NULL,
  `send_type` varchar(30) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userapp_emailverifyrecord`
--

LOCK TABLES `userapp_emailverifyrecord` WRITE;
/*!40000 ALTER TABLE `userapp_emailverifyrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `userapp_emailverifyrecord` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-28 10:18:45
