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
-- Temporary view structure for view `tkgiangvientheochucvu`
--

DROP TABLE IF EXISTS `tkgiangvientheochucvu`;
/*!50001 DROP VIEW IF EXISTS `tkgiangvientheochucvu`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tkgiangvientheochucvu` AS SELECT 
 1 AS `Chức vụ`,
 1 AS `Số lượng`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tkphancongtheogio`
--

DROP TABLE IF EXISTS `tkphancongtheogio`;
/*!50001 DROP VIEW IF EXISTS `tkphancongtheogio`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tkphancongtheogio` AS SELECT 
 1 AS `Tên giảng viên`,
 1 AS `Số giờ`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tkgiangvientheohocham`
--

DROP TABLE IF EXISTS `tkgiangvientheohocham`;
/*!50001 DROP VIEW IF EXISTS `tkgiangvientheohocham`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tkgiangvientheohocham` AS SELECT 
 1 AS `Học hàm`,
 1 AS `Số lượng`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tkgiangvientheobomon`
--

DROP TABLE IF EXISTS `tkgiangvientheobomon`;
/*!50001 DROP VIEW IF EXISTS `tkgiangvientheobomon`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tkgiangvientheobomon` AS SELECT 
 1 AS `Bộ môn`,
 1 AS `Số lượng`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewthongkehuongdan`
--

DROP TABLE IF EXISTS `viewthongkehuongdan`;
/*!50001 DROP VIEW IF EXISTS `viewthongkehuongdan`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewthongkehuongdan` AS SELECT 
 1 AS `tenGiangVien`,
 1 AS `maLoaiHinh`,
 1 AS `maHocPhan`,
 1 AS `tenHocPhan`,
 1 AS `hocKy`,
 1 AS `maLop`,
 1 AS `soSinhVien`,
 1 AS `tinChi`,
 1 AS `soGio`,
 1 AS `kL`,
 1 AS `kC`,
 1 AS `gioQuyDoi`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `thongkesosinhvien`
--

DROP TABLE IF EXISTS `thongkesosinhvien`;
/*!50001 DROP VIEW IF EXISTS `thongkesosinhvien`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `thongkesosinhvien` AS SELECT 
 1 AS `maLop`,
 1 AS `soSinhVien`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tkphancongtheogiangvien`
--

DROP TABLE IF EXISTS `tkphancongtheogiangvien`;
/*!50001 DROP VIEW IF EXISTS `tkphancongtheogiangvien`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tkphancongtheogiangvien` AS SELECT 
 1 AS `tenGiangVien`,
 1 AS `soSinhVien`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tksinhvientheoquequan`
--

DROP TABLE IF EXISTS `tksinhvientheoquequan`;
/*!50001 DROP VIEW IF EXISTS `tksinhvientheoquequan`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tksinhvientheoquequan` AS SELECT 
 1 AS `Quê quán`,
 1 AS `Số lượng`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewgiangvien`
--

DROP TABLE IF EXISTS `viewgiangvien`;
/*!50001 DROP VIEW IF EXISTS `viewgiangvien`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewgiangvien` AS SELECT 
 1 AS `maGiangVien`,
 1 AS `hoVaTenDem`,
 1 AS `ten`,
 1 AS `gioiTinh`,
 1 AS `hocHam`,
 1 AS `hocVi`,
 1 AS `ngaySinh`,
 1 AS `chucVu`,
 1 AS `dienThoai`,
 1 AS `email`,
 1 AS `diaChi`,
 1 AS `boMon`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewsvctpchd`
--

DROP TABLE IF EXISTS `viewsvctpchd`;
/*!50001 DROP VIEW IF EXISTS `viewsvctpchd`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewsvctpchd` AS SELECT 
 1 AS `Mã số sinh viên`,
 1 AS `Họ và tên`,
 1 AS `Ngày sinh`,
 1 AS `Giới tính`,
 1 AS `Lớp`,
 1 AS `Khoá`,
 1 AS `Email`,
 1 AS `Điện thoại`,
 1 AS `Quê quán`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tkgiangvientheogioitinh`
--

DROP TABLE IF EXISTS `tkgiangvientheogioitinh`;
/*!50001 DROP VIEW IF EXISTS `tkgiangvientheogioitinh`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tkgiangvientheogioitinh` AS SELECT 
 1 AS `Giới tính`,
 1 AS `Số lượng`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tksinhvientheogioitinh`
--

DROP TABLE IF EXISTS `tksinhvientheogioitinh`;
/*!50001 DROP VIEW IF EXISTS `tksinhvientheogioitinh`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tksinhvientheogioitinh` AS SELECT 
 1 AS `Giới tính`,
 1 AS `Số lượng`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `kekhaiphanconghuongdan`
--

DROP TABLE IF EXISTS `kekhaiphanconghuongdan`;
/*!50001 DROP VIEW IF EXISTS `kekhaiphanconghuongdan`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `kekhaiphanconghuongdan` AS SELECT 
 1 AS `maGiangVien`,
 1 AS `hoTen`,
 1 AS `maLoaiHinh`,
 1 AS `maHocPhan`,
 1 AS `tenHocPhan`,
 1 AS `hocKy`,
 1 AS `maLop`,
 1 AS `soSinhVien`,
 1 AS `tinChi`,
 1 AS `soGio`,
 1 AS `kL`,
 1 AS `kC`,
 1 AS `gioQuyDoi`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tksogiotheogiangvientheomonhoc`
--

DROP TABLE IF EXISTS `tksogiotheogiangvientheomonhoc`;
/*!50001 DROP VIEW IF EXISTS `tksogiotheogiangvientheomonhoc`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tksogiotheogiangvientheomonhoc` AS SELECT 
 1 AS `Họ và tên`,
 1 AS `Tên học phần`,
 1 AS `Tổng số giờ`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tkgiangvientheohocvi`
--

DROP TABLE IF EXISTS `tkgiangvientheohocvi`;
/*!50001 DROP VIEW IF EXISTS `tkgiangvientheohocvi`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tkgiangvientheohocvi` AS SELECT 
 1 AS `Học vị`,
 1 AS `Số lượng`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tksosinhvientheogiangvientheomonhoc`
--

DROP TABLE IF EXISTS `tksosinhvientheogiangvientheomonhoc`;
/*!50001 DROP VIEW IF EXISTS `tksosinhvientheogiangvientheomonhoc`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tksosinhvientheogiangvientheomonhoc` AS SELECT 
 1 AS `Họ và tên`,
 1 AS `Tên học phần`,
 1 AS `Tổng số sinh viên`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tkphancongtheososinhvien`
--

DROP TABLE IF EXISTS `tkphancongtheososinhvien`;
/*!50001 DROP VIEW IF EXISTS `tkphancongtheososinhvien`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tkphancongtheososinhvien` AS SELECT 
 1 AS `Tên giảng viên`,
 1 AS `Số sinh viên`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tksinhvientheokhoa`
--

DROP TABLE IF EXISTS `tksinhvientheokhoa`;
/*!50001 DROP VIEW IF EXISTS `tksinhvientheokhoa`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tksinhvientheokhoa` AS SELECT 
 1 AS `Khoá`,
 1 AS `Số lượng`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tkgiangvientheodiachi`
--

DROP TABLE IF EXISTS `tkgiangvientheodiachi`;
/*!50001 DROP VIEW IF EXISTS `tkgiangvientheodiachi`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tkgiangvientheodiachi` AS SELECT 
 1 AS `Địa chỉ`,
 1 AS `Số lượng`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `tkgiangvientheochucvu`
--

/*!50001 DROP VIEW IF EXISTS `tkgiangvientheochucvu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tkgiangvientheochucvu` AS select `gv`.`chucVu` AS `Chức vụ`,count(`gv`.`chucVu`) AS `Số lượng` from `giangvien` `gv` group by `gv`.`chucVu` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tkphancongtheogio`
--

/*!50001 DROP VIEW IF EXISTS `tkphancongtheogio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tkphancongtheogio` AS select `vtk`.`tenGiangVien` AS `Tên giảng viên`,sum(`vtk`.`soGio`) AS `Số giờ` from `viewthongkehuongdan` `vtk` group by `vtk`.`tenGiangVien` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tkgiangvientheohocham`
--

/*!50001 DROP VIEW IF EXISTS `tkgiangvientheohocham`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tkgiangvientheohocham` AS select `gv`.`hocHam` AS `Học hàm`,count(`gv`.`hocHam`) AS `Số lượng` from `giangvien` `gv` group by `gv`.`hocHam` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tkgiangvientheobomon`
--

/*!50001 DROP VIEW IF EXISTS `tkgiangvientheobomon`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tkgiangvientheobomon` AS select `gv`.`boMon` AS `Bộ môn`,count(`gv`.`boMon`) AS `Số lượng` from `giangvien` `gv` group by `gv`.`boMon` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewthongkehuongdan`
--

/*!50001 DROP VIEW IF EXISTS `viewthongkehuongdan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewthongkehuongdan` AS select concat(`gv`.`hoVaTenDem`,' ',`gv`.`ten`) AS `tenGiangVien`,`lh`.`maLoaiHinh` AS `maLoaiHinh`,`hp`.`maHocPhan` AS `maHocPhan`,`hp`.`tenHocPhan` AS `tenHocPhan`,`pc`.`hocKy` AS `hocKy`,`pc`.`maLop` AS `maLop`,`tk`.`soSinhVien` AS `soSinhVien`,`hp`.`tinChi` AS `tinChi`,`TINHSOGIO`(`hp`.`tinChi`,`tk`.`soSinhVien`) AS `soGio`,1 AS `kL`,`lh`.`kC` AS `kC`,`TINHGIOQUYDOI`(`TINHSOGIO`(`hp`.`tinChi`,`tk`.`soSinhVien`),1,`lh`.`kC`) AS `gioQuyDoi` from ((((`thongkesosinhvien` `tk` join `phanconghuongdan` `pc`) join `giangvien` `gv`) join `loaihinh` `lh`) join `hocphan` `hp`) where ((`tk`.`maLop` = `pc`.`maLop`) and (`pc`.`maGiangVien` = `gv`.`maGiangVien`) and (`lh`.`maLoaiHinh` = `pc`.`maLoaiHinh`) and (`hp`.`maHocPhan` = `pc`.`maHocPhan`)) order by `gv`.`ten` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `thongkesosinhvien`
--

/*!50001 DROP VIEW IF EXISTS `thongkesosinhvien`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `thongkesosinhvien` AS select `chitietphanconghuongdan`.`maLop` AS `maLop`,count(`chitietphanconghuongdan`.`maLop`) AS `soSinhVien` from `chitietphanconghuongdan` group by `chitietphanconghuongdan`.`maLop` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tkphancongtheogiangvien`
--

/*!50001 DROP VIEW IF EXISTS `tkphancongtheogiangvien`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tkphancongtheogiangvien` AS select `vtk`.`tenGiangVien` AS `tenGiangVien`,sum(`vtk`.`soSinhVien`) AS `soSinhVien` from `viewthongkehuongdan` `vtk` group by `vtk`.`tenGiangVien` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tksinhvientheoquequan`
--

/*!50001 DROP VIEW IF EXISTS `tksinhvientheoquequan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tksinhvientheoquequan` AS select `sv`.`queQuan` AS `Quê quán`,count(`sv`.`queQuan`) AS `Số lượng` from `sinhvien` `sv` group by `sv`.`queQuan` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewgiangvien`
--

/*!50001 DROP VIEW IF EXISTS `viewgiangvien`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewgiangvien` AS select `gv`.`maGiangVien` AS `maGiangVien`,`gv`.`hoVaTenDem` AS `hoVaTenDem`,`gv`.`ten` AS `ten`,`gv`.`gioiTinh` AS `gioiTinh`,`gv`.`hocHam` AS `hocHam`,`gv`.`hocVi` AS `hocVi`,`gv`.`ngaySinh` AS `ngaySinh`,`gv`.`chucVu` AS `chucVu`,`gv`.`dienThoai` AS `dienThoai`,`gv`.`email` AS `email`,`gv`.`diaChi` AS `diaChi`,`gv`.`boMon` AS `boMon` from `giangvien` `gv` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewsvctpchd`
--

/*!50001 DROP VIEW IF EXISTS `viewsvctpchd`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewsvctpchd` AS select `sinhvien`.`mssv` AS `Mã số sinh viên`,`sinhvien`.`hoTen` AS `Họ và tên`,`sinhvien`.`ngaySinh` AS `Ngày sinh`,`sinhvien`.`gioiTInh` AS `Giới tính`,`sinhvien`.`lop` AS `Lớp`,`sinhvien`.`khoa` AS `Khoá`,`sinhvien`.`email` AS `Email`,`sinhvien`.`dienThoai` AS `Điện thoại`,`sinhvien`.`queQuan` AS `Quê quán` from `sinhvien` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tkgiangvientheogioitinh`
--

/*!50001 DROP VIEW IF EXISTS `tkgiangvientheogioitinh`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tkgiangvientheogioitinh` AS select `gv`.`gioiTinh` AS `Giới tính`,count(`gv`.`gioiTinh`) AS `Số lượng` from `giangvien` `gv` group by `gv`.`gioiTinh` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tksinhvientheogioitinh`
--

/*!50001 DROP VIEW IF EXISTS `tksinhvientheogioitinh`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tksinhvientheogioitinh` AS select `sv`.`gioiTInh` AS `Giới tính`,count(`sv`.`gioiTInh`) AS `Số lượng` from `sinhvien` `sv` group by `sv`.`gioiTInh` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `kekhaiphanconghuongdan`
--

/*!50001 DROP VIEW IF EXISTS `kekhaiphanconghuongdan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `kekhaiphanconghuongdan` AS select `gv`.`maGiangVien` AS `maGiangVien`,concat(`gv`.`hoVaTenDem`,' ',`gv`.`ten`) AS `hoTen`,`lh`.`maLoaiHinh` AS `maLoaiHinh`,`hp`.`maHocPhan` AS `maHocPhan`,`hp`.`tenHocPhan` AS `tenHocPhan`,`pc`.`hocKy` AS `hocKy`,`pc`.`maLop` AS `maLop`,`tk`.`soSinhVien` AS `soSinhVien`,`hp`.`tinChi` AS `tinChi`,`TINHSOGIO`(`hp`.`tinChi`,`tk`.`soSinhVien`) AS `soGio`,1 AS `kL`,`lh`.`kC` AS `kC`,`TINHGIOQUYDOI`(`TINHSOGIO`(`hp`.`tinChi`,`tk`.`soSinhVien`),1,`lh`.`kC`) AS `gioQuyDoi` from ((((`thongkesosinhvien` `tk` join `phanconghuongdan` `pc`) join `giangvien` `gv`) join `loaihinh` `lh`) join `hocphan` `hp`) where ((`tk`.`maLop` = `pc`.`maLop`) and (`pc`.`maGiangVien` = `gv`.`maGiangVien`) and (`lh`.`maLoaiHinh` = `pc`.`maLoaiHinh`) and (`hp`.`maHocPhan` = `pc`.`maHocPhan`)) order by `gv`.`ten` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tksogiotheogiangvientheomonhoc`
--

/*!50001 DROP VIEW IF EXISTS `tksogiotheogiangvientheomonhoc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tksogiotheogiangvientheomonhoc` AS select `kk`.`hoTen` AS `Họ và tên`,`kk`.`tenHocPhan` AS `Tên học phần`,sum(`kk`.`gioQuyDoi`) AS `Tổng số giờ` from `kekhaiphanconghuongdan` `kk` group by `kk`.`maHocPhan`,`kk`.`maGiangVien`,`kk`.`hoTen` order by `kk`.`maGiangVien` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tkgiangvientheohocvi`
--

/*!50001 DROP VIEW IF EXISTS `tkgiangvientheohocvi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tkgiangvientheohocvi` AS select `gv`.`hocVi` AS `Học vị`,count(`gv`.`hocVi`) AS `Số lượng` from `giangvien` `gv` group by `gv`.`hocVi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tksosinhvientheogiangvientheomonhoc`
--

/*!50001 DROP VIEW IF EXISTS `tksosinhvientheogiangvientheomonhoc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tksosinhvientheogiangvientheomonhoc` AS select `kk`.`hoTen` AS `Họ và tên`,`kk`.`tenHocPhan` AS `Tên học phần`,sum(`kk`.`soSinhVien`) AS `Tổng số sinh viên` from `kekhaiphanconghuongdan` `kk` group by `kk`.`maHocPhan`,`kk`.`maGiangVien`,`kk`.`hoTen` order by `kk`.`maGiangVien` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tkphancongtheososinhvien`
--

/*!50001 DROP VIEW IF EXISTS `tkphancongtheososinhvien`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tkphancongtheososinhvien` AS select `vtk`.`tenGiangVien` AS `Tên giảng viên`,sum(`vtk`.`soSinhVien`) AS `Số sinh viên` from `viewthongkehuongdan` `vtk` group by `vtk`.`tenGiangVien` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tksinhvientheokhoa`
--

/*!50001 DROP VIEW IF EXISTS `tksinhvientheokhoa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tksinhvientheokhoa` AS select `sv`.`khoa` AS `Khoá`,count(`sv`.`khoa`) AS `Số lượng` from `sinhvien` `sv` group by `sv`.`khoa` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tkgiangvientheodiachi`
--

/*!50001 DROP VIEW IF EXISTS `tkgiangvientheodiachi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tkgiangvientheodiachi` AS select `gv`.`diaChi` AS `Địa chỉ`,count(`gv`.`diaChi`) AS `Số lượng` from `giangvien` `gv` group by `gv`.`diaChi` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'quanlyphancongdakl'
--

--
-- Dumping routines for database 'quanlyphancongdakl'
--
/*!50003 DROP FUNCTION IF EXISTS `TINHGIOQUYDOI` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `TINHGIOQUYDOI`(soGioHuongDan integer, kL integer, kC integer) RETURNS int(11)
BEGIN
	declare gioQuyDoi integer;
    set gioQuyDoi = soGioHuongDan * kL * kC;
RETURN gioQuyDoi;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `TINHSOGIO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `TINHSOGIO`(soTinChi integer, soSinhVien integer) RETURNS int(11)
BEGIN
	declare soGio integer;
    set soGio = soTinChi * 2 * soSinhVien;
RETURN soGio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BaoCaoDanhsachMonHoc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BaoCaoDanhsachMonHoc`()
BEGIN
select maHocPhan as 'Mã học phần ',tenHocPhan as 'Tên học phần ' from hocphan;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BaoCaoGVtheoBoMon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BaoCaoGVtheoBoMon`(
	in bien varchar(20)
)
BEGIN
SELECT concat(gv.hoVaTenDem ,' ',gv.ten) as 'Họ và tên ',hp.tenHocPhan FROM 
phanconghuongdan as pchd,giangvien as gv,hocphan as hp
where 
pchd.maGiangVien=gv.maGiangVien 
and pchd.maHocPhan=hp.maHocPhan 
and hp.tenHocPhan=bien;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BaoCaoPCGVHuongDan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BaoCaoPCGVHuongDan`(
	in maGiangVien varchar(20),
    in hocKy int
)
BEGIN
SELECT 	concat(gv.hoVaTenDem,' ',gv.ten) as'Họ Tên',
		pchd.maLop as'Mã lớp' 
FROM
		phanconghuongdan as pchd,
        giangvien as gv
where 	gv.maGiangVien=maGiangVien 
		and pchd.maGiangVien=gv.maGiangVien 
        and pchd.hocKy=hocKy;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BaoCaoSVTheoLop` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BaoCaoSVTheoLop`(
	in keyword varchar(45)
)
BEGIN
select distinct sv.hoTen as 'Họ và tên'
from chitietphanconghuongdan as ct, sinhVien as sv
where ct.mssv like CONCAT('%', keyword, '%') 
	or ct.maLop = keyword 
    AND ct.mssv = sv.mssv;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dangNhap` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dangNhap`(
in tenDangNhap varchar(45),
in matKhau varchar(45)
)
BEGIN
	select loai 
	from login as lg
	where 	lg.tenDangNhap = tenDangNhap
		AND lg.matKhau = matKhau;
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `doiMatKhau` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `doiMatKhau`(
in tenDangNhap varchar(45),
in matKhau varchar(45)
)
BEGIN
	update login as lg
    set lg.matKhau = matKhau
    where lg.tenDangNhap = tenDangNhap ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `keKhaiPhanCongHuongDan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `keKhaiPhanCongHuongDan`(
	in maGiangVien varchar(10),
    in tuKy int,
    in denKy int,
    in tenGiangVien nvarchar(45)
)
BEGIN
SELECT 	CONCAT(gv.hoVaTenDem, ' ', gv.ten) as 'Họ và tên',
		lh.maLoaiHinh as 'Loại hình', 
        hp.maHocPhan as 'Mã học phần',
        hp.tenHocPhan as 'Học phần',
        pc.hocKy as 'Học kỳ',
        pc.maLop as 'Mã lớp',
        tk.soSinhVien as 'Số sinh viên',
        hp.tinChi as 'Số tín chỉ',
        tinhSoGio(hp.tinChi, tk.soSinhVien) as 'Số giờ',
        1 as kL,
        lh.kC,
        tinhGioQuyDoi(tinhSoGio(hp.tinChi, tk.soSinhVien), 1, lh.kC) as 'Giờ quy đổi'
        

FROM 	thongkesosinhvien as tk,
		phanCongHuongDan as pc,
		giangVien as gv,
		loaiHinh as lh,
        hocPhan as hp
        
WHERE 	pc.maGiangVien like CONCAT('%',maGiangVien,'%') 
		AND tk.maLop = pc.malop 
		AND pc.maGiangVien  = gv.maGiangVien
		AND lh.maLoaiHinh = pc.maLoaiHinh
        AND hp.maHocPhan = pc.maHocPhan
        AND tuKy <= hocKy
        AND denKy >= hocKy
        AND CONCAT(gv.hoVaTenDem, ' ', gv.ten)like CONCAT('%', tenGiangVien, '%')
        
ORDER BY gv.ten;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `kiemTraSinhVien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `kiemTraSinhVien`(in maSinhVien varchar(15))
BEGIN
select sv.mssv
from sinhVien as sv
where sv.mssv = maSinhVien;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `phanCongHuongDanTheoGiangVien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `phanCongHuongDanTheoGiangVien`(in maGiangVien varchar(10))
BEGIN
SELECT 	CONCAT(gv.hoVaTenDem, ' ', gv.ten),
		lh.maLoaiHinh,
        hp.maHocPhan,
        hp.tenHocPhan,
        pc.hocKy,
        pc.maLop,
        tk.soSinhVien,
        hp.tinChi,
        tinhSoGio(hp.tinChi, tk.soSinhVien) as soGio,
        1 as kL,
        lh.kC,
        tinhGioQuyDoi(tinhSoGio(hp.tinChi, tk.soSinhVien), 1, lh.kC) as gioQuyDoi
        

FROM 	thongkesosinhvien as tk,
		phanCongHuongDan as pc,
		giangVien as gv,
		loaiHinh as lh,
        hocPhan as hp
        
WHERE 	pc.maGiangVien like CONCAT('%',maGiangVien,'%') 
		AND tk.maLop = pc.malop 
		AND pc.maGiangVien  = gv.maGiangVien
		AND lh.maLoaiHinh = pc.maLoaiHinh
        AND hp.maHocPhan = pc.maHocPhan
        
ORDER BY gv.ten;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `suaChiTietPhanCongHuongDan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `suaChiTietPhanCongHuongDan`(
in mssv int(11),
in maLop varchar(45),
in diemQuaTrinh float,
in diemThi float,
in tenBaoCao varchar(255),
in ngayNopBaoCao date
)
BEGIN
	UPDATE chitietphanconghuongdan
    SET diemQuaTrinh = diemQuaTrinh,
		diemThi = diemThi,
		tenBaoCao = tenBaoCao,
		ngayNopBaoCao = ngayNopBaoCao
    Where
		chitietphanconghuongdan.mssv = mssv And
        chitietphanconghuongdan.maLop = maLop;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `suaGiangVien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `suaGiangVien`(
 in maGiangVien varchar(45),
 in hoTen nvarchar(45),
 in gioiTinh nvarchar(45),
 in hocHam nvarchar(45),
 in hocVi nvarchar(45),
 in ngaySinh nvarchar(45),
 in chucVu nvarchar(45),
 in dienThoai nvarchar(45),
 in email nvarchar(45),
 in diaChi nvarchar(45),
 in boMon nvarchar(45)
)
BEGIN
UPDATE quanlyphancongdakl.giangVien
SET giangVien.hoTen = hoTen,
 giangVien.gioiTinh = gioiTinh,
 giangVien.hocHam = hocHam,
 giangVien.hocVi = hocVi,
 giangVien.ngaySinh = ngaySinh,
 giangVien.chucVu = chucVu,
 giangVien.dienThoai = dienThoai,
 giangVien.email = email,
 giangVien.diaChi = diaChi,
 giangVien.boMon = boMon
WHERE giangVien.maGiangVien = maGiangVien;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `suaHocPhan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `suaHocPhan`(
in maHocPhan varchar(10),
in tenHocPhan varchar(255),
in tinChi tinyint(2),
in tinChiHocPhi float
)
BEGIN
 update hocphan
 set tenHocPhan = tenHocPhan,
	 tinChi = tinChi,
	 tinChiHocPhi = tinChiHocPhi
where hocphan.maHocPhan = maHocPhan;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `suaLoaiHinh` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `suaLoaiHinh`(
in maLoaiHinh varchar(8),
in nhomLoaiHinh varchar(5),
in kC float)
BEGIN
	update loaihinh
    set nhomLoaihinh = nhomLoaiHinh,
    kC = kC
    where loaihinh.maLoaiHinh = maLoaiHinh; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `suaLogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `suaLogin`(
in tenDangNhap varchar(45),
in matKhau varchar(45),
in loai int
)
BEGIN
	update login as lg
    set lg.matKhau = matKhau,
		lg.loai = loai
    where lg.tenDangNhap = tenDangNhap ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `suaPhanCongHuongDan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `suaPhanCongHuongDan`(in maLop varchar(10), in maLoaiHinh varchar(10),in kyHoc varchar(10), in namHoc varchar(10),in maHocPhan varchar(10), in maGiangVien varchar(10),in batDau date, in ketThuc date)
BEGIN
UPDATE quanlyphancongdakl.phanCongHuongDan
SET phanCongHuongDan.maLoaiHinh = maLoaiHinh,
 phanCongHuongDan.kyHoc = kyHoc, namHoc = namHoc,
 phanCongHuongDan.maHocPhan = maHocPhan,
 phanCongHuongDan.maGiangVien = maGiangVien,
 phanCongHuongDan.batDau = batDau,
 phanCongHuongDan.ketThuc = ketThuc
WHERE phanCongHuongDan.maLop = maLop;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `suaSinhVien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `suaSinhVien`(
in mssv int,
in hoTen varchar(45),
in ngaySinh date,
in gioiTinh varchar(15),
in lop varchar(255),
in khoa varchar(45),
in email varchar(50),
in dienThoai varchar(25),
in queQuan varchar(255)
)
BEGIN
	update sinhvien
    set hoTen = hoTen,
		ngaySinh = ngaySinh,
		gioiTinh = gioiTinh,
		lop = lop,
		khoa = khoa,
		email = email,
		dienThoai = dienThoai,
		queQuan = queQuan
    where sinhvien.mssv = mssv;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `themChiTietPhanCongHuongDan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `themChiTietPhanCongHuongDan`(
 in mssv varchar(10),
 in maLop varchar(10),
 in diemQuaTrinh varchar(10),
 in diemThi varchar(10),
 in tenBaoCao varchar(100),
 in ngayNopBaoCao date
)
BEGIN
INSERT INTO `quanlyphancongdakl`.`chiTietPhanCongHuongDan` (`mssv`, `maLop`, `diemQuaTrinh`, `diemThi`, `tenBaoCao`, `ngayNopBaoCao`) 
VALUES (mssv, maLop, diemQuaTrinh, diemThi, tenBaoCao, ngayNopBaoCao);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `themGiangVien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `themGiangVien`(
 in maGiangVien varchar(45),
 in hoVaTenDem nvarchar(45),
 in ten nvarchar(10),
 in gioiTinh nvarchar(45),
 in hocHam nvarchar(45),
 in hocVi nvarchar(45),
 in ngaySinh nvarchar(45),
 in chucVu nvarchar(45),
 in dienThoai nvarchar(45),
 in email nvarchar(45),
 in diaChi nvarchar(45),
 in boMon nvarchar(45)
)
BEGIN
INSERT INTO `quanlyphancongdakl`.`giangVien` 
(`maGiangVien`, `hoVaTenDem`, `ten`, `gioiTinh`, `hocHam`, `hocVi`, `ngaySinh`, `chucVu`, `dienThoai`, `email`, `diaChi`, `boMon`) 
VALUES (maGiangVien, hoVaTenDem, ten, gioiTinh, hocHam,  ngaySinh, dienThoai,  diaChi, boMon);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `themHocPhan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `themHocPhan`(
in maHocPhan varchar(10),
in tenHocPhan varchar(255),
in  tinChi tinyint(2),
in tinChiHocPhi float
)
BEGIN
INSERT INTO hocphan
(maHocPhan, tenHocPhan, tinChi, tinChiHocphi)
 VALUES 
 (maHocPhan, tenHocPhan, tinChi, tinChiHocPhi);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `themLoaiHinh` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `themLoaiHinh`(
in maLoaiHinh varchar(8),
in nhomLoaiHinh varchar(45),
in kC float
)
BEGIN
insert into loaihinh(maLoaiHinh, nhomLoaiHinh, kC)
value (maLoaiHinh, nhomLoaiHinh, kC);
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `themLogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `themLogin`(
in tenDangNhap varchar(45),
in matKhau varchar(45),
in loai int)
BEGIN
insert into login(tenDangNhap, matKhau, loai)
value(tenDangNhap, matKhau, loai);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `themPhanCongHuongDan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `themPhanCongHuongDan`(
	in maLop varchar(10),
    in maLoaiHinh varchar(10),
    in hocKy varchar(10),
    in maHocPhan varchar(10),
    in maGiangVien varchar(10),
    in batDau date,
    in ketThuc date
)
BEGIN
INSERT INTO `quanlyphancongdakl`.`phanCongHuongDan` 
(`maLop`, `maLoaiHinh`, `hocKy`, `maHocPhan`, `maGiangVien`, `batDau`, `ketThuc`)
 VALUES 
 (maLop, maLoaiHinh, hocKy, maHocPhan, maGiangVien, batDau, ketThuc);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `themSinhVien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `themSinhVien`(
in mssv int,
in hoTen varchar(45),
in ngaySinh date,
in gioiTinh varchar(15),
in lop varchar(255),
in khoa varchar(45),
in email varchar(50),
in dienThoai varchar(25),
in queQuan varchar(255)
 )
BEGIN
insert into sinhvien(mssv, hoTen, ngaySinh, gioiTinh, lop, khoa, email, dienThoai, queQuan)
value (mssv, hoTen, ngaySinh, gioiTinh, lop, khoa, email, dienThoai, queQuan);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `timChiTietPhanCongHuongDan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `timChiTietPhanCongHuongDan`(
 in mssv varchar(10),
 in maLop varchar(10),
 in diemQuaTrinh varchar(10),
 in diemThi varchar(10),
 in tenBaoCao varchar(100),
 in ngayNopBaoCao varchar(100)
)
BEGIN
select * 
from chitietphanconghuongdan
where chitietphanconghuongdan.mssv like CONCAT('%', mssv, '%') 
	AND chitietphanconghuongdan.maLop like CONCAT('%',maLop,'%') 
	AND chitietphanconghuongdan.diemQuaTrinh like CONCAT('%',diemQuaTrinh,'%') 
	AND chitietphanconghuongdan.diemThi like CONCAT('%',diemThi,'%') 
	AND chitietphanconghuongdan.tenBaoCao like CONCAT('%',tenBaoCao,'%') 
	AND chitietphanconghuongdan.ngayNopBaoCao like CONCAT('%',ngayNopBaoCao,'%') ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `timGiangVien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `timGiangVien`(
	in maGiangVien varchar(10),
    in hoTen nvarchar(45),
    in chucVu nvarchar(45),
    in boMon nvarchar(45),
    in diaChi nvarchar(45)
)
BEGIN
select 	gv.maGiangVien as 'Mã giảng viên',
		CONCAT(hoVaTenDem, ' ', ten) as 'Họ và tên',
        gioiTinh as 'Giới tính',
        gv.hocHam as 'Học hàm',
        gv.hocVi as 'Học vị',
        gv.ngaySinh as 'Ngày sinh',
        gv.chucVu as 'Chức vụ',
        gv.dienThoai as 'Điện thoại',
        gv.email as 'Email',
        gv.diaChi as 'Địa chỉ',
        gv.boMon as 'Bộ môn'
from quanlyphancongdakl.giangVien as gv
where 
			gv.maGiangVien like CONCAT(N'%', maGiangVien, '%') 
		AND (gv.hoVaTenDem like CONCAT(N'%',hoTen,'%') OR gv.ten like CONCAT('%', hoTen, '%'))
		AND gv.chucVu like CONCAT(N'%',chucVu,'%') 
		AND gv.boMon like CONCAT(N'%',boMon,'%') 
		AND gv.diaChi like CONCAT(N'%',diaChi,'%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `timHocPhan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `timHocPhan`(
in maHocPhan varchar(45),
in tenHocPhan varchar(255),
in  tinChi varchar(45),
in tinChiHocPhi varchar(45)
)
BEGIN
	select *
    from hocphan
    where hocphan.maHocPhan like CONCAT('%',maHocPhan, '%')
		and hocphan.tenHocPhan like CONCAT('%', tenHocPhan, '%')
		and hocphan.tinChi like CONCAT('%', tinChi, '%')
		and hocphan.tinChiHocPhi like CONCAT('%', tinChiHocPhi, '%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `timKeKhaiPhanConHuongDan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `timKeKhaiPhanConHuongDan`(
	in tuKy integer,
    in denKy integer,
    in tenGiangVien nvarchar(45)
)
BEGIN
select *
from kekhaiphanconghuongdan as kk
where 	kk.hocKy >= tuKy
		AND kk.hocKy <= denKy
        AND kk.hoTen like CONCAT('%', tenGiangVien, '%');

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `timLoaiHinh` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `timLoaiHinh`(
in maLoaiHinh varchar(45),
in nhomLoaiHinh varchar(45),
in kC varchar(45)
)
BEGIN
	select * 
	from loaihinh
	where loaihinh.maLoaiHinh like CONCAT('%', maLoaiHinh, '%') 
		AND loaihinh.nhomLoaiHinh like CONCAT('%',nhomLoaiHinh,'%') 
		AND loaihinh.kC like CONCAT('%',kC,'%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `timLogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `timLogin`(
in tenDangNhap varchar(45),
in matKhau varchar(45),
in loai varchar(45)
)
BEGIN
	select * 
	from login
	where login.tenDangNhap like CONCAT('%', tenDangNhap, '%') 
		AND login.matKhau like CONCAT('%',matKhau,'%') 
		AND login.loai like CONCAT('%',loai,'%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `timNCChiTietPhanCongHuongDan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `timNCChiTietPhanCongHuongDan`(
in keyword varchar(45)
)
BEGIN
select ct.mssv as 'Mã số sinh viên',
		sv.hoTen as 'Họ và tên',
        ct.diemQuaTrinh as 'Điểm quá trình',
        ct.diemThi as 'Điểm thi',
        ct.tenBaoCao as 'Tên báo cáo',
        ct.ngayNopBaoCao as 'Ngày nộp báo cáo'
from chitietphanconghuongdan as ct, sinhvien as sv
where ct.mssv like CONCAT('%', keyword, '%') 
	or ct.maLop like CONCAT('%',keyword,'%') 
	or ct.diemQuaTrinh like CONCAT('%',keyword,'%') 
	or ct.diemThi like CONCAT('%',keyword,'%') 
	or ct.tenBaoCao like CONCAT('%',keyword,'%') 
	or ct.ngayNopBaoCao like CONCAT('%',keyword,'%')
    and ct.mssv = sv.mssv
group by maLop, ct.mssv, sv.hoTen, diemQuaTrinh, diemThi, tenBaoCao, ngayNopBaoCao;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `timNCGiangVien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `timNCGiangVien`(in tuKhoa nvarchar(45))
BEGIN
select * 
from quanlyphancongdakl.giangVien
where maGiangVien like CONCAT(N'%', tuKhoa, '%') 
OR (hoVaTenDem like CONCAT(N'%',tuKhoa,'%') OR ten like CONCAT(N'%',tuKhoa,'%'))
OR chucVu like CONCAT(N'%',tuKhoa,'%') 
OR boMon like CONCAT(N'%',tuKhoa,'%') 
OR diaChi like CONCAT(N'%',tuKhoa,'%')
OR dienThoai like CONCAT(N'%',tuKhoa,'%') ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `timNCHocPhan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `timNCHocPhan`(
in keyWord varchar(45)
)
BEGIN
	select *
    from hocphan
    where hocphan.maHocPhan like CONCAT('%',keyWord, '%')
		or hocphan.tenHocPhan like CONCAT('%', keyWord, '%')
		or hocphan.tinChi like CONCAT('%', keyWord, '%')
		or hocphan.tinChiHocPhi like CONCAT('%', keyWord, '%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `timNCLoaiHinh` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `timNCLoaiHinh`(
in keyWord varchar(45)
)
BEGIN
	select 	maLoaiHinh as 'Mã loại hình',
			nhomLoaiHinh as 'Nhóm loại hình',
            kC as 'KC' 
	from loaihinh
	where loaihinh.maLoaiHinh like CONCAT('%', keyWord, '%') 
		or loaihinh.nhomLoaiHinh like CONCAT('%',keyWord,'%') 
		or loaihinh.kC like CONCAT('%',keyWord,'%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `timNCLogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `timNCLogin`(
in keyWord varchar(45)
)
BEGIN
	select * 
	from login
	where login.tenDangNhap like CONCAT('%', keyWord, '%') 
		or login.matKhau like CONCAT('%',keyWord,'%') 
		or login.loai like CONCAT('%',keyWord,'%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `timNCPhanCongHuongDan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `timNCPhanCongHuongDan`(
in keyWord varchar(45)
)
BEGIN
	select 	maLop as 'Mã lớp',
			maLoaiHinh as 'Mã loại hình',
            hocKy as 'Học kỳ',
            maHocPhan as 'Mã học phần',
            maGiangVien as 'Mã giảng viên',
            batDau as 'Bắt đầu',
            ketThuc as 'Kết thúc'
	from phanconghuongdan
	where phanconghuongdan.maLop like CONCAT('%', keyWord, '%') 
		or phanconghuongdan.maLoaiHinh like CONCAT('%',keyWord,'%')  
		or phanconghuongdan.maHocPhan like CONCAT('%',keyWord,'%') 
		or phanconghuongdan.maGiangVien like CONCAT('%',keyWord,'%')
		or phanconghuongdan.batDau like CONCAT('%',keyWord,'%') 
		or phanconghuongdan.ketThuc like CONCAT('%',keyWord,'%') ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `timNCSinhVien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `timNCSinhVien`(
in keyWord varchar(45)
)
BEGIN
	select	mssv as 'MSSV',
			hoTen as 'Họ tên',
            ngaySinh as 'Ngày sinh',
            gioiTinh as 'Giới tính',
            lop as 'Lớp',
            khoa as 'Khoa',
            email as 'Email',
            dienThoai as 'Điện thoại',
            queQuan as 'Quê quán'
	from sinhvien
	where sinhvien.mssv like CONCAT('%', keyWord, '%') 
		or sinhvien.hoTen like CONCAT('%',keyWord,'%') 
		or sinhvien.ngaySinh like CONCAT('%',keyWord,'%') 
		or sinhvien.gioiTinh like CONCAT('%',keyWord,'%') 
		or sinhvien.lop like CONCAT('%',keyWord,'%') 
		or sinhvien.khoa like CONCAT('%',keyWord,'%') 
		or sinhvien.email like CONCAT('%',keyWord,'%') 
		or sinhvien.dienThoai like CONCAT('%',keyWord,'%') 
		or sinhvien.queQuan like CONCAT('%',keyWord,'%') ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `timPhanCongHuongDan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `timPhanCongHuongDan`(
in maLop varchar(10),
in maLoaiHinh varchar(15),
in maHocPhan varchar(10),
in tenHocPhan varchar(45),
in tenGiangVien varchar(45)
)
BEGIN
	select 
			pc.maLop as 'Mã lớp',
            pc.maLoaiHinh as 'Tên loại hình',
            pc.hocKy as 'Học kỳ',
            pc.maHocPhan as 'Mã học phần',
            hp.tenHocPhan as 'Tên học phần',
            CONCAT(gv.hoVaTenDem, ' ', gv.ten) as 'Họ tên',
            pc.batDau as 'Bắt đầu',
            pc.ketThuc as 'Kết thúc'
	from phanconghuongdan as pc, giangVien as gv, hocphan as hp
	where 
			pc.maLop like CONCAT('%', maLop, '%') 
		AND pc.maLoaiHinh like CONCAT('%',maLoaiHinh,'%') 
		AND pc.maHocPhan like CONCAT('%',maHocPhan,'%')
        AND pc.maGiangVien = gv.maGiangVien
        AND pc.maHocPhan = hp.maHocPhan
        AND (gv.hoVaTenDem like CONCAT('%', tenGiangVien, '%') or gv.ten like CONCAT('%', tenGiangVien, '%'))
        AND hp.tenHocPhan like CONCAT('%', tenHocPhan, '%');

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `timSinhVien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `timSinhVien`(
in mssv varchar(45),
in hoTen varchar(45),
in gioiTinh varchar(15),
in lop varchar(255),
in khoa varchar(45),
in queQuan varchar(255)
)
BEGIN
	select * 
	from sinhvien
	where sinhvien.mssv like CONCAT('%', mssv, '%') 
		AND sinhvien.hoTen like CONCAT('%',hoTen,'%') 
		AND sinhvien.gioiTinh like CONCAT('%',gioiTinh,'%') 
		AND sinhvien.lop like CONCAT('%',lop,'%') 
		AND sinhvien.khoa like CONCAT('%',khoa,'%') 
		AND sinhvien.queQuan like CONCAT('%',queQuan,'%') ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `xoaChiTietPhanCongHuongDan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `xoaChiTietPhanCongHuongDan`(
in mssv int,
in maLop varChar(45)
 )
BEGIN
	delete from chitietphanconghuongdan 
    where chitietphanconghuongdan.mssv = mssv
		and chitietphanconghuongdan.maLop = maLop;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `xoaGiangVien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `xoaGiangVien`(in maGiangVien varchar(45))
BEGIN
DELETE FROM quanlyphancongdakl.giangVien
WHERE phanCongHuongDan.maGiangVien = maGiangVien;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `xoaHocPhan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `xoaHocPhan`(
in maHocPhan varchar(10)
)
BEGIN
	delete from hocphan
    where hocphan.maHocPhan = maHocPhan;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `xoaLoaiHinh` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `xoaLoaiHinh`(
in maLoaiHinh varchar(8)
)
BEGIN
	delete from loaihinh
    where loaihinh.maLoaiHinh = maLoaiHinh;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `xoaLogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `xoaLogin`(
in tenDangNhap varchar(45)
)
BEGIN
	delete from login
    where login.tenDangNhap = tenDangNhap;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `xoaPhanCongHuongDan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `xoaPhanCongHuongDan`(in maLop varchar(10))
BEGIN
DELETE FROM quanlyphancongdakl.phanCongHuongDan
WHERE phanCongHuongDan.maLop = maLop;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `xoaSinhVien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `xoaSinhVien`(
in mssv int
)
BEGIN
	delete from sinhvien
    where sinhvien.mssv = mssv;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-19  0:36:13
