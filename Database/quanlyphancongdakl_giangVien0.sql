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
-- Table structure for table `giangVien`
--

DROP TABLE IF EXISTS `giangVien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giangVien` (
  `maGiangVien` varchar(15) NOT NULL,
  `hoVaTenDem` varchar(45) NOT NULL,
  `ten` varchar(45) NOT NULL,
  `gioiTinh` varchar(4) NOT NULL,
  `hocHam` varchar(50) DEFAULT NULL,
  `hocVi` varchar(50) NOT NULL,
  `ngaySinh` date NOT NULL,
  `chucVu` varchar(50) NOT NULL,
  `dienThoai` varchar(17) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diaChi` varchar(100) NOT NULL,
  `boMon` varchar(255) NOT NULL,
  PRIMARY KEY (`maGiangVien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giangVien`
--

LOCK TABLES `giangVien` WRITE;
/*!40000 ALTER TABLE `giangVien` DISABLE KEYS */;
INSERT INTO `giangVien` VALUES ('GV0001','Lê Thị','Hoa','Nữ','Chưa có','Tiến sỹ','1980-03-04','Cán bộ phục vụ giảng dạy','01222333445','hoalt@soict.hust.edu.vn','Đống Đa','Công nghệ phần mềm'),('GV0002','Vũ Đức','Vượng','Nam','Chưa có','Tiến sỹ','1975-02-02','Giảng viên','0901233453','vuongvd@soict.hust.edu.vn','Ba Đình','Công nghệ phần mềm'),('GV0003','Nguyễn Nhật','Quang','Nam','Chưa có','Tiến sỹ','1980-07-07','Giảng viên','38696124','quangnn@soict.hust.edu.vn','Thanh Xuân','Hệ thống thông tin'),('GV0004','Đinh Viết','Sang','Nam','Chưa có','Tiến sỹ','1981-04-04','Giảng viên','0978182761','sangdv@soict.hust.edu.vn','Hai Bà Trưng','Khoa học máy tính'),('GV0005','Huỳnh Quyết','Thắng','Nam','Phó giáo sư','Tiến sỹ','1975-09-09','Phó hiệu trưởng','01231786587','thanghq@soict.hust.edu.vn','Đống Đa','Công nghệ phần mềm'),('GV0006','Chu Nam','Anh','Nam','Giáo sư','Tiến sỹ','1996-03-21','Giảng viên','01231238761','anhcn@soict.hust.edu.vn','Đống Đa','Khoa học máy tính'),('GV0007','Hương','Tràm','Nu','Giáo sư','Tiến sỹ','1996-03-21','Giảng viên','01231238761','anhcn@soict.hust.edu.vn','??ng ?a','Khoa học máy tính'),('GV0008','Donald','Trump','nam','Giáo sư','Tiến sỹ','2017-12-01','Giảng viên','aaaaaa','anhcn@soict.hust.edu.vn','Đống Đa','Khoa học máy tính'),('GV0009','John','Cena','Nam','Giáo sư','Tiến sỹ','1996-03-21','Giảng viên','01231238761','anhcn@soict.hust.edu.vn','Đống Đa','Hệ thống thông tin'),('GV0010','Vũ Thị Hương','Giang','Nữ','Chưa có','Tiến sỹ','1982-05-23','Phó bộ môn','01241817281','giangvth@soict.hust.edu.vn','Hà Tây','Công nghệ phần mềm'),('GV0011','Chi ','Dan','Nam','Giáo sư','Tiến sỹ','1996-03-21','Giảng viên','01231238761','anhcn@soict.hust.edu.vn','Đống Đa','Khoa học máy tính'),('GV0012','John','Cena','Nam','Giáo sư','Tiến sỹ','1996-03-21','Giảng viên','01231238761','anhcn@soict.hust.edu.vn','Đống Đa','Hệ thống thông tin'),('GV0013','Donald','Trump','Nam','Giáo sư','Tiến sỹ','1996-03-21','Giảng viên','01231238761','anhcn@soict.hust.edu.vn','Đống Đa','Khoa h?c máy tính');
/*!40000 ALTER TABLE `giangVien` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-19  0:36:12
