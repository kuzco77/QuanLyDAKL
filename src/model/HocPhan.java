/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author nguye
 */
public class HocPhan {
    
    private String maHocPhan;
    private String tenHocPhan;
    private String moTa;
    private int soTinChi;
    private int soTinChiHocPhi;
    private float trongSo;

    public HocPhan(String maHocPhan, String tenHocPhan, String moTa, int soTinChi, int soTinChiHocPhi, float trongSo) {
        this.maHocPhan = maHocPhan;
        this.tenHocPhan = tenHocPhan;
        this.moTa = moTa;
        this.soTinChi = soTinChi;
        this.soTinChiHocPhi = soTinChiHocPhi;
        this.trongSo = trongSo;
    }

    public String getMaHocPhan() {
        return maHocPhan;
    }

    public void setMaHocPhan(String maHocPhan) {
        this.maHocPhan = maHocPhan;
    }

    public String getTenHocPhan() {
        return tenHocPhan;
    }

    public void setTenHocPhan(String tenHocPhan) {
        this.tenHocPhan = tenHocPhan;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public int getSoTinChi() {
        return soTinChi;
    }

    public void setSoTinChi(int soTinChi) {
        this.soTinChi = soTinChi;
    }

    public int getSoTinChiHocPhi() {
        return soTinChiHocPhi;
    }

    public void setSoTinChiHocPhi(int soTinChiHocPhi) {
        this.soTinChiHocPhi = soTinChiHocPhi;
    }

    public float getTrongSo() {
        return trongSo;
    }

    public void setTrongSo(float trongSo) {
        this.trongSo = trongSo;
    }
    
    
}
