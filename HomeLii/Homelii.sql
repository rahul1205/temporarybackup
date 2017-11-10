-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Homelii
-- ------------------------------------------------------
-- Server version	5.5.57-0ubuntu0.14.04.1

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
-- Current Database: `Homelii`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Homelii` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `Homelii`;

--
-- Table structure for table `customer_account`
--

DROP TABLE IF EXISTS `customer_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_account` (
  `customer_account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`customer_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_account`
--

LOCK TABLES `customer_account` WRITE;
/*!40000 ALTER TABLE `customer_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_device`
--

DROP TABLE IF EXISTS `customer_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_device` (
  `customer_device_id` int(11) NOT NULL DEFAULT '0',
  `apn_name` varchar(45) DEFAULT NULL,
  `account_number` int(11) DEFAULT NULL,
  `apn` varchar(45) DEFAULT NULL,
  `apn_password` varchar(45) DEFAULT NULL,
  `customer_account_id` int(11) DEFAULT NULL,
  `arming_delay` int(11) DEFAULT NULL,
  `disarming_delay` int(11) DEFAULT NULL,
  `device_id` int(11) DEFAULT NULL,
  `device_phone_no` varchar(15) DEFAULT NULL,
  `device_admin_password` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`customer_device_id`),
  UNIQUE KEY `customer_account_id` (`customer_account_id`),
  KEY `device_id` (`device_id`),
  CONSTRAINT `customer_device_ibfk_1` FOREIGN KEY (`customer_account_id`) REFERENCES `customer_account` (`customer_account_id`),
  CONSTRAINT `customer_device_ibfk_2` FOREIGN KEY (`device_id`) REFERENCES `device_master` (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_device`
--

LOCK TABLES `customer_device` WRITE;
/*!40000 ALTER TABLE `customer_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_event`
--

DROP TABLE IF EXISTS `device_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_event` (
  `device_event_id` int(11) NOT NULL DEFAULT '0',
  `event_code` int(11) DEFAULT NULL,
  `event_description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`device_event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_event`
--

LOCK TABLES `device_event` WRITE;
/*!40000 ALTER TABLE `device_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_function_code`
--

DROP TABLE IF EXISTS `device_function_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_function_code` (
  `device_function_code_id` int(11) NOT NULL DEFAULT '0',
  `device_function_code` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`device_function_code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_function_code`
--

LOCK TABLES `device_function_code` WRITE;
/*!40000 ALTER TABLE `device_function_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_function_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_master`
--

DROP TABLE IF EXISTS `device_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_master` (
  `device_id` int(11) NOT NULL DEFAULT '0',
  `serial_number` varchar(100) DEFAULT NULL,
  `status_set` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_master`
--

LOCK TABLES `device_master` WRITE;
/*!40000 ALTER TABLE `device_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_schedule`
--

DROP TABLE IF EXISTS `device_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_schedule` (
  `id` int(11) NOT NULL DEFAULT '0',
  `aiming_mode_time` time DEFAULT NULL,
  `disarming_mode_time` time DEFAULT NULL,
  `run_cycle` int(11) DEFAULT NULL,
  `customer_device_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_device_id` (`customer_device_id`),
  CONSTRAINT `device_schedule_ibfk_1` FOREIGN KEY (`customer_device_id`) REFERENCES `customer_device` (`customer_device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_schedule`
--

LOCK TABLES `device_schedule` WRITE;
/*!40000 ALTER TABLE `device_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_sensor`
--

DROP TABLE IF EXISTS `device_sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_sensor` (
  `device_sensor_id` int(11) NOT NULL DEFAULT '0',
  `customer_device_id` int(11) DEFAULT NULL,
  `sensor_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`device_sensor_id`),
  UNIQUE KEY `customer_device_id` (`customer_device_id`),
  UNIQUE KEY `sensor_id` (`sensor_id`),
  UNIQUE KEY `zone_id` (`zone_id`),
  CONSTRAINT `device_sensor_ibfk_1` FOREIGN KEY (`customer_device_id`) REFERENCES `customer_devcie` (`customer_device_id`),
  CONSTRAINT `device_sensor_ibfk_2` FOREIGN KEY (`sensor_id`) REFERENCES `sensor_master` (`sensor_id`),
  CONSTRAINT `device_sensor_ibfk_3` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_sensor`
--

LOCK TABLES `device_sensor` WRITE;
/*!40000 ALTER TABLE `device_sensor` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_sensor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_tracking`
--

DROP TABLE IF EXISTS `device_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_tracking` (
  `device_tracking_id` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(15) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `device_status` tinyint(4) DEFAULT NULL,
  `play_alarm` tinyint(4) DEFAULT NULL,
  `arming_mode` tinyint(4) DEFAULT NULL,
  `device_event_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`device_tracking_id`),
  UNIQUE KEY `zone_id` (`zone_id`),
  UNIQUE KEY `device_event_id` (`device_event_id`),
  CONSTRAINT `device_tracking_ibfk_1` FOREIGN KEY (`zone_id`) REFERENCES `zone` (`zone_id`),
  CONSTRAINT `device_tracking_ibfk_2` FOREIGN KEY (`device_event_id`) REFERENCES `device_event` (`device_event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_tracking`
--

LOCK TABLES `device_tracking` WRITE;
/*!40000 ALTER TABLE `device_tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_type_device_permission`
--

DROP TABLE IF EXISTS `membership_type_device_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership_type_device_permission` (
  `id` int(11) NOT NULL DEFAULT '0',
  `device_function_code_id` int(11) DEFAULT NULL,
  `membership_type_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_function_code_id` (`device_function_code_id`),
  CONSTRAINT `membership_type_device_permission_ibfk_1` FOREIGN KEY (`device_function_code_id`) REFERENCES `device_fucntion_code` (`device_function_code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_type_device_permission`
--

LOCK TABLES `membership_type_device_permission` WRITE;
/*!40000 ALTER TABLE `membership_type_device_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `membership_type_device_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor_master`
--

DROP TABLE IF EXISTS `sensor_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor_master` (
  `sensor_id` int(11) NOT NULL DEFAULT '0',
  `serial_number` varchar(45) DEFAULT NULL,
  `sensor_type_id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`sensor_id`),
  UNIQUE KEY `sensor_type_id` (`sensor_type_id`),
  CONSTRAINT `sensor_master_ibfk_1` FOREIGN KEY (`sensor_type_id`) REFERENCES `sensor_type` (`sensor_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_master`
--

LOCK TABLES `sensor_master` WRITE;
/*!40000 ALTER TABLE `sensor_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `sensor_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sensor_type`
--

DROP TABLE IF EXISTS `sensor_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sensor_type` (
  `sensor_type_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`sensor_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensor_type`
--

LOCK TABLES `sensor_type` WRITE;
/*!40000 ALTER TABLE `sensor_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `sensor_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_configuration`
--

DROP TABLE IF EXISTS `system_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_configuration` (
  `id` int(11) NOT NULL DEFAULT '0',
  `mobile_number` varchar(15) DEFAULT NULL,
  `gprs_ip_address` varchar(15) DEFAULT NULL,
  `gprs_port` smallint(6) DEFAULT NULL,
  `gprs_domain_address` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_configuration`
--

LOCK TABLES `system_configuration` WRITE;
/*!40000 ALTER TABLE `system_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone`
--

DROP TABLE IF EXISTS `zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone` (
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `zone_name` varchar(255) DEFAULT NULL,
  `zone_number` varchar(5) DEFAULT NULL,
  `zone_attribute_id` int(11) DEFAULT NULL,
  `customer_device_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`zone_id`),
  UNIQUE KEY `zone_attribute_id` (`zone_attribute_id`),
  UNIQUE KEY `customer_device_id` (`customer_device_id`),
  CONSTRAINT `zone_ibfk_1` FOREIGN KEY (`zone_attribute_id`) REFERENCES `zone_attribute` (`zone_attribute_id`),
  CONSTRAINT `zone_ibfk_2` FOREIGN KEY (`customer_device_id`) REFERENCES `customer_device` (`customer_device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone`
--

LOCK TABLES `zone` WRITE;
/*!40000 ALTER TABLE `zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone_attribute`
--

DROP TABLE IF EXISTS `zone_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone_attribute` (
  `zone_attribute_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`zone_attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone_attribute`
--

LOCK TABLES `zone_attribute` WRITE;
/*!40000 ALTER TABLE `zone_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `zone_attribute` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-18 13:29:41
