-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: gas
-- ------------------------------------------------------
-- Server version	5.6.24

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
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carNumber` varchar(45) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  `cylinderNumber` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (1,'asddswa',1,NULL),(13,'11111111111',1,NULL),(14,'1212121',1,NULL);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card` (
  `id` varchar(64) NOT NULL DEFAULT '',
  `typeid` int(11) DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `stateid` int(11) DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` VALUES ('0c41e679-bd82-4c51-b412-a8fb5f774b8c',3,0,2,NULL),('535aa2c8-b77f-423c-baba-9e27863da4c2',1,565,1,NULL),('fced6382-2207-4ebb-abae-a82736fda6a3',3,0,1,NULL);
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardhistory`
--

DROP TABLE IF EXISTS `cardhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cardhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(11) DEFAULT NULL,
  `operatorid` int(11) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardhistory`
--

LOCK TABLES `cardhistory` WRITE;
/*!40000 ALTER TABLE `cardhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardstate`
--

DROP TABLE IF EXISTS `cardstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cardstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `desc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardstate`
--

LOCK TABLES `cardstate` WRITE;
/*!40000 ALTER TABLE `cardstate` DISABLE KEYS */;
INSERT INTO `cardstate` VALUES (1,'激活',NULL),(2,'挂失',NULL),(3,'注销',NULL);
/*!40000 ALTER TABLE `cardstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardtype`
--

DROP TABLE IF EXISTS `cardtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cardtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardtype`
--

LOCK TABLES `cardtype` WRITE;
/*!40000 ALTER TABLE `cardtype` DISABLE KEYS */;
INSERT INTO `cardtype` VALUES (1,'管理卡',NULL),(2,'员工卡',NULL),(3,'普通卡',NULL);
/*!40000 ALTER TABLE `cardtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartype`
--

DROP TABLE IF EXISTS `cartype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cartype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartype`
--

LOCK TABLES `cartype` WRITE;
/*!40000 ALTER TABLE `cartype` DISABLE KEYS */;
INSERT INTO `cartype` VALUES (1,'出租车',NULL),(2,'私家车',NULL);
/*!40000 ALTER TABLE `cartype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `leadingUser` int(11) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `freeGasNumber` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'母站',1,'上海','123321232321',100000000),(2,'上海分公司',2,'上海','2332123',552931),(3,'北京分公司',3,'北京','3212321',45123),(4,'太原分公司',4,'太原','3321',12341);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `costhistory`
--

DROP TABLE IF EXISTS `costhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `costhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `operatorid` int(11) DEFAULT NULL,
  `gasAmount` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costhistory`
--

LOCK TABLES `costhistory` WRITE;
/*!40000 ALTER TABLE `costhistory` DISABLE KEYS */;
INSERT INTO `costhistory` VALUES (1,1,1,2,15,1,30,240,'2015-10-21 17:37:38'),(2,1,1,2,30,1,60,480,'2015-10-21 17:38:03'),(3,1,1,1,1,1,1,479,'2015-10-24 17:20:11'),(4,1,1,1,1,1,1,478,'2015-10-24 17:20:17'),(5,1,1,1,1,1,1,477,'2015-11-24 17:20:19'),(6,1,1,1,1,1,1,476,'2015-11-24 17:20:19'),(7,1,1,1,1,1,1,475,'2015-11-24 17:20:20'),(8,1,1,1,1,1,1,474,'2015-11-24 17:20:20'),(9,1,1,1,1,1,1,473,'2015-12-24 17:20:21'),(10,1,1,1,1,1,1,472,'2015-12-24 17:20:21'),(11,1,1,1,1,1,1,471,'2015-12-24 17:20:21'),(12,1,1,1,1,1,1,471,'2015-12-24 17:20:22'),(13,1,1,1,1,1,1,470,'2015-12-24 17:20:22'),(14,1,1,1,1,1,1,469,'2015-12-24 17:20:40'),(15,1,1,1,1,1,1,468,'2015-12-24 17:21:45'),(16,1,1,1,1,1,1,467,'2015-12-24 17:22:02'),(17,1,1,1,1,1,1,466,'2015-12-24 17:34:30'),(18,1,1,1,1,1,1,465,'2015-12-24 17:35:02'),(19,2,1,2,10,2,20,500,'2015-10-21 17:37:38'),(20,2,1,2,5,2,10,490,'2015-10-21 17:38:03'),(22,2,1,2,5,2,10,490,'2015-10-21 17:38:03'),(23,2,1,2,5,2,10,490,'2015-10-21 17:38:03'),(24,2,1,2,5,2,10,490,'2015-10-21 17:38:03'),(25,2,1,2,5,2,10,490,'2015-11-24 17:20:19'),(26,2,1,2,5,2,10,490,'2015-11-24 17:20:19'),(27,2,1,2,5,2,10,490,'2015-11-24 17:20:19'),(28,2,1,2,5,2,10,490,'2015-11-24 17:20:19'),(29,2,1,2,5,2,10,490,'2015-12-24 17:20:21'),(30,2,1,2,5,2,10,490,'2015-12-24 17:20:21'),(31,2,1,2,5,2,10,490,'2015-12-24 17:20:21'),(32,2,1,2,5,2,10,490,'2015-12-24 17:20:21'),(33,2,1,2,5,2,10,490,'2015-12-24 17:20:21'),(34,3,1,2,10,3,20,500,'2015-10-21 17:37:38'),(35,3,1,2,10,3,20,500,'2015-10-21 17:37:38'),(36,3,1,2,10,3,20,500,'2015-10-21 17:37:38'),(37,3,1,2,10,3,20,500,'2015-10-21 17:37:38'),(38,3,1,2,10,3,20,500,'2015-10-21 17:37:38'),(39,3,1,2,10,3,20,500,'2015-10-21 17:37:38'),(40,3,1,2,10,3,20,500,'2015-11-24 17:20:19'),(41,3,1,2,10,3,20,500,'2015-11-24 17:20:19'),(42,3,1,2,10,3,20,500,'2015-11-24 17:20:19'),(43,3,1,2,10,3,20,500,'2015-11-24 17:20:19'),(44,3,1,2,10,3,20,500,'2015-11-24 17:20:19'),(45,3,1,2,10,3,20,500,'2015-11-24 17:20:19'),(46,3,1,2,10,3,20,500,'2015-12-24 17:20:21'),(47,3,1,2,10,3,20,500,'2015-12-24 17:20:21'),(48,3,1,2,10,3,20,500,'2015-12-24 17:20:21'),(49,3,1,2,10,3,20,500,'2015-12-24 17:20:21'),(50,3,1,2,10,3,20,500,'2015-12-24 17:20:21'),(51,3,1,2,10,3,20,500,'2015-12-24 17:20:21'),(52,3,1,2,10,3,20,500,'2015-12-24 17:20:21'),(53,3,1,2,10,3,20,500,'2015-12-24 17:20:21'),(54,4,1,2,10,4,20,500,'2015-10-21 17:37:38'),(55,4,1,2,10,4,20,500,'2015-10-21 17:37:38'),(56,4,1,2,10,4,20,500,'2015-10-21 17:37:38'),(57,4,1,2,10,4,20,500,'2015-10-21 17:37:38'),(58,4,1,2,10,4,20,500,'2015-10-21 17:37:38'),(59,4,1,2,10,4,20,500,'2015-10-21 17:37:38'),(60,4,1,2,10,4,20,500,'2015-11-21 17:37:38'),(61,4,1,2,10,4,20,500,'2015-11-21 17:37:38'),(62,4,1,2,10,4,20,500,'2015-11-21 17:37:38'),(63,4,1,2,10,4,20,500,'2015-11-21 17:37:38'),(64,4,1,2,10,4,20,500,'2015-11-21 17:37:38'),(65,4,1,2,10,4,20,500,'2015-12-21 17:37:38'),(66,4,1,2,10,4,20,500,'2015-12-21 17:37:38'),(67,4,1,2,10,4,20,500,'2015-12-21 17:37:38'),(68,4,1,2,10,4,20,500,'2015-12-21 17:37:38'),(69,4,1,2,10,4,20,500,'2015-12-21 17:37:38'),(70,4,1,2,10,4,20,500,'2015-12-21 17:37:38'),(71,4,1,2,10,4,20,500,'2015-12-21 17:37:38'),(72,4,1,2,10,4,20,500,'2015-12-21 17:37:38'),(73,4,1,2,10,4,20,500,'2015-12-21 17:37:38');
/*!40000 ALTER TABLE `costhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gashistory`
--

DROP TABLE IF EXISTS `gashistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gashistory` (
  `id` int(11) NOT NULL,
  `companyid` int(11) DEFAULT NULL,
  `gasAmount` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gashistory`
--

LOCK TABLES `gashistory` WRITE;
/*!40000 ALTER TABLE `gashistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `gashistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `remark` varchar(64) DEFAULT NULL,
  `url` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'员工管理','员工管理','/users'),(2,'子站管理','子站管理','/substation'),(3,'业务处理','业务处理','/business'),(4,'数据查询','数据查询','/data'),(5,'权限管理','权限管理','/permission'),(6,'系统设置','系统设置','/setting');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rechargehistory`
--

DROP TABLE IF EXISTS `rechargehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rechargehistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` varchar(64) DEFAULT NULL,
  `operatorid` int(11) DEFAULT NULL,
  `money` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rechargehistory`
--

LOCK TABLES `rechargehistory` WRITE;
/*!40000 ALTER TABLE `rechargehistory` DISABLE KEYS */;
INSERT INTO `rechargehistory` VALUES (1,'535aa2c8-b77f-423c-baba-9e27863da4c2',1,100,270,'2015-12-21 17:37:19'),(2,'535aa2c8-b77f-423c-baba-9e27863da4c2',1,300,540,'2015-12-21 17:37:51'),(3,'535aa2c8-b77f-423c-baba-9e27863da4c2',1,100,465,'2015-12-24 17:37:00');
/*!40000 ALTER TABLE `rechargehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registerhistory`
--

DROP TABLE IF EXISTS `registerhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registerhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(11) DEFAULT NULL,
  `operatorid` int(11) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registerhistory`
--

LOCK TABLES `registerhistory` WRITE;
/*!40000 ALTER TABLE `registerhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `registerhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `desc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin',NULL),(2,'employee',NULL),(3,'customer',NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolemenu`
--

DROP TABLE IF EXISTS `rolemenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rolemenu` (
  `roleid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  PRIMARY KEY (`roleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolemenu`
--

LOCK TABLES `rolemenu` WRITE;
/*!40000 ALTER TABLE `rolemenu` DISABLE KEYS */;
INSERT INTO `rolemenu` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(2,3),(2,4);
/*!40000 ALTER TABLE `rolemenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting` (
  `key` varchar(45) NOT NULL,
  `value` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES ('agentid','20'),('corpid','wx75a40ad206394845'),('domain','http://zjy187156814.6655.la:10328'),('EncodingAESKey','vMpk78HxIOg9sItzl5QeRhVPYnZfiuAXB8NOlcjBeWC'),('secret','mZnEl0LWLRwj30fqicGcXvbOwbLjB4760ckBIsHNjXwjeUACRATtngR-zVhNnmcr'),('Token','LjLEnZTyM24YWQVcMM5peVxaG0p2J9d');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `cardid` varchar(100) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  `carid` int(11) DEFAULT NULL,
  `lastLoginDate` date DEFAULT NULL,
  `idcard` varchar(45) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin','18234134166','535aa2c8-b77f-423c-baba-9e27863da4c2',1,'yt00522',1,1,NULL,'140602199205079013',NULL),(2,'shanghai','shanghai','1233212321','12312312312321321',2,'iyi23321',2,NULL,NULL,NULL,NULL),(3,'beijing','beijing','1231231233','213123123213213123',3,'3213321',2,NULL,NULL,NULL,NULL),(4,'taiyuan','taiyuan','12332134213','321321312412312312',4,'3213412',2,NULL,NULL,NULL,NULL),(14,'高宇','456789','18234085494','0c41e679-bd82-4c51-b412-a8fb5f774b8c',NULL,'18234085494',3,13,NULL,'123456789123456789',NULL),(15,'amos','456456','12345678911','fced6382-2207-4ebb-abae-a82736fda6a3',NULL,'12345678911',3,14,NULL,'123132123132456456',NULL);
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

-- Dump completed on 2015-12-27 12:49:29
