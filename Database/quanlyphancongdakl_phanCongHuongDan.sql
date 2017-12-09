-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: quanlyphancongdakl
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `phanCongHuongDan`
--

DROP TABLE IF EXISTS `phanCongHuongDan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phanCongHuongDan` (
  `maLop` varchar(45) NOT NULL,
  `maLoaiHinh` varchar(8) NOT NULL,
  `hocKy` int(11) NOT NULL,
  `maHocPhan` varchar(10) NOT NULL,
  `maGiangVien` varchar(15) NOT NULL,
  `batDau` date NOT NULL,
  `ketThuc` date NOT NULL,
  PRIMARY KEY (`maLop`),
  KEY `malh_idx` (`maLoaiHinh`),
  KEY `mahp_idx` (`maHocPhan`),
  KEY `maGiangVien_idx` (`maGiangVien`),
  CONSTRAINT `maGiangVien` FOREIGN KEY (`maGiangVien`) REFERENCES `giangVien` (`maGiangVien`) ON UPDATE CASCADE,
  CONSTRAINT `maHocPhan` FOREIGN KEY (`maHocPhan`) REFERENCES `hocphan` (`maHocPhan`) ON UPDATE CASCADE,
  CONSTRAINT `maLoaiHinh` FOREIGN KEY (`maLoaiHinh`) REFERENCES `loaihinh` (`maLoaiHinh`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phanCongHuongDan`
--

LOCK TABLES `phanCongHuongDan` WRITE;
/*!40000 ALTER TABLE `phanCongHuongDan` DISABLE KEYS */;
INSERT INTO `phanCongHuongDan` VALUES ('660001','CTTT',20171,'IT3910','GV0001','2017-06-06','2017-12-12'),('660002','KSTN',20171,'IT3930','GV0007','2017-06-06','2017-12-12'),('660003','DHCQ',20171,'IT3910','GV0003','2017-06-06','2017-12-12'),('660004','CTTT',20162,'IT3910','GV0004','2017-01-01','2017-05-05'),('660005','DHCQ',20162,'IT3910','GV0001','2017-01-01','2017-05-05'),('660006','VB2',20152,'IT3930','GV0005','2015-01-24','2017-05-26'),('660007','SIE',20161,'IT3930','GV0004','2015-06-06','2015-12-12'),('660008','CĐ',20151,'IT3940','GV0002','2014-05-05','2014-12-12');
/*!40000 ALTER TABLE `phanCongHuongDan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-09 10:28:30
