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
public class BangChitietPhanCongHD {
    int mssv;
    String malop;
    Float diemquatrinh;
    Float diemthi;
    String tenbaocao;
    Date ngaynopbaocao;
    int sothutu;
    public BangChitietPhanCongHD(int mssv,String malop,Float diemquatrinh,Float diemthi,String tenbaocao,Date ngaynopbaocao,int sothutu){
        this.mssv=mssv;
        this.malop=malop;
        this.diemquatrinh=diemquatrinh;
        this.diemthi=diemthi;
        this.tenbaocao=tenbaocao;
        this.ngaynopbaocao=ngaynopbaocao;
        this.sothutu=sothutu;
    }

    public int getSothutu() {
        return sothutu;
    }

    public void setSothutu(int sothutu) {
        this.sothutu = sothutu;
    }

    public int getMssv() {
        return mssv;
    }

    public void setMssv(int mssv) {
        this.mssv = mssv;
    }

    public String getMalop() {
        return malop;
    }

    public void setMalop(String malop) {
        this.malop = malop;
    }

    public Float getDiemquatrinh() {
        return diemquatrinh;
    }

    public void setDiemquatrinh(Float diemquatrinh) {
        this.diemquatrinh = diemquatrinh;
    }

    public Float getDiemthi() {
        return diemthi;
    }

    public void setDiemthi(Float diemthi) {
        this.diemthi = diemthi;
    }

    public String getTenbaocao() {
        return tenbaocao;
    }

    public void setTenbaocao(String tenbaocao) {
        this.tenbaocao = tenbaocao;
    }

    public Date getNgaynopbaocao() {
        return ngaynopbaocao;
    }

    public void setNgaynopbaocao(Date ngaynopbaocao) {
        this.ngaynopbaocao = ngaynopbaocao;
    }
    
}
