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
public class BangGiaoVien {
    String magv;
    String hovatendem;
    String ten;
    String gtinh;
    String hocham;
    String hocvi;
    Date ngsinh;
    String chucvu;
    String dt;
    String email;
    String diachi;
    String bomon;
    public BangGiaoVien(String magv,String hovatendem,String ten,
            String gtinh,String hocham,String hocvi,Date ngsinh,String chucvu,String dt,String email,String diachi,String bomon){
        this.magv=magv;
        this.hovatendem=hovatendem;
        this.ten=ten;
        this.gtinh=gtinh;
        this.hocham=hocham;
        this.hocvi=hocvi;
        this.ngsinh=ngsinh;
        this.chucvu=chucvu;
        this.dt=dt ;
        this.email=email;
        this.diachi=diachi;
        this.bomon=bomon;
                
    }
    public BangGiaoVien(String magv){
        this.magv=magv;
    }

    public String getHovatendem() {
        return hovatendem;
    }

    public void setHovatendem(String hovatendem) {
        this.hovatendem = hovatendem;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    

    public String getMagv() {
        return magv;
    }

    public void setMagv(String magv) {
        this.magv = magv;
    }

    public String getGtinh() {
        return gtinh;
    }

    public void setGtinh(String gtinh) {
        this.gtinh = gtinh;
    }

    public String getHocham() {
        return hocham;
    }

    public void setHocham(String hocham) {
        this.hocham = hocham;
    }

    public String getHocvi() {
        return hocvi;
    }

    public void setHocvi(String hocvi) {
        this.hocvi = hocvi;
    }

    public Date getNgsinh() {
        return ngsinh;
    }

    public void setNgsinh(Date ngsinh) {
        this.ngsinh = ngsinh;
    }

    public String getChucvu() {
        return chucvu;
    }

    public void setChucvu(String chucvu) {
        this.chucvu = chucvu;
    }

    public String getDt() {
        return dt;
    }

    public void setDt(String dt) {
        this.dt = dt;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getBomon() {
        return bomon;
    }

    public void setBomon(String bomon) {
        this.bomon = bomon;
    }
    
    
    
}
