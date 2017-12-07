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
public abstract class NguoiDung {

    private enum GioiTinh {
        Nam, Nữ;
    }

    private String hoTen;
    private Date birthDay;
    private String email;
    private String diaChi;
    private String sdt;
    private String khoaVien;
    private GioiTinh gioiTinh;
    
    public NguoiDung(String hoTen, Date birthDay, String email, String diaChi, String sdt, String khoaVien) {
        this.hoTen = hoTen;
        this.birthDay = birthDay;
        this.email = email;
        this.diaChi = diaChi;
        this.sdt = sdt;
        this.khoaVien = khoaVien;
    }
    public NguoiDung() {
    }

    //======>><<=======
    public String getKhoaVien() {
        return khoaVien;
    }

    public void setKhoaVien(String khoaVien) {
        this.khoaVien = khoaVien;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public Date getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(Date birthDay) {
        this.birthDay = birthDay;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }
    public abstract void showInfo();
       
}
