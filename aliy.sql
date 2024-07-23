-- MySQL dump 10.13  Distrib 8.2.0, for macos13.5 (arm64)
--
-- Host: aliydatabase.cvofhzhivuyz.ap-northeast-2.rds.amazonaws.com    Database: aliy
-- ------------------------------------------------------
-- Server version	8.0.35

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(32) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `accountStatus` enum('Activation','Disabled','Pending') NOT NULL,
  `providerType` enum('KAKAO','GOOGLE','NAVER','LOCAL') NOT NULL,
  `providerId` varchar(255) DEFAULT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_60328bf27019ff5498c4b977421` (`userId`),
  CONSTRAINT `FK_60328bf27019ff5498c4b977421` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('2023-12-01 13:31:17.844370','2023-12-01 13:31:17.844370',1,'admin@aliy.ai','$2b$10$5SM937d1rfLHXd445bqUp.4VsTY2Ok.7E6G1ql07xU./1wZNIIHvy','Activation','LOCAL',NULL,1),('2023-12-01 13:31:22.169961','2023-12-01 13:31:22.169961',2,'admin1@aliy.ai','$2b$10$t7ZiZe3Uy1QqEaXWjA0peu19TI4zeHOlvKfNhbnMriV4Gb1BumKOi','Activation','LOCAL',NULL,2),('2023-12-01 13:31:25.642715','2023-12-01 13:31:25.642715',3,'admin2@aliy.ai','$2b$10$2k63DkfI88BmGf0x0Hz.VOv6opZVSkR9OWyR96LTlBsvPFV303gUe','Activation','LOCAL',NULL,3),('2023-12-01 13:31:28.767628','2023-12-01 13:31:28.767628',4,'admin3@aliy.ai','$2b$10$dp.RMltTGnQ3KIiI.tzwC.4GxuKcqfKLpKnIZXPtwueYvZFRuzXue','Activation','LOCAL',NULL,4),('2023-12-01 13:31:32.057086','2023-12-01 13:31:32.057086',5,'admin4@aliy.ai','$2b$10$05S/.zLwkO0ejOHxzr/KAOxbCHOnBMzcrzpjmDO16qS5/4itiRkqG','Activation','LOCAL',NULL,5),('2023-12-01 13:31:34.777590','2023-12-01 13:31:34.777590',6,'admin5@aliy.ai','$2b$10$wG4/PKvagBRXhYz.UJJfP.TGLzySEXFYEvy/00Zdh/ELGFJNiGm66','Activation','LOCAL',NULL,6),('2023-12-16 12:02:07.452482','2024-06-10 21:48:32.000000',8,'tpwnszja2@naver.com',NULL,'Activation','KAKAO','3055631102',8),('2023-12-17 09:14:15.598245','2024-01-10 13:11:17.000000',9,'creativeceline@gmail.com',NULL,'Activation','KAKAO','3228216899',9),('2023-12-17 18:12:18.580256','2024-01-13 14:49:04.000000',10,'kjhhy1005@gmail.com',NULL,'Activation','GOOGLE','112666034466721825375',10),('2023-12-18 03:24:46.277867','2024-06-04 14:01:20.000000',11,'alivjung@gmail.com',NULL,'Activation','GOOGLE','110813274560174301589',11),('2023-12-18 09:03:03.125373','2023-12-19 12:39:15.000000',12,'seungyoon2@nate.com',NULL,'Activation','KAKAO','3229749477',12),('2023-12-19 03:30:58.349822','2023-12-19 03:32:07.000000',13,'viisiongroup@gmail.com',NULL,'Activation','GOOGLE','110719339188346524494',13),('2023-12-19 03:42:21.016329','2023-12-19 03:45:39.000000',14,'contact@harrahome.com',NULL,'Activation','GOOGLE','117416098526558421902',14),('2023-12-19 06:30:34.591727','2023-12-21 08:24:19.000000',15,'808discovery@gmail.com',NULL,'Activation','GOOGLE','110160391573866498566',15),('2023-12-19 06:39:14.019527','2023-12-31 07:13:00.000000',16,'tradingaliy828@gmail.com',NULL,'Activation','GOOGLE','115088951359343175686',16),('2023-12-20 17:22:49.828596','2023-12-20 17:22:49.828596',17,'tpwnszja2@gmail.com',NULL,'Activation','GOOGLE','115443887296310891918',NULL),('2023-12-21 04:44:50.133636','2023-12-21 04:44:50.133636',18,'iloodainvest@gmail.com',NULL,'Activation','GOOGLE','113348808600125418193',NULL),('2023-12-21 06:54:24.793865','2023-12-21 06:54:24.000000',19,'tradingaliy1@gmail.com',NULL,'Activation','GOOGLE','109730228808156163105',19),('2023-12-21 07:11:52.161821','2023-12-21 07:11:52.000000',20,'aiaiai80828@gmail.com',NULL,'Activation','GOOGLE','105877813023948540414',20),('2023-12-21 18:12:31.775481','2023-12-21 18:12:31.775481',21,'wjdgustest@naver.com','$2b$10$xlXXpQjb3rJeFoY.iefVLeEZ9ix2/gdtfTn1IhjV3/G3lKWIK7dEm','Activation','LOCAL',NULL,21),('2023-12-21 18:13:31.117692','2023-12-21 18:13:31.117692',22,'wjdgustest1@naver.com','$2b$10$CQwQ8q0KujvsMjDiHJGgsupl1wSayymyB3khs8LVPgawXxSYZApVe','Activation','LOCAL',NULL,22),('2023-12-21 18:20:18.885965','2023-12-21 18:20:18.885965',23,'wjdgustest3@naver.com','$2b$10$tfr0AWpzw6LmDeqsWLDuiuC71Z4B8MOi2.WQKYrUp2ZAsOoNe8xUa','Activation','LOCAL',NULL,23),('2023-12-22 02:22:11.119148','2023-12-22 02:22:11.119148',24,'afeelgood@nate.com','$2b$10$N2lilCJEWNJduOfctqSv1uk5hb2ZmIxsD/6eoMr8zKXEyni6AqukO','Activation','LOCAL',NULL,24),('2023-12-22 02:23:09.816576','2023-12-22 02:23:09.816576',25,'bujaappa@nate.com','$2b$10$PyQs/bCrl8YU2WPDZAQoT.x3rQ7MjcjgfahHzSg78vCm1JXjNNMOG','Activation','LOCAL',NULL,25),('2023-12-22 02:24:01.334157','2023-12-22 02:24:01.334157',26,'beforesunset@nate.com','$2b$10$aCYA1MZMUz4bbG39XwKQK.rqeCQXBzqm9N1SZg7IbilIoChn.5mfS','Activation','LOCAL',NULL,26),('2023-12-22 02:30:16.372111','2023-12-22 02:30:16.372111',27,'smartbull@nate.com','$2b$10$9FQnApeOFXo7hAhyfd.ofuiQNxAUVAtFeO0GIs/NYihjCZqAapxoy','Activation','LOCAL',NULL,27),('2023-12-22 03:14:52.024289','2023-12-22 03:14:52.024289',28,'editoryou@nate.com','$2b$10$xL.dg/EWc.ZNJgtRRZm5M.gjHtmMKEhkKrEvKiGCoPV2kqeCCfFS6','Activation','LOCAL',NULL,28),('2023-12-22 03:19:05.783687','2023-12-22 03:19:05.783687',29,'happysense@nate.com','$2b$10$11eAStoRJPgjp0YO9Yxda.Hyhlwa7cU4H48dJk28NFbnJ1v6cvWH6','Activation','LOCAL',NULL,29),('2023-12-22 03:21:28.792514','2023-12-22 03:21:28.792514',30,'samsungdong@nate.com','$2b$10$LVwRNLgWj6SfB8kZrolrSuhFHjE53glXVUNHhN5gHCnkMEr6IqzDm','Activation','LOCAL',NULL,30),('2023-12-22 03:23:19.377370','2023-12-22 03:23:19.377370',31,'ilooda@nate.com','$2b$10$roDcFM.PSTl5RJ7RZF.YW.kI4KE.H.WruyQdAnSsDOqDg58X.Vq8W','Activation','LOCAL',NULL,31),('2023-12-22 03:24:34.458269','2023-12-22 03:24:34.458269',32,'3percent@nate.com','$2b$10$JbQay5zWGNaw2AWXIDafZOxCNrEUkW8.io4HRSrIb1K5Lw6C7MRB6','Activation','LOCAL',NULL,32),('2023-12-22 03:25:47.412031','2023-12-22 03:25:47.412031',33,'traderyun2@nate.com','$2b$10$9mk8gZ6QAVuxv0RsyLBKqeZVqipG5V2d6jdOOqVLEt6S2xU0LrUyG','Activation','LOCAL',NULL,33),('2023-12-22 03:27:06.055680','2023-12-22 03:27:06.055680',34,'happy@nate.com','$2b$10$BxzWeAhkvSVhDDRIePnYoebVIfec/If9lhKnm/I8lmy7LQqthry0G','Activation','LOCAL',NULL,34),('2023-12-22 04:08:59.269919','2023-12-22 04:08:59.269919',35,'5percent@nate.com','$2b$10$.uBmXwHA0bPxv48xzIVG9OQ9qNTqEagrxL/eRfkNBIa8APSRDFV0i','Activation','LOCAL',NULL,35),('2023-12-22 04:10:28.663716','2023-12-22 04:10:28.663716',36,'life@nate.com','$2b$10$1Pai8yIknAhjKuEYxjy1PukUaCdKfNcQAPwt8Zk7TjkXA5AkxpQPe','Activation','LOCAL',NULL,36),('2023-12-22 08:29:32.428144','2023-12-22 08:29:32.428144',37,'bul@nate.com','$2b$10$S6iuXpQPojjfHWE7ImsJhOflwsocGx3ayzhGljCCaEpfG7/EVlUFu','Activation','LOCAL',NULL,37),('2023-12-22 08:31:37.301280','2023-12-22 08:31:37.301280',38,'rich@nate.com','$2b$10$ICoFz/9wn5S2wERir.DhfeU1zPQveG9v/IlMRnFhGkcaXvcNLz9fO','Activation','LOCAL',NULL,38),('2023-12-26 07:45:41.127949','2024-07-20 18:07:49.000000',39,'substance99@naver.com',NULL,'Activation','KAKAO','3055915203',39),('2023-12-27 03:18:27.213588','2023-12-27 03:18:27.000000',40,'aliyteam@naver.com',NULL,'Activation','NAVER','CJkRU8srD2puq-kWK9QYtbkw-5WGyh-N4pTpwDLFgTA',40),('2023-12-28 11:27:27.504875','2023-12-28 11:27:27.504875',41,'backend@nate.com','$2b$10$1VyITMxB3Xonh6lJobF7HeZL6pPzpEmhZXmx5kEUz0SFblayVsWQS','Activation','LOCAL',NULL,41),('2024-01-10 13:43:44.591075','2024-01-10 13:43:44.000000',42,'livjung@naver.com',NULL,'Activation','NAVER','SY2gPnWwQJzLuomZH5Cp4BLfVAi_DBJGz-1V2ZEp3xw',42),('2024-01-11 18:58:11.197247','2024-01-11 18:58:11.000000',43,'sukim9073@naver.com',NULL,'Activation','KAKAO','3281338312',43),('2024-01-13 11:30:24.439558','2024-01-13 11:30:24.000000',44,'godjaewook@naver.com',NULL,'Activation','KAKAO','3283985422',44),('2024-01-29 01:38:05.812278','2024-05-05 01:36:32.000000',45,'ilove5310@naver.com',NULL,'Activation','NAVER','vGRxPLNtmQ0nkAEaiJc3x1a0HTfYs8K-FmXfbZYZ2CY',45),('2024-04-20 16:08:53.017101','2024-06-04 13:57:16.000000',46,'favorsyoon@gmail.com',NULL,'Activation','GOOGLE','115709720092011177999',46),('2024-04-26 13:00:15.473267','2024-04-26 13:00:15.000000',47,'snu.infinity@gmail.com',NULL,'Activation','GOOGLE','106508166429381923135',47),('2024-05-05 01:36:59.635490','2024-05-05 01:36:59.000000',48,'hisom5310@gmail.com',NULL,'Activation','GOOGLE','109636831010565753833',48),('2024-06-06 18:14:17.165157','2024-06-06 18:14:17.000000',49,'harrajung@gmail.com',NULL,'Activation','GOOGLE','107821158089747161543',49);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoryMapper`
--

DROP TABLE IF EXISTS `categoryMapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoryMapper` (
  `id` int NOT NULL AUTO_INCREMENT,
  `serviceId` int NOT NULL,
  `mainCategoryId` int NOT NULL,
  `subCategoryId` int NOT NULL,
  `detailCategoryId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_0da1afb759566ceceef739830dd` (`serviceId`),
  KEY `FK_94a2675179e0ac4713372382ef4` (`mainCategoryId`),
  KEY `FK_06a67b8528cdc7fb021978889d4` (`subCategoryId`),
  KEY `FK_1617db4ef9c9bd4d7780f190abe` (`detailCategoryId`),
  CONSTRAINT `FK_06a67b8528cdc7fb021978889d4` FOREIGN KEY (`subCategoryId`) REFERENCES `subCategory` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_0da1afb759566ceceef739830dd` FOREIGN KEY (`serviceId`) REFERENCES `service` (`id`),
  CONSTRAINT `FK_1617db4ef9c9bd4d7780f190abe` FOREIGN KEY (`detailCategoryId`) REFERENCES `detailCategory` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_94a2675179e0ac4713372382ef4` FOREIGN KEY (`mainCategoryId`) REFERENCES `mainCategory` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoryMapper`
--

LOCK TABLES `categoryMapper` WRITE;
/*!40000 ALTER TABLE `categoryMapper` DISABLE KEYS */;
INSERT INTO `categoryMapper` VALUES (1,3,4,1,31),(2,6,4,1,18),(3,1,1,3,2),(4,4,4,1,21),(5,5,4,1,18),(6,2,1,3,2),(7,9,4,1,21),(8,7,4,1,21),(9,8,4,1,19),(10,10,4,1,18),(11,12,4,1,18),(12,11,4,1,18),(13,13,4,1,18),(14,14,4,6,30),(15,18,4,1,18),(16,16,4,1,18),(17,15,4,1,18),(18,17,4,1,18),(19,19,4,1,21),(21,22,1,3,2),(22,21,1,3,2),(23,24,1,3,2),(24,23,1,3,2),(25,26,4,1,21),(26,25,4,1,21),(27,29,4,1,18),(28,27,4,1,21),(29,28,4,1,21),(30,30,4,1,18),(31,31,4,1,18),(32,32,4,1,19),(33,33,4,1,18),(34,37,4,1,20),(35,38,4,1,21),(36,34,4,1,20),(37,35,4,1,20),(38,39,4,1,21),(39,36,4,1,20),(40,42,4,1,21),(41,40,4,1,30),(42,41,4,1,18),(43,46,4,1,21),(44,44,4,1,21),(45,43,4,1,20),(46,45,4,1,21),(47,49,4,1,30),(48,47,4,8,32),(49,51,4,1,21),(50,48,4,1,21),(51,52,4,1,20),(52,50,4,1,21),(53,54,4,1,21),(54,55,4,1,18),(55,53,4,1,18),(56,56,4,1,18),(57,57,4,1,21),(58,58,4,1,18),(59,59,4,1,19),(60,60,4,1,18),(61,62,4,1,18),(62,61,4,1,21),(63,64,4,1,18),(64,63,4,1,21),(65,65,4,6,30),(66,66,4,1,20),(67,67,4,1,18),(68,68,4,1,21),(69,69,4,1,19),(70,5,4,1,21),(71,5,4,1,19),(72,6,4,1,21),(73,6,4,1,19),(74,4,4,1,19),(75,7,4,1,19),(76,10,4,1,21),(77,10,4,1,19),(78,10,4,1,20),(79,11,4,1,21),(80,11,4,1,19),(81,11,4,1,20),(82,13,4,1,21),(83,13,4,1,19),(84,13,4,1,20),(85,16,4,1,21),(86,16,4,1,19),(87,16,4,1,20),(88,17,4,1,21),(89,17,4,1,19),(90,17,4,1,20),(91,17,4,1,22),(92,18,4,1,21),(93,18,4,1,19),(94,18,4,1,20),(95,19,4,1,19),(96,19,4,1,20),(97,25,4,1,19),(98,25,4,1,20),(99,29,4,1,21),(100,29,4,1,19),(101,29,4,1,20),(102,31,4,1,19),(103,33,4,1,21),(104,33,4,1,19),(105,33,4,1,20),(106,38,4,1,19),(107,40,4,1,18),(108,45,4,1,19),(109,46,4,1,19),(110,48,4,1,19),(111,49,4,1,18),(112,50,4,1,19),(113,51,4,1,19),(114,54,4,1,19),(115,55,4,1,21),(116,55,4,1,19),(117,55,4,1,20),(118,56,4,1,30),(119,58,4,1,21),(120,58,4,1,19),(121,58,4,1,20),(122,60,4,1,21),(123,60,4,1,19),(124,60,4,1,20),(125,63,4,1,19),(126,64,4,1,21),(127,64,4,1,19),(128,64,4,1,20),(129,67,4,1,30),(130,70,1,3,2),(131,71,1,3,2),(132,72,1,3,9),(133,73,1,3,2),(134,74,1,3,7),(135,75,1,3,9),(136,76,1,5,11),(137,77,1,3,9),(138,78,1,3,2),(139,79,1,3,9),(140,80,1,3,10),(141,81,1,3,4),(142,82,1,3,2),(143,83,1,3,9),(144,84,1,3,2),(145,85,1,3,2),(146,86,1,4,6),(147,87,1,3,2),(148,88,1,3,2),(149,89,1,3,2),(150,90,1,3,7),(151,91,1,3,10),(152,92,1,4,6),(153,93,1,4,1),(154,94,1,3,9),(155,95,1,3,9),(156,96,1,3,9),(157,97,1,4,1),(158,98,1,4,1),(159,99,1,5,11),(160,100,1,5,12),(161,101,1,3,9),(162,102,1,3,2),(163,103,1,3,2),(164,104,7,12,43),(165,105,7,12,43),(166,106,7,12,43),(167,107,7,12,43),(168,108,7,12,43),(169,109,7,12,43),(170,110,10,23,67),(171,111,1,4,8),(172,112,7,12,46),(173,112,7,12,43),(174,112,7,12,44),(175,113,7,12,47),(176,113,7,12,46),(177,113,7,12,43),(178,113,7,12,44),(179,114,7,12,44),(180,115,7,12,46),(181,115,7,12,43),(182,116,7,12,43),(183,116,7,12,46),(184,117,7,12,46),(185,117,7,12,43),(186,118,7,12,46),(187,118,7,12,43),(188,119,7,12,43),(189,119,7,12,47),(190,120,7,12,46),(191,120,7,12,43),(192,121,7,12,46),(193,121,7,12,43),(194,122,7,12,46),(195,122,7,12,43),(196,123,7,12,46),(197,124,7,12,43),(198,125,6,10,37),(199,126,6,10,37),(200,127,6,10,37),(201,128,6,10,37),(202,129,9,28,105),(203,130,6,10,37),(204,131,10,27,73),(205,132,6,10,37),(206,133,6,10,37),(207,134,6,10,37),(208,135,1,3,2),(209,136,1,3,10),(210,137,1,3,2),(211,138,1,3,2),(212,139,1,3,2),(213,140,1,3,10),(214,141,1,3,9),(215,142,1,5,11),(216,143,8,24,77),(217,144,6,10,37);
/*!40000 ALTER TABLE `categoryMapper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certification`
--

DROP TABLE IF EXISTS `certification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certification` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `id` int NOT NULL AUTO_INCREMENT,
  `certificationNumber` varchar(6) NOT NULL,
  `userId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5c8aa0b948082342bc49d1bcfd9` (`userId`),
  CONSTRAINT `FK_5c8aa0b948082342bc49d1bcfd9` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certification`
--

LOCK TABLES `certification` WRITE;
/*!40000 ALTER TABLE `certification` DISABLE KEYS */;
/*!40000 ALTER TABLE `certification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `imageUrl` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES ('2023-12-01 13:30:39.281437','2024-01-07 15:34:03.523538',1,'스파르타코딩클럽','','',''),('2023-12-01 13:30:39.309322','2023-12-01 13:30:39.309322',2,'드림코딩','','',''),('2023-12-01 13:30:39.335471','2023-12-01 13:30:39.335471',3,'노마드코더','','',''),('2023-12-01 13:30:39.361827','2023-12-01 13:30:39.361827',4,'팀스파르타','','',''),('2023-12-01 13:30:39.390057','2023-12-01 13:30:39.390057',5,'국제컴퓨터아트학원','','',''),('2023-12-01 13:30:39.426069','2023-12-01 13:30:39.426069',6,'구름톤 트레이닝','','',''),('2023-12-01 13:30:39.464724','2023-12-01 13:30:39.464724',7,'이젠아카데미','','',''),('2023-12-01 13:30:39.495727','2023-12-01 13:30:39.495727',8,'하이미디어컴퓨터학원','','',''),('2023-12-01 13:30:50.959475','2023-12-01 13:30:50.959475',10,'코딩애플','','',''),('2023-12-16 08:15:58.409621','2023-12-16 08:15:58.409621',11,'코드잇','','',''),('2023-12-16 08:27:15.434684','2023-12-16 08:27:15.434684',12,'제로베이스','','',''),('2023-12-16 09:17:17.757890','2023-12-16 09:17:17.757890',13,'케이티','','',''),('2023-12-18 06:39:15.882943','2023-12-18 06:39:15.882943',14,'패스트캠퍼스, 중소기업벤처진흥공단','','',''),('2023-12-18 07:18:42.402086','2023-12-18 07:18:42.402086',15,'코드스테이츠','','',''),('2023-12-19 06:58:33.007134','2023-12-19 06:58:33.007134',16,'더트레이딩','','',''),('2023-12-19 09:43:20.067685','2023-12-19 09:43:20.067685',17,'시그널리포트','','',''),('2023-12-19 10:53:44.464904','2023-12-19 10:53:44.464904',18,'패스트캠퍼스','','',''),('2023-12-23 05:57:02.157717','2023-12-23 05:57:02.157717',19,'강환국','','',''),('2023-12-23 06:36:20.248265','2023-12-23 06:36:20.248265',20,'체슬리TV','','',''),('2023-12-23 06:53:29.665468','2023-12-23 06:53:29.665468',21,'소수몽키','','',''),('2023-12-23 07:01:23.671987','2023-12-23 07:01:23.671987',22,'재테크읽어주는 파일럿','','',''),('2023-12-23 07:15:25.020781','2023-12-23 07:15:25.020781',23,'핀업','','',''),('2023-12-23 07:49:11.513861','2023-12-23 07:49:11.513861',24,'인범티비','','',''),('2023-12-23 07:59:19.576254','2023-12-23 07:59:19.576254',25,'천기가이 - Chunki Guy','','',''),('2023-12-23 08:06:10.814594','2023-12-23 08:06:10.814594',26,'돈깡','','',''),('2023-12-23 08:14:07.080837','2023-12-23 08:14:07.080837',27,'주식제값찾기(강영현)','','',''),('2023-12-23 08:15:29.068160','2023-12-23 08:15:29.068160',28,'염승환','','',''),('2023-12-26 07:37:42.989036','2023-12-26 07:37:42.989036',29,'클래스101','','',''),('2023-12-28 10:08:27.511144','2023-12-28 12:17:27.642943',30,'도매매','','',''),('2023-12-28 10:41:20.675418','2023-12-28 10:41:20.675418',32,'라이프해킹스쿨','','',''),('2023-12-29 13:26:17.744015','2023-12-29 13:26:17.744015',34,'클래스유','','',''),('2023-12-29 13:45:39.804489','2023-12-29 13:45:39.804489',35,'돈크라테스','','',''),('2023-12-29 13:51:35.538410','2023-12-29 13:51:35.538410',36,'쇼건','','',''),('2023-12-29 13:56:38.660301','2023-12-29 13:56:38.660301',37,'쇼건,현프로,이프로','','',''),('2023-12-29 15:28:21.867503','2023-12-29 15:28:21.867503',38,'ssafy(싸피)','','',''),('2023-12-29 15:34:27.945913','2023-12-29 15:34:27.945913',39,'멋쟁이사자처럼(TECHIT)','','','');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courseCertification`
--

DROP TABLE IF EXISTS `courseCertification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courseCertification` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `id` int NOT NULL AUTO_INCREMENT,
  `certificationImage` varchar(255) DEFAULT NULL,
  `content` text,
  `status` enum('PENDING','APPROVED','REJECTED') NOT NULL DEFAULT 'PENDING',
  `userId` int NOT NULL,
  `serviceId` int DEFAULT NULL,
  `serviceRequestId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6ef78b42ba3798c499b6ce7bfc1` (`userId`),
  KEY `FK_23c6f425fd31aba02247fae4830` (`serviceId`),
  KEY `FK_62565e6d7cbd723aa2eccc6a256` (`serviceRequestId`),
  CONSTRAINT `FK_23c6f425fd31aba02247fae4830` FOREIGN KEY (`serviceId`) REFERENCES `service` (`id`),
  CONSTRAINT `FK_62565e6d7cbd723aa2eccc6a256` FOREIGN KEY (`serviceRequestId`) REFERENCES `serviceRequest` (`id`),
  CONSTRAINT `FK_6ef78b42ba3798c499b6ce7bfc1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courseCertification`
--

LOCK TABLES `courseCertification` WRITE;
/*!40000 ALTER TABLE `courseCertification` DISABLE KEYS */;
INSERT INTO `courseCertification` VALUES ('2023-12-21 07:40:36.443556','2023-12-21 07:40:36.443556',1,'','인증어떻게 하나요?','PENDING',19,104,NULL),('2023-12-26 01:57:51.218553','2023-12-26 01:57:51.218553',2,'https://aliy.s3.ap-northeast-2.amazonaws.com/CourseCertification/1703555882024sj88Y9x0S0uU1RPtkuxU_ê·¸ë¦¼5_ìì .png','승인하면 어떤 로고가 생길까\r\n','PENDING',25,118,NULL),('2023-12-26 03:35:52.036843','2023-12-26 03:35:52.036843',3,'https://aliy.s3.ap-northeast-2.amazonaws.com/CourseCertification/1703561752796sj88Y9x0S0uU1RPtkuxU_ê·¸ë¦¼5_ìì .png','인증','PENDING',25,109,NULL),('2023-12-26 10:25:53.233375','2023-12-26 10:25:53.233375',4,'https://aliy.s3.ap-northeast-2.amazonaws.com/CourseCertification/1703586421134photo_2023-12-26_10-47-00.jpg','인증','PENDING',26,109,NULL),('2024-01-08 11:34:35.329899','2024-01-08 11:34:35.329899',5,'https://aliy.s3.ap-northeast-2.amazonaws.com/CourseCertification/1704713762179áá¡á¯áá¡á«áá¡á¼áá©áá¡áá¡17_(2).jpeg','ㅇㅈ?','PENDING',8,54,NULL),('2024-01-08 11:45:00.844911','2024-01-08 11:45:00.844911',6,'https://aliy.s3.ap-northeast-2.amazonaws.com/CourseCertification/1704714353841áá¡á¯áá¡á«áá¡á¼áá©áá¡áá¡17_(2).jpeg','ㅇㅈ?','PENDING',8,53,NULL),('2024-01-08 11:54:09.803244','2024-01-08 11:54:09.803244',7,'https://aliy.s3.ap-northeast-2.amazonaws.com/CourseCertification/1704714910790áá¡á¯áá¡á«áá¡á¼áá©áá¡áá¡17_(2).jpeg','ㅇㅈ?','PENDING',8,51,NULL),('2024-01-08 11:58:12.446800','2024-06-18 22:10:16.000000',8,'https://aliy.s3.ap-northeast-2.amazonaws.com/CourseCertification/1704715132495áá¡á¯áá¡á«áá¡á¼áá©áá¡áá¡17_(2).jpeg','ㅇㅈ?','PENDING',8,42,NULL),('2024-01-08 21:50:35.469060','2024-01-08 21:50:35.469060',9,'https://aliy.s3.ap-northeast-2.amazonaws.com/CourseCertification/1704718320709áá¡á¯áá¡á«áá¡á¼áá©áá¡áá¡17_(2).jpeg','ㅇㅈ?','PENDING',8,30,NULL),('2024-01-13 14:14:02.909340','2024-01-13 14:14:02.909340',10,'https://aliy.s3.ap-northeast-2.amazonaws.com/CourseCertification/1705122924539áá©á· ááµááµááµ.jpeg','12','PENDING',10,32,NULL);
/*!40000 ALTER TABLE `courseCertification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detailCategory`
--

DROP TABLE IF EXISTS `detailCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detailCategory` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `status` enum('Activation','Disabled','Pending') NOT NULL DEFAULT 'Activation',
  `subCategoryId` int NOT NULL,
  `position` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_69f5ac316913aec10b8ed60aa2a` (`subCategoryId`),
  CONSTRAINT `FK_69f5ac316913aec10b8ed60aa2a` FOREIGN KEY (`subCategoryId`) REFERENCES `subCategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detailCategory`
--

LOCK TABLES `detailCategory` WRITE;
/*!40000 ALTER TABLE `detailCategory` DISABLE KEYS */;
INSERT INTO `detailCategory` VALUES ('2023-12-01 13:30:18.468208','2023-12-01 13:30:18.468208',1,'마케팅 부트캠프','Activation',4,0),('2023-12-01 13:30:18.468884','2023-12-01 13:30:18.468884',2,'웹개발 부트캠프','Activation',3,0),('2023-12-01 13:30:18.468927','2023-12-01 13:30:18.468927',3,'디자인 부트캠프','Activation',5,0),('2023-12-01 13:30:18.471988','2023-12-01 13:30:18.471988',4,'게임 개발 부트캠프','Activation',3,0),('2023-12-01 13:30:18.473962','2023-12-01 13:30:18.473962',5,'보안 부트캠프','Activation',3,0),('2023-12-01 13:30:18.474194','2023-12-01 13:30:18.474194',6,'PM · 기획 부트캠프','Activation',4,0),('2023-12-01 13:30:18.473887','2023-12-01 13:30:18.473887',7,'클라우드 · 인프라 · 데브옵스 부트캠프','Activation',3,0),('2023-12-01 13:30:18.475936','2023-12-01 13:30:18.475936',8,'창업 부트캠프','Activation',4,0),('2023-12-01 13:30:18.477679','2023-12-01 13:30:18.477679',9,'데이터 AI 부트캠프','Activation',3,0),('2023-12-01 13:30:18.478073','2023-12-01 13:30:18.478073',10,'모바일 부트캠프','Activation',3,0),('2023-12-01 13:30:18.509007','2023-12-01 13:30:18.509007',11,'UI UX 부트캠프','Activation',5,0),('2023-12-01 13:30:18.514247','2023-12-01 13:30:18.514247',12,'영상 · 3D 부트캠프','Activation',5,0),('2023-12-01 13:30:18.516370','2023-12-01 13:30:18.516370',13,'메타버스 부트캠프','Activation',2,0),('2023-12-01 13:30:18.518550','2023-12-01 13:30:18.518550',14,'블록체인 부트캠프','Activation',2,0),('2023-12-01 13:30:18.519905','2023-12-01 13:30:18.519905',15,'AR / VR 부트캠프','Activation',2,0),('2023-12-01 13:30:18.520172','2023-12-01 13:30:18.520172',16,'IoT 임베디드 반도체 부트캠프','Activation',2,0),('2023-12-01 13:30:18.522302','2023-12-01 13:30:18.522302',17,'로보틱스 부트캠프','Activation',2,0),('2023-12-01 13:30:18.522469','2023-12-01 13:30:18.522469',18,'웹 개발','Activation',1,0),('2023-12-01 13:30:18.524004','2023-12-01 13:30:18.524004',19,'백엔드 개발','Activation',1,0),('2023-12-01 13:30:18.524305','2023-12-01 13:30:18.524305',20,'모바일 앱 개발','Activation',1,0),('2023-12-01 13:30:18.546674','2023-12-01 13:30:18.546674',21,'프론트엔드 개발','Activation',1,0),('2023-12-01 13:30:18.557165','2023-12-01 13:30:18.557165',22,'데브옵스 · 인프라','Activation',1,0),('2023-12-01 13:30:18.560963','2023-12-01 13:30:18.560963',23,'보안 · 네트워크','Activation',1,0),('2023-12-01 13:30:18.561315','2023-12-01 13:30:18.561315',24,'컴퓨터공학/SW 엔지니어링','Activation',1,0),('2023-12-01 13:30:18.561534','2023-12-01 13:30:18.561534',25,'게임 개발','Activation',1,0),('2023-12-01 13:30:18.565332','2023-12-01 13:30:18.565332',26,'머신러닝','Activation',6,0),('2023-12-01 13:30:18.567238','2023-12-01 13:30:18.567238',27,'데이터 사이언스','Activation',6,0),('2023-12-01 13:30:18.567430','2023-12-01 13:30:18.567430',28,'데이터 엔지니어','Activation',6,0),('2023-12-01 13:30:18.575810','2023-12-01 13:30:18.575810',29,'메타버스','Activation',8,0),('2023-12-01 13:30:18.576211','2023-12-01 13:30:18.576211',30,'인공지능 AI','Activation',6,0),('2023-12-01 13:30:18.582730','2023-12-01 13:30:18.582730',31,'AR / VR','Activation',8,0),('2023-12-01 13:30:18.604720','2023-12-01 13:30:18.604720',32,'블록체인','Activation',8,0),('2023-12-01 13:30:18.611679','2023-12-01 13:30:18.611679',33,'로보틱스','Activation',8,0),('2023-12-01 13:30:18.613750','2023-12-26 07:46:20.171342',34,'책쓰기','Activation',11,0),('2023-12-01 13:30:18.613976','2023-12-01 13:30:18.613976',35,'자율주행','Activation',8,0),('2023-12-01 13:30:18.614124','2023-12-26 07:42:52.228162',36,'해외 이커머스 (아마존 · 쇼피 · 큐텐 등)','Activation',10,0),('2023-12-01 13:30:18.616941','2023-12-26 07:44:35.057918',37,'국내 이커머스 (온라인쇼핑몰 · 구매대행 등)','Activation',10,0),('2023-12-01 13:30:18.617272','2023-12-26 07:47:12.010025',38,'오프라인 창업 (프랜차이즈 · 카페 등)','Activation',13,0),('2023-12-01 13:30:18.618968','2023-12-26 15:08:56.720884',39,'콘텐츠 크리에이터 (유튜브 · 인스타그램 · 틱톡 등)','Activation',11,0),('2023-12-01 13:30:18.629759','2023-12-26 07:45:09.205074',40,'퍼스널 브랜딩 · 1인 기업 · 프리랜서','Activation',11,0),('2023-12-01 13:30:18.630106','2023-12-01 13:30:18.630106',41,'블로그 수익화','Activation',11,0),('2023-12-01 13:30:18.650495','2023-12-01 13:30:18.650495',42,'스타트업','Activation',13,0),('2023-12-01 13:30:18.657491','2023-12-01 13:30:18.657491',43,'국내 주식 단기 트레이딩','Activation',12,0),('2023-12-01 13:30:18.663151','2023-12-01 13:30:18.663151',44,'해외 주식','Activation',12,0),('2023-12-01 13:30:18.673864','2023-12-01 13:30:18.673864',45,'수익형 부동산','Activation',14,0),('2023-12-01 13:30:18.674205','2023-12-01 13:30:18.674205',46,'국내 주식 중장기 투자','Activation',12,0),('2023-12-01 13:30:18.674386','2023-12-01 13:30:18.674386',47,'파생 상품','Activation',12,0),('2023-12-01 13:30:18.674533','2023-12-01 13:30:18.674533',48,'가상 화폐','Activation',12,0),('2023-12-01 13:30:18.675545','2023-12-01 13:30:18.675545',49,'저작권 투자','Activation',18,0),('2023-12-01 13:30:18.675707','2023-12-01 13:30:18.675707',50,'경매','Activation',14,0),('2023-12-01 13:30:18.677929','2023-12-01 13:30:18.677929',51,'공인중개사','Activation',17,0),('2023-12-01 13:30:18.697455','2023-12-01 13:30:18.697455',52,'토지 투자','Activation',14,0),('2023-12-01 13:30:18.705916','2023-12-01 13:30:18.705916',53,'아트테크','Activation',18,0),('2023-12-01 13:30:18.707563','2023-12-01 13:30:18.707563',54,'해외부동산','Activation',14,0),('2023-12-01 13:30:18.727461','2023-12-01 13:30:18.727461',55,'하드웨어','Activation',15,0),('2023-12-01 13:30:18.734516','2023-12-01 13:30:18.734516',56,'직무 가이드','Activation',19,0),('2023-12-01 13:30:18.734726','2023-12-01 13:30:18.734726',57,'직무 전환','Activation',16,0),('2023-12-01 13:30:18.734924','2023-12-01 13:30:18.734924',58,'면접','Activation',19,0),('2023-12-01 13:30:18.735084','2023-12-01 13:30:18.735084',59,'시험','Activation',19,0),('2023-12-01 13:30:18.738115','2023-12-01 13:30:18.738115',60,'이력서 · 포트폴리오','Activation',19,0),('2023-12-01 13:30:18.740118','2023-12-01 13:30:18.740118',61,'이직','Activation',16,0),('2023-12-01 13:30:18.743236','2023-12-01 13:30:18.743236',62,'오피스 툴','Activation',20,0),('2023-12-01 13:30:18.747769','2023-12-01 13:30:18.747769',63,'PM','Activation',21,0),('2023-12-01 13:30:18.758201','2023-12-01 13:30:18.758201',64,'PO','Activation',21,0),('2023-12-01 13:30:18.776174','2023-12-01 13:30:18.776174',65,'연봉 협상','Activation',20,0),('2023-12-01 13:30:18.789290','2023-12-01 13:30:18.789290',66,'전략 기획','Activation',21,0),('2023-12-01 13:30:18.791303','2023-12-01 13:30:18.791303',67,'경영','Activation',23,0),('2023-12-01 13:30:18.793295','2023-12-01 13:30:18.793295',68,'인사관리','Activation',23,0),('2023-12-01 13:30:18.793544','2023-12-01 13:30:18.793544',69,'업무 자동화','Activation',23,0),('2023-12-01 13:30:18.793732','2023-12-01 13:30:18.793732',70,'물류 · 구매','Activation',23,0),('2023-12-01 13:30:18.795151','2023-12-01 13:30:18.795151',71,'재무 / 회계 / 세무','Activation',23,0),('2023-12-01 13:30:18.805930','2023-12-01 13:30:18.805930',72,'금융 · VC','Activation',23,0),('2023-12-01 13:30:18.811606','2023-12-01 13:30:18.811606',73,'마케팅 / 광고 / 홍보','Activation',27,0),('2023-12-01 13:30:18.815567','2023-12-01 13:30:18.815567',74,'영업','Activation',27,0),('2023-12-01 13:30:18.838702','2023-12-01 13:30:18.838702',75,'미디어 커뮤니케이션','Activation',22,0),('2023-12-01 13:30:18.850464','2023-12-01 13:30:18.850464',76,'웹툰/웹소설','Activation',24,0),('2023-12-01 13:30:18.851963','2023-12-01 13:30:18.851963',77,'UI UX · 웹디자인','Activation',24,0),('2023-12-01 13:30:18.852259','2023-12-01 13:30:18.852259',78,'2D · 그래픽 디자인 및 일러스트','Activation',24,0),('2023-12-01 13:30:18.852420','2023-12-01 13:30:18.852420',79,'리더쉽','Activation',22,0),('2023-12-01 13:30:18.855282','2023-12-01 13:30:18.855282',80,'건축 디자인','Activation',24,0),('2023-12-01 13:30:18.855981','2023-12-01 13:30:18.855981',81,'3D 및 애니메이션','Activation',24,0),('2023-12-01 13:30:18.862828','2023-12-01 13:30:18.862828',82,'패션 디자인','Activation',24,0),('2023-12-01 13:30:18.863195','2023-12-01 13:30:18.863195',83,'기타 디자인','Activation',24,0),('2023-12-01 13:30:18.864584','2023-12-01 13:30:18.864584',84,'브랜딩','Activation',24,0),('2023-12-01 13:30:18.886698','2023-12-01 13:30:18.886698',85,'인테리어 디자인','Activation',24,0),('2023-12-01 13:30:18.890073','2023-12-01 13:30:18.890073',86,'게임 디자인','Activation',24,0),('2023-12-01 13:30:18.899469','2023-12-01 13:30:18.899469',87,'블렌더','Activation',25,0),('2023-12-01 13:30:18.900714','2023-12-01 13:30:18.900714',88,'연기 / 연출','Activation',26,0),('2023-12-01 13:30:18.901099','2023-12-01 13:30:18.901099',89,'영상 · 사진','Activation',25,0),('2023-12-01 13:30:18.903051','2023-12-01 13:30:18.903051',90,'모션그래픽','Activation',25,0),('2023-12-01 13:30:18.903276','2023-12-01 13:30:18.903276',91,'3D · CG','Activation',25,0),('2023-12-01 13:30:18.913907','2023-12-01 13:30:18.913907',92,'수학','Activation',9,0),('2023-12-01 13:30:18.914324','2023-12-01 13:30:18.914324',93,'인문학','Activation',9,0),('2023-12-01 13:30:18.915995','2023-12-01 13:30:18.915995',94,'작곡 / 음향','Activation',26,0),('2023-12-01 13:30:18.924470','2023-12-01 13:30:18.924470',95,'과학','Activation',9,0),('2023-12-01 13:30:18.951218','2023-12-01 13:30:18.951218',96,'사회과학','Activation',9,0),('2023-12-01 13:30:18.952938','2023-12-01 13:30:18.952938',97,'영어','Activation',7,0),('2023-12-01 13:30:18.953286','2023-12-01 13:30:18.953286',98,'기타 학문','Activation',9,0),('2023-12-01 13:30:18.956641','2023-12-01 13:30:18.956641',99,'스페인어','Activation',7,0),('2023-12-01 13:30:18.958613','2023-12-01 13:30:18.958613',100,'중국어','Activation',7,0),('2023-12-01 13:30:18.971090','2023-12-01 13:30:18.971090',101,'일본어','Activation',7,0),('2023-12-01 13:30:18.983425','2023-12-01 13:30:18.983425',102,'기타 외국어','Activation',7,0),('2023-12-01 13:30:18.986841','2023-12-01 13:30:18.986841',103,'라이프 스타일','Activation',29,0),('2023-12-01 13:30:18.990291','2023-12-01 13:30:18.990291',105,'성공마인드','Activation',28,0),('2023-12-01 13:30:19.018739','2023-12-01 13:30:19.018739',106,'공예','Activation',29,0),('2023-12-01 13:30:19.020770','2023-12-26 07:47:30.581512',107,'글쓰기','Activation',29,0),('2023-12-01 13:30:19.020960','2023-12-01 13:30:19.020960',108,'드로잉','Activation',29,0),('2023-12-01 13:30:19.021296','2023-12-01 13:30:19.021296',109,'요리','Activation',29,0),('2023-12-01 13:30:19.021177','2023-12-01 13:30:19.021177',110,'부모 교육','Activation',30,0),('2023-12-01 13:30:19.031628','2023-12-01 13:30:19.031628',111,'운동','Activation',31,0),('2023-12-01 13:30:19.033769','2023-12-01 13:30:19.033769',112,'자식 교육','Activation',30,0),('2023-12-01 13:30:19.038725','2023-12-01 13:30:19.038725',113,'요가','Activation',31,0);
/*!40000 ALTER TABLE `detailCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquiries`
--

DROP TABLE IF EXISTS `inquiries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inquiries` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `image` varchar(255) DEFAULT NULL,
  `status` enum('PENDING','COMPLETED') NOT NULL DEFAULT 'PENDING',
  `userId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_f4e1f635f2d312e6ae95c8a3a58` (`userId`),
  CONSTRAINT `FK_f4e1f635f2d312e6ae95c8a3a58` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiries`
--

LOCK TABLES `inquiries` WRITE;
/*!40000 ALTER TABLE `inquiries` DISABLE KEYS */;
/*!40000 ALTER TABLE `inquiries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mainCategory`
--

DROP TABLE IF EXISTS `mainCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mainCategory` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `status` enum('Activation','Disabled','Pending') NOT NULL DEFAULT 'Activation',
  `position` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainCategory`
--

LOCK TABLES `mainCategory` WRITE;
/*!40000 ALTER TABLE `mainCategory` DISABLE KEYS */;
INSERT INTO `mainCategory` VALUES ('2023-12-01 13:30:13.637262','2024-01-20 11:33:45.000000',1,'부트캠프','Activation',0),('2023-12-01 13:30:13.657248','2024-01-20 11:33:45.000000',2,'자격증 · 기술','Activation',1),('2023-12-01 13:30:13.670058','2024-01-20 11:33:41.000000',3,'학문 · 외국어','Activation',2),('2023-12-01 13:30:13.671928','2024-01-20 11:33:41.000000',4,'IT 개발  · AI','Activation',3),('2023-12-01 13:30:13.673412','2024-01-20 11:33:41.000000',5,'커리어','Activation',4),('2023-12-01 13:30:13.673826','2024-01-20 11:33:41.000000',6,'창업 · 부업','Activation',5),('2023-12-01 13:30:13.678283','2024-01-20 11:33:42.000000',7,'금융 · 재테크','Activation',6),('2023-12-01 13:30:13.678852','2024-01-20 11:33:42.000000',8,'크리에이티브 · 예술','Activation',7),('2023-12-01 13:30:13.680682','2024-01-20 11:33:42.000000',9,'자기계발 · 취미','Activation',8),('2023-12-01 13:30:13.686079','2024-01-20 11:33:42.000000',10,'비즈니스 · 마케팅','Activation',9);
/*!40000 ALTER TABLE `mainCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modifyServiceDetails`
--

DROP TABLE IF EXISTS `modifyServiceDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modifyServiceDetails` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `id` int NOT NULL AUTO_INCREMENT,
  `serviceId` int NOT NULL,
  `userId` int NOT NULL,
  `status` enum('PENDING','APPROVED') NOT NULL DEFAULT 'PENDING',
  `content` text,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_84f0773c4ad247d225cd6462f15` (`serviceId`),
  KEY `FK_60b615bae39619c5a660611f9ad` (`userId`),
  CONSTRAINT `FK_60b615bae39619c5a660611f9ad` FOREIGN KEY (`userId`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_84f0773c4ad247d225cd6462f15` FOREIGN KEY (`serviceId`) REFERENCES `service` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modifyServiceDetails`
--

LOCK TABLES `modifyServiceDetails` WRITE;
/*!40000 ALTER TABLE `modifyServiceDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `modifyServiceDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partnershipInquiries`
--

DROP TABLE IF EXISTS `partnershipInquiries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partnershipInquiries` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `serviceName` varchar(255) NOT NULL,
  `content` text,
  `status` enum('PENDING','APPROVED') NOT NULL DEFAULT 'PENDING',
  `userId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_89ab6079a70d516699b08e16712` (`userId`),
  CONSTRAINT `FK_89ab6079a70d516699b08e16712` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partnershipInquiries`
--

LOCK TABLES `partnershipInquiries` WRITE;
/*!40000 ALTER TABLE `partnershipInquiries` DISABLE KEYS */;
/*!40000 ALTER TABLE `partnershipInquiries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `id` int NOT NULL AUTO_INCREMENT,
  `targetId` int NOT NULL,
  `reason` varchar(128) NOT NULL,
  `type` enum('review','comment') NOT NULL,
  `status` varchar(128) NOT NULL DEFAULT '신고접수',
  `title` text NOT NULL,
  `content` text NOT NULL,
  `reportFileUrl` varchar(256) NOT NULL,
  `isAction` tinyint NOT NULL DEFAULT '0',
  `contentUrl` varchar(256) DEFAULT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_e347c56b008c2057c9887e230aa` (`userId`),
  CONSTRAINT `FK_e347c56b008c2057c9887e230aa` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `good` text NOT NULL,
  `bad` text NOT NULL,
  `performance` text NOT NULL,
  `tip` text NOT NULL,
  `starPoint` int NOT NULL,
  `likeCount` int NOT NULL DEFAULT '0',
  `commentCount` int NOT NULL DEFAULT '0',
  `batchNumber` varchar(32) NOT NULL,
  `educationStartDate` varchar(32) NOT NULL,
  `viewCount` int NOT NULL DEFAULT '0',
  `status` enum('PUBLIC','PRIVATE','DELETED') NOT NULL DEFAULT 'PUBLIC',
  `userId` int NOT NULL,
  `serviceId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_1337f93918c70837d3cea105d39` (`userId`),
  KEY `FK_5be56dc061111c8643e5ba1e9d0` (`serviceId`),
  CONSTRAINT `FK_1337f93918c70837d3cea105d39` FOREIGN KEY (`userId`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_5be56dc061111c8643e5ba1e9d0` FOREIGN KEY (`serviceId`) REFERENCES `service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES ('2023-12-19 10:03:37.716270','2023-12-27 09:16:42.000000',1,'월독프와 시그널 리포트를 2년간 구독한 후기입니다.','주식에서 중요한 재료 공부를 많이 할 수 있어서 좋았다. \n2년동안 월독프를 수강하면서 시그널 리포트를 함께 구독했었다. \n굉장히 많은 양의 뉴스를 봤고, 어떤 식으로 뉴스를 봐야하는지 감을 잡을 수 있었다.  \n많은 양의 뉴스를 2년간 봐서 이제는 뉴스의 제목만 읽어도 세계 경제를 흐름을 잡을 수 있게 되었다.','이 사람이 진짜로 돈을 단기매매로 많은 돈을 벌었는지는 모르겠다.  \n월독프를 수강하면서, 그리고 시그널리포트를 구독하면서 2년간 이 사람이 실시간으로 매수 매도하는 것을 보지 못했다.\n','시장에서 단기매매를 하더라도 거시경제가 중요하다는 것을 알게 되었다. \n새로운 뉴스를 볼 때 매매 경험이 많은 사람은 어떻게 이 뉴스를 바라 보는지 알 수 있었다. \n','유목민이라는 멘토가 보는 시장의 뷰가 틀릴 때가 굉장히 많습니다. \n유목민 멘토가 보는 시장의 뷰가 맞았을 때 맞췄다고 칭찬해달라고 그러는데, \n유목민 멘토가 보는 시장의 뷰가 틀리면, 아무런 이야기 없이 지나갑니다. \n내가 틀렸다. 정정한다는 이야기는 없이 넘어가는 경우가 많습니다. \n많이 맞추지 못합니다. 그저 한 사람일 뿐입니다. \n뇌피셜도 굉장히 많습니다.\n가끔 유목민이라는 멘토가 맞춘다고, 너무 유목민이라는 멘토가 말하는 것에 의존하지말고, 비중베팅하지 않으셔야 합니다.\n투자는 개인이 홀로 모든 것을 책임져야하기 때문입니다.\n\n어차피 올라가느냐, 내려가느냐 확률은 50%입니다.\n멘토에게 배울만한 점은 인생을 굉장히 부지런하게 산다는 것입니다. \n이런 부지런함이 지금의 유목민을 만든 것 같습니다. \n',2,2,1,'월독프수강생','2023-12-04T15:00:00.000Z',0,'PUBLIC',16,109),('2023-12-19 11:12:10.503092','2023-12-19 11:12:10.503092',4,'너무 기대했지만 너무 실망했던 강의','직접 경험한 사람들이 나와서 인터뷰하고, 그 때 당시의 이야기를 해주는 것은 좋았습니다. ','그런데 이건 돈을 받고 하는 \"강의\"인데, 에피소드 중심으로 인터뷰로 가득 채워버리니 무얼 배워야할지 모르겠다는 생각이 들었습니다.\n강의라기보다 인터뷰에 가까웠고, 너무 피상적이고 추상적이었습니다. \n\n이정도 퀄리티는 유튜브에서도 더 좋은 콘텐츠가 많은데, 강의 상세페이지와 너무도 다른 콘텐츠에 많이 실망했습니다.\n신현성 대표가 직접 가르쳐주는 것도 얼마 없었고, 대부분 지인들이 나와서 그때 당시의 상황을 서술하고 사담하는 것에 가까웠습니다.\n\n개인적으로는 THE RED 라는 프리미엄 강의라는 것에 비해서, 수강생들에게 무엇을 가르쳐주겠다는 진정성이 없었던 강의라고 생각합니다. \n상세페이지에 맞는 콘텐츠로 다시 촬영해주었으면 좋겠습니다.','성과가 나지 않았습니다. 무용담을 이야기하는 유튜브를 본 느낌입니다. \n\n상세페이지에서 열심히 어필한 것처럼, 그 내용 마다마다를 가르쳐주었다면 어땠을까 너무 아쉽고,\n수강료 고심하며 많이 망설이며 결제하였는데 그 가치를 못한다고 느꼈습니다. \n','기대한 만큼 좋은 강의가 아닐 수 있지만, 언론에 공개되지 않던 내부인들의 이야기를 들을 수 있다는 것에 가치를 느끼신다면 들어보셔도 괜찮습니다.',1,0,0,' ','2023-12-18T15:00:00.000Z',0,'PUBLIC',15,110),('2023-12-21 05:22:00.894816','2023-12-21 05:22:00.894816',5,'버저비터에게 처음부터 배웠더라면.....','상따로 23만원에서 다시 일어나신 분이라서, 상따 매매로 진짜 수익을 내고 있는 분에게 직접 배울 수 있어서 좋았다. \n강의 내용을 직접 실천하시면서 \n강사님 본인이 매매를 하고 있는지 보여주셨고 \n본인이 강의한 내용으로 직접 수익내고, 손실 보면서 대응하는 방법을 실시간으로 조작없이 볼 수 있어서 좋았다. ','장중강의가 많이 없어서 아쉽다. 1기 때는 잘 모르는 내용으로 강의를 하셨던 것이 아쉽다. 그러나 2기 3기 이후부터는 1기때의 내용을 피드백받으셔서 2기 3기에는 더욱 업그레이드 되셨다.','버저비터선생님께서 가르쳐주신대로 100만원이지만, 시장이 가져다 주는 수익이었지만,  \n소액으로 강의기간내에 원금대비 100% 수익을 낼 수 있었다. \n','강사님이 하시는 말씀을 꼭 여러번 돌려보시고, 하지말아야할 것 안해야할 것을 안하고 계좌를 지킬 수 있으면 수익이 날 수 있어요. \n버저비터쌤이 23만원으로 일어서셨던 21년 상승장이 아니기 때문에, 비중조절해서 상따하시고, \n꼭 소액으로 주식을 시작하시고\n1주, 100만원을 불리는 것을 경험해서 수익으로만 매매를 해서 멘탈을 유지하시기 바랍니다.\n매매경험을 2년,3년, 4년 이렇게 쌓이게 되면 자연스럽게 시장을 보는 눈이 달라지기 때문에 자연스럽게 수익은 쌓이게 되어 있습니다. \n반드시 시장을 경험하는 기간을 가지시고, 지금 강의 듣고 당장 큰 돈 넣고 하지마시고 수익난 돈으로 주식매매를 해서 멘탄을 잘 유지 하셨으면 좋겠습니다. \n조급하지 않으셨으면 좋겠습니다. \n언제나 시장은 열립니다. 평생 열립니다. ',5,0,0,'1기','2023-08-07T15:00:00.000Z',0,'PUBLIC',16,104),('2023-12-21 06:34:57.234159','2023-12-21 06:34:57.234159',6,'1년동안 돈 모아서 수강했습니다.','버저비터 강사님의 강의 방식이 대단히 인상적이었어요. 부드럽고 따뜻한 방식으로 말씀하시면서도 그 안에 단단한 확신이 느껴졌습니다.\n매일 아무 생각 없이 매매하던 저도 강의 듣고 나서는 마치 \'찰떡\'처럼 상한가 따라잡기(상따)를 성공하고 있습니다.\n이전엔 상상도 못 했던 일이죠. ','강의 중 몇 개는 좀 어렵게 느껴졌어요. 시장에서 오래 버티는 방법을 다루는데, 이해하고 익히기까지 시간이 좀 걸리더라고요. 초보자도 쉽게 이해할 수 있도록 조금 더 단순화된 설명이나 접근 방법이 있으면 좋겠습니다.\n','강의 내용을 바로 적용해서 네오셈과 LS머티리얼즈 주식으로 상따를 성공시켰다는 게 큰 성과예요. 이전에는 유튜브 영상만 보면서 막연하게 매매했는데, 이제는 강의를 보고 확실하게 배웠습니다. \n강의 덕분에 매매 스킬이 완전히 달라졌어요. 예전에는 수익을 조금씩 모아뒀다가 한번에 큰 손실을 보곤 했는데, 이제는 제대로 된 매매 전략으로 꾸준히 수익을 내고 있어요.','강의 듣는 분들한테 꼭 말하고 싶은 건, 강의 내용을 직접 실습에 적용해보는 거예요.\n 특히 첫 두 강의에서 배운 내용을 적극적으로 시도해보세요. 실패하더라도 꾸준히 시도하는 게 중요해요. \n강의에서 배운 여러 방법 중 하나만 제대로 마스터해도 매매에 큰 도움이 되실 겁니다.\n\n',5,0,0,'3기','2023-12-05T15:00:00.000Z',0,'PUBLIC',18,104),('2023-12-21 07:40:14.282376','2023-12-21 07:41:16.000000',8,'버저비터 후기 녹방을 볼때 정말 놓치지 말야할 것','파더쌤 유튜브를 통해 눌림매매에 대한 새로운 시각을 배웠고, 이로 인해 매매 방식에 큰 변화를 경험했습니다. \n버저비터 강사님의 강의는 특히 장중강의가 핵심이었으며, 이해하기 쉽고 실질적인 내용이 많았습니다.','키움실전투자 대회 중간에 멘탈 관리에 어려움을 겪었습니다.\n이 부분에 대한 더 많은 조언이나 전략이 있었다면 더 좋았을 것 같습니다. \n초기 매매 전략의 구체적인 방향성에 대한 지도가 더 있었으면 좋겠다는 생각도 듭니다.','강의를 듣고 나서의 계좌 변화가 가장 큰 성과입니다. 손실만 보던 저에게 수익을 안겨준 건 큰 변화였죠. \n특히, 시장이 안 좋을 때 코스피 코스닥의 거래대금이 적음에도 불구하고 높은 수익을 달성했다는 점에서 강의의 효과를 실감했습니다.\n','주식 투자를 하면서 멘탈 관리의 중요성을 깨달았습니다. \n버저비터 강사님의 강의를 듣는 분들에게는 이런 점을 강조하고 싶네요. \n아무리 상따 승률이 높더라도, 시장이 좋지 않을 때는 비중몰빵하지 마세요.\n실패를 겪더라도 포기하지 않고 계속 시도하는 것이 중요하다는 것을 꼭 기억하세요.',4,0,2,'1','2023-12-05T15:00:00.000Z',0,'PUBLIC',19,104),('2023-12-21 08:27:51.411379','2023-12-21 08:27:51.411379',9,'많이 배우지 못한 창업 부트캠프','부트캠프 프로그램보다, 열정을 가진 부트캠프 사람들을 만난 것이 더 좋았습니다. 대부분 창업하고 싶은 꿈을 가지고 오셨다보니 긍정적이고 적극적인 분위기를 느낄 수 있었고 저도 힘을 받았습니다.\n','(참고 : 저는 2기 프로그램에 참여했기 때문에, 지금 진행하는 프로그램은 업데이트되어 다를 수 있습니다.)\n\n부트캠프 프로그램은 많이 빈약했습니다. 광고와 마케팅 내용과는 달리 실제로는 강의 듣고 끝나는 느낌이었고 유의미한 창업 액션까지 이어지지 못했습니다.\n팀을 이뤄서 MVP 개발을 하게 하는데, 팀 4명과 합의를 해서 아이템을 정해야합니다.\n사실상 모두 창업을 하고 싶어서 모인만큼 차라리 모든 사람 한사람 한사람의 사업계획서와 IR을 봐주셨다면 더욱 의미가 있었을 것 같습니다. \n\n200만원의 가치는 어쩌면 거기서 있었을지도 모르겠다는 생각을 합니다. \n그 사람에게 맞는 사업이면서도 시장에 Fit한 매력적인 사업계획서와 IR을 만들어주는 과정이요. \n\n아마도 200만원을 낸 사람이라면, 창업동아리처럼 얕게 창업경험을 하기보다는 \n정말 자신이 마음에 품고 있던 꿈을 실현하고 싶은 현실적인 방법을 찾으러 왔을 가능성이 크기 때문에\n 한 사람 한 사람 1:1로 이야기를 듣고 방향과 과정에 대해 가이드만 해주었더라하더라도 만족도는 높아졌을 거라 생각합니다.\n\n당시에는 강의 듣고 조별 과제하는 수준으로 3개월 과정이 끝나버렸기 때문에 같이 들었던 사람들 모두 2백만원짜리는 아닌 것 같다고 평가했습니다.\n최종 발표회때 VC분들도 학예회 본다는 수준으로 좋은말만 들려주시고 끝나서, 진짜 현실 세계를 배우는 것이 아니라 창업 동아리를 하는 것 같은 기분이었습니다.\n\n저도 굉장히 고가인만큼 기대와 부담감을 가지고 결제하였는데, 남는 성과가 없었던 것에 실망스러웠습니다.\n지금은 더 업데이트 되었다고 하는데, 최신에 어떻게 업데이트가 되었는지 궁금합니다.\n','성과는 크게 없었습니다. 그게 가장 아쉬운 부분입니다.\n여전히 하고 싶었던 비즈니스에 대해 검증하지 못했고, 이론 중심으로만 대학팀과제처럼 하다가 진짜 현실 창업은 경험 못하고 겉으로 돌다가 끝났다는 느낌입니다.\n','200만원의 가치를 얻으려면 많이 노력하셔야합니다.\n그냥 주어진 프로그램을 수동적으로 하면 아무것도 얻지 못하고 끝나실 수 있습니다.\n어떠한 노력을 해야 그 이상의 가치를 얻을지는.. 저도 그 가치를 얻지 못해서 팁을 드리지 못하겠지만,\n알럼나이 행사에 많이 참석하시고 오프라인 모임에 많이 참석하신다면 함께 참여한 동기분들이나 사람을 얻어가실 수 있지않을까.. 기대해봅니다.',3,0,0,'2기','2022-05-27T15:00:00.000Z',0,'PUBLIC',15,111),('2023-12-23 06:18:01.462282','2023-12-23 06:19:20.000000',10,'K-올웨더 성장가치소형주 퀀트전략 아쉬웠던 것들 + 팁','퀀트전략, 처음엔 좀 복잡했지만, 한국 주식 매수 타이밍 같은 거 정말 유용하게 웠어요..','아직도 구매 금액 조정 같은 건 좀 헷갈리고, 미국 주식을 시장 열린 후에 사야 한다는 건 처음엔 어려웠죠','어려움도 있었지만, 결국엔 제 방식대로 잘 적용해서 나름 성과도 봤네요. 포트폴리오 관리에 대해서도 많이 배웠어요.','한국 주식은 점심시간에 매수하는 게 좋아요, 시초가보다 저렴하게 살 수 있거든요. 미국 주식은 프리장 패스하고 본장 오픈 후 매수해야 해요. 분기 발표일에는 퀀트킹으로 바로 종목 추출하는 게 유리하고, 생존누락오류 확인도 필요해요. 수수료 절약을 위해 미국 주식은 수수료가 낮은 키움으로 옮기는 것도 고려해보세요',3,1,0,'1','2023-12-06T15:00:00.000Z',0,'PUBLIC',24,112),('2023-12-26 01:57:30.704867','2023-12-26 01:59:57.000000',11,'투자에 대한 책임은 내가 지는 겁니다','게임조아의 조언서비스가 시장 상황과 거시경제 분석에서 큰 도움을 줬어요. 일일 업데이트된 정보로 투자 인사이트를 얻을 수 있었죠\n','특별히 아쉬웠던 점은 없었지만, 가끔 정보량이 많아 따라가기 버거울 때도 있었어요\n','서비스 이용으로 수익을 보는 경험을 했고, 시장을 보는 안목도 길러졌어요\n','조언서비스를 최대한 활용하세요. \n주식 이야기 섹션에서는 게임조아님이 장 전후로 실시간 정보나 의견을 올리는데, \n여기서 제공되는 자료와 링크, 코멘트를 바탕으로 반드시 내가 스스로 투자 판단을 해야 합니다. \n그리고 그 책임 또한 본인이 온전히 지는 겁니다.\n\'사라\'라고 직접적으로 말하지 않더라도, \n정보를 분석하고 이해하는 것이 중요해요. 무엇보다 중요한 것은 본인의 판단과 책임으로 투자를 결정하는 것입니다.',4,1,1,'','',0,'PUBLIC',25,118),('2023-12-26 03:35:42.270148','2023-12-26 03:40:29.000000',12,'비싼게 아쉽지만, 시장 분석 능력 향상에는 좋다.','아침에 제공되는 시장 상황과 거시경제 리포트가 유익했어요. \n리포트의 퀄리티와 실시간 업데이트가 도움이 됐습니다.','차트 분석과 매매 스킬에 대한 조언은 다소 부족했고, 프리미엄 구독 비용이 상당히 비싸다는 점이 아쉬웠어요.','리포트와 인사이트를 통해 투자에 대한 이해가 깊어졌고, 시장 분석 능력도 향상되었습니다.  ','대신 아침에 안부지런하면 의미 없어요. \n차트보는법, 지지저항보고 매매하는스킬은 아니내말은꺼 보면 편합니다.\n리포트도 pdf받아서 에버노트 이런데다 일별로 저장해놓으면 검색하기도 편하다\n서비스를 최대한 활용하려면 아침에 일찍 리포트를 확인하고, 인사이트를 잘 정리해두세요. 스크롤 캡처로 저장하는 것도 유용합니다',4,1,0,'','',0,'PUBLIC',25,109),('2023-12-26 10:25:44.537567','2024-01-01 13:58:29.000000',13,'비싸다 하지만 현재 60일째 소감','삶이 많이 변하고 있는 것을 느낍니다. 뉴스들을 한눈에 보기 좋게 PDF로 정리해주는 것이 좋습니다.','너무 비싸다. 사실 내가 시간 들이면 될 것 같아서 책 완독한 입장에선 돈이 아깝기도 한데...','원래 게으른 성격이었지만, 시그널리포트 구독과 함께 아침에 일찍 일어나기 시작했습니다.\n비록 주식 투자로 큰 수익은 아직 없지만, 삶에서 긍정적이고 낙관적인 변화를 경험하고 있습니다. \n제가 새벽부터 부지런하니 아이들과 와이프도 일찍 일어나기 시작했습니다.\n인생이 변했어요.\n아직도 답답하지만 분명한 것은  국제 정세를 보는 시야가 깨이고, 시황의 흐름을 느끼게 된 것만으로도 수억원의 가치가 생겼다고 봅니다.\n이제 종목에 대한 데이터만 제 머리속에서 쌓여간다면 시장을 몇 년씩 경험한다면, 저도 수익을 낼 수 있을 것 같습니다.\n','그래서 그냥 시키는데로 열심히 하기로 합니다. 성공한 사람의 이야기를 믿고 그대로 하기 시작합니다.\n장이 끝나면 천만/상한가 종목 정리합니다.  \nVOD 열심히 봅니다. 하루 출퇴근 시간이 왕복 3시간인데, 지하철에서 졸면서도 귓구멍에 이어폰 끼고 그냥 들었습니다.\n저도 처음에는 아무것도 이해되지 않았는데, 어느날부터인가 이해하기 시작합니다.\n',3,1,0,'','',0,'PUBLIC',26,109),('2024-01-06 16:04:58.696187','2024-01-08 11:34:54.000000',14,'돈이 조금 아까웠습니다.','자유롭게 공부할 수 있는 환경을 제공해준다는 점에서 좋았습니다. 예를 들어 다른 국비지원학원 같은 경우에는 학원 커리큘럼에 따라 시간을 정해놓고 이미 배웠던 내용에 대한 강의를 억지로 들어야하는 반면에 항해 같은 경우는 본인이 알아서 공부하고 싶은 내용 공부하고, 쉬고 싶을 때 쉬고, 자율학습이 가능하여 어느정도 공부를 하고 온 사람들은 시간 낭비를 할 필요가 없습니다. \n','1. 좋게 표현하면 자기주도적 학습. 나쁘게 표현하면 방치...\n현재는 모르겠지만 제가 수료했던 시기에는 질문에 대한 답변이 대부분 \"구글링하면 된다. 스스로 찾아봐라\" 이런식이었습니다. 물론 남에게 쉽게 얻는 지식보다는 본인이 스스로 얻는 지식이 도움이 된다는 건 납득하지만 그렇다면 기술 매니저는 왜 존재하는지? 혹은 사실 모르는데 답을 저런식으로 하는 건지? 라는 의문이 들었네요. 꽤나 불친절했습니다.\n하지만 실전 프로젝트에서 뵀던 멘토님 같은 경우는 많은 도움을 주셨습니다.\n\n2. 팀원 뽑기운이 중요합니다.\n저같은 경우에는 운이 좋아 항상 좋은 분들과 협업을 하였지만, 그렇지 못한 경우도 많이 봤었습니다.  진짜 본인과 성향이 맞지 않은 팀원분들이 매칭될 경우에는 스트레스 받는 일주일이 될지도 모릅니다. \n\n3. 강의가 부실합니다.\n400만원이라는 돈을 냈는데도 제공하는 강의가 별로입니다. (실제로 외부 유료 강의를 추천하는 내용이 담긴 노션 페이지를 공유해줌). 꽤나 예전에 만든 강의를 제공해주고 심지어 큰 도움조차 되지 않았습니다. \n\n4. 돈 아깝습니다.\n사실상 400만원으로 게더타운 100일 이용권을 구매했다 정도라고 밖에 생각이 들지 않을 정도의 퀄리티였습니다. \n항해에서 제공해준 것은 팀 매칭 정도? ','자기주도적 학습,  여러번의 팀빌딩을 통한 협업능력 강화, 좋은 사람들.','A-Z까지 알려주는 부트캠프가 아닙니다. 사용할 언어에 대한 기본 지식은 어느 정도 선행학습하고 와야 합니다.\n\n프론트엔드 기준\n1. 프로그래머스 1단계 \n2. html, css, javascript, react\n\n특히 html, css 공부할 시간 없습니다.',3,1,0,'','',0,'PUBLIC',8,85),('2024-01-07 06:19:40.832994','2024-01-08 11:34:52.000000',15,'항해99 수료생입니다.','많은 사람들과 대화를 하고 좋은 사람들에게 도움을 주고받고 할 수 있습니다.','자기주도적인 느낌이 강합니다. 내가 어떠한 걸 하겠다! 라는게 없으면 어려우실 수 있습니다.\n','개발로 대화를 할 여러 사람들을 만났습니다. 수료이후에도 연락을 하며 정보공유도 하고 같이 으쌰으쌰합니다.','제공해주는대로만 하면 되겠지? 라는 생각으로 임하실거면 냉정하게 다른 부트캠프를 추천하고 싶습니다. 항해99는 자기주도적으로 공부하며 공부하는 과정에서 이럴때는 어떻게 해야하지? 등 스스로 딥하게 들어가야 합니다. 열정이 있고, 항상 열심히 하시는 분이시라면 힘들더라도 좋은 경험을 하실 수 있을거라 생각합니다.',2,1,0,'','',0,'PUBLIC',39,1),('2024-01-08 11:34:12.717877','2024-01-08 12:32:19.000000',16,'꽤나 만족했습니다. ','express와 pug로 서버와 뷰 모두 구현하는 강의였습니다. 개발 입문자 입장에서 클라이언트와 서버 흐름을 파악하는데 도움이 많이 되었습니다. ','사용하는 기술에 대해  깊이 알려주지는 않습니다. 전반적인 프론트 / 백 흐름을 파악해야하는 입문자들을 대상으로 좋은 강의인 것 같습니다.','좋았던 점과 동일합니다. 개발 입문자 입장에서 클라이언트와 서버 흐름을 파악하는데 도움이 많이 되었습니다. ','2년 전에 들었던 강의입니다. 최근 강의 업데이트가 이루어졌는지 확인하고 수강하면 좋을 것 같습니다.',5,1,0,'','',0,'PUBLIC',8,54),('2024-01-08 11:44:53.427384','2024-01-08 22:04:30.000000',17,'처음 들었던 유료 강의','처음 들었던 유료 강의입니다. html css 위주의 강의이며 코딩을 처음 접하는 분들께 강추해드릴만한 강의입니다. (재밌습니다🤗)\n2주 챌린지를 통해 성취감도 얻을 수 있었습니다. ','가성비가 좀 떨어집니다. 솔직히 10만원 값은 못하는 것 같습니다...ㅠ','코딩에  재미 붙이기 딱 좋은 강의 정도였습니다. 모든 페이지를 그려낼 수 있을 것만 같은 자신감(?)이 생겼습니다.','비슷한 강의가 많습니다. 커리큘럼 비교해보시고 좋은 강의 찾으시길 바랍니다. 가격이 좀 비싸긴 하지만 좋은 강의였습니다.',4,1,0,'','',0,'PUBLIC',8,53),('2024-01-08 11:45:02.222280','2024-01-08 12:08:12.000000',18,'처음 들었던 유료 강의.','처음 들었던 유료 강의입니다. html css 위주의 강의이며 코딩을 처음 접하는 분들께 강추해드릴만한 강의입니다. (재밌습니다🤗)\n2주 챌린지를 통해 성취감도 얻을 수 있었습니다. ','가성비가 좀 떨어집니다. 솔직히 10만원 값은 못하는 것 같습니다...ㅠ','코딩에  재미 붙이기 딱 좋은 강의 정도였습니다. 모든 페이지를 그려낼 수 있을 것만 같은 자신감(?)이 생겼습니다.','비슷한 강의가 많습니다. 커리큘럼 비교해보시고 좋은 강의 찾으시길 바랍니다. 가격이 좀 비싸긴 하지만 좋은 강의였습니다.',4,0,0,'','',0,'DELETED',8,53),('2024-01-08 11:54:02.881419','2024-01-08 12:32:22.000000',19,'업데이트가 아쉬운 강의입니다.','강의 나오자마자 구매했습니다. tailwindcss / nextjs / prisma 등 배우고 싶었던 기술들을 알려주어 개인적으로 노마드 코더에서 가장 만족한 강의였습니다.\n','next가 13버전 이후로 업데이트 되지 않습니다. 솔직히 2년 전에야 볼만 했지 지금은 딱히 도움이 될 것 같지는 않습니다. \n(next 14 버전 기준으로 강의 업데이트가 예정이라고 하긴 합니다.)','당시에 next 강의가 많이 없었는데 도움이 많이 되었습니다. 그리고 니코쌤이 잘 알려주긴 합니다. ','진짜 강의 업데이트 꼭 확인해야하고, 수강을 시작했다면 매 영상 댓글부터 확인해서 버전에 대한 문제가 있는 지 확인하시길 바랍니다. \n매번 버전 때문에 이슈가 있었네요.',4,1,0,'','',0,'PUBLIC',8,51),('2024-01-08 11:54:02.885196','2024-01-08 12:10:16.000000',20,'업데이트가 아쉬운 강의입니다.','강의 나오자마자 구매했습니다. tailwindcss / nextjs / prisma 등 배우고 싶었던 기술들을 알려주어 개인적으로 노마드 코더에서 가장 만족한 강의였습니다.\n','next가 13버전 이후로 업데이트 되지 않습니다. 솔직히 2년 전에야 볼만 했지 지금은 딱히 도움이 될 것 같지는 않습니다. \n(next 14 버전 기준으로 강의 업데이트가 예정이라고 하긴 합니다.)','당시에 next 강의가 많이 없었는데 도움이 많이 되었습니다. 그리고 니코쌤이 잘 알려주긴 합니다. ','진짜 강의 업데이트 꼭 확인해야하고, 수강을 시작했다면 매 영상 댓글부터 확인해서 버전에 대한 문제가 있는 지 확인하시길 바랍니다. \n매번 버전 때문에 이슈가 있었네요.',5,0,0,'','',0,'DELETED',8,51),('2024-01-08 11:54:02.888665','2024-01-08 12:10:10.000000',21,'업데이트가 아쉬운 강의입니다.','강의 나오자마자 구매했습니다. tailwindcss / nextjs / prisma 등 배우고 싶었던 기술들을 알려주어 개인적으로 노마드 코더에서 가장 만족한 강의였습니다.\n','next가 13버전 이후로 업데이트 되지 않습니다. 솔직히 2년 전에야 볼만 했지 지금은 딱히 도움이 될 것 같지는 않습니다. \n(next 14 버전 기준으로 강의 업데이트가 예정이라고 하긴 합니다.)','당시에 next 강의가 많이 없었는데 도움이 많이 되었습니다. 그리고 니코쌤이 잘 알려주긴 합니다. ','진짜 강의 업데이트 꼭 확인해야하고, 수강을 시작했다면 매 영상 댓글부터 확인해서 버전에 대한 문제가 있는 지 확인하시길 바랍니다. \n매번 버전 때문에 이슈가 있었네요.',5,0,0,'','',0,'DELETED',8,51),('2024-01-08 11:58:08.487050','2024-01-08 12:32:23.000000',22,'강추 리액트 강의','누군가 리액트 추천 강의를 물어볼 때마다 항상 추천하는 강의입니다. 기본적으로 필요한 내용이 잘 들어가있다고 생각합니다. ','노마드코더의 고질적인 문제 같은데 항상 강의 업데이트가 느립니다;;; 매 영상마다 댓글부터 확인하는 버릇이 생겼네요...(해당 영상 내용에 어떤 문제가 있었는지 확인)','리액트 입문하기 딱 좋습니다. 리액트에 재미 붙을 만한 강의들로 구성되어 있습니다. ','버전 확인 필수. 버전 확인 필수 .버전 확인 필수. 버전 확인 필수. 버전 확인 필수.',5,1,0,'','',0,'PUBLIC',8,42),('2024-01-08 21:50:29.520621','2024-01-10 14:15:06.000000',23,'css 기본을 다지는데 많은 도움이 되었습니다.','css 기초를 다지는데 많은 도움이 되었습니다. 실제로 이 강의에서 배웠던 css 지식을 실무에서 많이 사용중입니다. \n가장 도움이 된 flex / grid 개념을 다지는데 큰 도움이 되었습니다. ','flex grid 개념을 다지는데 많은 도움이 됐으나 실상 구글링 혹은 chatgpt에서 쉽게 얻을 수 있는 정도의 지식입니다.\nhttps://flexboxfroggy.com/#ko -> flex 연습 사이트 \nhttps://cssgridgarden.com/#ko -> grid 연습 사이트 \n\n위 두 사이트만 해도 어느정도 커리큘럼에 나오는 내용에 대한 학습이 가능할 것 같습니다. 6만원치고는 너무 내용이 없습니다.\n','grid / flex 에 대한 이해도가 많이 높아졌습니다. 사이트 클론 코딩을하며 레이아웃을 만드는데 익숙해졌습니다.','음... 예전에는 모르겠지만 현재는 대체재가 너무 많습니다. 6만원의 값어치를 할지는 모르겠네요...\n지금 누군가 css 기초 강의를 추천하거든 유튜브만 봐도 충분하다고 할 것 같습니다. ',5,1,1,'','',0,'PUBLIC',8,30),('2024-01-11 19:00:07.728474','2024-01-11 19:00:07.728474',24,'안녕하세요','너무 좋다고 생각듭니다 :) 너무 좋다고 생각듭니다 :) 너무 좋다고 생각듭니다 :) 너무 좋다고 생각듭니다 :) 너무 좋다고 생각듭니다 :) 너무 좋다고 생각듭니다 :) ','너무 좋다고 생각듭니다 :) 너무 좋다고 생각듭니다 :) 너무 좋다고 생각듭니다 :) 너무 좋다고 생각듭니다 :) 너무 좋다고 생각듭니다 :) 너무 좋다고 생각듭니다 :) ','취업이 됐어요!  취업이 됐어요!취업이 됐어요!취업이 됐어요!취업이 됐어요!취업이 됐어요!취업이 됐어요!취업이 됐어요!','취업이 됐어요!취업이 됐어요!취업이 됐어요!취업이 됐어요!취업이 됐어요!취업이 됐어요!',5,0,0,'3','2024-01-09T15:00:00.000Z',0,'PUBLIC',43,88),('2024-01-11 19:00:13.531238','2024-01-11 19:00:54.000000',25,'안녕하세요','너무 좋다고 생각듭니다 :) 너무 좋다고 생각듭니다 :) 너무 좋다고 생각듭니다 :) 너무 좋다고 생각듭니다 :) 너무 좋다고 생각듭니다 :) 너무 좋다고 생각듭니다 :) ','너무 좋다고 생각듭니다 :) 너무 좋다고 생각듭니다 :) 너무 좋다고 생각듭니다 :) 너무 좋다고 생각듭니다 :) 너무 좋다고 생각듭니다 :) 너무 좋다고 생각듭니다 :) ','취업이 됐어요!  취업이 됐어요!취업이 됐어요!취업이 됐어요!취업이 됐어요!취업이 됐어요!취업이 됐어요!취업이 됐어요!','취업이 됐어요!취업이 됐어요!취업이 됐어요!취업이 됐어요!취업이 됐어요!취업이 됐어요!',5,0,0,'3','2024-01-09T15:00:00.000Z',0,'DELETED',43,88),('2024-01-13 13:25:38.725589','2024-01-13 13:25:38.725589',26,'노마드코더 우버 이츠 클론코딩','강의에서 사용하는 기술스택 입문 시에도 편하게 보고 배울 수 있는 강의입니다.','버전 업데이트에서 문제가 있습니다.\n강의에서 사용하는 버전으로 진행하지 않는다면 여러 에러를 마주하게 됩니다.','첫 걸음으로 좋은 발판의 역할을 해줍니다.                                ','강의 진행하며 다운받는 라이브러리는 버전을 같게 가져가는게 좋습니다.\n혹은 그 버전이 없다면 댓글로 다른 유저분들의 해결방법을 참고하거나 직접 물어보는게 좋습니다.',4,0,0,'','',0,'PUBLIC',10,48),('2024-01-13 14:13:51.519070','2024-01-13 14:13:51.519070',27,'입문자용 강의입니다.','nestjs를 처음 접하시는 분들에게는 좋은 강의가 될 것 같습니다.                     ','아쉬운 점이라기보다는 기초적인 api를 다루고 있기 때문에 첫 강의가 아니시라면 다른 강의가 더 유익할 것 같습니다.','                                             ','nestjs를 처음 사용하시는 분들에게 좋은 기초강의가 될 수 있지만 좀 짧은 느낌이 있습니다. 다른 강의와 같이 진행하시는 걸 추천드립니다.',4,0,0,'','',0,'PUBLIC',10,32),('2024-01-13 14:18:42.166979','2024-01-13 14:49:18.000000',28,'깃, 깃허브를 처음 쓰시는 분들이 참고하시면 좋을 것 같습니다.','처음 사용하시는 분들에게는 유익한 자료인 것 같습니다.           ','내가 깃 사용법을 알고 있고, 추가적으로 더 유익하게 사용하기 위해 선택한 강의라면 비추입니다. 기초적인 것을 알려줍니다.','개발자로 깃 입문을 할 때 깃을 사용할 수 있도록 도와줍니다.                 ','강의를 듣고 실제 사용을 해보고 추가적으로 다른 기능들에 대해서 찾아보고 익히신다면 유익한 개발시간을 가질 수 있을 것 같습니다.',5,0,0,'','',0,'PUBLIC',10,16),('2024-01-13 15:13:23.449747','2024-01-13 15:16:42.000000',29,'1223123123123123123123','                                                                                                                                                                                    ','                                                                                                                                            ','                                                                                                                                                                ','                                                                                                                        ',3,0,0,'','',0,'DELETED',10,142),('2024-01-13 15:16:08.082978','2024-01-13 15:16:18.000000',30,'1223123123123123123123','                                                                                                                                                                                    ','                                                                                                                                            ','                                                                                                                                                                ','                                                                                                                        ',3,0,0,'','',0,'DELETED',10,142),('2024-01-29 01:47:20.593795','2024-01-29 01:47:20.593795',31,'기본기부터 잡히는 수업이에요','기본이 탄탄하게 잡힙니다. 시각적인 위계 질서나 장표의 여백 등 다양한 부분을 전반적으로 다뤄주십니다. ','아쉬운 점은 딱히 없었습니다. 수업이 알차서 작업물만 잘 준비되어 있다면 듣기 좋습니다.','포트폴리오를 빠르게 완성할 수 있어요 해당 수업 후 포트폴리오 질이 높아졌습니다. ','기본기가 어느정도는 있어야 들을 수 있습니다. 프로젝트를 몇개 하고 나서 수업을 듣는 것을 추천합니다.\n',5,0,0,'','',0,'PUBLIC',45,143),('2024-04-20 16:30:48.428258','2024-04-20 16:30:48.428258',32,'정말 좋은 강의였어요. 다만 아쉬웠던 점은','노션으로 강의자료들을 정리해서 보내주셔서 정말 좋았습니다.\n온라인으로 수강해서, 강의를 반복적으로 들을 수 있었어요.\n강사님께서 판매하시는 실제 제품들과, 실제 판매 데이터, 광고데이터를 볼 수 있어서 더 신뢰가 있었어요. \n','온라인으로 수강하다가 보니, 실제로 실행하기까지 어려움이 있었어요. \n오프라인으로 만나는 분들은 서로 스터디하는 분위기여서 실행까지 이어지는 것 같아서 부러웠습니다.\n온라인으로 수강하는 분들도 서로 스터디를 할 수 있게 희망하시는 분들의 수요를 조사해서 강사님께서 조편성을 해주셨으면 정말 좋았을 것 같습니다.','저는 미국으로 수출하는 아마존셀러여서 그동안 alibaba.com 에서만 주문을 했었습니다. \n1688에서는 어떻게 패키징과 OEM 주문제작을 통해서 내 브랜드 상품을 생산할 수 있는지 몰랐습니다. \n1688 어떻게 소싱을 해야하는지 잘 몰랐습니다.  \n하지만 강의 수강후 1688에서는 어떻게 소싱하는지, \n\n무역업체를 통하는 것이었지만, 실제로 어떻게 소싱을 해야하는지 알 수 있었어요. \n','저는 현재 아마존에서 매출을 연매출 14억정도 내고 있는 셀러입니다. \n강의 내용에 대해서  궁금하신 사항은 추가적으로 메시지 주시면 자세하게 알려드리겠습니다.\n',5,0,0,'','',0,'PUBLIC',1,144),('2024-04-20 21:56:45.089890','2024-04-20 21:56:45.089890',33,'정말 좋은 강의였어요. 다만 아쉬웠던 점은','노션으로 강의자료들을 정리해서 보내주셔서 정말 좋았습니다.\n온라인으로 수강해서, 강의를 반복적으로 들을 수 있었어요.\n강사님께서 판매하시는 실제 제품들과, 실제 판매 데이터, 광고데이터를 볼 수 있어서 더 신뢰가 있었어요.','온라인으로 수강하다가 보니, 실제로 실행하기까지 어려움이 있었어요.\n오프라인으로 만나는 분들은 서로 스터디하는 분위기여서 실행까지 이어지는 것 같아서 부러웠습니다.\n온라인으로 수강하는 분들도 서로 스터디를 할 수 있게 희망하시는 분들의 수요를 조사해서 강사님께서 조편성을 해주셨으면 정말 좋았을 것 같습니다.','저는 미국으로 수출하는 아마존셀러여서 그동안 alibaba.com 에서만 주문을 했었습니다.\n1688에서는 어떻게 패키징과 OEM 주문제작을 통해서 내 브랜드 상품을 생산할 수 있는지 몰랐습니다.\n1688 어떻게 소싱을 해야하는지 잘 몰랐습니다.\n하지만 강의 수강후 1688에서는 어떻게 소싱하는지,\n','무조건 오프라인 강의 들으시고, 스터디 하시는 것을 추천 드립니다!!!!',5,0,0,'','',0,'PUBLIC',46,144);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewComment`
--

DROP TABLE IF EXISTS `reviewComment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviewComment` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `id` int NOT NULL AUTO_INCREMENT,
  `comment` text NOT NULL,
  `likeCount` int NOT NULL DEFAULT '0',
  `subCommentCount` int NOT NULL DEFAULT '0',
  `parentId` int DEFAULT NULL,
  `userId` int NOT NULL,
  `reviewId` int NOT NULL,
  `status` enum('DELETED','ACTIVE') NOT NULL DEFAULT 'ACTIVE',
  PRIMARY KEY (`id`),
  KEY `FK_5f4b8d9fed4ca25f9e2e0e59145` (`userId`),
  KEY `FK_241d01032884a75217b94412271` (`reviewId`),
  KEY `FK_c328c1aa995fb82fbcb68ff12bc` (`parentId`),
  CONSTRAINT `FK_241d01032884a75217b94412271` FOREIGN KEY (`reviewId`) REFERENCES `review` (`id`),
  CONSTRAINT `FK_5f4b8d9fed4ca25f9e2e0e59145` FOREIGN KEY (`userId`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_c328c1aa995fb82fbcb68ff12bc` FOREIGN KEY (`parentId`) REFERENCES `reviewComment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewComment`
--

LOCK TABLES `reviewComment` WRITE;
/*!40000 ALTER TABLE `reviewComment` DISABLE KEYS */;
INSERT INTO `reviewComment` VALUES ('2023-12-19 10:06:46.229601','2023-12-27 09:16:42.000000',1,'안녕하세요 유목민 강의 리뷰해주셔서 감사합니다 많은 도움이 되었습니다!',1,0,NULL,16,1,'ACTIVE'),('2023-12-26 01:58:16.636625','2023-12-26 01:58:16.636625',5,'추천해요!',0,0,NULL,25,11,'ACTIVE'),('2024-01-10 14:15:06.350215','2024-01-10 14:15:06.350215',14,'감사합니다! 많은 도움이 되었어요 참고해서 들어보겠습니다',0,0,NULL,9,23,'ACTIVE');
/*!40000 ALTER TABLE `reviewComment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewCommentLike`
--

DROP TABLE IF EXISTS `reviewCommentLike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviewCommentLike` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `commentId` int NOT NULL,
  `reviewCommentId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_c54699c034a5f23e30a18bc0fc8` (`userId`),
  KEY `FK_53516928e8039ba8b352bfa4c41` (`reviewCommentId`),
  CONSTRAINT `FK_53516928e8039ba8b352bfa4c41` FOREIGN KEY (`reviewCommentId`) REFERENCES `reviewComment` (`id`),
  CONSTRAINT `FK_c54699c034a5f23e30a18bc0fc8` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewCommentLike`
--

LOCK TABLES `reviewCommentLike` WRITE;
/*!40000 ALTER TABLE `reviewCommentLike` DISABLE KEYS */;
INSERT INTO `reviewCommentLike` VALUES ('2023-12-19 10:06:50.012596','2023-12-19 10:06:50.012596',1,16,1,NULL);
/*!40000 ALTER TABLE `reviewCommentLike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewLike`
--

DROP TABLE IF EXISTS `reviewLike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviewLike` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `reviewId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_7e331634c7d4531f8ca4ddb4f8a` (`userId`),
  KEY `FK_1a7fa868b508511656c5827d617` (`reviewId`),
  CONSTRAINT `FK_1a7fa868b508511656c5827d617` FOREIGN KEY (`reviewId`) REFERENCES `review` (`id`),
  CONSTRAINT `FK_7e331634c7d4531f8ca4ddb4f8a` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewLike`
--

LOCK TABLES `reviewLike` WRITE;
/*!40000 ALTER TABLE `reviewLike` DISABLE KEYS */;
INSERT INTO `reviewLike` VALUES ('2023-12-19 10:06:24.072539','2023-12-19 10:06:24.072539',1,16,1),('2023-12-23 06:18:13.035749','2023-12-23 06:18:13.035749',2,24,10),('2023-12-26 01:59:57.354048','2023-12-26 01:59:57.354048',3,25,11),('2023-12-26 03:40:29.642095','2023-12-26 03:40:29.642095',4,26,12),('2023-12-26 03:40:30.614997','2023-12-26 03:40:30.614997',5,26,1),('2023-12-27 10:13:47.432915','2023-12-27 10:13:47.432915',7,16,13),('2024-01-08 11:34:52.302177','2024-01-08 11:34:52.302177',8,8,15),('2024-01-08 11:34:54.215368','2024-01-08 11:34:54.215368',9,8,14),('2024-01-08 12:32:19.259440','2024-01-08 12:32:19.259440',10,8,16),('2024-01-08 12:32:20.436213','2024-01-08 12:32:20.436213',11,8,17),('2024-01-08 12:32:22.266170','2024-01-08 12:32:22.266170',12,8,19),('2024-01-08 12:32:23.286664','2024-01-08 12:32:23.286664',13,8,22),('2024-01-08 21:50:46.070217','2024-01-08 21:50:46.070217',14,8,23);
/*!40000 ALTER TABLE `reviewLike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewWishlist`
--

DROP TABLE IF EXISTS `reviewWishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviewWishlist` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `reviewId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_905c5e70813a30d84a9e83b16b1` (`userId`),
  KEY `FK_25a601bb108737361ef225ab97d` (`reviewId`),
  CONSTRAINT `FK_25a601bb108737361ef225ab97d` FOREIGN KEY (`reviewId`) REFERENCES `review` (`id`),
  CONSTRAINT `FK_905c5e70813a30d84a9e83b16b1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewWishlist`
--

LOCK TABLES `reviewWishlist` WRITE;
/*!40000 ALTER TABLE `reviewWishlist` DISABLE KEYS */;
INSERT INTO `reviewWishlist` VALUES ('2024-01-10 14:13:36.655470','2024-01-10 14:13:36.655470',1,9,23),('2024-01-11 19:00:44.569348','2024-01-11 19:00:44.569348',2,43,25),('2024-04-20 16:53:12.050083','2024-04-20 16:53:12.050083',4,1,32);
/*!40000 ALTER TABLE `reviewWishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `id` int NOT NULL AUTO_INCREMENT,
  `serviceName` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `instructor` varchar(32) NOT NULL,
  `homepageURL` varchar(256) NOT NULL,
  `companyName` varchar(256) NOT NULL,
  `serviceForm` enum('online','offline','both') NOT NULL,
  `serviceRegion` enum('seoul','busan','daegu','gwangju','incheon','daejeon','ulsan','gyeonggi','gangwon','chungcheongnam','chungcheongbuk','jeollanam','jeollabuk','gyeongsangnam','gyeongsangbuk','jeju') DEFAULT NULL,
  `costType` enum('paid','government_subsidy','free') NOT NULL,
  `cost` int NOT NULL,
  `recruitmentDate` varchar(32) DEFAULT NULL,
  `generation` varchar(32) DEFAULT NULL,
  `startDate` varchar(32) DEFAULT NULL,
  `endDate` varchar(32) DEFAULT NULL,
  `profileImage` varchar(256) NOT NULL,
  `bannerImage` varchar(256) NOT NULL,
  `thumbnailImage` varchar(256) NOT NULL,
  `serviceContent` text NOT NULL,
  `serviceTotalTime` varchar(64) NOT NULL,
  `status` enum('Applying','Proceeding','Completed') NOT NULL,
  `serviceType` varchar(255) NOT NULL,
  `companyId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_92d833ca57e4bc0e2cd0914e0a` (`serviceName`),
  KEY `FK_02fbdab4c697f74792472b88546` (`companyId`),
  CONSTRAINT `FK_02fbdab4c697f74792472b88546` FOREIGN KEY (`companyId`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES ('2023-12-01 13:30:55.275663','2023-12-01 18:32:48.000000',1,'항해99','개발자 취업 후기들이 증명합니다. 코딩 부트캠프 항해99. 99일간 개발 공부에 몰입하고 IT 기업에서 환영 받는 주니어 개발자로 취업하세요.','스파르타코딩클럽 강사진','https://hanghae99.spartacodingclub.kr/','스파르타코딩클럽','online','seoul','paid',4500000,'2024-01-19T06:00:00.000Z','19','2024-02-05T06:00:00.000Z','2024-05-14T06:00:00.000Z','https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701423213089sparta.png','','','<p><b><span style=\"font-size: 18px;\">기간</span></b></p><p>99일 (14주) / 오전 9시 ~ 오후 9시 / 주 6일 (월~토)</p><p><br></p><p><b><span style=\"font-size: 18px;\">상세 커리큘럼</span></b></p><p><b>1-2주차&nbsp;&nbsp;</b>프로그래밍 기초</p><p><b>3-5주차&nbsp;&nbsp;</b>주특기</p><p><b>6주차&nbsp;&nbsp;</b>백/프론트 프로젝트</p><p><b>7주차&nbsp;&nbsp;</b>클론코딩 프로젝트</p><p><b>8-13주차&nbsp;&nbsp;</b>실전프로젝트</p><p><b>14주차&nbsp;&nbsp;</b>이력서/면접코칭</p><p><b>수료이후&nbsp;&nbsp;</b>취업까지 함꼐</p><p><br></p>','99일(14주) / 주6일 (월~토) / 오전 9시 ~ 오후 9시','Applying','bootcamp',1),('2023-12-01 13:30:55.276899','2023-12-01 18:33:03.000000',2,'[내일배움캠프] 웹개발 부트캠프','누구나 개발자로 취업하도록, 체계적인 관리형 부트캠프','스파르타코딩클럽','https://nbcamp.spartacodingclub.kr/web','스파르타코딩클럽','online',NULL,'government_subsidy',0,'','','','','https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701423213404sparta.png','','','','6개월 과정. 오전 9시 ~ 오후 9시 (월~금)','Applying','bootcamp',1),('2023-12-01 13:30:55.277219','2023-12-01 18:37:22.000000',3,'리액트 개념정리 · 클론코딩','투두앱, 유튜브 클론코딩, 쇼핑앱을 통한 실전 연습','드림코딩','https://academy.dream-coding.com/courses/react','드림코딩','online',NULL,'paid',190000,'','','','','https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701423514231dreamcoding.png','','','',' ','Applying','online_course',2),('2023-12-01 13:30:55.277469','2023-12-01 18:40:29.000000',4,'Next.js 개념정리 · 클론코딩','블로그, 인스타그램 클론코딩을 통한 실전팁까지!','드림코딩','https://academy.dream-coding.com/courses/next','드림코딩','online',NULL,'paid',200000,'','','','','https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701423461957dreamcoding.png','','','',' ','Applying','online_course',2),('2023-12-01 13:30:55.277743','2023-12-01 18:39:52.000000',5,'자바스크립트 마스터리 (ES6+)','최신 자바스크립트 문법 강의로 프로그래밍 스킬업','드림코딩','https://academy.dream-coding.com/courses/javascript','드림코딩','online',NULL,'paid',90000,'','','','','https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701423553120dreamcoding.png','','','',' ','Applying','online_course',2),('2023-12-01 13:30:55.279370','2023-12-01 18:40:18.000000',6,'타입스크립트·객체지향 프로그래밍','탄탄한 이론을 바탕으로 실전 예제, 실무 팁까지!','드림코딩','https://academy.dream-coding.com/courses/typescript','드림코딩','online',NULL,'paid',120000,'','','','','https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701423509958dreamcoding.png','','','',' ','Applying','online_course',2),('2023-12-01 13:30:55.287148','2023-12-01 18:41:06.000000',7,'노드로 배우는 백엔드 A-Z','노드, 익스프레스, 데이터베이스, 트위터 클론코딩','드림코딩','https://academy.dream-coding.com/courses/node','드림코딩','online',NULL,'paid',200000,'','','','','https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701423599623dreamcoding.png','','','',' ','Applying','online_course',2),('2023-12-01 13:30:55.287452','2023-12-01 18:38:44.000000',8,'포트폴리오 웹사이트 클론코딩','HTML, CSS, JavaScript 반응형 웹사이트 만들기','드림코딩','https://academy.dream-coding.com/courses/portfolio','드림코딩','online',NULL,'paid',90000,'','','','','https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701423584584dreamcoding.png','','','',' ','Applying','online_course',2),('2023-12-01 13:30:55.287758','2023-12-01 18:38:59.000000',9,'프론트엔드 필수 브라우저 101','브라우저 API, 디버깅, 성능분석, 프로젝트 10개','드림코딩','https://academy.dream-coding.com/courses/browser101','드림코딩','online',NULL,'paid',110000,'','','','','https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701423577133dreamcoding.png','','','',' ','Applying','online_course',2),('2023-12-01 13:30:55.290786','2023-12-01 18:41:37.000000',10,'Git 마스터 과정','필수 깃 개념 정리와 실전 연습 (+실무팁)','드림코딩','https://academy.dream-coding.com/courses/git','드림코딩','online',NULL,'paid',35000,'','','','','https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701423591325dreamcoding.png','','','',' ','Applying','online_course',2),('2023-12-01 13:30:55.328430','2023-12-01 18:42:13.000000',11,'리팩토링의 모든것','코딩실력 향상을 위한 개발자 필수 강의','드림코딩','https://academy.dream-coding.com/courses/refactoring','드림코딩','online',NULL,'paid',90000,'','','','','https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701423736246dreamcoding.png','','','',' ','Applying','online_course',2),('2023-12-01 13:30:55.339743','2023-12-01 18:42:49.000000',12,'초보를 위한 데이터 시각화','Introduction to Data Science','니꼬','https://nomadcoders.co/data-viz-for-beginners','노마드코더','online',NULL,'free',0,'','','','','https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701423823371nomadcoder.png','','','',' ','Applying','online_course',3),('2023-12-01 13:30:55.339980','2023-12-01 18:43:27.000000',13,'유닛테스트와 TDD','자바스크립트 개발자를 위한 테스트 마스터 클래스','드림코딩','https://academy.dream-coding.com/courses/js-tdd','드림코딩','online',NULL,'paid',35000,'','','','','https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701423827204dreamcoding.png','','','',' ','Applying','online_course',2),('2023-12-01 13:30:55.340262','2023-12-01 18:44:31.000000',14,'초보를 위한 셀레니움','Selenium for Beginners','니꼬','https://nomadcoders.co/selenium-for-beginners','노마드코더','online',NULL,'free',0,'','','','','https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701423922746nomadcoder.png','','','',' ','Applying','online_course',3),('2023-12-01 13:30:55.340621','2023-12-01 18:45:01.000000',15,'쇼핑몰 미니게임 & 코드 리뷰','HTML, CSS, JavaScript를 이용해 게임을 만들기','드림코딩','https://academy.dream-coding.com/courses/mini-shopping','드림코딩','online',NULL,'free',0,'','','','','https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701423976992dreamcoding.png','','','',' ','Applying','online_course',2),('2023-12-01 13:30:55.342038','2023-12-01 18:45:34.000000',16,'모두를 위한 깃 & 깃허브','Git & Github for Beginners','니꼬','https://nomadcoders.co/git-for-beginners','노마드코더','online',NULL,'free',0,'','','','','https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701424012325nomadcoder.png','','','<p>&nbsp;</p>','  ','Applying','online_course',3),('2023-12-01 13:30:55.350173','2023-12-01 18:46:12.000000',17,'개발자를 위한 윈도우 셋업','WSL2, Windows Terminal, Ubuntu','니꼬','https://nomadcoders.co/windows-setup-for-developers','노마드코더','online',NULL,'free',0,'','','','','https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701424002580nomadcoder.png','','','',' ','Applying','online_course',3),('2023-12-01 13:30:55.361842','2023-12-01 18:48:04.000000',18,'타입스크립트로 블록체인 만들기','Typescript for Beginners','니꼬','https://nomadcoders.co/typescript-for-beginners','노마드코더','online',NULL,'free',0,'','','','','https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701424178583nomadcoder.png','','','',' ','Applying','online_course',3),('2023-12-01 13:30:55.363764','2023-12-01 18:49:05.000000',19,'GraphQL로 영화 웹 앱 만들기','GraphQL + React for Beginners','니꼬','https://nomadcoders.co/react-graphql-for-beginners','노마드코더','online',NULL,'free',0,'','','','','https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701424193467nomadcoder.png','','','',' ','Applying','online_course',3),('2023-12-01 13:30:55.395596','2023-12-01 18:52:15.000000',21,'빅데이터를 활용한 풀스택 개발자 양성과정','프론트엔드와 백엔드를 넘나드는 능력자 풀스택 개발자 양성 프로그램 개발에 필요한 언어의 기초부터 머신러닝, 딥러닝 인공지능 개발 및 데이터 분석 기술까지 학습하여 다양한 프로젝트를 경험해보는 과정','','https://ch.kjacademy.co.kr/front/lecture/index.asp?cs=6&li=506','국제컴퓨터아트학원','offline','seoul','government_subsidy',0,'','','','','https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701424399009gca.jpg','','','','교육기간994시간','Applying','bootcamp',5),('2023-12-01 13:30:55.396945','2023-12-01 18:52:33.000000',22,'풀스택 개발자 양성 과정','프론트엔드와 백엔드, 둘 다 잡고 싶다면','구름톤 트레이닝','https://k-digital.goorm.io/b2g/kdt/fullstack','구름톤 트레이닝','online','seoul','government_subsidy',0,'','','','','https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701424452510groom.png','','','<p>&nbsp;</p>','총 131일 / 104시간','Applying','bootcamp',6),('2023-12-01 13:30:55.400562','2023-12-01 18:52:54.000000',23,'AWS환경 데이터 분석 플랫폼 풀스택개발','자바프로그래밍 웹개발자 백엔드개발자 클라우드관리자 AWS 아마존클라우드 클라우드','','https://jr.ezenac.co.kr/','이젠아카데미','offline',NULL,'government_subsidy',0,'','','','','https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701424435373izen.png','','','<p>&nbsp;</p>',' ','Applying','bootcamp',7),('2023-12-01 13:30:55.407279','2023-12-01 18:53:14.000000',24,'React.js와 Springboot를 활용한 풀스택 개발','프론트엔드, 백엔드 프로그램 언어와 기술 습득을 통한 전문 개발자 양성','','https://anyang.ithimedia.co.kr/','하이미디어컴퓨터학원','online',NULL,'government_subsidy',0,'','','','','https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701424394835himedia.gif','','','&nbsp;','113일','Applying','online_course',8),('2023-12-01 13:30:55.411243','2023-12-01 18:54:47.000000',25,'GraphQL로 영화 API 만들기','GraphQL for Beginners','니꼬','https://nomadcoders.co/graphql-for-beginners','노마드코더','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701424564697nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.416241','2023-12-01 18:55:02.000000',26,'초보자를 위한 리덕스 101','Vanilla JS, Redux, React','니꼬','https://nomadcoders.co/redux-for-beginners','노마드코더','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701424519255nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.423282','2023-12-01 18:57:54.000000',27,'Gulp 90분 마스터하기','Automate Your Workflow','니꼬','https://nomadcoders.co/gulp-for-beginners','노마드코더','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701424750161nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.424948','2023-12-01 18:58:16.000000',28,'실전형 리액트 Hooks 10개','Learn by Building 10 Hooks','니꼬','https://nomadcoders.co/react-hooks-introduction','노마드코더','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701424740331nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.430443','2023-12-01 18:58:43.000000',29,'바닐라JS로 그림 앱 만들기','Build a Meme Maker','니꼬','https://nomadcoders.co/javascript-for-beginners-2','노마드코더','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701424781371nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.436315','2023-12-01 18:59:05.000000',30,'CSS Layout 마스터 클래스','SCSS, Flexbox, CSS Grid','니꼬','https://nomadcoders.co/css-layout-masterclass','노마드코더','online',NULL,'paid',60000,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701424755895nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.457436','2023-12-01 19:00:14.000000',31,'쉽고 빠른 Go 시작하기','Learn Go Fast','니꼬','https://nomadcoders.co/go-for-beginners','노마드코더','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701424876084nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.464255','2023-12-01 19:00:28.000000',32,'NestJS로 API 만들기','Enterprise Server Side Applications','니꼬','https://nomadcoders.co/nestjs-fundamentals','노마드코더','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701424926749nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.473278','2023-12-01 19:00:48.000000',33,'ES6의 정석','ES6, ES7, ES8','니꼬','https://nomadcoders.co/es6-once-and-for-all','노마드코더','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701424882600nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.484356','2023-12-01 19:01:03.000000',34,'Flutter 로 웹툰 앱 만들기','Flutter for Beginners','니꼬','https://nomadcoders.co/flutter-for-beginners','노마드코더','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701424921649nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.491932','2023-12-01 19:01:16.000000',35,'왕초보를 위한 React Native 101','React Native로 2개의 앱 만들기','니꼬','https://nomadcoders.co/react-native-for-beginners','노마드코더','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701424901539nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.492159','2023-12-01 19:01:31.000000',36,'Flutter Animations 마스터클래스','아름다운 UI. 제대로 구현하기','니꼬','https://nomadcoders.co/flutter-animations-masterclass','노마드코더','online',NULL,'paid',150000,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701424986521nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.500574','2023-12-01 19:01:51.000000',37,'Dart 시작하기','Flutter 앱 개발을 위한 Dart 배우기','니꼬','https://nomadcoders.co/dart-for-beginners','노마드코더','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701424994328nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.509257','2023-12-01 19:02:06.000000',38,'NextJS 시작하기','The React Framework for Production','니꼬','https://nomadcoders.co/nextjs-fundamentals','노마드코더','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701424978593nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.509677','2023-12-01 19:02:20.000000',39,'ReactJS로 영화 웹 서비스 만들기','React for Beginners','니꼬','https://nomadcoders.co/react-for-beginners','노마드코더','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701424957481nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.519403','2023-12-01 19:03:10.000000',40,'Python으로 웹 스크래퍼 만들기','Python for Beginners','니꼬','https://nomadcoders.co/python-for-beginners','노마드코더','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701425062077nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.540058','2023-12-01 19:03:56.000000',41,'바닐라 JS로 크롬 앱 만들기','Javascript for Beginners','니꼬','https://nomadcoders.co/javascript-for-beginners','노마드코더','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701425106069nomadcoder.png','','','<p>&nbsp;</p>','  ','Applying','online_course',3),('2023-12-01 13:30:55.548902','2023-12-01 19:04:14.000000',42,'React JS 마스터클래스','Typescript, Recoil, Framer Motion, Gatsby','니꼬','https://nomadcoders.co/react-masterclass','노마드코더','online',NULL,'paid',120000,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701425061478nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.730116','2023-12-01 19:04:26.000000',43,'React Native 마스터클래스','React Navigation, React Query, Animated, Firebase, Realm','니꼬','https://nomadcoders.co/react-native-masterclass','노마드코더','online',NULL,'paid',120000,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701425095927nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.757302','2023-12-01 19:04:42.000000',44,'트위터 클론코딩','React Firebase for Beginners','니꼬','https://nomadcoders.co/nwitter','노마드코더','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701425161685nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.770210','2023-12-01 19:05:22.000000',45,'줌 클론코딩','WebSockets, SocketIO, WebRTC','니꼬','https://nomadcoders.co/noom','노마드코더','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701425163071nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.826663','2023-12-01 19:05:45.000000',46,'[풀스택] 인스타그램 클론코딩','인스타그램 백엔드 + 프런트엔드 + 앱 + 서버','니꼬','https://nomadcoders.co/instaclone','노마드코더','online',NULL,'paid',420000,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701425232114nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.828821','2023-12-01 19:06:01.000000',47,'노마드 코인','Go로 암호화폐 만들기','니꼬','https://nomadcoders.co/nomadcoin','노마드코더','online',NULL,'free',220002,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701425224403nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.838732','2023-12-01 19:06:29.000000',48,'[풀스택] 우버 이츠 클론코딩','우버이츠 백엔드 + 프런트엔드 + 결제','','https://nomadcoders.co/nuber-eats','노마드코더','online',NULL,'paid',420000,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701425265465nomadcoder.png','','','<p>&nbsp;</p>','  ','Applying','online_course',3),('2023-12-01 13:30:55.841826','2023-12-01 19:06:54.000000',49,'풀스택 GPT','랭체인으로 AI 웹 서비스 7개 만들기','니꼬','https://nomadcoders.co/fullstack-gpt','노마드코더','online',NULL,'paid',99000,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701425310866nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.856215','2023-12-01 19:07:18.000000',50,'[풀스택] 에어비앤비 클론코딩','Django, REST Framework, Strawberry, React, Chakra UI','니꼬','https://nomadcoders.co/airbnb-clone','노마드코더','online',NULL,'paid',390000,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701425241142nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.861696','2023-12-01 19:07:38.000000',51,'[풀스택] 캐럿마켓 클론코딩','NextJS, React18, Tailwind, Prisma','니꼬','https://nomadcoders.co/carrot-market','노마드코더','online',NULL,'paid',360000,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701425341270nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:55.975848','2023-12-01 19:07:57.000000',52,'틱톡 클론코딩','Flutter, Firebase, Dart','니꼬','https://nomadcoders.co/tiktok-clone','노마드코더','online',NULL,'paid',419999,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701425353441nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:56.052409','2023-12-01 19:08:13.000000',53,'코코아톡 클론 코딩','HTML, CSS, Flex, Animations, Github','니꼬','https://nomadcoders.co/kokoa-clone','노마드코더','online',NULL,'paid',108000,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701425305615nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:56.060590','2023-12-01 19:08:35.000000',54,'[풀스택] 유튜브 클론코딩','유튜브 백엔드 + 프런트엔드 + 배포','니꼬','https://nomadcoders.co/wetube','노마드코더','online',NULL,'paid',360000,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1701425397609nomadcoder.png','','','<p>&nbsp;</p>',' ','Applying','online_course',3),('2023-12-01 13:30:56.063888','2023-12-21 07:45:50.000000',55,'(무료) 매우쉽게 알려주는 git & github','코드짜다가 갑자기 2일 전으로 시간을 돌리고 싶으면? 팀원과 코드 충돌없이 협업하고 싶으면?  버전 컨트롤을 도와주는 소프트웨어인 git 쓰면 가능합니다. ','코딩애플','https://codingapple.com/course/git-and-github/','코딩애플','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703144763743onlinecourse.png','','','<p>&nbsp;</p>',' ','Applying','online_course',10),('2023-12-01 13:30:56.070551','2023-12-21 07:46:05.000000',56,'빠르게 정리하는 파이썬 기초 문법','빠르게 30분만에 취미 개발자들을 위한 기초 파이썬 문법 내용을 짧게 정리해드립니다.','코딩애플','https://codingapple.com/course/python-basic/','코딩애플','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703144820898onlinecourse.png','','','<p>&nbsp;</p>',' ','Applying','online_course',10),('2023-12-01 13:30:56.072111','2023-12-21 07:46:17.000000',57,'React 리액트 기초부터 쇼핑몰 프로젝트까지!','7살도 이해가능한 코딩애플 React 풀코스!','코딩애플','https://codingapple.com/course/react-basic/','코딩애플','online',NULL,'paid',83000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703144782416onlinecourse.png','','','<p>&nbsp;</p>',' ','Applying','online_course',10),('2023-12-01 13:30:56.083147','2023-12-21 07:46:29.000000',58,'JavaScript 입문과 웹 UI개발','실제 웹 UI를 여러개 만들어보며 배워보는 JavaScript 기초 수업입니다.','코딩애플','https://codingapple.com/course/javascript-jquery-ui/','코딩애플','online',NULL,'paid',78000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703144810654onlinecourse.png','','','<p>&nbsp;</p>',' ','Applying','online_course',10),('2023-12-01 13:30:56.093819','2023-12-21 07:46:44.000000',59,'Node.js, MongoDB로 빠르게 웹서비스 만들기','게시판을 만들며 배워보는 Node.js 백엔드 강의입니다. 누구나 2시간 만에 서버를 이해하고 웹서비스를 직접 배포까지 해볼 수 있습니다.  기존 서버에 대한 배경지식이 없는 분들도 쉽게 이해할 수 있는 친절한 강의입니다.','코딩애플','https://codingapple.com/course/node-express-mongodb-server/','코딩애플','online',NULL,'paid',75000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703144846563onlinecourse.png','','','<p>&nbsp;</p>',' ','Applying','online_course',10),('2023-12-01 13:30:56.105572','2023-12-21 07:46:55.000000',60,'빠르게 마스터하는 타입스크립트','자주 사용하는 문법과 예제 위주로 빠르게 짚어드리겠습니다. ','코딩애플','https://codingapple.com/course/typescript-crash-course/','코딩애플','online',NULL,'paid',35000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703144867358onlinecourse.png','','','<p>&nbsp;</p>',' ','Applying','online_course',10),('2023-12-01 13:30:56.110812','2023-12-21 07:49:10.000000',61,'인스타그램을 만들며 배워보는 Vue.js 3 완벽 가이드','Vue 공식문서나 책봐도 뭔소린지 모르겠다면, 리액트도 나랑 안맞는 것 같다면 이걸로 입문하십시오. 인스타그램과 유사한 Single page application을 만들어보며 배워보는 프로젝트형 Vue.js 강의입니다. Vue CLI를 이용한 프로젝트 만들기부터 컴파일, 그리고 PWA 발행 방법까지 실제 프로덕션에 쓰이는 Vue의 대부분의 기술을 배워가실 수 있습니다.','코딩애플','https://codingapple.com/course/vue-js/','코딩애플','online',NULL,'paid',80000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703144970891onlinecourse.png','','','<p>&nbsp;</p>',' ','Applying','online_course',10),('2023-12-01 13:30:56.112595','2023-12-21 07:49:25.000000',62,'HTML/CSS All-in-one','표준 HTML부터 flex/grid 모던 레이아웃, Bootstrap, Sass, CSS 애니메이션 등 웹페이지 디자인과 퍼블리싱에 필요한 모든 내용을 배우실 수 있습니다.','코딩애플','https://codingapple.com/course/html-basics/','코딩애플','online',NULL,'paid',74999,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703145049468onlinecourse.png','','','<p>&nbsp;</p>',' ','Applying','online_course',10),('2023-12-01 13:30:56.127902','2023-12-21 07:49:35.000000',63,'Next.js로 웹서비스 만들기','Next.js는 프론트엔드부터 서버까지 만들 수 있는 React기반 프레임워크입니다. 이것만 사용해도 풀스택 웹개발이 가능합니다. ','코딩애플','https://codingapple.com/course/next-js/','코딩애플','online',NULL,'paid',75000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703145044620onlinecourse.png','','','<p>&nbsp;</p>',' ','Applying','online_course',10),('2023-12-01 13:30:56.131530','2023-12-21 07:49:56.000000',64,'쉽게 이해하는 JavaScript 객체지향 ES6 신문법','JavaScript ES6 신문법과 객체지향을 배울 수 있는 자바스크립트 심화과정입니다. (기초강의 아님 주의)','코딩애플','https://codingapple.com/course/javascript-es6/','코딩애플','online',NULL,'paid',56000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703144997283onlinecourse.png','','','<p>&nbsp;</p>',' ','Applying','online_course',10),('2023-12-01 13:30:56.134775','2023-12-21 07:50:12.000000',65,'Tensorflow 딥러닝 AI 기초부터 실무까지','파이썬 문법 쬬큼 알면 중학생도 쉽게 이해가능한 Tensorflow 딥러닝 기초강좌입니다.','코딩애플','https://codingapple.com/course/python-deep-learning/','코딩애플','online',NULL,'paid',82000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703145017383onlinecourse.png','','','<p>&nbsp;</p>',' ','Applying','online_course',10),('2023-12-01 13:30:56.136743','2023-12-21 08:17:52.000000',66,'Flutter로 만드는 iOS, Android 앱','Flutter 라이브러리를 사용하면 하나의 코드베이스로 iOS, Android 앱을 만들 수 있습니다. ','코딩애플','https://codingapple.com/course/flutter-course/','코딩애플','online',NULL,'paid',82000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703146713398onlinecourse.png','','','<p>&nbsp;</p>',' ','Applying','online_course',10),('2023-12-01 13:30:56.141637','2023-12-21 08:18:18.000000',67,'파이썬 기초부터 시작하는 웹크롤러 / 업무자동화','코딩포기자들을 위해 재밌게 프로젝트식으로 배울 수 있는 실용 파이썬 강의를 준비했습니다. ','코딩애플','https://codingapple.com/course/python-crawler-bot/','코딩애플','online',NULL,'paid',81999,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703146762252onlinecourse.png','','','<p>&nbsp;</p>',' ','Applying','online_course',10),('2023-12-01 13:30:56.156598','2023-12-21 08:18:30.000000',68,'당근마켓을 만들며 배워보는 Firebase','프론트엔드는 어찌저찌 하겠는데 서버 만드는게 어렵고 귀찮다고요? 그렇다면 Firebase를 쓰십시오.','코딩애플','https://codingapple.com/course/firebase-project/','코딩애플','online',NULL,'paid',35000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703146799394onlinecourse.png','','','<p>&nbsp;</p>',' ','Applying','online_course',10),('2023-12-01 13:30:56.161636','2023-12-21 08:18:40.000000',69,'한 번에 끝내는 SQL & Database','관계형 데이터베이스를 다루는 곳에서 백엔드 개발 잘하고 싶다면 SQL을 잘 알아두도록 합시다. ','코딩애플','https://codingapple.com/course/sql-and-database/','코딩애플','online',NULL,'paid',60000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703146742740onlinecourse.png','','','<p>&nbsp;</p>',' ','Applying','online_course',10),('2023-12-16 08:15:58.640970','2023-12-16 08:15:58.640970',70,'코드잇 스프린트 프론트엔드 트랙 4기','취업까지 달린다, 코드잇 스프린트','','https://sprint.codeit.kr/','코드잇','online',NULL,'government_subsidy',0,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702714590983ìº¡ì².PNG','','','','24주(6개월) 과정, 주 6일 (월-토)','Applying','bootcamp',11),('2023-12-16 08:27:15.525991','2023-12-16 08:27:15.525991',71,'제로베이스 프론트엔드 취업 스쿨',' 1년동안 무제한 취업보장, 6개월, 100% 온라인 교육\r\n','','https://zero-base.co.kr/','제로베이스','online',NULL,'government_subsidy',0,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702715334588channels4_profile (1).jpg','','','','6개월','Applying','bootcamp',12),('2023-12-16 09:17:17.861092','2023-12-16 09:17:17.861092',72,'KT 에이블스쿨 AIVLE School AI개발자/DX컨설','에이블스쿨은  KT에서 진행하는 기업 실무형 AI/DX 인재를 양성하는 교육 프로그램 입니다.','','https://aivle.kt.co.kr/home/main/aiDxMain?mcd=HM02002000','케이티','online',NULL,'government_subsidy',0,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702718240026sj88Y9x0S0uU1RPtkuxU_ê·¸ë¦¼5_ìì .png','','','',' 6개월간 풀타임(월~금)','Applying','bootcamp',13),('2023-12-18 04:04:10.897977','2023-12-18 04:04:10.897977',73,'정보 보안 전문가 양성 과정','프론트엔드와 백엔드, 둘 다 잡고 싶다면,\r\n구름톤트레이닝은 구름이 카카오와 함께 만든 해커톤인 \'구름폰 인 제주\'에 이어 만들어진 전일제 교육프로그램 입니다. ','구름톤 트레이닝','https://kdt.goorm.io/','구름톤 트레이닝','online',NULL,'government_subsidy',0,NULL,'',NULL,NULL,'','','','','평일 10:00 - 19:00 (공휴일 제외), 132일','Applying','bootcamp',6),('2023-12-18 04:06:29.375172','2023-12-18 04:06:29.375172',74,'쿠버네티스 과정','소프트웨어 개발과 인프라에 관심이 많다면\r\n구름톤트레이닝은 구름이 카카오와 함께 만든 해커톤인 \'구름폰 인 제주\'에 이어 만들어진 전일제 교육프로그램 입니다. \r\n\r\n','구름톤 트레이닝','https://kdt.goorm.io/','구름톤 트레이닝','online',NULL,'government_subsidy',0,NULL,'',NULL,NULL,'','','','','평일 10:00 - 19:00 (공휴일 제외), 총 80일','Applying','bootcamp',6),('2023-12-18 04:18:59.704647','2023-12-20 04:15:52.000000',75,'AI 자연어처리 과정','데이터 수학, 통계에 관심이 많다면\r\n','구름톤 트레이닝','https://kdt.goorm.io/','구름톤 트레이닝','online',NULL,'government_subsidy',0,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703045821760bootcamp.png','','','','평일 10:00 - 19:00 (공휴일 제외)총 640시간, 총 80일','Applying','bootcamp',6),('2023-12-18 06:12:20.170908','2023-12-18 06:12:20.170908',76,'UX/UI 디자인 부트캠프','기초부터 실전 프로젝트, 나만의 포트폴리오까지','내일배움캠프','https://nbcamp.spartacodingclub.kr/','팀스파르타','online',NULL,'government_subsidy',0,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702880008230ì¤íë¥´íì½ë©í´ë½_200X200.jpg','','','','오전 9시 ~ 오후 9시 (월~금),약 5개월','Applying','bootcamp',4),('2023-12-18 06:12:37.549772','2023-12-18 06:12:37.549772',77,'데이터 분석 부트캠프','데이터 역량 키우고 원하는 직무 취업까지!','내일배움캠프','https://nbcamp.spartacodingclub.kr/','팀스파르타','online',NULL,'government_subsidy',0,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702879970091ì¤íë¥´íì½ë©í´ë½_200X200.jpg','','','','오전 9시 ~ 오후 9시 (월~금),약 5개월','Applying','bootcamp',4),('2023-12-18 06:12:48.773359','2023-12-18 06:12:48.773359',78,'웹 개발 부트캠프','누구나 개발자로 취업하도록, 체계적인 관리형 부트캠프','내일배움캠프','https://nbcamp.spartacodingclub.kr/','팀스파르타','online',NULL,'government_subsidy',0,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702879989615ì¤íë¥´íì½ë©í´ë½_200X200.jpg','','','','오전 9시 ~ 오후 9시 (월~금),약 5개월','Applying','bootcamp',4),('2023-12-18 06:12:53.168033','2023-12-18 06:12:53.168033',79,'AI 부트캠프','내일배움캠프에서 AI 역량을 더한 개발자로 취업하세요.','내일배움캠프','https://nbcamp.spartacodingclub.kr/','팀스파르타','online',NULL,'government_subsidy',0,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702880000282ì¤íë¥´íì½ë©í´ë½_200X200.jpg','','','','오전 9시 ~ 오후 9시 (월~금),약 5개월','Applying','bootcamp',4),('2023-12-18 06:12:56.063417','2023-12-18 06:12:56.063417',80,'앱개발 부트캠프','누구나 앱 개발자로 취업, 내일배움캠프와 함께하세요.','내일배움캠프','https://nbcamp.spartacodingclub.kr/','팀스파르타','online',NULL,'government_subsidy',0,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702880011711ì¤íë¥´íì½ë©í´ë½_200X200.jpg','','','','오전 9시 ~ 오후 9시 (월~금),약 5개월','Applying','bootcamp',4),('2023-12-18 06:13:06.779698','2023-12-18 06:13:06.779698',81,'게임 개발 부트캠프','게임 개발자 취업, 내일배움캠프와 함께라면 가능합니다.','내일배움캠프','https://nbcamp.spartacodingclub.kr/','팀스파르타','online',NULL,'government_subsidy',0,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702880034650ì¤íë¥´íì½ë©í´ë½_200X200.jpg','','','','오전 9시 ~ 오후 9시 (월~금),약 5개월','Applying','bootcamp',4),('2023-12-18 06:13:09.441039','2023-12-18 06:13:09.441039',82,'스프링 백엔드 부트캠프','0원으로 시작하는\r\nSpring 백엔드 개발 부트캠프','내일배움캠프','https://nbcamp.spartacodingclub.kr/','팀스파르타','online',NULL,'government_subsidy',0,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702880020378ì¤íë¥´íì½ë©í´ë½_200X200.jpg','','','','오전 9시 ~ 오후 9시 (월~금),약 5개월','Applying','bootcamp',4),('2023-12-18 06:39:15.975617','2023-12-18 06:39:15.975617',83,'이어드림스쿨','10개월간 진행되는 AI 끝판왕 교육 과정을 찾아주세요.','','https://fastcampus.co.kr/yeardreamschool','패스트캠퍼스, 중소기업벤처진흥공단','both','seoul','government_subsidy',0,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702881570744ì´ì´ëë¦¼ì¤ì¿¨.png','','','','오전9시~오전6시, 약 10개월','Applying','bootcamp',14),('2023-12-18 06:46:59.247983','2023-12-18 06:46:59.247983',84,'항해99 개발자 단기 취업 코스','취업 성공 시에만 교육비 130만 원을 납부\r\n취업 코스 선발 절차의 서류와 면접 합격 시, 0원으로 과정을 시작할 수 있습니다. \r\n수료 후 1년 간 취업 실패 시, 교육비를 받지 않겠습니다.\r\n수천 명을 개발자로 키워낸 경험이 있습니다. 함께 노력했을 때 취업에 실패할 확률은 0%에 가깝습니다.','팀스파르타','https://hh-devcareer.oopy.io/','팀스파르타','online',NULL,'paid',1300000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702882076916ì¤íë¥´íì½ë©í´ë½_200X200.jpg','','','','월~토. 오전 9:00 ~ 오후 9:00 (12h) , 8주','Applying','bootcamp',4),('2023-12-18 06:56:31.931812','2023-12-28 11:29:30.000000',85,'항해99 개발자 부트캠프','최단기간, 최다 프로젝트를\r\n완수하는 99일 실무 코스\r\n자기주도적 학습을 이끄는 커리큘럼으로\r\n99일 후 무한 성장하는 개발자로 거듭나세요','팀스파르타','https://hanghae99.spartacodingclub.kr/v2/fullTime','팀스파르타','online',NULL,'paid',5500000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702882677426í­í´99.png','','','','오전9시~오후9시, 주6일(월~토), 99일(14주)','Applying','bootcamp',4),('2023-12-18 07:03:09.972184','2023-12-18 07:03:09.972184',86,'항해99 PM 코스','퇴사 없이 주 3일 투자로\r\n내년 상반기에는 PM 취업','팀스파르타','https://hanghae99.spartacodingclub.kr/pm','팀스파르타','online',NULL,'paid',2000000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702883086976í­í´99.png','','','','7주','Applying','bootcamp',4),('2023-12-18 07:08:59.656520','2023-12-18 07:08:59.656520',87,'항해99 항해 플러스 백엔드','모집 대상\r\n경력 3년 이하 주니어 웹개발자\r\n교육 방법\r\n오프라인 (서울 강남)\r\n기술 스택\r\nTS / Java / Kotlin 중 택 1\r\n','팀스파르타','https://hanghae99.spartacodingclub.kr/v2/plus/be','팀스파르타','offline',NULL,'government_subsidy',3000000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702883418015í­í´99.png','','','',' 매주 토요일 오전 10:00~19:00, 10주','Applying','bootcamp',4),('2023-12-18 07:11:13.404970','2023-12-18 07:11:13.404970',88,'항해99 항해 플러스 프론트엔드','모집 대상\r\n1~4년 차 현직 프론트엔드 개발자\r\n기술 스택\r\nTypeScript\r\n도전으로 도약하는\r\n프론트엔드 개발자로.\r\n구현력을 어느정도 갖췄다면,\r\n열 배 임팩트에 도전할 차례입니다.','팀스파르타','https://hanghae99.spartacodingclub.kr/v2/plus/fe','팀스파르타','offline','seoul','paid',3000000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702883545393í­í´99.png','','','','매주 토요일 오전 10:00~19:00, 10주','Applying','bootcamp',4),('2023-12-18 07:18:42.489704','2023-12-18 07:18:42.489704',89,'웹 개발 코스',' 개발자 취업을 위한 웹 개발 코스\r\n6개월 동안 전략적으로 개발자 커리어를 준비하세요.','코드스테이츠','https://www.codestates.com/course/renewal/web-development','코드스테이츠','online',NULL,'paid',7000000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702884011099ì½ëì¤íì´ì¸ .png','','','','월~금(오전6시~오후6시),6개월(25주),','Applying','bootcamp',15),('2023-12-18 07:23:53.262045','2023-12-18 07:23:53.262045',90,'DevOps/클라우드 입문 코스','차별화된 개발자 커리어를 위한\r\nDevOps/클라우드 입문 코스','코드스테이츠','https://www.codestates.com/','코드스테이츠','online',NULL,'paid',5000000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702884295602ì½ëì¤íì´ì¸ .png','','','','4개월','Applying','bootcamp',15),('2023-12-18 07:25:28.296764','2023-12-18 07:25:28.296764',91,'iOS 앱 개발 코스','10주간의 몰입 후 iOS 앱 개발 전문가로 성장하세요.\r\n\r\n','코드스테이츠','https://www.codestates.com/','코드스테이츠','online',NULL,'paid',6000000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702884404563ì½ëì¤íì´ì¸ .png','','','','10주','Applying','bootcamp',15),('2023-12-18 07:34:19.681094','2023-12-18 07:34:19.681094',92,'PM 코스','∙ 주 3회(온, 오프라인 병행)\r\n취업률 97%가 증명하는 코드스테이츠의 PM 코스가\r\n더! 강력해져서 돌아왔습니다.\r\n졸업 후 1년 이내 취업하면, 취업 축하금을 드려요. \r\n1년 이내 취업하지 못할 경우, 수강료 100% 환불\r\n','코드스테이츠','https://www.codestates.com/','코드스테이츠','both',NULL,'paid',5000000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702884915188ì½ëì¤íì´ì¸ .png','','','','13주(주3회),화,목(19:30~22:30),토(13:00~18:00)','Applying','bootcamp',15),('2023-12-18 07:36:27.079603','2023-12-18 07:36:27.079603',93,'마케팅 코스','2024 마케터로서의 첫 걸음,\r\n올인원 마케팅 코스\r\n비즈니스의 성장을 이끄는 마케터가 되어보세요.\r\n\r\n14기 교육 기간\r\n2024년 4월 15일\r\n~ 2024년 7월 12일 (13주)\r\n사전 모집 기간\r\n2023년 12월 11일 ~\r\n2024년 1월 7일(선착순 마감)\r\n\r\n\r\n VOD 학습\r\n온라인 Live 강의','코드스테이츠','https://www.codestates.com/','코드스테이츠','online',NULL,'paid',5000000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702885018526ì½ëì¤íì´ì¸ .png','','','','13주, 화,목(19:30~22:30),토 (13:00~18:00)','Applying','bootcamp',15),('2023-12-18 07:40:36.363844','2023-12-18 07:40:36.363844',94,'인공지능 전문가 과정','AI College\r\n온라인 중심의 온 · 오프 혼합 학습\r\n','코드스테이츠','https://www.codestates.com/','코드스테이츠','both',NULL,'paid',8000000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702885281950ì½ëì¤íì´ì¸ .png','','','','원~금,오전9시 ~ 오후6시','Applying','bootcamp',15),('2023-12-18 07:43:21.016754','2023-12-18 07:43:21.016754',95,'금융권 데이터 분석가 과정','DATA College\r\n금융권 데이터 분석가 과정\r\n어디에서도 볼 수 없었던\r\n금융권 데이터 분석가를 위한 단 하나의 길','코드스테이츠','https://www.codestates.com/','코드스테이츠','offline',NULL,'paid',8000000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702885465588ì½ëì¤íì´ì¸ .png','','','','6개월,월~금(오전 9시 ~ 오후 6시)','Applying','bootcamp',15),('2023-12-18 08:50:11.774755','2023-12-18 08:50:11.774755',96,'데이터 분석 취업 스쿨','2024년 1년동안 무제한 취업 보장\r\n','제로베이스','https://zero-base.co.kr/category_data_camp/school_DA','제로베이스','online',NULL,'paid',2980000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702889509931ì ë¡ë² ì´ì¤.jpg','','','','4개월','Applying','bootcamp',12),('2023-12-18 08:50:15.210602','2023-12-18 08:50:15.210602',97,'컨텐츠 마케팅 취업 스쿨','2024년 1년동안 무제한 취업 보장\r\n','제로베이스','https://zero-base.co.kr/category_mktg_camp/school_DM','제로베이스','online',NULL,'paid',2000000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702889493898ì ë¡ë² ì´ì¤.jpg','','','','4개월','Applying','bootcamp',12),('2023-12-18 08:50:17.825166','2023-12-18 08:50:17.825166',98,'퍼포먼스 마케팅 취업 스쿨','2024년 1년동안 무제한 취업 보장\r\n','제로베이스','https://zero-base.co.kr/category_mktg_camp/school_PFM','제로베이스','online',NULL,'paid',2450000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702889425099ì ë¡ë² ì´ì¤.jpg','','','','4개월','Applying','bootcamp',12),('2023-12-18 08:50:20.832525','2023-12-18 08:50:20.832525',99,'UI/UX 디자인 취업 스쿨','제로베이스 UIUX 디자인 취업 스쿨 커리큘럼\r\n2024년 1년동안 무제한 취업 보장\r\n실제 서비스의 UIUX를 개선하는 100% 실무프로젝트\r\n','제로베이스','https://zero-base.co.kr/category_dgn_camp/school_DG','제로베이스','online',NULL,'paid',2350000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702889455262ì ë¡ë² ì´ì¤.jpg','','','','4개월','Applying','bootcamp',12),('2023-12-18 08:50:30.920266','2023-12-18 08:50:30.920266',100,'영상 취업 스쿨','2024년 1년동안 무제한 취업 보장','제로베이스','https://zero-base.co.kr/category_dgn_camp/school_VM','제로베이스','online',NULL,'paid',2100000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702889523032ì ë¡ë² ì´ì¤.jpg','','','','4개월','Applying','bootcamp',12),('2023-12-18 08:52:03.147360','2023-12-18 08:52:03.147360',101,'데이터 취업 스쿨','2024년 1년 동안 무제한 취업보장','제로베이스','https://zero-base.co.kr/category_data_camp/school_DS','제로베이스','online',NULL,'paid',3799999,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702889573155ì ë¡ë² ì´ì¤.jpg','','','','4개월','Applying','bootcamp',12),('2023-12-18 08:53:22.627590','2023-12-18 08:53:22.627590',102,'백엔드 취업스쿨','01. 1개월별 6단계 몰입 학습 ( Step 1, Step 2, Step 3, Step 4, Step 5, Step 6 )\r\n02. Zerobase Evaluation System(ZES)으로 객관적으로 실력 향상 확인 가능\r\n03. 100% 수강생 실력에 따라 맞춤형 학습 - Master 반 / Challenge 반 / Starter반\r\n04. 취업에 성공할 때 까지 무제한 이력서/포트폴리오 1:1첨삭','제로베이스','','제로베이스','online',NULL,'paid',3900000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702889631838ì ë¡ë² ì´ì¤.jpg','','','','6개월','Applying','bootcamp',12),('2023-12-18 08:54:44.200531','2023-12-18 08:54:44.200531',103,'프론트엔드 취업스쿨','01. 온라인 VOD 학습 500시간\r\n02. 매주 코딩테스트, 컴퓨터 공학 퀴즈 대비\r\n03. 단계별 실습 과제\r\n04. 라이브 세미나\r\n05. 자소서/이력서 컨설팅, 모의면접 서비스','제로베이스','https://zero-base.co.kr/category_dev_camp/school_FE','제로베이스','online',NULL,'paid',3750000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702889769340ì ë¡ë² ì´ì¤.jpg','','','','6개월','Applying','bootcamp',12),('2023-12-19 06:58:33.112874','2023-12-19 06:58:33.112874',104,'버저비터','행정공무원 출신의 주도주 트레이더\r\n23만원으로 1년만에 11억 5천 수익\r\n','버저비터','https://thetrading.co.kr/','더트레이딩','online',NULL,'paid',990000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702969207694ëí¸ë ì´ë©.jpeg','','','','온라인','Applying','online_course',16),('2023-12-19 07:13:21.301509','2023-12-19 07:13:21.301509',105,'서희파더','흙수저에서 슈퍼개미가 된 주식계의 레전드\r\n*눌림, 상따, 종베 one cycle 매매\r\n*이슈가 있는 테마 대장주를 찾자!\r\n*주식공부는 어떻게 해야하나?\r\n*성공으로 가는 정확한 방향성','서희파더','https://thetrading.co.kr/teacher?xpt=3','더트레이딩','online',NULL,'paid',1000000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702970020159ëí¸ë ì´ë©.jpeg','','','','1개월','Applying','online_course',16),('2023-12-19 07:14:46.758434','2023-12-19 07:14:46.758434',106,'혼마','*주도주 원사이클 매매\r\n*종목 등급분류\r\n*매매의 단순화\r\n*어떤 장에서도 수익구간은 나온다\r\n*극단적 구간의 베팅방법','혼마','https://thetrading.co.kr/teacher?xpt=9','더트레이딩','online',NULL,'paid',990000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702970158485ëí¸ë ì´ë©.jpeg','','','','1개월','Applying','online_course',16),('2023-12-19 07:15:46.079049','2023-12-19 07:15:46.079049',107,'뉴하트','*대한민국에서 주도주 매매를 가장 쉽게 교육\r\n*수익이 나고 안나고는 관심종목 정리에서 결판난다\r\n*직장인도 반드시 해야만 하는 주도주 오후상따\r\n*뉴하트필살기 주도주 3시 종가베팅\r\n*대장주는 쉽게 안 죽는다 JB1, SL 종가베팅\r\n*오뚜기 처럼 일어서는 마인드 교육','뉴하트','https://thetrading.co.kr/teacher?xpt=1','더트레이딩','online',NULL,'paid',990000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702970243619ëí¸ë ì´ë©.jpeg','','','','1개월','Applying','online_course',16),('2023-12-19 07:20:46.605347','2023-12-19 07:22:13.000000',108,'티마 멤버 전용 서비스','강력한 종목검색\r\n실시간 대장주\r\n실시간 주도주\r\n이슈 정보 제공','티마','https://dotima.co.kr/home','더트레이딩','online',NULL,'paid',79200,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1702970630897í°ë§.png','','','','1개월','Applying','app_payment_service',16),('2023-12-19 09:43:20.103244','2023-12-23 13:44:33.870037',109,'유목민의 시그널리포트','\"미래를 향한 투자 여정, 시그널리포트\" 경제/경영 베스트셀러 1위 \'나의 투자는 새벽 4시에 시작된다\' \'나의 월급독립 프로젝트\' 작가 유목민의 회사 (주)시그널리포트가 운영하는 채널입니다.﻿ \'시그널리포트\'는 투자자 유목민을 포함해 국내 최대 회계법인 출신 현직 회계사, 국내 3대 로펌의 현직 파트너 변호사, 현직 병원장·의사, 글로벌 제약사 연구원, 국내 대기업 S사 임원, 세무사, 전직 공무원, 현직 기자, 월 억/천 트레이더 등 모든 영역의 가장 전문가 20여명이 모여서 뽑아내는 콘텐츠입니다. 저희와 함께 자산을 더 빨리, 더 많이 불려가길 바랍니다. 경쟁자가 없는 초격차 콘텐츠로 구독자들은 투자 인생의 어나더 레벨의 경험하게 될 것이라 생각합니다. 함께 가시죠. :)﻿','유목민','https://contents.premium.naver.com/nomadand/nomad','시그널리포트','online',NULL,'paid',350000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703046489231membership.png','','','','1개월 ','Applying','membership_subscription',17),('2023-12-19 10:53:44.571976','2023-12-20 04:27:12.000000',110,'The RED : 500만원으로 1조 기업 가치를 만들어낸','500만','신현성','https://fastcampus.co.kr/biz_red_shs','패스트캠퍼스','online',NULL,'paid',285000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703046510882course.png','','','<p><b>1조 가치 기업의 성장 비밀을 배울 수 있습니다.&nbsp;</b></p><p><br></p><p>One 좋은 창업 팀 구성, 아이디어를 검증하는 방법</p><p><br></p><p>Two 하나의 목표를 바라보는 팀을 만드는 방법</p><p><br></p><p>Three 위기 관리에 대처하는 의사결정 방법</p><p><br></p><p>Four 상황을 유리하게 이끌어나가는 협상의 기술</p><p><br></p><p><br></p>',' ','Applying','online_course',18),('2023-12-21 07:24:46.499766','2023-12-21 07:24:46.499766',111,'직장인 창업 부트캠프 {창} | 창업팀 빌딩에서 투자 유치','스타트업에 대한 투자 기준은 모두 다르지만 생각보다 명확합니다. 사업 초기부터 투자 유치까지 고려해야 될 모든 요소를 현직 VC의 관점에서 함께 고민하겠습니다. ','스파르타코딩클럽','https://chang.spartacodingclub.kr/','팀스파르타','online',NULL,'paid',2000000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703143573511bootcamp.png','','','','매주 토요일 오후1~7시 ','Applying','bootcamp',4),('2023-12-23 05:57:02.324249','2023-12-23 13:51:28.500242',112,'할 수 있다! 알고 투자','안녕하세요, 강환국입니다.\r\n\r\n할 수 있다! 퀀트투자(2017), 가상화폐 투자 마법공식(2018), 하면 된다! 퀀트투자(2021), 거인의 포트폴리오(2021)의 저자입니다.\r\n2021년 경제적 자유를 달성하여 작가, 유튜버, 강사로 활동하고 있습니다.','강환국','https://www.youtube.com/@haltoo/videos','강환국','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703311108641onlinecourse.png','','','','유뷰브 영상 강의 ','Applying','youtube',19),('2023-12-23 06:36:20.385037','2023-12-23 13:51:30.360023',113,'체슬리TV','박세익 전무의 체슬리투자자문 공식 유튜브\r\n','체슬리TV','https://www.youtube.com/@chesleytv/featured','체슬리TV','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703313399442onlinecourse.png','','','','온라인','Applying','youtube',20),('2023-12-23 06:53:29.770932','2023-12-23 13:50:45.189129',114,'소수몽키 소수의견','1. 소몽 솔직 의견 제공(오프더레코드)\r\n2. 소수의견 전용 자체제작 양질의 자료상시 제공\r\n3. 중요한 이슈 신속 정리 및 전달 \r\n4. 꼭 봐야할 엄선 리포트 제공 및 요약 정리 제공\r\n5. 소몽 유튜브 라이브 풀버전 제공(라이브 직후 텔레그램으로 링크 제공)','소수몽키','https://cafe.naver.com/sosumonkey/','소수몽키','online',NULL,'paid',16500,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703314499605membership.png','','','','3개월','Applying','membership_subscription',21),('2023-12-23 07:01:23.771875','2023-12-23 13:51:34.823470',115,'재테크읽어주는 파일럿','재테크읽어주는 파일럿','재테크읽어주는 파일럿','https://www.youtube.com/@Super0Min','재테크읽어주는 파일럿','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703314905891onlinecourse.png','','','','온라인','Applying','youtube',22),('2023-12-23 07:15:25.167700','2023-12-26 10:33:49.000000',116,'주식단테 프리미엄 멤버십(유튜브 포함)','단테 노하우의 모든 것을 담은 프리미엄 멤버십 \r\n(기법 강의/검색기/지표) \r\n주식단테 16년 노하우 총집합 패키지','주식단테 ','https://stock.finup.co.kr/Membership/MembershipView.aspx?CIDX=152913','핀업','online',NULL,'paid',500000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703315735305membership.png','','','','1개월','Applying','membership_subscription',23),('2023-12-23 07:21:03.606240','2023-12-23 13:50:56.645039',117,'평생투자 보조 매매 프로그램 멤버십','주식 경력 20년 이상\r\n우량 기업 중 저평가 종목의 저점 매수추구 \r\n중장기로 큰 복리 수익을 지향 ','평생투자','https://stock.finup.co.kr/Membership/MembershipView.aspx?CIDX=153063','핀업','online',NULL,'paid',250000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703316116498membership.png','','','','1개월','Applying','membership_subscription',23),('2023-12-23 07:25:05.055588','2023-12-23 13:51:01.233721',118,'게임조아의 조언서비스 ','국내 대표 트레이더 게임조아(신준경) 의 조언 서비스','게임조아','https://stock.finup.co.kr/Insight/InsightStockView.aspx?CIdx=140349','핀업','online',NULL,'paid',300000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703316333801membership.png','','','','1개월','Applying','membership_subscription',23),('2023-12-23 07:49:11.540953','2023-12-23 13:51:38.833056',119,'인범티비','해외선물 실전 트레이더 유튜버 인범입니다.\r\n','인범티비','https://www.youtube.com/@inbumtv','인범티비','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703317847256onlinecourse.png','','','','무료 온라인 ','Applying','youtube',24),('2023-12-23 07:59:19.663019','2023-12-23 13:51:06.578550',120,'천기가이 - Chunki Guy 천기패밀리','사람답게 사는 노하우 재테크 주식채권부동산투자기법티칭공유싸이트 저는 천기노인 이준원입니다.\r\n술과 음악 운동좋아하고\r\n천상병님의  시 소풍처럼\r\n우리네 인생 즐겁게 후회하지 않게 삽시다.','천기가이 - Chunki Guy','https://www.youtube.com/@-chunkiguy','천기가이 - Chunki Guy','online',NULL,'paid',12000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703318439684membership.png','','','','1개월','Applying','membership_subscription',25),('2023-12-23 08:06:10.908571','2023-12-23 08:06:10.908571',121,'돈깡 우모투 스터디','돈깡 매매일지 단독제공 + 주 2회 LIVE 특강','돈깡','https://cafe.naver.com/waai','돈깡','online',NULL,'paid',220000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703318817728onlinecourse.png','','','','2개월','Applying','online_course',26),('2023-12-23 08:14:07.182540','2023-12-23 13:51:07.706515',122,'주식제값찾기 Macro OK(매크로케이) 멤버십','전문가 강영현 \r\n    - 삼프로, 연합인포맥스, E트렌드 등 출연\r\n    - 투자 클럽 주도주클럽 자문위원\r\n    - 네이버카페 주식제값찾기 자문위원\r\n    - 2012~2013 M방송 여의도 탑브로커 선정\r\n    - (전)유진투자증권 영업부 이사 \r\n    - (전)유진투자증권 투자정보연구팀장\r\n    - (전) SBS라디오 목돈연구소 패널\r\n    - (전) 한국경제 TV  강영현의 진짜전략 ','주식제값찾기(강영현)','','주식제값찾기(강영현)','online',NULL,'paid',60000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703319296064membership.png','','','','1개월','Applying','membership_subscription',27),('2023-12-23 08:15:29.185155','2023-12-23 13:51:43.028572',123,'염블리와 함께 [이베스트투자증권]','이베스트투자증권 염승환 이사의 공식 유튜브 채널 [염블리와 함께]입니다.\r\n\r\n📌 매일 오후 6시 마감 시황 방송 [시장함께읽기]\r\n📌 수요일 오전 10시 10분 라이브 [함께소통하기]\r\n📌 토요일 오전 10시 주식 공부 [함께배우기]\r\n','염승환','https://www.youtube.com/@yeomvely','염승환','online',NULL,'free',0,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703319418471onlinecourse.png','','','','-','Applying','youtube',28),('2023-12-26 07:37:43.019914','2023-12-28 10:15:03.000000',124,'JB김종봉의 2천만원으로 경제적 자유를 달성한 진짜 이야기','16년간 돈을 공부하며\r\n돈을 가르치고 있는\r\n전업투자자 JB 김종봉 입니다.','JB 김종봉','https://class101.net/ko/products/602a6e4f3b950d0014898495?tab=class_description','클래스101','online',NULL,'paid',189000,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703577129826onlinecourse.png','','','','온라인','Applying','online_course',29),('2023-12-28 10:08:27.538586','2023-12-28 12:16:11.384373',125,'오픈마켓 입점부터 안정적인 매출발생까지! 8주간 함께하는 ','여의도 국제금융로 6길 30, 도매꾹 5층 (세미나실)\r\n교육대상 전문셀러,[서울/여의도]스터디그룹,샵플링\r\n실전과정   주말   유료\r\n도매꾹(도매매)','김병철','https://campus.domeggook.com/','도매매','offline','seoul','paid',590000,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703758418958offlinecourse.png','','','','2개월 ','Applying','offline_course',30),('2023-12-28 10:21:23.400564','2023-12-28 12:16:11.384373',126,'사업자등록부터 매출 1,000만원까지! 함께하는 해외구매대','[여의도/취창업과정]  처음부터 순익 발생까지! \r\n해외구매대행 완전정복(타오바오,티몰,1688,징동)\r\n교육대상 입문/왕초보,전문셀러,샵플링\r\n','정보근','https://campus.domeggook.com/','도매매','offline',NULL,'paid',660000,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703758974730offlinecourse.png','','','','2개월','Applying','online_course',30),('2023-12-28 10:27:04.931455','2023-12-28 12:16:11.384373',127,'도매매 전문셀러 M.B.A과정(초보셀러 양성 멘토링)','도매매 전문셀러 MBA과정은? \r\n\r\n월 1,000만원 매출 달성을 목표로 하며, 빠르게 매출을 발생 시키기 위해\r\n멘토링(Mentoring)과 빅데이터(Bigdata) 업무자동화(Automation)를 배우는 과정입니다.\r\n\r\n교육대상 입문/왕초보,전문셀러,유통MD,상품공급사\r\n','조성일, 권대원, 정회진','https://campus.domeggook.com/','도매매','offline','seoul','paid',2900000,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703759282065offlinecourse.png','','','','8주','Applying','offline_course',30),('2023-12-28 10:30:56.933814','2023-12-28 12:15:16.982966',128,'명품 비즈니스 컨설팅 쏜다 첫걸음 월30만원으로 30억원 ','무재고 판매 솔루션(가입비 무료)\r\n명품구매대행','박슬아','https://campus.domeggook.com/','도매매','online','seoul','paid',990000,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703759551545onlinecourse.png','','','','대면 또는 화상미팅(1시간)','Applying','online_course',30),('2023-12-28 10:41:20.873434','2023-12-28 10:41:20.873434',129,'지능의 심리학과 연봉 10억의 상관 관계','이 둘을 한 번에 해결하는 것은 지능의 심리학에 대해 이해하는 것 입니다.','자청','https://lifehacking.co.kr/shop/product/view?product_id=34#introduce','라이프해킹스쿨','online',NULL,'paid',290000,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703760095375onlinecourse.png','','','','구매후 6개월 ','Applying','online_course',32),('2023-12-29 13:26:17.911243','2023-12-29 13:26:17.911243',130,'6년차 100억 매출 대표가 알려주는 온라인 창업 A-Z [스마트스토어X쿠팡]','안녕하세요.\r\n저는 6년전까지만 해도\r\n평범한 대학생이였습니다.\r\n문득, 앞으로 20~30년동안 직장인으로\r\n살아가면 과연 인생이 바뀔까? 라는 생각이 들었습니다.\r\n나이도, 경험도 무엇도 상관없습니다.\r\n평범하든 비범하든 상관없습니다.\r\n열정을 가지고, 실행력만 가지고 들어오세요.\r\n아무것도 아닌\r\n제주도 촌놈이였던\r\n25살 저도 했습니다.\r\n제가 말씀드리는 방식은\r\n잠시 달콤하게 적용되는 ‘편법’ 이 아닙니다.\r\n시간이 지나고 세월이 지나도 변하지 않는\r\n온라인의 ‘본질’을 이야기 합니다.\r\n그리고 이 방식은 지난 6년간 봐왔던\r\n제 주변의 모든 지인들의 잘될 수 있었던\r\n그 진실들입니다.\r\n지금껏 여기 저기서 치이고 다니셨다면\r\n더 이상 방황하지 않으시기 바랍니다.\r\n이 모든 노하우들을\r\n여러분들에게 나눠드리고 싶습니다.\r\n\r\n[100%환불보장] 6년차 100억 매출 대표가 알려주는 온라인 창업 A-Z [스마트스토어X쿠팡]\r\n','온라인협객','https://www.classu.co.kr/class/classDetail/14765?C14765','클래스유','online','seoul','paid',398400,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703856427951onlinecourse.png','','','','12개월','Applying','online_course',34),('2023-12-29 13:30:58.822631','2023-12-29 13:30:58.822631',131,'현금흐름이 따라오는 자동 고객 획득 시스템 <고객의 눈>','안녕하세요?\r\n김경은 팀장입니다.\r\n마케팅의 본질은 고객의 관점에서 생각하게끔 도와주는 \'고객의눈\'에 있습니다.\r\n- 누구에게 팔아야 되는지\r\n- 무엇을 팔아야 되는지\r\n- 얼마에 팔아야 되는지\r\n오랫동안 사업을 하신 대표님들도 이 질문에는 대답을 하지 못 하시는 모습을 보이시곤 합니다.\r\n자신의 일을 사랑하는 사람들의\r\n지속 가능성을 지키고 키우기 위해 만들었습니다.\r\n다른건 몰라도,\r\n마케팅을 몰라서 망하는 일은 없어야 하지 않을까요.','김경은','https://www.classu.co.kr/class/classDetail/16899','클래스유','online',NULL,'paid',990000,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703856750396onlinecourse.png','','','','12개월','Applying','online_course',34),('2023-12-29 13:45:39.897202','2023-12-29 13:45:39.897202',132,'돈크라테스 로켓그로스 정복하기','돈크라테스 로켓그로스 정복하기','돈크라테스','https://cafe.naver.com/donkmoney','돈크라테스','online',NULL,'paid',990000,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703857585131onlinecourse.png','','','','4주','Applying','online_course',35),('2023-12-29 13:51:35.628882','2023-12-29 13:51:35.628882',133,'쇼건의 스터디 컨설팅','찐 사업가와 자산가가 모여 진행하는 PREMIUM CLASS\r\n쇼핑몰 건물주 스터디 컨설팅 \r\n소수정예 비즈니스 클럽','쇼건','https://m.cafe.naver.com/ca-fe/web/cafes/10737967/articles/11657?fromList=true&menuId=441&tc=cafe_article_list','쇼건','both',NULL,'paid',11000000,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703857986632offlinecourse.png','','','','6개월','Applying','offline_course',36),('2023-12-29 13:56:38.682455','2023-12-29 13:57:21.000000',134,'판매자로켓(제트배송) 기초반','Real 성공 쇼핑몰 다 보여드림\r\n진짜가 나타났다 라는 말을 듣고 싶습니다.\r\n쇼핑몰 10년차, \r\n말만 보여주는게 아니라 결과와 데이터로 보여드리겠습니다.\r\n\r\n쇼핑몰 운영으로 수익내는건 기본, \r\n본인 사옥(창고) 건물주도 되어 미래를 대비할 수 있도록 도움을 드리고\r\n제가 쇼핑몰로 건물주가 되어가는 과정과 경험것들을 공유해가겠습니다.\r\n\r\n여러분에 꿈을 이루는데 작은 디딤돌이 되어드리겠습니다!!','쇼건,현프로,이프로','https://cafe.naver.com/egenglish/11073','쇼건,현프로,이프로','offline','seoul','paid',3600000,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703858262839offlinecourse.png','','','','5주','Applying','offline_course',1),('2023-12-29 15:28:22.010120','2023-12-29 15:28:22.010120',135,'삼성 청년 SW 아카데미','삼성의 SW 교육 경험과 고용노동부의 취업 지원 노하우를 바탕으로, 취업 준비생에게 SW 역량 향상 교육 및 다양한 취업지원 서비스를 제공하여 취업에 성공하도록 돕는 프로그램입니다.\r\n','ssafy(싸피)','www.ssafy.com','ssafy(싸피)','both','seoul','government_subsidy',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703863711186bootcamp.png','','','','12개월','Applying','bootcamp',38),('2023-12-29 15:34:28.054220','2023-12-29 15:34:28.054220',136,'앱 스쿨 : iOS','[전액지원] iOS 개발 실무부터 앱 스토어 배포까지 실무에 최적화된 경험을 갖춘 신입 iOS 개발자로 취업할 부트캠프\r\n\r\n','멋쟁이사자처럼(TECHIT)','https://techit.education/','멋쟁이사자처럼(TECHIT)','online',NULL,'government_subsidy',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703864104736bootcamp.png','','','',' 920시간 (약 8시간/일)','Applying','bootcamp',39),('2023-12-29 15:37:57.138317','2023-12-29 15:37:57.138317',137,'프론트엔드 스쿨','[전액지원] 수료생 99%가 추천하는 프론트엔드 특화 교육으로 기본기와 협업 역량을 동시에 갖춘 개발자로 취업할 부트캠프\r\n본 과정은  국민내일배움카드 를 이용해 교육비 전액 지원받는 프론트엔드 개발 부트캠프입니다.','멋쟁이사자처럼(TECHIT)','https://techit.education/','멋쟁이사자처럼(TECHIT)','online',NULL,'government_subsidy',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703864284694bootcamp.png','','','','720시간 (약 8시간/일)','Applying','bootcamp',39),('2023-12-29 15:39:29.602958','2023-12-29 15:39:29.602958',138,'백엔드 스쿨 : Java',' 본 과정은  국민내일배움카드 를 이용해 교육비를 전액 지원받는 백엔드 개발 부트캠프 입니다.\r\n\r\n','멋쟁이사자처럼(TECHIT)','https://techit.education/','멋쟁이사자처럼(TECHIT)','online',NULL,'government_subsidy',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703864432591bootcamp.png','','','','880시간 (약 8시간/일)','Applying','bootcamp',39),('2023-12-29 15:39:32.076541','2023-12-29 15:39:32.076541',139,'백엔드 스쿨 : Python','[전액지원&취업연계] 기업 협약을 통해 이론, 실무 프로젝트, 우선취업 기회까지 한 번에! 백엔드 개발자 취업을 위한 교육 과정\r\n현업 프로젝트 경험으로 시작하는\r\n백엔드 직무 취업 연계 지원\r\n수료 후 멋쟁이사자처럼과 함께하는 기업들을 통해 취업 연계를 지원\r\n','멋쟁이사자처럼(TECHIT)','https://techit.education/','멋쟁이사자처럼(TECHIT)','online',NULL,'government_subsidy',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703864445208bootcamp.png','','','','24주, 880시간 (약 8시간/일)','Applying','bootcamp',39),('2023-12-29 15:39:34.347944','2023-12-29 15:39:34.347944',140,'앱 스쿨 : Android','앱 기초부터 앱 배포까지 실무에 능한 주니어 앱 개발자로 성장\r\n[전액무료] 오직 테킷에서만 만날 수 있는 FlutterXAndroid 과정으로 앱 개발자로 취업까지!\r\n\r\n','멋쟁이사자처럼(TECHIT)','https://techit.education/','멋쟁이사자처럼(TECHIT)','online',NULL,'government_subsidy',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703864378070bootcamp.png','','','',' 880시간 (약 8시간/일)','Applying','bootcamp',39),('2023-12-29 15:44:24.044766','2023-12-29 15:44:24.044766',141,'AI 스쿨','AI 역량을 발전시키는 실습 중심의 교육과 프로젝트\r\n이론-실습-프로젝트로 이어지는 유기적이고 밀도높은 학습 성장 경험을 통해 데이터사이언티스트로 발돋움할 수 있는 인공지능(AI) 통합과정\r\n\r\n','멋쟁이사자처럼(TECHIT)','https://techit.education/','멋쟁이사자처럼(TECHIT)','online',NULL,'government_subsidy',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703864717282bootcamp.png','','','','24주,800시간 (약 8시간/일)','Applying','bootcamp',39),('2023-12-29 15:44:27.853453','2023-12-29 15:44:27.853453',142,'디자인 스쿨 : UX/UI 실무코스','4개월만에 기업이 원하는 디자이너로! \r\n취업에 날개를 다는 UX/UI 실무코스\r\n[TECHIT X DUOTONE] 사용자를 사로잡는 프로덕트 디자이너가 되기 위한 UX/UI 필수 역량 교육\r\n\r\n\r\n','멋쟁이사자처럼(TECHIT)','https://techit.education/','멋쟁이사자처럼(TECHIT)','online',NULL,'government_subsidy',0,NULL,'',NULL,NULL,'https://aliy.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1703864705406bootcamp.png','','','','19주, 720시간 (약 8시간/일)','Applying','bootcamp',39),('2024-01-28 23:51:32.060443','2024-01-28 23:51:32.060443',143,'마디아의 UX/UI 포트폴리오 심폐소생술 올인원 패키지 Online','죽은 포트폴리오도 살려내는 UX/UI 포트폴리오 심폐소생술 ','마디아','https://fastcampus.co.kr/dgn_online_madia','패스트캠퍼스','online',NULL,'paid',226000,NULL,'',NULL,NULL,'https://aliy-dev.s3.ap-northeast-2.amazonaws.com/upload/profileImage/1706453538887onlinecourse.png','','','','온라인','Applying','online_course',18),('2024-04-20 16:19:58.480418','2024-04-20 16:19:58.480418',144,'야너두일억 로켓그로스 온라인강의','\"로켓그로스 기본 + 결국은 소싱이다\"\r\n\"쇼건 + 이진영\"\r\n단기간 성과를 내고 \r\n안정적인 매출을 내고 있는 \r\n\"로켓그로스 기본+결국은 소싱이다\"','이진영,쇼건','https://showgun.co.kr/class/detail.html?it_id=1710749798','쇼건','both','seoul','paid',1490000,NULL,'',NULL,NULL,'','','','','1개월','Applying','offline_course',36);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceRequest`
--

DROP TABLE IF EXISTS `serviceRequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceRequest` (
  `id` int NOT NULL AUTO_INCREMENT,
  `serviceName` varchar(255) NOT NULL,
  `instructor` varchar(255) DEFAULT NULL,
  `courseLength` varchar(255) DEFAULT NULL,
  `cost` int DEFAULT NULL,
  `content` text,
  `url` varchar(255) DEFAULT NULL,
  `status` enum('PENDING','ACCEPTED') NOT NULL DEFAULT 'PENDING',
  `userId` int NOT NULL,
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `company` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_dae45fbf45b92ecd74fc7941da7` (`userId`),
  CONSTRAINT `FK_dae45fbf45b92ecd74fc7941da7` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceRequest`
--

LOCK TABLES `serviceRequest` WRITE;
/*!40000 ALTER TABLE `serviceRequest` DISABLE KEYS */;
INSERT INTO `serviceRequest` VALUES (1,'모두를 위한 깃 & 깃허브','','',NULL,'','ggege','PENDING',11,'2024-06-04 14:01:39.885895','2024-06-04 14:01:39.885895',NULL),(2,'MBA 면접 뽀개기','김하늘','',NULL,'','www.mba.c.em.e','PENDING',11,'2024-06-04 14:02:09.159009','2024-06-04 14:02:09.159009',NULL);
/*!40000 ALTER TABLE `serviceRequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceTypeCategory`
--

DROP TABLE IF EXISTS `serviceTypeCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceTypeCategory` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `id` varchar(255) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` enum('Activation','Disabled','Pending') NOT NULL DEFAULT 'Activation',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_0dc7f94ae0eb8bf6f2c7f1e473` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceTypeCategory`
--

LOCK TABLES `serviceTypeCategory` WRITE;
/*!40000 ALTER TABLE `serviceTypeCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviceTypeCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceWishlist`
--

DROP TABLE IF EXISTS `serviceWishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviceWishlist` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `serviceId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_406bf0317327dda51164b913644` (`userId`),
  KEY `FK_8bc58d6294ffb7cdd23c0d0b5d5` (`serviceId`),
  CONSTRAINT `FK_406bf0317327dda51164b913644` FOREIGN KEY (`userId`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_8bc58d6294ffb7cdd23c0d0b5d5` FOREIGN KEY (`serviceId`) REFERENCES `service` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceWishlist`
--

LOCK TABLES `serviceWishlist` WRITE;
/*!40000 ALTER TABLE `serviceWishlist` DISABLE KEYS */;
INSERT INTO `serviceWishlist` VALUES ('2023-12-31 07:13:07.770093','2023-12-31 07:13:07.770093',1,16,134),('2024-01-01 13:58:46.038396','2024-01-01 13:58:46.038396',5,8,109),('2024-01-08 11:35:44.719988','2024-01-08 11:35:44.719988',6,8,54),('2024-01-08 11:45:59.604815','2024-01-08 11:45:59.604815',7,8,53),('2024-01-10 14:11:20.966915','2024-01-10 14:11:20.966915',9,9,30);
/*!40000 ALTER TABLE `serviceWishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subCategory`
--

DROP TABLE IF EXISTS `subCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subCategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `status` enum('Activation','Disabled','Pending') NOT NULL DEFAULT 'Activation',
  `mainCategoryId` int NOT NULL,
  `position` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_1b56abff5e19c02491e09e87d07` (`mainCategoryId`),
  CONSTRAINT `FK_1b56abff5e19c02491e09e87d07` FOREIGN KEY (`mainCategoryId`) REFERENCES `mainCategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subCategory`
--

LOCK TABLES `subCategory` WRITE;
/*!40000 ALTER TABLE `subCategory` DISABLE KEYS */;
INSERT INTO `subCategory` VALUES (1,'IT 프로그래밍 개발','Activation',4,0),(2,'신기술 부트캠프','Activation',1,0),(3,'프로그래밍 · AI 부트캠프','Activation',1,0),(4,'비즈니스 부트캠프','Activation',1,0),(5,'크리에이티브 부트캠프','Activation',1,0),(6,'AI','Activation',4,0),(7,'외국어','Activation',3,0),(8,'신기술','Activation',4,0),(9,'학문','Activation',3,0),(10,'온라인 창업 · 부업','Activation',6,0),(11,'지식 · 서비스 창업','Activation',6,0),(12,'주식','Activation',7,0),(13,'오프라인 창업 · 부업','Activation',6,0),(14,'부동산','Activation',7,0),(15,'기술','Activation',2,0),(16,'이직','Activation',5,0),(17,'자격증','Activation',2,0),(18,'재테크 기타','Activation',7,0),(19,'취업','Activation',5,0),(20,'업무 생산성','Activation',5,0),(21,'기획 · PM · PO','Activation',10,0),(22,'기타 비즈니스','Activation',10,0),(23,'경영 · 업무 생산성','Activation',10,0),(24,'디자인','Activation',8,0),(25,'영상 / 3D','Activation',8,0),(26,'예술','Activation',8,0),(27,'마케팅 · 영업','Activation',10,0),(28,'자기계발','Activation',9,0),(29,'취미','Activation',9,0),(30,'라이프','Activation',9,0),(31,'건강 및 휘트니스','Activation',9,0);
/*!40000 ALTER TABLE `subCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unregisterReview`
--

DROP TABLE IF EXISTS `unregisterReview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unregisterReview` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `good` text NOT NULL,
  `bad` text NOT NULL,
  `performance` text NOT NULL,
  `tip` text NOT NULL,
  `starPoint` int NOT NULL,
  `likeCount` int NOT NULL DEFAULT '0',
  `commentCount` int NOT NULL DEFAULT '0',
  `batchNumber` varchar(32) NOT NULL,
  `educationStartDate` varchar(32) NOT NULL,
  `viewCount` int NOT NULL DEFAULT '0',
  `status` enum('PUBLIC','PRIVATE','DELETED') NOT NULL DEFAULT 'PUBLIC',
  `registerStatus` enum('PENDING','REGISTERED','REJECTED') NOT NULL DEFAULT 'PENDING',
  `userId` int NOT NULL,
  `serviceRequestId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `REL_c1f9db4bf4c6ac028b2cad2d21` (`serviceRequestId`),
  KEY `FK_e036030eebedb205823aa90fbbd` (`userId`),
  CONSTRAINT `FK_c1f9db4bf4c6ac028b2cad2d213` FOREIGN KEY (`serviceRequestId`) REFERENCES `serviceRequest` (`id`),
  CONSTRAINT `FK_e036030eebedb205823aa90fbbd` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unregisterReview`
--

LOCK TABLES `unregisterReview` WRITE;
/*!40000 ALTER TABLE `unregisterReview` DISABLE KEYS */;
INSERT INTO `unregisterReview` VALUES ('2024-06-04 14:02:35.323078','2024-06-04 14:02:35.323078',1,'MBA 면접 ','호ㅕㄹ햐ㅓ효해ㅓ해ㅓㅏ하ㅓ하ㅓ휴ㅏㅓ하ㅓ호ㅕㄹ햐ㅓ효해ㅓ해ㅓㅏ하ㅓ하ㅓ휴ㅏㅓ하ㅓ호ㅕㄹ햐ㅓ효해ㅓ해ㅓㅏ하ㅓ하ㅓ휴ㅏㅓ하ㅓ호ㅕㄹ햐ㅓ효해ㅓ해ㅓㅏ하ㅓ하ㅓ휴ㅏㅓ하ㅓ','호ㅕㄹ햐ㅓ효해ㅓ해ㅓㅏ하ㅓ하ㅓ휴ㅏㅓ하ㅓ호ㅕㄹ햐ㅓ효해ㅓ해ㅓㅏ하ㅓ하ㅓ휴ㅏㅓ하ㅓ호ㅕㄹ햐ㅓ효해ㅓ해ㅓㅏ하ㅓ하ㅓ휴ㅏㅓ하ㅓ호ㅕㄹ햐ㅓ효해ㅓ해ㅓㅏ하ㅓ하ㅓ휴ㅏㅓ하ㅓ','호ㅕㄹ햐ㅓ효해ㅓ해ㅓㅏ하ㅓ하ㅓ휴ㅏㅓ하ㅓ호ㅕㄹ햐ㅓ효해ㅓ해ㅓㅏ하ㅓ하ㅓ휴ㅏㅓ하ㅓ호ㅕㄹ햐ㅓ효해ㅓ해ㅓㅏ하ㅓ하ㅓ휴ㅏㅓ하ㅓ호ㅕㄹ햐ㅓ효해ㅓ해ㅓㅏ하ㅓ하ㅓ휴ㅏㅓ하ㅓ','호ㅕㄹ햐ㅓ효해ㅓ해ㅓㅏ하ㅓ하ㅓ휴ㅏㅓ하ㅓ호ㅕㄹ햐ㅓ효해ㅓ해ㅓㅏ하ㅓ하ㅓ휴ㅏㅓ하ㅓ호ㅕㄹ햐ㅓ효해ㅓ해ㅓㅏ하ㅓ하ㅓ휴ㅏㅓ하ㅓ호ㅕㄹ햐ㅓ효해ㅓ해ㅓㅏ하ㅓ하ㅓ휴ㅏㅓ하ㅓ호ㅕㄹ햐ㅓ효해ㅓ해ㅓㅏ하ㅓ하ㅓ휴ㅏㅓ하ㅓ호ㅕㄹ햐ㅓ효해ㅓ해ㅓㅏ하ㅓ하ㅓ휴ㅏㅓ하ㅓ',5,0,0,'','',0,'PUBLIC','PENDING',11,2);
/*!40000 ALTER TABLE `unregisterReview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `id` int NOT NULL AUTO_INCREMENT,
  `nickname` varchar(32) DEFAULT NULL,
  `profileImage` varchar(255) DEFAULT NULL,
  `providerId` varchar(255) DEFAULT NULL,
  `providerType` enum('KAKAO','GOOGLE','NAVER','LOCAL') NOT NULL,
  `belong` varchar(32) DEFAULT NULL,
  `selfIntroduction` text,
  `grade` enum('MEMBER','MANAGER','ADMIN') NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `gender` enum('MALE','FEMALE','UNKNOWN') NOT NULL,
  `birth` varchar(32) DEFAULT NULL,
  `university` varchar(32) DEFAULT NULL,
  `major` varchar(32) DEFAULT NULL,
  `company` varchar(32) DEFAULT NULL,
  `position` varchar(32) DEFAULT NULL,
  `refreshToken` varchar(500) DEFAULT NULL,
  `key` varchar(255) NOT NULL,
  `interests` json DEFAULT NULL,
  `signupYn` tinyint NOT NULL DEFAULT '0',
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_e2364281027b926b879fa2fa1e` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('2023-12-01 13:31:17.783786','2024-06-20 21:58:34.000000',1,'본인인증완료2',NULL,NULL,'LOCAL',NULL,'','ADMIN','장승윤','MALE','1992-09-13','서울대학교','','','','$2b$10$AO9WDUlD36QXV5cfBErCDumdmPl7CfikPmrdVStN.EVoIzQ/SUFg.','8e6bf5a2385c4ab92b674130511fa84f','[\"front-end-development\", \"mobile-app-development\", \"game-development\", \"computer-science-sw-engineering\", \"blockchain\"]',1,'4aad3f8d94c1a82a698e14'),('2023-12-01 13:31:22.121620','2023-12-01 13:31:22.121620',2,NULL,NULL,NULL,'LOCAL',NULL,NULL,'ADMIN',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,''),('2023-12-01 13:31:25.592512','2023-12-01 13:31:25.592512',3,NULL,NULL,NULL,'LOCAL',NULL,NULL,'ADMIN',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,''),('2023-12-01 13:31:28.717222','2023-12-01 13:31:28.717222',4,NULL,NULL,NULL,'LOCAL',NULL,NULL,'ADMIN',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,''),('2023-12-01 13:31:32.003437','2023-12-01 13:31:32.003437',5,NULL,NULL,NULL,'LOCAL',NULL,NULL,'ADMIN',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,''),('2023-12-01 13:31:34.721157','2024-06-22 00:00:21.000000',6,NULL,NULL,NULL,'LOCAL',NULL,NULL,'ADMIN',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,'$2b$10$4Wjo2QVjpEyX/dtY7IKApulUpew/EeEjAv9dsJKrEAkIxTe/dId5K','',NULL,0,''),('2023-12-16 12:02:07.489160','2024-06-10 21:48:33.000000',8,'사춘간볼빨기10','https://aliy.s3.ap-northeast-2.amazonaws.com/UserProfileImages/1704713143223áá¡á¯áá¡á«áá¡á¼áá©áá¡áá¡17_(2).jpeg','3055631102','KAKAO',NULL,'','MEMBER','한세준','MALE','1995-12-02','제주대학교','감귤공학과','우리집','설거지','$2b$10$TeZzNFXqxsRvT2kKVSln9uJIchaGZ.hIZYvlCRFCuy3oZJv5T1fYa','95f396d0d8760630857df8fa37599e7c','[\"web-development-bootcamp\", \"data-ai-bootcamp\", \"mobile-bootcamp\"]',1,'22cfa36f062cbe74094403'),('2023-12-17 09:14:15.636704','2024-01-10 13:11:17.000000',9,'현지','http://k.kakaocdn.net/dn/d2rkKY/btsxtoOEPfI/BZKKK0KLc3DECTv2gmweFk/img_640x640.jpg','3228216899','KAKAO',NULL,NULL,'MEMBER','정현지','FEMALE','1989-01-26','','','','','$2b$10$HJbTaiV8u8gq/4563JoQxeWDDqoKk3u.uwdkTs0DCYQSKY.wwKgVq','86f8fe7bdb741c3703a2f3c319d10ec4','[\"startup\", \"self-employment\", \"product-management\", \"product-owner\", \"lifestyle\"]',1,'71f46f2f2b4a7edc3c1bcf'),('2023-12-17 18:12:18.645216','2024-01-13 14:49:04.000000',10,'감튀','https://aliy.s3.ap-northeast-2.amazonaws.com/UserProfileImages/1705119734200áá©á· ááµááµááµ.jpeg','112666034466721825375','GOOGLE',NULL,'','MEMBER','김정현','MALE','1993-10-05','','','','','$2b$10$JjH.Vlhfrq4XTGC56dbJyupEaj62qhrhNTdXWDadWPZmk0p0oUCim','f779a4e46348c2287fc8a3aaee59b8a2','[\"english\"]',1,'eb5555cded6ec8a7e27507'),('2023-12-18 03:24:46.314507','2024-06-04 14:01:20.000000',11,'현지808','https://lh3.googleusercontent.com/a/ACg8ocKR4ELYWBWo3-kXgHlKJ1dOEFcO1jdYRyQXRACYbEcZrw=s96-c','110813274560174301589','GOOGLE',NULL,NULL,'MEMBER','정현지','FEMALE','1989-01-26','','','','','$2b$10$llalRN4ejL7FuhQVC5IlcOokDsZz9U19MahuD7e7iX6XQhnB97d2K','dd6ea4a98c0c5fd2d6fd7020f2abe585','[\"data-science\", \"startup\", \"online-seller\", \"blog-monetization\", \"creator-influencer\"]',1,'2370c9a5b563480fc86934'),('2023-12-18 09:03:03.160461','2023-12-19 12:39:53.000000',12,NULL,'http://k.kakaocdn.net/dn/1G9kp/btsAot8liOn/8CWudi3uy07rvFNUkk3ER0/img_640x640.jpg','3229749477','KAKAO',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,''),('2023-12-19 03:30:58.374315','2023-12-19 03:32:26.000000',13,'구글로그인설정완료','https://lh3.googleusercontent.com/a/ACg8ocKhwuKOEOSlRTRYwg5w_4tycQ8JU3f9drDJRTlwXE0yew=s96-c','110719339188346524494','GOOGLE',NULL,NULL,'MEMBER','장승윤','MALE','1992-09-13','','','','',NULL,'1dbd75bc9d65366a11c6b6b5401d15d9','[\"startup-bootcamp\", \"pm-planning-bootcamp\", \"marketing-bootcamp\", \"data-ai-bootcamp\", \"game-development-bootcamp\"]',1,'e0566cb9f01c3961c794bb'),('2023-12-19 03:42:21.039331','2023-12-19 03:49:08.000000',14,'완료에요','https://lh3.googleusercontent.com/a/ACg8ocItGepo0A39OFldliMAgMCIcVXqSlWXXAPld8AAhsXK=s96-c','117416098526558421902','GOOGLE',NULL,NULL,'MEMBER','장승윤','MALE','1992-09-13','','','','',NULL,'885ccda14d371f240b6640fd7adac8aa','[\"auction\", \"overseas-real-estate\", \"domestic-stock-long-term-investment\", \"domestic-stock-trading\", \"derivative-products\"]',1,'5015a1334b6d183b14bb82'),('2023-12-19 06:30:34.624032','2023-12-21 08:24:19.000000',15,'디스커버리','https://lh3.googleusercontent.com/a/ACg8ocL_3RwEh2sNdVxpOpR24pxjkuCBCRyX0A8dKxX4hazi=s96-c','110160391573866498566','GOOGLE',NULL,NULL,'MEMBER','정현지','FEMALE','1989-01-26','','','','','$2b$10$buHGSjFzTjLWu5H3JB40z.nzpzv922rWkZJL.QQOvvpfOVecrQ8/y','c5c145fb0a6dc069a0c381a800f74348','[\"startup\", \"blog-monetization\", \"creator-influencer\", \"online-seller\", \"personal-branding\"]',1,'bc3cecb771cd161dc99bcb'),('2023-12-19 06:39:14.041070','2023-12-31 07:13:00.000000',16,'트레이더윤','https://lh3.googleusercontent.com/a/ACg8ocJ_Bs9na_U12zmYHtG4eJQxF5hlTh0mmtcH3TyxoRWz=s96-c','115088951359343175686','GOOGLE',NULL,NULL,'MEMBER','장승윤','MALE','1992-09-13','','','','','$2b$10$SGnzC.rJ4sfdbdJB/lmPyeNeC/HV.iALODgwBWT6hreWhvSc6zbj.','bbd530e2ce341f715cca5dbffb8db8f4','[\"domestic-stock-trading\", \"domestic-stock-long-term-investment\", \"derivative-products\", \"cryptocurrency-investment\", \"foreign-stock\"]',1,'5164fe41eba6c70d124d24'),('2023-12-20 17:22:49.884383','2023-12-20 17:23:26.000000',17,'김미미','https://lh3.googleusercontent.com/a/ACg8ocLuThEGXa0lSvIZkdNT__0qYDLb3edGC8teLLzJa-JXwK0=s96-c','115443887296310891918','GOOGLE',NULL,NULL,'MEMBER','한세준','MALE','1995-12-02','','','','','$2b$10$fXlPYS1umnTgVsYZnRGIgeJM6DICEVxbqwaNUKCs7uWVDhFZ4Rrl2','','[\"interview\", \"exam\"]',1,'01040563271'),('2023-12-21 04:44:50.160464','2023-12-21 04:45:52.000000',18,'이루다주식','https://lh3.googleusercontent.com/a/ACg8ocIs_QAOBwJPPhKcFmpNVnORcf2weXLAWEBGFj-KB4lLHA=s96-c','113348808600125418193','GOOGLE',NULL,NULL,'MEMBER','장승윤','MALE','1992-09-13','','','','','$2b$10$FRDhq9AgDUq11xZazHo4jOppavxj/PIudT/eygf485GIG5ot9qf3O','','[\"domestic-stock-trading\", \"domestic-stock-long-term-investment\", \"foreign-stock\", \"income-real-estate\"]',1,'01072721789'),('2023-12-21 06:54:24.826014','2023-12-21 06:56:33.000000',19,'매일매일꾸준하게','https://lh3.googleusercontent.com/a/ACg8ocKbsioBpp-7k8h6eJYq6GHkjTY8sYZxHabrpf2BxtW6=s96-c','109730228808156163105','GOOGLE',NULL,NULL,'MEMBER','장승윤','MALE','1992-09-13','','','','','$2b$10$6hmxvaUORq/UOCqDPp4KRenAxKbEmSa3vJrXIHi4iX5sYw7bT4obO','','[\"domestic-stock-trading\", \"domestic-stock-long-term-investment\", \"foreign-stock\", \"derivative-products\", \"unlisted-stock\"]',1,'01072721789'),('2023-12-21 07:11:52.189199','2023-12-21 07:13:02.000000',20,'aiaiai','https://lh3.googleusercontent.com/a/ACg8ocLU9jyZoYWxWnKSUTwTVoyesDEciSlNeM63iEIDIwik=s96-c','105877813023948540414','GOOGLE',NULL,NULL,'MEMBER','정현지','FEMALE','1989-01-26','','','','','$2b$10$Zcr4cHXHUgmRbBBYLZOekeqfj3Hw4t53iHoqIxSsMrvqjVjc/FCwS','','[\"web-development-bootcamp\", \"mobile-bootcamp\", \"data-ai-bootcamp\", \"front-end-development\", \"back-end-development\", \"mobile-app-development\", \"artificial-intelligence-ai\", \"machine-learning\", \"data-engineer\", \"data-science\", \"interview\", \"job-change\", \"job-transition\", \"success-mindset\"]',1,'01075273221'),('2023-12-21 18:12:31.747397','2023-12-21 18:12:31.747397',21,NULL,NULL,NULL,'LOCAL',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,''),('2023-12-21 18:13:31.102198','2023-12-21 18:13:31.102198',22,NULL,NULL,NULL,'LOCAL',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,''),('2023-12-21 18:20:18.861811','2023-12-21 18:20:18.861811',23,'완료',NULL,NULL,'LOCAL',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,''),('2023-12-22 02:22:11.093072','2023-12-23 06:23:46.000000',24,'아필굿',NULL,NULL,'LOCAL',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,''),('2023-12-22 02:23:09.792713','2023-12-26 03:39:30.000000',25,'부자아빠','https://aliy.s3.ap-northeast-2.amazonaws.com/UserProfileImages/1703552497289sj88Y9x0S0uU1RPtkuxU_ê·¸ë¦¼5_ìì .png',NULL,'LOCAL',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,''),('2023-12-22 02:24:01.318686','2023-12-26 09:50:27.000000',26,'비포선셋',NULL,NULL,'LOCAL',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,'$2b$10$sG2ZAEESwUNIkTJCWbuXROFqf3Nv9OdKeR.TIvw3obOS4gB9yJ.eC','',NULL,0,''),('2023-12-22 02:30:16.356297','2023-12-22 02:30:16.356297',27,'스마트불',NULL,NULL,'LOCAL',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,''),('2023-12-22 03:14:52.003007','2023-12-22 03:15:30.000000',28,'aliy828!',NULL,NULL,'LOCAL',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,''),('2023-12-22 03:19:05.768634','2023-12-22 03:19:48.000000',29,'해피센스',NULL,NULL,'LOCAL',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,''),('2023-12-22 03:21:28.777288','2023-12-22 03:21:28.777288',30,'삼성동큰손',NULL,NULL,'LOCAL',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,''),('2023-12-22 03:23:19.363782','2023-12-22 03:23:19.363782',31,'주식이루다',NULL,NULL,'LOCAL',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,''),('2023-12-22 03:24:34.442813','2023-12-22 03:24:34.442813',32,'매일3프로',NULL,NULL,'LOCAL',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,''),('2023-12-22 03:25:47.397844','2023-12-22 03:25:47.397844',33,'트레이더윤윤',NULL,NULL,'LOCAL',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,''),('2023-12-22 03:27:06.040714','2023-12-22 03:27:06.040714',34,'쌓여가는기쁨',NULL,NULL,'LOCAL',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,''),('2023-12-22 04:08:59.250087','2023-12-22 04:08:59.250087',35,'5프로매도',NULL,NULL,'LOCAL',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,''),('2023-12-22 04:10:28.649636','2023-12-22 04:10:28.649636',36,'라이프',NULL,NULL,'LOCAL',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,''),('2023-12-22 08:29:32.405462','2023-12-22 08:29:32.405462',37,'삼성동불개미',NULL,NULL,'LOCAL',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,''),('2023-12-22 08:31:37.284754','2023-12-22 08:31:37.284754',38,'풍요마스터',NULL,NULL,'LOCAL',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0,''),('2023-12-26 07:45:41.150638','2024-07-20 18:07:49.000000',39,'정우치','http://k.kakaocdn.net/dn/beh9UN/btrQz7AtGxZ/tEJF5fSyMqZ4nELLRtJKWK/img_640x640.jpg','3055915203','KAKAO',NULL,'','MEMBER','김정현','MALE','1993-10-05','','','','','$2b$10$tfvtZ38Z3XFJ9sOkoNImQ.2645Ol3OfTJviDPnscmWAQ1LYO..nlO','','[\"front-end-development\", \"data-science\"]',1,'01050920996'),('2023-12-27 03:18:27.252448','2023-12-27 03:18:27.000000',40,NULL,'https://ssl.pstatic.net/static/pwe/address/img_profile.png','CJkRU8srD2puq-kWK9QYtbkw-5WGyh-N4pTpwDLFgTA','NAVER',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,'$2b$10$eiWDDGJoXZvlwHlDW4sXlOipG0d1DWQYxduXSZpGCp.nwmZd1YVSu','',NULL,0,''),('2023-12-28 11:27:27.488493','2023-12-28 11:27:33.000000',41,'i의인생',NULL,NULL,'LOCAL',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,'$2b$10$jIsTjvno9gj8yjgeXqPsPOpOTm77V.MRZQLBf7zGWSiTzwr7oueDi','',NULL,0,''),('2024-01-10 13:43:44.627991','2024-01-10 13:45:13.000000',42,NULL,'','SY2gPnWwQJzLuomZH5Cp4BLfVAi_DBJGz-1V2ZEp3xw','NAVER',NULL,NULL,'MEMBER','정현지','FEMALE','1989-01-26',NULL,NULL,NULL,NULL,'$2b$10$Bg9VXa7j3hhK8c1gCs7hHeQxxls9BZwC8N38U.duKEGwDaDCJQcKy','','[\"online-business-korea\", \"online-business-global\", \"startup\", \"strategic-planning\", \"product-management\", \"finance-vc\", \"management\", \"job-guide\", \"english\", \"chinese\", \"japanese\"]',0,'01075273221'),('2024-01-11 18:58:11.224568','2024-01-11 18:59:05.000000',43,'몽자','','3281338312','KAKAO',NULL,NULL,'MEMBER','김서경','FEMALE','1990-07-30','고려대학교','국제학부','헤엄스튜디오','프로덕트 디자이너','$2b$10$FDkU0IkAanxlb7cTS.eQgOD.Rb0aySAD1wGo9QSR./peiA/yGTrY6','','[\"mobile-bootcamp\"]',1,'01092842464'),('2024-01-13 11:30:24.471032','2024-01-13 11:33:25.000000',44,'haru','','3283985422','KAKAO',NULL,NULL,'MEMBER','유재욱','MALE','1985-08-13','한양대학교','건축','롯데건설','기술연구원','$2b$10$HA8mimgnmfpcXCtJ9B4rjeEllBj0kzUSUpqL6zqsBhlERJW5myH6q','','[\"web-development\", \"front-end-development\", \"back-end-development\", \"mobile-app-development\", \"devops-infra\", \"security-network\", \"game-development\", \"computer-science-sw-engineering\", \"artificial-intelligence-ai\", \"blog-monetization\", \"math\"]',1,'01039039050'),('2024-01-29 01:38:05.845144','2024-05-05 01:36:45.000000',45,'또소미','','vGRxPLNtmQ0nkAEaiJc3x1a0HTfYs8K-FmXfbZYZ2CY','NAVER',NULL,NULL,'MEMBER','박한솜','FEMALE','1994-01-01','','','','',NULL,'','[77, 57, 63]',1,'01089171184'),('2024-04-20 16:08:53.050962','2024-06-04 13:57:16.000000',46,'유니콘기업가','','115709720092011177999','GOOGLE',NULL,'','MEMBER','장승윤','MALE','1992-09-13','','','','','$2b$10$M0uxHyNqUxyxYxklbM8pSu5tPt1DbKH4fTisejWFCeMcGhVJaKcX2','','[36, 67, 64]',1,'01072721789'),('2024-04-26 13:00:15.503742','2024-04-26 13:00:15.000000',47,NULL,'','106508166429381923135','GOOGLE',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,'$2b$10$LTofQ3DZG4y2HYRf6fi8Xet33foUra2oVtDqCUIDmDpL6MbIWuXZy','',NULL,0,''),('2024-05-05 01:36:59.667226','2024-05-05 01:36:59.000000',48,NULL,'','109636831010565753833','GOOGLE',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,'$2b$10$a/JnK6LzrwLrQWTL4LhSx.GBJeCr3of/A4XFYBreBFgJc1HpBWJNK','',NULL,0,''),('2024-06-06 18:14:17.195211','2024-06-06 18:14:17.000000',49,NULL,'','107821158089747161543','GOOGLE',NULL,NULL,'MEMBER',NULL,'UNKNOWN',NULL,NULL,NULL,NULL,NULL,'$2b$10$E.RLkaHz0vn/F2xG53AvlOR5bCwtHauefNje0LTnuSH8fcuqVi3Li','',NULL,0,'');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-20 19:15:24
