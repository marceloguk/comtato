-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sites_comtato
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.13.04.1-log

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
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'Sr. WordPress','','http://wordpress.org/','','2014-04-01 21:19:30','2014-04-01 21:19:30','Olá, isto é um comentário.\nPara eliminar um comentário, basta iniciar sessão e ver os comentários ao artigo. Poderá então editar ou eliminar os comentários.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost/comtato','yes'),(2,'blogname','Comtato','yes'),(3,'blogdescription','Mais um site WordPress','yes'),(4,'users_can_register','0','yes'),(5,'admin_email','marcoaasilva@gmail.com','yes'),(6,'start_of_week','1','yes'),(7,'use_balanceTags','0','yes'),(8,'use_smilies','1','yes'),(9,'require_name_email','1','yes'),(10,'comments_notify','1','yes'),(11,'posts_per_rss','10','yes'),(12,'rss_use_excerpt','0','yes'),(13,'mailserver_url','mail.example.com','yes'),(14,'mailserver_login','login@example.com','yes'),(15,'mailserver_pass','password','yes'),(16,'mailserver_port','110','yes'),(17,'default_category','1','yes'),(18,'default_comment_status','open','yes'),(19,'default_ping_status','open','yes'),(20,'default_pingback_flag','1','yes'),(21,'posts_per_page','10','yes'),(22,'date_format','j F, Y','yes'),(23,'time_format','G:i','yes'),(24,'links_updated_date_format','j F, Y G:i','yes'),(25,'links_recently_updated_prepend','<em>','yes'),(26,'links_recently_updated_append','</em>','yes'),(27,'links_recently_updated_time','120','yes'),(28,'comment_moderation','0','yes'),(29,'moderation_notify','1','yes'),(30,'permalink_structure','','yes'),(31,'gzipcompression','0','yes'),(32,'hack_file','0','yes'),(33,'blog_charset','UTF-8','yes'),(34,'moderation_keys','','no'),(35,'active_plugins','a:1:{i:0;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes'),(36,'home','http://localhost/comtato','yes'),(37,'category_base','','yes'),(38,'ping_sites','http://rpc.pingomatic.com/','yes'),(39,'advanced_edit','0','yes'),(40,'comment_max_links','2','yes'),(41,'gmt_offset','0','yes'),(42,'default_email_category','1','yes'),(43,'recently_edited','','no'),(44,'template','comtato','yes'),(45,'stylesheet','comtato','yes'),(46,'comment_whitelist','1','yes'),(47,'blacklist_keys','','no'),(48,'comment_registration','0','yes'),(49,'html_type','text/html','yes'),(50,'use_trackback','0','yes'),(51,'default_role','subscriber','yes'),(52,'db_version','26691','yes'),(53,'uploads_use_yearmonth_folders','1','yes'),(54,'upload_path','','yes'),(55,'blog_public','1','yes'),(56,'default_link_category','2','yes'),(57,'show_on_front','posts','yes'),(58,'tag_base','','yes'),(59,'show_avatars','1','yes'),(60,'avatar_rating','G','yes'),(61,'upload_url_path','','yes'),(62,'thumbnail_size_w','150','yes'),(63,'thumbnail_size_h','150','yes'),(64,'thumbnail_crop','1','yes'),(65,'medium_size_w','300','yes'),(66,'medium_size_h','300','yes'),(67,'avatar_default','mystery','yes'),(68,'large_size_w','1024','yes'),(69,'large_size_h','1024','yes'),(70,'image_default_link_type','file','yes'),(71,'image_default_size','','yes'),(72,'image_default_align','','yes'),(73,'close_comments_for_old_posts','0','yes'),(74,'close_comments_days_old','14','yes'),(75,'thread_comments','1','yes'),(76,'thread_comments_depth','5','yes'),(77,'page_comments','0','yes'),(78,'comments_per_page','50','yes'),(79,'default_comments_page','newest','yes'),(80,'comment_order','asc','yes'),(81,'sticky_posts','a:0:{}','yes'),(82,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(83,'widget_text','a:0:{}','yes'),(84,'widget_rss','a:0:{}','yes'),(85,'uninstall_plugins','a:0:{}','no'),(86,'timezone_string','','yes'),(87,'page_for_posts','0','yes'),(88,'page_on_front','0','yes'),(89,'default_post_format','0','yes'),(90,'link_manager_enabled','0','yes'),(91,'initial_db_version','26691','yes'),(92,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(93,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(94,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(95,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(96,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(97,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(98,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes'),(99,'cron','a:5:{i:1396603173;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1396638540;a:1:{s:20:\"wp_maybe_auto_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1396646390;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1396647779;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),(101,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:49:\"http://pt.wordpress.org/wordpress-3.8.1-pt_PT.zip\";s:6:\"locale\";s:5:\"pt_PT\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:49:\"http://pt.wordpress.org/wordpress-3.8.1-pt_PT.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"3.8.1\";s:7:\"version\";s:5:\"3.8.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"3.8\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:41:\"https://wordpress.org/wordpress-3.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:41:\"https://wordpress.org/wordpress-3.8.1.zip\";s:10:\"no_content\";s:52:\"https://wordpress.org/wordpress-3.8.1-no-content.zip\";s:11:\"new_bundled\";s:53:\"https://wordpress.org/wordpress-3.8.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"3.8.1\";s:7:\"version\";s:5:\"3.8.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"3.8\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1396595474;s:15:\"version_checked\";s:5:\"3.8.1\";s:12:\"translations\";a:0:{}}','yes'),(105,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1396595839;s:7:\"checked\";a:4:{s:7:\"comtato\";s:3:\"1.0\";s:14:\"twentyfourteen\";s:3:\"1.0\";s:14:\"twentythirteen\";s:3:\"1.1\";s:12:\"twentytwelve\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','yes'),(106,'_site_transient_timeout_browser_0ae8fcdac0f530ef9e3664a44008751f','1396991982','yes'),(107,'_site_transient_browser_0ae8fcdac0f530ef9e3664a44008751f','a:9:{s:8:\"platform\";s:5:\"Linux\";s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"26.0\";s:10:\"update_url\";s:23:\"http://www.firefox.com/\";s:7:\"img_src\";s:50:\"http://s.wordpress.org/images/browsers/firefox.png\";s:11:\"img_src_ssl\";s:49:\"https://wordpress.org/images/browsers/firefox.png\";s:15:\"current_version\";s:2:\"16\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}','yes'),(108,'can_compress_scripts','0','yes'),(127,'current_theme','Comtato','yes'),(128,'theme_mods_comtato','a:1:{i:0;b:0;}','yes'),(129,'theme_switched','','yes'),(130,'recently_activated','a:0:{}','yes'),(135,'_transient_twentyfourteen_category_count','1','yes'),(136,'theme_mods_twentyfourteen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1396390929;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes'),(143,'_transient_random_seed','b61baf7c0e5545b94ce0f7113922782f','yes'),(144,'_transient_timeout_plugin_slugs','1396586494','no'),(145,'_transient_plugin_slugs','a:3:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";i:2;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','no'),(146,'_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51','1396527770','no'),(147,'_transient_dash_4077549d03da2e451c8b5f002294ff51','<div class=\"rss-widget\"><p><strong>Erro de RSS</strong>: WP HTTP Error: Couldn\'t resolve host \'wp-portugal.com\'</p></div><div class=\"rss-widget\"><p><strong>Erro de RSS</strong>: WP HTTP Error: Couldn\'t resolve host \'palheta.wp-portugal.com\'</p></div><div class=\"rss-widget\"><ul></ul></div>','no'),(156,'category_children','a:0:{}','yes'),(167,'_site_transient_timeout_theme_roots','1396597263','yes'),(168,'_site_transient_theme_roots','a:4:{s:7:\"comtato\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:14:\"twentythirteen\";s:7:\"/themes\";s:12:\"twentytwelve\";s:7:\"/themes\";}','yes'),(169,'_site_transient_update_plugins','O:8:\"stdClass\":3:{s:12:\"last_checked\";i:1396595842;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"2.6.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.2.6.0.zip\";}}s:12:\"translations\";a:0:{}}','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,4,'_edit_last','1'),(3,4,'_edit_lock','1396490018:1'),(4,12,'_edit_last','1'),(5,12,'_edit_lock','1396508753:1'),(6,2,'_edit_lock','1396484292:1'),(7,1,'_edit_lock','1396485911:1'),(8,12,'Atuação da COM TATO','Gestão de produção\r\nGestão de comunicação'),(9,12,'Período de Trabalho','Janeiro a Dezembro de 2012'),(10,12,'Local','Pontos centrais de São Paulo e 27 CEUs'),(11,12,'Áreas','Circo, cinema, teatro, música, artes visuais, incentivo à leitura, educação ambiental e esporte.'),(12,13,'_edit_last','1'),(13,13,'_edit_lock','1396510162:1'),(14,14,'_wp_attached_file','2014/04/imagem_projeto.jpg'),(15,14,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:26:\"2014/04/imagem_projeto.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"imagem_projeto-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"imagem_projeto-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"projeto_thumb\";a:4:{s:4:\"file\";s:26:\"imagem_projeto-113x113.jpg\";s:5:\"width\";i:113;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(16,12,'_thumbnail_id','14'),(17,14,'_edit_lock','1396498430:1'),(18,15,'_wp_attached_file','2014/04/Begonia-by-fatpoint21.jpg'),(19,15,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:4:\"file\";s:33:\"2014/04/Begonia-by-fatpoint21.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Begonia-by-fatpoint21-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"Begonia-by-fatpoint21-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"Begonia-by-fatpoint21-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"portfolio-preview\";a:4:{s:4:\"file\";s:33:\"Begonia-by-fatpoint21-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"projeto_thumb\";a:4:{s:4:\"file\";s:33:\"Begonia-by-fatpoint21-113x113.jpg\";s:5:\"width\";i:113;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(20,16,'_wp_attached_file','2014/04/Blue-frost-by-ppaabblloo77.jpg'),(21,16,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1267;s:4:\"file\";s:38:\"2014/04/Blue-frost-by-ppaabblloo77.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"Blue-frost-by-ppaabblloo77-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"Blue-frost-by-ppaabblloo77-300x185.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:185;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:39:\"Blue-frost-by-ppaabblloo77-1024x633.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:633;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"portfolio-preview\";a:4:{s:4:\"file\";s:38:\"Blue-frost-by-ppaabblloo77-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"projeto_thumb\";a:4:{s:4:\"file\";s:38:\"Blue-frost-by-ppaabblloo77-113x113.jpg\";s:5:\"width\";i:113;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(22,17,'_wp_attached_file','2014/04/Brother-typewriter-by-awdean1.jpg'),(23,17,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:4:\"file\";s:41:\"2014/04/Brother-typewriter-by-awdean1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"Brother-typewriter-by-awdean1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"Brother-typewriter-by-awdean1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"Brother-typewriter-by-awdean1-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"portfolio-preview\";a:4:{s:4:\"file\";s:41:\"Brother-typewriter-by-awdean1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"projeto_thumb\";a:4:{s:4:\"file\";s:41:\"Brother-typewriter-by-awdean1-113x113.jpg\";s:5:\"width\";i:113;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(24,16,'_edit_lock','1396499668:1'),(25,16,'_edit_last','1'),(26,17,'_edit_lock','1396499681:1'),(27,17,'_edit_last','1'),(28,18,'_edit_last','1'),(29,18,'_edit_lock','1396510158:1'),(30,19,'_edit_last','1'),(31,19,'_edit_lock','1396510304:1'),(32,18,'_thumbnail_id','16'),(33,19,'_thumbnail_id','15'),(34,13,'_thumbnail_id','17'),(35,20,'_edit_last','1'),(36,20,'_edit_lock','1396555808:1'),(37,20,'_wp_page_template','template-portfolio.php'),(38,25,'_edit_last','1'),(39,25,'_edit_lock','1396575552:1'),(40,26,'_edit_last','1'),(41,26,'_edit_lock','1396574248:1'),(42,27,'_wp_attached_file','2014/04/Fleurs-de-Prunus-24-by-Jérôme-Boivin.jpg'),(43,27,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:52:\"2014/04/Fleurs-de-Prunus-24-by-Jérôme-Boivin.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"Fleurs-de-Prunus-24-by-Jérôme-Boivin-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"Fleurs-de-Prunus-24-by-Jérôme-Boivin-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"portfolio-preview\";a:4:{s:4:\"file\";s:52:\"Fleurs-de-Prunus-24-by-Jérôme-Boivin-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"projeto_thumb\";a:4:{s:4:\"file\";s:52:\"Fleurs-de-Prunus-24-by-Jérôme-Boivin-113x113.jpg\";s:5:\"width\";i:113;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";d:2;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:22:\"Canon EOS 350D DIGITAL\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1332615766;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"85\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.002\";s:5:\"title\";s:0:\"\";}}'),(44,26,'_thumbnail_id','27'),(45,28,'_edit_last','1'),(46,28,'_edit_lock','1396574296:1'),(47,29,'_wp_attached_file','2014/04/Cacomixtle-Ubunteño-by-Carlos-and-Paula-Morales.jpg'),(48,29,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1280;s:4:\"file\";s:61:\"2014/04/Cacomixtle-Ubunteño-by-Carlos-and-Paula-Morales.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"Cacomixtle-Ubunteño-by-Carlos-and-Paula-Morales-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:61:\"Cacomixtle-Ubunteño-by-Carlos-and-Paula-Morales-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:62:\"Cacomixtle-Ubunteño-by-Carlos-and-Paula-Morales-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"portfolio-preview\";a:4:{s:4:\"file\";s:61:\"Cacomixtle-Ubunteño-by-Carlos-and-Paula-Morales-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"projeto_thumb\";a:4:{s:4:\"file\";s:61:\"Cacomixtle-Ubunteño-by-Carlos-and-Paula-Morales-113x113.jpg\";s:5:\"width\";i:113;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(49,28,'_thumbnail_id','29'),(50,30,'_edit_last','1'),(51,30,'_edit_lock','1396574357:1'),(52,31,'_wp_attached_file','2014/04/foto.jpg'),(53,31,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:4:\"file\";s:16:\"2014/04/foto.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"foto-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"foto-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"foto-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"portfolio-preview\";a:4:{s:4:\"file\";s:16:\"foto-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"projeto_thumb\";a:4:{s:4:\"file\";s:16:\"foto-113x113.jpg\";s:5:\"width\";i:113;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";d:2.6000000000000001;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"GT-I9300\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1352885076;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"3.7\";s:3:\"iso\";s:2:\"80\";s:13:\"shutter_speed\";s:18:\"0.0085470085470085\";s:5:\"title\";s:0:\"\";}}'),(54,30,'_thumbnail_id','31'),(55,32,'_edit_last','1'),(56,32,'_edit_lock','1396574397:1'),(57,33,'_wp_attached_file','2014/04/La-Gomera-by-Alfonso-Aguirre-Arbex.jpg'),(58,33,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1280;s:4:\"file\";s:46:\"2014/04/La-Gomera-by-Alfonso-Aguirre-Arbex.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"La-Gomera-by-Alfonso-Aguirre-Arbex-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"La-Gomera-by-Alfonso-Aguirre-Arbex-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:47:\"La-Gomera-by-Alfonso-Aguirre-Arbex-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"portfolio-preview\";a:4:{s:4:\"file\";s:46:\"La-Gomera-by-Alfonso-Aguirre-Arbex-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"projeto_thumb\";a:4:{s:4:\"file\";s:46:\"La-Gomera-by-Alfonso-Aguirre-Arbex-113x113.jpg\";s:5:\"width\";i:113;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(59,32,'_thumbnail_id','33'),(60,34,'_edit_last','1'),(61,34,'_edit_lock','1396574425:1'),(62,35,'_wp_attached_file','2014/04/Landing-by-Nic-Dahlquist.jpg'),(63,35,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1152;s:4:\"file\";s:36:\"2014/04/Landing-by-Nic-Dahlquist.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"Landing-by-Nic-Dahlquist-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"Landing-by-Nic-Dahlquist-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"Landing-by-Nic-Dahlquist-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"portfolio-preview\";a:4:{s:4:\"file\";s:36:\"Landing-by-Nic-Dahlquist-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"projeto_thumb\";a:4:{s:4:\"file\";s:36:\"Landing-by-Nic-Dahlquist-113x113.jpg\";s:5:\"width\";i:113;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(64,34,'_thumbnail_id','35'),(65,36,'_edit_last','1'),(66,36,'_edit_lock','1396574471:1'),(67,37,'_wp_attached_file','2014/04/Last-breath-…-by-Francisco-Javier-Epinoza-Pérez.jpg'),(68,37,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:4:\"file\";s:63:\"2014/04/Last-breath-…-by-Francisco-Javier-Epinoza-Pérez.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:63:\"Last-breath-…-by-Francisco-Javier-Epinoza-Pérez-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:63:\"Last-breath-…-by-Francisco-Javier-Epinoza-Pérez-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:64:\"Last-breath-…-by-Francisco-Javier-Epinoza-Pérez-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"portfolio-preview\";a:4:{s:4:\"file\";s:63:\"Last-breath-…-by-Francisco-Javier-Epinoza-Pérez-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"projeto_thumb\";a:4:{s:4:\"file\";s:63:\"Last-breath-…-by-Francisco-Javier-Epinoza-Pérez-113x113.jpg\";s:5:\"width\";i:113;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(69,36,'_thumbnail_id','37'),(70,38,'_wp_attached_file','2014/04/Leftover-by-Sagar-Jain.jpg'),(71,38,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1024;s:4:\"file\";s:34:\"2014/04/Leftover-by-Sagar-Jain.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Leftover-by-Sagar-Jain-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"Leftover-by-Sagar-Jain-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"Leftover-by-Sagar-Jain-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"portfolio-preview\";a:4:{s:4:\"file\";s:34:\"Leftover-by-Sagar-Jain-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"projeto_thumb\";a:4:{s:4:\"file\";s:34:\"Leftover-by-Sagar-Jain-113x113.jpg\";s:5:\"width\";i:113;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(72,25,'_thumbnail_id','38'),(73,39,'_edit_last','1'),(74,39,'_edit_lock','1396575586:1'),(75,40,'_wp_attached_file','2014/04/Morning-Sun-on-Frost-Covered-Leaves-by-Gary-A-Stafford.jpg'),(76,40,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:1600;s:4:\"file\";s:66:\"2014/04/Morning-Sun-on-Frost-Covered-Leaves-by-Gary-A-Stafford.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:66:\"Morning-Sun-on-Frost-Covered-Leaves-by-Gary-A-Stafford-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:66:\"Morning-Sun-on-Frost-Covered-Leaves-by-Gary-A-Stafford-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:67:\"Morning-Sun-on-Frost-Covered-Leaves-by-Gary-A-Stafford-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"portfolio-preview\";a:4:{s:4:\"file\";s:66:\"Morning-Sun-on-Frost-Covered-Leaves-by-Gary-A-Stafford-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"projeto_thumb\";a:4:{s:4:\"file\";s:66:\"Morning-Sun-on-Frost-Covered-Leaves-by-Gary-A-Stafford-113x113.jpg\";s:5:\"width\";i:113;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";d:4.5;s:6:\"credit\";s:16:\"Gary A. Stafford\";s:6:\"camera\";s:12:\"Canon EOS 5D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:32:\"Copyright 2009, Gary A. Stafford\";s:12:\"focal_length\";s:3:\"100\";s:3:\"iso\";s:3:\"125\";s:13:\"shutter_speed\";s:8:\"0.003125\";s:5:\"title\";s:0:\"\";}}'),(77,39,'_thumbnail_id','40'),(78,41,'_edit_last','1'),(79,41,'_edit_lock','1396575647:1'),(80,42,'_wp_attached_file','2014/04/Stop-the-light-by-Mato-Rachela.jpg'),(81,42,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1357;s:4:\"file\";s:42:\"2014/04/Stop-the-light-by-Mato-Rachela.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"Stop-the-light-by-Mato-Rachela-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"Stop-the-light-by-Mato-Rachela-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"Stop-the-light-by-Mato-Rachela-1024x678.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"portfolio-preview\";a:4:{s:4:\"file\";s:42:\"Stop-the-light-by-Mato-Rachela-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"projeto_thumb\";a:4:{s:4:\"file\";s:42:\"Stop-the-light-by-Mato-Rachela-113x113.jpg\";s:5:\"width\";i:113;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(82,41,'_thumbnail_id','42'),(83,43,'_edit_last','1'),(84,43,'_edit_lock','1396575670:1'),(85,44,'_wp_attached_file','2014/04/Trazo-solitario-by-Julio-Diliegros.jpg'),(86,44,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:4:\"file\";s:46:\"2014/04/Trazo-solitario-by-Julio-Diliegros.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"Trazo-solitario-by-Julio-Diliegros-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"Trazo-solitario-by-Julio-Diliegros-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:47:\"Trazo-solitario-by-Julio-Diliegros-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"portfolio-preview\";a:4:{s:4:\"file\";s:46:\"Trazo-solitario-by-Julio-Diliegros-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"projeto_thumb\";a:4:{s:4:\"file\";s:46:\"Trazo-solitario-by-Julio-Diliegros-113x113.jpg\";s:5:\"width\";i:113;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(87,43,'_thumbnail_id','44'),(88,45,'_edit_last','1'),(89,45,'_edit_lock','1396575744:1'),(90,46,'_wp_attached_file','2014/04/Winter-Fog-by-Daniel-Vesterskov.jpg'),(91,46,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:4:\"file\";s:43:\"2014/04/Winter-Fog-by-Daniel-Vesterskov.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"Winter-Fog-by-Daniel-Vesterskov-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"Winter-Fog-by-Daniel-Vesterskov-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"Winter-Fog-by-Daniel-Vesterskov-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"portfolio-preview\";a:4:{s:4:\"file\";s:43:\"Winter-Fog-by-Daniel-Vesterskov-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"projeto_thumb\";a:4:{s:4:\"file\";s:43:\"Winter-Fog-by-Daniel-Vesterskov-113x113.jpg\";s:5:\"width\";i:113;s:6:\"height\";i:113;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";d:2.7999999999999998;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"SLT-A77V\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1355311580;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:6:\"0.0005\";s:5:\"title\";s:0:\"\";}}'),(92,45,'_thumbnail_id','46');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2014-04-01 21:19:30','2014-04-01 21:19:30','Bem-vindo ao WordPress. Este é o seu primeiro artigo. Edite-o ou elimine-o e dê vida ao seu site!','Olá, mundo!','','publish','open','open','','ola-mundo','','','2014-04-01 21:19:30','2014-04-01 21:19:30','',0,'http://localhost/comtato/?p=1',0,'post','',1),(2,1,'2014-04-01 21:19:30','2014-04-01 21:19:30','Isto é um exemplo de página. É diferente de um artigo porque fica no mesmo sítio e aparece na navegação do seu site (na maior parte dos temas). O normal é começar com uma página \"Sobre mim\"/\"Sobre nós\", que apresenta o site aos visitantes. Pode ser qualquer coisa deste tipo:\n\n<blockquote>Olá! Faço entregas durante o dia, mas estudo para ser actor à noite. Este é o meu site. Vivo em Lisboa, tenho um cão chamado Belarmino e gosto de caipirinhas (e de ver a relva a crescer).</blockquote>\n\n...ou deste:\n\n<blockquote>A Gambozinos XPTO foi fundada em 1971 e tem, desde então, fornecido gambuzinos da mais alta qualidade aos seus clientes. Localizada em Gotham, a Gambozinos XPTO emprega mais de 2,000 colaboradores e é um dos pilares da comunidade de Gotham.</blockquote>\n\nVisite <a href=\"http://localhost/comtato/wp-admin/\">o seu painel</a> para apagar esta página ou para criar mais páginas para o seu conteúdo. Divirta-se!','Exemplo de página','','publish','open','open','','pagina-exemplo','','','2014-04-01 21:19:30','2014-04-01 21:19:30','',0,'http://localhost/comtato/?page_id=2',0,'page','',0),(3,1,'2014-04-01 21:19:42','0000-00-00 00:00:00','','Rascunho automatico','','auto-draft','open','open','','','','','2014-04-01 21:19:42','0000-00-00 00:00:00','',0,'http://localhost/comtato/?p=3',0,'post','',0),(4,1,'2014-04-01 21:44:54','0000-00-00 00:00:00','A 6ª Semana Ticket Cultura &amp; Esporte leva a São Paulo...','6ª Semana Ticket Cultura & Esporte','','draft','open','open','','','','','2014-04-01 21:44:54','2014-04-01 21:44:54','',0,'http://localhost/comtato/?p=4',0,'post','',0),(5,1,'2014-04-01 21:44:54','2014-04-01 21:44:54','A 6ª Semana Ticket Cultura &amp; Esporte leva a São Paulo...','6ª Semana Ticket Cultura & Esporte','','inherit','open','open','','4-revision-v1','','','2014-04-01 21:44:54','2014-04-01 21:44:54','',4,'http://localhost/comtato/?p=5',0,'revision','',0),(6,1,'2014-04-01 21:45:09','0000-00-00 00:00:00','','Rascunho automatico','','auto-draft','open','open','','','','','2014-04-01 21:45:09','0000-00-00 00:00:00','',0,'http://localhost/comtato/?page_id=6',0,'page','',0),(7,1,'2014-04-01 22:18:50','0000-00-00 00:00:00','','Rascunho automatico','','auto-draft','open','open','','','','','2014-04-01 22:18:50','0000-00-00 00:00:00','',0,'http://localhost/comtato/?p=7',0,'post','',0),(8,1,'2014-04-01 22:19:48','0000-00-00 00:00:00','','Rascunho automatico','','auto-draft','open','open','','','','','2014-04-01 22:19:48','0000-00-00 00:00:00','',0,'http://localhost/comtato/?p=8',0,'post','',0),(9,1,'2014-04-01 22:22:31','0000-00-00 00:00:00','','Rascunho automatico','','auto-draft','open','open','','','','','2014-04-01 22:22:31','0000-00-00 00:00:00','',0,'http://localhost/comtato/?p=9',0,'post','',0),(10,1,'2014-04-02 23:29:48','0000-00-00 00:00:00','','Rascunho automatico','','auto-draft','open','open','','','','','2014-04-02 23:29:48','0000-00-00 00:00:00','',0,'http://localhost/comtato/?post_type=portfolio&p=10',0,'portfolio','',0),(11,1,'2014-04-02 23:42:10','0000-00-00 00:00:00','','Rascunho automatico','','auto-draft','open','open','','','','','2014-04-02 23:42:10','0000-00-00 00:00:00','',0,'http://localhost/comtato/?post_type=portfolio&p=11',0,'portfolio','',0),(12,1,'2014-04-02 23:43:08','2014-04-02 23:43:08','Texto do projeto','6ª Semana Ticket Cultura & Esporte','','publish','closed','closed','','6a-semana-ticket-cultura-esporte','','','2014-04-03 07:07:39','2014-04-03 07:07:39','',0,'http://localhost/comtato/?post_type=portfolio&#038;p=12',0,'portfolio','',0),(13,1,'2014-04-03 01:26:55','2014-04-03 01:26:55','texto do projeto','projeto 1','','publish','closed','closed','','projeto-1','','','2014-04-03 07:30:45','2014-04-03 07:30:45','',0,'http://localhost/comtato/?post_type=portfolio&#038;p=13',0,'portfolio','',0),(14,1,'2014-04-03 01:42:04','2014-04-03 01:42:04','','imagem_projeto','','inherit','open','open','','imagem_projeto','','','2014-04-03 01:42:04','2014-04-03 01:42:04','',12,'http://localhost/comtato/wp-content/uploads/2014/04/imagem_projeto.jpg',0,'attachment','image/jpeg',0),(15,1,'2014-04-03 04:14:31','2014-04-03 04:14:31','','Begonia by fatpoint21','','inherit','open','open','','begonia-by-fatpoint21','','','2014-04-03 04:14:31','2014-04-03 04:14:31','',12,'http://localhost/comtato/wp-content/uploads/2014/04/Begonia-by-fatpoint21.jpg',0,'attachment','image/jpeg',0),(16,1,'2014-04-03 04:15:06','2014-04-03 04:15:06','','Blue frost by ppaabblloo77','','inherit','open','open','','blue-frost-by-ppaabblloo77','','','2014-04-03 04:15:06','2014-04-03 04:15:06','',12,'http://localhost/comtato/wp-content/uploads/2014/04/Blue-frost-by-ppaabblloo77.jpg',0,'attachment','image/jpeg',0),(17,1,'2014-04-03 04:15:17','2014-04-03 04:15:17','','Brother typewriter by awdean1','','inherit','open','open','','brother-typewriter-by-awdean1','','','2014-04-03 04:15:17','2014-04-03 04:15:17','',12,'http://localhost/comtato/wp-content/uploads/2014/04/Brother-typewriter-by-awdean1.jpg',0,'attachment','image/jpeg',0),(18,1,'2014-04-03 07:16:05','2014-04-03 07:16:05','Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.','Projeto 2','','publish','closed','closed','','projeto-2','','','2014-04-03 07:30:24','2014-04-03 07:30:24','',0,'http://localhost/comtato/?post_type=portfolio&#038;p=18',0,'portfolio','',0),(19,1,'2014-04-03 07:16:30','2014-04-03 07:16:30','Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.','Projeto 3','','publish','closed','closed','','projeto-3','','','2014-04-03 07:31:44','2014-04-03 07:31:44','',0,'http://localhost/comtato/?post_type=portfolio&#038;p=19',0,'portfolio','',0),(20,1,'2014-04-03 19:29:53','2014-04-03 19:29:53','essa página é só para testar o PHP, nada disso vai aparecer.','Página para exibição do portifólio','','publish','open','open','','pagina-para-exibicao-do-portifolio','','','2014-04-03 19:36:15','2014-04-03 19:36:15','',0,'http://localhost/comtato/?page_id=20',0,'page','',0),(21,1,'2014-04-03 19:29:53','2014-04-03 19:29:53','essa página é só para testar o PHP, nada disso vai aparecer.','Página para exibição do portifólio','','inherit','open','open','','20-revision-v1','','','2014-04-03 19:29:53','2014-04-03 19:29:53','',20,'http://localhost/comtato/?p=21',0,'revision','',0),(22,1,'2014-04-03 19:35:15','2014-04-03 19:35:15','essa página é só para testar o PHP, nada disso vai aparecer.','Página para exibição do portifólio','','inherit','open','open','','20-autosave-v1','','','2014-04-03 19:35:15','2014-04-03 19:35:15','',20,'http://localhost/comtato/?p=22',0,'revision','',0),(23,1,'2014-04-03 19:34:14','2014-04-03 19:34:14','Página para exibição do portifólio\r\n\r\nessa página é só para testar o PHP, nada disso vai aparecer.','portfolio','','inherit','open','open','','20-revision-v1','','','2014-04-03 19:34:14','2014-04-03 19:34:14','',20,'http://localhost/comtato/?p=23',0,'revision','',0),(24,1,'2014-04-03 19:35:55','2014-04-03 19:35:55','essa página é só para testar o PHP, nada disso vai aparecer.','Página para exibição do portifólio','','inherit','open','open','','20-revision-v1','','','2014-04-03 19:35:55','2014-04-03 19:35:55','',20,'http://localhost/comtato/?p=24',0,'revision','',0),(25,1,'2014-04-04 01:18:42','2014-04-04 01:18:42','','Projeto 4','','publish','closed','closed','','projeto-4','','','2014-04-04 01:18:42','2014-04-04 01:18:42','',0,'http://localhost/comtato/?post_type=portfolio&#038;p=25',0,'portfolio','',0),(26,1,'2014-04-04 01:19:20','2014-04-04 01:19:20','','Projeto 5','','publish','closed','closed','','projeto-5','','','2014-04-04 01:19:20','2014-04-04 01:19:20','',0,'http://localhost/comtato/?post_type=portfolio&#038;p=26',0,'portfolio','',0),(27,1,'2014-04-04 01:19:15','2014-04-04 01:19:15','','Fleurs de Prunus 24 by Jérôme Boivin','','inherit','open','open','','fleurs-de-prunus-24-by-jero%cc%82me-boivin','','','2014-04-04 01:19:15','2014-04-04 01:19:15','',26,'http://localhost/comtato/wp-content/uploads/2014/04/Fleurs-de-Prunus-24-by-Jérôme-Boivin.jpg',0,'attachment','image/jpeg',0),(28,1,'2014-04-04 01:20:08','2014-04-04 01:20:08','','Projeto 6','','publish','closed','closed','','projeto-6','','','2014-04-04 01:20:08','2014-04-04 01:20:08','',0,'http://localhost/comtato/?post_type=portfolio&#038;p=28',0,'portfolio','',0),(29,1,'2014-04-04 01:20:03','2014-04-04 01:20:03','','Cacomixtle Ubunteño by Carlos and Paula Morales','','inherit','open','open','','cacomixtle-ubunten%cc%83o-by-carlos-and-paula-morales','','','2014-04-04 01:20:03','2014-04-04 01:20:03','',28,'http://localhost/comtato/wp-content/uploads/2014/04/Cacomixtle-Ubunteño-by-Carlos-and-Paula-Morales.jpg',0,'attachment','image/jpeg',0),(30,1,'2014-04-04 01:20:50','2014-04-04 01:20:50','','Projeto 7','','publish','closed','closed','','projeto-7','','','2014-04-04 01:20:50','2014-04-04 01:20:50','',0,'http://localhost/comtato/?post_type=portfolio&#038;p=30',0,'portfolio','',0),(31,1,'2014-04-04 01:20:31','2014-04-04 01:20:31','','foto','','inherit','open','open','','foto','','','2014-04-04 01:20:31','2014-04-04 01:20:31','',30,'http://localhost/comtato/wp-content/uploads/2014/04/foto.jpg',0,'attachment','image/jpeg',0),(32,1,'2014-04-04 01:21:48','2014-04-04 01:21:48','','Projeto 8','','publish','closed','closed','','projeto-8','','','2014-04-04 01:21:48','2014-04-04 01:21:48','',0,'http://localhost/comtato/?post_type=portfolio&#038;p=32',0,'portfolio','',0),(33,1,'2014-04-04 01:21:44','2014-04-04 01:21:44','','La Gomera by Alfonso Aguirre Arbex','','inherit','open','open','','la-gomera-by-alfonso-aguirre-arbex','','','2014-04-04 01:21:44','2014-04-04 01:21:44','',32,'http://localhost/comtato/wp-content/uploads/2014/04/La-Gomera-by-Alfonso-Aguirre-Arbex.jpg',0,'attachment','image/jpeg',0),(34,1,'2014-04-04 01:22:13','2014-04-04 01:22:13','','Projeto 9','','publish','closed','closed','','projeto-9','','','2014-04-04 01:22:13','2014-04-04 01:22:13','',0,'http://localhost/comtato/?post_type=portfolio&#038;p=34',0,'portfolio','',0),(35,1,'2014-04-04 01:22:08','2014-04-04 01:22:08','','Landing by Nic Dahlquist','','inherit','open','open','','landing-by-nic-dahlquist','','','2014-04-04 01:22:08','2014-04-04 01:22:08','',34,'http://localhost/comtato/wp-content/uploads/2014/04/Landing-by-Nic-Dahlquist.jpg',0,'attachment','image/jpeg',0),(36,1,'2014-04-04 01:22:55','2014-04-04 01:22:55','','Projeto 10','','publish','closed','closed','','projeto-10','','','2014-04-04 01:22:55','2014-04-04 01:22:55','',0,'http://localhost/comtato/?post_type=portfolio&#038;p=36',0,'portfolio','',0),(37,1,'2014-04-04 01:22:41','2014-04-04 01:22:41','','Last breath … by Francisco Javier Epinoza Pérez','','inherit','open','open','','last-breath-by-francisco-javier-epinoza-perez','','','2014-04-04 01:22:41','2014-04-04 01:22:41','',36,'http://localhost/comtato/wp-content/uploads/2014/04/Last-breath-…-by-Francisco-Javier-Epinoza-Pérez.jpg',0,'attachment','image/jpeg',0),(38,1,'2014-04-04 01:23:28','2014-04-04 01:23:28','','Leftover by Sagar Jain','','inherit','open','open','','leftover-by-sagar-jain','','','2014-04-04 01:23:28','2014-04-04 01:23:28','',25,'http://localhost/comtato/wp-content/uploads/2014/04/Leftover-by-Sagar-Jain.jpg',0,'attachment','image/jpeg',0),(39,1,'2014-04-04 01:41:38','2014-04-04 01:41:38','','Projeto 11','','publish','closed','closed','','projeto-11','','','2014-04-04 01:41:38','2014-04-04 01:41:38','',0,'http://localhost/comtato/?post_type=portfolio&#038;p=39',0,'portfolio','',0),(40,1,'2014-04-04 01:41:32','2014-04-04 01:41:32','','Morning Sun on Frost-Covered Leaves by Gary A Stafford','','inherit','open','open','','morning-sun-on-frost-covered-leaves-by-gary-a-stafford','','','2014-04-04 01:41:32','2014-04-04 01:41:32','',39,'http://localhost/comtato/wp-content/uploads/2014/04/Morning-Sun-on-Frost-Covered-Leaves-by-Gary-A-Stafford.jpg',0,'attachment','image/jpeg',0),(41,1,'2014-04-04 01:42:25','2014-04-04 01:42:25','','Projeto 12','','publish','closed','closed','','projeto-12','','','2014-04-04 01:42:25','2014-04-04 01:42:25','',0,'http://localhost/comtato/?post_type=portfolio&#038;p=41',0,'portfolio','',0),(42,1,'2014-04-04 01:42:19','2014-04-04 01:42:19','','Stop the light by Mato Rachela','','inherit','open','open','','stop-the-light-by-mato-rachela','','','2014-04-04 01:42:19','2014-04-04 01:42:19','',41,'http://localhost/comtato/wp-content/uploads/2014/04/Stop-the-light-by-Mato-Rachela.jpg',0,'attachment','image/jpeg',0),(43,1,'2014-04-04 01:43:02','2014-04-04 01:43:02','','Projeto 13','','publish','closed','closed','','projeto-13','','','2014-04-04 01:43:02','2014-04-04 01:43:02','',0,'http://localhost/comtato/?post_type=portfolio&#038;p=43',0,'portfolio','',0),(44,1,'2014-04-04 01:42:58','2014-04-04 01:42:58','','Trazo solitario by Julio Diliegros','','inherit','open','open','','trazo-solitario-by-julio-diliegros','','','2014-04-04 01:42:58','2014-04-04 01:42:58','',43,'http://localhost/comtato/wp-content/uploads/2014/04/Trazo-solitario-by-Julio-Diliegros.jpg',0,'attachment','image/jpeg',0),(45,1,'2014-04-04 01:43:57','2014-04-04 01:43:57','','Projeto 14','','publish','closed','closed','','projeto-14','','','2014-04-04 01:43:57','2014-04-04 01:43:57','',0,'http://localhost/comtato/?post_type=portfolio&#038;p=45',0,'portfolio','',0),(46,1,'2014-04-04 01:43:46','2014-04-04 01:43:46','','Winter Fog by Daniel Vesterskov','','inherit','open','open','','winter-fog-by-daniel-vesterskov','','','2014-04-04 01:43:46','2014-04-04 01:43:46','',45,'http://localhost/comtato/wp-content/uploads/2014/04/Winter-Fog-by-Daniel-Vesterskov.jpg',0,'attachment','image/jpeg',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(4,1,0),(12,2,0),(13,1,0),(18,3,0),(19,1,0),(19,2,0),(19,3,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,3),(2,2,'category','',0,2),(3,3,'category','',0,2);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Sem categoria','sem-categoria',0),(2,'teste','teste',0),(3,'esportes','esportes',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'first_name',''),(2,1,'last_name',''),(3,1,'nickname','admin'),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','coffee'),(8,1,'use_ssl','0'),(9,1,'show_admin_bar_front','true'),(10,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(11,1,'wp_user_level','10'),(12,1,'dismissed_wp_pointers','wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks'),(13,1,'show_welcome_panel','1'),(14,1,'wp_dashboard_quick_press_last_post_id','3'),(15,1,'wp_user-settings','mfold=o&libraryContent=browse&hidetb=1'),(16,1,'wp_user-settings-time','1396595648'),(17,1,'closedpostboxes_portfolio','a:0:{}'),(18,1,'metaboxhidden_portfolio','a:1:{i:0;s:7:\"slugdiv\";}'),(19,1,'meta-box-order_portfolio','a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:58:\"postexcerpt,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),(20,1,'screen_layout_portfolio','2'),(21,1,'closedpostboxes_post','a:0:{}'),(22,1,'metaboxhidden_post','a:1:{i:0;s:7:\"slugdiv\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$B1g0uPsHoun/NZqQkz2oUYvylOUZKr1','admin','marcoaasilva@gmail.com','','2014-04-01 21:19:30','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-09  9:34:18
