-- MySQL dump 10.13  Distrib 5.5.53, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	5.5.53

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `order_receive_name` varchar(20) DEFAULT NULL,
  `receive_phone` varchar(20) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `receive_address` varchar(255) DEFAULT NULL,
  `post_code` varchar(20) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  `utime` int(11) DEFAULT NULL,
  `status_add` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,1,14,'张欢','15210048471',NULL,NULL,NULL,'北京  北京','1',1551333198,NULL,0),(2,3,16,'段丽丽','15020204840',NULL,NULL,NULL,'北京  昌平  金保供应大声的喊','1',1551336397,NULL,0);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(20) DEFAULT NULL,
  `admin_pwd` varchar(40) DEFAULT NULL,
  `admin_pwds` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (16,'15020204840','1c63129ae9db9c60c3e8aa94d3e00495','1c63129ae9db9c60c3e8aa94d3e00495'),(14,'15210048471','1c63129ae9db9c60c3e8aa94d3e00495','1c63129ae9db9c60c3e8aa94d3e00495');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carts` (
  `cart_id` int(10) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `goods_id` int(10) NOT NULL,
  `goods_name` varchar(30) NOT NULL,
  `status` int(10) NOT NULL DEFAULT '0',
  `num` int(10) DEFAULT NULL,
  `update_time` int(10) NOT NULL,
  `is_show` int(11) DEFAULT '0',
  `is_hot` int(11) DEFAULT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (1,14,44,'短袖POLO衫 女款',0,22,1551333153,1,NULL),(2,14,45,'自拍杆',0,3,1551333956,1,NULL),(3,14,50,'移动电源16000mAh',0,1,1551333967,1,NULL),(4,14,51,'鼠标垫',0,3,1551336191,0,NULL),(5,14,52,'活塞耳机 三大升级 全新听歌神器',0,1,1551337682,0,NULL),(6,16,60,'指环式防滑手机支架',0,1,1551337774,0,NULL);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cate_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(30) NOT NULL,
  `parent_id` smallint(6) NOT NULL DEFAULT '0',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: 展示 0：不展示',
  `keywords` varchar(150) DEFAULT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `add_time` int(10) NOT NULL,
  `depath` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cate_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'厨房用品',0,0,'厨房',NULL,1544543508,'0'),(2,'智能家电',0,1,'家电/智能',NULL,1544543508,'0'),(3,'旅游鞋',10,1,'鞋',NULL,1544543508,'0_10'),(4,'美肤宝',6,1,'护肤用品',NULL,1544543508,'0_6'),(5,'大宝',6,1,NULL,NULL,1544543508,'0_6'),(6,'护肤用品',0,0,NULL,NULL,1544543508,'0'),(7,'美的家电',2,1,NULL,NULL,1544543508,'0_2'),(8,'智能空调',2,1,'','测试',1544543508,'0_2'),(10,'户外用品',0,1,NULL,NULL,1544543508,'0'),(11,'厨房清洁',1,1,'厨房清洁','改革',1544543508,'0_1'),(19,'骆驼',3,1,'爬山',NULL,1544581879,'0_10_3'),(17,'办公用品',0,1,'办公室','办公日常用品',1544581879,'0'),(16,'服装',10,1,NULL,NULL,1544581879,NULL),(20,'美的空调',7,1,'空调',NULL,1544581879,NULL),(21,'美的饮水机',7,1,'水',NULL,1544581879,NULL),(22,'美的微波炉',7,1,'快速',NULL,1544581879,NULL),(23,'智能灯',2,1,'灯','',1545307864,NULL),(24,'1.5匹',20,1,'省电','',1545307934,NULL),(25,'2匹智能空调',8,1,'智能','',1545308012,NULL),(26,'森马',16,1,'休闲','舒服',1546590086,NULL),(27,'手机',0,1,'手机','',1546942074,NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail`
--

DROP TABLE IF EXISTS `detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `order_name` varchar(20) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `buy_number` int(11) DEFAULT NULL,
  `goods_price` int(11) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_image` varchar(300) DEFAULT NULL,
  `comment_status` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail`
--

LOCK TABLES `detail` WRITE;
/*!40000 ALTER TABLE `detail` DISABLE KEYS */;
INSERT INTO `detail` VALUES (1,1,'201902280552469182',14,44,2,59,'短袖POLO衫 女款','uploads/images/201605/goods_img/44_G_1462854145484.jpg',1,1,1551333166),(2,2,'201902280606553147',14,45,1,49,'自拍杆','uploads/images/201605/goods_img/45_G_1462852876401.jpg',1,1,1551334015),(3,2,'201902280606553147',14,50,1,129,'移动电源16000mAh','uploads/images/201605/goods_img/50_G_1462852961232.jpg',1,1,1551334015),(4,3,'201902280644596506',16,51,1,5,'鼠标垫','uploads/images/201605/goods_img/51_G_1462852967543.jpg',1,1,1551336299);
/*!40000 ALTER TABLE `detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_number` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `shop_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_start_date` int(11) unsigned NOT NULL DEFAULT '0',
  `promote_end_date` int(11) unsigned NOT NULL DEFAULT '0',
  `warn_number` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `goods_thumb` varchar(255) NOT NULL DEFAULT '',
  `goods_img` varchar(255) NOT NULL DEFAULT '',
  `original_img` varchar(255) NOT NULL DEFAULT '',
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seller_note` varchar(255) NOT NULL DEFAULT '',
  `is_tell` varchar(10) DEFAULT '0',
  `cat_show` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`) USING BTREE,
  KEY `goods_sn` (`goods_sn`) USING BTREE,
  KEY `cat_id` (`cate_id`) USING BTREE,
  KEY `brand_id` (`brand_id`) USING BTREE,
  KEY `promote_end_date` (`promote_end_date`) USING BTREE,
  KEY `promote_start_date` (`promote_start_date`) USING BTREE,
  KEY `goods_number` (`goods_number`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (38,19,'ECS000038','圈铁耳机',2,15,0,118.80,99.00,0.00,0,0,1,'','','','images/201605/thumb_img/38_thumb_G_1462951652474.jpg','images/201605/goods_img/38_G_1462951652287.jpg','images/201605/source_img/38_G_1462951652405.jpg',1,0,1462852185,0,0,0,0,0,0,'','0',0),(39,19,'ECS000039','移动电源 10000mAh 高配版',1,15,15,178.79,149.00,0.00,0,0,1,'','','一定是特别的缘分','images/201605/thumb_img/39_thumb_G_1462852326734.jpg','images/201605/goods_img/39_G_1462852326708.jpg','images/201605/source_img/39_G_1462852326569.jpg',1,0,1462852326,0,0,0,0,0,0,'','1',1),(40,19,'ECS000040',' 炫彩翻页保护套',2,15,15,39.00,39.00,0.00,0,0,1,'','','','images/201605/thumb_img/40_thumb_G_1462852478804.jpg','images/201605/goods_img/40_G_1462852478331.jpg','images/201605/source_img/40_G_1462852478647.jpg',1,0,1462852478,0,0,0,0,0,0,'','0',0),(41,19,'ECS000041','蓝牙耳机',1,15,15,94.80,79.00,0.00,0,0,1,'','','','images/201605/thumb_img/41_thumb_G_1462951739925.jpg','images/201605/goods_img/41_G_1462951739858.jpg','images/201605/source_img/41_G_1462951739827.jpg',1,0,1462852621,0,0,0,0,0,0,'','0',0),(42,16,'ECS000042','短袖T恤 米兔大游行',0,3,15,46.80,39.00,0.00,0,0,1,'','','可怜之人 必有可恨之处','images/201605/thumb_img/42_thumb_G_1462852622356.jpg','images/201605/goods_img/42_G_1462852622613.jpg','images/201605/source_img/42_G_1462852622905.jpg',1,0,1462852622,0,0,0,0,0,0,'','1',0),(43,16,'ECS000043','短袖T恤 摇滚星球',0,1,15,46.80,39.00,0.00,0,0,1,'','','','images/201605/thumb_img/43_thumb_G_1462852740405.jpg','images/201605/goods_img/43_G_1462852740043.jpg','images/201605/source_img/43_G_1462852740973.jpg',1,0,1462852674,0,0,0,0,0,0,'','0',0),(44,16,'ECS000044','短袖POLO衫 女款',1,1,15,70.80,59.00,0.00,0,0,1,'','','漂亮','images/201605/thumb_img/44_thumb_G_1462854145205.jpg','images/201605/goods_img/44_G_1462854145484.jpg','images/201605/source_img/44_G_1462854145205.jpg',1,0,1462852818,0,0,0,0,0,0,'','1',0),(45,19,'ECS000045','自拍杆',4,15,15,58.80,49.00,0.00,0,0,1,'','','实用,便宜','images/201605/thumb_img/45_thumb_G_1462852876726.jpg','images/201605/goods_img/45_G_1462852876401.jpg','images/201605/source_img/45_G_1462852876959.jpg',1,0,1462852839,0,0,0,0,0,0,'','0',1),(46,16,'ECS000046','V领短袖T恤 女款',0,3,15,46.80,39.00,0.00,0,0,1,'','','','images/201605/thumb_img/46_thumb_G_1462852854005.jpg','images/201605/goods_img/46_G_1462852854671.jpg','images/201605/source_img/46_G_1462852854698.jpg',1,0,1462852854,0,0,0,0,0,0,'','0',0),(47,16,'ECS000047','极简都市双肩包',0,3,15,178.79,149.00,0.00,0,0,1,'','','','images/201605/thumb_img/47_thumb_G_1462852887996.jpg','images/201605/goods_img/47_G_1462852887140.jpg','images/201605/source_img/47_G_1462852887382.jpg',1,0,1462852887,0,0,0,0,0,0,'','1',0),(48,16,'ECS000048','学院风简约双肩包',1,5,15,70.80,59.00,0.00,0,0,1,'','','','images/201605/thumb_img/48_thumb_G_1462852915482.jpg','images/201605/goods_img/48_G_1462852915946.jpg','images/201605/source_img/48_G_1462852915332.jpg',1,0,1462852915,0,0,0,0,0,0,'','0',1),(49,19,'ECS000049','随身风扇',2,6,15,23.88,19.90,0.00,0,0,1,'','','','images/201605/thumb_img/49_thumb_G_1462852939697.jpg','images/201605/goods_img/49_G_1462852939406.jpg','images/201605/source_img/49_G_1462852939577.jpg',1,0,1462852939,0,0,0,0,0,0,'','1',0),(50,19,'ECS000050','移动电源16000mAh',2,15,15,154.79,129.00,0.00,0,0,1,'','','','images/201605/thumb_img/50_thumb_G_1462852961640.jpg','images/201605/goods_img/50_G_1462852961232.jpg','images/201605/source_img/50_G_1462852961568.jpg',1,0,1462852961,0,0,0,0,0,0,'','1',0),(51,19,'ECS000051','鼠标垫',3,7,15,5.88,4.90,0.00,0,0,1,'','','','images/201605/thumb_img/51_thumb_G_1462852967936.jpg','images/201605/goods_img/51_G_1462852967543.jpg','images/201605/source_img/51_G_1462852967694.jpg',1,0,1462852967,0,0,0,0,0,0,'','0',0),(52,8,'ECS000052','活塞耳机 三大升级 全新听歌神器',0,15,15,99.00,69.00,0.00,0,0,1,'','','','images/201605/thumb_img/52_thumb_G_1462951604146.jpg','images/201605/goods_img/52_G_1462951604094.jpg','images/201605/source_img/52_G_1462951604873.jpg',1,0,1462853039,0,1,0,0,0,0,'','0',1),(53,8,'ECS000053','活塞耳机 标准版',2,15,15,34.80,29.00,0.00,0,0,1,'','','','images/201605/thumb_img/53_thumb_G_1462951586603.jpg','images/201605/goods_img/53_G_1462951586918.jpg','images/201605/source_img/53_G_1462951586806.jpg',1,0,1462853130,0,0,0,0,0,0,'','0',0),(54,6,'ECS000054','插线板',0,15,15,58.80,49.00,0.00,0,0,1,'','','','images/201605/thumb_img/54_thumb_G_1462853264300.jpg','images/201605/goods_img/54_G_1462853264188.jpg','images/201605/source_img/54_G_1462853264278.jpg',1,0,1462853264,0,0,0,0,0,0,'','0',0),(55,22,'ECS000055','移动电源10000mAh',0,15,15,82.80,69.00,0.00,0,0,1,'','','','images/201605/thumb_img/55_thumb_G_1462853376632.jpg','images/201605/goods_img/55_G_1462853376630.jpg','images/201605/source_img/55_G_1462853376496.jpg',1,0,1462853376,0,0,0,0,0,0,'','0',0),(58,20,'ECS000058','手机3高配版 超薄钢化玻璃膜(0.22mm) ',7,15,15,34.80,29.00,0.00,0,0,1,'','','','images/201605/thumb_img/58_thumb_G_1462854555007.jpg','images/201605/goods_img/58_G_1462854555626.jpg','images/201605/source_img/58_G_1462854555917.jpg',1,0,1462854555,0,0,0,0,0,0,'','0',1),(59,6,'ECS000059',' 标准高透贴膜(2片装) ',4,15,15,22.80,19.00,0.00,0,0,1,'','','','images/201605/thumb_img/59_thumb_G_1462854683029.jpg','images/201605/goods_img/59_G_1462854683071.jpg','images/201605/source_img/59_G_1462854683549.jpg',1,0,1462854683,0,0,0,0,0,0,'','0',0),(60,6,'ECS000060','指环式防滑手机支架',14,15,15,15.00,12.50,0.00,0,0,1,'','','','images/201605/thumb_img/60_thumb_G_1462854857483.jpg','images/201605/goods_img/60_G_1462854857550.jpg','images/201605/source_img/60_G_1462854857625.jpg',1,0,1462854857,0,0,0,0,0,0,'','0',0),(73,6,'ECS000073','苹果XS',0,5,15,12000.00,10000.00,0.00,0,0,1,'','','','images/201811/thumb_img/73_thumb_G_1543477521554.jpg','images/201811/goods_img/73_G_1543477521230.jpg','images/201811/source_img/73_G_1543477521606.jpg',1,0,1543477521,1,0,0,0,0,0,'','0',0),(74,6,'ECS000074','XS 苹果',10,5,8,12000.00,10000.00,9500.00,1541001600,1543420800,3,'苹果','苹果 很贵','<p>&nbsp;<img src=\"/ecshop/images/upload/Image/1.jpg\" width=\"450\" height=\"450\" alt=\"\" /><img src=\"/ecshop/images/upload/Image/57d0c55cNeb17a9b8.jpg\" width=\"450\" height=\"450\" alt=\"\" /></p>','images/201811/thumb_img/74_thumb_G_1543477901345.jpg','images/201811/goods_img/74_G_1543477901288.jpg','images/201811/source_img/74_G_1543477901044.jpg',1,0,1543477901,0,0,0,0,1,4,'贵鬼的苹果','0',1),(75,19,'','骆驼拓',0,30,5,0.00,199.00,0.00,0,0,1,'','','<p>户外运动的首选</p>','20181219\\a4b03a41fa11b7119e0d64ec1659f183.gif','20181219\\a4b03a41fa11b7119e0d64ec1659f183.gif','',1,0,1545200877,0,0,1,1,0,0,'','0',1),(76,19,'','骆驼拓',0,30,5,0.00,199.00,0.00,0,0,1,'','','<p>户外运动的首选</p>','20181219\\c20a61e077515694a6ec8babd4efb754.gif','20181219\\c20a61e077515694a6ec8babd4efb754.gif','',1,0,1545200877,0,0,1,1,0,0,'','0',0),(77,19,'','骆驼拓',0,30,5,0.00,199.00,0.00,0,0,1,'','','<p>户外运动的首选</p>','20181219\\aca5cd1c516d81e7176d867269a94656.gif','20181219\\aca5cd1c516d81e7176d867269a94656.gif','',1,0,1545200877,0,0,1,1,0,0,'','0',0),(78,6,'','气垫',0,22,5,0.00,599.00,0.00,0,0,1,'','','<p>服帖<img src=\"/ueditor/php/upload/image/20181219/1545200522.gif\" title=\"1545200522.gif\" alt=\"tp_03.gif\"/></p>','20181219\\79240c8fab152059b4b4f9ff36014eba.gif','20181219\\79240c8fab152059b4b4f9ff36014eba.gif','',1,0,1545200877,0,0,1,1,0,0,'','0',0),(79,6,'','剃须刀',0,4,5,0.00,199.00,0.00,0,0,1,'','','<p>好用</p>','20181219\\50f07119c73498e590981519241a8510.gif','20181219\\50f07119c73498e590981519241a8510.gif','',1,0,1545200877,0,0,1,1,0,0,'','0',0),(80,2,'','刀具',0,5,5,0.00,88.00,0.00,0,0,1,'','','<p>急急急</p>','20181219\\5eaf1ac8bec1c5b127774df05f30432c.gif','20181219\\5eaf1ac8bec1c5b127774df05f30432c.gif','',1,0,1545202371,0,0,1,1,0,0,'','0',0),(81,1,'','果',0,5,5,0.00,88.00,0.00,0,0,1,'','','<p>急急急</p>','20181219\\f3cb73c026a4c40971460ba65574d026.gif','20181219\\f3cb73c026a4c40971460ba65574d026.gif','',1,0,1545202449,0,0,1,1,0,0,'','0',0),(82,4,'','KD876',0,0,1,0.00,1388.00,0.00,0,0,1,'','','<p>&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 很多朋友都已经抢先体验了3G网络的可视通话、高速上网等功能。LG KD876手机&lt;span style=&quot;font-size: x-large;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;strong&gt;支持TD-SCDMA/GSM双模单待&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;，便于测试初期GSM网络和TD网络之间的切换和共享。&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; LG KD876手机整体采用银色塑料材质，&lt;strong&gt;&lt;span style=&quot;font-size: x-large;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;特殊的旋转屏设计是本机的亮点&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;，而机身背部的300万像素摄像头也是首发的六款TD-SCDMA手机中配置最高的。LG KD876手机屏幕下方设置有外键盘，该键盘由左/右软键、通话/挂机键、返回键、五维摇杆组成，摇杆灵敏度很高，定位准确。KD876的内键盘由标准12个电话键和三个功能键、一个内置摄像头组成。三个功能键分别为视频通话、MP3、和菜单键，所有按键的手感都比较一般，键程适中，当由于按键排列过于紧密，快速发短信时很容易误按，用户在使用时一定要多加注意。LG KD876手机机身周边的接口设计非常简洁，手机的厚度主要来自屏幕旋转轴的长度，如果舍弃旋屏设计的话，估计&lt;span style=&quot;font-size: x-large;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;厚度可以做到10mm以下&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;。&lt;/p&gt;</p>','20181219\\fa539185be292df3e1710824f0093ec4.gif','20181219\\fa539185be292df3e1710824f0093ec4.gif','',1,0,1545217186,0,0,1,0,0,0,'','0',0),(88,6,'','睡眠面膜',0,31,56,111.00,111.00,111.00,2009,2014,5,'2018年10月 GSM,850,900,1800,1900 黑色','','','20190104\\1fc8bd21cf3e258358ea99fda95dc7c2_thumb.gif','20190104\\1fc8bd21cf3e258358ea99fda95dc7c2.gif','',1,0,0,0,1,1,1,1,0,'商家描述','0',0),(89,26,'','羽绒服',0,19,56,111.00,111.00,111.00,2009,2014,5,'2018年10月 GSM,850,900,1800,1900 黑色','','<p>羽绒服</p>','20190104\\2aa34fa19940a5ae7436939ae81959d4_thumb.gif','20190104\\2aa34fa19940a5ae7436939ae81959d4.gif','',1,0,0,0,1,1,1,1,0,'商家描述','0',0),(90,6,'','深水炸弹',0,22,100,170.00,150.00,145.00,2009,2014,5,'2018年10月 GSM,850,900,1800,1900 黑色','','','20190104\\6f52d17118fe219b3fc2c4c31d612b29_thumb.gif','20190104\\6f52d17118fe219b3fc2c4c31d612b29.gif','',1,0,0,0,1,1,1,1,0,'商家描述','0',0),(91,6,'','深水炸弹2',0,22,100,170.00,150.00,145.00,2009,2014,5,'2018年10月 GSM,850,900,1800,1900 黑色','','','20190104\\1ca8dd5f2a91d5868d9e593223e8b402_thumb.gif','20190104\\1ca8dd5f2a91d5868d9e593223e8b402.gif','',1,0,0,0,1,1,1,1,0,'商家描述','0',0),(92,6,'','深水炸弹3',0,22,100,170.00,150.00,145.00,2009,2014,5,'2018年10月 GSM,850,900,1800,1900 黑色','','','20190104\\977daae7f42d7f050469327fe58b8627_thumb.gif','20190104\\977daae7f42d7f050469327fe58b8627.gif','',1,0,0,0,1,1,1,1,0,'商家描述','0',0),(93,6,'','深水炸弹4',0,22,100,170.00,150.00,145.00,2009,2014,5,'2018年10月 GSM,850,900,1800,1900 黑色','','','20190104\\9f3b13a1a0d0188d78a39b89ba9bef0d_thumb.gif','20190104\\9f3b13a1a0d0188d78a39b89ba9bef0d.gif','',1,0,0,0,1,1,1,1,0,'商家描述','0',0),(94,6,'','深水炸弹6',0,22,100,170.00,150.00,145.00,2009,2014,5,'2018年10月 GSM,850,900,1800,1900 黑色','','','20190104\\16c33ae00401573af2b3103b5df3a52a_thumb.gif','20190104\\16c33ae00401573af2b3103b5df3a52a.gif','',1,0,0,0,1,1,1,1,0,'商家描述','0',0),(95,23,'DZ2019010422545600095','1111111',0,21,4,3612.00,3010.00,2750.00,2009,2014,1,'2018年10月 GSM,850,900,1800,1900 黑色','','','20190104\\e13d740668aff2acaed8f2d5dc7cab46_thumb.gif','20190104\\e13d740668aff2acaed8f2d5dc7cab46.gif','',1,0,0,0,1,1,1,1,0,'','0',0),(110,23,'DZ20190104234618000110','222',0,21,4,3612.00,3010.00,2750.00,2009,2014,1,'2018年10月 GSM,850,900,1800,1900 黑色','','','20190104\\8b295f63f42a8e2893a9054be93982f2_thumb.gif','20190104\\8b295f63f42a8e2893a9054be93982f2.gif','',1,0,0,0,1,1,1,1,0,'','0',0),(112,0,'DZ20190108121106000112','诺基亚N852',0,0,187,3612.00,3010.00,2750.00,2009,2014,1,'2018年10月 GSM,850,900,1800,1900 黑色','','','20190108\\fa4702bdd9a9abd2f9d667336a75346f_thumb.gif','20190108\\fa4702bdd9a9abd2f9d667336a75346f.gif','',1,0,0,0,1,1,1,1,0,'','0',0),(113,5,'DZ20190108121329000113','诺基亚',0,30,4,3612.00,3010.00,2750.00,2009,2014,1,'2018年10月 GSM,850,900,1800,1900 黑色','','','','','',1,0,0,0,1,1,1,1,0,'','0',0),(114,20,'DZ20190108121548000114','诺基亚N85ee',0,22,3,3612.00,300.00,2750.00,2009,2014,1,'2018年10月 GSM,850,900,1800,1900 黑色','','','20190108\\43d65da3bd71002ec1b6bfb720f0240a_thumb.gif','20190108\\43d65da3bd71002ec1b6bfb720f0240a.gif','',1,0,0,0,1,1,1,1,0,'','0',0),(116,27,'DZ20190109172124000116','华为荣耀20',0,32,79,5199.00,4999.00,0.00,2009,2014,5,'2018年10月 GSM,850,900,1800,1900 黑色','','<p>新款上市,预收款<img src=\"/ueditor/php/upload/image/20190109/1547025416.jpg\" title=\"1547025416.jpg\" alt=\"3_P_1241422082461.jpg\"/><img src=\"/ueditor/php/upload/image/20190109/1547025429.jpg\" title=\"1547025429.jpg\" alt=\"8_P_1241425891193.jpg\"/></p>','20190109\\fad2bd2edc9f461ab38bc806817c5b86_thumb.jpg','20190109\\fad2bd2edc9f461ab38bc806817c5b86.jpg','',1,0,0,0,1,1,1,0,0,'预定款','0',0),(117,27,'DZ20190118194050000117','华为——SSS',0,32,4,5900.00,5620.00,2750.00,2009,2014,1,'2018年10月 GSM,850,900,1800,1900 黑色','','','20190118\\3cdc953fdbbe25780b01163b0b752948_thumb.png','20190118\\3cdc953fdbbe25780b01163b0b752948.png','',1,0,0,0,1,1,1,1,0,'','0',0);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `openss`
--

DROP TABLE IF EXISTS `openss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `openss` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_tel` varchar(20) DEFAULT NULL,
  `b_tell` varchar(20) DEFAULT NULL,
  `satic` varchar(10) DEFAULT '0',
  `optime` int(11) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `openss`
--

LOCK TABLES `openss` WRITE;
/*!40000 ALTER TABLE `openss` DISABLE KEYS */;
/*!40000 ALTER TABLE `openss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_name` varchar(20) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `order_amount` varchar(20) DEFAULT NULL,
  `order_pay_type` tinyint(4) DEFAULT NULL,
  `pay_status` tinyint(4) DEFAULT NULL,
  `pay_way` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'201902280552469182',14,'118',1,1,2,1,1551333166),(2,'201902280606553147',14,'178',1,1,2,1,1551334015),(3,'201902280644596506',16,'4.9',1,1,2,1,1551336299);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shool`
--

DROP TABLE IF EXISTS `shool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shool` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(20) DEFAULT NULL,
  `b_id` int(11) DEFAULT NULL,
  `a_value` varchar(30) DEFAULT NULL,
  `a_hot` varchar(10) DEFAULT NULL,
  `a_show` varchar(10) DEFAULT NULL,
  `state` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`a_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shool`
--

LOCK TABLES `shool` WRITE;
/*!40000 ALTER TABLE `shool` DISABLE KEYS */;
INSERT INTO `shool` VALUES (1,'奔驰啊',1,'其他都好 耗油严重','1','1',0),(2,'比亚迪啊',1,'打算','0','0',0),(3,'劳斯莱斯',1,'哇打双打','1','0',1),(4,'宝马',1,'大声地','0','1',0),(5,'电池',3,'大苏打','0','1',0),(6,'奔驰阿强查询',3,'大声地','0','0',0),(7,'坚持',2,'饿啊都是第三方','1','1',0),(11,'奔驰阿强',1,'阿萨德','0','1',0),(8,'v这',2,'我爱电视','1','0',0),(12,'大多数的',2,'几何结构','0','0',0),(10,'的哈桑',2,'打算带去','0','1',0);
/*!40000 ALTER TABLE `shool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoolss`
--

DROP TABLE IF EXISTS `shoolss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoolss` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoolss`
--

LOCK TABLES `shoolss` WRITE;
/*!40000 ALTER TABLE `shoolss` DISABLE KEYS */;
INSERT INTO `shoolss` VALUES (1,'易车'),(2,'家具'),(3,'婚庆');
/*!40000 ALTER TABLE `shoolss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'zhanghuan',20),(3,'qqq',20);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-02 10:32:26
