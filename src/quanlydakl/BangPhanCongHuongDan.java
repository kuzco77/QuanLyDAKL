/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quanlydakl;

import java.util.Date;

/**
 *
 * @author hoan
 */
// 1 bảng phân công hướng dẫn có nhiều bảng chi tiết phân công hướng dẫn
// Biết được bà giảng dậy bao nhiêu lớp --> Tính kiểu gì
public class BangPhanCongHuongDan {
    String malop;
    String maloaihinh;
    int hocky;
    String mahocphan;
    String magiangvien;
    Date batdau;
    Date ketthuc;
    public BangPhanCongHuongDan(String malop,String maloaihinh,int hocky,String mahocphan,String magiangvien,Date batdau,Date ketthuc){
        this.malop=malop;
        this.maloaihinh=maloaihinh;
        this.hocky=hocky;
        this.mahocphan=mahocphan;
        this.magiangvien=magiangvien;
        this.batdau=batdau;
        this.ketthuc=ketthuc;
    }

    public String getMalop() {
        return malop;
    }

    public void setMalop(String malop) {
        this.malop = malop;
    }

    public String getMaloaihinh() {
        return maloaihinh;
    }

    public void setMaloaihinh(String maloaihinh) {
        this.maloaihinh = maloaihinh;
    }

    public int getHocky() {
        return hocky;
    }

    public void setHocky(int hocky) {
        this.hocky = hocky;
    }

    public String getMahocphan() {
        return mahocphan;
    }

    public void setMahocphan(String mahocphan) {
        this.mahocphan = mahocphan;
    }

    public String getMagiangvien() {
        return magiangvien;
    }

    public void setMagiangvien(String magiangvien) {
        this.magiangvien = magiangvien;
    }

    public Date getBatdau() {
        return batdau;
    }

    public void setBatdau(Date batdau) {
        this.batdau = batdau;
    }

    public Date getKetthuc() {
        return ketthuc;
    }

    public void setKetthuc(Date ketthuc) {
        this.ketthuc = ketthuc;
    }
    
}
