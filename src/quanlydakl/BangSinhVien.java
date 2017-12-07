/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quanlydakl;

import java.sql.Date;

/**
 *
 * @author hoan
 */
public class BangSinhVien {
    int massv;
    String hoten;
    Date nsinh;
    String gtinh;
    String lop;
    String khoa;
    String email;
    String dt;
    String quequan;
    public BangSinhVien(int massv,String hoten,Date nsinh,String gtinh,String lop,String khoa,String email,String dt,String quequan){
        this.massv=massv;
        this.hoten=hoten;
        this.nsinh=nsinh;
        this.gtinh=gtinh;
        this.lop=lop;
        this.khoa=khoa;
        this.email=email;
        this.dt=dt;
        this.quequan=quequan;       
    }

    public int getMassv() {
        return massv;
    }

    public void setMassv(int massv) {
        this.massv = massv;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public Date getNsinh() {
        return nsinh;
    }

    public void setNsinh(Date nsinh) {
        this.nsinh = nsinh;
    }

    public String getGtinh() {
        return gtinh;
    }

    public void setGtinh(String gtinh) {
        this.gtinh = gtinh;
    }

    public String getLop() {
        return lop;
    }

    public void setLop(String lop) {
        this.lop = lop;
    }

    public String getKhoa() {
        return khoa;
    }

    public void setKhoa(String khoa) {
        this.khoa = khoa;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDt() {
        return dt;
    }

    public void setDt(String dt) {
        this.dt = dt;
    }

    public String getQuequan() {
        return quequan;
    }

    public void setQuequan(String quequan) {
        this.quequan = quequan;
    }
    
    
    
}
