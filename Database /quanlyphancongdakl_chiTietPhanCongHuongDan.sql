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
-- Table structure for table `chiTietPhanCongHuongDan`
--

DROP TABLE IF EXISTS `chiTietPhanCongHuongDan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chiTietPhanCongHuongDan` (
  `mssv` int(11) NOT NULL,
  `maLop` varchar(45) NOT NULL,
  `diemQuaTrinh` float NOT NULL,
  `diemThi` float NOT NULL,
  `tenBaoCao` varchar(255) NOT NULL,
  `ngayNopBaoCao` date NOT NULL,
  PRIMARY KEY (`mssv`,`maLop`),
  KEY `fk_ctpchd_pchd1_idx` (`maLop`),
  CONSTRAINT `maLop` FOREIGN KEY (`maLop`) REFERENCES `phanCongHuongDan` (`maLop`) ON UPDATE CASCADE,
  CONSTRAINT `mssv` FOREIGN KEY (`mssv`) REFERENCES `sinhVien` (`mssv`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chiTietPhanCongHuongDan`
--

LOCK TABLES `chiTietPhanCongHuongDan` WRITE;
/*!40000 ALTER TABLE `chiTietPhanCongHuongDan` DISABLE KEYS */;
INSERT INTO `chiTietPhanCongHuongDan` VALUES (20140001,'660005',9,9,'UI','2017-12-12'),(20140001,'660009',7,4,'TR','2017-12-24'),(20140002,'660001',5,6,'Data Mining','2017-12-12'),(20140003,'660002',5,10,'Data Mining','2017-12-12'),(20140004,'660001',6,10,'UX','2017-12-12'),(20140004,'660002',9,5,'Data Mining','2017-12-07'),(20140006,'660001',7,10,'Data Mining','2017-12-12'),(20140006,'660002',5,10,'Data Mining','2017-12-12'),(20140035,'660001',7,10,'AI','2017-12-12'),(20140035,'660002',10,5,'Data Mining','2017-12-07'),(20140035,'660004',10,5,'Data Mining','2017-12-07'),(20140035,'660005',10,5,'Data Mining','2017-12-07'),(20140035,'660006',10,5,'Data Mining','2017-12-07'),(20141036,'660001',6,7,'TR','2017-03-04'),(20141036,'660002',8.3,8.2,'NM','2017-08-13'),(20141036,'660003',4,10,'DG','2017-05-04');
/*!40000 ALTER TABLE `chiTietPhanCongHuongDan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-19  0:35:26
