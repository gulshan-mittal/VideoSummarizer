-- MySQL dump 10.13  Distrib 8.0.18, for osx10.15 (x86_64)
--
-- Host: localhost    Database: VideoSummarizer
-- ------------------------------------------------------
-- Server version	8.0.19

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add profile',7,'add_profile'),(26,'Can change profile',7,'change_profile'),(27,'Can delete profile',7,'delete_profile'),(28,'Can view profile',7,'view_profile'),(29,'Can add video',8,'add_video'),(30,'Can change video',8,'change_video'),(31,'Can delete video',8,'delete_video'),(32,'Can view video',8,'view_video'),(33,'Can add split',9,'add_split'),(34,'Can change split',9,'change_split'),(35,'Can delete split',9,'delete_split'),(36,'Can view split',9,'view_split'),(37,'Can add video split',10,'add_videosplit'),(38,'Can change video split',10,'change_videosplit'),(39,'Can delete video split',10,'delete_videosplit'),(40,'Can view video split',10,'view_videosplit'),(41,'Can add split transcript',11,'add_splittranscript'),(42,'Can change split transcript',11,'change_splittranscript'),(43,'Can delete split transcript',11,'delete_splittranscript'),(44,'Can view split transcript',11,'view_splittranscript'),(45,'Can add split speech',12,'add_splitspeech'),(46,'Can change split speech',12,'change_splitspeech'),(47,'Can delete split speech',12,'delete_splitspeech'),(48,'Can view split speech',12,'view_splitspeech'),(49,'Can add split summary',13,'add_splitsummary'),(50,'Can change split summary',13,'change_splitsummary'),(51,'Can delete split summary',13,'delete_splitsummary'),(52,'Can view split summary',13,'view_splitsummary'),(53,'Can add split tag',14,'add_splittag'),(54,'Can change split tag',14,'change_splittag'),(55,'Can delete split tag',14,'delete_splittag'),(56,'Can view split tag',14,'view_splittag');
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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$n1cGkW4rzle1$NPdrIw2gXR0qFRqXpCYcQZRdCDi8GLPtyick9pMosnY=',NULL,1,'admin','','','shashankcalmbuddy@gmail.com',1,1,'2020-04-27 08:27:20.052627'),(2,'pbkdf2_sha256$180000$Wwsh3WsdSzIS$8UgEdNmN6XyZ6EvQ3omkL9EgWUgF70TafBnzjQImzDM=','2020-04-27 08:28:11.229571',0,'abc','','','abc@gmail.com',0,1,'2020-04-27 08:28:01.028808');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'summarize','profile'),(9,'summarize','split'),(12,'summarize','splitspeech'),(13,'summarize','splitsummary'),(14,'summarize','splittag'),(11,'summarize','splittranscript'),(8,'summarize','video'),(10,'summarize','videosplit');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-04-27 08:25:11.107165'),(2,'auth','0001_initial','2020-04-27 08:25:11.164755'),(3,'admin','0001_initial','2020-04-27 08:25:11.289127'),(4,'admin','0002_logentry_remove_auto_add','2020-04-27 08:25:11.330380'),(5,'admin','0003_logentry_add_action_flag_choices','2020-04-27 08:25:11.338941'),(6,'contenttypes','0002_remove_content_type_name','2020-04-27 08:25:11.385239'),(7,'auth','0002_alter_permission_name_max_length','2020-04-27 08:25:11.408241'),(8,'auth','0003_alter_user_email_max_length','2020-04-27 08:25:11.425263'),(9,'auth','0004_alter_user_username_opts','2020-04-27 08:25:11.432751'),(10,'auth','0005_alter_user_last_login_null','2020-04-27 08:25:11.455233'),(11,'auth','0006_require_contenttypes_0002','2020-04-27 08:25:11.457025'),(12,'auth','0007_alter_validators_add_error_messages','2020-04-27 08:25:11.464099'),(13,'auth','0008_alter_user_username_max_length','2020-04-27 08:25:11.489779'),(14,'auth','0009_alter_user_last_name_max_length','2020-04-27 08:25:11.520272'),(15,'auth','0010_alter_group_name_max_length','2020-04-27 08:25:11.535821'),(16,'auth','0011_update_proxy_permissions','2020-04-27 08:25:11.545199'),(17,'sessions','0001_initial','2020-04-27 08:25:11.555637'),(18,'summarize','0001_initial','2020-04-27 08:26:36.093500');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summarize_profile`
--

DROP TABLE IF EXISTS `summarize_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summarize_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email_confirmed` tinyint(1) NOT NULL,
  `email` varchar(254) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `summarize_profile_user_id_dd93cbba_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summarize_profile`
--

LOCK TABLES `summarize_profile` WRITE;
/*!40000 ALTER TABLE `summarize_profile` DISABLE KEYS */;
INSERT INTO `summarize_profile` VALUES (1,0,'',1),(2,1,'abc@gmail.com',2);
/*!40000 ALTER TABLE `summarize_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summarize_split`
--

DROP TABLE IF EXISTS `summarize_split`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summarize_split` (
  `id` int NOT NULL AUTO_INCREMENT,
  `SplitPath` varchar(400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summarize_split`
--

LOCK TABLES `summarize_split` WRITE;
/*!40000 ALTER TABLE `summarize_split` DISABLE KEYS */;
INSERT INTO `summarize_split` VALUES (1,'videos/NyWKaQ20SxyeF2I2gOkZmBqh67pB3uWP_qDO3lYW7BM.mp4'),(2,'videos/p-1Gyxq9oY0Zwor3tqQJI8Un8aBrEnvDdTiqz3d47ms.mp4');
/*!40000 ALTER TABLE `summarize_split` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summarize_splitspeech`
--

DROP TABLE IF EXISTS `summarize_splitspeech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summarize_splitspeech` (
  `SplitID_id` int NOT NULL,
  `SpeechPath` longtext NOT NULL,
  PRIMARY KEY (`SplitID_id`),
  CONSTRAINT `summarize_splitspeech_SplitID_id_7c8f24a4_fk_summarize_split_id` FOREIGN KEY (`SplitID_id`) REFERENCES `summarize_split` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summarize_splitspeech`
--

LOCK TABLES `summarize_splitspeech` WRITE;
/*!40000 ALTER TABLE `summarize_splitspeech` DISABLE KEYS */;
INSERT INTO `summarize_splitspeech` VALUES (1,'/Users/shashanks./college/semester-8/Software-Engineering/project/v1/SWEProject/videoSummarizer/summarize/../media/audio/NyWKaQ20SxyeF2I2gOkZmBqh67pB3uWP_qDO3lYW7BM.wav'),(2,'/Users/shashanks./college/semester-8/Software-Engineering/project/v1/SWEProject/videoSummarizer/summarize/../media/audio/p-1Gyxq9oY0Zwor3tqQJI8Un8aBrEnvDdTiqz3d47ms.wav');
/*!40000 ALTER TABLE `summarize_splitspeech` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summarize_splitsummary`
--

DROP TABLE IF EXISTS `summarize_splitsummary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summarize_splitsummary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Summary` longtext NOT NULL,
  `SplitID_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `summarize_splitsummary_SplitID_id_1fe4286f_fk_summarize_split_id` (`SplitID_id`),
  CONSTRAINT `summarize_splitsummary_SplitID_id_1fe4286f_fk_summarize_split_id` FOREIGN KEY (`SplitID_id`) REFERENCES `summarize_split` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summarize_splitsummary`
--

LOCK TABLES `summarize_splitsummary` WRITE;
/*!40000 ALTER TABLE `summarize_splitsummary` DISABLE KEYS */;
INSERT INTO `summarize_splitsummary` VALUES (1,'The first major adjustment for depreciation and amortization expenses which are non-cash expenses.',1),(2,'What\'s 2.12 billion dollars, which is added back and foot.',1),(3,'Some of a company\'s operating expenses may not have been in cash.',1),(4,'Of course, none of which are related to its operations.',1),(5,'The impact of these items must be removed from the net income Amazon had 0.25 billion dollars in such expenses net of any income as the operations operating income being greater than any non-operating expenses.',1),(6,'The number would have to be subtracted from net income as the income net of expenses are not related to operations.',1),(7,'It\'s from stock-based compensation add up to a positive 8.78 billion dollars.',2),(8,'Dickies in inventory must be added to the net income for all other types of operations related current assets.',2),(9,'For example, if accounts receivable increases the notes that the company has not received cash for at least some of it since so that revenue and the net income overstate how much cash the company has Amazon saw an increase of 1.76 billion dollars in his account receivable between 2014 and 2015 subtracted from net income on the statement of cash flows operations related current liabilities increase in current liabilities must be added to net income and decreases must be subtracted from net income has that the company still has not paid some of his suppliers for products and services that the supplies already provided.',2),(10,'How would the cost of these products and services are subtracted from revenues while calculating net income increases Amazon\'s accounts payable increased by 4.29 billion dollars between 2014 and 2015 and this is added to net income expenses also increase between 2014 and 2015 from revenues on the income statement, but still not pay so these also need to be added to net income on the statement of cash flows Amazon\'s accrued expenses increased by 0.91 billion dollars between 2014 and 2015 may also pay a company in advance Forest products and services revenues on the balance sheet reported on the income statement only when the company delivers its products and services.',2),(11,'This adds up to a total of 2.54 billion dollars adding this to the net income of 0.60 billion dollars and the early I just went for non-cash expenses and non operations related expenses of 8.78 billion dollars gives Amazon and net cash flow from operating activities of 11.9 to billion dollars during 2015.',2);
/*!40000 ALTER TABLE `summarize_splitsummary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summarize_splittag`
--

DROP TABLE IF EXISTS `summarize_splittag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summarize_splittag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Tag` longtext NOT NULL,
  `SplitID_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `summarize_splittag_SplitID_id_1f4073a5_fk_summarize_split_id` (`SplitID_id`),
  CONSTRAINT `summarize_splittag_SplitID_id_1f4073a5_fk_summarize_split_id` FOREIGN KEY (`SplitID_id`) REFERENCES `summarize_split` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summarize_splittag`
--

LOCK TABLES `summarize_splittag` WRITE;
/*!40000 ALTER TABLE `summarize_splittag` DISABLE KEYS */;
INSERT INTO `summarize_splittag` VALUES (1,'investing and financing',1),(2,'amazon net income',1),(3,'net income amazon',1),(4,'amazon cash flow',1),(5,'financing activities',1),(6,'operating activities',1),(7,'billion dollars',1),(8,'cash flows',1),(9,'net income',1),(10,'amazon net',1),(11,'operations related current',2),(12,'current liabilities amazon',2),(13,'income increases amazon',2),(14,'related current assets',2),(15,'net income increases',2),(16,'net income amazon',2),(17,'operations related',2),(18,'income statement',2),(19,'billion dollars',2),(20,'related current',2);
/*!40000 ALTER TABLE `summarize_splittag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summarize_splittranscript`
--

DROP TABLE IF EXISTS `summarize_splittranscript`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summarize_splittranscript` (
  `SplitID_id` int NOT NULL,
  `Transcript` longtext NOT NULL,
  PRIMARY KEY (`SplitID_id`),
  CONSTRAINT `summarize_splittrans_SplitID_id_0623fd51_fk_summarize` FOREIGN KEY (`SplitID_id`) REFERENCES `summarize_split` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summarize_splittranscript`
--

LOCK TABLES `summarize_splittranscript` WRITE;
/*!40000 ALTER TABLE `summarize_splittranscript` DISABLE KEYS */;
INSERT INTO `summarize_splittranscript` VALUES (1,'Last time you started looking at the statement of cash flows and briefly about its cash flows from operating activities section in this video. We will look at all that I just meant that need to be made to compute the company\'s cash flows from operating activities for non-cash expenses expenses related to investing and financing activities as well as cash flows related to current assets and current liabilities.Let\'s start looking at Amazon\'s cash flow from operating activities for 2015 important of these adjustments. The first item is Amazon\'s net income of 0.60 billion dollars for various items the first iPhone on cash expenditures as well as expenditures related to investing and financing activities balance.Cash basis investing and financing expenses will be adjusted for later in the cash flow from investing and financing activities section respectively of the statement of cash flows. The first major adjustment for depreciation and amortization expenses which are non-cash expenses. This means that while they are deducted from revenues when calculating profit this expense has not paid or O2 anyone to net income under stage the amount of cash a company has an expense will have to be added back in full to the net income while making adjustments. These non-cash expenses was 6.28 billion dollars for Amazon salaries all executive an employee salaries are recorded and our sg&a and deducted from revenues not all salaries will be paid in cash. Part of it may include stock-based compensation is recognized as an expense on the income statement. This again is Cash not paid to employees under stage the cash on hand in 2015 Amazon stock based compensation. What\'s 2.12 billion dollars, which is added back and foot. Some of a company\'s operating expenses may not have been in cash. And so again the net income understates how much cash a company has this amount must also be added back in full to the net Amazon statement of cash flows reports this number to be 0.16 billion dollars. A company may earn income from interest and other sources and may also include other types. Of course, none of which are related to its operations. The impact of these items must be removed from the net income Amazon had 0.25 billion dollars in such expenses net of any income as the operations operating income being greater than any non-operating expenses. The number would have to be subtracted from net income as the income net of expenses are not related to operations. The other major adjustment to net income for non-cash expenses is any deferred income taxes should be spending on tax laws not all taxes may be paid off some of it may be difficult to the Future attacks do from revenues under reports how much cash a company has any defer taxes will have to be added to net income Amazon had 0.08 billion in debt for taxes, which is added back to net income on operations related adjustments to Amazon\'s net income include an additional 0.01 billion in losses incurred by Amazon during the sale of marketable Securities and the reduction of 0.1 to billion dollars for excess tax benefits from stock-based compensation. We will not discuss these in detail or 6 to 8 billion dollars for depreciation and amortization 2.12 billion dollars for stock-based compensation 0.16 billion for net operating expenses 0.25 billion dollars for non-operating expenses 0.08 billion for deferred taxes 0.01 billion for losses during the sale of marketable Securities, and finally a -0.12 billion for excess tax been.'),(2,'It\'s from stock-based compensation add up to a positive 8.78 billion dollars. The next set of adjustments is operations related these largely include adjustments due to changes to the firm\'s operations related current assets and current liabilities Amazon din1 trees increase by 2.19. Dollars between 2014 and 2015 how much the company has spent on purchasing raw materials and supplies but this is not recorded on the income statement until the inventory Source tells us how much cash the company has tied up in inventory as a band of the yard and any increase must be deducted from net income between the consecutive years then no inventory-related adjustment is necessary because the company has not invested more cash in inventory decrease the company would have converted into cash and the cash on hand would have increased by the amount of inventory sold. Dickies in inventory must be added to the net income for all other types of operations related current assets. For example, if accounts receivable increases the notes that the company has not received cash for at least some of it since so that revenue and the net income overstate how much cash the company has Amazon saw an increase of 1.76 billion dollars in his account receivable between 2014 and 2015 subtracted from net income on the statement of cash flows operations related current liabilities increase in current liabilities must be added to net income and decreases must be subtracted from net income has that the company still has not paid some of his suppliers for products and services that the supplies already provided. How would the cost of these products and services are subtracted from revenues while calculating net income increases Amazon\'s accounts payable increased by 4.29 billion dollars between 2014 and 2015 and this is added to net income expenses also increase between 2014 and 2015 from revenues on the income statement, but still not pay so these also need to be added to net income on the statement of cash flows Amazon\'s accrued expenses increased by 0.91 billion dollars between 2014 and 2015 may also pay a company in advance Forest products and services revenues on the balance sheet reported on the income statement only when the company delivers its products and services. Additional cash in hand and hand in inglese has an unearned Revenue should also be added to net income Amazon unearned revenues increase by 7.40 billion dollars between 2014 and 2015 and this is added to net income Amazon has an adjustment of -6.11 billion dollars to its net income in 2015 summarize Amazon had the following operations related current assets and current liabilities of 2.19 billion dollars for increase in inventories a deduction of 1.76 billion dollars for increase in accounts receivable an addition of 4.29 billion dollars for increase in accounts payable and addition of 0.91 billion dollars for increasing accrued expenses in addition of 7.40 billion for increase and unearned revenues and finally a deduction of 6.11 billion dollars for amortization of previously unknown revenues. This adds up to a total of 2.54 billion dollars adding this to the net income of 0.60 billion dollars and the early I just went for non-cash expenses and non operations related expenses of 8.78 billion dollars gives Amazon and net cash flow from operating activities of 11.9 to billion dollars during 2015. Next time we will look at the remaining part of the statement of cash flows and reconcile the changes in cash from it with the changes in cash and cash equivalents on the balance sheet.');
/*!40000 ALTER TABLE `summarize_splittranscript` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summarize_video`
--

DROP TABLE IF EXISTS `summarize_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summarize_video` (
  `id` int NOT NULL AUTO_INCREMENT,
  `VideoPath` varchar(100) DEFAULT NULL,
  `Name` varchar(400) NOT NULL,
  `UserID_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `summarize_video_UserID_id_2e2e6686_fk_auth_user_id` (`UserID_id`),
  CONSTRAINT `summarize_video_UserID_id_2e2e6686_fk_auth_user_id` FOREIGN KEY (`UserID_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summarize_video`
--

LOCK TABLES `summarize_video` WRITE;
/*!40000 ALTER TABLE `summarize_video` DISABLE KEYS */;
INSERT INTO `summarize_video` VALUES (1,'videos/F3vokvVaNsZTN1F8Q3mtyBdW70ynIpHhgPW40AAn9Q4vayoxWLTNVYujigkp_XnQ5ZrW0zIIWj2jK799Fmchkw.mp4','isb_2.mp4',2);
/*!40000 ALTER TABLE `summarize_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summarize_videosplit`
--

DROP TABLE IF EXISTS `summarize_videosplit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summarize_videosplit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `SplitID_id` int NOT NULL,
  `VideoID_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `summarize_videosplit_VideoID_id_SplitID_id_21f6a423_uniq` (`VideoID_id`,`SplitID_id`),
  KEY `summarize_videosplit_SplitID_id_dbbf6e3d_fk_summarize_split_id` (`SplitID_id`),
  CONSTRAINT `summarize_videosplit_SplitID_id_dbbf6e3d_fk_summarize_split_id` FOREIGN KEY (`SplitID_id`) REFERENCES `summarize_split` (`id`),
  CONSTRAINT `summarize_videosplit_VideoID_id_b075740c_fk_summarize_video_id` FOREIGN KEY (`VideoID_id`) REFERENCES `summarize_video` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summarize_videosplit`
--

LOCK TABLES `summarize_videosplit` WRITE;
/*!40000 ALTER TABLE `summarize_videosplit` DISABLE KEYS */;
INSERT INTO `summarize_videosplit` VALUES (1,1,1),(2,2,1);
/*!40000 ALTER TABLE `summarize_videosplit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-27 14:10:34
