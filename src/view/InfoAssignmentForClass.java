/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import PDF.PDFF;
import conn.ConnectionToDatabase;
import static conn.ConnectionToDatabase.getJDBCConnection;
import java.awt.Desktop;
import java.awt.Toolkit;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JComboBox;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import model.ServiceModel;
import quanlydakl.BangChitietPhanCongHD;
import quanlydakl.BangPhanCongHuongDan;

/**
 *
 * @author Th016
 */
public class InfoAssignmentForClass extends javax.swing.JFrame {

    /**
     * Creates new form InfoAssignmentForClass
     */
    private static String Banghocphan="hocphan";
    private static String Banggiangvien="giangvien";
    private static String Bangloaihinh="loaihinh";
    private static String MaHocphan="maHocPhan";
    private static String MaLoaiHinh="maLoaiHinh";
    private static String MaGiangvien="maGiangVien";
    
    private String maGiangVien = "";
    public InfoAssignmentForClass(String maGiangVien) {
        initComponents();
        setLocationRelativeTo(null);
        
        setTitle("Phân công đồ án- khối lượng môn học cho lớp");
        setIconImage(Toolkit.getDefaultToolkit().getImage(getClass().getResource("/drawable/blue_library.png")));
        setDefaultCloseOperation(DISPOSE_ON_CLOSE);
        fillcombox(Banghocphan, MaHocphan, jComboBox_mahocphan);
        fillcombox(Banggiangvien, MaGiangvien, maGiangVienCb);
        fillcombox(Bangloaihinh, MaLoaiHinh, jComboBox_Maloaihinh);
//        showtt_PCHD_totable();

        if (!maGiangVien.equals("admin")) {
            this.maGiangVien = maGiangVien;
            maGiangVienCb.setEditable(false);
        }
        updateTable();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    // load tất cả các cột
    private void fillcombox(String tenbang,String thuoctinh,JComboBox jB){
        Connection conn=ConnectionToDatabase.getJDBCConnection();
        String sql="SELECT * FROM "+tenbang;
        Statement st;
        ResultSet rs;
        try {
            st=conn.createStatement();
            rs=st.executeQuery(sql);
            while(rs.next()){
                String name=rs.getString(thuoctinh);
                jB.addItem(String.valueOf(name));
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(InfoAssignmentForClass.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
     public ArrayList<BangPhanCongHuongDan> getListPCHD(){
       ArrayList<BangPhanCongHuongDan> danhsachPCHD=new ArrayList<BangPhanCongHuongDan>();
       Connection conn=getJDBCConnection();
       String sql="SELECT * FROM quanlyphancongdakl.phanconghuongdan";
       Statement st;
       ResultSet rs;
        try {
            st=conn.createStatement();
            rs=st.executeQuery(sql);
            BangPhanCongHuongDan s;
            while(rs.next())
            {
                s=new BangPhanCongHuongDan(
                        rs.getString("maLop"),
                        rs.getString("maLoaiHinh"),
                        rs.getInt("hocKy"),
                        rs.getString("maHocPhan"),
                        rs.getString("maGiangVien"),
                        rs.getDate("batDau"),
                        rs.getDate("ketThuc")                       
                );
                danhsachPCHD.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(InfoTeacher2.class.getName()).log(Level.SEVERE, null, ex);
        }
        return danhsachPCHD;
    }
    public void executeSQLquery(String query , String message){
        Connection conn=getJDBCConnection();
        Statement st;
        try {
            st=conn.createStatement();
            if((st.executeUpdate(query))==1)
            {
                // refresh jatable data
                DefaultTableModel model=(DefaultTableModel)phanCongTable.getModel();
                // ham nay dung de reset lai toan bo du lieu nhe
                model.setRowCount(0);
//                showtt_PCHD_totable();
                updateTable();
                JOptionPane.showMessageDialog(null, "Data" +message+"Sucessfully");
            }
            else{
                JOptionPane.showMessageDialog(null, "Data no"+message);
            }
        } catch (Exception ex) {
           ex.printStackTrace();
        }
    }
    public void showtt_PCHD_totable(){
        ArrayList<BangPhanCongHuongDan> list=getListPCHD();
        // gọi đến bảng
        DefaultTableModel model=(DefaultTableModel)phanCongTable.getModel();
        Object[] row=new Object[7];
        for(int i=0;i<list.size();i++){
            row[0]=list.get(i).getMalop();
            row[1]=list.get(i).getMaloaihinh();
            row[2]=list.get(i).getHocky();
            row[3]=list.get(i).getMahocphan();
            row[4]=list.get(i).getMagiangvien();
            row[5]=list.get(i).getBatdau();
            row[6]=list.get(i).getKetthuc();
            model.addRow(row);
        }
    } 
    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jDialog1 = new javax.swing.JDialog();
        jFileChooser1 = new javax.swing.JFileChooser();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jSeparator1 = new javax.swing.JSeparator();
        jLabel2 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        maLopTf = new javax.swing.JTextField();
        jTextField_Hocki = new javax.swing.JTextField();
        jComboBox_Maloaihinh = new javax.swing.JComboBox<>();
        jComboBox_mahocphan = new javax.swing.JComboBox<>();
        maGiangVienCb = new javax.swing.JComboBox<>();
        jDateChooser_BatDau = new com.toedter.calendar.JDateChooser();
        jDateChooser_KetThuc = new com.toedter.calendar.JDateChooser();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jButton6 = new javax.swing.JButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        phanCongTable = new javax.swing.JTable();
        xemChiTietPhanCongBtn = new javax.swing.JButton();

        javax.swing.GroupLayout jDialog1Layout = new javax.swing.GroupLayout(jDialog1.getContentPane());
        jDialog1.getContentPane().setLayout(jDialog1Layout);
        jDialog1Layout.setHorizontalGroup(
            jDialog1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jDialog1Layout.createSequentialGroup()
                .addComponent(jFileChooser1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );
        jDialog1Layout.setVerticalGroup(
            jDialog1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jDialog1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jFileChooser1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setText("Thông tin phân công hướng dẫn cho lớp");

        jLabel2.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N
        jLabel2.setText("Mã lớp:");

        jLabel4.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N
        jLabel4.setText("Mã loại hình:");

        jLabel5.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N
        jLabel5.setText("Mã học phần:");

        jLabel6.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N
        jLabel6.setText("Mã giảng viên:");

        jLabel7.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N
        jLabel7.setText("Bắt đầu:");

        jLabel8.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N
        jLabel8.setText("Học kì :");

        jLabel9.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N
        jLabel9.setText("Kết thúc:");

        maLopTf.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N

        jTextField_Hocki.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N

        jComboBox_Maloaihinh.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "NONE", " " }));

        jComboBox_mahocphan.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "NONE" }));

        maGiangVienCb.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "NONE" }));

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jSeparator1))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addGap(59, 59, 59)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel8, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(61, 61, 61)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jTextField_Hocki)
                    .addComponent(maLopTf)
                    .addComponent(jComboBox_Maloaihinh, 0, 261, Short.MAX_VALUE))
                .addGap(80, 80, 80)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jLabel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel6)
                    .addComponent(jLabel7, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel9, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(68, 68, 68)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jComboBox_mahocphan, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(maGiangVienCb, 0, 309, Short.MAX_VALUE)
                    .addComponent(jDateChooser_BatDau, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jDateChooser_KetThuc, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap(34, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel1)
                    .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(jLabel5)
                    .addComponent(maLopTf, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jComboBox_mahocphan, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(20, 20, 20)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(jLabel6)
                    .addComponent(jComboBox_Maloaihinh, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(maGiangVienCb, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(20, 20, 20)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel7)
                            .addComponent(jDateChooser_BatDau, javax.swing.GroupLayout.PREFERRED_SIZE, 28, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(20, 20, 20)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel9)
                            .addComponent(jDateChooser_KetThuc, javax.swing.GroupLayout.PREFERRED_SIZE, 29, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jTextField_Hocki, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jLabel8)))
                .addContainerGap(30, Short.MAX_VALUE))
        );

        jButton1.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jButton1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/plus-resize.png"))); // NOI18N
        jButton1.setText("Thêm");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton2.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jButton2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/maintenance-resize.png"))); // NOI18N
        jButton2.setText("Sửa");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jButton3.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jButton3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/delete-resize.png"))); // NOI18N
        jButton3.setText("Xóa");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jButton4.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jButton4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/icons8-cancel-resize.png"))); // NOI18N
        jButton4.setText("Hủy");

        jButton5.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jButton5.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/print-resize.png"))); // NOI18N
        jButton5.setText("Xuất báo cáo");

        jButton6.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jButton6.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/explorer-resize.png"))); // NOI18N
        jButton6.setText("Nhập từ file");

        phanCongTable.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Mã lớp", "Mã loại hình", "Kì học", "Năm học", "Mã học phần", "Mã giáo viên", "Bắt đầu", "Kết thúc"
            }
        ));
        phanCongTable.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                phanCongTableMouseClicked(evt);
            }
        });
        jScrollPane2.setViewportView(phanCongTable);

        xemChiTietPhanCongBtn.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        xemChiTietPhanCongBtn.setText("Xem chi tiết phân công");
        xemChiTietPhanCongBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                xemChiTietPhanCongBtnActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 1074, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(12, Short.MAX_VALUE))
            .addGroup(layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(xemChiTietPhanCongBtn)
                .addGap(94, 94, 94)
                .addComponent(jButton5, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jButton6, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(92, 92, 92))
            .addGroup(layout.createSequentialGroup()
                .addGap(76, 76, 76)
                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 125, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(169, 169, 169)
                .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 125, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 125, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(114, 114, 114)
                .addComponent(jButton4, javax.swing.GroupLayout.PREFERRED_SIZE, 125, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(70, 70, 70))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton1)
                    .addComponent(jButton2)
                    .addComponent(jButton3)
                    .addComponent(jButton4))
                .addGap(28, 28, 28)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 236, Short.MAX_VALUE)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton5)
                    .addComponent(jButton6)
                    .addComponent(xemChiTietPhanCongBtn))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents
    java.util.Date batdau,kethuc;
    java.sql.Date sqlBatDau;
    java.sql.Date sqlKethuc;
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
        batdau=jDateChooser_BatDau.getDate();
        sqlBatDau=new java.sql.Date(batdau.getTime());
        kethuc=jDateChooser_KetThuc.getDate();
        sqlKethuc=new java.sql.Date(kethuc.getTime());
        String query="UPDATE `quanlyphancongdakl`.`phanconghuongdan` SET "
                + "`maLoaiHinh`='"+jComboBox_Maloaihinh.getSelectedItem().toString()+"', "
                + "`hocKy`='"+jTextField_Hocki.getText()+"', "
                + "`maHocPhan`='"+jComboBox_mahocphan.getSelectedItem().toString()+"',"
                + " `maGiangVien`='"+maGiangVienCb.getSelectedItem().toString()+"',"
                + " `batDau`='"+sqlBatDau+"',"
                + " `ketThuc`='"+sqlKethuc+"'"
                + " WHERE `maLop`='"+maLopTf.getText()+"'";
        executeSQLquery(query, "Updated ");
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        batdau=jDateChooser_BatDau.getDate();
        sqlBatDau=new java.sql.Date(batdau.getTime());
        kethuc=jDateChooser_KetThuc.getDate();
        sqlKethuc=new java.sql.Date(kethuc.getTime());
        String query="INSERT INTO `quanlyphancongdakl`.`phanconghuongdan` (`maLop`, `maLoaiHinh`, `hocKy`, `maHocPhan`, `maGiangVien`, `batDau`, `ketThuc`) VALUES "
                + "('"+maLopTf.getText()+"',"
                + " '"+jComboBox_Maloaihinh.getSelectedItem().toString()+"', "
                + " '"+jTextField_Hocki.getText()+"'"
                + ", '"+jComboBox_mahocphan.getSelectedItem().toString()+"'"
                + ", '"+maGiangVienCb.getSelectedItem().toString()+"', "
                + "'"+sqlBatDau+"', "
                + "'"+sqlKethuc+"');";
        executeSQLquery(query, "Inserted ");
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        // TODO add your handling code here:
        int xoa=JOptionPane.showConfirmDialog(null, "Bạn có Muốn xóa thông tin ??","Titile",JOptionPane.DEFAULT_OPTION);
        if(xoa==JOptionPane.YES_OPTION){
            String query="DELETE FROM `quanlyphancongdakl`.`phanconghuongdan` WHERE "
                    + "`maLop`='"+maLopTf.getText()+"'";
            executeSQLquery(query, "Deleted ");           
        }
    }//GEN-LAST:event_jButton3ActionPerformed

    private void phanCongTableMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_phanCongTableMouseClicked
        // TODO add your handling code here:
        DefaultTableModel model=(DefaultTableModel) phanCongTable.getModel();
        int i =phanCongTable.getSelectedRow();
        try {
            Date batdau=new SimpleDateFormat("yyyy-MM-dd").parse((String)model.getValueAt(i, 5).toString());
            Date kethuc=new SimpleDateFormat("yyyy-MM-dd").parse((String)model.getValueAt(i, 6).toString());
        maLopTf.setText(model.getValueAt(i, 0).toString());
        jComboBox_Maloaihinh.setSelectedItem(model.getValueAt(i, 1).toString());
        jTextField_Hocki.setText(model.getValueAt(i, 2).toString());
        jComboBox_mahocphan.setSelectedItem(model.getValueAt(i, 3).toString());
        maGiangVienCb.setSelectedItem(model.getValueAt(i, 4).toString());
        jDateChooser_BatDau.setDate(batdau);
        jDateChooser_KetThuc.setDate(kethuc);  
        } catch (ParseException ex) {
            Logger.getLogger(InfoAssignmentForClass.class.getName()).log(Level.SEVERE, null, ex);
        }     
    }//GEN-LAST:event_phanCongTableMouseClicked

    private void xemChiTietPhanCongBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_xemChiTietPhanCongBtnActionPerformed
        if (maLopTf.getText().equals("")) {
            System.out.println("Ma lop de trong");
        }
        
        AssignmentDetailsForAStudent frame = new AssignmentDetailsForAStudent(maLopTf.getText());
        frame.setVisible(true);
        
        
//        try {
//            String blankQuery = "call timNCChiTietPhanCongHuongDan('%s')";
//            String sqlQuery = String.format(blankQuery, maLopTf.getText());
//            DefaultTableModel model = ServiceModel.getTableModelFromSQLQuery(sqlQuery, "hello");
//            phanCongTable.setModel(model);
//        } catch (SQLException ex) {
//            Logger.getLogger(InfoAssignmentForClass.class.getName()).log(Level.SEVERE, null, ex);
//        }
    }//GEN-LAST:event_xemChiTietPhanCongBtnActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(InfoAssignmentForClass.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(InfoAssignmentForClass.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(InfoAssignmentForClass.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(InfoAssignmentForClass.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new InfoAssignmentForClass("").setVisible(true);
            }
        });
    }
    
    private void infileTest() {
        int value;
        File file = null;
        value = jFileChooser1.showSaveDialog(null);
        if (value == JFileChooser.APPROVE_OPTION) {
            file = jFileChooser1.getSelectedFile();
        }
        LocalDate ld = LocalDate.now();
        int day = ld.getDayOfMonth();
        int month = ld.getMonthValue();
        int year = ld.getYear();
        String ngaythangnam = "Ngày " + day + " tháng " + month + " năm " + year;
        String target = "Danh sách phân công";
        PDFF.makePDF(file, target, ngaythangnam, phanCongTable);
        openOnFly(file);
    }
    
    private void openOnFly(File file) {
        if (Desktop.isDesktopSupported()) {
            
            try {
                Desktop.getDesktop().open(file);
            } catch (IOException ex) {
                Logger.getLogger(InfoStudent.class.getName()).log(Level.SEVERE, null, ex);
                System.out.println("No app or file to open");
            }
            
        }
    }
    
    private void updateTable() {
        try {
            String blankQuery = "call timNCPhanCongHuongDan('%s')";
            String sqlQuery = String.format(blankQuery, maGiangVien);
            DefaultTableModel model = ServiceModel.getTableModelFromSQLQuery(sqlQuery, "phan cong huong dan");
            phanCongTable.setModel(model);
        } catch (SQLException ex) {
            Logger.getLogger(InfoAssignmentForClass.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JComboBox<String> jComboBox_Maloaihinh;
    private javax.swing.JComboBox<String> jComboBox_mahocphan;
    private com.toedter.calendar.JDateChooser jDateChooser_BatDau;
    private com.toedter.calendar.JDateChooser jDateChooser_KetThuc;
    private javax.swing.JDialog jDialog1;
    private javax.swing.JFileChooser jFileChooser1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JTextField jTextField_Hocki;
    private javax.swing.JComboBox<String> maGiangVienCb;
    private javax.swing.JTextField maLopTf;
    private javax.swing.JTable phanCongTable;
    private javax.swing.JButton xemChiTietPhanCongBtn;
    // End of variables declaration//GEN-END:variables
}
