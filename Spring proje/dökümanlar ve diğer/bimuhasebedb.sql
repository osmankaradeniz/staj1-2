-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: bimuhasebe
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `zip_code` varchar(60) DEFAULT NULL,
  `type` tinyint DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `trader_account_trader_id` int DEFAULT NULL,
  `city_city_id` int DEFAULT NULL,
  `town_town_id` int DEFAULT NULL,
  `company_company_id` int DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `fk_address_trader_account1_idx` (`trader_account_trader_id`),
  KEY `fk_address_city1_idx` (`city_city_id`),
  KEY `fk_address_town1_idx` (`town_town_id`),
  KEY `fk_address_company1_idx` (`company_company_id`),
  CONSTRAINT `fk_address_company1` FOREIGN KEY (`company_company_id`) REFERENCES `company` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (3,'01000',0,'şirket adresi sokak 1',NULL,1,2,2);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_account`
--

DROP TABLE IF EXISTS `bank_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_account` (
  `bank_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `total_balance` double DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  `company_company_id` int DEFAULT NULL,
  `trader_account_trader_id` int DEFAULT NULL,
  PRIMARY KEY (`bank_id`),
  KEY `fk_bank_account_company1_idx` (`company_company_id`),
  KEY `fk_bank_account_trader_account1_idx` (`trader_account_trader_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_account`
--

LOCK TABLES `bank_account` WRITE;
/*!40000 ALTER TABLE `bank_account` DISABLE KEYS */;
INSERT INTO `bank_account` VALUES (2,'ANA KASA',0,'2020-09-20',2,NULL),(3,'ANA HESAP',1000,'2020-09-20',NULL,2);
/*!40000 ALTER TABLE `bank_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `city_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'ADANA '),(2,'ADIYAMAN'),(3,'AFYONKARAHİSAR'),(4,'AĞRI'),(5,'AKSARAY '),(6,'AMASYA'),(7,'ANKARA'),(8,'ANTALYA '),(9,'ARDAHAN '),(10,'ARTVİN'),(11,'AYDIN '),(12,'BALIKESİR '),(13,'BARTIN'),(14,'BATMAN'),(15,'BAYBURT '),(16,'BİLECİK '),(17,'BİNGÖL'),(18,'BİTLİS'),(19,'BOLU'),(20,'BURDUR'),(21,'BURSA '),(22,'ÇANAKKALE '),(23,'ÇANKIRI '),(24,'ÇORUM '),(25,'DENİZLİ '),(26,'DİYARBAKIR'),(27,'DÜZCE '),(28,'EDİRNE'),(29,'ELAZIĞ'),(30,'ERZİNCAN'),(31,'ERZURUM '),(32,'ESKİŞEHİR '),(33,'GAZİANTEP '),(34,'GİRESUN '),(35,'GÜMÜŞHANE '),(36,'HAKKARİ '),(37,'HATAY '),(38,'IĞDIR '),(39,'ISPARTA '),(40,'İSTANBUL'),(41,'İZMİR '),(42,'KAHRAMANMARAŞ '),(43,'KARABÜK '),(44,'KARAMAN '),(45,'KARS'),(46,'KASTAMONU '),(47,'KAYSERİ '),(48,'KIRIKKALE '),(49,'KIRKLARELİ'),(50,'KIRŞEHİR'),(51,'KİLİS '),(52,'KOCAELİ '),(53,'KONYA '),(54,'KÜTAHYA '),(55,'MALATYA '),(56,'MANİSA'),(57,'MARDİN'),(58,'MERSİN'),(59,'MUĞLA '),(60,'MUŞ '),(61,'NEVŞEHİR'),(62,'NİĞDE '),(63,'ORDU'),(64,'OSMANİYE'),(65,'RİZE'),(66,'SAKARYA '),(67,'SAMSUN'),(68,'SİİRT '),(69,'SİNOP '),(70,'SİVAS '),(71,'ŞANLIURFA '),(72,'ŞIRNAK'),(73,'TEKİRDAĞ'),(74,'TOKAT '),(75,'TRABZON '),(76,'TUNCELİ '),(77,'UŞAK'),(78,'VAN '),(79,'YALOVA'),(80,'YOZGAT'),(81,'ZONGULDAK ');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commercial_docs`
--

DROP TABLE IF EXISTS `commercial_docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commercial_docs` (
  `commercial_docs_id` int NOT NULL AUTO_INCREMENT,
  `serial_no` varchar(120) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `commercial_doc_type` enum('INVOICE','DESPATCH_ADVICE','ORDER') DEFAULT 'INVOICE',
  `transform_status` tinyint DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `transaction_type` enum('SALES','BUYING') DEFAULT 'SALES',
  `payment_status` tinyint DEFAULT NULL,
  `state_state_id` int NOT NULL,
  PRIMARY KEY (`commercial_docs_id`),
  KEY `fk_commercial_docs_state1_idx` (`state_state_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commercial_docs`
--

LOCK TABLES `commercial_docs` WRITE;
/*!40000 ALTER TABLE `commercial_docs` DISABLE KEYS */;
/*!40000 ALTER TABLE `commercial_docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commercial_docs_item`
--

DROP TABLE IF EXISTS `commercial_docs_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commercial_docs_item` (
  `cdi_id` int NOT NULL AUTO_INCREMENT,
  `item_id` int DEFAULT NULL,
  `change_quantity` double DEFAULT NULL,
  `commercial_docs_commercial_docs_id` int NOT NULL,
  PRIMARY KEY (`cdi_id`,`commercial_docs_commercial_docs_id`),
  KEY `fk_commercial_docs_item_item1_idx` (`item_id`),
  KEY `fk_commercial_docs_item_commercial_docs1_idx` (`commercial_docs_commercial_docs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commercial_docs_item`
--

LOCK TABLES `commercial_docs_item` WRITE;
/*!40000 ALTER TABLE `commercial_docs_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `commercial_docs_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commercial_docs_tc`
--

DROP TABLE IF EXISTS `commercial_docs_tc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commercial_docs_tc` (
  `idcommercial_docs_tc_id` int NOT NULL,
  `trader_account_trader_id` int NOT NULL,
  `company_company_id` int NOT NULL,
  `commercial_docs_commercial_docs_id` int NOT NULL,
  PRIMARY KEY (`idcommercial_docs_tc_id`,`trader_account_trader_id`,`company_company_id`,`commercial_docs_commercial_docs_id`),
  KEY `fk_commercial_docs_tc_trader_account1_idx` (`trader_account_trader_id`),
  KEY `fk_commercial_docs_tc_company1_idx` (`company_company_id`),
  KEY `fk_commercial_docs_tc_commercial_docs1_idx` (`commercial_docs_commercial_docs_id`),
  CONSTRAINT `fk_commercial_docs_tc_company1` FOREIGN KEY (`company_company_id`) REFERENCES `company` (`company_id`),
  CONSTRAINT `fk_commercial_docs_tc_trader_account1` FOREIGN KEY (`trader_account_trader_id`) REFERENCES `trader_account` (`trader_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commercial_docs_tc`
--

LOCK TABLES `commercial_docs_tc` WRITE;
/*!40000 ALTER TABLE `commercial_docs_tc` DISABLE KEYS */;
/*!40000 ALTER TABLE `commercial_docs_tc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `company_id` int NOT NULL AUTO_INCREMENT,
  `identity_number` varchar(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `legal_name` varchar(200) DEFAULT NULL,
  `document_type` tinyint DEFAULT NULL,
  `type` tinyint DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `mersis_code` varchar(65) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  `tax_offices_tax_id` int DEFAULT NULL,
  `sector_sector_id` int DEFAULT NULL,
  PRIMARY KEY (`company_id`),
  KEY `fk_company_tax_offices1_idx` (`tax_offices_tax_id`),
  KEY `fk_company_sector1_idx` (`sector_sector_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (2,'11111111111','ahmet','koruyan',NULL,0,0,'akoruyan@gmail.com','05445315555',NULL,'T.C.','2020-09-20',1,33);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) DEFAULT NULL,
  `barcode` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `origin` varchar(45) DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `udate` date DEFAULT NULL,
  `company_company_id` int NOT NULL,
  `quantity` double DEFAULT NULL,
  `unit_unit_id` int DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `fk_item_company1_idx` (`company_company_id`),
  KEY `fk_item_unit1_idx` (`unit_unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (2,'İTEM00001','İTEM0001','nutella','cikolata','tr',0,0,42,'2020-09-20',2,244,1);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sector`
--

DROP TABLE IF EXISTS `sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sector` (
  `sector_id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sector_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sector`
--

LOCK TABLES `sector` WRITE;
/*!40000 ALTER TABLE `sector` DISABLE KEYS */;
INSERT INTO `sector` VALUES (27,'Reklam / Tasarım'),(28,'Halkla İlişkiler & Organizasyon'),(29,'Eğitim / Danışmanlık'),(30,'Mimarlık'),(31,'Hukuk Hizmetleri'),(32,'SMMM Hizmetler'),(33,'Yazılım / Teknoloji'),(34,'E-Ticaret'),(35,'Perakende'),(36,'Üretim'),(37,'İnşaat / Gayrimenkul'),(38,'Diğer');
/*!40000 ALTER TABLE `sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state` (
  `state_id` int NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'new','Yeni'),(2,'wait','Bekliyor'),(3,'await','Onay Bekliyor'),(4,'approved','Onaylandı'),(5,'prepare','Hazırlanıyor'),(6,'shipped','Sevkedildi'),(7,'delivered','Teslim edildi'),(8,'cancelled','İptal edildi');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_offices`
--

DROP TABLE IF EXISTS `tax_offices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tax_offices` (
  `tax_id` int NOT NULL AUTO_INCREMENT,
  `tax_department` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`tax_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1034 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_offices`
--

LOCK TABLES `tax_offices` WRITE;
/*!40000 ALTER TABLE `tax_offices` DISABLE KEYS */;
INSERT INTO `tax_offices` VALUES (1,'5 Ocak Vergi Dairesi Müdürlüğü'),(2,'Yüreğir Vergi Dairesi Müdürlüğü'),(3,'Seyhan Vergi Dairesi Müdürlüğü'),(4,'Ziyapaşa Vergi Dairesi Müdürlüğü'),(5,'Çukurova Vergi Dairesi Müdürlüğü'),(6,'Ceyhan Vergi Dairesi Müdürlüğü'),(7,'Kozan Vergi Dairesi Müdürlüğü'),(8,'Karataş Vergi Dairesi Müdürlüğü'),(9,'Feke Malmüdürlüğü'),(10,'Karaisalı Malmüdürlüğü'),(11,'Pozantı Malmüdürlüğü'),(12,'Saimbeyli Malmüdürlüğü'),(13,'Tufanbeyli Malmüdürlüğü'),(14,'Yumurtalık Malmüdürlüğü'),(15,'Aladağ Malmüdürlüğü'),(16,'İmamoğlu Malmüdürlüğü'),(17,'Adıyaman Vergi Dairesi Müdürlüğü'),(18,'Kahta Vergi Dairesi Müdürlüğü'),(19,'Besni Malmüdürlüğü'),(20,'Çelikhan Malmüdürlüğü'),(21,'Gerger Malmüdürlüğü'),(22,'Gölbaşı Malmüdürlüğü'),(23,'Samsat Malmüdürlüğü'),(24,'Sincik Malmüdürlüğü'),(25,'Tut Malmüdürlüğü'),(26,'Tınaztepe Vergi Dairesi Müdürlüğü'),(27,'Kocatepe Vergi Dairesi Müdürlüğü'),(28,'Dinar Vergi Dairesi Müdürlüğü'),(29,'Bolvadin Vergi Dairesi Müdürlüğü'),(30,'Emirdağ Vergi Dairesi Müdürlüğü'),(31,'Sandıklı Vergi Dairesi Müdürlüğü'),(32,'Çay Vergi Dairesi Müdürlüğü'),(33,'Dazkırı Malmüdürlüğü'),(34,'İhsaniye Malmüdürlüğü'),(35,'Sinanpaşa Malmüdürlüğü'),(36,'Sultandağı Malmüdürlüğü'),(37,'Şuhut Malmüdürlüğü'),(38,'Başmakçı Malmüdürlüğü'),(39,'Bayat Malmüdürlüğü'),(40,'İscehisar Malmüdürlüğü'),(41,'Çobanlar Malmüdürlüğü'),(42,'Evciler Malmüdürlüğü'),(43,'Hocalar Malmüdürlüğü'),(44,'Kızılören Malmüdürlüğü'),(45,'Ağrı Vergi Dairesi Müdürlüğü'),(46,'Doğubeyazıt Vergi Dairesi Müdürlüğü'),(47,'Diyadin Malmüdürlüğü'),(48,'Eleşkirt Malmüdürlüğü'),(49,'Hamur Malmüdürlüğü'),(50,'Patnos Malmüdürlüğü'),(51,'Taşlıçay Malmüdürlüğü'),(52,'Tutak Malmüdürlüğü'),(53,'Amasya Vergi Dairesi Müdürlüğü'),(54,'Merzifon Vergi Dairesi Müdürlüğü'),(55,'Gümüşhacıköy Vergi Dairesi Müdürlüğü'),(56,'Taşova Vergi Dairesi Müdürlüğü'),(57,'Suluova Vergi Dairesi Müdürlüğü'),(58,'Göynücek Malmüdürlüğü'),(59,'Hamamözü Malmüdürlüğü'),(60,'Kavaklıdere Vergi Dairesi Müdürlüğü'),(61,'Hitit Vergi Dairesi Müdürlüğü'),(62,'Ostim Vergi Dairesi Müdürlüğü'),(63,'Veraset ve Harçlar Vergi Dairesi Müdürlüğü'),(64,'Maltepe Vergi Dairesi Müdürlüğü'),(65,'Yenimahalle Vergi Dairesi Müdürlüğü'),(66,'Çankaya Vergi Dairesi Müdürlüğü'),(67,'Kızılbey Vergi Dairesi Müdürlüğü'),(68,'Mithatpaşa Vergi Dairesi Müdürlüğü'),(69,'Ulus Vergi Dairesi Müdürlüğü'),(70,'Yıldırım Beyazıt Vergi Dairesi Müdürlüğü'),(71,'Seğmenler Vergi Dairesi Müdürlüğü'),(72,'Dikimevi Vergi Dairesi Müdürlüğü'),(73,'Doğanbey Vergi Dairesi Müdürlüğü'),(74,'Yeğenbey Vergi Dairesi Müdürlüğü'),(75,'Yahya Galip Vergi Dairesi Müdürlüğü'),(76,'Muhammet Karagüzel Vergi Dairesi Müdürlüğü'),(77,'Gölbaşı Vergi Dairesi Müdürlüğü'),(78,'Sincan Vergi Dairesi Müdürlüğü'),(79,'Dışkapı Vergi Dairesi Müdürlüğü'),(80,'Etimesgut Vergi Dairesi Müdürlüğü'),(81,'Başkent Vergi Dairesi Müdürlüğü'),(82,'Cumhuriyet Vergi Dairesi Müdürlüğü'),(83,'Keçiören Vergi Dairesi Müdürlüğü'),(84,'Kazan Vergi Dairesi Müdürlüğü'),(85,'Polatlı Vergi Dairesi Müdürlüğü'),(86,'Şereflikoçhisar Vergi Dairesi Müdürlüğü'),(87,'Beypazarı Vergi Dairesi Müdürlüğü'),(88,'Çubuk Vergi Dairesi Müdürlüğü'),(89,'Haymana Vergi Dairesi Müdürlüğü'),(90,'Elmadağ Vergi Dairesi Müdürlüğü'),(91,'Ayaş Malmüdürlüğü'),(92,'Balâ Malmüdürlüğü'),(93,'Çamlıdere Malmüdürlüğü'),(94,'Güdül Malmüdürlüğü'),(95,'Kalecik Malmüdürlüğü'),(96,'Kızılcahamam Malmüdürlüğü'),(97,'Nallıhan Malmüdürlüğü'),(98,'Akyurt Malmüdürlüğü'),(99,'Evren Malmüdürlüğü'),(100,'Antalya Kurumlar Vergi Dairesi Müdürlüğü'),(101,'Üçkapılar Vergi Dairesi Müdürlüğü'),(102,'Kalekapı Vergi Dairesi Müdürlüğü'),(103,'Muratpaşa Vergi Dairesi Müdürlüğü'),(104,'Düden Vergi Dairesi Müdürlüğü'),(105,'Alanya Vergi Dairesi Müdürlüğü'),(106,'Serik Vergi Dairesi Müdürlüğü'),(107,'Manavgat Vergi Dairesi Müdürlüğü'),(108,'Elmalı Vergi Dairesi Müdürlüğü'),(109,'Kemer Vergi Dairesi Müdürlüğü'),(110,'Kumluca Vergi Dairesi Müdürlüğü'),(111,'Finike Malmüdürlüğü'),(112,'Akseki Malmüdürlüğü'),(113,'Gazipaşa Malmüdürlüğü'),(114,'Gündoğmuş Malmüdürlüğü'),(115,'Kaş Malmüdürlüğü'),(116,'Korkuteli Malmüdürlüğü'),(117,'Demre Malmüdürlüğü'),(118,'İbradı Malmüdürlüğü'),(119,'Artvin Vergi Dairesi Müdürlüğü'),(120,'Hopa Vergi Dairesi Müdürlüğü'),(121,'Ardanuç Malmüdürlüğü'),(122,'Arhavi Malmüdürlüğü'),(123,'Borçka Malmüdürlüğü'),(124,'Şavşat Malmüdürlüğü'),(125,'Yusufeli Malmüdürlüğü'),(126,'Murgul Malmüdürlüğü'),(127,'Efeler Vergi Dairesi Müdürlüğü'),(128,'Güzelhisar Vergi Dairesi Müdürlüğü'),(129,'Nazilli Vergi Dairesi Müdürlüğü'),(130,'Söke Vergi Dairesi Müdürlüğü'),(131,'Çine Vergi Dairesi Müdürlüğü'),(132,'Germencik Vergi Dairesi Müdürlüğü'),(133,'Kuşadası Vergi Dairesi Müdürlüğü'),(134,'Didim Vergi Dairesi Müdürlüğü'),(135,'Bozdoğan Malmüdürlüğü'),(136,'Karacasu Malmüdürlüğü'),(137,'Koçarlı Malmüdürlüğü'),(138,'Kuyucak Malmüdürlüğü'),(139,'Sultanhisar Malmüdürlüğü'),(140,'Yenipazar Malmüdürlüğü'),(141,'Buharkent Malmüdürlüğü'),(142,'İncirliova Malmüdürlüğü'),(143,'Karpuzlu Malmüdürlüğü'),(144,'Köşk Malmüdürlüğü'),(145,'Karesi Vergi Dairesi Müdürlüğü'),(146,'Kurtdereli Vergi Dairesi Müdürlüğü'),(147,'Ayvalık Vergi Dairesi Müdürlüğü'),(148,'Bandırma Vergi Dairesi Müdürlüğü'),(149,'Burhaniye Vergi Dairesi Müdürlüğü'),(150,'Edremit Vergi Dairesi Müdürlüğü'),(151,'Gönen Vergi Dairesi Müdürlüğü'),(152,'Susurluk Vergi Dairesi Müdürlüğü'),(153,'Erdek Vergi Dairesi Müdürlüğü'),(154,'Bigadiç Vergi Dairesi Müdürlüğü'),(155,'Sındırgı Vergi Dairesi Müdürlüğü'),(156,'Dursunbey Vergi Dairesi Müdürlüğü'),(157,'Balya Malmüdürlüğü'),(158,'Havran Malmüdürlüğü'),(159,'İvrindi Malmüdürlüğü'),(160,'Kepsut Malmüdürlüğü'),(161,'Manyas Malmüdürlüğü'),(162,'Savaştepe Malmüdürlüğü'),(163,'Marmara Malmüdürlüğü'),(164,'Gömeç Malmüdürlüğü'),(165,'Bilecik Vergi Dairesi Müdürlüğü'),(166,'Bozüyük Vergi Dairesi Müdürlüğü'),(167,'Gölpazarı Malmüdürlüğü'),(168,'Osmaneli Malmüdürlüğü'),(169,'Pazaryeri Malmüdürlüğü'),(170,'Söğüt Malmüdürlüğü'),(171,'Yenipazar Malmüdürlüğü'),(172,'İnhisar Malmüdürlüğü'),(173,'Bingöl Vergi Dairesi Müdürlüğü'),(174,'Genç Malmüdürlüğü'),(175,'Karlıova Malmüdürlüğü'),(176,'Kiğı Malmüdürlüğü'),(177,'Solhan Malmüdürlüğü'),(178,'Adaklı Malmüdürlüğü'),(179,'Yayladere Malmüdürlüğü'),(180,'Yedisu Malmüdürlüğü'),(181,'Bitlis Vergi Dairesi Müdürlüğü'),(182,'Tatvan Vergi Dairesi Müdürlüğü'),(183,'Adilcevaz Malmüdürlüğü'),(184,'Ahlat Malmüdürlüğü'),(185,'Hizan Malmüdürlüğü'),(186,'Mutki Malmüdürlüğü'),(187,'Güroymak Malmüdürlüğü'),(188,'Bolu Vergi Dairesi Müdürlüğü'),(189,'Gerede Vergi Dairesi Müdürlüğü'),(190,'Göynük Malmüdürlüğü'),(191,'Kıbrıscık Malmüdürlüğü'),(192,'Mengen Malmüdürlüğü'),(193,'Mudurnu Malmüdürlüğü'),(194,'Seben Malmüdürlüğü'),(195,'Dörtdivan Malmüdürlüğü'),(196,'Yeniçağa Malmüdürlüğü'),(197,'Burdur Vergi Dairesi Müdürlüğü'),(198,'Bucak Vergi Dairesi Müdürlüğü'),(199,'Ağlasun Malmüdürlüğü'),(200,'Gölhisar Malmüdürlüğü'),(201,'Tefenni Malmüdürlüğü'),(202,'Yeşilova Malmüdürlüğü'),(203,'Karamanlı Malmüdürlüğü'),(204,'Kemer Malmüdürlüğü'),(205,'Altınyayla Malmüdürlüğü'),(206,'Çavdır Malmüdürlüğü'),(207,'Çeltikçi Malmüdürlüğü'),(208,'Osmangazi Vergi Dairesi Müdürlüğü'),(209,'Yıldırım Vergi Dairesi Müdürlüğü'),(210,'Çekirge Vergi Dairesi Müdürlüğü'),(211,'Setbaşı Vergi Dairesi Müdürlüğü'),(212,'Uludağ Vergi Dairesi Müdürlüğü'),(213,'Yeşil Vergi Dairesi Müdürlüğü'),(214,'Nilüfer Vergi Dairesi Müdürlüğü'),(215,'Ertuğrulgazi Vergi Dairesi Müdürlüğü'),(216,'Gökdere Vergi Dairesi Müdürlüğü'),(217,'Gemlik Vergi Dairesi Müdürlüğü'),(218,'İnegöl Vergi Dairesi Müdürlüğü'),(219,'Karacabey Vergi Dairesi Müdürlüğü'),(220,'Mustafakemalpaşa Vergi Dairesi Müdürlüğü'),(221,'Mudanya Vergi Dairesi Müdürlüğü'),(222,'Orhangazi Vergi Dairesi Müdürlüğü'),(223,'İznik Vergi Dairesi Müdürlüğü'),(224,'Yenişehir Vergi Dairesi Müdürlüğü'),(225,'Keles Malmüdürlüğü'),(226,'Orhaneli Malmüdürlüğü'),(227,'Harmancık Malmüdürlüğü'),(228,'Büyükorhan Malmüdürlüğü'),(229,'Çanakkale Vergi Dairesi Müdürlüğü'),(230,'Biga Vergi Dairesi Müdürlüğü'),(231,'Çan Vergi Dairesi Müdürlüğü'),(232,'Gelibolu Vergi Dairesi Müdürlüğü'),(233,'Ayvacık Malmüdürlüğü'),(234,'Bayramiç Malmüdürlüğü'),(235,'Bozcaada Malmüdürlüğü'),(236,'Eceabat Malmüdürlüğü'),(237,'Ezine Malmüdürlüğü'),(238,'Gökçeada Malmüdürlüğü'),(239,'Lapseki Malmüdürlüğü'),(240,'Yenice Malmüdürlüğü'),(241,'Çankırı Vergi Dairesi Müdürlüğü'),(242,'Çerkeş Malmüdürlüğü'),(243,'Eldivan Malmüdürlüğü'),(244,'Ilgaz Malmüdürlüğü'),(245,'Kurşunlu Malmüdürlüğü'),(246,'Orta Malmüdürlüğü'),(247,'Şabanözü Malmüdürlüğü'),(248,'Yapraklı Malmüdürlüğü'),(249,'Atkaracalar Malmüdürlüğü'),(250,'Kızılırmak Malmüdürlüğü'),(251,'Bayramören Malmüdürlüğü'),(252,'Korgun Malmüdürlüğü'),(253,'Çorum Vergi Dairesi Müdürlüğü'),(254,'Sungurlu Vergi Dairesi Müdürlüğü'),(255,'Alaca Malmüdürlüğü'),(256,'Bayat Malmüdürlüğü'),(257,'İskilip Malmüdürlüğü'),(258,'Kargı Malmüdürlüğü'),(259,'Mecitözü Malmüdürlüğü'),(260,'Ortaköy Malmüdürlüğü'),(261,'Osmancık Malmüdürlüğü'),(262,'Boğazkale Malmüdürlüğü'),(263,'Uğurludağ Malmüdürlüğü'),(264,'Dodurga Malmüdürlüğü'),(265,'Oğuzlar Malmüdürlüğü'),(266,'Laçin Malmüdürlüğü'),(267,'Çınar Vergi Dairesi Müdürlüğü'),(268,'Gökpınar Vergi Dairesi Müdürlüğü'),(269,'Saraylar Vergi Dairesi Müdürlüğü'),(270,'Pamukkale Vergi Dairesi Müdürlüğü'),(271,'Sarayköy Vergi Dairesi Müdürlüğü'),(272,'Acıpayam Vergi Dairesi Müdürlüğü'),(273,'Tavas Vergi Dairesi Müdürlüğü'),(274,'Buldan Vergi Dairesi Müdürlüğü'),(275,'Çal Vergi Dairesi Müdürlüğü'),(276,'Çivril Vergi Dairesi Müdürlüğü'),(277,'Çameli Malmüdürlüğü'),(278,'Çardak Malmüdürlüğü'),(279,'Güney Malmüdürlüğü'),(280,'Kale Malmüdürlüğü'),(281,'Babadağ Malmüdürlüğü'),(282,'Bekilli Malmüdürlüğü'),(283,'Honaz Malmüdürlüğü'),(284,'Serinhisar Malmüdürlüğü'),(285,'Akköy Malmüdürlüğü'),(286,'Baklan Malmüdürlüğü'),(287,'Beyağaç Malmüdürlüğü'),(288,'Bozkurt Malmüdürlüğü'),(289,'Gökalp Vergi Dairesi Müdürlüğü'),(290,'Süleymannazif Vergi Dairesi Müdürlüğü'),(291,'Cahit Sıtkı Tarancı Vergi Dairesi Müdürlüğü'),(292,'Bismil Malmüdürlüğü'),(293,'Çermik Malmüdürlüğü'),(294,'Çınar Malmüdürlüğü'),(295,'Çüngüş Malmüdürlüğü'),(296,'Dicle Malmüdürlüğü'),(297,'Ergani Malmüdürlüğü'),(298,'Hani Malmüdürlüğü'),(299,'Hazro Malmüdürlüğü'),(300,'Kulp Malmüdürlüğü'),(301,'Lice Malmüdürlüğü'),(302,'Silvan Malmüdürlüğü'),(303,'Eğil Malmüdürlüğü'),(304,'Kocaköy Malmüdürlüğü'),(305,'Arda Vergi Dairesi Müdürlüğü'),(306,'Kırkpınar Vergi Dairesi Müdürlüğü'),(307,'Keşan Vergi Dairesi Müdürlüğü'),(308,'Uzunköprü Vergi Dairesi Müdürlüğü'),(309,'Havsa Vergi Dairesi Müdürlüğü'),(310,'İpsala Vergi Dairesi Müdürlüğü'),(311,'Enez Malmüdürlüğü'),(312,'Lalapaşa Malmüdürlüğü'),(313,'Meriç Malmüdürlüğü'),(314,'Süloğlu Malmüdürlüğü'),(315,'Harput Vergi Dairesi Müdürlüğü'),(316,'Hazar Vergi Dairesi Müdürlüğü'),(317,'Ağın Malmüdürlüğü'),(318,'Baskil Malmüdürlüğü'),(319,'Karakoçan Malmüdürlüğü'),(320,'Keban Malmüdürlüğü'),(321,'Maden Malmüdürlüğü'),(322,'Palu Malmüdürlüğü'),(323,'Sivrice Malmüdürlüğü'),(324,'Arıcak Malmüdürlüğü'),(325,'Kovancılar Malmüdürlüğü'),(326,'Alacakaya Malmüdürlüğü'),(327,'Fevzipaşa Vergi Dairesi Müdürlüğü'),(328,'Çayırlı Malmüdürlüğü'),(329,'İliç Malmüdürlüğü'),(330,'Kemah Malmüdürlüğü'),(331,'Kemaliye Malmüdürlüğü'),(332,'Refahiye Malmüdürlüğü'),(333,'Tercan Malmüdürlüğü'),(334,'Üzümlü Malmüdürlüğü'),(335,'Otlukbeli Malmüdürlüğü'),(336,'Aziziye Vergi Dairesi Müdürlüğü'),(337,'Kazımkarabekir Vergi Dairesi Müdürlüğü'),(338,'Aşkale Malmüdürlüğü'),(339,'Çat Malmüdürlüğü'),(340,'Hınıs Malmüdürlüğü'),(341,'Horasan Malmüdürlüğü'),(342,'İspir Malmüdürlüğü'),(343,'Karayazı Malmüdürlüğü'),(344,'Narman Malmüdürlüğü'),(345,'Oltu Malmüdürlüğü'),(346,'Olur Malmüdürlüğü'),(347,'Pasinler Malmüdürlüğü'),(348,'Şenkaya Malmüdürlüğü'),(349,'Tekman Malmüdürlüğü'),(350,'Tortum Malmüdürlüğü'),(351,'Karaçoban Malmüdürlüğü'),(352,'Uzundere Malmüdürlüğü'),(353,'Pazaryolu Malmüdürlüğü'),(354,'Aziziye (Ilıca) Malmüdürlüğü'),(355,'Köprüköy Malmüdürlüğü'),(356,'Yunus Emre Vergi Dairesi Müdürlüğü'),(357,'2 Eylül Vergi Dairesi Müdürlüğü'),(358,'Battalgazi Vergi Dairesi Müdürlüğü'),(359,'Taşbaşı Vergi Dairesi Müdürlüğü'),(360,'Çifteler Vergi Dairesi Müdürlüğü'),(361,'Sivrihisar Vergi Dairesi Müdürlüğü'),(362,'Mahmudiye Malmüdürlüğü'),(363,'Mihalıççık Malmüdürlüğü'),(364,'Sarıcakaya Malmüdürlüğü'),(365,'Seyitgazi Malmüdürlüğü'),(366,'Alpu Malmüdürlüğü'),(367,'Beylikova Malmüdürlüğü'),(368,'İnönü Malmüdürlüğü'),(369,'Günyüzü Malmüdürlüğü'),(370,'Han Malmüdürlüğü'),(371,'Mihalgazi Malmüdürlüğü'),(372,'Suburcu Vergi Dairesi Müdürlüğü'),(373,'Şehitkâmil Vergi Dairesi Müdürlüğü'),(374,'Şahinbey Vergi Dairesi Müdürlüğü'),(375,'Gazikent Vergi Dairesi Müdürlüğü'),(376,'Kozanlı Vergi Dairesi Müdürlüğü'),(377,'Nizip Vergi Dairesi Müdürlüğü'),(378,'İslahiye Vergi Dairesi Müdürlüğü'),(379,'Araban Malmüdürlüğü'),(380,'Oğuzeli Malmüdürlüğü'),(381,'Yavuzeli Malmüdürlüğü'),(382,'Karkamış Malmüdürlüğü'),(383,'Nurdağı Malmüdürlüğü'),(384,'Giresun Vergi Dairesi Müdürlüğü'),(385,'Bulancak Vergi Dairesi Müdürlüğü'),(386,'Alucra Malmüdürlüğü'),(387,'Dereli Malmüdürlüğü'),(388,'Espiye Malmüdürlüğü'),(389,'Eynesil Malmüdürlüğü'),(390,'Görele Malmüdürlüğü'),(391,'Keşap Malmüdürlüğü'),(392,'Şebinkarahisar Malmüdürlüğü'),(393,'Tirebolu Malmüdürlüğü'),(394,'Piraziz Malmüdürlüğü'),(395,'Yağlıdere Malmüdürlüğü'),(396,'Çanakçı Malmüdürlüğü'),(397,'Güce Malmüdürlüğü'),(398,'Çamoluk Malmüdürlüğü'),(399,'Doğankent Malmüdürlüğü'),(400,'Gümüşhane Vergi Dairesi Müdürlüğü'),(401,'Kelkit Malmüdürlüğü'),(402,'Şiran Malmüdürlüğü'),(403,'Torul Malmüdürlüğü'),(404,'Köse Malmüdürlüğü'),(405,'Kürtün Malmüdürlüğü'),(406,'Hakkari Vergi Dairesi Müdürlüğü'),(407,'Yüksekova Vergi Dairesi Müdürlüğü'),(408,'Çukurca Malmüdürlüğü'),(409,'Şemdinli Malmüdürlüğü'),(410,'23 Temmuz Vergi Dairesi Müdürlüğü'),(411,'Antakya Vergi Dairesi Müdürlüğü'),(412,'Şükrükanatlı Vergi Dairesi Müdürlüğü'),(413,'Sahil Vergi Dairesi Müdürlüğü'),(414,'Akdeniz Vergi Dairesi Müdürlüğü'),(415,'Asım Gündüz Vergi Dairesi Müdürlüğü'),(416,'Dörtyol Vergi Dairesi Müdürlüğü'),(417,'Kırıkhan Vergi Dairesi Müdürlüğü'),(418,'Reyhanlı Vergi Dairesi Müdürlüğü'),(419,'Samandağ Vergi Dairesi Müdürlüğü'),(420,'Altınözü Malmüdürlüğü'),(421,'Hassa Malmüdürlüğü'),(422,'Yayladağı Malmüdürlüğü'),(423,'Erzin Malmüdürlüğü'),(424,'Belen Malmüdürlüğü'),(425,'Kumlu Malmüdürlüğü'),(426,'Davraz Vergi Dairesi Müdürlüğü'),(427,'Kaymakkapı Vergi Dairesi Müdürlüğü'),(428,'Eğirdir Vergi Dairesi Müdürlüğü'),(429,'Yalvaç Vergi Dairesi Müdürlüğü'),(430,'Atabey Malmüdürlüğü'),(431,'Gelendost Malmüdürlüğü'),(432,'Keçiborlu Malmüdürlüğü'),(433,'Senirkent Malmüdürlüğü'),(434,'Sütçüler Malmüdürlüğü'),(435,'Şarkikaraağaç Malmüdürlüğü'),(436,'Uluborlu Malmüdürlüğü'),(437,'Aksu Malmüdürlüğü'),(438,'Gönen Malmüdürlüğü'),(439,'Yenişarbademli Malmüdürlüğü'),(440,'İstiklâl Vergi Dairesi Müdürlüğü'),(441,'Uray Vergi Dairesi Müdürlüğü'),(442,'Liman Vergi Dairesi Müdürlüğü'),(443,'Toros Vergi Dairesi Müdürlüğü'),(444,'Erdemli Vergi Dairesi Müdürlüğü'),(445,'Silifke Vergi Dairesi Müdürlüğü'),(446,'Anamur Vergi Dairesi Müdürlüğü'),(447,'Kızılmurat Vergi Dairesi Müdürlüğü'),(448,'Şehitkerim Vergi Dairesi Müdürlüğü'),(449,'Gülnar Malmüdürlüğü'),(450,'Mut Malmüdürlüğü'),(451,'Aydıncık Malmüdürlüğü'),(452,'Bozyazı Malmüdürlüğü'),(453,'Çamlıyayla Malmüdürlüğü'),(454,'Boğaziçi Kurumlar Vergi Dairesi Müdürlüğü'),(455,'Marmara Kurumlar Vergi Dairesi Müdürlüğü'),(456,'Ulaştırma Vergi Dairesi Müdürlüğü'),(457,'Beyoğlu Vergi Dairesi Müdürlüğü'),(458,'Nuruosmaniye Vergi Dairesi Müdürlüğü'),(459,'Halkalı Vergi Dairesi Müdürlüğü'),(460,'Dış Ticaret Vergi Dairesi Müdürlüğü'),(461,'Anadolu Kurumlar Vergi Dairesi Müdürlüğü'),(462,'Davutpaşa Vergi Dairesi Müdürlüğü'),(463,'Esenler Vergi Dairesi Müdürlüğü'),(464,'Fatih Vergi Dairesi Müdürlüğü'),(465,'Küçükköy Vergi Dairesi Müdürlüğü'),(466,'Laleli Vergi Dairesi Müdürlüğü'),(467,'Merter Vergi Dairesi Müdürlüğü'),(468,'Mevlanakapı Vergi Dairesi Müdürlüğü'),(469,'Rami Vergi Dairesi Müdürlüğü'),(470,'Sultanbeyli Vergi Dairesi Müdürlüğü'),(471,'Süleymaniye Vergi Dairesi Müdürlüğü'),(472,'Tuzla Vergi Dairesi Müdürlüğü'),(473,'Kozyatağı Vergi Dairesi Müdürlüğü'),(474,'Maslak Vergi Dairesi Müdürlüğü'),(475,'Zincirlikuyu Vergi Dairesi Müdürlüğü'),(476,'İkitelli Vergi Dairesi Müdürlüğü'),(477,'Çapa Vergi Dairesi Müdürlüğü'),(478,'Beşiktaş Vergi Dairesi Müdürlüğü'),(479,'Ümraniye Vergi Dairesi Müdürlüğü'),(480,'Yeditepe Veraset ve Harçlar Vergi Dairesi Mü'),(481,'Kasımpaşa Vergi Dairesi Müdürlüğü'),(482,'Erenköy Vergi Dairesi Müdürlüğü'),(483,'Hisar Veraset ve Harçlar Vergi Dairesi Müdür'),(484,'Tuna Vergi Dairesi Müdürlüğü'),(485,'Rıhtım Veraset ve Harçlar Vergi Dairesi Müdü'),(486,'Güngören Vergi Dairesi Müdürlüğü'),(487,'Kocasinan Vergi Dairesi Müdürlüğü'),(488,'Güneşli Vergi Dairesi Müdürlüğü'),(489,'Küçükyalı Vergi Dairesi Müdürlüğü'),(490,'Pendik Vergi Dairesi Müdürlüğü'),(491,'Bayrampaşa Vergi Dairesi Müdürlüğü'),(492,'Beyazıt Vergi Dairesi Müdürlüğü'),(493,'Galata Vergi Dairesi Müdürlüğü'),(494,'Gaziosmanpaşa Vergi Dairesi Müdürlüğü'),(495,'Göztepe Vergi Dairesi Müdürlüğü'),(496,'Hocapaşa Vergi Dairesi Müdürlüğü'),(497,'Kadıköy Vergi Dairesi Müdürlüğü'),(498,'Kocamustafapaşa Vergi Dairesi Müdürlüğü'),(499,'Mecidiyeköy Vergi Dairesi Müdürlüğü'),(500,'Mercan Vergi Dairesi Müdürlüğü'),(501,'Şişli Vergi Dairesi Müdürlüğü'),(502,'Üsküdar Vergi Dairesi Müdürlüğü'),(503,'Kağıthane Vergi Dairesi Müdürlüğü'),(504,'Zeytinburnu Vergi Dairesi Müdürlüğü'),(505,'Beykoz Vergi Dairesi Müdürlüğü'),(506,'Sarıyer Vergi Dairesi Müdürlüğü'),(507,'Bakırköy Vergi Dairesi Müdürlüğü'),(508,'Kartal Vergi Dairesi Müdürlüğü'),(509,'Sultanahmet Vergi Dairesi Müdürlüğü'),(510,'Nakil Vasıtaları Vergi Dairesi Müdürlüğü'),(511,'Sarıgazi Vergi Dairesi Müdürlüğü'),(512,'Atışalanı Vergi Dairesi Müdürlüğü'),(513,'Yakacık Vergi Dairesi Müdürlüğü'),(514,'Yenibosna Vergi Dairesi Müdürlüğü'),(515,'Avcılar Vergi Dairesi Müdürlüğü'),(516,'Küçükçekmece Vergi Dairesi Müdürlüğü'),(517,'Beylikdüzü Vergi Dairesi Müdürlüğü'),(518,'Çatalca Vergi Dairesi Müdürlüğü'),(519,'Adalar Vergi Dairesi Müdürlüğü'),(520,'Silivri Vergi Dairesi Müdürlüğü'),(521,'Büyükçekmece Vergi Dairesi Müdürlüğü'),(522,'Şile Vergi Dairesi Müdürlüğü'),(523,'Bornova Vergi Dairesi Müdürlüğü'),(524,'Çakabey Vergi Dairesi Müdürlüğü'),(525,'Kordon Vergi Dairesi Müdürlüğü'),(526,'Hasan Tahsin Vergi Dairesi Müdürlüğü'),(527,'9 Eylül Vergi Dairesi Müdürlüğü'),(528,'Yamanlar Vergi Dairesi Müdürlüğü'),(529,'Basmane Vergi Dairesi Müdürlüğü'),(530,'Karşıyaka Vergi Dairesi Müdürlüğü'),(531,'Kemeraltı Vergi Dairesi Müdürlüğü'),(532,'Konak Vergi Dairesi Müdürlüğü'),(533,'Şirinyer Vergi Dairesi Müdürlüğü'),(534,'Kadifekale Vergi Dairesi Müdürlüğü'),(535,'Taşıtlar Vergi Dairesi Müdürlüğü'),(536,'Belkahve Vergi Dairesi Müdürlüğü'),(537,'Balçova Vergi Dairesi Müdürlüğü'),(538,'Gaziemir Vergi Dairesi Müdürlüğü'),(539,'Ege Vergi Dairesi Müdürlüğü'),(540,'Çiğli Vergi Dairesi Müdürlüğü'),(541,'Bayındır Vergi Dairesi Müdürlüğü'),(542,'Bergama Vergi Dairesi Müdürlüğü'),(543,'Menemen Vergi Dairesi Müdürlüğü'),(544,'Ödemiş Vergi Dairesi Müdürlüğü'),(545,'Tire Vergi Dairesi Müdürlüğü'),(546,'Torbalı Vergi Dairesi Müdürlüğü'),(547,'Kemalpaşa Vergi Dairesi Müdürlüğü'),(548,'Urla Vergi Dairesi Müdürlüğü'),(549,'Selçuk Vergi Dairesi Müdürlüğü'),(550,'Kınık Vergi Dairesi Müdürlüğü'),(551,'Kiraz Vergi Dairesi Müdürlüğü'),(552,'Çeşme Vergi Dairesi Müdürlüğü'),(553,'Aliağa Vergi Dairesi Müdürlüğü'),(554,'Menderes Vergi Dairesi Müdürlüğü'),(555,'Dikili Malmüdürlüğü'),(556,'Foça Malmüdürlüğü'),(557,'Karaburun Malmüdürlüğü'),(558,'Seferihisar Malmüdürlüğü'),(559,'Beydağ Malmüdürlüğü'),(560,'Kars Vergi Dairesi Müdürlüğü'),(561,'Arpaçay Malmüdürlüğü'),(562,'Digor Malmüdürlüğü'),(563,'Kağızman Malmüdürlüğü'),(564,'Sarıkamış Malmüdürlüğü'),(565,'Selim Malmüdürlüğü'),(566,'Susuz Malmüdürlüğü'),(567,'Akyaka Malmüdürlüğü'),(568,'Kastamonu Vergi Dairesi Müdürlüğü'),(569,'Tosya Vergi Dairesi Müdürlüğü'),(570,'Taşköprü Vergi Dairesi Müdürlüğü'),(571,'Araç Malmüdürlüğü'),(572,'Azdavay Malmüdürlüğü'),(573,'Bozkurt Malmüdürlüğü'),(574,'Cide Malmüdürlüğü'),(575,'Çatalzeytin Malmüdürlüğü'),(576,'Daday Malmüdürlüğü'),(577,'Devrekani Malmüdürlüğü'),(578,'İnebolu Malmüdürlüğü'),(579,'Küre Malmüdürlüğü'),(580,'Abana Malmüdürlüğü'),(581,'İhsangazi Malmüdürlüğü'),(582,'Pınarbaşı Malmüdürlüğü'),(583,'Şenpazar Malmüdürlüğü'),(584,'Ağlı Malmüdürlüğü'),(585,'Doğanyurt Malmüdürlüğü'),(586,'Hanönü Malmüdürlüğü'),(587,'Seydiler Malmüdürlüğü'),(588,'Mimar Sinan Vergi Dairesi Müdürlüğü'),(589,'Erciyes Vergi Dairesi Müdürlüğü'),(590,'Kaleönü Vergi Dairesi Müdürlüğü'),(591,'Gevher Nesibe Vergi Dairesi Müdürlüğü'),(592,'Develi Vergi Dairesi Müdürlüğü'),(593,'Pınarbaşı Vergi Dairesi Müdürlüğü'),(594,'Bünyan Vergi Dairesi Müdürlüğü'),(595,'Felahiye Malmüdürlüğü'),(596,'İncesu Malmüdürlüğü'),(597,'Sarıoğlan Malmüdürlüğü'),(598,'Sarız Malmüdürlüğü'),(599,'Tomarza Malmüdürlüğü'),(600,'Yahyalı Malmüdürlüğü'),(601,'Yeşilhisar Malmüdürlüğü'),(602,'Akkışla Malmüdürlüğü'),(603,'Hacılar Malmüdürlüğü'),(604,'Özvatan Malmüdürlüğü'),(605,'Kırklareli Vergi Dairesi Müdürlüğü'),(606,'Lüleburgaz Vergi Dairesi Müdürlüğü'),(607,'Babaeski Vergi Dairesi Müdürlüğü'),(608,'Demirköy Malmüdürlüğü'),(609,'Kofçaz Malmüdürlüğü'),(610,'Pehlivanköy Malmüdürlüğü'),(611,'Pınarhisar Malmüdürlüğü'),(612,'Vize Malmüdürlüğü'),(613,'Kırşehir Vergi Dairesi Müdürlüğü'),(614,'Kaman Vergi Dairesi Müdürlüğü'),(615,'Çiçekdağı Malmüdürlüğü'),(616,'Mucur Malmüdürlüğü'),(617,'Akpınar Malmüdürlüğü'),(618,'Akçakent Malmüdürlüğü'),(619,'Boztepe Malmüdürlüğü'),(620,'Tepecik Vergi Dairesi Müdürlüğü'),(621,'Alemdar Vergi Dairesi Müdürlüğü'),(622,'Acısu Vergi Dairesi Müdürlüğü'),(623,'Uluçınar Vergi Dairesi Müdürlüğü'),(624,'İlyasbey Vergi Dairesi Müdürlüğü'),(625,'Gölcük Vergi Dairesi Müdürlüğü'),(626,'Karamürsel Vergi Dairesi Müdürlüğü'),(627,'Körfez Vergi Dairesi Müdürlüğü'),(628,'Derince Vergi Dairesi Müdürlüğü'),(629,'Kandıra Malmüdürlüğü'),(630,'Selçuk Vergi Dairesi Müdürlüğü'),(631,'Mevlana Vergi Dairesi Müdürlüğü'),(632,'Meram Vergi Dairesi Müdürlüğü'),(633,'Alaaddin Vergi Dairesi Müdürlüğü'),(634,'Akşehir Vergi Dairesi Müdürlüğü'),(635,'Ereğli Vergi Dairesi Müdürlüğü'),(636,'Beyşehir Vergi Dairesi Müdürlüğü'),(637,'Cihanbeyli Vergi Dairesi Müdürlüğü'),(638,'Çumra Vergi Dairesi Müdürlüğü'),(639,'Seydişehir Vergi Dairesi Müdürlüğü'),(640,'Ilgın Vergi Dairesi Müdürlüğü'),(641,'Kulu Vergi Dairesi Müdürlüğü'),(642,'Bozkır Malmüdürlüğü'),(643,'Doğanhisar Malmüdürlüğü'),(644,'Hadim Malmüdürlüğü'),(645,'Kadınhanı Malmüdürlüğü'),(646,'Karapınar Malmüdürlüğü'),(647,'Sarayönü Malmüdürlüğü'),(648,'Yunak Malmüdürlüğü'),(649,'Akören Malmüdürlüğü'),(650,'Altınekin Malmüdürlüğü'),(651,'Derebucak Malmüdürlüğü'),(652,'Hüyük Malmüdürlüğü'),(653,'Taşkent Malmüdürlüğü'),(654,'Emirgazi Malmüdürlüğü'),(655,'Güneysınır Malmüdürlüğü'),(656,'Halkapınar Malmüdürlüğü'),(657,'Tuzlukçu Malmüdürlüğü'),(658,'Ahırlı Malmüdürlüğü'),(659,'Çeltik Malmüdürlüğü'),(660,'Derbent Malmüdürlüğü'),(661,'Yalıhüyük Malmüdürlüğü'),(662,'30 Ağustos Vergi Dairesi Müdürlüğü'),(663,'Çinili Vergi Dairesi Müdürlüğü'),(664,'Gediz Vergi Dairesi Müdürlüğü'),(665,'Simav Vergi Dairesi Müdürlüğü'),(666,'Tavşanlı Vergi Dairesi Müdürlüğü'),(667,'Emet Vergi Dairesi Müdürlüğü'),(668,'Altıntaş Malmüdürlüğü'),(669,'Domaniç Malmüdürlüğü'),(670,'Aslanapa Malmüdürlüğü'),(671,'Dumlupınar Malmüdürlüğü'),(672,'Hisarcık Malmüdürlüğü'),(673,'Şaphane Malmüdürlüğü'),(674,'Çavdarhisar Malmüdürlüğü'),(675,'Pazarlar Malmüdürlüğü'),(676,'Fırat Vergi Dairesi Müdürlüğü'),(677,'Beydağı Vergi Dairesi Müdürlüğü'),(678,'Akçadağ Malmüdürlüğü'),(679,'Arapgir Malmüdürlüğü'),(680,'Arguvan Malmüdürlüğü'),(681,'Darende Malmüdürlüğü'),(682,'Doğanşehir Malmüdürlüğü'),(683,'Hekimhan Malmüdürlüğü'),(684,'Pütürge Malmüdürlüğü'),(685,'Yeşilyurt Malmüdürlüğü'),(686,'Battalgazi Malmüdürlüğü'),(687,'Doğanyol Malmüdürlüğü'),(688,'Kale Malmüdürlüğü'),(689,'Kuluncak Malmüdürlüğü'),(690,'Yazıhan Malmüdürlüğü'),(691,'Alaybey Vergi Dairesi Müdürlüğü'),(692,'Mesir Vergi Dairesi Müdürlüğü'),(693,'Akhisar Vergi Dairesi Müdürlüğü'),(694,'Alaşehir Vergi Dairesi Müdürlüğü'),(695,'Demirci Vergi Dairesi Müdürlüğü'),(696,'Kırkağaç Vergi Dairesi Müdürlüğü'),(697,'Salihli Adil Oral Vergi Dairesi Müdürlüğü'),(698,'Sarıgöl Vergi Dairesi Müdürlüğü'),(699,'Saruhanlı Vergi Dairesi Müdürlüğü'),(700,'Soma Vergi Dairesi Müdürlüğü'),(701,'Turgutlu Vergi Dairesi Müdürlüğü'),(702,'Gördes Vergi Dairesi Müdürlüğü'),(703,'Kula Vergi Dairesi Müdürlüğü'),(704,'Selendi Malmüdürlüğü'),(705,'Ahmetli Malmüdürlüğü'),(706,'Gölmarmara Malmüdürlüğü'),(707,'Köprübaşı Malmüdürlüğü'),(708,'Aslanbey Vergi Dairesi Müdürlüğü'),(709,'Aksu Vergi Dairesi Müdürlüğü'),(710,'Elbistan Vergi Dairesi Müdürlüğü'),(711,'Afşin Vergi Dairesi Müdürlüğü'),(712,'Pazarcık Vergi Dairesi Müdürlüğü'),(713,'Andırın Malmüdürlüğü'),(714,'Göksun Malmüdürlüğü'),(715,'Türkoğlu Malmüdürlüğü'),(716,'Çağlayancerit Malmüdürlüğü'),(717,'Ekinözü Malmüdürlüğü'),(718,'Nurhak Malmüdürlüğü'),(719,'Mardin Vergi Dairesi Müdürlüğü'),(720,'Kızıltepe Vergi Dairesi Müdürlüğü'),(721,'Nusaybin Vergi Dairesi Müdürlüğü'),(722,'Derik Malmüdürlüğü'),(723,'Mazıdağı Malmüdürlüğü'),(724,'Midyat Malmüdürlüğü'),(725,'Ömerli Malmüdürlüğü'),(726,'Savur Malmüdürlüğü'),(727,'Dargeçit Malmüdürlüğü'),(728,'Yeşilli Malmüdürlüğü'),(729,'Muğla Vergi Dairesi Müdürlüğü'),(730,'Bodrum Vergi Dairesi Müdürlüğü'),(731,'Fethiye Vergi Dairesi Müdürlüğü'),(732,'Köyceğiz Vergi Dairesi Müdürlüğü'),(733,'Milas Vergi Dairesi Müdürlüğü'),(734,'Marmaris Vergi Dairesi Müdürlüğü'),(735,'Yatağan Vergi Dairesi Müdürlüğü'),(736,'Datça Malmüdürlüğü'),(737,'Ula Malmüdürlüğü'),(738,'Dalaman Malmüdürlüğü'),(739,'Ortaca Malmüdürlüğü'),(740,'Kavaklıdere Malmüdürlüğü'),(741,'Muş Vergi Dairesi Müdürlüğü'),(742,'Bulanık Malmüdürlüğü'),(743,'Malazgirt Malmüdürlüğü'),(744,'Varto Malmüdürlüğü'),(745,'Hasköy Malmüdürlüğü'),(746,'Korkut Malmüdürlüğü'),(747,'Nevşehir Vergi Dairesi Müdürlüğü'),(748,'Avanos Malmüdürlüğü'),(749,'Derinkuyu Malmüdürlüğü'),(750,'Gülşehir Malmüdürlüğü'),(751,'Hacıbektaş Malmüdürlüğü'),(752,'Kozaklı Malmüdürlüğü'),(753,'Ürgüp Malmüdürlüğü'),(754,'Acıgöl Malmüdürlüğü'),(755,'Niğde Vergi Dairesi Müdürlüğü'),(756,'Bor Vergi Dairesi Müdürlüğü'),(757,'Çamardı Malmüdürlüğü'),(758,'Ulukışla Malmüdürlüğü'),(759,'Altunhisar Malmüdürlüğü'),(760,'Çiftlik Malmüdürlüğü'),(761,'Boztepe Vergi Dairesi Müdürlüğü'),(762,'Köprübaşı Vergi Dairesi Müdürlüğü'),(763,'Fatsa Vergi Dairesi Müdürlüğü'),(764,'Ünye Vergi Dairesi Müdürlüğü'),(765,'Akkuş Malmüdürlüğü'),(766,'Aybastı Malmüdürlüğü'),(767,'Gölköy Malmüdürlüğü'),(768,'Korgan Malmüdürlüğü'),(769,'Kumru Malmüdürlüğü'),(770,'Mesudiye Malmüdürlüğü'),(771,'Perşembe Malmüdürlüğü'),(772,'Ulubey Malmüdürlüğü'),(773,'Gülyalı Malmüdürlüğü'),(774,'Gürgentepe Malmüdürlüğü'),(775,'Çamaş Malmüdürlüğü'),(776,'Çatalpınar Malmüdürlüğü'),(777,'Çaybaşı Malmüdürlüğü'),(778,'İkizce Malmüdürlüğü'),(779,'Kabadüz Malmüdürlüğü'),(780,'Kabataş Malmüdürlüğü'),(781,'Kaçkar Vergi Dairesi Müdürlüğü'),(782,'Yeşilçay Vergi Dairesi Müdürlüğü'),(783,'Çayeli Vergi Dairesi Müdürlüğü'),(784,'Pazar Vergi Dairesi Müdürlüğü'),(785,'Ardeşen Vergi Dairesi Müdürlüğü'),(786,'Çamlıhemşin Malmüdürlüğü'),(787,'Fındıklı Malmüdürlüğü'),(788,'İkizdere Malmüdürlüğü'),(789,'Kalkandere Malmüdürlüğü'),(790,'Güneysu Malmüdürlüğü'),(791,'Derepazarı Malmüdürlüğü'),(792,'Hemşin Malmüdürlüğü'),(793,'İyidere Malmüdürlüğü'),(794,'Gümrükönü Vergi Dairesi Müdürlüğü'),(795,'Ali Fuat Cebesoy Vergi Dairesi Müdürlüğü'),(796,'Akyazı Vergi Dairesi Müdürlüğü'),(797,'Geyve Vergi Dairesi Müdürlüğü'),(798,'Hendek Vergi Dairesi Müdürlüğü'),(799,'Karasu Vergi Dairesi Müdürlüğü'),(800,'Kaynarca Malmüdürlüğü'),(801,'Sapanca Malmüdürlüğü'),(802,'Kocaali Malmüdürlüğü'),(803,'Pamukova Malmüdürlüğü'),(804,'Taraklı Malmüdürlüğü'),(805,'Karapürçek Malmüdürlüğü'),(806,'19 Mayıs Vergi Dairesi Müdürlüğü'),(807,'Gaziler Vergi Dairesi Müdürlüğü'),(808,'Zafer Vergi Dairesi Müdürlüğü'),(809,'Bafra Vergi Dairesi Müdürlüğü'),(810,'Çarşamba Vergi Dairesi Müdürlüğü'),(811,'Terme Vergi Dairesi Müdürlüğü'),(812,'Havza Vergi Dairesi Müdürlüğü'),(813,'Alaçam Malmüdürlüğü'),(814,'Kavak Malmüdürlüğü'),(815,'Ladik Malmüdürlüğü'),(816,'Vezirköprü Malmüdürlüğü'),(817,'Asarcık Malmüdürlüğü'),(818,'Ondokuz Mayıs Malmüdürlüğü'),(819,'Salıpazarı Malmüdürlüğü'),(820,'Tekkeköy Malmüdürlüğü'),(821,'Ayvacık Malmüdürlüğü'),(822,'Yakakent Malmüdürlüğü'),(823,'Siirt Vergi Dairesi Müdürlüğü'),(824,'Baykan Malmüdürlüğü'),(825,'Eruh Malmüdürlüğü'),(826,'Kurtalan Malmüdürlüğü'),(827,'Pervari Malmüdürlüğü'),(828,'Şirvan Malmüdürlüğü'),(829,'Sinop Vergi Dairesi Müdürlüğü'),(830,'Boyabat Vergi Dairesi Müdürlüğü'),(831,'Ayancık Malmüdürlüğü'),(832,'Durağan Malmüdürlüğü'),(833,'Erfelek Malmüdürlüğü'),(834,'Gerze Malmüdürlüğü'),(835,'Türkeli Malmüdürlüğü'),(836,'Dikmen Malmüdürlüğü'),(837,'Saraydüzü Malmüdürlüğü'),(838,'Kale Vergi Dairesi Müdürlüğü'),(839,'Site Vergi Dairesi Müdürlüğü'),(840,'Şarkışla Vergi Dairesi Müdürlüğü'),(841,'Divriği Malmüdürlüğü'),(842,'Gemerek Malmüdürlüğü'),(843,'Gürün Malmüdürlüğü'),(844,'Hafik Malmüdürlüğü'),(845,'İmranlı Malmüdürlüğü'),(846,'Kangal Malmüdürlüğü'),(847,'Koyulhisar Malmüdürlüğü'),(848,'Suşehri Malmüdürlüğü'),(849,'Yıldızeli Malmüdürlüğü'),(850,'Zara Malmüdürlüğü'),(851,'Akıncılar Malmüdürlüğü'),(852,'Altınyayla Malmüdürlüğü'),(853,'Doğanşar Malmüdürlüğü'),(854,'Gölova Malmüdürlüğü'),(855,'Ulaş Malmüdürlüğü'),(856,'Süleymanpaşa Vergi Dairesi Müdürlüğü'),(857,'Namık Kemal Vergi Dairesi Müdürlüğü'),(858,'Çerkezköy Vergi Dairesi Müdürlüğü'),(859,'Çorlu Vergi Dairesi Müdürlüğü'),(860,'Hayrabolu Vergi Dairesi Müdürlüğü'),(861,'Malkara Vergi Dairesi Müdürlüğü'),(862,'Muratlı Vergi Dairesi Müdürlüğü'),(863,'Saray Malmüdürlüğü'),(864,'Şarköy Malmüdürlüğü'),(865,'Marmara Ereğlisi Malmüdürlüğü'),(866,'Tokat Vergi Dairesi Müdürlüğü'),(867,'Erbaa Vergi Dairesi Müdürlüğü'),(868,'Niksar Vergi Dairesi Müdürlüğü'),(869,'Turhal Vergi Dairesi Müdürlüğü'),(870,'Zile Vergi Dairesi Müdürlüğü'),(871,'Almus Malmüdürlüğü'),(872,'Artova Malmüdürlüğü'),(873,'Reşadiye Malmüdürlüğü'),(874,'Pazar Malmüdürlüğü'),(875,'Yeşilyurt Malmüdürlüğü'),(876,'Başçiftlik Malmüdürlüğü'),(877,'Sulusaray Malmüdürlüğü'),(878,'Hızırbey Vergi Dairesi Müdürlüğü'),(879,'Karadeniz Vergi Dairesi Müdürlüğü'),(880,'Akçaabat Vergi Dairesi Müdürlüğü'),(881,'Of Vergi Dairesi Müdürlüğü'),(882,'Vakfıkebir Vergi Dairesi Müdürlüğü'),(883,'Araklı Malmüdürlüğü'),(884,'Arsin Malmüdürlüğü'),(885,'Çaykara Malmüdürlüğü'),(886,'Maçka Malmüdürlüğü'),(887,'Sürmene Malmüdürlüğü'),(888,'Tonya Malmüdürlüğü'),(889,'Yomra Malmüdürlüğü'),(890,'Beşikdüzü Malmüdürlüğü'),(891,'Şalpazarı Malmüdürlüğü'),(892,'Çarşıbaşı Malmüdürlüğü'),(893,'Dernekpazarı Malmüdürlüğü'),(894,'Düzköy Malmüdürlüğü'),(895,'Hayrat Malmüdürlüğü'),(896,'Köprübaşı Malmüdürlüğü'),(897,'Tunceli Vergi Dairesi Müdürlüğü'),(898,'Çemişgezek Malmüdürlüğü'),(899,'Hozat Malmüdürlüğü'),(900,'Mazgirt Malmüdürlüğü'),(901,'Nazimiye Malmüdürlüğü'),(902,'Ovacık Malmüdürlüğü'),(903,'Pertek Malmüdürlüğü'),(904,'Pülümür Malmüdürlüğü'),(905,'Şehitlik Vergi Dairesi Müdürlüğü'),(906,'Topçu Meydanı Vergi Dairesi Müdürlüğü'),(907,'Siverek Vergi Dairesi Müdürlüğü'),(908,'Viranşehir Vergi Dairesi Müdürlüğü'),(909,'Birecik Vergi Dairesi Müdürlüğü'),(910,'Akçakale Malmüdürlüğü'),(911,'Bozova Malmüdürlüğü'),(912,'Halfeti Malmüdürlüğü'),(913,'Hilvan Malmüdürlüğü'),(914,'Suruç Malmüdürlüğü'),(915,'Ceylanpınar Malmüdürlüğü'),(916,'Harran Malmüdürlüğü'),(917,'Uşak Vergi Dairesi Müdürlüğü'),(918,'Banaz Vergi Dairesi Müdürlüğü'),(919,'Eşme Vergi Dairesi Müdürlüğü'),(920,'Karahallı Malmüdürlüğü'),(921,'Ulubey Malmüdürlüğü'),(922,'Sivaslı Malmüdürlüğü'),(923,'Van Vergi Dairesi Müdürlüğü'),(924,'Erciş Vergi Dairesi Müdürlüğü'),(925,'Başkale Malmüdürlüğü'),(926,'Çatak Malmüdürlüğü'),(927,'Gevaş Malmüdürlüğü'),(928,'Gürpınar Malmüdürlüğü'),(929,'Muradiye Malmüdürlüğü'),(930,'Özalp Malmüdürlüğü'),(931,'Bahçesaray Malmüdürlüğü'),(932,'Çaldıran Malmüdürlüğü'),(933,'Edremit Malmüdürlüğü'),(934,'Saray Malmüdürlüğü'),(935,'Yozgat Vergi Dairesi Müdürlüğü'),(936,'Boğazlıyan Vergi Dairesi Müdürlüğü'),(937,'Sorgun Vergi Dairesi Müdürlüğü'),(938,'Yerköy Vergi Dairesi Müdürlüğü'),(939,'Akdağmadeni Malmüdürlüğü'),(940,'Çayıralan Malmüdürlüğü'),(941,'Çekerek Malmüdürlüğü'),(942,'Sarıkaya Malmüdürlüğü'),(943,'Şefaatli Malmüdürlüğü'),(944,'Aydıncık Malmüdürlüğü'),(945,'Çandır Malmüdürlüğü'),(946,'Kadışehri Malmüdürlüğü'),(947,'Saraykent Malmüdürlüğü'),(948,'Yenifakılı Malmüdürlüğü'),(949,'Uzunmehmet Vergi Dairesi Müdürlüğü'),(950,'Kara Elmas Vergi Dairesi Müdürlüğü'),(951,'Ereğli Vergi Dairesi Müdürlüğü'),(952,'Çaycuma Vergi Dairesi Müdürlüğü'),(953,'Devrek Vergi Dairesi Müdürlüğü'),(954,'Alaplı Malmüdürlüğü'),(955,'Gökçebey Malmüdürlüğü'),(956,'Aksaray Vergi Dairesi Müdürlüğü'),(957,'Ağaçören Malmüdürlüğü'),(958,'Güzelyurt Malmüdürlüğü'),(959,'Ortaköy Malmüdürlüğü'),(960,'Sarıyahşi Malmüdürlüğü'),(961,'Eskil Malmüdürlüğü'),(962,'Gülağaç Malmüdürlüğü'),(963,'Bayburt Vergi Dairesi Müdürlüğü'),(964,'Aydıntepe Malmüdürlüğü'),(965,'Demirözü Malmüdürlüğü'),(966,'Karaman Vergi Dairesi Müdürlüğü'),(967,'Ayrancı Malmüdürlüğü'),(968,'Ermenek Malmüdürlüğü'),(969,'Kazım Karabekir Malmüdürlüğü'),(970,'Başyayla Malmüdürlüğü'),(971,'Sarıveliler Malmüdürlüğü'),(972,'Irmak Vergi Dairesi Müdürlüğü'),(973,'Kaletepe Vergi Dairesi Müdürlüğü'),(974,'Delice Malmüdürlüğü'),(975,'Keskin Malmüdürlüğü'),(976,'Sulakyurt Malmüdürlüğü'),(977,'Balışeyh Malmüdürlüğü'),(978,'Çelebi Malmüdürlüğü'),(979,'Karakeçili Malmüdürlüğü'),(980,'Batman Vergi Dairesi Müdürlüğü'),(981,'Beşiri Malmüdürlüğü'),(982,'Gercüş Malmüdürlüğü'),(983,'Hasankeyf Malmüdürlüğü'),(984,'Kozluk Malmüdürlüğü'),(985,'Sason Malmüdürlüğü'),(986,'Şırnak Vergi Dairesi Müdürlüğü'),(987,'Cizre Vergi Dairesi Müdürlüğü'),(988,'Silopi Vergi Dairesi Müdürlüğü'),(989,'Beytüşşebap Malmüdürlüğü'),(990,'Güçlükonak Malmüdürlüğü'),(991,'İdil Malmüdürlüğü'),(992,'Uludere Malmüdürlüğü'),(993,'Bartın Vergi Dairesi Müdürlüğü'),(994,'Amasra Malmüdürlüğü'),(995,'Kurucaşile Malmüdürlüğü'),(996,'Ulus Malmüdürlüğü'),(997,'Ardahan Vergi Dairesi Müdürlüğü'),(998,'Çıldır Malmüdürlüğü'),(999,'Damal Malmüdürlüğü'),(1000,'Göle Malmüdürlüğü'),(1001,'Hanak Malmüdürlüğü'),(1002,'Posof Malmüdürlüğü'),(1003,'Iğdır Vergi Dairesi Müdürlüğü'),(1004,'Aralık Malmüdürlüğü'),(1005,'Karakoyunlu Malmüdürlüğü'),(1006,'Tuzluca Malmüdürlüğü'),(1007,'Yalova Vergi Dairesi Müdürlüğü'),(1008,'Altınova Malmüdürlüğü'),(1009,'Armutlu Malmüdürlüğü'),(1010,'Çınarcık Malmüdürlüğü'),(1011,'Karabük Vergi Dairesi Müdürlüğü'),(1012,'Safranbolu Vergi Dairesi Müdürlüğü'),(1013,'Eflani Malmüdürlüğü'),(1014,'Eskipazar Malmüdürlüğü'),(1015,'Ovacık Malmüdürlüğü'),(1016,'Yenice Malmüdürlüğü'),(1017,'Kilis Vergi Dairesi Müdürlüğü'),(1018,'Osmaniye Vergi Dairesi Müdürlüğü'),(1019,'Kadirli Vergi Dairesi Müdürlüğü'),(1020,'Bahçe Malmüdürlüğü'),(1021,'Düziçi Malmüdürlüğü'),(1022,'Hasanbeyli Malmüdürlüğü'),(1023,'Sumbas Malmüdürlüğü'),(1024,'Toprakkale Malmüdürlüğü'),(1025,'Düzce Vergi Dairesi Müdürlüğü'),(1026,'Akçakoca Vergi Dairesi Müdürlüğü'),(1027,'Yığılca Malmüdürlüğü'),(1028,'Cumayeri Malmüdürlüğü'),(1029,'Gölyaka Malmüdürlüğü'),(1030,'Çilimli Malmüdürlüğü'),(1031,'Gümüşova Malmüdürlüğü');
/*!40000 ALTER TABLE `tax_offices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `town`
--

DROP TABLE IF EXISTS `town`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `town` (
  `town_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `city_id` int NOT NULL,
  PRIMARY KEY (`town_id`,`city_id`),
  KEY `fk_town_city1_idx` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=971 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `town`
--

LOCK TABLES `town` WRITE;
/*!40000 ALTER TABLE `town` DISABLE KEYS */;
INSERT INTO `town` VALUES (1,'ALADAĞ',1),(2,'CEYHAN',1),(3,'ÇUKUROVA',1),(4,'FEKE',1),(5,'İMAMOĞLU',1),(6,'KARAİSALI ',1),(7,'KARATAŞ ',1),(8,'KOZAN ',1),(9,'POZANTI ',1),(10,'SAİMBEYLİ ',1),(11,'SARIÇAM ',1),(12,'SEYHAN',1),(13,'TUFANBEYLİ',1),(14,'YUMURTALIK',1),(15,'YÜREĞİR ',1),(16,'BESNİ ',2),(17,'ÇELİKHAN',2),(18,'GERGER',2),(19,'GÖLBAŞI ',2),(20,'KAHTA ',2),(21,'MERKEZ',2),(22,'SAMSAT',2),(23,'SİNCİK',2),(24,'TUT ',2),(25,'BAŞMAKÇI',3),(26,'BAYAT ',3),(27,'BOLVADİN',3),(28,'ÇAY ',3),(29,'ÇOBANLAR',3),(30,'DAZKIRI ',3),(31,'DİNAR ',3),(32,'EMİRDAĞ ',3),(33,'EVCİLER ',3),(34,'HOCALAR ',3),(35,'İHSANİYE',3),(36,'İSCEHİSAR ',3),(37,'KIZILÖREN ',3),(38,'MERKEZ',3),(39,'SANDIKLI',3),(40,'SİNANPAŞA ',3),(41,'SULTANDAĞI',3),(42,'ŞUHUT ',3),(43,'DİYADİN ',4),(44,'DOĞUBAYAZIT ',4),(45,'ELEŞKİRT',4),(46,'HAMUR ',4),(47,'MERKEZ',4),(48,'PATNOS',4),(49,'TAŞLIÇAY',4),(50,'TUTAK ',4),(51,'AĞAÇÖREN',5),(52,'ESKİL ',5),(53,'GÜLAĞAÇ ',5),(54,'GÜZELYURT ',5),(55,'MERKEZ',5),(56,'ORTAKÖY ',5),(57,'SARIYAHŞİ ',5),(58,'GÖYNÜCEK',6),(59,'GÜMÜŞHACIKÖY',6),(60,'HAMAMÖZÜ',6),(61,'MERKEZ',6),(62,'MERZİFON',6),(63,'SULUOVA ',6),(64,'TAŞOVA',6),(65,'AKYURT',7),(66,'ALTINDAĞ',7),(67,'AYAŞ',7),(68,'BALA',7),(69,'BEYPAZARI ',7),(70,'ÇAMLIDERE ',7),(71,'ÇANKAYA ',7),(72,'ÇUBUK ',7),(73,'ELMADAĞ ',7),(74,'ETİMESGUT ',7),(75,'EVREN ',7),(76,'GÖLBAŞI ',7),(77,'GÜDÜL ',7),(78,'HAYMANA ',7),(79,'KAHRAMANKAZAN ',7),(80,'KALECİK ',7),(81,'KEÇİÖREN',7),(82,'KIZILCAHAMAM',7),(83,'MAMAK ',7),(84,'NALLIHAN',7),(85,'POLATLI ',7),(86,'PURSAKLAR ',7),(87,'SİNCAN',7),(88,'ŞEREFLİKOÇHİSAR ',7),(89,'YENİMAHALLE ',7),(90,'AKSEKİ',8),(91,'AKSU',8),(92,'ALANYA',8),(93,'DEMRE ',8),(94,'DÖŞEMEALTI',8),(95,'ELMALI',8),(96,'FİNİKE',8),(97,'GAZİPAŞA',8),(98,'GÜNDOĞMUŞ ',8),(99,'İBRADI',8),(100,'KAŞ ',8),(101,'KEMER ',8),(102,'KEPEZ ',8),(103,'KONYAALTI ',8),(104,'KORKUTELİ ',8),(105,'KUMLUCA ',8),(106,'MANAVGAT',8),(107,'MURATPAŞA ',8),(108,'SERİK ',8),(109,'ÇILDIR',9),(110,'DAMAL ',9),(111,'GÖLE',9),(112,'HANAK ',9),(113,'MERKEZ',9),(114,'POSOF ',9),(115,'ARDANUÇ ',10),(116,'ARHAVİ',10),(117,'BORÇKA',10),(118,'HOPA',10),(119,'MERKEZ',10),(120,'MURGUL',10),(121,'ŞAVŞAT',10),(122,'YUSUFELİ',10),(123,'BOZDOĞAN',11),(124,'BUHARKENT ',11),(125,'ÇİNE',11),(126,'DİDİM ',11),(127,'EFELER',11),(128,'GERMENCİK ',11),(129,'İNCİRLİOVA',11),(130,'KARACASU',11),(131,'KARPUZLU',11),(132,'KOÇARLI ',11),(133,'KÖŞK',11),(134,'KUŞADASI',11),(135,'KUYUCAK ',11),(136,'NAZİLLİ ',11),(137,'SÖKE',11),(138,'SULTANHİSAR ',11),(139,'YENİPAZAR ',11),(140,'ALTIEYLÜL ',12),(141,'AYVALIK ',12),(142,'BALYA ',12),(143,'BANDIRMA',12),(144,'BİGADİÇ ',12),(145,'BURHANİYE ',12),(146,'DURSUNBEY ',12),(147,'EDREMİT ',12),(148,'ERDEK ',12),(149,'GÖMEÇ ',12),(150,'GÖNEN ',12),(151,'HAVRAN',12),(152,'İVRİNDİ ',12),(153,'KARESİ',12),(154,'KEPSUT',12),(155,'MANYAS',12),(156,'MARMARA ',12),(157,'SAVAŞTEPE ',12),(158,'SINDIRGI',12),(159,'SUSURLUK',12),(160,'AMASRA',13),(161,'KURUCAŞİLE',13),(162,'MERKEZ',13),(163,'ULUS',13),(164,'BEŞİRİ',14),(165,'GERCÜŞ',14),(166,'HASANKEYF ',14),(167,'KOZLUK',14),(168,'MERKEZ',14),(169,'SASON ',14),(170,'AYDINTEPE ',15),(171,'DEMİRÖZÜ',15),(172,'MERKEZ',15),(173,'BOZÜYÜK ',16),(174,'GÖLPAZARI ',16),(175,'İNHİSAR ',16),(176,'MERKEZ',16),(177,'OSMANELİ',16),(178,'PAZARYERİ ',16),(179,'SÖĞÜT ',16),(180,'YENİPAZAR ',16),(181,'ADAKLI',17),(182,'GENÇ',17),(183,'KARLIOVA',17),(184,'KİĞI',17),(185,'MERKEZ',17),(186,'SOLHAN',17),(187,'YAYLADERE ',17),(188,'YEDİSU',17),(189,'ADİLCEVAZ ',18),(190,'AHLAT ',18),(191,'GÜROYMAK',18),(192,'HİZAN ',18),(193,'MERKEZ',18),(194,'MUTKİ ',18),(195,'TATVAN',18),(196,'DÖRTDİVAN ',19),(197,'GEREDE',19),(198,'GÖYNÜK',19),(199,'KIBRISCIK ',19),(200,'MENGEN',19),(201,'MERKEZ',19),(202,'MUDURNU ',19),(203,'SEBEN ',19),(204,'YENİÇAĞA',19),(205,'AĞLASUN ',20),(206,'ALTINYAYLA',20),(207,'BUCAK ',20),(208,'ÇAVDIR',20),(209,'ÇELTİKÇİ',20),(210,'GÖLHİSAR',20),(211,'KARAMANLI ',20),(212,'KEMER ',20),(213,'MERKEZ',20),(214,'TEFENNİ ',20),(215,'YEŞİLOVA',20),(216,'BÜYÜKORHAN',21),(217,'GEMLİK',21),(218,'GÜRSU ',21),(219,'HARMANCIK ',21),(220,'İNEGÖL',21),(221,'İZNİK ',21),(222,'KARACABEY ',21),(223,'KELES ',21),(224,'KESTEL',21),(225,'MUDANYA ',21),(226,'MUSTAFAKEMALPAŞA',21),(227,'NİLÜFER ',21),(228,'ORHANELİ',21),(229,'ORHANGAZİ ',21),(230,'OSMANGAZİ ',21),(231,'YENİŞEHİR ',21),(232,'YILDIRIM',21),(233,'AYVACIK ',22),(234,'BAYRAMİÇ',22),(235,'BİGA',22),(236,'BOZCAADA',22),(237,'ÇAN ',22),(238,'ECEABAT ',22),(239,'EZİNE ',22),(240,'GELİBOLU',22),(241,'GÖKÇEADA',22),(242,'LAPSEKİ ',22),(243,'MERKEZ',22),(244,'YENİCE',22),(245,'ATKARACALAR ',23),(246,'BAYRAMÖREN',23),(247,'ÇERKEŞ',23),(248,'ELDİVAN ',23),(249,'ILGAZ ',23),(250,'KIZILIRMAK',23),(251,'KORGUN',23),(252,'KURŞUNLU',23),(253,'MERKEZ',23),(254,'ORTA',23),(255,'ŞABANÖZÜ',23),(256,'YAPRAKLI',23),(257,'ALACA ',24),(258,'BAYAT ',24),(259,'BOĞAZKALE ',24),(260,'DODURGA ',24),(261,'İSKİLİP ',24),(262,'KARGI ',24),(263,'LAÇİN ',24),(264,'MECİTÖZÜ',24),(265,'MERKEZ',24),(266,'OĞUZLAR ',24),(267,'ORTAKÖY ',24),(268,'OSMANCIK',24),(269,'SUNGURLU',24),(270,'UĞURLUDAĞ ',24),(271,'ACIPAYAM',25),(272,'BABADAĞ ',25),(273,'BAKLAN',25),(274,'BEKİLLİ ',25),(275,'BEYAĞAÇ ',25),(276,'BOZKURT ',25),(277,'BULDAN',25),(278,'ÇAL ',25),(279,'ÇAMELİ',25),(280,'ÇARDAK',25),(281,'ÇİVRİL',25),(282,'GÜNEY ',25),(283,'HONAZ ',25),(284,'KALE',25),(285,'MERKEZEFENDİ',25),(286,'PAMUKKALE ',25),(287,'SARAYKÖY',25),(288,'SERİNHİSAR',25),(289,'TAVAS ',25),(290,'BAĞLAR',26),(291,'BİSMİL',26),(292,'ÇERMİK',26),(293,'ÇINAR ',26),(294,'ÇÜNGÜŞ',26),(295,'DİCLE ',26),(296,'EĞİL',26),(297,'ERGANİ',26),(298,'HANİ',26),(299,'HAZRO ',26),(300,'KAYAPINAR ',26),(301,'KOCAKÖY ',26),(302,'KULP',26),(303,'LİCE',26),(304,'SİLVAN',26),(305,'SUR ',26),(306,'YENİŞEHİR ',26),(307,'AKÇAKOCA',27),(308,'CUMAYERİ',27),(309,'ÇİLİMLİ ',27),(310,'GÖLYAKA ',27),(311,'GÜMÜŞOVA',27),(312,'KAYNAŞLI',27),(313,'MERKEZ',27),(314,'YIĞILCA ',27),(315,'ENEZ',28),(316,'HAVSA ',28),(317,'İPSALA',28),(318,'KEŞAN ',28),(319,'LALAPAŞA',28),(320,'MERİÇ ',28),(321,'MERKEZ',28),(322,'SÜLOĞLU ',28),(323,'UZUNKÖPRÜ ',28),(324,'AĞIN',29),(325,'ALACAKAYA ',29),(326,'ARICAK',29),(327,'BASKİL',29),(328,'KARAKOÇAN ',29),(329,'KEBAN ',29),(330,'KOVANCILAR',29),(331,'MADEN ',29),(332,'MERKEZ',29),(333,'PALU',29),(334,'SİVRİCE ',29),(335,'ÇAYIRLI ',30),(336,'İLİÇ',30),(337,'KEMAH ',30),(338,'KEMALİYE',30),(339,'MERKEZ',30),(340,'OTLUKBELİ ',30),(341,'REFAHİYE',30),(342,'TERCAN',30),(343,'ÜZÜMLÜ',30),(344,'AŞKALE',31),(345,'AZİZİYE ',31),(346,'ÇAT ',31),(347,'HINIS ',31),(348,'HORASAN ',31),(349,'İSPİR ',31),(350,'KARAÇOBAN ',31),(351,'KARAYAZI',31),(352,'KÖPRÜKÖY',31),(353,'NARMAN',31),(354,'OLTU',31),(355,'OLUR',31),(356,'PALANDÖKEN',31),(357,'PASİNLER',31),(358,'PAZARYOLU ',31),(359,'ŞENKAYA ',31),(360,'TEKMAN',31),(361,'TORTUM',31),(362,'UZUNDERE',31),(363,'YAKUTİYE',31),(364,'ALPU',32),(365,'BEYLİKOVA ',32),(366,'ÇİFTELER',32),(367,'GÜNYÜZÜ ',32),(368,'HAN ',32),(369,'İNÖNÜ ',32),(370,'MAHMUDİYE ',32),(371,'MİHALGAZİ ',32),(372,'MİHALIÇÇIK',32),(373,'ODUNPAZARI',32),(374,'SARICAKAYA',32),(375,'SEYİTGAZİ ',32),(376,'SİVRİHİSAR',32),(377,'TEPEBAŞI',32),(378,'ARABAN',33),(379,'İSLAHİYE',33),(380,'KARKAMIŞ',33),(381,'NİZİP ',33),(382,'NURDAĞI ',33),(383,'OĞUZELİ ',33),(384,'ŞAHİNBEY',33),(385,'ŞEHİTKAMİL',33),(386,'YAVUZELİ',33),(387,'ALUCRA',34),(388,'BULANCAK',34),(389,'ÇAMOLUK ',34),(390,'ÇANAKÇI ',34),(391,'DERELİ',34),(392,'DOĞANKENT ',34),(393,'ESPİYE',34),(394,'EYNESİL ',34),(395,'GÖRELE',34),(396,'GÜCE',34),(397,'KEŞAP ',34),(398,'MERKEZ',34),(399,'PİRAZİZ ',34),(400,'ŞEBİNKARAHİSAR',34),(401,'TİREBOLU',34),(402,'YAĞLIDERE ',34),(403,'KELKİT',35),(404,'KÖSE',35),(405,'KÜRTÜN',35),(406,'MERKEZ',35),(407,'ŞİRAN ',35),(408,'TORUL ',35),(409,'ÇUKURCA ',36),(410,'MERKEZ',36),(411,'ŞEMDİNLİ',36),(412,'YÜKSEKOVA ',36),(413,'ALTINÖZÜ',37),(414,'ANTAKYA ',37),(415,'ARSUZ ',37),(416,'BELEN ',37),(417,'DEFNE ',37),(418,'DÖRTYOL ',37),(419,'ERZİN ',37),(420,'HASSA ',37),(421,'İSKENDERUN',37),(422,'KIRIKHAN',37),(423,'KUMLU ',37),(424,'PAYAS ',37),(425,'REYHANLI',37),(426,'SAMANDAĞ',37),(427,'YAYLADAĞI ',37),(428,'ARALIK',38),(429,'KARAKOYUNLU ',38),(430,'MERKEZ',38),(431,'TUZLUCA ',38),(432,'AKSU',39),(433,'ATABEY',39),(434,'EĞİRDİR ',39),(435,'GELENDOST ',39),(436,'GÖNEN ',39),(437,'KEÇİBORLU ',39),(438,'MERKEZ',39),(439,'SENİRKENT ',39),(440,'SÜTÇÜLER',39),(441,'ŞARKİKARAAĞAÇ ',39),(442,'ULUBORLU',39),(443,'YALVAÇ',39),(444,'YENİŞARBADEMLİ',39),(445,'ADALAR',40),(446,'ARNAVUTKÖY',40),(447,'ATAŞEHİR',40),(448,'AVCILAR ',40),(449,'BAĞCILAR',40),(450,'BAHÇELİEVLER',40),(451,'BAKIRKÖY',40),(452,'BAŞAKŞEHİR',40),(453,'BAYRAMPAŞA',40),(454,'BEŞİKTAŞ',40),(455,'BEYKOZ',40),(456,'BEYLİKDÜZÜ',40),(457,'BEYOĞLU ',40),(458,'BÜYÜKÇEKMECE',40),(459,'ÇATALCA ',40),(460,'ÇEKMEKÖY',40),(461,'ESENLER ',40),(462,'ESENYURT',40),(463,'EYÜP',40),(464,'FATİH ',40),(465,'GAZİOSMANPAŞA ',40),(466,'GÜNGÖREN',40),(467,'KADIKÖY ',40),(468,'KAĞITHANE ',40),(469,'KARTAL',40),(470,'KÜÇÜKÇEKMECE',40),(471,'MALTEPE ',40),(472,'PENDİK',40),(473,'SANCAKTEPE',40),(474,'SARIYER ',40),(475,'SİLİVRİ ',40),(476,'SULTANBEYLİ ',40),(477,'SULTANGAZİ',40),(478,'ŞİLE',40),(479,'ŞİŞLİ ',40),(480,'TUZLA ',40),(481,'ÜMRANİYE',40),(482,'ÜSKÜDAR ',40),(483,'ZEYTİNBURNU ',40),(484,'ALİAĞA',41),(485,'BALÇOVA ',41),(486,'BAYINDIR',41),(487,'BAYRAKLI',41),(488,'BERGAMA ',41),(489,'BEYDAĞ',41),(490,'BORNOVA ',41),(491,'BUCA',41),(492,'ÇEŞME ',41),(493,'ÇİĞLİ ',41),(494,'DİKİLİ',41),(495,'FOÇA',41),(496,'GAZİEMİR',41),(497,'GÜZELBAHÇE',41),(498,'KARABAĞLAR',41),(499,'KARABURUN ',41),(500,'KARŞIYAKA ',41),(501,'KEMALPAŞA ',41),(502,'KINIK ',41),(503,'KİRAZ ',41),(504,'KONAK ',41),(505,'MENDERES',41),(506,'MENEMEN ',41),(507,'NARLIDERE ',41),(508,'ÖDEMİŞ',41),(509,'SEFERİHİSAR ',41),(510,'SELÇUK',41),(511,'TİRE',41),(512,'TORBALI ',41),(513,'URLA',41),(514,'AFŞİN ',42),(515,'ANDIRIN ',42),(516,'ÇAĞLAYANCERİT ',42),(517,'DULKADİROĞLU',42),(518,'EKİNÖZÜ ',42),(519,'ELBİSTAN',42),(520,'GÖKSUN',42),(521,'NURHAK',42),(522,'ONİKİŞUBAT',42),(523,'PAZARCIK',42),(524,'TÜRKOĞLU',42),(525,'EFLANİ',43),(526,'ESKİPAZAR ',43),(527,'MERKEZ',43),(528,'OVACIK',43),(529,'SAFRANBOLU',43),(530,'YENİCE',43),(531,'AYRANCI ',44),(532,'BAŞYAYLA',44),(533,'ERMENEK ',44),(534,'KAZIMKARABEKİR',44),(535,'MERKEZ',44),(536,'SARIVELİLER ',44),(537,'AKYAKA',45),(538,'ARPAÇAY ',45),(539,'DİGOR ',45),(540,'KAĞIZMAN',45),(541,'MERKEZ',45),(542,'SARIKAMIŞ ',45),(543,'SELİM ',45),(544,'SUSUZ ',45),(545,'ABANA ',46),(546,'AĞLI',46),(547,'ARAÇ',46),(548,'AZDAVAY ',46),(549,'BOZKURT ',46),(550,'CİDE',46),(551,'ÇATALZEYTİN ',46),(552,'DADAY ',46),(553,'DEVREKANİ ',46),(554,'DOĞANYURT ',46),(555,'HANÖNÜ',46),(556,'İHSANGAZİ ',46),(557,'İNEBOLU ',46),(558,'KÜRE',46),(559,'MERKEZ',46),(560,'PINARBAŞI ',46),(561,'SEYDİLER',46),(562,'ŞENPAZAR',46),(563,'TAŞKÖPRÜ',46),(564,'TOSYA ',46),(565,'AKKIŞLA ',47),(566,'BÜNYAN',47),(567,'DEVELİ',47),(568,'FELAHİYE',47),(569,'HACILAR ',47),(570,'İNCESU',47),(571,'KOCASİNAN ',47),(572,'MELİKGAZİ ',47),(573,'ÖZVATAN ',47),(574,'PINARBAŞI ',47),(575,'SARIOĞLAN ',47),(576,'SARIZ ',47),(577,'TALAS ',47),(578,'TOMARZA ',47),(579,'YAHYALI ',47),(580,'YEŞİLHİSAR',47),(581,'BAHŞİLİ ',48),(582,'BALIŞEYH',48),(583,'ÇELEBİ',48),(584,'DELİCE',48),(585,'KARAKEÇİLİ',48),(586,'KESKİN',48),(587,'MERKEZ',48),(588,'SULAKYURT ',48),(589,'YAHŞİHAN',48),(590,'BABAESKİ',49),(591,'DEMİRKÖY',49),(592,'KOFÇAZ',49),(593,'LÜLEBURGAZ',49),(594,'MERKEZ',49),(595,'PEHLİVANKÖY ',49),(596,'PINARHİSAR',49),(597,'VİZE',49),(598,'AKÇAKENT',50),(599,'AKPINAR ',50),(600,'BOZTEPE ',50),(601,'ÇİÇEKDAĞI ',50),(602,'KAMAN ',50),(603,'MERKEZ',50),(604,'MUCUR ',50),(605,'ELBEYLİ ',51),(606,'MERKEZ',51),(607,'MUSABEYLİ ',51),(608,'POLATELİ',51),(609,'BAŞİSKELE ',52),(610,'ÇAYIROVA',52),(611,'DARICA',52),(612,'DERİNCE ',52),(613,'DİLOVASI',52),(614,'GEBZE ',52),(615,'GÖLCÜK',52),(616,'İZMİT ',52),(617,'KANDIRA ',52),(618,'KARAMÜRSEL',52),(619,'KARTEPE ',52),(620,'KÖRFEZ',52),(621,'AHIRLI',53),(622,'AKÖREN',53),(623,'AKŞEHİR ',53),(624,'ALTINEKİN ',53),(625,'BEYŞEHİR',53),(626,'BOZKIR',53),(627,'CİHANBEYLİ',53),(628,'ÇELTİK',53),(629,'ÇUMRA ',53),(630,'DERBENT ',53),(631,'DEREBUCAK ',53),(632,'DOĞANHİSAR',53),(633,'EMİRGAZİ',53),(634,'EREĞLİ',53),(635,'GÜNEYSINIR',53),(636,'HADİM ',53),(637,'HALKAPINAR',53),(638,'HÜYÜK ',53),(639,'ILGIN ',53),(640,'KADINHANI ',53),(641,'KARAPINAR ',53),(642,'KARATAY ',53),(643,'KULU',53),(644,'MERAM ',53),(645,'SARAYÖNÜ',53),(646,'SELÇUKLU',53),(647,'SEYDİŞEHİR',53),(648,'TAŞKENT ',53),(649,'TUZLUKÇU',53),(650,'YALIHÜYÜK ',53),(651,'YUNAK ',53),(652,'ALTINTAŞ',54),(653,'ASLANAPA',54),(654,'ÇAVDARHİSAR ',54),(655,'DOMANİÇ ',54),(656,'DUMLUPINAR',54),(657,'EMET',54),(658,'GEDİZ ',54),(659,'HİSARCIK',54),(660,'MERKEZ',54),(661,'PAZARLAR',54),(662,'SİMAV ',54),(663,'ŞAPHANE ',54),(664,'TAVŞANLI',54),(665,'AKÇADAĞ ',55),(666,'ARAPGİR ',55),(667,'ARGUVAN ',55),(668,'BATTALGAZİ',55),(669,'DARENDE ',55),(670,'DOĞANŞEHİR',55),(671,'DOĞANYOL',55),(672,'HEKİMHAN',55),(673,'KALE',55),(674,'KULUNCAK',55),(675,'PÜTÜRGE ',55),(676,'YAZIHAN ',55),(677,'YEŞİLYURT ',55),(678,'AHMETLİ ',56),(679,'AKHİSAR ',56),(680,'ALAŞEHİR',56),(681,'DEMİRCİ ',56),(682,'GÖLMARMARA',56),(683,'GÖRDES',56),(684,'KIRKAĞAÇ',56),(685,'KÖPRÜBAŞI ',56),(686,'KULA',56),(687,'SALİHLİ ',56),(688,'SARIGÖL ',56),(689,'SARUHANLI ',56),(690,'SELENDİ ',56),(691,'SOMA',56),(692,'ŞEHZADELER',56),(693,'TURGUTLU',56),(694,'YUNUSEMRE ',56),(695,'ARTUKLU ',57),(696,'DARGEÇİT',57),(697,'DERİK ',57),(698,'KIZILTEPE ',57),(699,'MAZIDAĞI',57),(700,'MİDYAT',57),(701,'NUSAYBİN',57),(702,'ÖMERLİ',57),(703,'SAVUR ',57),(704,'YEŞİLLİ ',57),(705,'AKDENİZ ',58),(706,'ANAMUR',58),(707,'AYDINCIK',58),(708,'BOZYAZI ',58),(709,'ÇAMLIYAYLA',58),(710,'ERDEMLİ ',58),(711,'GÜLNAR',58),(712,'MEZİTLİ ',58),(713,'MUT ',58),(714,'SİLİFKE ',58),(715,'TARSUS',58),(716,'TOROSLAR',58),(717,'YENİŞEHİR ',58),(718,'BODRUM',59),(719,'DALAMAN ',59),(720,'DATÇA ',59),(721,'FETHİYE ',59),(722,'KAVAKLIDERE ',59),(723,'KÖYCEĞİZ',59),(724,'MARMARİS',59),(725,'MENTEŞE ',59),(726,'MİLAS ',59),(727,'ORTACA',59),(728,'SEYDİKEMER',59),(729,'ULA ',59),(730,'YATAĞAN ',59),(731,'BULANIK ',60),(732,'HASKÖY',60),(733,'KORKUT',60),(734,'MALAZGİRT ',60),(735,'MERKEZ',60),(736,'VARTO ',60),(737,'ACIGÖL',61),(738,'AVANOS',61),(739,'DERİNKUYU ',61),(740,'GÜLŞEHİR',61),(741,'HACIBEKTAŞ',61),(742,'KOZAKLI ',61),(743,'MERKEZ',61),(744,'ÜRGÜP ',61),(745,'ALTUNHİSAR',62),(746,'BOR ',62),(747,'ÇAMARDI ',62),(748,'ÇİFTLİK ',62),(749,'MERKEZ',62),(750,'ULUKIŞLA',62),(751,'AKKUŞ ',63),(752,'ALTINORDU ',63),(753,'AYBASTI ',63),(754,'ÇAMAŞ ',63),(755,'ÇATALPINAR',63),(756,'ÇAYBAŞI ',63),(757,'FATSA ',63),(758,'GÖLKÖY',63),(759,'GÜLYALI ',63),(760,'GÜRGENTEPE',63),(761,'İKİZCE',63),(762,'KABADÜZ ',63),(763,'KABATAŞ ',63),(764,'KORGAN',63),(765,'KUMRU ',63),(766,'MESUDİYE',63),(767,'PERŞEMBE',63),(768,'ULUBEY',63),(769,'ÜNYE',63),(770,'BAHÇE ',64),(771,'DÜZİÇİ',64),(772,'HASANBEYLİ',64),(773,'KADİRLİ ',64),(774,'MERKEZ',64),(775,'SUMBAS',64),(776,'TOPRAKKALE',64),(777,'ARDEŞEN ',65),(778,'ÇAMLIHEMŞİN ',65),(779,'ÇAYELİ',65),(780,'DEREPAZARI',65),(781,'FINDIKLI',65),(782,'GÜNEYSU ',65),(783,'HEMŞİN',65),(784,'İKİZDERE',65),(785,'İYİDERE ',65),(786,'KALKANDERE',65),(787,'MERKEZ',65),(788,'PAZAR ',65),(789,'ADAPAZARI ',66),(790,'AKYAZI',66),(791,'ARİFİYE ',66),(792,'ERENLER ',66),(793,'FERİZLİ ',66),(794,'GEYVE ',66),(795,'HENDEK',66),(796,'KARAPÜRÇEK',66),(797,'KARASU',66),(798,'KAYNARCA',66),(799,'KOCAALİ ',66),(800,'PAMUKOVA',66),(801,'SAPANCA ',66),(802,'SERDİVAN',66),(803,'SÖĞÜTLÜ ',66),(804,'TARAKLI ',66),(805,'19 MAYIS',67),(806,'ALAÇAM',67),(807,'ASARCIK ',67),(808,'ATAKUM',67),(809,'AYVACIK ',67),(810,'BAFRA ',67),(811,'CANİK ',67),(812,'ÇARŞAMBA',67),(813,'HAVZA ',67),(814,'İLKADIM ',67),(815,'KAVAK ',67),(816,'LADİK ',67),(817,'SALIPAZARI',67),(818,'TEKKEKÖY',67),(819,'TERME ',67),(820,'VEZİRKÖPRÜ',67),(821,'YAKAKENT',67),(822,'BAYKAN',68),(823,'ERUH',68),(824,'KURTALAN',68),(825,'MERKEZ',68),(826,'PERVARİ ',68),(827,'ŞİRVAN',68),(828,'TİLLO ',68),(829,'AYANCIK ',69),(830,'BOYABAT ',69),(831,'DİKMEN',69),(832,'DURAĞAN ',69),(833,'ERFELEK ',69),(834,'GERZE ',69),(835,'MERKEZ',69),(836,'SARAYDÜZÜ ',69),(837,'TÜRKELİ ',69),(838,'AKINCILAR ',70),(839,'ALTINYAYLA',70),(840,'DİVRİĞİ ',70),(841,'DOĞANŞAR',70),(842,'GEMEREK ',70),(843,'GÖLOVA',70),(844,'GÜRÜN ',70),(845,'HAFİK ',70),(846,'İMRANLI ',70),(847,'KANGAL',70),(848,'KOYULHİSAR',70),(849,'MERKEZ',70),(850,'SUŞEHRİ ',70),(851,'ŞARKIŞLA',70),(852,'ULAŞ',70),(853,'YILDIZELİ ',70),(854,'ZARA',70),(855,'AKÇAKALE',71),(856,'BİRECİK ',71),(857,'BOZOVA',71),(858,'CEYLANPINAR ',71),(859,'EYYÜBİYE',71),(860,'HALFETİ ',71),(861,'HALİLİYE',71),(862,'HARRAN',71),(863,'HİLVAN',71),(864,'KARAKÖPRÜ ',71),(865,'SİVEREK ',71),(866,'SURUÇ ',71),(867,'VİRANŞEHİR',71),(868,'BEYTÜŞŞEBAP ',72),(869,'CİZRE ',72),(870,'GÜÇLÜKONAK',72),(871,'İDİL',72),(872,'MERKEZ',72),(873,'SİLOPİ',72),(874,'ULUDERE ',72),(875,'ÇERKEZKÖY ',73),(876,'ÇORLU ',73),(877,'ERGENE',73),(878,'HAYRABOLU ',73),(879,'KAPAKLI ',73),(880,'MALKARA ',73),(881,'MARMARAEREĞLİSİ ',73),(882,'MURATLI ',73),(883,'SARAY ',73),(884,'SÜLEYMANPAŞA',73),(885,'ŞARKÖY',73),(886,'ALMUS ',74),(887,'ARTOVA',74),(888,'BAŞÇİFTLİK',74),(889,'ERBAA ',74),(890,'MERKEZ',74),(891,'NİKSAR',74),(892,'PAZAR ',74),(893,'REŞADİYE',74),(894,'SULUSARAY ',74),(895,'TURHAL',74),(896,'YEŞİLYURT ',74),(897,'ZİLE',74),(898,'AKÇAABAT',75),(899,'ARAKLI',75),(900,'ARSİN ',75),(901,'BEŞİKDÜZÜ ',75),(902,'ÇARŞIBAŞI ',75),(903,'ÇAYKARA ',75),(904,'DERNEKPAZARI',75),(905,'DÜZKÖY',75),(906,'HAYRAT',75),(907,'KÖPRÜBAŞI ',75),(908,'MAÇKA ',75),(909,'OF',75),(910,'ORTAHİSAR ',75),(911,'SÜRMENE ',75),(912,'ŞALPAZARI ',75),(913,'TONYA ',75),(914,'VAKFIKEBİR',75),(915,'YOMRA ',75),(916,'ÇEMİŞGEZEK',76),(917,'HOZAT ',76),(918,'MAZGİRT ',76),(919,'MERKEZ',76),(920,'NAZIMİYE',76),(921,'OVACIK',76),(922,'PERTEK',76),(923,'PÜLÜMÜR ',76),(924,'BANAZ ',77),(925,'EŞME',77),(926,'KARAHALLI ',77),(927,'MERKEZ',77),(928,'SİVASLI ',77),(929,'ULUBEY',77),(930,'BAHÇESARAY',78),(931,'BAŞKALE ',78),(932,'ÇALDIRAN',78),(933,'ÇATAK ',78),(934,'EDREMİT ',78),(935,'ERCİŞ ',78),(936,'GEVAŞ ',78),(937,'GÜRPINAR',78),(938,'İPEKYOLU',78),(939,'MURADİYE',78),(940,'ÖZALP ',78),(941,'SARAY ',78),(942,'TUŞBA ',78),(943,'ALTINOVA',79),(944,'ARMUTLU ',79),(945,'ÇINARCIK',79),(946,'ÇİFTLİKKÖY',79),(947,'MERKEZ',79),(948,'TERMAL',79),(949,'AKDAĞMADENİ ',80),(950,'AYDINCIK',80),(951,'BOĞAZLIYAN',80),(952,'ÇANDIR',80),(953,'ÇAYIRALAN ',80),(954,'ÇEKEREK ',80),(955,'KADIŞEHRİ ',80),(956,'MERKEZ',80),(957,'SARAYKENT ',80),(958,'SARIKAYA',80),(959,'SORGUN',80),(960,'ŞEFAATLİ',80),(961,'YENİFAKILI',80),(962,'YERKÖY',80),(963,'ALAPLI',81),(964,'ÇAYCUMA ',81),(965,'DEVREK',81),(966,'EREĞLİ',81),(967,'GÖKÇEBEY',81),(968,'KİLİMLİ ',81),(969,'KOZLU ',81),(970,'MERKEZ',81);
/*!40000 ALTER TABLE `town` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trader_account`
--

DROP TABLE IF EXISTS `trader_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trader_account` (
  `trader_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `type` tinyint DEFAULT NULL,
  `phone` varchar(75) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `tax_number` varchar(45) DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `identity_number` varchar(11) DEFAULT NULL,
  `company_company_id` int DEFAULT NULL,
  `trader_class_trader_class_id` int DEFAULT NULL,
  `tax_offices_tax_id` int DEFAULT NULL,
  PRIMARY KEY (`trader_id`),
  KEY `fk_trader_account_company1_idx` (`company_company_id`),
  KEY `fk_trader_account_trader_class1_idx` (`trader_class_trader_class_id`),
  KEY `fk_trader_account_tax_offices1_idx` (`tax_offices_tax_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trader_account`
--

LOCK TABLES `trader_account` WRITE;
/*!40000 ALTER TABLE `trader_account` DISABLE KEYS */;
INSERT INTO `trader_account` VALUES (2,'mehmet tek',1,'05557865421','mehmettek@gmail.com','','2020-09-20','T001','11111111111',2,2,1);
/*!40000 ALTER TABLE `trader_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trader_class`
--

DROP TABLE IF EXISTS `trader_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trader_class` (
  `trader_class_id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`trader_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trader_class`
--

LOCK TABLES `trader_class` WRITE;
/*!40000 ALTER TABLE `trader_class` DISABLE KEYS */;
INSERT INTO `trader_class` VALUES (1,'Müşteri'),(2,'Tedarikçi'),(3,'Müşteri / Tedarikçi'),(4,'Broker'),(5,'Kamu Kuruluşu');
/*!40000 ALTER TABLE `trader_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit` (
  `unit_id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
INSERT INTO `unit` VALUES (1,'adet','number');
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `is_activated` tinyint DEFAULT NULL,
  `cdate` date DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (8,'testname',NULL,'test235@gmail.com','$2a$10$udOGjBeISHB1.UFSfdTq0utyH.ZO6F0GWRq6Uf.DB7UE9mJAFdBRO','05444444444',NULL,1,'2021-09-23');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_company`
--

DROP TABLE IF EXISTS `users_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_company` (
  `uc_id` int NOT NULL AUTO_INCREMENT,
  `users_user_id` int NOT NULL,
  `company_company_id` int NOT NULL,
  PRIMARY KEY (`uc_id`,`company_company_id`,`users_user_id`),
  KEY `fk_users_company_users_idx` (`users_user_id`),
  KEY `fk_users_company_company1_idx` (`company_company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_company`
--

LOCK TABLES `users_company` WRITE;
/*!40000 ALTER TABLE `users_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_company` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-24  7:25:12
