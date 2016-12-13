-- MySQL dump 10.13  Distrib 5.5.53, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	5.5.53-0ubuntu0.14.04.1

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
-- Table structure for table `aldryn_background_image_backgroundimage`
--

DROP TABLE IF EXISTS `aldryn_background_image_backgroundimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_background_image_backgroundimage` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `label` varchar(128) NOT NULL,
  `id_name` varchar(50) NOT NULL,
  `tag_type` varchar(50) NOT NULL,
  `background_repeat` varchar(128) DEFAULT NULL,
  `background_position` varchar(128) DEFAULT NULL,
  `background_size` varchar(128) DEFAULT NULL,
  `additional_class_names` longtext NOT NULL,
  `background_image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `aldryn_background_image_backgroundimage_560be1e0` (`background_image_id`),
  CONSTRAINT `background_image_id_4fc5af930a52b6d0_fk_filer_image_file_ptr_id` FOREIGN KEY (`background_image_id`) REFERENCES `filer_image` (`file_ptr_id`),
  CONSTRAINT `aldryn_bac_cmsplugin_ptr_id_2eb2054c7b80afca_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_background_image_backgroundimage`
--

LOCK TABLES `aldryn_background_image_backgroundimage` WRITE;
/*!40000 ALTER TABLE `aldryn_background_image_backgroundimage` DISABLE KEYS */;
INSERT INTO `aldryn_background_image_backgroundimage` VALUES (16,'','','header','repeat','','','intro-header',4),(40,'','','header','repeat','','','intro-header',4),(46,'','','header','repeat','','','intro-header',5),(65,'','','header','repeat','','','intro-header',4),(92,'','','header','repeat','','','intro-header',5),(100,'','','header','repeat','','','intro-header',4),(106,'','','header','repeat','','','intro-header',4),(113,'','','header','repeat','','','intro-header',2),(160,'','','header','repeat','','','intro-header',2);
/*!40000 ALTER TABLE `aldryn_background_image_backgroundimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3alertplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3alertplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3alertplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `context` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_23eeaeb886645d41_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3alertplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3alertplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3alertplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3alertplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3blockquoteplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3blockquoteplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3blockquoteplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `reverse` tinyint(1) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_5c15de90480dda7b_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3blockquoteplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3blockquoteplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3blockquoteplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3blockquoteplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3buttonplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3buttonplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3buttonplugin` (
  `link_url` varchar(200) NOT NULL,
  `link_anchor` varchar(128) NOT NULL,
  `link_mailto` varchar(254) DEFAULT NULL,
  `link_phone` varchar(40) DEFAULT NULL,
  `link_target` varchar(100) NOT NULL,
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `label` varchar(256) NOT NULL,
  `type` varchar(10) NOT NULL,
  `btn_context` varchar(255) NOT NULL,
  `btn_size` varchar(255) NOT NULL,
  `btn_block` tinyint(1) NOT NULL,
  `txt_context` varchar(255) NOT NULL,
  `icon_left` varchar(255) NOT NULL,
  `icon_right` varchar(255) NOT NULL,
  `classes` longtext NOT NULL,
  `responsive` longtext NOT NULL,
  `responsive_print` longtext NOT NULL,
  `link_file_id` int(11) DEFAULT NULL,
  `link_page_id` int(11) DEFAULT NULL,
  `link_attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `aldryn_bootstrap3_boostrap3buttonplugin_6e2e5dae` (`link_file_id`),
  KEY `aldryn_bootstrap3_boostrap3buttonplugin_5b76e141` (`link_page_id`),
  CONSTRAINT `aldryn_bootstrap3_b_link_page_id_74458fee04d19791_fk_cms_page_id` FOREIGN KEY (`link_page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `aldryn_bootstrap3_link_file_id_7a62a38be957d76e_fk_filer_file_id` FOREIGN KEY (`link_file_id`) REFERENCES `filer_file` (`id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_4c0f8730c123eb96_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3buttonplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3buttonplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3buttonplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3buttonplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3iconplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3iconplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3iconplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_415e45f04c4848ab_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3iconplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3iconplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3iconplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3iconplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3imageplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3imageplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3imageplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `alt` longtext NOT NULL,
  `title` longtext NOT NULL,
  `aspect_ratio` varchar(10) NOT NULL,
  `thumbnail` tinyint(1) NOT NULL,
  `shape` varchar(64) NOT NULL,
  `classes` longtext NOT NULL,
  `img_responsive` tinyint(1) NOT NULL,
  `file_id` int(11) DEFAULT NULL,
  `override_height` int(11),
  `override_width` int(11),
  `use_original_image` tinyint(1) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `aldryn_bootstrap3_boostrap3imageplugin_814552b9` (`file_id`),
  CONSTRAINT `aldryn_boots_file_id_661c0051c20cb6f6_fk_filer_image_file_ptr_id` FOREIGN KEY (`file_id`) REFERENCES `filer_image` (`file_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_1e85a816567daa14_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3imageplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3imageplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3imageplugin` DISABLE KEYS */;
INSERT INTO `aldryn_bootstrap3_boostrap3imageplugin` VALUES (39,'','','',0,'','',1,6,NULL,NULL,0);
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3imageplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3labelplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3labelplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3labelplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `label` varchar(256) NOT NULL,
  `context` varchar(255) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_54010a691c1d39b7_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3labelplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3labelplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3labelplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3labelplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3panelbodyplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3panelbodyplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3panelbodyplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_70bde3480e8969d9_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3panelbodyplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3panelbodyplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3panelbodyplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3panelbodyplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3panelfooterplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3panelfooterplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3panelfooterplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_22148ed3668c619a_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3panelfooterplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3panelfooterplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3panelfooterplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3panelfooterplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3panelheadingplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3panelheadingplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3panelheadingplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` longtext NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_5f4d0d45dd074b98_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3panelheadingplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3panelheadingplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3panelheadingplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3panelheadingplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3panelplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3panelplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3panelplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `context` varchar(255) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_74bba5aabb3eb3b1_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3panelplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3panelplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3panelplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3panelplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3spacerplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3spacerplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3spacerplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_78fe6a94db1bb1e6_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3spacerplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3spacerplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3spacerplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3spacerplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_boostrap3wellplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_boostrap3wellplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_boostrap3wellplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_7be7b408bae60dd0_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_boostrap3wellplugin`
--

LOCK TABLES `aldryn_bootstrap3_boostrap3wellplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3wellplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_boostrap3wellplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_bootstrap3accordionitemplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_bootstrap3accordionitemplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_bootstrap3accordionitemplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` longtext NOT NULL,
  `context` varchar(255) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_7964362dcd0d9783_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_bootstrap3accordionitemplugin`
--

LOCK TABLES `aldryn_bootstrap3_bootstrap3accordionitemplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3accordionitemplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3accordionitemplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_bootstrap3accordionplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_bootstrap3accordionplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_bootstrap3accordionplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `index` int(10) unsigned DEFAULT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_463718163e0564e6_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_bootstrap3accordionplugin`
--

LOCK TABLES `aldryn_bootstrap3_bootstrap3accordionplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3accordionplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3accordionplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_bootstrap3carouselplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_bootstrap3carouselplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_bootstrap3carouselplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `style` varchar(50) NOT NULL,
  `aspect_ratio` varchar(10) NOT NULL,
  `transition_effect` varchar(50) NOT NULL,
  `ride` tinyint(1) NOT NULL,
  `interval` int(11) NOT NULL,
  `wrap` tinyint(1) NOT NULL,
  `pause` tinyint(1) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_1e6f5b935628dca5_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_bootstrap3carouselplugin`
--

LOCK TABLES `aldryn_bootstrap3_bootstrap3carouselplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3carouselplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3carouselplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_bootstrap3carouselslidefolderplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_bootstrap3carouselslidefolderplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_bootstrap3carouselslidefolderplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `classes` longtext NOT NULL,
  `folder_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `aldryn_bootstrap3_bootstrap3carouselslidefolderplugin_a8a44dbb` (`folder_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_32bed68319625dd3_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `aldryn_bootstrap3__folder_id_369f5f84bcd59c11_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_bootstrap3carouselslidefolderplugin`
--

LOCK TABLES `aldryn_bootstrap3_bootstrap3carouselslidefolderplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3carouselslidefolderplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3carouselslidefolderplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_bootstrap3carouselslideplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_bootstrap3carouselslideplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_bootstrap3carouselslideplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `link_url` varchar(200) NOT NULL,
  `link_anchor` varchar(128) NOT NULL,
  `link_mailto` varchar(254) DEFAULT NULL,
  `link_phone` varchar(40) DEFAULT NULL,
  `link_target` varchar(100) NOT NULL,
  `link_text` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `classes` longtext NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `link_file_id` int(11) DEFAULT NULL,
  `link_page_id` int(11) DEFAULT NULL,
  `link_attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `aldryn_bootstrap3_bootstrap3carouselslideplugin_f33175e6` (`image_id`),
  KEY `aldryn_bootstrap3_bootstrap3carouselslideplugin_6e2e5dae` (`link_file_id`),
  KEY `aldryn_bootstrap3_bootstrap3carouselslideplugin_5b76e141` (`link_page_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_5cf00348e3810a4f_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `aldryn_bootstrap3_bo_link_page_id_ebaa817f8d1cb4a_fk_cms_page_id` FOREIGN KEY (`link_page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `aldryn_bootstrap3_link_file_id_473a2399daa5f493_fk_filer_file_id` FOREIGN KEY (`link_file_id`) REFERENCES `filer_file` (`id`),
  CONSTRAINT `aldryn_boot_image_id_4c92230673adeea7_fk_filer_image_file_ptr_id` FOREIGN KEY (`image_id`) REFERENCES `filer_image` (`file_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_bootstrap3carouselslideplugin`
--

LOCK TABLES `aldryn_bootstrap3_bootstrap3carouselslideplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3carouselslideplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3carouselslideplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_bootstrap3columnplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_bootstrap3columnplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_bootstrap3columnplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `classes` longtext NOT NULL,
  `tag` varchar(50) NOT NULL,
  `xs_col` int(11) DEFAULT NULL,
  `xs_offset` int(11) DEFAULT NULL,
  `xs_push` int(11) DEFAULT NULL,
  `xs_pull` int(11) DEFAULT NULL,
  `sm_col` int(11) DEFAULT NULL,
  `sm_offset` int(11) DEFAULT NULL,
  `sm_push` int(11) DEFAULT NULL,
  `sm_pull` int(11) DEFAULT NULL,
  `md_col` int(11) DEFAULT NULL,
  `md_offset` int(11) DEFAULT NULL,
  `md_push` int(11) DEFAULT NULL,
  `md_pull` int(11) DEFAULT NULL,
  `lg_col` int(11) DEFAULT NULL,
  `lg_offset` int(11) DEFAULT NULL,
  `lg_push` int(11) DEFAULT NULL,
  `lg_pull` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `aldryn_bootstrap3_bootstrap3columnplugin_e4d23e84` (`tag`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_2b3c18f7e511e08b_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_bootstrap3columnplugin`
--

LOCK TABLES `aldryn_bootstrap3_bootstrap3columnplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3columnplugin` DISABLE KEYS */;
INSERT INTO `aldryn_bootstrap3_bootstrap3columnplugin` VALUES (19,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(95,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(103,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(109,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(116,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(163,'','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3columnplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_bootstrap3fileplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_bootstrap3fileplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_bootstrap3fileplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `open_new_window` tinyint(1) NOT NULL,
  `show_file_size` tinyint(1) NOT NULL,
  `icon_left` varchar(255) NOT NULL,
  `icon_right` varchar(255) NOT NULL,
  `classes` longtext NOT NULL,
  `file_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `aldryn_bootstrap3_bootstrap3fileplugin_814552b9` (`file_id`),
  CONSTRAINT `aldryn_bootstrap3_boot_file_id_170c7e6e5e6a0cb7_fk_filer_file_id` FOREIGN KEY (`file_id`) REFERENCES `filer_file` (`id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_10f28053f96a0fcb_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_bootstrap3fileplugin`
--

LOCK TABLES `aldryn_bootstrap3_bootstrap3fileplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3fileplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3fileplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_bootstrap3listgroupitemplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_bootstrap3listgroupitemplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_bootstrap3listgroupitemplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` longtext NOT NULL,
  `context` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_6a538d3eba92ea30_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_bootstrap3listgroupitemplugin`
--

LOCK TABLES `aldryn_bootstrap3_bootstrap3listgroupitemplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3listgroupitemplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3listgroupitemplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_bootstrap3listgroupplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_bootstrap3listgroupplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_bootstrap3listgroupplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `classes` longtext NOT NULL,
  `add_list_group_class` tinyint(1) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_2651d31113e817ef_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_bootstrap3listgroupplugin`
--

LOCK TABLES `aldryn_bootstrap3_bootstrap3listgroupplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3listgroupplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3listgroupplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_bootstrap3_bootstrap3rowplugin`
--

DROP TABLE IF EXISTS `aldryn_bootstrap3_bootstrap3rowplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_bootstrap3_bootstrap3rowplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `classes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_boo_cmsplugin_ptr_id_48bad58968d2fd4a_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_bootstrap3_bootstrap3rowplugin`
--

LOCK TABLES `aldryn_bootstrap3_bootstrap3rowplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3rowplugin` DISABLE KEYS */;
INSERT INTO `aldryn_bootstrap3_bootstrap3rowplugin` VALUES (18,''),(42,''),(48,''),(67,''),(94,''),(102,''),(108,''),(115,''),(162,'');
/*!40000 ALTER TABLE `aldryn_bootstrap3_bootstrap3rowplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_categories_category`
--

DROP TABLE IF EXISTS `aldryn_categories_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_categories_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lft` int(10) unsigned NOT NULL,
  `rgt` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  `depth` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `aldryn_categories_category_caf7cc51` (`lft`),
  KEY `aldryn_categories_category_0d000fbb` (`rgt`),
  KEY `aldryn_categories_category_656442a0` (`tree_id`),
  KEY `aldryn_categories_category_12a055bf` (`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_categories_category`
--

LOCK TABLES `aldryn_categories_category` WRITE;
/*!40000 ALTER TABLE `aldryn_categories_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_categories_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_categories_category_translation`
--

DROP TABLE IF EXISTS `aldryn_categories_category_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_categories_category_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_code` varchar(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `master_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `aldryn_categories_category_t_language_code_54049a87a2ca44c0_uniq` (`language_code`,`slug`),
  UNIQUE KEY `aldryn_categories_category_t_language_code_465c17f45a1604da_uniq` (`language_code`,`master_id`),
  KEY `aldry_master_id_a1f5710864cf9ce_fk_aldryn_categories_category_id` (`master_id`),
  KEY `aldryn_categories_category_translation_60716c2f` (`language_code`),
  KEY `aldryn_categories_category_translation_2dbcba41` (`slug`),
  CONSTRAINT `aldry_master_id_a1f5710864cf9ce_fk_aldryn_categories_category_id` FOREIGN KEY (`master_id`) REFERENCES `aldryn_categories_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_categories_category_translation`
--

LOCK TABLES `aldryn_categories_category_translation` WRITE;
/*!40000 ALTER TABLE `aldryn_categories_category_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_categories_category_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_forms_emailfieldplugin`
--

DROP TABLE IF EXISTS `aldryn_forms_emailfieldplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_forms_emailfieldplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `label` varchar(50) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `required_message` longtext,
  `placeholder_text` varchar(50) NOT NULL,
  `help_text` longtext,
  `min_value` int(10) unsigned DEFAULT NULL,
  `max_value` int(10) unsigned DEFAULT NULL,
  `custom_classes` varchar(200) NOT NULL,
  `email_send_notification` tinyint(1) NOT NULL,
  `email_subject` varchar(200) NOT NULL,
  `email_body` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_for_cmsplugin_ptr_id_344136a595ce368b_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_forms_emailfieldplugin`
--

LOCK TABLES `aldryn_forms_emailfieldplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_forms_emailfieldplugin` DISABLE KEYS */;
INSERT INTO `aldryn_forms_emailfieldplugin` VALUES (137,'Email',1,'','email address','',NULL,NULL,'',0,'',''),(156,'Email',1,'','email address','',NULL,NULL,'',0,'','');
/*!40000 ALTER TABLE `aldryn_forms_emailfieldplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_forms_fieldplugin`
--

DROP TABLE IF EXISTS `aldryn_forms_fieldplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_forms_fieldplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `label` varchar(50) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `required_message` longtext,
  `placeholder_text` varchar(50) NOT NULL,
  `help_text` longtext,
  `min_value` int(10) unsigned DEFAULT NULL,
  `max_value` int(10) unsigned DEFAULT NULL,
  `custom_classes` varchar(200) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_for_cmsplugin_ptr_id_4ab62c48d2393ae6_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_forms_fieldplugin`
--

LOCK TABLES `aldryn_forms_fieldplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_forms_fieldplugin` DISABLE KEYS */;
INSERT INTO `aldryn_forms_fieldplugin` VALUES (136,'Name',1,'','your name here','',NULL,NULL,''),(139,'Phone Number',0,'','number','',NULL,NULL,''),(155,'Name',1,'','your name here','',NULL,NULL,''),(158,'Phone Number',0,'','number','',NULL,NULL,'');
/*!40000 ALTER TABLE `aldryn_forms_fieldplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_forms_fieldsetplugin`
--

DROP TABLE IF EXISTS `aldryn_forms_fieldsetplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_forms_fieldsetplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `legend` varchar(50) NOT NULL,
  `custom_classes` varchar(200) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_for_cmsplugin_ptr_id_79d350cf844fe665_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_forms_fieldsetplugin`
--

LOCK TABLES `aldryn_forms_fieldsetplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_forms_fieldsetplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_forms_fieldsetplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_forms_fileuploadfieldplugin`
--

DROP TABLE IF EXISTS `aldryn_forms_fileuploadfieldplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_forms_fileuploadfieldplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `label` varchar(50) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `required_message` longtext,
  `placeholder_text` varchar(50) NOT NULL,
  `help_text` longtext,
  `min_value` int(10) unsigned DEFAULT NULL,
  `max_value` int(10) unsigned DEFAULT NULL,
  `custom_classes` varchar(200) NOT NULL,
  `max_size` bigint(20) DEFAULT NULL,
  `upload_to_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `aldryn_forms_fileuploadfieldplugin_d1bcedbe` (`upload_to_id`),
  CONSTRAINT `aldryn_for_cmsplugin_ptr_id_45e21597cfaa66fb_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `aldryn_forms_fi_upload_to_id_221e9a7b8b99ff5b_fk_filer_folder_id` FOREIGN KEY (`upload_to_id`) REFERENCES `filer_folder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_forms_fileuploadfieldplugin`
--

LOCK TABLES `aldryn_forms_fileuploadfieldplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_forms_fileuploadfieldplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_forms_fileuploadfieldplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_forms_formbuttonplugin`
--

DROP TABLE IF EXISTS `aldryn_forms_formbuttonplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_forms_formbuttonplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `label` varchar(50) NOT NULL,
  `custom_classes` varchar(200) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_for_cmsplugin_ptr_id_4cfb753393c1dd89_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_forms_formbuttonplugin`
--

LOCK TABLES `aldryn_forms_formbuttonplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_forms_formbuttonplugin` DISABLE KEYS */;
INSERT INTO `aldryn_forms_formbuttonplugin` VALUES (152,'Send',''),(159,'Send','');
/*!40000 ALTER TABLE `aldryn_forms_formbuttonplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_forms_formplugin`
--

DROP TABLE IF EXISTS `aldryn_forms_formplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_forms_formplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `error_message` longtext,
  `success_message` longtext,
  `redirect_type` varchar(20) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `custom_classes` varchar(200) NOT NULL,
  `form_template` varchar(200) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `aldryn_forms_formplugin_1a63c800` (`page_id`),
  CONSTRAINT `aldryn_for_cmsplugin_ptr_id_423e6acc1a56ed07_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `aldryn_forms_formplugin_page_id_431319f95b157340_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_forms_formplugin`
--

LOCK TABLES `aldryn_forms_formplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_forms_formplugin` DISABLE KEYS */;
INSERT INTO `aldryn_forms_formplugin` VALUES (127,'Contact','','','redirect_to_page',NULL,'','aldryn_forms/form.html',7),(154,'Contact','','','redirect_to_page',NULL,'','aldryn_forms/form.html',7);
/*!40000 ALTER TABLE `aldryn_forms_formplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_forms_formplugin_recipients`
--

DROP TABLE IF EXISTS `aldryn_forms_formplugin_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_forms_formplugin_recipients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formplugin_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `formplugin_id` (`formplugin_id`,`user_id`),
  KEY `aldryn_forms_formplugin_user_id_714e743a0da9d6d6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `aldryn_forms_formplugin_user_id_714e743a0da9d6d6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `D322568474e6814cdf4c9adaf8098910` FOREIGN KEY (`formplugin_id`) REFERENCES `aldryn_forms_formplugin` (`cmsplugin_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_forms_formplugin_recipients`
--

LOCK TABLES `aldryn_forms_formplugin_recipients` WRITE;
/*!40000 ALTER TABLE `aldryn_forms_formplugin_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_forms_formplugin_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_forms_formsubmission`
--

DROP TABLE IF EXISTS `aldryn_forms_formsubmission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_forms_formsubmission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `data` longtext NOT NULL,
  `recipients` longtext NOT NULL,
  `language` varchar(10) NOT NULL,
  `form_url` varchar(255) NOT NULL,
  `sent_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `aldryn_forms_formsubmission_b068931c` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_forms_formsubmission`
--

LOCK TABLES `aldryn_forms_formsubmission` WRITE;
/*!40000 ALTER TABLE `aldryn_forms_formsubmission` DISABLE KEYS */;
INSERT INTO `aldryn_forms_formsubmission` VALUES (1,'Contact','[{\"name\": \"textfield_1\", \"label\": \"Name\", \"field_occurrence\": 1, \"value\": \"osama\"}, {\"name\": \"emailfield_1\", \"label\": \"Email\", \"field_occurrence\": 1, \"value\": \"osama7901@gmail.com\"}, {\"name\": \"textfield_2\", \"label\": \"Phone Number\", \"field_occurrence\": 1, \"value\": \"092530612\"}, {\"name\": \"textareafield_1\", \"label\": \"Message\", \"field_occurrence\": 1, \"value\": \"hello\"}]','[]','en','http://onasite.dev/en/contact/','2016-12-13 08:09:06');
/*!40000 ALTER TABLE `aldryn_forms_formsubmission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_forms_imageuploadfieldplugin`
--

DROP TABLE IF EXISTS `aldryn_forms_imageuploadfieldplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_forms_imageuploadfieldplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `label` varchar(50) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `required_message` longtext,
  `placeholder_text` varchar(50) NOT NULL,
  `help_text` longtext,
  `min_value` int(10) unsigned DEFAULT NULL,
  `max_value` int(10) unsigned DEFAULT NULL,
  `custom_classes` varchar(200) NOT NULL,
  `max_size` bigint(20) DEFAULT NULL,
  `max_width` int(10) unsigned DEFAULT NULL,
  `max_height` int(10) unsigned DEFAULT NULL,
  `upload_to_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `aldryn_forms_imageuploadfieldplugin_d1bcedbe` (`upload_to_id`),
  CONSTRAINT `aldryn_for_cmsplugin_ptr_id_7cae844604a8c661_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `aldryn_forms_im_upload_to_id_644117159681e53f_fk_filer_folder_id` FOREIGN KEY (`upload_to_id`) REFERENCES `filer_folder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_forms_imageuploadfieldplugin`
--

LOCK TABLES `aldryn_forms_imageuploadfieldplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_forms_imageuploadfieldplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_forms_imageuploadfieldplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_forms_option`
--

DROP TABLE IF EXISTS `aldryn_forms_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_forms_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) NOT NULL,
  `default_value` tinyint(1) NOT NULL,
  `field_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `D6fc85cc38d556722af3673e75d2ba11` (`field_id`),
  CONSTRAINT `D6fc85cc38d556722af3673e75d2ba11` FOREIGN KEY (`field_id`) REFERENCES `aldryn_forms_fieldplugin` (`cmsplugin_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_forms_option`
--

LOCK TABLES `aldryn_forms_option` WRITE;
/*!40000 ALTER TABLE `aldryn_forms_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_forms_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_forms_textareafieldplugin`
--

DROP TABLE IF EXISTS `aldryn_forms_textareafieldplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_forms_textareafieldplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `label` varchar(50) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `required_message` longtext,
  `placeholder_text` varchar(50) NOT NULL,
  `help_text` longtext,
  `min_value` int(10) unsigned DEFAULT NULL,
  `max_value` int(10) unsigned DEFAULT NULL,
  `custom_classes` varchar(200) NOT NULL,
  `text_area_columns` int(10) unsigned DEFAULT NULL,
  `text_area_rows` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_form_cmsplugin_ptr_id_ea809c4eb58269c_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_forms_textareafieldplugin`
--

LOCK TABLES `aldryn_forms_textareafieldplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_forms_textareafieldplugin` DISABLE KEYS */;
INSERT INTO `aldryn_forms_textareafieldplugin` VALUES (138,'Message',1,'','message body','',NULL,NULL,'',NULL,5),(157,'Message',1,'','message body','',NULL,NULL,'',NULL,5);
/*!40000 ALTER TABLE `aldryn_forms_textareafieldplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_newsblog_article`
--

DROP TABLE IF EXISTS `aldryn_newsblog_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_newsblog_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publishing_date` datetime NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `app_config_id` int(11) NOT NULL,
  `author_id` int(11),
  `content_id` int(11),
  `featured_image_id` int(11),
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `aldryn_newsblog_article_75892900` (`is_published`),
  KEY `aldryn_newsblog_article_39b2604d` (`is_featured`),
  KEY `aldryn_newsblog_article_40e85b1f` (`app_config_id`),
  KEY `aldryn_newsblog_article_4f331e2f` (`author_id`),
  KEY `aldryn_newsblog_article_e14f02ad` (`content_id`),
  KEY `aldryn_newsblog_article_cdbc3e64` (`featured_image_id`),
  KEY `aldryn_newsblog_article_5e7b1936` (`owner_id`),
  CONSTRAINT `D9593e728783b6420944908688365273` FOREIGN KEY (`app_config_id`) REFERENCES `aldryn_newsblog_newsblogconfig` (`id`),
  CONSTRAINT `aldryn_newsblog_article_owner_id_60975a935474b44_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `aldryn_newsblo_content_id_35a9a957d6e39d78_fk_cms_placeholder_id` FOREIGN KEY (`content_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `aldryn_new_author_id_3e34d5b39e3c8e6b_fk_aldryn_people_person_id` FOREIGN KEY (`author_id`) REFERENCES `aldryn_people_person` (`id`),
  CONSTRAINT `al_featured_image_id_27d6e6996d18e496_fk_filer_image_file_ptr_id` FOREIGN KEY (`featured_image_id`) REFERENCES `filer_image` (`file_ptr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_newsblog_article`
--

LOCK TABLES `aldryn_newsblog_article` WRITE;
/*!40000 ALTER TABLE `aldryn_newsblog_article` DISABLE KEYS */;
INSERT INTO `aldryn_newsblog_article` VALUES (1,'2016-12-12 13:16:19',1,1,1,2,17,NULL,1),(2,'2016-12-12 13:23:26',1,1,1,2,18,NULL,1),(3,'2016-12-12 13:23:48',1,1,1,2,21,3,1);
/*!40000 ALTER TABLE `aldryn_newsblog_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_newsblog_article_categories`
--

DROP TABLE IF EXISTS `aldryn_newsblog_article_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_newsblog_article_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `article_id` (`article_id`,`category_id`),
  KEY `al_category_id_515e816c8cdf033c_fk_aldryn_categories_category_id` (`category_id`),
  CONSTRAINT `al_category_id_515e816c8cdf033c_fk_aldryn_categories_category_id` FOREIGN KEY (`category_id`) REFERENCES `aldryn_categories_category` (`id`),
  CONSTRAINT `aldryn_article_id_4c06a4cdf2b7c78d_fk_aldryn_newsblog_article_id` FOREIGN KEY (`article_id`) REFERENCES `aldryn_newsblog_article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_newsblog_article_categories`
--

LOCK TABLES `aldryn_newsblog_article_categories` WRITE;
/*!40000 ALTER TABLE `aldryn_newsblog_article_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_newsblog_article_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_newsblog_article_related`
--

DROP TABLE IF EXISTS `aldryn_newsblog_article_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_newsblog_article_related` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_article_id` int(11) NOT NULL,
  `to_article_id` int(11) NOT NULL,
  `sort_value` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `from_article_id` (`from_article_id`,`to_article_id`),
  KEY `aldr_to_article_id_fbda2436440d5f6_fk_aldryn_newsblog_article_id` (`to_article_id`),
  CONSTRAINT `aldr_to_article_id_fbda2436440d5f6_fk_aldryn_newsblog_article_id` FOREIGN KEY (`to_article_id`) REFERENCES `aldryn_newsblog_article` (`id`),
  CONSTRAINT `a_from_article_id_4705fc830e4d1981_fk_aldryn_newsblog_article_id` FOREIGN KEY (`from_article_id`) REFERENCES `aldryn_newsblog_article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_newsblog_article_related`
--

LOCK TABLES `aldryn_newsblog_article_related` WRITE;
/*!40000 ALTER TABLE `aldryn_newsblog_article_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_newsblog_article_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_newsblog_article_translation`
--

DROP TABLE IF EXISTS `aldryn_newsblog_article_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_newsblog_article_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_code` varchar(15) NOT NULL,
  `title` varchar(234) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `lead_in` longtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` longtext NOT NULL,
  `meta_keywords` longtext NOT NULL,
  `search_data` longtext NOT NULL,
  `master_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `aldryn_newsblog_article_tran_language_code_5cac8eb2196f7e76_uniq` (`language_code`,`slug`),
  UNIQUE KEY `aldryn_newsblog_article_tran_language_code_2960efa31cdd5250_uniq` (`language_code`,`master_id`),
  KEY `aldryn__master_id_5b41b9b68fff6578_fk_aldryn_newsblog_article_id` (`master_id`),
  KEY `aldryn_newsblog_article_translation_60716c2f` (`language_code`),
  KEY `aldryn_newsblog_article_translation_2dbcba41` (`slug`),
  CONSTRAINT `aldryn__master_id_5b41b9b68fff6578_fk_aldryn_newsblog_article_id` FOREIGN KEY (`master_id`) REFERENCES `aldryn_newsblog_article` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_newsblog_article_translation`
--

LOCK TABLES `aldryn_newsblog_article_translation` WRITE;
/*!40000 ALTER TABLE `aldryn_newsblog_article_translation` DISABLE KEYS */;
INSERT INTO `aldryn_newsblog_article_translation` VALUES (1,'en','Four loko freegan wayfarers','four-loko-freegan-wayfarers','<p>Ramps sustainable vape mixtape aesthetic, farm-to-table la croix yuccie tbh edison bulb hella. IPhone four loko pok pok poke squid. Chambray brooklyn quinoa tacos, jianbing asymmetrical pug cred kombucha artisan brunch beard.</p>\n','','','','',1),(2,'en','Four loko freegan wayfarers','four-loko-freegan-wayfarers-1','<p>Vexillologist chillwave mumblecore, typewriter 8-bit single-origin coffee gochujang shoreditch lumbersexual beard pitchfork master cleanse actually drinking vinegar. Blog kale chips swag synth normcore</p>\n','','','','',2),(3,'en','Ramps sustainable vape','ramps-sustainable-vape','<p>Vexillologist chillwave mumblecore, typewriter 8-bit single-origin coffee gochujang shoreditch lumbersexual beard pitchfork master cleanse actually drinking vinegar. Blog kale chips swag synth normcore YOLO. Echo park</p>\n','','','','',3);
/*!40000 ALTER TABLE `aldryn_newsblog_article_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_newsblog_newsblogarchiveplugin`
--

DROP TABLE IF EXISTS `aldryn_newsblog_newsblogarchiveplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_newsblog_newsblogarchiveplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `app_config_id` int(11) NOT NULL,
  `cache_duration` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `aldryn_newsblog_newsblogarchiveplugin_40e85b1f` (`app_config_id`),
  CONSTRAINT `a73c218f8de160b98bf8c09747e4d0dd` FOREIGN KEY (`app_config_id`) REFERENCES `aldryn_newsblog_newsblogconfig` (`id`),
  CONSTRAINT `aldryn_news_cmsplugin_ptr_id_9b26e86ee3af454_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_newsblog_newsblogarchiveplugin`
--

LOCK TABLES `aldryn_newsblog_newsblogarchiveplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_newsblog_newsblogarchiveplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_newsblog_newsblogarchiveplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_newsblog_newsblogarticlesearchplugin`
--

DROP TABLE IF EXISTS `aldryn_newsblog_newsblogarticlesearchplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_newsblog_newsblogarticlesearchplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `max_articles` int(10) unsigned NOT NULL,
  `app_config_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `aldryn_newsblog_newsblogarticlesearchplugin_40e85b1f` (`app_config_id`),
  CONSTRAINT `c7507ddd98fa540bc1cd3716da52ae8b` FOREIGN KEY (`app_config_id`) REFERENCES `aldryn_newsblog_newsblogconfig` (`id`),
  CONSTRAINT `aldryn_new_cmsplugin_ptr_id_470e64e798a49696_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_newsblog_newsblogarticlesearchplugin`
--

LOCK TABLES `aldryn_newsblog_newsblogarticlesearchplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_newsblog_newsblogarticlesearchplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_newsblog_newsblogarticlesearchplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_newsblog_newsblogauthorsplugin`
--

DROP TABLE IF EXISTS `aldryn_newsblog_newsblogauthorsplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_newsblog_newsblogauthorsplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `app_config_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `aldryn_newsblog_newsblogauthorsplugin_40e85b1f` (`app_config_id`),
  CONSTRAINT `c18fc018d520d10a1b602ea8485de2f9` FOREIGN KEY (`app_config_id`) REFERENCES `aldryn_newsblog_newsblogconfig` (`id`),
  CONSTRAINT `aldryn_news_cmsplugin_ptr_id_7c0b3c0a7553e06_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_newsblog_newsblogauthorsplugin`
--

LOCK TABLES `aldryn_newsblog_newsblogauthorsplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_newsblog_newsblogauthorsplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_newsblog_newsblogauthorsplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_newsblog_newsblogcategoriesplugin`
--

DROP TABLE IF EXISTS `aldryn_newsblog_newsblogcategoriesplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_newsblog_newsblogcategoriesplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `app_config_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `aldryn_newsblog_newsblogcategoriesplugin_40e85b1f` (`app_config_id`),
  CONSTRAINT `D4de887762781c5a9e28aac4894c071a` FOREIGN KEY (`app_config_id`) REFERENCES `aldryn_newsblog_newsblogconfig` (`id`),
  CONSTRAINT `aldryn_new_cmsplugin_ptr_id_331a28b3017dd34b_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_newsblog_newsblogcategoriesplugin`
--

LOCK TABLES `aldryn_newsblog_newsblogcategoriesplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_newsblog_newsblogcategoriesplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_newsblog_newsblogcategoriesplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_newsblog_newsblogconfig`
--

DROP TABLE IF EXISTS `aldryn_newsblog_newsblogconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_newsblog_newsblogconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `namespace` varchar(100) NOT NULL,
  `app_data` longtext NOT NULL,
  `permalink_type` varchar(8) NOT NULL,
  `non_permalink_handling` smallint(6) NOT NULL,
  `paginate_by` int(10) unsigned NOT NULL,
  `create_authors` tinyint(1) NOT NULL,
  `search_indexed` tinyint(1) NOT NULL,
  `placeholder_base_sidebar_id` int(11) DEFAULT NULL,
  `placeholder_base_top_id` int(11) DEFAULT NULL,
  `placeholder_detail_bottom_id` int(11) DEFAULT NULL,
  `placeholder_detail_footer_id` int(11) DEFAULT NULL,
  `placeholder_detail_top_id` int(11) DEFAULT NULL,
  `placeholder_list_footer_id` int(11) DEFAULT NULL,
  `placeholder_list_top_id` int(11) DEFAULT NULL,
  `template_prefix` varchar(20),
  `pagination_pages_start` int(10) unsigned NOT NULL,
  `pagination_pages_visible` int(10) unsigned NOT NULL,
  `exclude_featured` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `namespace` (`namespace`),
  KEY `aldryn_newsblog_newsblogconfig_7c049d9f` (`placeholder_base_sidebar_id`),
  KEY `aldryn_newsblog_newsblogconfig_55561819` (`placeholder_base_top_id`),
  KEY `aldryn_newsblog_newsblogconfig_e2d1ed82` (`placeholder_detail_bottom_id`),
  KEY `aldryn_newsblog_newsblogconfig_5918df56` (`placeholder_detail_footer_id`),
  KEY `aldryn_newsblog_newsblogconfig_90b0156f` (`placeholder_detail_top_id`),
  KEY `aldryn_newsblog_newsblogconfig_8806551e` (`placeholder_list_footer_id`),
  KEY `aldryn_newsblog_newsblogconfig_ba2f8115` (`placeholder_list_top_id`),
  CONSTRAINT `a_placeholder_base_top_id_6f679abc3118e5d3_fk_cms_placeholder_id` FOREIGN KEY (`placeholder_base_top_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `a_placeholder_list_top_id_39cda3ff846a59a4_fk_cms_placeholder_id` FOREIGN KEY (`placeholder_list_top_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `D420181af99c9862a5babdc41575f197` FOREIGN KEY (`placeholder_detail_bottom_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `D49182f09ec06f07c3f396079a5e0ec6` FOREIGN KEY (`placeholder_base_sidebar_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `d6e15fc53cfa483b5ce40bd301256144` FOREIGN KEY (`placeholder_detail_footer_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `D6f0b47ac5ed3b01dcff344d4da10bba` FOREIGN KEY (`placeholder_list_footer_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `fcea222253ccd8d95c0d1567966874e4` FOREIGN KEY (`placeholder_detail_top_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_newsblog_newsblogconfig`
--

LOCK TABLES `aldryn_newsblog_newsblogconfig` WRITE;
/*!40000 ALTER TABLE `aldryn_newsblog_newsblogconfig` DISABLE KEYS */;
INSERT INTO `aldryn_newsblog_newsblogconfig` VALUES (1,'aldryn_newsblog.cms_appconfig.NewsBlogConfig','aldryn_newsblog_default','{}','slug',302,5,1,1,10,11,12,13,14,15,16,NULL,10,4,0);
/*!40000 ALTER TABLE `aldryn_newsblog_newsblogconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_newsblog_newsblogconfig_translation`
--

DROP TABLE IF EXISTS `aldryn_newsblog_newsblogconfig_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_newsblog_newsblogconfig_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_code` varchar(15) NOT NULL,
  `app_title` varchar(234) NOT NULL,
  `master_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `aldryn_newsblog_newsblogconf_language_code_18e012335cb67d1e_uniq` (`language_code`,`master_id`),
  KEY `master_id_551a94119d37c78a_fk_aldryn_newsblog_newsblogconfig_id` (`master_id`),
  KEY `aldryn_newsblog_newsblogconfig_translation_60716c2f` (`language_code`),
  CONSTRAINT `master_id_551a94119d37c78a_fk_aldryn_newsblog_newsblogconfig_id` FOREIGN KEY (`master_id`) REFERENCES `aldryn_newsblog_newsblogconfig` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_newsblog_newsblogconfig_translation`
--

LOCK TABLES `aldryn_newsblog_newsblogconfig_translation` WRITE;
/*!40000 ALTER TABLE `aldryn_newsblog_newsblogconfig_translation` DISABLE KEYS */;
INSERT INTO `aldryn_newsblog_newsblogconfig_translation` VALUES (1,'en','News & Blog',1);
/*!40000 ALTER TABLE `aldryn_newsblog_newsblogconfig_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_newsblog_newsblogfeaturedarticlesplugin`
--

DROP TABLE IF EXISTS `aldryn_newsblog_newsblogfeaturedarticlesplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_newsblog_newsblogfeaturedarticlesplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `article_count` int(10) unsigned NOT NULL,
  `app_config_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `D78986b8dc7e6afa95a075f60951eaef` (`app_config_id`),
  CONSTRAINT `D78986b8dc7e6afa95a075f60951eaef` FOREIGN KEY (`app_config_id`) REFERENCES `aldryn_newsblog_newsblogconfig` (`id`),
  CONSTRAINT `aldryn_new_cmsplugin_ptr_id_11e965a81d23920a_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_newsblog_newsblogfeaturedarticlesplugin`
--

LOCK TABLES `aldryn_newsblog_newsblogfeaturedarticlesplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_newsblog_newsblogfeaturedarticlesplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_newsblog_newsblogfeaturedarticlesplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_newsblog_newsbloglatestarticlesplugin`
--

DROP TABLE IF EXISTS `aldryn_newsblog_newsbloglatestarticlesplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_newsblog_newsbloglatestarticlesplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `latest_articles` int(11) NOT NULL,
  `app_config_id` int(11) NOT NULL,
  `exclude_featured` smallint(5) unsigned NOT NULL,
  `cache_duration` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `D8db0f8a6fd8647efc3ba828b1d27e2e` (`app_config_id`),
  CONSTRAINT `aldryn_new_cmsplugin_ptr_id_396e8a4b2dda959b_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `D8db0f8a6fd8647efc3ba828b1d27e2e` FOREIGN KEY (`app_config_id`) REFERENCES `aldryn_newsblog_newsblogconfig` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_newsblog_newsbloglatestarticlesplugin`
--

LOCK TABLES `aldryn_newsblog_newsbloglatestarticlesplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_newsblog_newsbloglatestarticlesplugin` DISABLE KEYS */;
INSERT INTO `aldryn_newsblog_newsbloglatestarticlesplugin` VALUES (98,4,1,0,0),(99,4,1,0,0);
/*!40000 ALTER TABLE `aldryn_newsblog_newsbloglatestarticlesplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_newsblog_newsblogrelatedplugin`
--

DROP TABLE IF EXISTS `aldryn_newsblog_newsblogrelatedplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_newsblog_newsblogrelatedplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `cache_duration` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_new_cmsplugin_ptr_id_594e771e75057123_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_newsblog_newsblogrelatedplugin`
--

LOCK TABLES `aldryn_newsblog_newsblogrelatedplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_newsblog_newsblogrelatedplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_newsblog_newsblogrelatedplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_newsblog_newsblogtagsplugin`
--

DROP TABLE IF EXISTS `aldryn_newsblog_newsblogtagsplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_newsblog_newsblogtagsplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `app_config_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `D1d7f40835593426ac476780bdfa23e5` (`app_config_id`),
  CONSTRAINT `D1d7f40835593426ac476780bdfa23e5` FOREIGN KEY (`app_config_id`) REFERENCES `aldryn_newsblog_newsblogconfig` (`id`),
  CONSTRAINT `aldryn_new_cmsplugin_ptr_id_3a052cfc51b75e32_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_newsblog_newsblogtagsplugin`
--

LOCK TABLES `aldryn_newsblog_newsblogtagsplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_newsblog_newsblogtagsplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_newsblog_newsblogtagsplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_people_group`
--

DROP TABLE IF EXISTS `aldryn_people_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_people_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` longtext NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `city` varchar(255) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `website` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_people_group`
--

LOCK TABLES `aldryn_people_group` WRITE;
/*!40000 ALTER TABLE `aldryn_people_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_people_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_people_group_translation`
--

DROP TABLE IF EXISTS `aldryn_people_group_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_people_group_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `language_code` varchar(15) NOT NULL,
  `master_id` int(11) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `aldryn_people_group_translat_language_code_4102cf7495e150a7_uniq` (`language_code`,`master_id`),
  KEY `aldryn_peop_master_id_209df5526d4c1401_fk_aldryn_people_group_id` (`master_id`),
  KEY `aldryn_people_group_translation_60716c2f` (`language_code`),
  KEY `aldryn_people_group_translation_2dbcba41` (`slug`),
  CONSTRAINT `aldryn_peop_master_id_209df5526d4c1401_fk_aldryn_people_group_id` FOREIGN KEY (`master_id`) REFERENCES `aldryn_people_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_people_group_translation`
--

LOCK TABLES `aldryn_people_group_translation` WRITE;
/*!40000 ALTER TABLE `aldryn_people_group_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_people_group_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_people_peopleplugin`
--

DROP TABLE IF EXISTS `aldryn_people_peopleplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_people_peopleplugin` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `style` varchar(50) NOT NULL,
  `group_by_group` tinyint(1) NOT NULL,
  `show_links` tinyint(1) NOT NULL,
  `show_vcard` tinyint(1) NOT NULL,
  `show_ungrouped` tinyint(1) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_peo_cmsplugin_ptr_id_7160bd381dccf5db_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_people_peopleplugin`
--

LOCK TABLES `aldryn_people_peopleplugin` WRITE;
/*!40000 ALTER TABLE `aldryn_people_peopleplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_people_peopleplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_people_peopleplugin_people`
--

DROP TABLE IF EXISTS `aldryn_people_peopleplugin_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_people_peopleplugin_people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `peopleplugin_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `sort_value` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `peopleplugin_id` (`peopleplugin_id`,`person_id`),
  KEY `aldryn_peop_person_id_b9e861036378099_fk_aldryn_people_person_id` (`person_id`),
  CONSTRAINT `D6e955b1efc9f425325ec3b370602de4` FOREIGN KEY (`peopleplugin_id`) REFERENCES `aldryn_people_peopleplugin` (`cmsplugin_ptr_id`),
  CONSTRAINT `aldryn_peop_person_id_b9e861036378099_fk_aldryn_people_person_id` FOREIGN KEY (`person_id`) REFERENCES `aldryn_people_person` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_people_peopleplugin_people`
--

LOCK TABLES `aldryn_people_peopleplugin_people` WRITE;
/*!40000 ALTER TABLE `aldryn_people_peopleplugin_people` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_people_peopleplugin_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_people_person`
--

DROP TABLE IF EXISTS `aldryn_people_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_people_person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `website` varchar(200) DEFAULT NULL,
  `vcard_enabled` tinyint(1) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visual_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `aldryn_people_person_6e0547d0` (`visual_id`),
  CONSTRAINT `aldryn_people_person_user_id_79139e030003f547_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `aldryn_peo_visual_id_6a1f1d0fbcdf9ac2_fk_filer_image_file_ptr_id` FOREIGN KEY (`visual_id`) REFERENCES `filer_image` (`file_ptr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_people_person`
--

LOCK TABLES `aldryn_people_person` WRITE;
/*!40000 ALTER TABLE `aldryn_people_person` DISABLE KEYS */;
INSERT INTO `aldryn_people_person` VALUES (1,'','',NULL,'','',1,NULL,NULL),(2,NULL,NULL,NULL,'',NULL,1,1,NULL);
/*!40000 ALTER TABLE `aldryn_people_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_people_person_groups`
--

DROP TABLE IF EXISTS `aldryn_people_person_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_people_person_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `sort_value` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `person_id` (`person_id`,`group_id`),
  KEY `aldryn_peopl_group_id_7db30fa9239b889c_fk_aldryn_people_group_id` (`group_id`),
  CONSTRAINT `aldryn_peo_person_id_51cb6b38a5480187_fk_aldryn_people_person_id` FOREIGN KEY (`person_id`) REFERENCES `aldryn_people_person` (`id`),
  CONSTRAINT `aldryn_peopl_group_id_7db30fa9239b889c_fk_aldryn_people_group_id` FOREIGN KEY (`group_id`) REFERENCES `aldryn_people_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_people_person_groups`
--

LOCK TABLES `aldryn_people_person_groups` WRITE;
/*!40000 ALTER TABLE `aldryn_people_person_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `aldryn_people_person_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aldryn_people_person_translation`
--

DROP TABLE IF EXISTS `aldryn_people_person_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aldryn_people_person_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `function` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `language_code` varchar(15) NOT NULL,
  `master_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `aldryn_people_person_transla_language_code_262df9c1550a4c40_uniq` (`language_code`,`master_id`),
  KEY `aldryn_peo_master_id_57558ff868697ee8_fk_aldryn_people_person_id` (`master_id`),
  KEY `aldryn_people_person_translation_60716c2f` (`language_code`),
  KEY `aldryn_people_person_translation_2dbcba41` (`slug`),
  CONSTRAINT `aldryn_peo_master_id_57558ff868697ee8_fk_aldryn_people_person_id` FOREIGN KEY (`master_id`) REFERENCES `aldryn_people_person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aldryn_people_person_translation`
--

LOCK TABLES `aldryn_people_person_translation` WRITE;
/*!40000 ALTER TABLE `aldryn_people_person_translation` DISABLE KEYS */;
INSERT INTO `aldryn_people_person_translation` VALUES (1,'boss','','en',1,'osama abuomar','osama-abuomar'),(2,'','','en',2,' ','');
/*!40000 ALTER TABLE `aldryn_people_person_translation` ENABLE KEYS */;
UNLOCK TABLES;

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
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
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
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can use Structure mode',1,'use_structure'),(2,'Can change page',2,'change_page'),(3,'Can add permission',3,'add_permission'),(4,'Can change permission',3,'change_permission'),(5,'Can delete permission',3,'delete_permission'),(6,'Can add group',4,'add_group'),(7,'Can change group',4,'change_group'),(8,'Can delete group',4,'delete_group'),(9,'Can add user',5,'add_user'),(10,'Can change user',5,'change_user'),(11,'Can delete user',5,'delete_user'),(12,'Can add content type',6,'add_contenttype'),(13,'Can change content type',6,'change_contenttype'),(14,'Can delete content type',6,'delete_contenttype'),(15,'Can add session',7,'add_session'),(16,'Can change session',7,'change_session'),(17,'Can delete session',7,'delete_session'),(18,'Can add log entry',8,'add_logentry'),(19,'Can change log entry',8,'change_logentry'),(20,'Can delete log entry',8,'delete_logentry'),(21,'Can add site',9,'add_site'),(22,'Can change site',9,'change_site'),(23,'Can delete site',9,'delete_site'),(24,'Can add user setting',10,'add_usersettings'),(25,'Can change user setting',10,'change_usersettings'),(26,'Can delete user setting',10,'delete_usersettings'),(27,'Can add page',2,'add_page'),(28,'Can delete page',2,'delete_page'),(29,'Can view page',2,'view_page'),(30,'Can publish page',2,'publish_page'),(31,'Can edit static placeholders',2,'edit_static_placeholder'),(32,'Can add Page global permission',11,'add_globalpagepermission'),(33,'Can change Page global permission',11,'change_globalpagepermission'),(34,'Can delete Page global permission',11,'delete_globalpagepermission'),(35,'Can add Page permission',12,'add_pagepermission'),(36,'Can change Page permission',12,'change_pagepermission'),(37,'Can delete Page permission',12,'delete_pagepermission'),(38,'Can add User (page)',13,'add_pageuser'),(39,'Can change User (page)',13,'change_pageuser'),(40,'Can delete User (page)',13,'delete_pageuser'),(41,'Can add User group (page)',14,'add_pageusergroup'),(42,'Can change User group (page)',14,'change_pageusergroup'),(43,'Can delete User group (page)',14,'delete_pageusergroup'),(44,'Can add placeholder',1,'add_placeholder'),(45,'Can change placeholder',1,'change_placeholder'),(46,'Can delete placeholder',1,'delete_placeholder'),(47,'Can add cms plugin',15,'add_cmsplugin'),(48,'Can change cms plugin',15,'change_cmsplugin'),(49,'Can delete cms plugin',15,'delete_cmsplugin'),(50,'Can add title',16,'add_title'),(51,'Can change title',16,'change_title'),(52,'Can delete title',16,'delete_title'),(53,'Can add placeholder reference',17,'add_placeholderreference'),(54,'Can change placeholder reference',17,'change_placeholderreference'),(55,'Can delete placeholder reference',17,'delete_placeholderreference'),(56,'Can add static placeholder',18,'add_staticplaceholder'),(57,'Can change static placeholder',18,'change_staticplaceholder'),(58,'Can delete static placeholder',18,'delete_staticplaceholder'),(59,'Can add alias plugin model',19,'add_aliaspluginmodel'),(60,'Can change alias plugin model',19,'change_aliaspluginmodel'),(61,'Can delete alias plugin model',19,'delete_aliaspluginmodel'),(62,'Can add urlconf revision',20,'add_urlconfrevision'),(63,'Can change urlconf revision',20,'change_urlconfrevision'),(64,'Can delete urlconf revision',20,'delete_urlconfrevision'),(65,'Can add cache key',21,'add_cachekey'),(66,'Can change cache key',21,'change_cachekey'),(67,'Can delete cache key',21,'delete_cachekey'),(68,'Can add text',22,'add_text'),(69,'Can change text',22,'change_text'),(70,'Can delete text',22,'delete_text'),(71,'Can add Folder',23,'add_folder'),(72,'Can change Folder',23,'change_folder'),(73,'Can delete Folder',23,'delete_folder'),(74,'Can use directory listing',23,'can_use_directory_listing'),(75,'Can add folder permission',24,'add_folderpermission'),(76,'Can change folder permission',24,'change_folderpermission'),(77,'Can delete folder permission',24,'delete_folderpermission'),(78,'Can add file',25,'add_file'),(79,'Can change file',25,'change_file'),(80,'Can delete file',25,'delete_file'),(81,'Can add clipboard',26,'add_clipboard'),(82,'Can change clipboard',26,'change_clipboard'),(83,'Can delete clipboard',26,'delete_clipboard'),(84,'Can add clipboard item',27,'add_clipboarditem'),(85,'Can change clipboard item',27,'change_clipboarditem'),(86,'Can delete clipboard item',27,'delete_clipboarditem'),(87,'Can add image',28,'add_image'),(88,'Can change image',28,'change_image'),(89,'Can delete image',28,'delete_image'),(90,'Can add thumbnail option',29,'add_thumbnailoption'),(91,'Can change thumbnail option',29,'change_thumbnailoption'),(92,'Can delete thumbnail option',29,'delete_thumbnailoption'),(93,'Can add source',30,'add_source'),(94,'Can change source',30,'change_source'),(95,'Can delete source',30,'delete_source'),(96,'Can add thumbnail',31,'add_thumbnail'),(97,'Can change thumbnail',31,'change_thumbnail'),(98,'Can delete thumbnail',31,'delete_thumbnail'),(99,'Can add thumbnail dimensions',32,'add_thumbnaildimensions'),(100,'Can change thumbnail dimensions',32,'change_thumbnaildimensions'),(101,'Can delete thumbnail dimensions',32,'delete_thumbnaildimensions'),(102,'Can add multi columns',33,'add_multicolumns'),(103,'Can change multi columns',33,'change_multicolumns'),(104,'Can delete multi columns',33,'delete_multicolumns'),(105,'Can add column',34,'add_column'),(106,'Can change column',34,'change_column'),(107,'Can delete column',34,'delete_column'),(108,'Can add link',35,'add_link'),(109,'Can change link',35,'change_link'),(110,'Can delete link',35,'delete_link'),(111,'Can add filer file',36,'add_filerfile'),(112,'Can change filer file',36,'change_filerfile'),(113,'Can delete filer file',36,'delete_filerfile'),(114,'Can add filer folder',37,'add_filerfolder'),(115,'Can change filer folder',37,'change_filerfolder'),(116,'Can delete filer folder',37,'delete_filerfolder'),(117,'Can add filer image',38,'add_filerimage'),(118,'Can change filer image',38,'change_filerimage'),(119,'Can delete filer image',38,'delete_filerimage'),(120,'Can add style',39,'add_style'),(121,'Can change style',39,'change_style'),(122,'Can delete style',39,'delete_style'),(123,'Can add Snippet',40,'add_snippet'),(124,'Can change Snippet',40,'change_snippet'),(125,'Can delete Snippet',40,'delete_snippet'),(126,'Can add Snippet',41,'add_snippetptr'),(127,'Can change Snippet',41,'change_snippetptr'),(128,'Can delete Snippet',41,'delete_snippetptr'),(129,'Can add google map',42,'add_googlemap'),(130,'Can change google map',42,'change_googlemap'),(131,'Can delete google map',42,'delete_googlemap'),(132,'Can add google map marker',43,'add_googlemapmarker'),(133,'Can change google map marker',43,'change_googlemapmarker'),(134,'Can delete google map marker',43,'delete_googlemapmarker'),(135,'Can add google map route',44,'add_googlemaproute'),(136,'Can change google map route',44,'change_googlemaproute'),(137,'Can delete google map route',44,'delete_googlemaproute'),(138,'Can add video player',45,'add_videoplayer'),(139,'Can change video player',45,'change_videoplayer'),(140,'Can delete video player',45,'delete_videoplayer'),(141,'Can add video source',46,'add_videosource'),(142,'Can change video source',46,'change_videosource'),(143,'Can delete video source',46,'delete_videosource'),(144,'Can add video track',47,'add_videotrack'),(145,'Can change video track',47,'change_videotrack'),(146,'Can delete video track',47,'delete_videotrack'),(147,'Can add background image',48,'add_backgroundimage'),(148,'Can change background image',48,'change_backgroundimage'),(149,'Can delete background image',48,'delete_backgroundimage'),(150,'Can add boostrap3 button plugin',49,'add_boostrap3buttonplugin'),(151,'Can change boostrap3 button plugin',49,'change_boostrap3buttonplugin'),(152,'Can delete boostrap3 button plugin',49,'delete_boostrap3buttonplugin'),(153,'Can add boostrap3 blockquote plugin',50,'add_boostrap3blockquoteplugin'),(154,'Can change boostrap3 blockquote plugin',50,'change_boostrap3blockquoteplugin'),(155,'Can delete boostrap3 blockquote plugin',50,'delete_boostrap3blockquoteplugin'),(156,'Can add boostrap3 icon plugin',51,'add_boostrap3iconplugin'),(157,'Can change boostrap3 icon plugin',51,'change_boostrap3iconplugin'),(158,'Can delete boostrap3 icon plugin',51,'delete_boostrap3iconplugin'),(159,'Can add boostrap3 label plugin',52,'add_boostrap3labelplugin'),(160,'Can change boostrap3 label plugin',52,'change_boostrap3labelplugin'),(161,'Can delete boostrap3 label plugin',52,'delete_boostrap3labelplugin'),(162,'Can add boostrap3 well plugin',53,'add_boostrap3wellplugin'),(163,'Can change boostrap3 well plugin',53,'change_boostrap3wellplugin'),(164,'Can delete boostrap3 well plugin',53,'delete_boostrap3wellplugin'),(165,'Can add boostrap3 alert plugin',54,'add_boostrap3alertplugin'),(166,'Can change boostrap3 alert plugin',54,'change_boostrap3alertplugin'),(167,'Can delete boostrap3 alert plugin',54,'delete_boostrap3alertplugin'),(168,'Can add boostrap3 image plugin',55,'add_boostrap3imageplugin'),(169,'Can change boostrap3 image plugin',55,'change_boostrap3imageplugin'),(170,'Can delete boostrap3 image plugin',55,'delete_boostrap3imageplugin'),(171,'Can add boostrap3 spacer plugin',56,'add_boostrap3spacerplugin'),(172,'Can change boostrap3 spacer plugin',56,'change_boostrap3spacerplugin'),(173,'Can delete boostrap3 spacer plugin',56,'delete_boostrap3spacerplugin'),(174,'Can add bootstrap3 file plugin',57,'add_bootstrap3fileplugin'),(175,'Can change bootstrap3 file plugin',57,'change_bootstrap3fileplugin'),(176,'Can delete bootstrap3 file plugin',57,'delete_bootstrap3fileplugin'),(177,'Can add boostrap3 panel plugin',58,'add_boostrap3panelplugin'),(178,'Can change boostrap3 panel plugin',58,'change_boostrap3panelplugin'),(179,'Can delete boostrap3 panel plugin',58,'delete_boostrap3panelplugin'),(180,'Can add boostrap3 panel heading plugin',59,'add_boostrap3panelheadingplugin'),(181,'Can change boostrap3 panel heading plugin',59,'change_boostrap3panelheadingplugin'),(182,'Can delete boostrap3 panel heading plugin',59,'delete_boostrap3panelheadingplugin'),(183,'Can add boostrap3 panel body plugin',60,'add_boostrap3panelbodyplugin'),(184,'Can change boostrap3 panel body plugin',60,'change_boostrap3panelbodyplugin'),(185,'Can delete boostrap3 panel body plugin',60,'delete_boostrap3panelbodyplugin'),(186,'Can add boostrap3 panel footer plugin',61,'add_boostrap3panelfooterplugin'),(187,'Can change boostrap3 panel footer plugin',61,'change_boostrap3panelfooterplugin'),(188,'Can delete boostrap3 panel footer plugin',61,'delete_boostrap3panelfooterplugin'),(189,'Can add bootstrap3 row plugin',62,'add_bootstrap3rowplugin'),(190,'Can change bootstrap3 row plugin',62,'change_bootstrap3rowplugin'),(191,'Can delete bootstrap3 row plugin',62,'delete_bootstrap3rowplugin'),(192,'Can add bootstrap3 column plugin',63,'add_bootstrap3columnplugin'),(193,'Can change bootstrap3 column plugin',63,'change_bootstrap3columnplugin'),(194,'Can delete bootstrap3 column plugin',63,'delete_bootstrap3columnplugin'),(195,'Can add bootstrap3 accordion plugin',64,'add_bootstrap3accordionplugin'),(196,'Can change bootstrap3 accordion plugin',64,'change_bootstrap3accordionplugin'),(197,'Can delete bootstrap3 accordion plugin',64,'delete_bootstrap3accordionplugin'),(198,'Can add bootstrap3 accordion item plugin',65,'add_bootstrap3accordionitemplugin'),(199,'Can change bootstrap3 accordion item plugin',65,'change_bootstrap3accordionitemplugin'),(200,'Can delete bootstrap3 accordion item plugin',65,'delete_bootstrap3accordionitemplugin'),(201,'Can add bootstrap3 list group plugin',66,'add_bootstrap3listgroupplugin'),(202,'Can change bootstrap3 list group plugin',66,'change_bootstrap3listgroupplugin'),(203,'Can delete bootstrap3 list group plugin',66,'delete_bootstrap3listgroupplugin'),(204,'Can add bootstrap3 list group item plugin',67,'add_bootstrap3listgroupitemplugin'),(205,'Can change bootstrap3 list group item plugin',67,'change_bootstrap3listgroupitemplugin'),(206,'Can delete bootstrap3 list group item plugin',67,'delete_bootstrap3listgroupitemplugin'),(207,'Can add bootstrap3 carousel plugin',68,'add_bootstrap3carouselplugin'),(208,'Can change bootstrap3 carousel plugin',68,'change_bootstrap3carouselplugin'),(209,'Can delete bootstrap3 carousel plugin',68,'delete_bootstrap3carouselplugin'),(210,'Can add bootstrap3 carousel slide plugin',69,'add_bootstrap3carouselslideplugin'),(211,'Can change bootstrap3 carousel slide plugin',69,'change_bootstrap3carouselslideplugin'),(212,'Can delete bootstrap3 carousel slide plugin',69,'delete_bootstrap3carouselslideplugin'),(213,'Can add bootstrap3 carousel slide folder plugin',70,'add_bootstrap3carouselslidefolderplugin'),(214,'Can change bootstrap3 carousel slide folder plugin',70,'change_bootstrap3carouselslidefolderplugin'),(215,'Can delete bootstrap3 carousel slide folder plugin',70,'delete_bootstrap3carouselslidefolderplugin'),(216,'Can add category',72,'add_category'),(217,'Can change category',72,'change_category'),(218,'Can delete category',72,'delete_category'),(219,'Can add application configuration',74,'add_newsblogconfig'),(220,'Can change application configuration',74,'change_newsblogconfig'),(221,'Can delete application configuration',74,'delete_newsblogconfig'),(222,'Can add article',76,'add_article'),(223,'Can change article',76,'change_article'),(224,'Can delete article',76,'delete_article'),(225,'Can add news blog archive plugin',77,'add_newsblogarchiveplugin'),(226,'Can change news blog archive plugin',77,'change_newsblogarchiveplugin'),(227,'Can delete news blog archive plugin',77,'delete_newsblogarchiveplugin'),(228,'Can add news blog article search plugin',78,'add_newsblogarticlesearchplugin'),(229,'Can change news blog article search plugin',78,'change_newsblogarticlesearchplugin'),(230,'Can delete news blog article search plugin',78,'delete_newsblogarticlesearchplugin'),(231,'Can add news blog authors plugin',79,'add_newsblogauthorsplugin'),(232,'Can change news blog authors plugin',79,'change_newsblogauthorsplugin'),(233,'Can delete news blog authors plugin',79,'delete_newsblogauthorsplugin'),(234,'Can add news blog categories plugin',80,'add_newsblogcategoriesplugin'),(235,'Can change news blog categories plugin',80,'change_newsblogcategoriesplugin'),(236,'Can delete news blog categories plugin',80,'delete_newsblogcategoriesplugin'),(237,'Can add news blog featured articles plugin',81,'add_newsblogfeaturedarticlesplugin'),(238,'Can change news blog featured articles plugin',81,'change_newsblogfeaturedarticlesplugin'),(239,'Can delete news blog featured articles plugin',81,'delete_newsblogfeaturedarticlesplugin'),(240,'Can add news blog latest articles plugin',82,'add_newsbloglatestarticlesplugin'),(241,'Can change news blog latest articles plugin',82,'change_newsbloglatestarticlesplugin'),(242,'Can delete news blog latest articles plugin',82,'delete_newsbloglatestarticlesplugin'),(243,'Can add news blog related plugin',83,'add_newsblogrelatedplugin'),(244,'Can change news blog related plugin',83,'change_newsblogrelatedplugin'),(245,'Can delete news blog related plugin',83,'delete_newsblogrelatedplugin'),(246,'Can add news blog tags plugin',84,'add_newsblogtagsplugin'),(247,'Can change news blog tags plugin',84,'change_newsblogtagsplugin'),(248,'Can delete news blog tags plugin',84,'delete_newsblogtagsplugin'),(249,'Can add Group',86,'add_group'),(250,'Can change Group',86,'change_group'),(251,'Can delete Group',86,'delete_group'),(252,'Can add Person',88,'add_person'),(253,'Can change Person',88,'change_person'),(254,'Can delete Person',88,'delete_person'),(255,'Can add people plugin',89,'add_peopleplugin'),(256,'Can change people plugin',89,'change_peopleplugin'),(257,'Can delete people plugin',89,'delete_peopleplugin'),(258,'Can add Tag',90,'add_tag'),(259,'Can change Tag',90,'change_tag'),(260,'Can delete Tag',90,'delete_tag'),(261,'Can add Tagged Item',91,'add_taggeditem'),(262,'Can change Tagged Item',91,'change_taggeditem'),(263,'Can delete Tagged Item',91,'delete_taggeditem'),(264,'Can add revision',92,'add_revision'),(265,'Can change revision',92,'change_revision'),(266,'Can delete revision',92,'delete_revision'),(267,'Can add version',93,'add_version'),(268,'Can change version',93,'change_version'),(269,'Can delete version',93,'delete_version'),(270,'Can add form plugin',94,'add_formplugin'),(271,'Can change form plugin',94,'change_formplugin'),(272,'Can delete form plugin',94,'delete_formplugin'),(273,'Can add fieldset plugin',95,'add_fieldsetplugin'),(274,'Can change fieldset plugin',95,'change_fieldsetplugin'),(275,'Can delete fieldset plugin',95,'delete_fieldsetplugin'),(276,'Can add field plugin',96,'add_fieldplugin'),(277,'Can change field plugin',96,'change_fieldplugin'),(278,'Can delete field plugin',96,'delete_fieldplugin'),(279,'Can add text area field plugin',97,'add_textareafieldplugin'),(280,'Can change text area field plugin',97,'change_textareafieldplugin'),(281,'Can delete text area field plugin',97,'delete_textareafieldplugin'),(282,'Can add email field plugin',98,'add_emailfieldplugin'),(283,'Can change email field plugin',98,'change_emailfieldplugin'),(284,'Can delete email field plugin',98,'delete_emailfieldplugin'),(285,'Can add file upload field plugin',99,'add_fileuploadfieldplugin'),(286,'Can change file upload field plugin',99,'change_fileuploadfieldplugin'),(287,'Can delete file upload field plugin',99,'delete_fileuploadfieldplugin'),(288,'Can add image upload field plugin',100,'add_imageuploadfieldplugin'),(289,'Can change image upload field plugin',100,'change_imageuploadfieldplugin'),(290,'Can delete image upload field plugin',100,'delete_imageuploadfieldplugin'),(291,'Can add option',101,'add_option'),(292,'Can change option',101,'change_option'),(293,'Can delete option',101,'delete_option'),(294,'Can add form button plugin',102,'add_formbuttonplugin'),(295,'Can change form button plugin',102,'change_formbuttonplugin'),(296,'Can delete form button plugin',102,'delete_formbuttonplugin'),(297,'Can add Form submission',103,'add_formsubmission'),(298,'Can change Form submission',103,'change_formsubmission'),(299,'Can delete Form submission',103,'delete_formsubmission'),(300,'Can add email notification form plugin',94,'add_emailnotificationformplugin'),(301,'Can change email notification form plugin',94,'change_emailnotificationformplugin'),(302,'Can delete email notification form plugin',94,'delete_emailnotificationformplugin'),(303,'Can add email notification',104,'add_emailnotification'),(304,'Can change email notification',104,'change_emailnotification'),(305,'Can delete email notification',104,'delete_emailnotification'),(306,'Can add captcha store',106,'add_captchastore'),(307,'Can change captcha store',106,'change_captchastore'),(308,'Can delete captcha store',106,'delete_captchastore');
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
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$yt7bHyVi8roM$cFnv/q2TPcOsHfueisFfHF0BIaAQiLMhOeYJ7dtQQiI=','2016-12-12 08:48:44',1,'admin','','','admin@admin.com',1,1,'2016-12-12 08:21:58');
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
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
-- Table structure for table `captcha_captchastore`
--

DROP TABLE IF EXISTS `captcha_captchastore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captcha_captchastore`
--

LOCK TABLES `captcha_captchastore` WRITE;
/*!40000 ALTER TABLE `captcha_captchastore` DISABLE KEYS */;
/*!40000 ALTER TABLE `captcha_captchastore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_aliaspluginmodel`
--

DROP TABLE IF EXISTS `cms_aliaspluginmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_aliaspluginmodel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `plugin_id` int(11) DEFAULT NULL,
  `alias_placeholder_id` int(11),
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_aliaspluginmodel_921abf5c` (`alias_placeholder_id`),
  KEY `cms_aliaspluginmo_plugin_id_6cb0e8f62e7b802f_fk_cms_cmsplugin_id` (`plugin_id`),
  CONSTRAINT `cms_aliaspluginmo_plugin_id_6cb0e8f62e7b802f_fk_cms_cmsplugin_id` FOREIGN KEY (`plugin_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cms_aliaspl_cmsplugin_ptr_id_a146238a4a634c4_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cms__alias_placeholder_id_19ff87f4b6506f7d_fk_cms_placeholder_id` FOREIGN KEY (`alias_placeholder_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_aliaspluginmodel`
--

LOCK TABLES `cms_aliaspluginmodel` WRITE;
/*!40000 ALTER TABLE `cms_aliaspluginmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_aliaspluginmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_cmsplugin`
--

DROP TABLE IF EXISTS `cms_cmsplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_cmsplugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` smallint(5) unsigned NOT NULL,
  `language` varchar(15) NOT NULL,
  `plugin_type` varchar(50) NOT NULL,
  `creation_date` datetime NOT NULL,
  `changed_date` datetime NOT NULL,
  `parent_id` int(11),
  `placeholder_id` int(11),
  `depth` int(10) unsigned NOT NULL,
  `numchild` int(10) unsigned NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_cmsplugin_path_7692c19a7d5df9d5_uniq` (`path`),
  KEY `cms_cmsplugin_8512ae7d` (`language`),
  KEY `cms_cmsplugin_b5e4cf8f` (`plugin_type`),
  KEY `cms_cmsplugin_6be37982` (`parent_id`),
  KEY `cms_cmsplugin_667a6151` (`placeholder_id`),
  CONSTRAINT `cms_cmsplugin_parent_id_3227a3752b89b923_fk_cms_cmsplugin_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cms_cmsplu_placeholder_id_45e08772be34ec0f_fk_cms_placeholder_id` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_cmsplugin`
--

LOCK TABLES `cms_cmsplugin` WRITE;
/*!40000 ALTER TABLE `cms_cmsplugin` DISABLE KEYS */;
INSERT INTO `cms_cmsplugin` VALUES (16,0,'en','BackgroundImagePlugin','2016-12-12 11:55:53','2016-12-12 11:56:31',NULL,4,1,1,'0003'),(17,0,'en','StylePlugin','2016-12-12 11:57:22','2016-12-12 11:57:22',16,4,2,1,'00030001'),(18,0,'en','Bootstrap3RowCMSPlugin','2016-12-12 12:15:09','2016-12-12 12:15:27',17,4,3,1,'000300010001'),(19,0,'en','Bootstrap3ColumnCMSPlugin','2016-12-12 12:15:27','2016-12-12 12:15:27',18,4,4,1,'0003000100010001'),(20,0,'en','StylePlugin','2016-12-12 12:17:33','2016-12-12 12:17:33',19,4,5,1,'00030001000100010001'),(21,0,'en','TextPlugin','2016-12-12 12:18:05','2016-12-13 06:44:37',20,4,6,0,'000300010001000100010001'),(29,0,'en','TextPlugin','2016-12-12 13:16:19','2016-12-12 13:16:19',NULL,17,1,0,'0006'),(30,0,'en','TextPlugin','2016-12-12 13:23:26','2016-12-12 13:23:26',NULL,18,1,0,'0007'),(31,0,'en','TextPlugin','2016-12-12 13:23:48','2016-12-12 13:23:48',NULL,21,1,0,'0008'),(39,1,'en','Bootstrap3ImageCMSPlugin','2016-12-13 06:29:27','2016-12-13 06:29:27',NULL,21,1,0,'000B'),(40,0,'en','BackgroundImagePlugin','2016-12-12 11:55:53','2016-12-13 06:32:09',NULL,1,1,1,'000C'),(41,0,'en','StylePlugin','2016-12-12 11:57:22','2016-12-13 06:32:09',40,1,2,1,'000C0001'),(42,0,'en','Bootstrap3RowCMSPlugin','2016-12-12 12:15:09','2016-12-13 06:32:09',41,1,3,1,'000C00010001'),(43,0,'en','Bootstrap3ColumnCMSPlugin','2016-12-12 12:15:27','2016-12-13 06:32:09',42,1,4,1,'000C000100010001'),(44,0,'en','StylePlugin','2016-12-12 12:17:33','2016-12-13 06:32:09',43,1,5,1,'000C0001000100010001'),(45,0,'en','TextPlugin','2016-12-12 12:18:05','2016-12-13 06:32:09',44,1,6,0,'000C00010001000100010001'),(46,0,'en','BackgroundImagePlugin','2016-12-12 11:55:53','2016-12-13 06:34:12',NULL,7,1,1,'000D'),(47,0,'en','StylePlugin','2016-12-12 11:57:22','2016-12-13 06:32:17',46,7,2,1,'000D0001'),(48,0,'en','Bootstrap3RowCMSPlugin','2016-12-12 12:15:09','2016-12-13 06:32:17',47,7,3,1,'000D00010001'),(49,0,'en','Bootstrap3ColumnCMSPlugin','2016-12-12 12:15:27','2016-12-13 06:32:17',48,7,4,1,'000D000100010001'),(50,0,'en','StylePlugin','2016-12-12 12:17:33','2016-12-13 06:32:17',49,7,5,1,'000D0001000100010001'),(51,0,'en','TextPlugin','2016-12-12 12:18:05','2016-12-13 06:45:34',50,7,6,0,'000D00010001000100010001'),(64,0,'en','TextPlugin','2016-12-12 10:48:51','2016-12-13 07:41:44',NULL,23,1,0,'000F'),(65,0,'en','BackgroundImagePlugin','2016-12-12 11:55:53','2016-12-13 06:36:39',NULL,22,1,1,'000G'),(66,0,'en','StylePlugin','2016-12-12 11:57:22','2016-12-13 06:36:39',65,22,2,1,'000G0001'),(67,0,'en','Bootstrap3RowCMSPlugin','2016-12-12 12:15:09','2016-12-13 06:36:39',66,22,3,1,'000G00010001'),(68,0,'en','Bootstrap3ColumnCMSPlugin','2016-12-12 12:15:27','2016-12-13 06:36:39',67,22,4,1,'000G000100010001'),(69,0,'en','StylePlugin','2016-12-12 12:17:33','2016-12-13 06:36:39',68,22,5,1,'000G0001000100010001'),(70,0,'en','TextPlugin','2016-12-12 12:18:05','2016-12-13 06:44:45',69,22,6,0,'000G00010001000100010001'),(92,0,'en','BackgroundImagePlugin','2016-12-12 11:55:53','2016-12-13 06:45:36',NULL,9,1,1,'000L'),(93,0,'en','StylePlugin','2016-12-12 11:57:22','2016-12-13 06:45:36',92,9,2,1,'000L0001'),(94,0,'en','Bootstrap3RowCMSPlugin','2016-12-12 12:15:09','2016-12-13 06:45:36',93,9,3,1,'000L00010001'),(95,0,'en','Bootstrap3ColumnCMSPlugin','2016-12-12 12:15:27','2016-12-13 06:45:36',94,9,4,1,'000L000100010001'),(96,0,'en','StylePlugin','2016-12-12 12:17:33','2016-12-13 06:45:36',95,9,5,1,'000L0001000100010001'),(97,0,'en','TextPlugin','2016-12-12 12:18:05','2016-12-13 06:45:36',96,9,6,0,'000L00010001000100010001'),(98,0,'en','NewsBlogLatestArticlesPlugin','2016-12-13 06:47:19','2016-12-13 06:47:19',NULL,2,1,0,'000M'),(99,0,'en','NewsBlogLatestArticlesPlugin','2016-12-13 06:47:19','2016-12-13 06:47:22',NULL,3,1,0,'000N'),(100,0,'en','BackgroundImagePlugin','2016-12-12 11:55:53','2016-12-13 06:47:22',NULL,5,1,1,'000O'),(101,0,'en','StylePlugin','2016-12-12 11:57:22','2016-12-13 06:47:22',100,5,2,1,'000O0001'),(102,0,'en','Bootstrap3RowCMSPlugin','2016-12-12 12:15:09','2016-12-13 06:47:22',101,5,3,1,'000O00010001'),(103,0,'en','Bootstrap3ColumnCMSPlugin','2016-12-12 12:15:27','2016-12-13 06:47:22',102,5,4,1,'000O000100010001'),(104,0,'en','StylePlugin','2016-12-12 12:17:33','2016-12-13 06:47:22',103,5,5,1,'000O0001000100010001'),(105,0,'en','TextPlugin','2016-12-12 12:18:05','2016-12-13 06:47:22',104,5,6,0,'000O00010001000100010001'),(106,0,'en','BackgroundImagePlugin','2016-12-12 11:55:53','2016-12-13 07:41:59',NULL,24,1,1,'000P'),(107,0,'en','StylePlugin','2016-12-12 11:57:22','2016-12-13 07:41:59',106,24,2,1,'000P0001'),(108,0,'en','Bootstrap3RowCMSPlugin','2016-12-12 12:15:09','2016-12-13 07:41:59',107,24,3,1,'000P00010001'),(109,0,'en','Bootstrap3ColumnCMSPlugin','2016-12-12 12:15:27','2016-12-13 07:41:59',108,24,4,1,'000P000100010001'),(110,0,'en','StylePlugin','2016-12-12 12:17:33','2016-12-13 07:41:59',109,24,5,1,'000P0001000100010001'),(111,0,'en','TextPlugin','2016-12-12 12:18:05','2016-12-13 07:41:59',110,24,6,0,'000P00010001000100010001'),(112,0,'en','TextPlugin','2016-12-12 10:48:51','2016-12-13 07:41:59',NULL,25,1,0,'000Q'),(113,0,'en','BackgroundImagePlugin','2016-12-12 11:55:53','2016-12-13 07:59:11',NULL,27,1,1,'000R'),(114,0,'en','StylePlugin','2016-12-12 11:57:22','2016-12-13 07:58:38',113,27,2,1,'000R0001'),(115,0,'en','Bootstrap3RowCMSPlugin','2016-12-12 12:15:09','2016-12-13 07:58:38',114,27,3,1,'000R00010001'),(116,0,'en','Bootstrap3ColumnCMSPlugin','2016-12-12 12:15:27','2016-12-13 07:58:38',115,27,4,1,'000R000100010001'),(117,0,'en','StylePlugin','2016-12-12 12:17:33','2016-12-13 07:58:38',116,27,5,1,'000R0001000100010001'),(118,0,'en','TextPlugin','2016-12-12 12:18:05','2016-12-13 07:59:00',117,27,6,0,'000R00010001000100010001'),(119,0,'en','TextPlugin','2016-12-12 10:48:51','2016-12-13 07:58:38',NULL,26,1,0,'000S'),(127,1,'en','FormPlugin','2016-12-13 08:04:44','2016-12-13 08:04:44',NULL,26,1,5,'000V'),(136,0,'en','TextField','2016-12-13 08:05:21','2016-12-13 08:05:21',127,26,2,0,'000V0001'),(137,1,'en','EmailField','2016-12-13 08:05:48','2016-12-13 08:05:49',127,26,2,0,'000V0002'),(138,3,'en','TextAreaField','2016-12-13 08:06:20','2016-12-13 08:06:20',127,26,2,0,'000V0003'),(139,2,'en','TextField','2016-12-13 08:06:45','2016-12-13 08:06:45',127,26,2,0,'000V0004'),(152,4,'en','SubmitButton','2016-12-13 08:07:27','2016-12-13 08:07:27',127,26,2,0,'000V0005'),(153,0,'en','TextPlugin','2016-12-12 10:48:51','2016-12-13 08:07:30',NULL,28,1,0,'000W'),(154,1,'en','FormPlugin','2016-12-13 08:04:44','2016-12-13 08:07:30',NULL,28,1,5,'000X'),(155,0,'en','TextField','2016-12-13 08:05:21','2016-12-13 08:07:30',154,28,2,0,'000X0001'),(156,1,'en','EmailField','2016-12-13 08:05:48','2016-12-13 08:07:30',154,28,2,0,'000X0002'),(157,3,'en','TextAreaField','2016-12-13 08:06:20','2016-12-13 08:07:30',154,28,2,0,'000X0003'),(158,2,'en','TextField','2016-12-13 08:06:45','2016-12-13 08:07:30',154,28,2,0,'000X0004'),(159,4,'en','SubmitButton','2016-12-13 08:07:27','2016-12-13 08:07:30',154,28,2,0,'000X0005'),(160,0,'en','BackgroundImagePlugin','2016-12-12 11:55:53','2016-12-13 08:07:30',NULL,29,1,1,'000Y'),(161,0,'en','StylePlugin','2016-12-12 11:57:22','2016-12-13 08:07:30',160,29,2,1,'000Y0001'),(162,0,'en','Bootstrap3RowCMSPlugin','2016-12-12 12:15:09','2016-12-13 08:07:30',161,29,3,1,'000Y00010001'),(163,0,'en','Bootstrap3ColumnCMSPlugin','2016-12-12 12:15:27','2016-12-13 08:07:30',162,29,4,1,'000Y000100010001'),(164,0,'en','StylePlugin','2016-12-12 12:17:33','2016-12-13 08:07:30',163,29,5,1,'000Y0001000100010001'),(165,0,'en','TextPlugin','2016-12-12 12:18:05','2016-12-13 08:07:30',164,29,6,0,'000Y00010001000100010001');
/*!40000 ALTER TABLE `cms_cmsplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_globalpagepermission`
--

DROP TABLE IF EXISTS `cms_globalpagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_globalpagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `can_recover_page` tinyint(1) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_globalpagepermiss_group_id_5495c04a8b715951_fk_auth_group_id` (`group_id`),
  KEY `cms_globalpagepermissio_user_id_5b7e387d572f1d18_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cms_globalpagepermissio_user_id_5b7e387d572f1d18_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_globalpagepermiss_group_id_5495c04a8b715951_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_globalpagepermission`
--

LOCK TABLES `cms_globalpagepermission` WRITE;
/*!40000 ALTER TABLE `cms_globalpagepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_globalpagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_globalpagepermission_sites`
--

DROP TABLE IF EXISTS `cms_globalpagepermission_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_globalpagepermission_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `globalpagepermission_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `globalpagepermission_id` (`globalpagepermission_id`,`site_id`),
  KEY `cms_globalpagepermiss_site_id_2805b267618ef941_fk_django_site_id` (`site_id`),
  CONSTRAINT `f9540a0f4c5a4ddcc0802274553b3047` FOREIGN KEY (`globalpagepermission_id`) REFERENCES `cms_globalpagepermission` (`id`),
  CONSTRAINT `cms_globalpagepermiss_site_id_2805b267618ef941_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_globalpagepermission_sites`
--

LOCK TABLES `cms_globalpagepermission_sites` WRITE;
/*!40000 ALTER TABLE `cms_globalpagepermission_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_globalpagepermission_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page`
--

DROP TABLE IF EXISTS `cms_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) NOT NULL,
  `changed_by` varchar(255) NOT NULL,
  `creation_date` datetime NOT NULL,
  `changed_date` datetime NOT NULL,
  `publication_date` datetime DEFAULT NULL,
  `publication_end_date` datetime DEFAULT NULL,
  `in_navigation` tinyint(1) NOT NULL,
  `soft_root` tinyint(1) NOT NULL,
  `reverse_id` varchar(40) DEFAULT NULL,
  `navigation_extenders` varchar(80) DEFAULT NULL,
  `template` varchar(100) NOT NULL,
  `login_required` tinyint(1) NOT NULL,
  `limit_visibility_in_menu` smallint(6) DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL,
  `application_urls` varchar(200) DEFAULT NULL,
  `application_namespace` varchar(200) DEFAULT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `languages` varchar(255) DEFAULT NULL,
  `revision_id` int(10) unsigned NOT NULL,
  `xframe_options` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `publisher_public_id` int(11) DEFAULT NULL,
  `site_id` int(11) NOT NULL,
  `depth` int(10) unsigned NOT NULL,
  `numchild` int(10) unsigned NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_page_path_518270318703c18f_uniq` (`path`),
  UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  UNIQUE KEY `cms_page_reverse_id_a864144bd3516c9_uniq` (`reverse_id`,`site_id`,`publisher_is_draft`),
  UNIQUE KEY `cms_page_publisher_is_draft_7597e61e0082d3aa_uniq` (`publisher_is_draft`,`site_id`,`application_namespace`),
  KEY `cms_page_parent_id_3a1df0ef76fe1197_fk_cms_page_id` (`parent_id`),
  KEY `cms_page_site_id_74f6849b7245e838_fk_django_site_id` (`site_id`),
  KEY `cms_page_93b83098` (`publication_date`),
  KEY `cms_page_2247c5f0` (`publication_end_date`),
  KEY `cms_page_db3eb53f` (`in_navigation`),
  KEY `cms_page_1d85575d` (`soft_root`),
  KEY `cms_page_3d9ef52f` (`reverse_id`),
  KEY `cms_page_7b8acfa6` (`navigation_extenders`),
  KEY `cms_page_cb540373` (`limit_visibility_in_menu`),
  KEY `cms_page_4fa1c803` (`is_home`),
  KEY `cms_page_e721871e` (`application_urls`),
  KEY `cms_page_b7700099` (`publisher_is_draft`),
  CONSTRAINT `cms_page_parent_id_3a1df0ef76fe1197_fk_cms_page_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `cms_page_publisher_public_id_6d3414df27b14e29_fk_cms_page_id` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `cms_page_site_id_74f6849b7245e838_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page`
--

LOCK TABLES `cms_page` WRITE;
/*!40000 ALTER TABLE `cms_page` DISABLE KEYS */;
INSERT INTO `cms_page` VALUES (1,'script','admin','2016-12-12 10:27:00','2016-12-13 08:07:30','2016-12-12 10:27:00',NULL,1,0,NULL,'','INHERIT',0,NULL,1,'',NULL,1,'en',0,0,NULL,2,1,1,0,'0001'),(2,'script','admin','2016-12-12 10:27:00','2016-12-13 08:07:30','2016-12-12 10:27:00',NULL,1,0,NULL,'','INHERIT',0,NULL,1,'',NULL,0,'en',0,0,NULL,1,1,1,0,'0002'),(3,'script','admin','2016-12-12 12:50:32','2016-12-13 06:45:36','2016-12-12 12:50:36',NULL,1,0,NULL,'','INHERIT',0,NULL,0,'NewsBlogApp','aldryn_newsblog_default',1,'en',0,0,NULL,4,1,1,0,'0004'),(4,'admin','admin','2016-12-12 12:50:36','2016-12-13 06:45:36','2016-12-12 12:50:36',NULL,1,0,NULL,'','INHERIT',0,NULL,0,'NewsBlogApp','aldryn_newsblog_default',0,'en',0,0,NULL,3,1,1,0,'0005'),(5,'admin','admin','2016-12-13 06:36:39','2016-12-13 07:41:59','2016-12-13 06:36:42',NULL,1,0,NULL,'','INHERIT',0,NULL,0,'',NULL,1,'en',0,0,NULL,6,1,1,0,'0007'),(6,'admin','admin','2016-12-13 06:36:42','2016-12-13 07:41:59','2016-12-13 06:36:42',NULL,1,0,NULL,'','INHERIT',0,NULL,0,'',NULL,0,'en',0,0,NULL,5,1,1,0,'0008'),(7,'admin','admin','2016-12-13 07:58:38','2016-12-13 08:07:30','2016-12-13 07:58:45',NULL,1,0,NULL,'','INHERIT',0,NULL,0,'',NULL,1,'en',0,0,NULL,8,1,1,0,'0009'),(8,'admin','admin','2016-12-13 07:58:45','2016-12-13 08:07:30','2016-12-13 07:58:45',NULL,1,0,NULL,'','INHERIT',0,NULL,0,'',NULL,0,'en',0,0,NULL,7,1,1,0,'000A');
/*!40000 ALTER TABLE `cms_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page_placeholders`
--

DROP TABLE IF EXISTS `cms_page_placeholders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_page_placeholders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `placeholder_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_id` (`page_id`,`placeholder_id`),
  KEY `cms_page_p_placeholder_id_1e2710bd8c76d9ad_fk_cms_placeholder_id` (`placeholder_id`),
  CONSTRAINT `cms_page_p_placeholder_id_1e2710bd8c76d9ad_fk_cms_placeholder_id` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_page_placeholders_page_id_2339fb692425adb6_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page_placeholders`
--

LOCK TABLES `cms_page_placeholders` WRITE;
/*!40000 ALTER TABLE `cms_page_placeholders` DISABLE KEYS */;
INSERT INTO `cms_page_placeholders` VALUES (1,1,2),(3,1,4),(2,2,3),(4,2,5),(5,3,6),(6,3,7),(7,4,8),(8,4,9),(9,5,22),(10,5,23),(11,6,24),(12,6,25),(13,7,26),(14,7,27),(15,8,28),(16,8,29);
/*!40000 ALTER TABLE `cms_page_placeholders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pagepermission`
--

DROP TABLE IF EXISTS `cms_pagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `grant_on` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_pagepermission_group_id_39f298fdb5026_fk_auth_group_id` (`group_id`),
  KEY `cms_pagepermission_page_id_214a878c4fb6ec65_fk_cms_page_id` (`page_id`),
  KEY `cms_pagepermission_user_id_b6429a51a3e8e53_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cms_pagepermission_user_id_b6429a51a3e8e53_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_pagepermission_group_id_39f298fdb5026_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `cms_pagepermission_page_id_214a878c4fb6ec65_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pagepermission`
--

LOCK TABLES `cms_pagepermission` WRITE;
/*!40000 ALTER TABLE `cms_pagepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pageuser`
--

DROP TABLE IF EXISTS `cms_pageuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pageuser` (
  `user_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`user_ptr_id`),
  KEY `cms_pageuser_created_by_id_18eb7aa0ce6f1c16_fk_auth_user_id` (`created_by_id`),
  CONSTRAINT `cms_pageuser_created_by_id_18eb7aa0ce6f1c16_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_pageuser_user_ptr_id_7b1c6e2f6b58ccde_fk_auth_user_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pageuser`
--

LOCK TABLES `cms_pageuser` WRITE;
/*!40000 ALTER TABLE `cms_pageuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pageuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pageusergroup`
--

DROP TABLE IF EXISTS `cms_pageusergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pageusergroup` (
  `group_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`group_ptr_id`),
  KEY `cms_pageusergroup_created_by_id_53218d1b0250196_fk_auth_user_id` (`created_by_id`),
  CONSTRAINT `cms_pageusergroup_created_by_id_53218d1b0250196_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_pageusergroup_group_ptr_id_2fed9cde9e11700f_fk_auth_group_id` FOREIGN KEY (`group_ptr_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pageusergroup`
--

LOCK TABLES `cms_pageusergroup` WRITE;
/*!40000 ALTER TABLE `cms_pageusergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pageusergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_placeholder`
--

DROP TABLE IF EXISTS `cms_placeholder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_placeholder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slot` varchar(255) NOT NULL,
  `default_width` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_placeholder_5e97994e` (`slot`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_placeholder`
--

LOCK TABLES `cms_placeholder` WRITE;
/*!40000 ALTER TABLE `cms_placeholder` DISABLE KEYS */;
INSERT INTO `cms_placeholder` VALUES (1,'clipboard',NULL),(2,'content',NULL),(3,'content',NULL),(4,'header',NULL),(5,'header',NULL),(6,'content',NULL),(7,'header',NULL),(8,'content',NULL),(9,'header',NULL),(10,'newsblog_base_sidebar',NULL),(11,'newsblog_base_top',NULL),(12,'newsblog_detail_bottom',NULL),(13,'newsblog_detail_footer',NULL),(14,'newsblog_detail_top',NULL),(15,'newsblog_list_footer',NULL),(16,'newsblog_list_top',NULL),(17,'newsblog_article_content',NULL),(18,'newsblog_article_content',NULL),(19,'newsblog_social',NULL),(20,'newsblog_social',NULL),(21,'newsblog_article_content',NULL),(22,'header',NULL),(23,'content',NULL),(24,'header',NULL),(25,'content',NULL),(26,'content',NULL),(27,'header',NULL),(28,'content',NULL),(29,'header',NULL);
/*!40000 ALTER TABLE `cms_placeholder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_placeholderreference`
--

DROP TABLE IF EXISTS `cms_placeholderreference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_placeholderreference` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `placeholder_ref_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_placeholderreference_328d0afc` (`placeholder_ref_id`),
  CONSTRAINT `cms_placeh_cmsplugin_ptr_id_57d93b52c864bee6_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cms_pl_placeholder_ref_id_6d7ea115a2f488ec_fk_cms_placeholder_id` FOREIGN KEY (`placeholder_ref_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_placeholderreference`
--

LOCK TABLES `cms_placeholderreference` WRITE;
/*!40000 ALTER TABLE `cms_placeholderreference` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_placeholderreference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_staticplaceholder`
--

DROP TABLE IF EXISTS `cms_staticplaceholder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_staticplaceholder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `dirty` tinyint(1) NOT NULL,
  `creation_method` varchar(20) NOT NULL,
  `draft_id` int(11) DEFAULT NULL,
  `public_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_staticplaceholder_code_6c6b490a9fe0e459_uniq` (`code`,`site_id`),
  KEY `cms_staticplaceholder_site_id_65c8a138163af08f_fk_django_site_id` (`site_id`),
  KEY `cms_staticplaceholder_5cb48773` (`draft_id`),
  KEY `cms_staticplaceholder_1ee2744d` (`public_id`),
  CONSTRAINT `cms_staticplaceholder_site_id_65c8a138163af08f_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  CONSTRAINT `cms_staticplaceh_draft_id_6c2edc7f36488820_fk_cms_placeholder_id` FOREIGN KEY (`draft_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_staticplace_public_id_20b32af3aef57809_fk_cms_placeholder_id` FOREIGN KEY (`public_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_staticplaceholder`
--

LOCK TABLES `cms_staticplaceholder` WRITE;
/*!40000 ALTER TABLE `cms_staticplaceholder` DISABLE KEYS */;
INSERT INTO `cms_staticplaceholder` VALUES (1,'','newsblog_social',0,'template',19,20,NULL);
/*!40000 ALTER TABLE `cms_staticplaceholder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_title`
--

DROP TABLE IF EXISTS `cms_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(15) NOT NULL,
  `title` varchar(255) NOT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `menu_title` varchar(255) DEFAULT NULL,
  `meta_description` longtext,
  `slug` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `has_url_overwrite` tinyint(1) NOT NULL,
  `redirect` varchar(2048) DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `publisher_state` smallint(6) NOT NULL,
  `page_id` int(11) NOT NULL,
  `publisher_public_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_title_language_7a69dc7eaf856287_uniq` (`language`,`page_id`),
  UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  KEY `cms_title_page_id_527ebd61f3936a12_fk_cms_page_id` (`page_id`),
  KEY `cms_title_8512ae7d` (`language`),
  KEY `cms_title_2dbcba41` (`slug`),
  KEY `cms_title_d6fe1d0b` (`path`),
  KEY `cms_title_1268de9a` (`has_url_overwrite`),
  KEY `cms_title_b7700099` (`publisher_is_draft`),
  KEY `cms_title_f7202fc0` (`publisher_state`),
  CONSTRAINT `cms_title_page_id_527ebd61f3936a12_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `cms_title_publisher_public_id_74e956b52b3e4a1d_fk_cms_title_id` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_title` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_title`
--

LOCK TABLES `cms_title` WRITE;
/*!40000 ALTER TABLE `cms_title` DISABLE KEYS */;
INSERT INTO `cms_title` VALUES (1,'en','home',NULL,NULL,NULL,'home','',0,'','2016-12-12 10:27:00',1,1,0,1,2),(2,'en','home',NULL,NULL,NULL,'home','',0,'','2016-12-12 10:27:00',1,0,1,2,1),(3,'en','Blog',NULL,NULL,NULL,'blog','blog',0,'','2016-12-12 12:50:32',1,1,0,3,4),(4,'en','Blog',NULL,NULL,NULL,'blog','blog',0,'','2016-12-12 12:50:32',1,0,1,4,3),(5,'en','about','','','','about','about',0,NULL,'2016-12-13 06:36:39',1,1,0,5,6),(6,'en','about','','','','about','about',0,NULL,'2016-12-13 06:36:39',1,0,1,6,5),(7,'en','contact','','','','contact','contact',0,NULL,'2016-12-13 07:58:38',1,1,0,7,8),(8,'en','contact','','','','contact','contact',0,NULL,'2016-12-13 07:58:38',1,0,1,8,7);
/*!40000 ALTER TABLE `cms_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_urlconfrevision`
--

DROP TABLE IF EXISTS `cms_urlconfrevision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_urlconfrevision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `revision` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_urlconfrevision`
--

LOCK TABLES `cms_urlconfrevision` WRITE;
/*!40000 ALTER TABLE `cms_urlconfrevision` DISABLE KEYS */;
INSERT INTO `cms_urlconfrevision` VALUES (1,'423de9c6-538d-4739-bcaf-d62dab321a12');
/*!40000 ALTER TABLE `cms_urlconfrevision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_usersettings`
--

DROP TABLE IF EXISTS `cms_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(10) NOT NULL,
  `clipboard_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `cms_usersett_clipboard_id_15eac87d124304f3_fk_cms_placeholder_id` (`clipboard_id`),
  CONSTRAINT `cms_usersettings_user_id_2cfe7a2128ccc2b3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_usersett_clipboard_id_15eac87d124304f3_fk_cms_placeholder_id` FOREIGN KEY (`clipboard_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_usersettings`
--

LOCK TABLES `cms_usersettings` WRITE;
/*!40000 ALTER TABLE `cms_usersettings` DISABLE KEYS */;
INSERT INTO `cms_usersettings` VALUES (1,'en',1,1);
/*!40000 ALTER TABLE `cms_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_filer_file_filerfile`
--

DROP TABLE IF EXISTS `cmsplugin_filer_file_filerfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_filer_file_filerfile` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `target_blank` tinyint(1) NOT NULL,
  `style` varchar(255) NOT NULL,
  `file_id` int(11) DEFAULT NULL,
  `link_attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cmsplugin_filer_file_filerfile_814552b9` (`file_id`),
  CONSTRAINT `cmsplugin__cmsplugin_ptr_id_41d23fc2e948ebc9_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cmsplugin_filer_file_f_file_id_4f255e59830018d3_fk_filer_file_id` FOREIGN KEY (`file_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_filer_file_filerfile`
--

LOCK TABLES `cmsplugin_filer_file_filerfile` WRITE;
/*!40000 ALTER TABLE `cmsplugin_filer_file_filerfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_filer_file_filerfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_filer_folder_filerfolder`
--

DROP TABLE IF EXISTS `cmsplugin_filer_folder_filerfolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_filer_folder_filerfolder` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `style` varchar(50) NOT NULL,
  `folder_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cmsplugin_filer_folder_filerfolder_a8a44dbb` (`folder_id`),
  CONSTRAINT `cmsplugin__cmsplugin_ptr_id_782af9abae289fc5_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cmsplugin_filer_fo_folder_id_31ec3853b8645959_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_filer_folder_filerfolder`
--

LOCK TABLES `cmsplugin_filer_folder_filerfolder` WRITE;
/*!40000 ALTER TABLE `cmsplugin_filer_folder_filerfolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_filer_folder_filerfolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_filer_image_filerimage`
--

DROP TABLE IF EXISTS `cmsplugin_filer_image_filerimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_filer_image_filerimage` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `style` varchar(50) NOT NULL,
  `caption_text` varchar(255) DEFAULT NULL,
  `image_url` varchar(200) DEFAULT NULL,
  `alt_text` varchar(255) DEFAULT NULL,
  `use_original_image` tinyint(1) NOT NULL,
  `use_autoscale` tinyint(1) NOT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  `crop` tinyint(1) NOT NULL,
  `upscale` tinyint(1) NOT NULL,
  `alignment` varchar(10) DEFAULT NULL,
  `free_link` varchar(2000) DEFAULT NULL,
  `original_link` tinyint(1) NOT NULL,
  `description` longtext,
  `target_blank` tinyint(1) NOT NULL,
  `file_link_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `page_link_id` int(11) DEFAULT NULL,
  `thumbnail_option_id` int(11),
  `link_attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cmsplugin_filer_image_filerimage_0fe0fc57` (`file_link_id`),
  KEY `cmsplugin_filer_image_filerimage_f33175e6` (`image_id`),
  KEY `cmsplugin_filer_image_filerimage_d916d256` (`page_link_id`),
  KEY `cmsplugin_filer_image_filerimage_6b85b7b1` (`thumbnail_option_id`),
  CONSTRAINT `cmsplugin__cmsplugin_ptr_id_21aa2d865378a28b_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cmsplugin_filer_ima_page_link_id_5c423471ccb39250_fk_cms_page_id` FOREIGN KEY (`page_link_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `cmsplugin_filer_i_file_link_id_17f9aa70b502dc05_fk_filer_file_id` FOREIGN KEY (`file_link_id`) REFERENCES `filer_file` (`id`),
  CONSTRAINT `cmsplugin_f_image_id_47889415dca79a55_fk_filer_image_file_ptr_id` FOREIGN KEY (`image_id`) REFERENCES `filer_image` (`file_ptr_id`),
  CONSTRAINT `thumbnail_option_id_d243368a21c0685_fk_filer_thumbnailoption_id` FOREIGN KEY (`thumbnail_option_id`) REFERENCES `filer_thumbnailoption` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_filer_image_filerimage`
--

LOCK TABLES `cmsplugin_filer_image_filerimage` WRITE;
/*!40000 ALTER TABLE `cmsplugin_filer_image_filerimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmsplugin_filer_image_filerimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_697914295151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-12-12 10:48:58','1','home',2,'',2,1),(2,'2016-12-12 11:07:41','1','osama.me',2,'Changed domain and name.',9,1),(3,'2016-12-12 11:16:09','1','home',2,'',2,1),(4,'2016-12-12 11:18:56','1','home',2,'',2,1),(5,'2016-12-12 11:19:24','1','home',2,'',2,1),(6,'2016-12-12 11:21:40','4','4',3,'',15,1),(7,'2016-12-12 11:21:43','1','home',2,'',2,1),(8,'2016-12-12 11:27:29','1','home',2,'',2,1),(9,'2016-12-12 11:27:54','1','home',2,'',2,1),(10,'2016-12-12 11:31:20','10','10',3,'',15,1),(11,'2016-12-12 11:31:24','1','home',2,'',2,1),(12,'2016-12-12 12:18:40','1','home',2,'',2,1),(13,'2016-12-12 12:19:47','1','osama.me',2,'No fields changed.',9,1),(14,'2016-12-12 12:50:36','3','Blog',2,'',2,1),(15,'2016-12-12 13:06:50','3','Blog',2,'Changed application_urls, application_namespace, application_configs and xframe_options.',2,1),(16,'2016-12-12 13:06:53','3','Blog',2,'',2,1),(17,'2016-12-13 06:14:49','3','Ramps sustainable vape',2,'Changed lead_in and tags. Article: \'Ramps sustainable vape\' (\'EN\' translation)',76,1),(18,'2016-12-13 06:25:13','1','home',2,'Changed xframe_options.',2,1),(19,'2016-12-13 06:25:16','1','home',2,'',2,1),(20,'2016-12-13 06:28:44','3','Ramps sustainable vape',2,'Changed featured_image, lead_in and tags. Article: \'Ramps sustainable vape\' (\'EN\' translation)',76,1),(21,'2016-12-13 06:28:57','3','Ramps sustainable vape',2,'Changed featured_image, lead_in and tags. Article: \'Ramps sustainable vape\' (\'EN\' translation)',76,1),(22,'2016-12-13 06:30:50','2','Four loko freegan wayfarers',2,'Changed lead_in and tags. Article: \'Four loko freegan wayfarers\' (\'EN\' translation)',76,1),(23,'2016-12-13 06:31:14','1','Four loko freegan wayfarers',2,'Changed lead_in and tags. Article: \'Four loko freegan wayfarers\' (\'EN\' translation)',76,1),(24,'2016-12-13 06:32:08','1','clipboard',3,'',1,1),(25,'2016-12-13 06:32:20','3','Blog',2,'',2,1),(26,'2016-12-13 06:34:18','3','Blog',2,'',2,1),(27,'2016-12-13 06:36:39','5','about',1,'',2,1),(28,'2016-12-13 06:36:43','5','about',2,'',2,1),(29,'2016-12-13 06:44:48','5','about',2,'',2,1),(30,'2016-12-13 06:44:59','1','home',2,'',2,1),(31,'2016-12-13 06:45:36','3','Blog',2,'',2,1),(32,'2016-12-13 06:46:57','2','content',3,'',1,1),(33,'2016-12-13 06:47:23','1','home',2,'',2,1),(34,'2016-12-13 07:41:59','5','about',2,'',2,1),(35,'2016-12-13 07:58:38','7','contact',1,'',2,1),(36,'2016-12-13 07:58:45','7','contact',2,'',2,1),(37,'2016-12-13 08:04:47','7','contact',2,'',2,1),(38,'2016-12-13 08:07:01','7','contact',2,'',2,1),(39,'2016-12-13 08:07:30','7','contact',2,'',2,1);
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
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (8,'admin','logentry'),(48,'aldryn_background_image','backgroundimage'),(54,'aldryn_bootstrap3','boostrap3alertplugin'),(50,'aldryn_bootstrap3','boostrap3blockquoteplugin'),(49,'aldryn_bootstrap3','boostrap3buttonplugin'),(51,'aldryn_bootstrap3','boostrap3iconplugin'),(55,'aldryn_bootstrap3','boostrap3imageplugin'),(52,'aldryn_bootstrap3','boostrap3labelplugin'),(60,'aldryn_bootstrap3','boostrap3panelbodyplugin'),(61,'aldryn_bootstrap3','boostrap3panelfooterplugin'),(59,'aldryn_bootstrap3','boostrap3panelheadingplugin'),(58,'aldryn_bootstrap3','boostrap3panelplugin'),(56,'aldryn_bootstrap3','boostrap3spacerplugin'),(53,'aldryn_bootstrap3','boostrap3wellplugin'),(65,'aldryn_bootstrap3','bootstrap3accordionitemplugin'),(64,'aldryn_bootstrap3','bootstrap3accordionplugin'),(68,'aldryn_bootstrap3','bootstrap3carouselplugin'),(70,'aldryn_bootstrap3','bootstrap3carouselslidefolderplugin'),(69,'aldryn_bootstrap3','bootstrap3carouselslideplugin'),(63,'aldryn_bootstrap3','bootstrap3columnplugin'),(57,'aldryn_bootstrap3','bootstrap3fileplugin'),(67,'aldryn_bootstrap3','bootstrap3listgroupitemplugin'),(66,'aldryn_bootstrap3','bootstrap3listgroupplugin'),(62,'aldryn_bootstrap3','bootstrap3rowplugin'),(72,'aldryn_categories','category'),(71,'aldryn_categories','categorytranslation'),(98,'aldryn_forms','emailfieldplugin'),(96,'aldryn_forms','fieldplugin'),(95,'aldryn_forms','fieldsetplugin'),(99,'aldryn_forms','fileuploadfieldplugin'),(102,'aldryn_forms','formbuttonplugin'),(94,'aldryn_forms','formplugin'),(103,'aldryn_forms','formsubmission'),(100,'aldryn_forms','imageuploadfieldplugin'),(101,'aldryn_forms','option'),(97,'aldryn_forms','textareafieldplugin'),(76,'aldryn_newsblog','article'),(75,'aldryn_newsblog','articletranslation'),(77,'aldryn_newsblog','newsblogarchiveplugin'),(78,'aldryn_newsblog','newsblogarticlesearchplugin'),(79,'aldryn_newsblog','newsblogauthorsplugin'),(80,'aldryn_newsblog','newsblogcategoriesplugin'),(74,'aldryn_newsblog','newsblogconfig'),(73,'aldryn_newsblog','newsblogconfigtranslation'),(81,'aldryn_newsblog','newsblogfeaturedarticlesplugin'),(82,'aldryn_newsblog','newsbloglatestarticlesplugin'),(83,'aldryn_newsblog','newsblogrelatedplugin'),(84,'aldryn_newsblog','newsblogtagsplugin'),(86,'aldryn_people','group'),(85,'aldryn_people','grouptranslation'),(89,'aldryn_people','peopleplugin'),(88,'aldryn_people','person'),(87,'aldryn_people','persontranslation'),(4,'auth','group'),(3,'auth','permission'),(5,'auth','user'),(106,'captcha','captchastore'),(19,'cms','aliaspluginmodel'),(15,'cms','cmsplugin'),(11,'cms','globalpagepermission'),(2,'cms','page'),(12,'cms','pagepermission'),(13,'cms','pageuser'),(14,'cms','pageusergroup'),(1,'cms','placeholder'),(17,'cms','placeholderreference'),(18,'cms','staticplaceholder'),(16,'cms','title'),(20,'cms','urlconfrevision'),(10,'cms','usersettings'),(36,'cmsplugin_filer_file','filerfile'),(37,'cmsplugin_filer_folder','filerfolder'),(38,'cmsplugin_filer_image','filerimage'),(6,'contenttypes','contenttype'),(34,'djangocms_column','column'),(33,'djangocms_column','multicolumns'),(42,'djangocms_googlemap','googlemap'),(43,'djangocms_googlemap','googlemapmarker'),(44,'djangocms_googlemap','googlemaproute'),(35,'djangocms_link','link'),(40,'djangocms_snippet','snippet'),(41,'djangocms_snippet','snippetptr'),(39,'djangocms_style','style'),(22,'djangocms_text_ckeditor','text'),(45,'djangocms_video','videoplayer'),(46,'djangocms_video','videosource'),(47,'djangocms_video','videotrack'),(30,'easy_thumbnails','source'),(31,'easy_thumbnails','thumbnail'),(32,'easy_thumbnails','thumbnaildimensions'),(104,'email_notifications','emailnotification'),(105,'email_notifications','emailnotificationformplugin'),(26,'filer','clipboard'),(27,'filer','clipboarditem'),(25,'filer','file'),(23,'filer','folder'),(24,'filer','folderpermission'),(28,'filer','image'),(29,'filer','thumbnailoption'),(21,'menus','cachekey'),(92,'reversion','revision'),(93,'reversion','version'),(7,'sessions','session'),(9,'sites','site'),(90,'taggit','tag'),(91,'taggit','taggeditem');
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
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-12-12 08:17:56'),(2,'auth','0001_initial','2016-12-12 08:17:56'),(3,'admin','0001_initial','2016-12-12 08:17:56'),(4,'contenttypes','0002_remove_content_type_name','2016-12-12 08:17:56'),(5,'auth','0002_alter_permission_name_max_length','2016-12-12 08:17:56'),(6,'auth','0003_alter_user_email_max_length','2016-12-12 08:17:56'),(7,'auth','0004_alter_user_username_opts','2016-12-12 08:17:56'),(8,'auth','0005_alter_user_last_login_null','2016-12-12 08:17:56'),(9,'auth','0006_require_contenttypes_0002','2016-12-12 08:17:56'),(10,'sites','0001_initial','2016-12-12 08:17:56'),(11,'cms','0001_initial','2016-12-12 08:17:57'),(12,'cms','0002_auto_20140816_1918','2016-12-12 08:17:57'),(13,'cms','0003_auto_20140926_2347','2016-12-12 08:17:57'),(14,'cms','0004_auto_20140924_1038','2016-12-12 08:17:57'),(15,'cms','0005_auto_20140924_1039','2016-12-12 08:17:57'),(16,'cms','0006_auto_20140924_1110','2016-12-12 08:17:58'),(17,'cms','0007_auto_20141028_1559','2016-12-12 08:17:58'),(18,'cms','0008_auto_20150208_2149','2016-12-12 08:17:58'),(19,'cms','0008_auto_20150121_0059','2016-12-12 08:17:58'),(20,'cms','0009_merge','2016-12-12 08:17:58'),(21,'cms','0010_migrate_use_structure','2016-12-12 08:17:58'),(22,'cms','0011_auto_20150419_1006','2016-12-12 08:17:58'),(23,'cms','0012_auto_20150607_2207','2016-12-12 08:17:58'),(24,'cms','0013_urlconfrevision','2016-12-12 08:17:58'),(25,'cms','0014_auto_20160404_1908','2016-12-12 08:17:58'),(26,'cms','0015_auto_20160421_0000','2016-12-12 08:17:58'),(27,'cms','0016_auto_20160608_1535','2016-12-12 08:17:58'),(28,'filer','0001_initial','2016-12-12 08:17:59'),(29,'cmsplugin_filer_file','0001_initial','2016-12-12 08:17:59'),(30,'cmsplugin_filer_file','0002_auto_20160112_1617','2016-12-12 08:17:59'),(31,'cmsplugin_filer_file','0003_filerfile_link_attributes','2016-12-12 08:17:59'),(32,'cmsplugin_filer_file','0004_auto_20160705_1334','2016-12-12 08:17:59'),(33,'cmsplugin_filer_file','0005_auto_20160713_1853','2016-12-12 08:17:59'),(34,'cmsplugin_filer_folder','0001_initial','2016-12-12 08:17:59'),(35,'cmsplugin_filer_folder','0002_auto_20160113_1318','2016-12-12 08:17:59'),(36,'cmsplugin_filer_folder','0003_auto_20160713_1853','2016-12-12 08:17:59'),(37,'filer','0002_auto_20150606_2003','2016-12-12 08:17:59'),(38,'filer','0003_thumbnailoption','2016-12-12 08:17:59'),(39,'cmsplugin_filer_image','0001_initial','2016-12-12 08:17:59'),(40,'cmsplugin_filer_image','0002_auto_20160108_1708','2016-12-12 08:17:59'),(41,'cmsplugin_filer_image','0003_mv_thumbnail_option_to_filer_20160119_1720','2016-12-12 08:17:59'),(42,'cmsplugin_filer_image','0004_auto_20160120_0950','2016-12-12 08:17:59'),(43,'cmsplugin_filer_image','0005_auto_20160224_1457','2016-12-12 08:17:59'),(44,'cmsplugin_filer_image','0006_auto_20160427_1438','2016-12-12 08:18:00'),(45,'cmsplugin_filer_image','0007_filerimage_link_attributes','2016-12-12 08:18:00'),(46,'cmsplugin_filer_image','0008_auto_20160705_1334','2016-12-12 08:18:00'),(47,'cmsplugin_filer_image','0009_auto_20160713_1853','2016-12-12 08:18:00'),(48,'djangocms_column','0001_initial','2016-12-12 08:18:00'),(49,'djangocms_column','0002_auto_20160915_0818','2016-12-12 08:18:00'),(50,'djangocms_googlemap','0001_initial','2016-12-12 08:18:00'),(51,'djangocms_googlemap','0002_auto_20160622_1031','2016-12-12 08:18:00'),(52,'djangocms_googlemap','0003_auto_20160825_1829','2016-12-12 08:18:00'),(53,'djangocms_googlemap','0004_adapted_fields','2016-12-12 08:18:02'),(54,'djangocms_googlemap','0005_create_nested_plugins','2016-12-12 08:18:02'),(55,'djangocms_googlemap','0006_remove_fields','2016-12-12 08:18:03'),(56,'djangocms_googlemap','0007_reset_null_values','2016-12-12 08:18:03'),(57,'djangocms_googlemap','0008_removed_null_fields','2016-12-12 08:18:03'),(58,'djangocms_link','0001_initial','2016-12-12 08:18:03'),(59,'djangocms_link','0002_auto_20140929_1705','2016-12-12 08:18:03'),(60,'djangocms_link','0003_auto_20150212_1310','2016-12-12 08:18:03'),(61,'djangocms_link','0004_auto_20150708_1133','2016-12-12 08:18:03'),(62,'djangocms_link','0005_auto_20151003_1710','2016-12-12 08:18:03'),(63,'djangocms_link','0006_remove_related_name_for_cmsplugin_ptr','2016-12-12 08:18:04'),(64,'djangocms_link','0007_set_related_name_for_cmsplugin_ptr','2016-12-12 08:18:04'),(65,'djangocms_link','0008_link_attributes','2016-12-12 08:18:04'),(66,'djangocms_link','0009_auto_20160705_1344','2016-12-12 08:18:04'),(67,'djangocms_link','0010_adapted_fields','2016-12-12 08:18:04'),(68,'djangocms_link','0011_fixed_null_values','2016-12-12 08:18:04'),(69,'djangocms_link','0012_removed_null','2016-12-12 08:18:04'),(70,'djangocms_link','0013_fix_hostname','2016-12-12 08:18:04'),(71,'djangocms_snippet','0001_initial','2016-12-12 08:18:05'),(72,'djangocms_snippet','0002_snippet_slug','2016-12-12 08:18:05'),(73,'djangocms_snippet','0003_auto_data_fill_slug','2016-12-12 08:18:05'),(74,'djangocms_snippet','0004_auto_alter_slug_unique','2016-12-12 08:18:05'),(75,'djangocms_snippet','0005_set_related_name_for_cmsplugin_ptr','2016-12-12 08:18:05'),(76,'djangocms_snippet','0006_auto_20160831_0729','2016-12-12 08:18:05'),(77,'djangocms_snippet','0007_auto_alter_template_helptext','2016-12-12 08:18:05'),(78,'djangocms_style','0001_initial','2016-12-12 08:18:05'),(79,'djangocms_style','0002_set_related_name_for_cmsplugin_ptr','2016-12-12 08:18:05'),(80,'djangocms_style','0003_adapted_fields','2016-12-12 08:18:06'),(81,'djangocms_style','0004_use_positive_small_integer_field','2016-12-12 08:18:07'),(82,'djangocms_style','0005_reset_null_values','2016-12-12 08:18:07'),(83,'djangocms_style','0006_removed_null_fields','2016-12-12 08:18:07'),(84,'djangocms_style','0007_style_template','2016-12-12 08:18:07'),(85,'djangocms_text_ckeditor','0001_initial','2016-12-12 08:18:07'),(86,'djangocms_text_ckeditor','0002_remove_related_name_for_cmsplugin_ptr','2016-12-12 08:18:07'),(87,'djangocms_text_ckeditor','0003_set_related_name_for_cmsplugin_ptr','2016-12-12 08:18:07'),(88,'djangocms_text_ckeditor','0004_auto_20160706_1339','2016-12-12 08:18:07'),(89,'filer','0004_auto_20160328_1434','2016-12-12 08:18:08'),(90,'filer','0005_auto_20160623_1425','2016-12-12 08:18:08'),(91,'filer','0006_auto_20160623_1627','2016-12-12 08:18:08'),(92,'djangocms_video','0001_initial','2016-12-12 08:18:08'),(93,'djangocms_video','0002_set_related_name_for_cmsplugin_ptr','2016-12-12 08:18:08'),(94,'djangocms_video','0003_field_adaptions','2016-12-12 08:18:08'),(95,'djangocms_video','0004_move_to_attributes','2016-12-12 08:18:10'),(96,'djangocms_video','0005_migrate_to_filer','2016-12-12 08:18:10'),(97,'djangocms_video','0006_field_adaptions','2016-12-12 08:18:10'),(98,'djangocms_video','0007_create_nested_plugin','2016-12-12 08:18:10'),(99,'djangocms_video','0008_reset_null_values','2016-12-12 08:18:10'),(100,'djangocms_video','0009_removed_null_values','2016-12-12 08:18:10'),(101,'easy_thumbnails','0001_initial','2016-12-12 08:18:10'),(102,'easy_thumbnails','0002_thumbnaildimensions','2016-12-12 08:18:10'),(103,'menus','0001_initial','2016-12-12 08:18:10'),(104,'sessions','0001_initial','2016-12-12 08:18:10'),(105,'aldryn_background_image','0001_initial','2016-12-12 11:25:26'),(106,'aldryn_bootstrap3','0001_initial','2016-12-12 12:02:40'),(107,'aldryn_bootstrap3','0002_bootstrap3fileplugin','2016-12-12 12:02:41'),(108,'aldryn_bootstrap3','0003_auto_20151113_1604','2016-12-12 12:02:41'),(109,'aldryn_bootstrap3','0004_auto_20151211_1333','2016-12-12 12:02:42'),(110,'aldryn_bootstrap3','0005_boostrap3imageplugin_use_original_image','2016-12-12 12:02:42'),(111,'aldryn_bootstrap3','0006_auto_20160615_1740','2016-12-12 12:02:42'),(112,'aldryn_bootstrap3','0007_auto_20160705_1155','2016-12-12 12:02:42'),(113,'aldryn_bootstrap3','0008_auto_20160820_2332','2016-12-12 12:02:43'),(114,'taggit','0001_initial','2016-12-12 13:03:34'),(115,'aldryn_people','0001_initial','2016-12-12 13:03:35'),(116,'aldryn_categories','0001_initial','2016-12-12 13:03:35'),(117,'aldryn_newsblog','0001_initial','2016-12-12 13:03:38'),(118,'aldryn_newsblog','0002_newsblogconfig_template_prefix','2016-12-12 13:03:38'),(119,'aldryn_newsblog','0003_auto_20150422_1921','2016-12-12 13:03:39'),(120,'aldryn_newsblog','0004_auto_20150622_1606','2016-12-12 13:03:39'),(121,'aldryn_newsblog','0005_auto_20150807_0207','2016-12-12 13:03:39'),(122,'aldryn_newsblog','0006_auto_20160105_1013','2016-12-12 13:03:39'),(123,'aldryn_newsblog','0007_default_newsblog_config','2016-12-12 13:03:39'),(124,'aldryn_newsblog','0008_auto_20160106_1735','2016-12-12 13:03:39'),(125,'aldryn_newsblog','0009_auto_20160211_1022','2016-12-12 13:03:40'),(126,'aldryn_newsblog','0010_auto_20160316_0935','2016-12-12 13:03:40'),(127,'aldryn_newsblog','0011_auto_20160412_1622','2016-12-12 13:03:40'),(128,'aldryn_newsblog','0012_auto_20160503_1626','2016-12-12 13:03:42'),(129,'aldryn_newsblog','0013_auto_20160623_1703','2016-12-12 13:03:43'),(130,'aldryn_newsblog','0014_auto_20160821_1156','2016-12-12 13:03:43'),(131,'aldryn_categories','0002_auto_20150109_1415','2016-12-12 13:15:17'),(132,'aldryn_categories','0003_auto_20150128_1359','2016-12-12 13:15:17'),(133,'aldryn_categories','0004_auto_20150623_0859','2016-12-12 13:15:17'),(134,'aldryn_people','0002_auto_20150128_1411','2016-12-12 13:15:17'),(135,'aldryn_people','0003_auto_20150425_2103','2016-12-12 13:15:18'),(136,'aldryn_people','0004_auto_20150622_1606','2016-12-12 13:15:18'),(137,'aldryn_people','0005_auto_20150723_1508','2016-12-12 13:15:18'),(138,'aldryn_people','0006_person_groups','2016-12-12 13:15:19'),(139,'aldryn_people','0007_copy_group','2016-12-12 13:15:19'),(140,'aldryn_people','0008_remove_person_group','2016-12-12 13:15:19'),(141,'aldryn_people','0009_auto_20150724_1654','2016-12-12 13:15:19'),(142,'aldryn_people','0010_auto_20150724_1654','2016-12-12 13:15:19'),(143,'aldryn_people','0011_auto_20150724_1900','2016-12-12 13:15:20'),(144,'aldryn_people','0012_auto_20150728_1114','2016-12-12 13:15:20'),(145,'aldryn_people','0013_peopleplugin_show_ungrouped','2016-12-12 13:15:20'),(146,'aldryn_people','0014_auto_20150807_0033','2016-12-12 13:15:21'),(147,'aldryn_people','0015_m2m_remove_null','2016-12-12 13:15:21'),(148,'aldryn_people','0016_person_fk_to_one_to_one','2016-12-12 13:15:21'),(149,'aldryn_people','0017_auto_20160109_1951','2016-12-12 13:15:22'),(150,'aldryn_people','0018_auto_20160802_1852','2016-12-12 13:15:22'),(151,'reversion','0001_initial','2016-12-12 13:15:22'),(152,'reversion','0002_auto_20141216_1509','2016-12-12 13:15:22'),(153,'taggit','0002_auto_20150616_2121','2016-12-12 13:15:23'),(154,'aldryn_forms','0001_initial','2016-12-13 07:55:33'),(155,'aldryn_forms','0002_auto_20151014_1631','2016-12-13 07:55:34'),(156,'aldryn_forms','0003_auto_20151207_1038','2016-12-13 07:55:34'),(157,'aldryn_forms','0004_auto_20151207_1825','2016-12-13 07:55:34'),(158,'aldryn_forms','0005_auto_20160821_1026','2016-12-13 07:55:35'),(159,'aldryn_forms','0006_auto_20160821_1039','2016-12-13 07:55:36'),(160,'captcha','0001_initial','2016-12-13 07:55:36'),(161,'email_notifications','0001_initial','2016-12-13 07:55:36');
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
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('6lgts22wmalmzkrnmb72cebrobssnw2a','YTU0MGY3ODc2N2I0MWRjYzI0YzlmZjIyNjYzNTkyNmY0NzQzNTQ2MDp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiX2F1dGhfdXNlcl9pZCI6IjEiLCJ3aXphcmRfd2l6YXJkX2NyZWF0ZV92aWV3Ijp7InN0ZXBfZmlsZXMiOnsiMCI6e319LCJzdGVwIjoiMSIsImV4dHJhX2RhdGEiOnt9LCJzdGVwX2RhdGEiOnsiMCI6eyIwLWxhbmd1YWdlIjpbImVuIl0sImNzcmZtaWRkbGV3YXJldG9rZW4iOlsiR2NzRjVITHB2dUJMcjJuT3hJZzNyYndyeVU4NTVHSUYiXSwiMC1lbnRyeSI6WyI3MWFlYWE4YTRmM2VkYjVmMTBmYjdhYTFkMGFmYzhhYzE1MDc1MTZhIl0sIjAtcGFnZSI6WyIiXSwid2l6YXJkX2NyZWF0ZV92aWV3LWN1cnJlbnRfc3RlcCI6WyIwIl19fX0sIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiY21zX2VkaXQiOnRydWUsIl9hdXRoX3VzZXJfaGFzaCI6IjljNjE3ZmYyMTZkYjgwMTAwZmFkNjYxYTgwYzZhMzJiMzIxOTY2ZWYifQ==','2016-12-26 08:22:36'),('vdvdh9vg13wdcz7kwnsi2uuh6pwrbfzh','YTgyZTg4OTUwYzQ3OTVhNThiYzZiNTljYTk1OWYyZDA5YjZkYmI4MTp7ImNtc19hZG1pbl9zaXRlIjoxLCJfYXV0aF91c2VyX2lkIjoiMSIsImZpbGVyX2xhc3RfZm9sZGVyX2lkIjpudWxsLCJjbXNfdG9vbGJhcl9kaXNhYmxlZCI6ZmFsc2UsIndpemFyZF93aXphcmRfY3JlYXRlX3ZpZXciOnsic3RlcF9maWxlcyI6e30sInN0ZXAiOiIwIiwiZXh0cmFfZGF0YSI6e30sInN0ZXBfZGF0YSI6e319LCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsImNtc19lZGl0Ijp0cnVlLCJfYXV0aF91c2VyX2hhc2giOiI5YzYxN2ZmMjE2ZGI4MDEwMGZhZDY2MWE4MGM2YTMyYjMyMTk2NmVmIn0=','2016-12-27 08:11:11');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'osama.me','osama.me');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_column_column`
--

DROP TABLE IF EXISTS `djangocms_column_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_column_column` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `width` varchar(50) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms__cmsplugin_ptr_id_432d5235a0694579_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_column_column`
--

LOCK TABLES `djangocms_column_column` WRITE;
/*!40000 ALTER TABLE `djangocms_column_column` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_column_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_column_multicolumns`
--

DROP TABLE IF EXISTS `djangocms_column_multicolumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_column_multicolumns` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_c_cmsplugin_ptr_id_1988dc6134360e9_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_column_multicolumns`
--

LOCK TABLES `djangocms_column_multicolumns` WRITE;
/*!40000 ALTER TABLE `djangocms_column_multicolumns` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_column_multicolumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_googlemap_googlemap`
--

DROP TABLE IF EXISTS `djangocms_googlemap_googlemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_googlemap_googlemap` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `zoom` smallint(5) unsigned NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `width` varchar(6) NOT NULL,
  `height` varchar(6) NOT NULL,
  `scrollwheel` tinyint(1) NOT NULL,
  `double_click_zoom` tinyint(1) NOT NULL,
  `draggable` tinyint(1) NOT NULL,
  `keyboard_shortcuts` tinyint(1) NOT NULL,
  `pan_control` tinyint(1) NOT NULL,
  `zoom_control` tinyint(1) NOT NULL,
  `street_view_control` tinyint(1) NOT NULL,
  `style` longtext NOT NULL,
  `fullscreen_control` tinyint(1) NOT NULL,
  `map_type_control` varchar(255) NOT NULL,
  `rotate_control` tinyint(1) NOT NULL,
  `scale_control` tinyint(1) NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms__cmsplugin_ptr_id_27416e1ea4d425bd_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_googlemap_googlemap`
--

LOCK TABLES `djangocms_googlemap_googlemap` WRITE;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_googlemap_googlemapmarker`
--

DROP TABLE IF EXISTS `djangocms_googlemap_googlemapmarker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_googlemap_googlemapmarker` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `lat` decimal(10,6) DEFAULT NULL,
  `lng` decimal(10,6) DEFAULT NULL,
  `show_content` tinyint(1) NOT NULL,
  `info_content` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms__cmsplugin_ptr_id_1aed4d564b513ceb_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_googlemap_googlemapmarker`
--

LOCK TABLES `djangocms_googlemap_googlemapmarker` WRITE;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemapmarker` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemapmarker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_googlemap_googlemaproute`
--

DROP TABLE IF EXISTS `djangocms_googlemap_googlemaproute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_googlemap_googlemaproute` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `travel_mode` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms__cmsplugin_ptr_id_245e87a3e60db58d_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_googlemap_googlemaproute`
--

LOCK TABLES `djangocms_googlemap_googlemaproute` WRITE;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemaproute` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemaproute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_link_link`
--

DROP TABLE IF EXISTS `djangocms_link_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_link_link` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `external_link` varchar(2040) NOT NULL,
  `anchor` varchar(255) NOT NULL,
  `mailto` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `internal_link_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_link__internal_link_id_28d2ec9505a81a34_fk_cms_page_id` (`internal_link_id`),
  CONSTRAINT `djangocms_link__internal_link_id_28d2ec9505a81a34_fk_cms_page_id` FOREIGN KEY (`internal_link_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `djangocms__cmsplugin_ptr_id_15f60a222b2c5a7d_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_link_link`
--

LOCK TABLES `djangocms_link_link` WRITE;
/*!40000 ALTER TABLE `djangocms_link_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_link_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_snippet_snippet`
--

DROP TABLE IF EXISTS `djangocms_snippet_snippet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_snippet_snippet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `html` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `djangocms_snippet_snippet_slug_595b984cd068cc13_uniq` (`slug`),
  KEY `djangocms_snippet_snippet_2dbcba41` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_snippet_snippet`
--

LOCK TABLES `djangocms_snippet_snippet` WRITE;
/*!40000 ALTER TABLE `djangocms_snippet_snippet` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_snippet_snippet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_snippet_snippetptr`
--

DROP TABLE IF EXISTS `djangocms_snippet_snippetptr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_snippet_snippetptr` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `snippet_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djan_snippet_id_5c36edfcd7b7e868_fk_djangocms_snippet_snippet_id` (`snippet_id`),
  CONSTRAINT `djangocms_s_cmsplugin_ptr_id_d41298032b1b800_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djan_snippet_id_5c36edfcd7b7e868_fk_djangocms_snippet_snippet_id` FOREIGN KEY (`snippet_id`) REFERENCES `djangocms_snippet_snippet` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_snippet_snippetptr`
--

LOCK TABLES `djangocms_snippet_snippetptr` WRITE;
/*!40000 ALTER TABLE `djangocms_snippet_snippetptr` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_snippet_snippetptr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_style_style`
--

DROP TABLE IF EXISTS `djangocms_style_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_style_style` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `padding_left` smallint(5) unsigned DEFAULT NULL,
  `padding_right` smallint(5) unsigned DEFAULT NULL,
  `padding_top` smallint(5) unsigned DEFAULT NULL,
  `padding_bottom` smallint(5) unsigned DEFAULT NULL,
  `margin_left` smallint(5) unsigned DEFAULT NULL,
  `margin_right` smallint(5) unsigned DEFAULT NULL,
  `margin_top` smallint(5) unsigned DEFAULT NULL,
  `margin_bottom` smallint(5) unsigned DEFAULT NULL,
  `additional_classes` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `id_name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms__cmsplugin_ptr_id_661880b8f081b307_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_style_style`
--

LOCK TABLES `djangocms_style_style` WRITE;
/*!40000 ALTER TABLE `djangocms_style_style` DISABLE KEYS */;
INSERT INTO `djangocms_style_style` VALUES (17,'container','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','{}','','','default'),(20,'page-heading','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','{}','','','default'),(41,'container','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','{}','','','default'),(44,'page-heading','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','{}','','','default'),(47,'container','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','{}','','','default'),(50,'page-heading','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','{}','','','default'),(66,'container','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','{}','','','default'),(69,'page-heading','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','{}','','','default'),(93,'container','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','{}','','','default'),(96,'page-heading','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','{}','','','default'),(101,'container','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','{}','','','default'),(104,'page-heading','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','{}','','','default'),(107,'container','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','{}','','','default'),(110,'page-heading','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','{}','','','default'),(114,'container','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','{}','','','default'),(117,'page-heading','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','{}','','','default'),(161,'container','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','{}','','','default'),(164,'page-heading','div',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','{}','','','default');
/*!40000 ALTER TABLE `djangocms_style_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_text_ckeditor_text`
--

DROP TABLE IF EXISTS `djangocms_text_ckeditor_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_text_ckeditor_text` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `body` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms__cmsplugin_ptr_id_5cfb7ff7d38a35c0_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_text_ckeditor_text`
--

LOCK TABLES `djangocms_text_ckeditor_text` WRITE;
/*!40000 ALTER TABLE `djangocms_text_ckeditor_text` DISABLE KEYS */;
INSERT INTO `djangocms_text_ckeditor_text` VALUES (21,'<h1>Home</h1>\n'),(29,'<p>Four loko freegan wayfarers, chillwave gentrify occupy green juice before they sold out viral selfies keytar tbh 3 wolf moon. Microdosing typewriter selfies snackwave mlkshk blue bottle. Waistcoat church-key marfa, la croix meggings unicorn tofu iPhone mixtape fam synth. Fanny pack aesthetic four loko pug, poke four dollar toast jianbing. Echo park tbh cronut, kombucha austin small batch normcore. Echo park tumblr raw denim twee, heirloom irony pickled +1 chambray trust fund wolf taxidermy etsy disrupt. DIY fap chambray street art fingerstache slow-carb waistcoat roof party, vaporware occupy.</p>\n\n<p>Viral la croix listicle jean shorts quinoa. Single-origin coffee poutine cronut beard, affogato lyft twee enamel pin fap humblebrag bicycle rights. Hashtag woke four dollar toast venmo, etsy pickled brunch letterpress kale chips cornhole ugh affogato celiac. Vice stumptown vegan tbh cardigan whatever, locavore before they sold out. Taxidermy lyft chia post-ironic cronut tote bag. Jean shorts health goth fashion axe subway tile. Raw denim selfies plaid etsy.</p>\n'),(30,'<p>Four loko freegan wayfarers, chillwave gentrify occupy green juice before they sold out viral selfies keytar tbh 3 wolf moon. Microdosing typewriter selfies snackwave mlkshk blue bottle. Waistcoat church-key marfa, la croix meggings unicorn tofu iPhone mixtape fam synth. Fanny pack aesthetic four loko pug, poke four dollar toast jianbing. Echo park tbh cronut, kombucha austin small batch normcore. Echo park tumblr raw denim twee, heirloom irony pickled +1 chambray trust fund wolf taxidermy etsy disrupt. DIY fap chambray street art fingerstache slow-carb waistcoat roof party, vaporware occupy.</p>\n\n<p>Viral la croix listicle jean shorts quinoa. Single-origin coffee poutine cronut beard, affogato lyft twee enamel pin fap humblebrag bicycle rights. Hashtag woke four dollar toast venmo, etsy pickled brunch letterpress kale chips cornhole ugh affogato celiac. Vice stumptown vegan tbh cardigan whatever, locavore before they sold out. Taxidermy lyft chia post-ironic cronut tote bag. Jean shorts health goth fashion axe subway tile. Raw denim selfies plaid etsy.</p>\n\n<p>Raclette flannel succulents, stumptown iPhone locavore meditation hell of kickstarter. Occupy hashtag cray pinterest flannel. Before they sold out bushwick enamel pin, kinfolk synth offal marfa master cleanse actually. Vexillologist chillwave mumblecore, typewriter 8-bit single-origin coffee gochujang shoreditch lumbersexual beard pitchfork master cleanse actually drinking vinegar. Blog kale chips swag synth normcore YOLO. Echo park chambray vaporware, slow-carb glossier snackwave tumeric pop-up plaid. Leggings edison bulb paleo fap literally, gochujang pitchfork kogi wolf tumblr.</p>\n'),(31,'<p>Raclette flannel succulents, stumptown iPhone locavore meditation hell of kickstarter. Occupy hashtag cray pinterest flannel. Before they sold out bushwick enamel pin, kinfolk synth offal marfa master cleanse actually. Vexillologist chillwave mumblecore, typewriter 8-bit single-origin coffee gochujang shoreditch lumbersexual beard pitchfork master cleanse actually drinking vinegar. Blog kale chips swag synth normcore YOLO. Echo park chambray vaporware, slow-carb glossier snackwave tumeric pop-up plaid. Leggings edison bulb paleo fap literally, gochujang pitchfork kogi wolf tumblr.</p>\n\n<p>Ramps sustainable vape mixtape aesthetic, farm-to-table la croix yuccie tbh edison bulb hella. IPhone four loko pok pok poke squid. Chambray brooklyn quinoa tacos, jianbing asymmetrical pug cred kombucha artisan brunch beard. Put a bird on it blue bottle pork belly photo booth. Sriracha single-origin coffee franzen four dollar toast hot chicken bicycle rights. Blog roof party narwhal kickstarter schlitz, normcore master cleanse quinoa four loko pork belly direct trade meditation offal PBR&amp;B. Gentrify activated charcoal selvage, vice farm-to-table biodiesel skateboard.</p>\n'),(45,'<h1>osama abuomar</h1>\n'),(51,'<h1>Blog</h1>\n'),(64,'<p>Viral la croix listicle jean shorts quinoa. Single-origin coffee poutine cronut beard.</p>\n\n<p> </p>\n'),(70,'<h1>About</h1>\n'),(97,'<h1>Blog</h1>\n'),(105,'<h1>Home</h1>\n'),(111,'<h1>About</h1>\n'),(112,'<p>Viral la croix listicle jean shorts quinoa. Single-origin coffee poutine cronut beard.</p>\n\n<p> </p>\n'),(118,'<h1>Contact us</h1>\n'),(119,'<p>Viral la croix listicle jean shorts quinoa. Single-origin coffee poutine cronut beard.</p>\n\n<p> </p>\n'),(153,'<p>Viral la croix listicle jean shorts quinoa. Single-origin coffee poutine cronut beard.</p>\n\n<p> </p>\n'),(165,'<h1>Contact us</h1>\n');
/*!40000 ALTER TABLE `djangocms_text_ckeditor_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_video_videoplayer`
--

DROP TABLE IF EXISTS `djangocms_video_videoplayer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_video_videoplayer` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `embed_link` varchar(255) NOT NULL,
  `poster_id` int(11),
  `attributes` longtext NOT NULL,
  `label` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videoplayer_9b86e5fe` (`poster_id`),
  CONSTRAINT `djangocms__cmsplugin_ptr_id_47cdddbe8380d21e_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms__poster_id_119ad9cf4126fb1b_fk_filer_image_file_ptr_id` FOREIGN KEY (`poster_id`) REFERENCES `filer_image` (`file_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_video_videoplayer`
--

LOCK TABLES `djangocms_video_videoplayer` WRITE;
/*!40000 ALTER TABLE `djangocms_video_videoplayer` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_video_videoplayer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_video_videosource`
--

DROP TABLE IF EXISTS `djangocms_video_videosource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_video_videosource` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `text_title` varchar(255) NOT NULL,
  `text_description` longtext NOT NULL,
  `attributes` longtext NOT NULL,
  `source_file_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videosource_01490fd0` (`source_file_id`),
  CONSTRAINT `djangocms_video_source_file_id_2464e1b08e8ff7e9_fk_filer_file_id` FOREIGN KEY (`source_file_id`) REFERENCES `filer_file` (`id`),
  CONSTRAINT `djangocms__cmsplugin_ptr_id_618bd01cf1165ac6_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_video_videosource`
--

LOCK TABLES `djangocms_video_videosource` WRITE;
/*!40000 ALTER TABLE `djangocms_video_videosource` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_video_videosource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_video_videotrack`
--

DROP TABLE IF EXISTS `djangocms_video_videotrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_video_videotrack` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `kind` varchar(255) NOT NULL,
  `srclang` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `src_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videotrack_3166800b` (`src_id`),
  CONSTRAINT `djangocms_video_videotr_src_id_786d24ebb648901c_fk_filer_file_id` FOREIGN KEY (`src_id`) REFERENCES `filer_file` (`id`),
  CONSTRAINT `djangocms__cmsplugin_ptr_id_743998d001d5f6fb_fk_cms_cmsplugin_id` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_video_videotrack`
--

LOCK TABLES `djangocms_video_videotrack` WRITE;
/*!40000 ALTER TABLE `djangocms_video_videotrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_video_videotrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_source`
--

DROP TABLE IF EXISTS `easy_thumbnails_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_source_storage_hash_40116450c1e4f2ed_uniq` (`storage_hash`,`name`),
  KEY `easy_thumbnails_source_b454e115` (`storage_hash`),
  KEY `easy_thumbnails_source_b068931c` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_source`
--

LOCK TABLES `easy_thumbnails_source` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_source` DISABLE KEYS */;
INSERT INTO `easy_thumbnails_source` VALUES (1,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/f7/e3/f7e3ecd3-86b2-42e6-8001-ec515bc8f836/contact-bg.jpg','2016-12-12 11:18:41'),(2,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/5e/40/5e407d5c-18b4-4e27-9d30-50521feebad2/about-bg.jpg','2016-12-12 11:18:46'),(3,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/56/03/5603317e-3b0e-4703-a31c-860c843fa585/home-bg.jpg','2016-12-13 06:28:57'),(4,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/1d/95/1d95e887-7960-4b33-9e2c-3e544a26cfe1/contact-bg.jpg','2016-12-12 11:19:15'),(5,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/11/9e/119ef1bc-89a3-4fc6-915c-72c6c33240b2/post-bg.jpg','2016-12-12 11:18:47'),(6,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/c1/ee/c1ee6258-91bb-4044-b91e-0078287c1427/post-sample-image.jpg','2016-12-13 06:29:27');
/*!40000 ALTER TABLE `easy_thumbnails_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnail`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  `source_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_thumbnail_storage_hash_66cc758d07ef9fce_uniq` (`storage_hash`,`name`,`source_id`),
  KEY `easy_thu_source_id_50b260de7106e1b7_fk_easy_thumbnails_source_id` (`source_id`),
  KEY `easy_thumbnails_thumbnail_b454e115` (`storage_hash`),
  KEY `easy_thumbnails_thumbnail_b068931c` (`name`),
  CONSTRAINT `easy_thu_source_id_50b260de7106e1b7_fk_easy_thumbnails_source_id` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnail`
--

LOCK TABLES `easy_thumbnails_thumbnail` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` DISABLE KEYS */;
INSERT INTO `easy_thumbnails_thumbnail` VALUES (1,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/f7/e3/f7e3ecd3-86b2-42e6-8001-ec515bc8f836/contact-bg.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:41',1),(2,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/f7/e3/f7e3ecd3-86b2-42e6-8001-ec515bc8f836/contact-bg.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:41',1),(3,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/f7/e3/f7e3ecd3-86b2-42e6-8001-ec515bc8f836/contact-bg.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:41',1),(4,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/f7/e3/f7e3ecd3-86b2-42e6-8001-ec515bc8f836/contact-bg.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:41',1),(5,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/f7/e3/f7e3ecd3-86b2-42e6-8001-ec515bc8f836/contact-bg.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:41',1),(6,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/5e/40/5e407d5c-18b4-4e27-9d30-50521feebad2/about-bg.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:46',2),(7,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/56/03/5603317e-3b0e-4703-a31c-860c843fa585/home-bg.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:46',3),(8,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/5e/40/5e407d5c-18b4-4e27-9d30-50521feebad2/about-bg.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:46',2),(9,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/1d/95/1d95e887-7960-4b33-9e2c-3e544a26cfe1/contact-bg.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:46',4),(10,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/56/03/5603317e-3b0e-4703-a31c-860c843fa585/home-bg.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:46',3),(11,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/5e/40/5e407d5c-18b4-4e27-9d30-50521feebad2/about-bg.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:46',2),(12,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/1d/95/1d95e887-7960-4b33-9e2c-3e544a26cfe1/contact-bg.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:46',4),(13,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/5e/40/5e407d5c-18b4-4e27-9d30-50521feebad2/about-bg.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:47',2),(14,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/56/03/5603317e-3b0e-4703-a31c-860c843fa585/home-bg.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:47',3),(15,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/1d/95/1d95e887-7960-4b33-9e2c-3e544a26cfe1/contact-bg.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:47',4),(16,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/5e/40/5e407d5c-18b4-4e27-9d30-50521feebad2/about-bg.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:47',2),(17,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/56/03/5603317e-3b0e-4703-a31c-860c843fa585/home-bg.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:47',3),(18,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/1d/95/1d95e887-7960-4b33-9e2c-3e544a26cfe1/contact-bg.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:47',4),(19,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/56/03/5603317e-3b0e-4703-a31c-860c843fa585/home-bg.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:47',3),(20,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/11/9e/119ef1bc-89a3-4fc6-915c-72c6c33240b2/post-bg.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:47',5),(21,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/1d/95/1d95e887-7960-4b33-9e2c-3e544a26cfe1/contact-bg.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:47',4),(22,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/11/9e/119ef1bc-89a3-4fc6-915c-72c6c33240b2/post-bg.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:47',5),(23,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/c1/ee/c1ee6258-91bb-4044-b91e-0078287c1427/post-sample-image.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:47',6),(24,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/11/9e/119ef1bc-89a3-4fc6-915c-72c6c33240b2/post-bg.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:47',5),(25,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/c1/ee/c1ee6258-91bb-4044-b91e-0078287c1427/post-sample-image.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:47',6),(26,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/11/9e/119ef1bc-89a3-4fc6-915c-72c6c33240b2/post-bg.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:47',5),(27,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/c1/ee/c1ee6258-91bb-4044-b91e-0078287c1427/post-sample-image.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:47',6),(28,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/c1/ee/c1ee6258-91bb-4044-b91e-0078287c1427/post-sample-image.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:47',6),(29,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/11/9e/119ef1bc-89a3-4fc6-915c-72c6c33240b2/post-bg.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:47',5),(30,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/c1/ee/c1ee6258-91bb-4044-b91e-0078287c1427/post-sample-image.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:47',6),(31,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/56/03/5603317e-3b0e-4703-a31c-860c843fa585/home-bg.jpg__1900x872_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:18:54',3),(32,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/1d/95/1d95e887-7960-4b33-9e2c-3e544a26cfe1/contact-bg.jpg__1900x864_q85_crop_subsampling-2_upscale.jpg','2016-12-12 11:19:15',4),(33,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/c1/ee/c1ee6258-91bb-4044-b91e-0078287c1427/post-sample-image.jpg__1200x400_q85_crop_subsampling-2.jpg','2016-12-13 06:28:44',6),(34,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/56/03/5603317e-3b0e-4703-a31c-860c843fa585/home-bg.jpg__1200x400_q85_crop_subsampling-2.jpg','2016-12-13 06:28:57',3),(35,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/c1/ee/c1ee6258-91bb-4044-b91e-0078287c1427/post-sample-image.jpg__40x40_q85_crop_subsampling-2_upscale.jpg','2016-12-13 06:29:27',6),(36,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/c1/ee/c1ee6258-91bb-4044-b91e-0078287c1427/post-sample-image.jpg__1170x0_q85_subsampling-2_upscale.jpg','2016-12-13 06:29:27',6);
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnaildimensions`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnaildimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnaildimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail_id` int(11) NOT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `thumbnail_id` (`thumbnail_id`),
  CONSTRAINT `ea_thumbnail_id_29ad34faceb3c17c_fk_easy_thumbnails_thumbnail_id` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnaildimensions`
--

LOCK TABLES `easy_thumbnails_thumbnaildimensions` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_notifications_emailnotification`
--

DROP TABLE IF EXISTS `email_notifications_emailnotification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_notifications_emailnotification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(200) NOT NULL,
  `to_name` varchar(200) NOT NULL,
  `to_email` varchar(200) NOT NULL,
  `from_name` varchar(200) NOT NULL,
  `from_email` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `body_text` longtext NOT NULL,
  `body_html` longtext NOT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `form_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email_notifications__to_user_id_4ad62adb25e893b6_fk_auth_user_id` (`to_user_id`),
  KEY `email_notifications_emailnotification_d6cba1ad` (`form_id`),
  CONSTRAINT `beaa7e98bfb9b6eed2fdd8342b32e120` FOREIGN KEY (`form_id`) REFERENCES `aldryn_forms_formplugin` (`cmsplugin_ptr_id`),
  CONSTRAINT `email_notifications__to_user_id_4ad62adb25e893b6_fk_auth_user_id` FOREIGN KEY (`to_user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_notifications_emailnotification`
--

LOCK TABLES `email_notifications_emailnotification` WRITE;
/*!40000 ALTER TABLE `email_notifications_emailnotification` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_notifications_emailnotification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_clipboard`
--

DROP TABLE IF EXISTS `filer_clipboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_clipboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_clipboard_e8701ad4` (`user_id`),
  CONSTRAINT `filer_clipboard_user_id_2b30c76f2cd235df_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_clipboard`
--

LOCK TABLES `filer_clipboard` WRITE;
/*!40000 ALTER TABLE `filer_clipboard` DISABLE KEYS */;
INSERT INTO `filer_clipboard` VALUES (1,1);
/*!40000 ALTER TABLE `filer_clipboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_clipboarditem`
--

DROP TABLE IF EXISTS `filer_clipboarditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_clipboarditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clipboard_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_clipbo_clipboard_id_335d159e1aea2cdc_fk_filer_clipboard_id` (`clipboard_id`),
  KEY `filer_clipboarditem_814552b9` (`file_id`),
  CONSTRAINT `filer_clipboarditem_file_id_7b1b6a14b5a3f2b1_fk_filer_file_id` FOREIGN KEY (`file_id`) REFERENCES `filer_file` (`id`),
  CONSTRAINT `filer_clipbo_clipboard_id_335d159e1aea2cdc_fk_filer_clipboard_id` FOREIGN KEY (`clipboard_id`) REFERENCES `filer_clipboard` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_clipboarditem`
--

LOCK TABLES `filer_clipboarditem` WRITE;
/*!40000 ALTER TABLE `filer_clipboarditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_clipboarditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_file`
--

DROP TABLE IF EXISTS `filer_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(255) DEFAULT NULL,
  `_file_size` int(11) DEFAULT NULL,
  `sha1` varchar(40) NOT NULL,
  `has_all_mandatory_data` tinyint(1) NOT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `uploaded_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `folder_id` int(11),
  `owner_id` int(11),
  `polymorphic_ctype_id` int(11),
  PRIMARY KEY (`id`),
  KEY `filer_file_a8a44dbb` (`folder_id`),
  KEY `filer_file_5e7b1936` (`owner_id`),
  KEY `filer_file_d3e32c49` (`polymorphic_ctype_id`),
  CONSTRAINT `filer_file_owner_id_67317c663ea33283_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `filer_file_folder_id_24318dda71f59785_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  CONSTRAINT `polymorphic_ctype_id_37b6c9e9cb7a323a_fk_django_content_type_id` FOREIGN KEY (`polymorphic_ctype_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_file`
--

LOCK TABLES `filer_file` WRITE;
/*!40000 ALTER TABLE `filer_file` DISABLE KEYS */;
INSERT INTO `filer_file` VALUES (1,'filer_public/f7/e3/f7e3ecd3-86b2-42e6-8001-ec515bc8f836/contact-bg.jpg',290070,'6af63305c923899017e727b5ca968a2703bc08cf',0,'contact-bg.jpg','',NULL,'2016-12-12 11:18:41','2016-12-12 11:18:41',1,NULL,1,28),(2,'filer_public/5e/40/5e407d5c-18b4-4e27-9d30-50521feebad2/about-bg.jpg',33097,'d39126a6456f2bac0169d1779304725f179c9900',0,'about-bg.jpg','',NULL,'2016-12-12 11:18:46','2016-12-12 11:18:46',1,NULL,1,28),(3,'filer_public/56/03/5603317e-3b0e-4703-a31c-860c843fa585/home-bg.jpg',172779,'990f6f9dd0ecb5348bfcc47305553d58c0d8f326',0,'home-bg.jpg','',NULL,'2016-12-12 11:18:46','2016-12-12 11:18:46',1,NULL,1,28),(4,'filer_public/1d/95/1d95e887-7960-4b33-9e2c-3e544a26cfe1/contact-bg.jpg',290070,'6af63305c923899017e727b5ca968a2703bc08cf',0,'contact-bg.jpg','',NULL,'2016-12-12 11:18:46','2016-12-12 11:18:46',1,NULL,1,28),(5,'filer_public/11/9e/119ef1bc-89a3-4fc6-915c-72c6c33240b2/post-bg.jpg',140909,'251dfd06f06c56ded3206cb2d2004974b7dfeb0c',0,'post-bg.jpg','',NULL,'2016-12-12 11:18:47','2016-12-12 11:18:47',1,NULL,1,28),(6,'filer_public/c1/ee/c1ee6258-91bb-4044-b91e-0078287c1427/post-sample-image.jpg',115144,'4c113edb72b5e7b43c762b0555ca8b1fa0d5d4d8',0,'post-sample-image.jpg','',NULL,'2016-12-12 11:18:47','2016-12-12 11:18:47',1,NULL,1,28);
/*!40000 ALTER TABLE `filer_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_folder`
--

DROP TABLE IF EXISTS `filer_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_folder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `uploaded_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rght` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filer_folder_parent_id_30ad83e34d901e49_uniq` (`parent_id`,`name`),
  KEY `filer_folder_caf7cc51` (`lft`),
  KEY `filer_folder_3cfbd988` (`rght`),
  KEY `filer_folder_656442a0` (`tree_id`),
  KEY `filer_folder_c9e9a848` (`level`),
  KEY `filer_folder_owner_id_6527f5f13a76f3ed_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `filer_folder_owner_id_6527f5f13a76f3ed_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `filer_folder_parent_id_4170098ac31c2cbf_fk_filer_folder_id` FOREIGN KEY (`parent_id`) REFERENCES `filer_folder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_folder`
--

LOCK TABLES `filer_folder` WRITE;
/*!40000 ALTER TABLE `filer_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_folderpermission`
--

DROP TABLE IF EXISTS `filer_folderpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_folderpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL,
  `everybody` tinyint(1) NOT NULL,
  `can_edit` smallint(6) DEFAULT NULL,
  `can_read` smallint(6) DEFAULT NULL,
  `can_add_children` smallint(6) DEFAULT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_folderpermis_folder_id_442a5347ee209a98_fk_filer_folder_id` (`folder_id`),
  KEY `filer_folderpermissio_group_id_7c2389ac07ebbde2_fk_auth_group_id` (`group_id`),
  KEY `filer_folderpermission_user_id_7c6e1a7187a0f15b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `filer_folderpermission_user_id_7c6e1a7187a0f15b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `filer_folderpermissio_group_id_7c2389ac07ebbde2_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `filer_folderpermis_folder_id_442a5347ee209a98_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_folderpermission`
--

LOCK TABLES `filer_folderpermission` WRITE;
/*!40000 ALTER TABLE `filer_folderpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_folderpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_image`
--

DROP TABLE IF EXISTS `filer_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_image` (
  `file_ptr_id` int(11) NOT NULL,
  `_height` int(11) DEFAULT NULL,
  `_width` int(11) DEFAULT NULL,
  `date_taken` datetime DEFAULT NULL,
  `default_alt_text` varchar(255) DEFAULT NULL,
  `default_caption` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `must_always_publish_author_credit` tinyint(1) NOT NULL,
  `must_always_publish_copyright` tinyint(1) NOT NULL,
  `subject_location` varchar(64) NOT NULL,
  PRIMARY KEY (`file_ptr_id`),
  CONSTRAINT `filer_image_file_ptr_id_1dde9ad32bce39a6_fk_filer_file_id` FOREIGN KEY (`file_ptr_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_image`
--

LOCK TABLES `filer_image` WRITE;
/*!40000 ALTER TABLE `filer_image` DISABLE KEYS */;
INSERT INTO `filer_image` VALUES (1,864,1900,'2016-12-12 11:18:41',NULL,NULL,NULL,0,0,''),(2,492,1900,'2016-12-12 11:18:46',NULL,NULL,NULL,0,0,''),(3,872,1900,'2016-12-12 11:18:46',NULL,NULL,NULL,0,0,''),(4,864,1900,'2016-12-12 11:18:46',NULL,NULL,NULL,0,0,''),(5,600,1900,'2016-12-12 11:18:47',NULL,NULL,NULL,0,0,''),(6,514,778,'2016-12-12 11:18:47',NULL,NULL,NULL,0,0,'');
/*!40000 ALTER TABLE `filer_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_thumbnailoption`
--

DROP TABLE IF EXISTS `filer_thumbnailoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_thumbnailoption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `crop` tinyint(1) NOT NULL,
  `upscale` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_thumbnailoption`
--

LOCK TABLES `filer_thumbnailoption` WRITE;
/*!40000 ALTER TABLE `filer_thumbnailoption` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_thumbnailoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus_cachekey`
--

DROP TABLE IF EXISTS `menus_cachekey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus_cachekey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) NOT NULL,
  `site` int(10) unsigned NOT NULL,
  `key` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus_cachekey`
--

LOCK TABLES `menus_cachekey` WRITE;
/*!40000 ALTER TABLE `menus_cachekey` DISABLE KEYS */;
INSERT INTO `menus_cachekey` VALUES (57,'en',1,'menu_cache_menu_nodes_en_1_1_user');
/*!40000 ALTER TABLE `menus_cachekey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reversion_revision`
--

DROP TABLE IF EXISTS `reversion_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reversion_revision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manager_slug` varchar(191) NOT NULL,
  `date_created` datetime NOT NULL,
  `comment` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reversion_revision_user_id_53d027e45b2ec55e_fk_auth_user_id` (`user_id`),
  KEY `reversion_revision_b16b0f06` (`manager_slug`),
  KEY `reversion_revision_c69e55a4` (`date_created`),
  CONSTRAINT `reversion_revision_user_id_53d027e45b2ec55e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reversion_revision`
--

LOCK TABLES `reversion_revision` WRITE;
/*!40000 ALTER TABLE `reversion_revision` DISABLE KEYS */;
INSERT INTO `reversion_revision` VALUES (1,'default','2016-12-12 13:15:51','Initial version of Person: \'osama abuomar\'.  (\'EN\' translation)',1),(2,'default','2016-12-12 13:16:19','Initial version.',1),(3,'default','2016-12-12 13:23:26','Initial version.',1),(4,'default','2016-12-12 13:23:48','Initial version.',1),(5,'default','2016-12-13 06:14:49','Changed lead_in and tags. Article: \'Ramps sustainable vape\' (\'EN\' translation)',1),(6,'default','2016-12-13 06:28:44','Changed featured_image, lead_in and tags. Article: \'Ramps sustainable vape\' (\'EN\' translation)',1),(7,'default','2016-12-13 06:28:57','Changed featured_image, lead_in and tags. Article: \'Ramps sustainable vape\' (\'EN\' translation)',1),(8,'default','2016-12-13 06:29:27','Added plugin #39: post-sample-image.jpg',1),(9,'default','2016-12-13 06:30:50','Changed lead_in and tags. Article: \'Four loko freegan wayfarers\' (\'EN\' translation)',1),(10,'default','2016-12-13 06:31:14','Changed lead_in and tags. Article: \'Four loko freegan wayfarers\' (\'EN\' translation)',1);
/*!40000 ALTER TABLE `reversion_revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reversion_version`
--

DROP TABLE IF EXISTS `reversion_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reversion_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` longtext NOT NULL,
  `object_id_int` int(11) DEFAULT NULL,
  `format` varchar(255) NOT NULL,
  `serialized_data` longtext NOT NULL,
  `object_repr` longtext NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `revision_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `revers_content_type_id_c01a11926d4c4a9_fk_django_content_type_id` (`content_type_id`),
  KEY `reversion_v_revision_id_48ec3744916a950_fk_reversion_revision_id` (`revision_id`),
  KEY `reversion_version_0c9ba3a3` (`object_id_int`),
  CONSTRAINT `reversion_v_revision_id_48ec3744916a950_fk_reversion_revision_id` FOREIGN KEY (`revision_id`) REFERENCES `reversion_revision` (`id`),
  CONSTRAINT `revers_content_type_id_c01a11926d4c4a9_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reversion_version`
--

LOCK TABLES `reversion_version` WRITE;
/*!40000 ALTER TABLE `reversion_version` DISABLE KEYS */;
INSERT INTO `reversion_version` VALUES (1,'1',1,'json','[{\"fields\": {\"website\": \"\", \"fax\": null, \"mobile\": \"\", \"phone\": \"\", \"visual\": null, \"user\": null, \"groups\": [], \"vcard_enabled\": true, \"email\": \"\"}, \"model\": \"aldryn_people.person\", \"pk\": 1}]','osama abuomar',88,1),(2,'1',1,'json','[{\"fields\": {\"function\": \"boss\", \"description\": \"\", \"master\": 1, \"language_code\": \"en\", \"slug\": \"osama-abuomar\", \"name\": \"osama abuomar\"}, \"model\": \"aldryn_people.persontranslation\", \"pk\": 1}]','en',87,1),(3,'1',1,'json','[{\"fields\": {\"pagination_pages_start\": 10, \"exclude_featured\": 0, \"placeholder_detail_bottom\": 12, \"create_authors\": true, \"namespace\": \"aldryn_newsblog_default\", \"pagination_pages_visible\": 4, \"non_permalink_handling\": 302, \"permalink_type\": \"slug\", \"placeholder_detail_footer\": 13, \"paginate_by\": 5, \"placeholder_list_footer\": 15, \"app_data\": \"{\\\"config\\\": {}}\", \"template_prefix\": null, \"placeholder_base_top\": 11, \"placeholder_base_sidebar\": 10, \"search_indexed\": true, \"placeholder_detail_top\": 14, \"type\": \"aldryn_newsblog.cms_appconfig.NewsBlogConfig\", \"placeholder_list_top\": 16}, \"model\": \"aldryn_newsblog.newsblogconfig\", \"pk\": 1}]','NewsBlog / aldryn_newsblog_default',74,2),(4,'1',1,'json','[{\"fields\": {\"is_featured\": false, \"author\": 2, \"related\": [], \"content\": 17, \"app_config\": 1, \"featured_image\": null, \"owner\": 1, \"publishing_date\": \"2016-12-12T13:16:19.145Z\", \"categories\": [], \"is_published\": false}, \"model\": \"aldryn_newsblog.article\", \"pk\": 1}]','Four loko freegan wayfarers',76,2),(5,'1',1,'json','[{\"fields\": {\"app_title\": \"News & Blog\", \"master\": 1, \"language_code\": \"en\"}, \"model\": \"aldryn_newsblog.newsblogconfigtranslation\", \"pk\": 1}]','en',73,2),(6,'10',10,'json','[{\"fields\": {\"slot\": \"newsblog_base_sidebar\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 10}]','newsblog_base_sidebar',1,2),(7,'11',11,'json','[{\"fields\": {\"slot\": \"newsblog_base_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 11}]','newsblog_base_top',1,2),(8,'12',12,'json','[{\"fields\": {\"slot\": \"newsblog_detail_bottom\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 12}]','newsblog_detail_bottom',1,2),(9,'13',13,'json','[{\"fields\": {\"slot\": \"newsblog_detail_footer\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 13}]','newsblog_detail_footer',1,2),(10,'14',14,'json','[{\"fields\": {\"slot\": \"newsblog_detail_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 14}]','newsblog_detail_top',1,2),(11,'29',29,'json','[{\"fields\": {\"body\": \"<p>Four loko freegan wayfarers, chillwave gentrify occupy green juice before they sold out viral selfies keytar tbh 3 wolf moon. Microdosing typewriter selfies snackwave mlkshk blue bottle. Waistcoat church-key marfa, la croix meggings unicorn tofu iPhone mixtape fam synth. Fanny pack aesthetic four loko pug, poke four dollar toast jianbing. Echo park tbh cronut, kombucha austin small batch normcore. Echo park tumblr raw denim twee, heirloom irony pickled +1 chambray trust fund wolf taxidermy etsy disrupt. DIY fap chambray street art fingerstache slow-carb waistcoat roof party, vaporware occupy.</p>\\n\\n<p>Viral la croix listicle jean shorts quinoa. Single-origin coffee poutine cronut beard, affogato lyft twee enamel pin fap humblebrag bicycle rights. Hashtag woke four dollar toast venmo, etsy pickled brunch letterpress kale chips cornhole ugh affogato celiac. Vice stumptown vegan tbh cardigan whatever, locavore before they sold out. Taxidermy lyft chia post-ironic cronut tote bag. Jean shorts health goth fashion axe subway tile. Raw denim selfies plaid etsy.</p>\\n\"}, \"model\": \"djangocms_text_ckeditor.text\", \"pk\": 29}]','Four loko freegan...',22,2),(12,'16',16,'json','[{\"fields\": {\"slot\": \"newsblog_list_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 16}]','newsblog_list_top',1,2),(13,'17',17,'json','[{\"fields\": {\"slot\": \"newsblog_article_content\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 17}]','newsblog_article_content',1,2),(14,'1',1,'json','[{\"fields\": {\"meta_description\": \"\", \"meta_title\": \"\", \"meta_keywords\": \"\", \"title\": \"Four loko freegan wayfarers\", \"search_data\": \"\", \"lead_in\": \"\", \"master\": 1, \"language_code\": \"en\", \"slug\": \"four-loko-freegan-wayfarers\"}, \"model\": \"aldryn_newsblog.articletranslation\", \"pk\": 1}]','en',75,2),(15,'15',15,'json','[{\"fields\": {\"slot\": \"newsblog_list_footer\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 15}]','newsblog_list_footer',1,2),(16,'29',29,'json','[{\"fields\": {\"changed_date\": \"2016-12-12T13:16:19Z\", \"language\": \"en\", \"parent\": null, \"numchild\": 0, \"creation_date\": \"2016-12-12T13:16:19Z\", \"depth\": 1, \"position\": 0, \"path\": \"0006\", \"placeholder\": 17, \"plugin_type\": \"TextPlugin\"}, \"model\": \"cms.cmsplugin\", \"pk\": 29}]','29',15,2),(17,'1',1,'json','[{\"fields\": {\"pagination_pages_start\": 10, \"exclude_featured\": 0, \"placeholder_detail_bottom\": 12, \"create_authors\": true, \"namespace\": \"aldryn_newsblog_default\", \"pagination_pages_visible\": 4, \"non_permalink_handling\": 302, \"permalink_type\": \"slug\", \"placeholder_detail_footer\": 13, \"paginate_by\": 5, \"placeholder_list_footer\": 15, \"app_data\": \"{\\\"config\\\": {}}\", \"template_prefix\": null, \"placeholder_base_top\": 11, \"placeholder_base_sidebar\": 10, \"search_indexed\": true, \"placeholder_detail_top\": 14, \"type\": \"aldryn_newsblog.cms_appconfig.NewsBlogConfig\", \"placeholder_list_top\": 16}, \"model\": \"aldryn_newsblog.newsblogconfig\", \"pk\": 1}]','NewsBlog / aldryn_newsblog_default',74,3),(18,'2',2,'json','[{\"fields\": {\"is_featured\": false, \"author\": 2, \"related\": [], \"content\": 18, \"app_config\": 1, \"featured_image\": null, \"owner\": 1, \"publishing_date\": \"2016-12-12T13:23:26.754Z\", \"categories\": [], \"is_published\": false}, \"model\": \"aldryn_newsblog.article\", \"pk\": 2}]','Four loko freegan wayfarers',76,3),(19,'1',1,'json','[{\"fields\": {\"app_title\": \"News & Blog\", \"master\": 1, \"language_code\": \"en\"}, \"model\": \"aldryn_newsblog.newsblogconfigtranslation\", \"pk\": 1}]','en',73,3),(20,'10',10,'json','[{\"fields\": {\"slot\": \"newsblog_base_sidebar\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 10}]','newsblog_base_sidebar',1,3),(21,'11',11,'json','[{\"fields\": {\"slot\": \"newsblog_base_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 11}]','newsblog_base_top',1,3),(22,'12',12,'json','[{\"fields\": {\"slot\": \"newsblog_detail_bottom\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 12}]','newsblog_detail_bottom',1,3),(23,'13',13,'json','[{\"fields\": {\"slot\": \"newsblog_detail_footer\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 13}]','newsblog_detail_footer',1,3),(24,'14',14,'json','[{\"fields\": {\"slot\": \"newsblog_detail_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 14}]','newsblog_detail_top',1,3),(25,'15',15,'json','[{\"fields\": {\"slot\": \"newsblog_list_footer\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 15}]','newsblog_list_footer',1,3),(26,'16',16,'json','[{\"fields\": {\"slot\": \"newsblog_list_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 16}]','newsblog_list_top',1,3),(27,'18',18,'json','[{\"fields\": {\"slot\": \"newsblog_article_content\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 18}]','newsblog_article_content',1,3),(28,'30',30,'json','[{\"fields\": {\"changed_date\": \"2016-12-12T13:23:26Z\", \"language\": \"en\", \"parent\": null, \"numchild\": 0, \"creation_date\": \"2016-12-12T13:23:26Z\", \"depth\": 1, \"position\": 0, \"path\": \"0007\", \"placeholder\": 18, \"plugin_type\": \"TextPlugin\"}, \"model\": \"cms.cmsplugin\", \"pk\": 30}]','30',15,3),(29,'2',2,'json','[{\"fields\": {\"meta_description\": \"\", \"meta_title\": \"\", \"meta_keywords\": \"\", \"title\": \"Four loko freegan wayfarers\", \"search_data\": \"\", \"lead_in\": \"\", \"master\": 2, \"language_code\": \"en\", \"slug\": \"four-loko-freegan-wayfarers-1\"}, \"model\": \"aldryn_newsblog.articletranslation\", \"pk\": 2}]','en',75,3),(30,'30',30,'json','[{\"fields\": {\"body\": \"<p>Four loko freegan wayfarers, chillwave gentrify occupy green juice before they sold out viral selfies keytar tbh 3 wolf moon. Microdosing typewriter selfies snackwave mlkshk blue bottle. Waistcoat church-key marfa, la croix meggings unicorn tofu iPhone mixtape fam synth. Fanny pack aesthetic four loko pug, poke four dollar toast jianbing. Echo park tbh cronut, kombucha austin small batch normcore. Echo park tumblr raw denim twee, heirloom irony pickled +1 chambray trust fund wolf taxidermy etsy disrupt. DIY fap chambray street art fingerstache slow-carb waistcoat roof party, vaporware occupy.</p>\\n\\n<p>Viral la croix listicle jean shorts quinoa. Single-origin coffee poutine cronut beard, affogato lyft twee enamel pin fap humblebrag bicycle rights. Hashtag woke four dollar toast venmo, etsy pickled brunch letterpress kale chips cornhole ugh affogato celiac. Vice stumptown vegan tbh cardigan whatever, locavore before they sold out. Taxidermy lyft chia post-ironic cronut tote bag. Jean shorts health goth fashion axe subway tile. Raw denim selfies plaid etsy.</p>\\n\\n<p>Raclette flannel succulents, stumptown iPhone locavore meditation hell of kickstarter. Occupy hashtag cray pinterest flannel. Before they sold out bushwick enamel pin, kinfolk synth offal marfa master cleanse actually. Vexillologist chillwave mumblecore, typewriter 8-bit single-origin coffee gochujang shoreditch lumbersexual beard pitchfork master cleanse actually drinking vinegar. Blog kale chips swag synth normcore YOLO. Echo park chambray vaporware, slow-carb glossier snackwave tumeric pop-up plaid. Leggings edison bulb paleo fap literally, gochujang pitchfork kogi wolf tumblr.</p>\\n\"}, \"model\": \"djangocms_text_ckeditor.text\", \"pk\": 30}]','Four loko freegan...',22,3),(31,'1',1,'json','[{\"fields\": {\"pagination_pages_start\": 10, \"exclude_featured\": 0, \"placeholder_detail_bottom\": 12, \"create_authors\": true, \"namespace\": \"aldryn_newsblog_default\", \"pagination_pages_visible\": 4, \"non_permalink_handling\": 302, \"permalink_type\": \"slug\", \"placeholder_detail_footer\": 13, \"paginate_by\": 5, \"placeholder_list_footer\": 15, \"app_data\": \"{\\\"config\\\": {}}\", \"template_prefix\": null, \"placeholder_base_top\": 11, \"placeholder_base_sidebar\": 10, \"search_indexed\": true, \"placeholder_detail_top\": 14, \"type\": \"aldryn_newsblog.cms_appconfig.NewsBlogConfig\", \"placeholder_list_top\": 16}, \"model\": \"aldryn_newsblog.newsblogconfig\", \"pk\": 1}]','NewsBlog / aldryn_newsblog_default',74,4),(32,'3',3,'json','[{\"fields\": {\"is_featured\": false, \"author\": 2, \"related\": [], \"content\": 21, \"app_config\": 1, \"featured_image\": null, \"owner\": 1, \"publishing_date\": \"2016-12-12T13:23:48.751Z\", \"categories\": [], \"is_published\": false}, \"model\": \"aldryn_newsblog.article\", \"pk\": 3}]','Ramps sustainable vape',76,4),(33,'1',1,'json','[{\"fields\": {\"app_title\": \"News & Blog\", \"master\": 1, \"language_code\": \"en\"}, \"model\": \"aldryn_newsblog.newsblogconfigtranslation\", \"pk\": 1}]','en',73,4),(34,'10',10,'json','[{\"fields\": {\"slot\": \"newsblog_base_sidebar\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 10}]','newsblog_base_sidebar',1,4),(35,'11',11,'json','[{\"fields\": {\"slot\": \"newsblog_base_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 11}]','newsblog_base_top',1,4),(36,'12',12,'json','[{\"fields\": {\"slot\": \"newsblog_detail_bottom\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 12}]','newsblog_detail_bottom',1,4),(37,'13',13,'json','[{\"fields\": {\"slot\": \"newsblog_detail_footer\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 13}]','newsblog_detail_footer',1,4),(38,'14',14,'json','[{\"fields\": {\"slot\": \"newsblog_detail_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 14}]','newsblog_detail_top',1,4),(39,'15',15,'json','[{\"fields\": {\"slot\": \"newsblog_list_footer\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 15}]','newsblog_list_footer',1,4),(40,'16',16,'json','[{\"fields\": {\"slot\": \"newsblog_list_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 16}]','newsblog_list_top',1,4),(41,'3',3,'json','[{\"fields\": {\"meta_description\": \"\", \"meta_title\": \"\", \"meta_keywords\": \"\", \"title\": \"Ramps sustainable vape\", \"search_data\": \"\", \"lead_in\": \"\", \"master\": 3, \"language_code\": \"en\", \"slug\": \"ramps-sustainable-vape\"}, \"model\": \"aldryn_newsblog.articletranslation\", \"pk\": 3}]','en',75,4),(42,'21',21,'json','[{\"fields\": {\"slot\": \"newsblog_article_content\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 21}]','newsblog_article_content',1,4),(43,'31',31,'json','[{\"fields\": {\"changed_date\": \"2016-12-12T13:23:48Z\", \"language\": \"en\", \"parent\": null, \"numchild\": 0, \"creation_date\": \"2016-12-12T13:23:48Z\", \"depth\": 1, \"position\": 0, \"path\": \"0008\", \"placeholder\": 21, \"plugin_type\": \"TextPlugin\"}, \"model\": \"cms.cmsplugin\", \"pk\": 31}]','31',15,4),(44,'31',31,'json','[{\"fields\": {\"body\": \"<p>Raclette flannel succulents, stumptown iPhone locavore meditation hell of kickstarter. Occupy hashtag cray pinterest flannel. Before they sold out bushwick enamel pin, kinfolk synth offal marfa master cleanse actually. Vexillologist chillwave mumblecore, typewriter 8-bit single-origin coffee gochujang shoreditch lumbersexual beard pitchfork master cleanse actually drinking vinegar. Blog kale chips swag synth normcore YOLO. Echo park chambray vaporware, slow-carb glossier snackwave tumeric pop-up plaid. Leggings edison bulb paleo fap literally, gochujang pitchfork kogi wolf tumblr.</p>\\n\\n<p>Ramps sustainable vape mixtape aesthetic, farm-to-table la croix yuccie tbh edison bulb hella. IPhone four loko pok pok poke squid. Chambray brooklyn quinoa tacos, jianbing asymmetrical pug cred kombucha artisan brunch beard. Put a bird on it blue bottle pork belly photo booth. Sriracha single-origin coffee franzen four dollar toast hot chicken bicycle rights. Blog roof party narwhal kickstarter schlitz, normcore master cleanse quinoa four loko pork belly direct trade meditation offal PBR&amp;B. Gentrify activated charcoal selvage, vice farm-to-table biodiesel skateboard.</p>\\n\"}, \"model\": \"djangocms_text_ckeditor.text\", \"pk\": 31}]','Raclette flannel succulents,...',22,4),(45,'1',1,'json','[{\"fields\": {\"pagination_pages_start\": 10, \"exclude_featured\": 0, \"placeholder_detail_bottom\": 12, \"create_authors\": true, \"namespace\": \"aldryn_newsblog_default\", \"pagination_pages_visible\": 4, \"non_permalink_handling\": 302, \"permalink_type\": \"slug\", \"placeholder_detail_footer\": 13, \"paginate_by\": 5, \"placeholder_list_footer\": 15, \"app_data\": \"{\\\"config\\\": {}}\", \"template_prefix\": null, \"placeholder_base_top\": 11, \"placeholder_base_sidebar\": 10, \"search_indexed\": true, \"placeholder_detail_top\": 14, \"type\": \"aldryn_newsblog.cms_appconfig.NewsBlogConfig\", \"placeholder_list_top\": 16}, \"model\": \"aldryn_newsblog.newsblogconfig\", \"pk\": 1}]','NewsBlog / aldryn_newsblog_default',74,5),(46,'3',3,'json','[{\"fields\": {\"meta_description\": \"\", \"meta_title\": \"\", \"meta_keywords\": \"\", \"title\": \"Ramps sustainable vape\", \"search_data\": \"\", \"lead_in\": \"<p>Vexillologist chillwave mumblecore, typewriter 8-bit single-origin coffee gochujang shoreditch lumbersexual beard pitchfork master cleanse actually drinking vinegar. Blog kale chips swag synth normcore YOLO. Echo park</p>\\n\", \"master\": 3, \"language_code\": \"en\", \"slug\": \"ramps-sustainable-vape\"}, \"model\": \"aldryn_newsblog.articletranslation\", \"pk\": 3}]','en',75,5),(47,'1',1,'json','[{\"fields\": {\"app_title\": \"News & Blog\", \"master\": 1, \"language_code\": \"en\"}, \"model\": \"aldryn_newsblog.newsblogconfigtranslation\", \"pk\": 1}]','en',73,5),(48,'10',10,'json','[{\"fields\": {\"slot\": \"newsblog_base_sidebar\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 10}]','newsblog_base_sidebar',1,5),(49,'11',11,'json','[{\"fields\": {\"slot\": \"newsblog_base_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 11}]','newsblog_base_top',1,5),(50,'12',12,'json','[{\"fields\": {\"slot\": \"newsblog_detail_bottom\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 12}]','newsblog_detail_bottom',1,5),(51,'13',13,'json','[{\"fields\": {\"slot\": \"newsblog_detail_footer\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 13}]','newsblog_detail_footer',1,5),(52,'14',14,'json','[{\"fields\": {\"slot\": \"newsblog_detail_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 14}]','newsblog_detail_top',1,5),(53,'15',15,'json','[{\"fields\": {\"slot\": \"newsblog_list_footer\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 15}]','newsblog_list_footer',1,5),(54,'16',16,'json','[{\"fields\": {\"slot\": \"newsblog_list_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 16}]','newsblog_list_top',1,5),(55,'3',3,'json','[{\"fields\": {\"is_featured\": false, \"author\": 2, \"related\": [], \"content\": 21, \"app_config\": 1, \"featured_image\": null, \"owner\": 1, \"publishing_date\": \"2016-12-12T13:23:48Z\", \"categories\": [], \"is_published\": false}, \"model\": \"aldryn_newsblog.article\", \"pk\": 3}]','Ramps sustainable vape',76,5),(56,'21',21,'json','[{\"fields\": {\"slot\": \"newsblog_article_content\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 21}]','newsblog_article_content',1,5),(57,'31',31,'json','[{\"fields\": {\"changed_date\": \"2016-12-12T13:23:48Z\", \"language\": \"en\", \"parent\": null, \"numchild\": 0, \"creation_date\": \"2016-12-12T13:23:48Z\", \"depth\": 1, \"position\": 0, \"path\": \"0008\", \"placeholder\": 21, \"plugin_type\": \"TextPlugin\"}, \"model\": \"cms.cmsplugin\", \"pk\": 31}]','31',15,5),(58,'31',31,'json','[{\"fields\": {\"body\": \"<p>Raclette flannel succulents, stumptown iPhone locavore meditation hell of kickstarter. Occupy hashtag cray pinterest flannel. Before they sold out bushwick enamel pin, kinfolk synth offal marfa master cleanse actually. Vexillologist chillwave mumblecore, typewriter 8-bit single-origin coffee gochujang shoreditch lumbersexual beard pitchfork master cleanse actually drinking vinegar. Blog kale chips swag synth normcore YOLO. Echo park chambray vaporware, slow-carb glossier snackwave tumeric pop-up plaid. Leggings edison bulb paleo fap literally, gochujang pitchfork kogi wolf tumblr.</p>\\n\\n<p>Ramps sustainable vape mixtape aesthetic, farm-to-table la croix yuccie tbh edison bulb hella. IPhone four loko pok pok poke squid. Chambray brooklyn quinoa tacos, jianbing asymmetrical pug cred kombucha artisan brunch beard. Put a bird on it blue bottle pork belly photo booth. Sriracha single-origin coffee franzen four dollar toast hot chicken bicycle rights. Blog roof party narwhal kickstarter schlitz, normcore master cleanse quinoa four loko pork belly direct trade meditation offal PBR&amp;B. Gentrify activated charcoal selvage, vice farm-to-table biodiesel skateboard.</p>\\n\"}, \"model\": \"djangocms_text_ckeditor.text\", \"pk\": 31}]','Raclette flannel succulents,...',22,5),(59,'1',1,'json','[{\"fields\": {\"pagination_pages_start\": 10, \"exclude_featured\": 0, \"placeholder_detail_bottom\": 12, \"create_authors\": true, \"namespace\": \"aldryn_newsblog_default\", \"pagination_pages_visible\": 4, \"non_permalink_handling\": 302, \"permalink_type\": \"slug\", \"placeholder_detail_footer\": 13, \"paginate_by\": 5, \"placeholder_list_footer\": 15, \"app_data\": \"{\\\"config\\\": {}}\", \"template_prefix\": null, \"placeholder_base_top\": 11, \"placeholder_base_sidebar\": 10, \"search_indexed\": true, \"placeholder_detail_top\": 14, \"type\": \"aldryn_newsblog.cms_appconfig.NewsBlogConfig\", \"placeholder_list_top\": 16}, \"model\": \"aldryn_newsblog.newsblogconfig\", \"pk\": 1}]','NewsBlog / aldryn_newsblog_default',74,6),(60,'3',3,'json','[{\"fields\": {\"is_featured\": false, \"author\": 2, \"related\": [], \"content\": 21, \"app_config\": 1, \"featured_image\": 6, \"owner\": 1, \"publishing_date\": \"2016-12-12T13:23:48Z\", \"categories\": [], \"is_published\": false}, \"model\": \"aldryn_newsblog.article\", \"pk\": 3}]','Ramps sustainable vape',76,6),(61,'1',1,'json','[{\"fields\": {\"app_title\": \"News & Blog\", \"master\": 1, \"language_code\": \"en\"}, \"model\": \"aldryn_newsblog.newsblogconfigtranslation\", \"pk\": 1}]','en',73,6),(62,'10',10,'json','[{\"fields\": {\"slot\": \"newsblog_base_sidebar\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 10}]','newsblog_base_sidebar',1,6),(63,'11',11,'json','[{\"fields\": {\"slot\": \"newsblog_base_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 11}]','newsblog_base_top',1,6),(64,'12',12,'json','[{\"fields\": {\"slot\": \"newsblog_detail_bottom\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 12}]','newsblog_detail_bottom',1,6),(65,'13',13,'json','[{\"fields\": {\"slot\": \"newsblog_detail_footer\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 13}]','newsblog_detail_footer',1,6),(66,'14',14,'json','[{\"fields\": {\"slot\": \"newsblog_detail_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 14}]','newsblog_detail_top',1,6),(67,'15',15,'json','[{\"fields\": {\"slot\": \"newsblog_list_footer\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 15}]','newsblog_list_footer',1,6),(68,'16',16,'json','[{\"fields\": {\"slot\": \"newsblog_list_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 16}]','newsblog_list_top',1,6),(69,'3',3,'json','[{\"fields\": {\"meta_description\": \"\", \"meta_title\": \"\", \"meta_keywords\": \"\", \"title\": \"Ramps sustainable vape\", \"search_data\": \"\", \"lead_in\": \"<p>Vexillologist chillwave mumblecore, typewriter 8-bit single-origin coffee gochujang shoreditch lumbersexual beard pitchfork master cleanse actually drinking vinegar. Blog kale chips swag synth normcore YOLO. Echo park</p>\\n\", \"master\": 3, \"language_code\": \"en\", \"slug\": \"ramps-sustainable-vape\"}, \"model\": \"aldryn_newsblog.articletranslation\", \"pk\": 3}]','en',75,6),(70,'21',21,'json','[{\"fields\": {\"slot\": \"newsblog_article_content\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 21}]','newsblog_article_content',1,6),(71,'31',31,'json','[{\"fields\": {\"changed_date\": \"2016-12-12T13:23:48Z\", \"language\": \"en\", \"parent\": null, \"numchild\": 0, \"creation_date\": \"2016-12-12T13:23:48Z\", \"depth\": 1, \"position\": 0, \"path\": \"0008\", \"placeholder\": 21, \"plugin_type\": \"TextPlugin\"}, \"model\": \"cms.cmsplugin\", \"pk\": 31}]','31',15,6),(72,'31',31,'json','[{\"fields\": {\"body\": \"<p>Raclette flannel succulents, stumptown iPhone locavore meditation hell of kickstarter. Occupy hashtag cray pinterest flannel. Before they sold out bushwick enamel pin, kinfolk synth offal marfa master cleanse actually. Vexillologist chillwave mumblecore, typewriter 8-bit single-origin coffee gochujang shoreditch lumbersexual beard pitchfork master cleanse actually drinking vinegar. Blog kale chips swag synth normcore YOLO. Echo park chambray vaporware, slow-carb glossier snackwave tumeric pop-up plaid. Leggings edison bulb paleo fap literally, gochujang pitchfork kogi wolf tumblr.</p>\\n\\n<p>Ramps sustainable vape mixtape aesthetic, farm-to-table la croix yuccie tbh edison bulb hella. IPhone four loko pok pok poke squid. Chambray brooklyn quinoa tacos, jianbing asymmetrical pug cred kombucha artisan brunch beard. Put a bird on it blue bottle pork belly photo booth. Sriracha single-origin coffee franzen four dollar toast hot chicken bicycle rights. Blog roof party narwhal kickstarter schlitz, normcore master cleanse quinoa four loko pork belly direct trade meditation offal PBR&amp;B. Gentrify activated charcoal selvage, vice farm-to-table biodiesel skateboard.</p>\\n\"}, \"model\": \"djangocms_text_ckeditor.text\", \"pk\": 31}]','Raclette flannel succulents,...',22,6),(73,'1',1,'json','[{\"fields\": {\"pagination_pages_start\": 10, \"exclude_featured\": 0, \"placeholder_detail_bottom\": 12, \"create_authors\": true, \"namespace\": \"aldryn_newsblog_default\", \"pagination_pages_visible\": 4, \"non_permalink_handling\": 302, \"permalink_type\": \"slug\", \"placeholder_detail_footer\": 13, \"paginate_by\": 5, \"placeholder_list_footer\": 15, \"app_data\": \"{\\\"config\\\": {}}\", \"template_prefix\": null, \"placeholder_base_top\": 11, \"placeholder_base_sidebar\": 10, \"search_indexed\": true, \"placeholder_detail_top\": 14, \"type\": \"aldryn_newsblog.cms_appconfig.NewsBlogConfig\", \"placeholder_list_top\": 16}, \"model\": \"aldryn_newsblog.newsblogconfig\", \"pk\": 1}]','NewsBlog / aldryn_newsblog_default',74,7),(74,'3',3,'json','[{\"fields\": {\"is_featured\": false, \"author\": 2, \"related\": [], \"content\": 21, \"app_config\": 1, \"featured_image\": 3, \"owner\": 1, \"publishing_date\": \"2016-12-12T13:23:48Z\", \"categories\": [], \"is_published\": false}, \"model\": \"aldryn_newsblog.article\", \"pk\": 3}]','Ramps sustainable vape',76,7),(75,'1',1,'json','[{\"fields\": {\"app_title\": \"News & Blog\", \"master\": 1, \"language_code\": \"en\"}, \"model\": \"aldryn_newsblog.newsblogconfigtranslation\", \"pk\": 1}]','en',73,7),(76,'10',10,'json','[{\"fields\": {\"slot\": \"newsblog_base_sidebar\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 10}]','newsblog_base_sidebar',1,7),(77,'11',11,'json','[{\"fields\": {\"slot\": \"newsblog_base_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 11}]','newsblog_base_top',1,7),(78,'12',12,'json','[{\"fields\": {\"slot\": \"newsblog_detail_bottom\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 12}]','newsblog_detail_bottom',1,7),(79,'13',13,'json','[{\"fields\": {\"slot\": \"newsblog_detail_footer\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 13}]','newsblog_detail_footer',1,7),(80,'14',14,'json','[{\"fields\": {\"slot\": \"newsblog_detail_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 14}]','newsblog_detail_top',1,7),(81,'15',15,'json','[{\"fields\": {\"slot\": \"newsblog_list_footer\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 15}]','newsblog_list_footer',1,7),(82,'16',16,'json','[{\"fields\": {\"slot\": \"newsblog_list_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 16}]','newsblog_list_top',1,7),(83,'3',3,'json','[{\"fields\": {\"meta_description\": \"\", \"meta_title\": \"\", \"meta_keywords\": \"\", \"title\": \"Ramps sustainable vape\", \"search_data\": \"\", \"lead_in\": \"<p>Vexillologist chillwave mumblecore, typewriter 8-bit single-origin coffee gochujang shoreditch lumbersexual beard pitchfork master cleanse actually drinking vinegar. Blog kale chips swag synth normcore YOLO. Echo park</p>\\n\", \"master\": 3, \"language_code\": \"en\", \"slug\": \"ramps-sustainable-vape\"}, \"model\": \"aldryn_newsblog.articletranslation\", \"pk\": 3}]','en',75,7),(84,'21',21,'json','[{\"fields\": {\"slot\": \"newsblog_article_content\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 21}]','newsblog_article_content',1,7),(85,'31',31,'json','[{\"fields\": {\"changed_date\": \"2016-12-12T13:23:48Z\", \"language\": \"en\", \"parent\": null, \"numchild\": 0, \"creation_date\": \"2016-12-12T13:23:48Z\", \"depth\": 1, \"position\": 0, \"path\": \"0008\", \"placeholder\": 21, \"plugin_type\": \"TextPlugin\"}, \"model\": \"cms.cmsplugin\", \"pk\": 31}]','31',15,7),(86,'31',31,'json','[{\"fields\": {\"body\": \"<p>Raclette flannel succulents, stumptown iPhone locavore meditation hell of kickstarter. Occupy hashtag cray pinterest flannel. Before they sold out bushwick enamel pin, kinfolk synth offal marfa master cleanse actually. Vexillologist chillwave mumblecore, typewriter 8-bit single-origin coffee gochujang shoreditch lumbersexual beard pitchfork master cleanse actually drinking vinegar. Blog kale chips swag synth normcore YOLO. Echo park chambray vaporware, slow-carb glossier snackwave tumeric pop-up plaid. Leggings edison bulb paleo fap literally, gochujang pitchfork kogi wolf tumblr.</p>\\n\\n<p>Ramps sustainable vape mixtape aesthetic, farm-to-table la croix yuccie tbh edison bulb hella. IPhone four loko pok pok poke squid. Chambray brooklyn quinoa tacos, jianbing asymmetrical pug cred kombucha artisan brunch beard. Put a bird on it blue bottle pork belly photo booth. Sriracha single-origin coffee franzen four dollar toast hot chicken bicycle rights. Blog roof party narwhal kickstarter schlitz, normcore master cleanse quinoa four loko pork belly direct trade meditation offal PBR&amp;B. Gentrify activated charcoal selvage, vice farm-to-table biodiesel skateboard.</p>\\n\"}, \"model\": \"djangocms_text_ckeditor.text\", \"pk\": 31}]','Raclette flannel succulents,...',22,7),(87,'1',1,'json','[{\"fields\": {\"pagination_pages_start\": 10, \"exclude_featured\": 0, \"placeholder_detail_bottom\": 12, \"create_authors\": true, \"namespace\": \"aldryn_newsblog_default\", \"pagination_pages_visible\": 4, \"non_permalink_handling\": 302, \"permalink_type\": \"slug\", \"placeholder_detail_footer\": 13, \"paginate_by\": 5, \"placeholder_list_footer\": 15, \"app_data\": \"{\\\"config\\\": {}}\", \"template_prefix\": null, \"placeholder_base_top\": 11, \"placeholder_base_sidebar\": 10, \"search_indexed\": true, \"placeholder_detail_top\": 14, \"type\": \"aldryn_newsblog.cms_appconfig.NewsBlogConfig\", \"placeholder_list_top\": 16}, \"model\": \"aldryn_newsblog.newsblogconfig\", \"pk\": 1}]','NewsBlog / aldryn_newsblog_default',74,8),(88,'3',3,'json','[{\"fields\": {\"is_featured\": false, \"author\": 2, \"related\": [], \"content\": 21, \"app_config\": 1, \"featured_image\": 3, \"owner\": 1, \"publishing_date\": \"2016-12-12T13:23:48Z\", \"categories\": [], \"is_published\": false}, \"model\": \"aldryn_newsblog.article\", \"pk\": 3}]','Ramps sustainable vape',76,8),(89,'1',1,'json','[{\"fields\": {\"app_title\": \"News & Blog\", \"master\": 1, \"language_code\": \"en\"}, \"model\": \"aldryn_newsblog.newsblogconfigtranslation\", \"pk\": 1}]','en',73,8),(90,'16',16,'json','[{\"fields\": {\"slot\": \"newsblog_list_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 16}]','newsblog_list_top',1,8),(91,'39',39,'json','[{\"fields\": {\"changed_date\": \"2016-12-13T06:29:27Z\", \"language\": \"en\", \"parent\": null, \"numchild\": 0, \"creation_date\": \"2016-12-13T06:29:27Z\", \"depth\": 1, \"position\": 1, \"path\": \"000B\", \"placeholder\": 21, \"plugin_type\": \"Bootstrap3ImageCMSPlugin\"}, \"model\": \"cms.cmsplugin\", \"pk\": 39}]','39',15,8),(92,'10',10,'json','[{\"fields\": {\"slot\": \"newsblog_base_sidebar\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 10}]','newsblog_base_sidebar',1,8),(93,'39',39,'json','[{\"fields\": {\"title\": \"\", \"use_original_image\": false, \"img_responsive\": true, \"override_height\": null, \"shape\": \"\", \"override_width\": null, \"file\": 6, \"aspect_ratio\": \"\", \"alt\": \"\", \"classes\": \"\", \"thumbnail\": false}, \"model\": \"aldryn_bootstrap3.boostrap3imageplugin\", \"pk\": 39}]','post-sample-image.jpg',55,8),(94,'12',12,'json','[{\"fields\": {\"slot\": \"newsblog_detail_bottom\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 12}]','newsblog_detail_bottom',1,8),(95,'13',13,'json','[{\"fields\": {\"slot\": \"newsblog_detail_footer\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 13}]','newsblog_detail_footer',1,8),(96,'14',14,'json','[{\"fields\": {\"slot\": \"newsblog_detail_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 14}]','newsblog_detail_top',1,8),(97,'15',15,'json','[{\"fields\": {\"slot\": \"newsblog_list_footer\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 15}]','newsblog_list_footer',1,8),(98,'11',11,'json','[{\"fields\": {\"slot\": \"newsblog_base_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 11}]','newsblog_base_top',1,8),(99,'3',3,'json','[{\"fields\": {\"meta_description\": \"\", \"meta_title\": \"\", \"meta_keywords\": \"\", \"title\": \"Ramps sustainable vape\", \"search_data\": \"\", \"lead_in\": \"<p>Vexillologist chillwave mumblecore, typewriter 8-bit single-origin coffee gochujang shoreditch lumbersexual beard pitchfork master cleanse actually drinking vinegar. Blog kale chips swag synth normcore YOLO. Echo park</p>\\n\", \"master\": 3, \"language_code\": \"en\", \"slug\": \"ramps-sustainable-vape\"}, \"model\": \"aldryn_newsblog.articletranslation\", \"pk\": 3}]','en',75,8),(100,'21',21,'json','[{\"fields\": {\"slot\": \"newsblog_article_content\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 21}]','newsblog_article_content',1,8),(101,'31',31,'json','[{\"fields\": {\"changed_date\": \"2016-12-12T13:23:48Z\", \"language\": \"en\", \"parent\": null, \"numchild\": 0, \"creation_date\": \"2016-12-12T13:23:48Z\", \"depth\": 1, \"position\": 0, \"path\": \"0008\", \"placeholder\": 21, \"plugin_type\": \"TextPlugin\"}, \"model\": \"cms.cmsplugin\", \"pk\": 31}]','31',15,8),(102,'31',31,'json','[{\"fields\": {\"body\": \"<p>Raclette flannel succulents, stumptown iPhone locavore meditation hell of kickstarter. Occupy hashtag cray pinterest flannel. Before they sold out bushwick enamel pin, kinfolk synth offal marfa master cleanse actually. Vexillologist chillwave mumblecore, typewriter 8-bit single-origin coffee gochujang shoreditch lumbersexual beard pitchfork master cleanse actually drinking vinegar. Blog kale chips swag synth normcore YOLO. Echo park chambray vaporware, slow-carb glossier snackwave tumeric pop-up plaid. Leggings edison bulb paleo fap literally, gochujang pitchfork kogi wolf tumblr.</p>\\n\\n<p>Ramps sustainable vape mixtape aesthetic, farm-to-table la croix yuccie tbh edison bulb hella. IPhone four loko pok pok poke squid. Chambray brooklyn quinoa tacos, jianbing asymmetrical pug cred kombucha artisan brunch beard. Put a bird on it blue bottle pork belly photo booth. Sriracha single-origin coffee franzen four dollar toast hot chicken bicycle rights. Blog roof party narwhal kickstarter schlitz, normcore master cleanse quinoa four loko pork belly direct trade meditation offal PBR&amp;B. Gentrify activated charcoal selvage, vice farm-to-table biodiesel skateboard.</p>\\n\"}, \"model\": \"djangocms_text_ckeditor.text\", \"pk\": 31}]','Raclette flannel succulents,...',22,8),(103,'1',1,'json','[{\"fields\": {\"pagination_pages_start\": 10, \"exclude_featured\": 0, \"placeholder_detail_bottom\": 12, \"create_authors\": true, \"namespace\": \"aldryn_newsblog_default\", \"pagination_pages_visible\": 4, \"non_permalink_handling\": 302, \"permalink_type\": \"slug\", \"placeholder_detail_footer\": 13, \"paginate_by\": 5, \"placeholder_list_footer\": 15, \"app_data\": \"{\\\"config\\\": {}}\", \"template_prefix\": null, \"placeholder_base_top\": 11, \"placeholder_base_sidebar\": 10, \"search_indexed\": true, \"placeholder_detail_top\": 14, \"type\": \"aldryn_newsblog.cms_appconfig.NewsBlogConfig\", \"placeholder_list_top\": 16}, \"model\": \"aldryn_newsblog.newsblogconfig\", \"pk\": 1}]','NewsBlog / aldryn_newsblog_default',74,9),(104,'2',2,'json','[{\"fields\": {\"meta_description\": \"\", \"meta_title\": \"\", \"meta_keywords\": \"\", \"title\": \"Four loko freegan wayfarers\", \"search_data\": \"\", \"lead_in\": \"<p>Vexillologist chillwave mumblecore, typewriter 8-bit single-origin coffee gochujang shoreditch lumbersexual beard pitchfork master cleanse actually drinking vinegar. Blog kale chips swag synth normcore</p>\\n\", \"master\": 2, \"language_code\": \"en\", \"slug\": \"four-loko-freegan-wayfarers-1\"}, \"model\": \"aldryn_newsblog.articletranslation\", \"pk\": 2}]','en',75,9),(105,'1',1,'json','[{\"fields\": {\"app_title\": \"News & Blog\", \"master\": 1, \"language_code\": \"en\"}, \"model\": \"aldryn_newsblog.newsblogconfigtranslation\", \"pk\": 1}]','en',73,9),(106,'10',10,'json','[{\"fields\": {\"slot\": \"newsblog_base_sidebar\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 10}]','newsblog_base_sidebar',1,9),(107,'11',11,'json','[{\"fields\": {\"slot\": \"newsblog_base_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 11}]','newsblog_base_top',1,9),(108,'12',12,'json','[{\"fields\": {\"slot\": \"newsblog_detail_bottom\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 12}]','newsblog_detail_bottom',1,9),(109,'2',2,'json','[{\"fields\": {\"is_featured\": false, \"author\": 2, \"related\": [], \"content\": 18, \"app_config\": 1, \"featured_image\": null, \"owner\": 1, \"publishing_date\": \"2016-12-12T13:23:26Z\", \"categories\": [], \"is_published\": false}, \"model\": \"aldryn_newsblog.article\", \"pk\": 2}]','Four loko freegan wayfarers',76,9),(110,'14',14,'json','[{\"fields\": {\"slot\": \"newsblog_detail_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 14}]','newsblog_detail_top',1,9),(111,'13',13,'json','[{\"fields\": {\"slot\": \"newsblog_detail_footer\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 13}]','newsblog_detail_footer',1,9),(112,'16',16,'json','[{\"fields\": {\"slot\": \"newsblog_list_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 16}]','newsblog_list_top',1,9),(113,'18',18,'json','[{\"fields\": {\"slot\": \"newsblog_article_content\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 18}]','newsblog_article_content',1,9),(114,'30',30,'json','[{\"fields\": {\"changed_date\": \"2016-12-12T13:23:26Z\", \"language\": \"en\", \"parent\": null, \"numchild\": 0, \"creation_date\": \"2016-12-12T13:23:26Z\", \"depth\": 1, \"position\": 0, \"path\": \"0007\", \"placeholder\": 18, \"plugin_type\": \"TextPlugin\"}, \"model\": \"cms.cmsplugin\", \"pk\": 30}]','30',15,9),(115,'15',15,'json','[{\"fields\": {\"slot\": \"newsblog_list_footer\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 15}]','newsblog_list_footer',1,9),(116,'30',30,'json','[{\"fields\": {\"body\": \"<p>Four loko freegan wayfarers, chillwave gentrify occupy green juice before they sold out viral selfies keytar tbh 3 wolf moon. Microdosing typewriter selfies snackwave mlkshk blue bottle. Waistcoat church-key marfa, la croix meggings unicorn tofu iPhone mixtape fam synth. Fanny pack aesthetic four loko pug, poke four dollar toast jianbing. Echo park tbh cronut, kombucha austin small batch normcore. Echo park tumblr raw denim twee, heirloom irony pickled +1 chambray trust fund wolf taxidermy etsy disrupt. DIY fap chambray street art fingerstache slow-carb waistcoat roof party, vaporware occupy.</p>\\n\\n<p>Viral la croix listicle jean shorts quinoa. Single-origin coffee poutine cronut beard, affogato lyft twee enamel pin fap humblebrag bicycle rights. Hashtag woke four dollar toast venmo, etsy pickled brunch letterpress kale chips cornhole ugh affogato celiac. Vice stumptown vegan tbh cardigan whatever, locavore before they sold out. Taxidermy lyft chia post-ironic cronut tote bag. Jean shorts health goth fashion axe subway tile. Raw denim selfies plaid etsy.</p>\\n\\n<p>Raclette flannel succulents, stumptown iPhone locavore meditation hell of kickstarter. Occupy hashtag cray pinterest flannel. Before they sold out bushwick enamel pin, kinfolk synth offal marfa master cleanse actually. Vexillologist chillwave mumblecore, typewriter 8-bit single-origin coffee gochujang shoreditch lumbersexual beard pitchfork master cleanse actually drinking vinegar. Blog kale chips swag synth normcore YOLO. Echo park chambray vaporware, slow-carb glossier snackwave tumeric pop-up plaid. Leggings edison bulb paleo fap literally, gochujang pitchfork kogi wolf tumblr.</p>\\n\"}, \"model\": \"djangocms_text_ckeditor.text\", \"pk\": 30}]','Four loko freegan...',22,9),(117,'1',1,'json','[{\"fields\": {\"pagination_pages_start\": 10, \"exclude_featured\": 0, \"placeholder_detail_bottom\": 12, \"create_authors\": true, \"namespace\": \"aldryn_newsblog_default\", \"pagination_pages_visible\": 4, \"non_permalink_handling\": 302, \"permalink_type\": \"slug\", \"placeholder_detail_footer\": 13, \"paginate_by\": 5, \"placeholder_list_footer\": 15, \"app_data\": \"{\\\"config\\\": {}}\", \"template_prefix\": null, \"placeholder_base_top\": 11, \"placeholder_base_sidebar\": 10, \"search_indexed\": true, \"placeholder_detail_top\": 14, \"type\": \"aldryn_newsblog.cms_appconfig.NewsBlogConfig\", \"placeholder_list_top\": 16}, \"model\": \"aldryn_newsblog.newsblogconfig\", \"pk\": 1}]','NewsBlog / aldryn_newsblog_default',74,10),(118,'1',1,'json','[{\"fields\": {\"meta_description\": \"\", \"meta_title\": \"\", \"meta_keywords\": \"\", \"title\": \"Four loko freegan wayfarers\", \"search_data\": \"\", \"lead_in\": \"<p>Ramps sustainable vape mixtape aesthetic, farm-to-table la croix yuccie tbh edison bulb hella. IPhone four loko pok pok poke squid. Chambray brooklyn quinoa tacos, jianbing asymmetrical pug cred kombucha artisan brunch beard.</p>\\n\", \"master\": 1, \"language_code\": \"en\", \"slug\": \"four-loko-freegan-wayfarers\"}, \"model\": \"aldryn_newsblog.articletranslation\", \"pk\": 1}]','en',75,10),(119,'1',1,'json','[{\"fields\": {\"is_featured\": false, \"author\": 2, \"related\": [], \"content\": 17, \"app_config\": 1, \"featured_image\": null, \"owner\": 1, \"publishing_date\": \"2016-12-12T13:16:19Z\", \"categories\": [], \"is_published\": false}, \"model\": \"aldryn_newsblog.article\", \"pk\": 1}]','Four loko freegan wayfarers',76,10),(120,'10',10,'json','[{\"fields\": {\"slot\": \"newsblog_base_sidebar\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 10}]','newsblog_base_sidebar',1,10),(121,'11',11,'json','[{\"fields\": {\"slot\": \"newsblog_base_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 11}]','newsblog_base_top',1,10),(122,'12',12,'json','[{\"fields\": {\"slot\": \"newsblog_detail_bottom\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 12}]','newsblog_detail_bottom',1,10),(123,'13',13,'json','[{\"fields\": {\"slot\": \"newsblog_detail_footer\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 13}]','newsblog_detail_footer',1,10),(124,'14',14,'json','[{\"fields\": {\"slot\": \"newsblog_detail_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 14}]','newsblog_detail_top',1,10),(125,'29',29,'json','[{\"fields\": {\"body\": \"<p>Four loko freegan wayfarers, chillwave gentrify occupy green juice before they sold out viral selfies keytar tbh 3 wolf moon. Microdosing typewriter selfies snackwave mlkshk blue bottle. Waistcoat church-key marfa, la croix meggings unicorn tofu iPhone mixtape fam synth. Fanny pack aesthetic four loko pug, poke four dollar toast jianbing. Echo park tbh cronut, kombucha austin small batch normcore. Echo park tumblr raw denim twee, heirloom irony pickled +1 chambray trust fund wolf taxidermy etsy disrupt. DIY fap chambray street art fingerstache slow-carb waistcoat roof party, vaporware occupy.</p>\\n\\n<p>Viral la croix listicle jean shorts quinoa. Single-origin coffee poutine cronut beard, affogato lyft twee enamel pin fap humblebrag bicycle rights. Hashtag woke four dollar toast venmo, etsy pickled brunch letterpress kale chips cornhole ugh affogato celiac. Vice stumptown vegan tbh cardigan whatever, locavore before they sold out. Taxidermy lyft chia post-ironic cronut tote bag. Jean shorts health goth fashion axe subway tile. Raw denim selfies plaid etsy.</p>\\n\"}, \"model\": \"djangocms_text_ckeditor.text\", \"pk\": 29}]','Four loko freegan...',22,10),(126,'16',16,'json','[{\"fields\": {\"slot\": \"newsblog_list_top\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 16}]','newsblog_list_top',1,10),(127,'17',17,'json','[{\"fields\": {\"slot\": \"newsblog_article_content\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 17}]','newsblog_article_content',1,10),(128,'1',1,'json','[{\"fields\": {\"app_title\": \"News & Blog\", \"master\": 1, \"language_code\": \"en\"}, \"model\": \"aldryn_newsblog.newsblogconfigtranslation\", \"pk\": 1}]','en',73,10),(129,'15',15,'json','[{\"fields\": {\"slot\": \"newsblog_list_footer\", \"default_width\": null}, \"model\": \"cms.placeholder\", \"pk\": 15}]','newsblog_list_footer',1,10),(130,'29',29,'json','[{\"fields\": {\"changed_date\": \"2016-12-12T13:16:19Z\", \"language\": \"en\", \"parent\": null, \"numchild\": 0, \"creation_date\": \"2016-12-12T13:16:19Z\", \"depth\": 1, \"position\": 0, \"path\": \"0006\", \"placeholder\": 17, \"plugin_type\": \"TextPlugin\"}, \"model\": \"cms.cmsplugin\", \"pk\": 29}]','29',15,10);
/*!40000 ALTER TABLE `reversion_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_tag`
--

DROP TABLE IF EXISTS `taggit_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggit_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_tag`
--

LOCK TABLES `taggit_tag` WRITE;
/*!40000 ALTER TABLE `taggit_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggit_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_taggeditem`
--

DROP TABLE IF EXISTS `taggit_taggeditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggit_taggeditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `taggit_taggeditem_tag_id_6318217c0d95e0d2_fk_taggit_tag_id` (`tag_id`),
  KEY `taggit_taggeditem_af31437c` (`object_id`),
  KEY `taggit_taggeditem_content_type_id_3c99b32018cc9d40_idx` (`content_type_id`,`object_id`),
  CONSTRAINT `taggit_taggeditem_tag_id_6318217c0d95e0d2_fk_taggit_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `taggit_tag` (`id`),
  CONSTRAINT `taggi_content_type_id_62e0524705c3ec8f_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_taggeditem`
--

LOCK TABLES `taggit_taggeditem` WRITE;
/*!40000 ALTER TABLE `taggit_taggeditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggit_taggeditem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-13  8:13:13
