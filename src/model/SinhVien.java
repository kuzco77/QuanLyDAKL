/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;

/**
 *
 * @author nguyendiep
 */
public class SinhVien extends NguoiDung{
    private String maSinhVien;
    private String lopSinhVien;
    public SinhVien(){
        System.out.println("khởi tạo sinh viên");
    }
    public SinhVien(String maSinhVien, String lopSinhVien, String hoTen, Date birthDay, String email, String diaChi, String sdt, String khoaVien) {
        super(hoTen, birthDay, email, diaChi, sdt, khoaVien);
        this.maSinhVien = maSinhVien;
        this.lopSinhVien = lopSinhVien;
    }

    public String getMaSinhVien() {
        return maSinhVien;
    }

    public void setMaSinhVien(String maSinhVien) {
        this.maSinhVien = maSinhVien;
    }

    public String getLopSinhVien() {
        return lopSinhVien;
    }

    public void setLopSinhVien(String lopSinhVien) {
        this.lopSinhVien = lopSinhVien;
    }

    @Override
    public void showInfo() {
        System.out.println("thông tin sinh viên "+maSinhVien);
    }
     
}
