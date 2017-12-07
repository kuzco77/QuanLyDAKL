/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import static conn.ConnectionToDatabase.getJDBCConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 * @author nguyendiep
 */
public class GiangVien extends NguoiDung{
    public String maGiangVien;
    public String hoTen;
    public String gioiTinh;
    public String hocHam;
    public String hocVi;
    public Date ngaySinh;
    public String chucVu;
    public String dienThoai;
    public String email;
    public String diaChi;
    public String boMon;
    
    public GiangVien(){
        System.out.println("khởi tạo giáo viên");   
    }
    
    
    public GiangVien(String maGiangVien, String hocVi, String chucDanh, String hoTen, Date birthDay, String email, String diaChi, String sdt, String khoaVien) {
        super(hoTen, birthDay, email, diaChi, sdt, khoaVien);
        
    }
    
    static public ResultSet thucThiCauLenhSQL(String query, String message) {
        Connection conn=getJDBCConnection();
        Statement st;
        ResultSet rs = null;
        try {
            st=conn.createStatement();
            rs = st.executeQuery(query);
            
//            if((st.executeQuery(query)) == 1) {
//                JOptionPane.showMessageDialog(null, "Data" +message+"Sucessfully");
//            }
//            else {
//                JOptionPane.showMessageDialog(null, "Data had no "+message);
//            }
        } catch (Exception ex) {
           ex.printStackTrace();
        }
        return rs;
    }
    
    static public ArrayList<GiangVien> getDanhSachGiaoVien() throws SQLException {
        String sqlQuery = "SELECT * FROM quanlyphancongdakl.giangVien;";
        ResultSet rs = thucThiCauLenhSQL(sqlQuery, "Giang vien");
        ArrayList<GiangVien> danhSachGiangVien = new ArrayList<>();
        
        while (rs.next()) {
            GiangVien gv = new GiangVien();
            gv.maGiangVien = rs.getString("maGiangVien");
            gv.hoTen = rs.getNString("hoTen");
            gv.boMon = rs.getNString("boMon");
            gv.chucVu = rs.getNString("chucVu");
            gv.gioiTinh = rs.getNString("gioiTinh");
            gv.hocHam = rs.getNString("hocHam");
            gv.hocVi = rs.getNString("hocVi");
            gv.diaChi = rs.getNString("diaChi");
            gv.dienThoai = rs.getNString("dienThoai");
            gv.ngaySinh = rs.getDate("ngaySinh");
            gv.email = rs.getNString("email");
            
            danhSachGiangVien.add(gv);
        }
        return danhSachGiangVien;
    }
    
    static public void themGiangVien(GiangVien giangVien) {
        String blankQuery = "call quanlyphancongdakl.themGiangVien('%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s')";
        String sqlQuery = String.format(blankQuery, 
                giangVien.maGiangVien,
                giangVien.hoTen,
                giangVien.gioiTinh,
                giangVien.hocHam,
                giangVien.hocVi,
                giangVien.ngaySinh,
                giangVien.chucVu,
                giangVien.dienThoai,
                giangVien.email,
                giangVien.diaChi,
                giangVien.boMon);
        thucThiCauLenhSQL(sqlQuery, "Giang vien");
    }
    
    public String getMaGiangVien() {
        return maGiangVien;
    }

    public void setMaGiangVien(String maGiangVien) {
        this.maGiangVien = maGiangVien;
    }

    public String getHocVi() {
        return hocVi;
    }

    public void setHocVi(String hocVi) {
        this.hocVi = hocVi;
    }

    

    @Override
    public void showInfo() {
        System.out.println(" thông tin giảng viên"+maGiangVien);
    }
    
    public static void main(String[] args) throws SQLException {
        ResultSet rs = thucThiCauLenhSQL("SELECT * FROM quanlyphancongdakl.giangVien", "hello");
        if(rs == null){
            System.out.println("This is null");
        }
        while (rs.next()) {
            System.out.println(rs.getString(7));
    }
    }
}
