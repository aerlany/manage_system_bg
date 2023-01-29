-- MySQL dump 10.13  Distrib 5.7.41, for Win32 (AMD64)
--
-- Host: localhost    Database: Manage_system
-- ------------------------------------------------------
-- Server version	5.7.41-log

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
-- Table structure for table `course_basic_information`
--

DROP TABLE IF EXISTS `course_basic_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_basic_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(30) NOT NULL,
  `classroom_teacher` varchar(10) NOT NULL,
  `theoretical_hours` int(3) NOT NULL,
  `lab_hours` int(3) NOT NULL,
  `class_name` varchar(30) NOT NULL,
  `term` varchar(20) NOT NULL,
  `students_num` int(3) NOT NULL,
  `course_nature` varchar(30) NOT NULL,
  `course_type` varchar(30) NOT NULL,
  `course_target_num` int(3) NOT NULL,
  `indicator_points_num` int(3) NOT NULL,
  `indicator_points` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_basic_information`
--

LOCK TABLES `course_basic_information` WRITE;
/*!40000 ALTER TABLE `course_basic_information` DISABLE KEYS */;
INSERT INTO `course_basic_information` VALUES (1,'楂樻暟','闃宠€佸笀',16,4,'璁＄畻鏈虹瀛︿笌鎶€鏈?020','2022-2023.1',80,'蹇呬慨','涓撲笟蹇呬慨璇?,5,2,'鎸囨爣1,鎸囨爣2'),(2,'绾挎€т唬鏁?,'鐜嬭€佸笀',16,4,'璁＄畻鏈虹瀛︿笌鎶€鏈?020','2022-2023.1',80,'蹇呬慨','涓撲笟蹇呬慨璇?,5,3,'鎸囨爣1,鎸囨爣2,鎸囨爣3'),(4,'姒傜巼璁?,'闃宠€佸笀1222',16123,41231,'璁＄畻鏈虹瀛︿笌鎶€鏈?022','2022-2023.1',80111,'shanghai','涓撲笟蹇呬慨璇?,5,2,'鎸囨爣1,鎸囨爣2'),(5,'楂樻暟','闃宠€佸笀',16,4,'璁＄畻鏈虹瀛︿笌鎶€鏈?020','2022-2023.1',80,'shanghai','涓撲笟蹇呬慨璇?,5,2,'鎸囨爣1,鎸囨爣2'),(6,'c璇█绋嬪簭璁捐','闃宠€佸笀',16,4,'璁＄畻鏈虹瀛︿笌鎶€鏈?020','2022-2023.1',80,'蹇呬慨','涓撲笟蹇呬慨璇?,5,2,'鎸囨爣1,鎸囨爣2');
/*!40000 ALTER TABLE `course_basic_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_examine_child_methods`
--

DROP TABLE IF EXISTS `course_examine_child_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_examine_child_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_examine_methods_id` int(11) NOT NULL,
  `examine_child_item` varchar(30) NOT NULL,
  `percentage` int(3) NOT NULL,
  `course_target` varchar(30) NOT NULL,
  `indicator_points` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_examine_child_methods`
--

LOCK TABLES `course_examine_child_methods` WRITE;
/*!40000 ALTER TABLE `course_examine_child_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_examine_child_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_examine_methods`
--

DROP TABLE IF EXISTS `course_examine_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_examine_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `examine_item` varchar(30) NOT NULL,
  `percentage` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_examine_methods`
--

LOCK TABLES `course_examine_methods` WRITE;
/*!40000 ALTER TABLE `course_examine_methods` DISABLE KEYS */;
INSERT INTO `course_examine_methods` VALUES (1,1,'楂樻暟','鑰冭瘯',70);
/*!40000 ALTER TABLE `course_examine_methods` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-29 12:46:41
