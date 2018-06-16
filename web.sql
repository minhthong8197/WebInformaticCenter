CREATE DATABASE  IF NOT EXISTS `web` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `web`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: web
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `hocvien`
--

DROP TABLE IF EXISTS `hocvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hocvien` (
  `HoTen` varchar(20) NOT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `SoDienThoai` varchar(20) DEFAULT NULL,
  `DoiTuong` varchar(20) DEFAULT NULL,
  `GhiChu` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`HoTen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hocvien`
--

LOCK TABLES `hocvien` WRITE;
/*!40000 ALTER TABLE `hocvien` DISABLE KEYS */;
INSERT INTO `hocvien` VALUES ('nmt','minh@gmail.com','123','sv','<b>Hello</b>'),('Phieu','123@gmail.com','058113','VIP',''),('Thong','123@gmail.com','058113','VIP',''),('Viet','123@gmail.com','058113','VIP','<a>Goodbye</a>'),('Vinh','123@gmail.com','058113','VIP','');
/*!40000 ALTER TABLE `hocvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lichkhaigiang`
--

DROP TABLE IF EXISTS `lichkhaigiang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lichkhaigiang` (
  `MaLopHoc` varchar(20) NOT NULL,
  `ThoiGian` varchar(20) DEFAULT NULL,
  `NgayKhaiGiang` date DEFAULT NULL,
  `DiaDiemHoc` varchar(20) DEFAULT NULL,
  `TenMon` varchar(20) DEFAULT NULL,
  `HocPhi` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`MaLopHoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lichkhaigiang`
--

LOCK TABLES `lichkhaigiang` WRITE;
/*!40000 ALTER TABLE `lichkhaigiang` DISABLE KEYS */;
INSERT INTO `lichkhaigiang` VALUES ('Lop1','3 tháng','2018-01-01','<b>SPKT</b>','Thiết kế Website','50 Triệu'),('Lop2','4 tháng','2018-01-01','SPKT','Thiết kế Website','50 Triệu'),('Lop3','3 tháng','2018-01-01','SPKT','Thiết kế OOP','50 Triệu'),('Lop4','3 tháng','2018-01-01','SPKT','Thiết kế Đồ họa','50 Triệu'),('Lop5','5 tháng','2018-01-01','SPKT','Thiết kế Website','50 Triệu'),('Lop6','5 tháng','2018-01-01','SPKT','Mạng máy tính','50 Triệu');
/*!40000 ALTER TABLE `lichkhaigiang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `name` varchar(20) DEFAULT NULL,
  `sign` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('Minh Thong','Minh Thong/\'s'),('Minh Thong','Minh Thong\'s'),('123','<b>Hello</b>');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-22 19:16:44
