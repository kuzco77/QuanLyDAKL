/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;

/**
 *
 * @author nguye
 */
public class DoAn {
    private String hocKi;
    private String namHoc;
    private String sinhVienThucHien;
    private String tenDetai;
    private Date ngayBaoVe;
    private float diemQuaTrinh;
    private float diemThi;

    public DoAn(String hocKi, String namHoc, String giangVienHuongDan) {
        this.hocKi = hocKi;
        this.namHoc = namHoc;
        this.sinhVienThucHien = giangVienHuongDan;
    }
    
    public String getHocKi() {
        return hocKi;
    }

    public void setHocKi(String hocKi) {
        this.hocKi = hocKi;
    }

    public String getNamHoc() {
        return namHoc;
    }

    public void setNamHoc(String namHoc) {
        this.namHoc = namHoc;
    }

    public String getGiangVienHuongDan() {
        return sinhVienThucHien;
    }

    public void setGiangVienHuongDan(String giangVienHuongDan) {
        this.sinhVienThucHien = giangVienHuongDan;
    }

    public String getTenDetai() {
        return tenDetai;
    }

    public void setTenDetai(String tenDetai) {
        this.tenDetai = tenDetai;
    }

    public Date getNgayBaoVe() {
        return ngayBaoVe;
    }

    public void setNgayBaoVe(Date ngayBaoVe) {
        this.ngayBaoVe = ngayBaoVe;
    }

    public float getDiemQuaTrinh() {
        return diemQuaTrinh;
    }

    public void setDiemQuaTrinh(float diemQuaTrinh) {
        this.diemQuaTrinh = diemQuaTrinh;
    }

    public float getDiemThi() {
        return diemThi;
    }

    public void setDiemThi(float diemThi) {
        this.diemThi = diemThi;
    }
    
}
