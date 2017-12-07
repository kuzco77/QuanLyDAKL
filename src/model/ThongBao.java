/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nguye
 */
public class ThongBao {
    private String tieuDe;
    private String noiDungThongBao;
    private Date ngayDang;
    private Date ngaySua;
    private boolean quanTrong;
    
    public ThongBao(){}
    public ThongBao(String tieuDe,String noiDung,boolean quanTrong){
        this.tieuDe = tieuDe;
        this.noiDungThongBao = noiDung;
        this.quanTrong = quanTrong; 
    }
    
    private Date ngayDang(){
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date(); 
        String stringDate = dateFormat.format(date);//Định dạng thời gian theo trên
        System.out.println("Date: " + stringDate);
     return date;
    }
    /**
     * Dang date sẽ được format thành string có dạng  
     * yyyy-MM-dd HH:mm:ss
     */
    public String ngayDangToString(Date date){
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String stringDate = dateFormat.format(date);
        return stringDate;
    }
    
    public String getTieuDe() {
        return tieuDe;
    }

    public void setTieuDe(String tieuDe) {
        this.tieuDe = tieuDe;
    }

    public String getNoiDungThongBao() {
        return noiDungThongBao;
    }

    public void setNoiDungThongBao(String noiDungThongBao) {
        this.noiDungThongBao = noiDungThongBao;
    }

    public Date getNgayDang() {
        return ngayDang;
    }

    public void setNgayDang(Date ngayDang) {
        this.ngayDang = ngayDang;
    }

    public boolean isUuTien() {
        return quanTrong;
    }

    public void setUuTien(boolean uuTien) {
        this.quanTrong = uuTien;
    }
    
    
    
}
