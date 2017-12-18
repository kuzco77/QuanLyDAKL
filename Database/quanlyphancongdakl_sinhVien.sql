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
-- Table structure for table `sinhVien`
--

DROP TABLE IF EXISTS `sinhVien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sinhVien` (
  `mssv` int(11) NOT NULL,
  `hoTen` varchar(45) NOT NULL,
  `ngaySinh` date NOT NULL,
  `gioiTInh` varchar(15) NOT NULL,
  `lop` varchar(255) NOT NULL DEFAULT 'Lop theo nganh vd cntt2.4',
  `khoa` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dienThoai` varchar(25) NOT NULL,
  `queQuan` varchar(255) NOT NULL,
  PRIMARY KEY (`mssv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sinhVien`
--

LOCK TABLES `sinhVien` WRITE;
/*!40000 ALTER TABLE `sinhVien` DISABLE KEYS */;
INSERT INTO `sinhVien` VALUES (20140001,'Lê Minh Hiếu','1996-04-21','Nam','CNTT2.3','K59','s','4234','Quảng Bình'),(20140002,'Nguyễn Du','1997-05-23','Nữ','CNTT2.1','K59','fffff','65432','Quảng Bình'),(20140003,'Nguyễn Ngân Hạnh','1996-11-11','Nữ','CNTT1.2','K59','x','52342','Hưng Yên'),(20140004,'20140004','1996-12-12','Nam','CNTT1.1','K59','p','63422','Cà Mau'),(20140005,'Nguyễn Đức Nguyên','1996-06-03','Nam','CNTT2.1','K59','q','98734','Mũi Né'),(20140006,'Trần Quang Khải','1996-07-07','Nam ','CNTT2.1','K59','w','4235','Phú Thọ'),(20140007,'Chu V?n An','1996-07-25','Nam','CNTT2.4','K59','sfd','7535345','V?nh Phúc'),(20140008,'Nguy?n V?n ?i?p','1996-06-06','Nam','CNTT2.4','K59','a','234234','H? Chí Minh'),(20140009,'Hoàng Kh?c Hi?u','1996-02-18','N?','CNTT1.2','K59','hfg','234235','Hà Tây'),(20140011,'Lê Chí Nguy?n','1996-04-24','Nam','CNTT2.4','K59','ggss','6543','Long An'),(20140035,'20140035','1996-03-21','','KT22.02','K59','','092','Hà N?i'),(20141036,'Nguyễn Văn Điệp','1996-06-06','Nam','CNTT2.4','K59','a','234234','Hồ Chí Minh'),(20142352,'Nguyễn Văn Nguyện','1996-12-18','Nam','CNTT2.4','K59','as','235235','Thanh Hoá'),(20143215,'Nguyễn Quang Duy','1996-08-08','Nam','CNTT2.3','K59','asdf','98765432','Nghệ An'),(20144442,'Hoàng Khắc Hiếu','1996-02-18','Nữ','CNTT1.2','K59','hfg','234235','Hà Tây'),(20146456,'Nguyễn Văn Giang','1996-06-11','Nam','CNTT1.1','K59','hfdgd','54123','Bắc Ninh'),(20148473,'Trần Hạnh Thảo','1996-04-27','Nữ','CNTT2.4','K59','sdfgsd','2342532','Hà Tĩnh'),(20150001,'Cao Minh Thao','1997-03-21','Nam','KT22.01','K60','f','234','Hà N?i'),(20150002,'Phạm Hoàn','1990-12-12','Nam','KT22.01','K60','a','091','Hà Nội'),(20150221,'Lê Minh Hi?u','1996-04-21','Nam','CNTT2.3','59','s555','4234','Qu?ng Bình'),(20150222,'Lê Minh Hi?u','1996-04-21','Nam','CNTT2.3','59','s555','4234','Qu?ng Bình'),(20150224,'Lê Minh Hi?u','1996-04-21','Nam','CNTT2.3','59','s555','fffffff','Qu?ng Bình'),(20153345,'Bùi Trung Hiếu','1997-05-23','Nam','KT22.01','K60','s','123123','Đà Nẵng'),(20154432,'Cao Minh Thao','1997-03-21','Nam','KT22.01','K60','f','234','Hà Nội');
/*!40000 ALTER TABLE `sinhVien` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-14 20:21:22
