/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import conn.ConnectionToDatabase;
import static conn.ConnectionToDatabase.getJDBCConnection;
import java.awt.Color;
import java.awt.Toolkit;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;
import javax.swing.JOptionPane;
import static javax.swing.WindowConstants.DISPOSE_ON_CLOSE;
import javax.swing.table.DefaultTableModel;
import model.ServiceModel;
import quanlydakl.BangChitietPhanCongHD;
import quanlydakl.BangSinhVien;

/**
 *
 * @author Th016
 */
public class AssignmentDetailsForAStudent extends javax.swing.JFrame {

    /**
     * Creates new form AssignmentDetailsForAStudent
     */
    // b1 : lấy toàn bộ mã sinh viên trong cơ sở dư liệu
    // Nhiệm vụ sau khi chọn thêm vào 1 Mã giống nhau thì ngay lập tức nó sẽ lọc tất cả dữ liệu : mã lớp chỉ lấy mã lớp mới
    ArrayList<String> ResultListMssv;
    private ArrayList LocResult(String s){
        ArrayList<String>ResultListMssv1=new ArrayList<>();
        Connection conn=ConnectionToDatabase.getJDBCConnection();
        String sql="SELECT * FROM quanlyphancongdakl.phanconghuongdan";
        String sql1="select * from chitietphanconghuongdan\n" +
        "where mssv='"+s+"'";
        Statement st,st1;
        ResultSet rs,rs1;
        try {
            st=conn.createStatement();
            st1=conn.createStatement();
            rs=st.executeQuery(sql);
            rs1=st1.executeQuery(sql1);
            while(rs.next()){
                String malop=rs.getString("maLop");
                ResultListMssv1.add(malop);
            }
            while(rs1.next()){
                String malop1=rs1.getString("maLop");
                for(int i=0;i<ResultListMssv1.size();i++){
                    if(malop1.equals(ResultListMssv1.get(i))){
                        // remove kq
                        ResultListMssv1.remove(ResultListMssv1.get(i));
                    }
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AssignmentDetailsForAStudent.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ResultListMssv1;
    }
//     private void fillcomboxMSSV(){
//        Connection conn=ConnectionToDatabase.getJDBCConnection();
//        String sql="SELECT * FROM quanlyphancongdakl.sinhvien";
//        Statement st;
//        ResultSet rs;
//        try {
//            st=conn.createStatement();
//            rs=st.executeQuery(sql);
//            while(rs.next()){
//                int name=rs.getInt("mssv");
//                jComboBox_MSSV.addItem(String.valueOf(name));
//                
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(AssignmentDetailsForAStudent.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
     // lấy ra giá trị max của số thứ tự trong
     // Cái tội không biết đặt biến chạy trong mysql
     private int STTMax(){
         int a=0;
         Connection conn=ConnectionToDatabase.getJDBCConnection();
         String sql="select max(soThuTu) from chitietphanconghuongdan";
         Statement st;
         ResultSet rs;
        try {
            st=conn.createStatement();
            rs=st.executeQuery(sql);
            while(rs.next()){
                a=rs.getInt(1);
//                jTextField_SothuTu.setText(String.valueOf(a));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AssignmentDetailsForAStudent.class.getName()).log(Level.SEVERE, null, ex);
        }
        return a;
     }
    static int key=0;
    public AssignmentDetailsForAStudent() {
        initComponents();
        getContentPane().setBackground(Color.white);
        setLocationRelativeTo(null);
        setTitle("Phân công đồ án- khối lượng môn học cho sinh viên");
        setIconImage(Toolkit.getDefaultToolkit().getImage(getClass().getResource("/drawable/blue_library.png")));
        this.setDefaultCloseOperation(DISPOSE_ON_CLOSE);
        updateTable();
//        fillcomboxMSSV();
    }
    // thực hiện thêm các thao tác thêm sửa xóa
     public ArrayList<BangChitietPhanCongHD> getListCTHD(){
       ArrayList<BangChitietPhanCongHD> danhsachCTHD=new ArrayList<BangChitietPhanCongHD>();
       Connection conn=getJDBCConnection();
       String sql="SELECT * FROM quanlyphancongdakl.chitietphanconghuongdan";
       Statement st;
       ResultSet rs;
        try {
            st=conn.createStatement();
            rs=st.executeQuery(sql);
            BangChitietPhanCongHD s;
            while(rs.next())
            {
                s=new BangChitietPhanCongHD(
                        rs.getInt("mssv"),
                        rs.getString("maLop"),
                        rs.getFloat("diemQuaTrinh"),
                        rs.getFloat("diemThi"),
                        rs.getString("tenBaoCao"),
                        rs.getDate("NgayNopBaoCao"),
                        rs.getInt("soThuTu")
                );
                danhsachCTHD.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(InfoTeacher.class.getName()).log(Level.SEVERE, null, ex);
        }
        return danhsachCTHD;
    }
     public void executeSQLquery(String query , String message){
        Connection conn=getJDBCConnection();
        Statement st;
        try {
            st=conn.createStatement();
            if((st.executeUpdate(query))==1)
            {
                // refresh jatable data
                DefaultTableModel model=(DefaultTableModel)chiTietPhanCongBtn.getModel();
                // ham nay dung de reset lai toan bo du lieu nhe
                model.setRowCount(0);
                showtt_ChitietPC_totable();
                JOptionPane.showMessageDialog(null, "Data" +message+"Sucessfully");
            }
            else{
                JOptionPane.showMessageDialog(null, "Data no"+message);
            }
        } catch (Exception ex) {
           ex.printStackTrace();
        }
    }
    public void showtt_ChitietPC_totable(){
        ArrayList<BangChitietPhanCongHD> list=getListCTHD();
        // gọi đến bảng
        DefaultTableModel model=(DefaultTableModel)chiTietPhanCongBtn.getModel();
        Object[] row=new Object[7];
        for(int i=0;i<list.size();i++){
            row[0]=list.get(i).getMssv();
            row[1]=list.get(i).getMalop();
            row[2]=list.get(i).getDiemquatrinh();
            row[3]=list.get(i).getDiemthi();
            row[4]=list.get(i).getTenbaocao();
            row[5]=list.get(i).getNgaynopbaocao();
            row[6]=list.get(i).getSothutu();
            model.addRow(row);
        }
    }
    // thực hiện các thao tác thêm sửa xóa nhé

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jSeparator1 = new javax.swing.JSeparator();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        maLopTf = new javax.swing.JTextField();
        tenBaoCaoTf = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        diemThiTf = new javax.swing.JTextField();
        ngayNopBaoCaoDC = new com.toedter.calendar.JDateChooser();
        jLabel7 = new javax.swing.JLabel();
        mssvTf = new javax.swing.JTextField();
        diemQuaTrinhTf = new javax.swing.JTextField();
        themBtn = new javax.swing.JButton();
        suaBtn = new javax.swing.JButton();
        xoaBtn = new javax.swing.JButton();
        huyBtn = new javax.swing.JButton();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        chiTietPhanCongBtn = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));

        jLabel1.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N
        jLabel1.setText("Phân công hướng dẫn cho một sinh viên");

        jLabel2.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N
        jLabel2.setText("MSSV:");

        jLabel3.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N
        jLabel3.setText("Mã lớp:");

        jLabel4.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N
        jLabel4.setText("Tên báo cáo:");

        jLabel5.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N
        jLabel5.setText("Ngày nộp báo cáo:");

        maLopTf.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N

        tenBaoCaoTf.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N

        jLabel6.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N
        jLabel6.setText("Điểm thi:");

        diemThiTf.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N
        diemThiTf.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                diemThiTfActionPerformed(evt);
            }
        });

        jLabel7.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N
        jLabel7.setText("Điểm quá trình:");

        mssvTf.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N

        diemQuaTrinhTf.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N

        themBtn.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        themBtn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/plus-resize.png"))); // NOI18N
        themBtn.setText("Thêm");
        themBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                themBtnActionPerformed(evt);
            }
        });

        suaBtn.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        suaBtn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/maintenance-resize.png"))); // NOI18N
        suaBtn.setText("Sửa");
        suaBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                suaBtnActionPerformed(evt);
            }
        });

        xoaBtn.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        xoaBtn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/delete-resize.png"))); // NOI18N
        xoaBtn.setText("Xóa");
        xoaBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                xoaBtnActionPerformed(evt);
            }
        });

        huyBtn.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        huyBtn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/icons8-cancel-resize.png"))); // NOI18N
        huyBtn.setText("Hủy");
        huyBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                huyBtnActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jSeparator1)
                .addContainerGap())
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(91, 91, 91)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 78, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel2)
                            .addComponent(jLabel7))
                        .addGap(105, 105, 105)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(mssvTf, javax.swing.GroupLayout.PREFERRED_SIZE, 209, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(maLopTf, javax.swing.GroupLayout.PREFERRED_SIZE, 209, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(diemQuaTrinhTf, javax.swing.GroupLayout.PREFERRED_SIZE, 209, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(themBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 125, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(153, 153, 153)
                        .addComponent(suaBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 125, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(147, 147, 147)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(xoaBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 136, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(huyBtn, javax.swing.GroupLayout.PREFERRED_SIZE, 125, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel5)
                            .addComponent(jLabel6)
                            .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 124, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addComponent(ngayNopBaoCaoDC, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 212, Short.MAX_VALUE)
                            .addComponent(tenBaoCaoTf, javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(diemThiTf, javax.swing.GroupLayout.Alignment.LEADING))))
                .addGap(155, 155, 155))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel1)
                    .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(41, 41, 41)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(diemThiTf, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel6)
                    .addComponent(mssvTf, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(30, 30, 30)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(tenBaoCaoTf, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3)
                    .addComponent(jLabel4)
                    .addComponent(maLopTf, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(30, 30, 30)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel5)
                    .addComponent(ngayNopBaoCaoDC, javax.swing.GroupLayout.PREFERRED_SIZE, 29, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel7)
                        .addComponent(diemQuaTrinhTf, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 56, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(themBtn)
                    .addComponent(suaBtn)
                    .addComponent(xoaBtn)
                    .addComponent(huyBtn))
                .addContainerGap())
        );

        jButton1.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jButton1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/drawable/output_ic.png"))); // NOI18N
        jButton1.setText("Xuất báo cáo");

        jButton2.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jButton2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/drawable/input_file_ic.png"))); // NOI18N
        jButton2.setText("Nhập từ file");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        chiTietPhanCongBtn.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "MSSV", "mã lớp", "Điểm quá trình", "Điểm thi", "Báo cáo", "Ngày nộp", "Số thứ tự"
            }
        ));
        chiTietPhanCongBtn.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                chiTietPhanCongBtnMouseClicked(evt);
            }
        });
        jScrollPane2.setViewportView(chiTietPhanCongBtn);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(860, 860, 860)
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 156, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(39, 39, 39)
                        .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 162, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 28, Short.MAX_VALUE))
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.Alignment.TRAILING))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 264, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(27, 27, 27)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton2)
                    .addComponent(jButton1))
                .addGap(31, 31, 31))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void suaBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_suaBtnActionPerformed
        // TODO add your handling code here:
        // không thể update dữ liệu bởi lẽ sẽ có những dữ liệu giống nhau biết update cái nào
        // bởi vì nó không có kháo chính , làm sao bây h
        if (kiemTraSinhVien()) {
           if (kiemTraMaLop()) {
               date=ngayNopBaoCaoDC.getDate();
                sqldate=new java.sql.Date(date.getTime());

                String blankQuery = "call suaChiTietPhanCongHuongDan('%s', '%s', '%s', '%s', '%s', '%s')";
                String sqlQuery = String.format(blankQuery,
                mssvTf.getText(),
                maLopTf.getText(),
                diemQuaTrinhTf.getText(),
                diemThiTf.getText(),
                tenBaoCaoTf.getText(),
                sqldate.toString());
                ServiceModel.getResultSetFromSQLQuery(sqlQuery, "sua chi tiet huong dan");
                updateTable();
                JOptionPane.showMessageDialog(rootPane, "Sửa thành công");
           } 
        }
    }//GEN-LAST:event_suaBtnActionPerformed
    java.util.Date date;
    java.sql.Date sqldate;
    private void themBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_themBtnActionPerformed
        // TODO add your handling code here:
        // format kiểu dữ liệu Date
        
        if (kiemTraSinhVien()) {
           if (kiemTraMaLop()) {
               date=ngayNopBaoCaoDC.getDate();
                sqldate=new java.sql.Date(date.getTime());

                String blankQuery = "call themChiTietPhanCongHuongDan('%s', '%s', '%s', '%s', '%s', '%s')";
                String sqlQuery = String.format(blankQuery,
                mssvTf.getText(),
                maLopTf.getText(),
                diemQuaTrinhTf.getText(),
                diemThiTf.getText(),
                tenBaoCaoTf.getText(),
                sqldate.toString());
                ServiceModel.getResultSetFromSQLQuery(sqlQuery, "them chi tiet huong dan");
                updateTable();
                JOptionPane.showMessageDialog(rootPane, "Thêm thành công");
           } 
        }
        
        
    }//GEN-LAST:event_themBtnActionPerformed
    // nếu như ta xóa đi 1 sinh viên trong bảng sinh viên thì phải xóa trong bảng còn lại --> Xung đột
    // đã có sinh viên thì phải có phân công hướng dẫn
    private void xoaBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_xoaBtnActionPerformed
        if (kiemTraSinhVien()) {
           if (kiemTraMaLop()) {
               date=ngayNopBaoCaoDC.getDate();
                sqldate=new java.sql.Date(date.getTime());

                String blankQuery = "call xoaChiTietPhanCongHuongDan('%s', '%s')";
                String sqlQuery = String.format(blankQuery,
                mssvTf.getText(),
                maLopTf.getText());
                ServiceModel.getResultSetFromSQLQuery(sqlQuery, "them chi tiet huong dan");
                updateTable();
                JOptionPane.showMessageDialog(rootPane, " thành công");
           } 
        }
    }//GEN-LAST:event_xoaBtnActionPerformed

    private void chiTietPhanCongBtnMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_chiTietPhanCongBtnMouseClicked
        // TODO add your handling code here:
        // khi click vào bảng nó bị thay đổi dữ liệu rồi
        DefaultTableModel model=(DefaultTableModel) chiTietPhanCongBtn.getModel();
        int i=chiTietPhanCongBtn.getSelectedRow();
        try {
            // toString(): trả về giá trị của các đối tượng
            Date date=new SimpleDateFormat("yyyy-MM-dd").parse((String)model.getValueAt(i, 5).toString());
            mssvTf.setText(model.getValueAt(i, 0).toString());
            maLopTf.setText(model.getValueAt(i, 1).toString());
            diemQuaTrinhTf.setText(model.getValueAt(i, 2).toString());
            diemThiTf.setText(model.getValueAt(i, 3).toString());
            tenBaoCaoTf.setText(model.getValueAt(i, 4).toString());
            ngayNopBaoCaoDC.setDate(date);
//            ngayNopBaoCaoDC.setDate(date);            
        } catch (ParseException ex) {
            Logger.getLogger(AssignmentDetailsForAStudent.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }//GEN-LAST:event_chiTietPhanCongBtnMouseClicked

    private void diemThiTfActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_diemThiTfActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_diemThiTfActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton2ActionPerformed

    private void huyBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_huyBtnActionPerformed
        // TODO add your haXoándling code here:
    }//GEN-LAST:event_huyBtnActionPerformed

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
            java.util.logging.Logger.getLogger(AssignmentDetailsForAStudent.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(AssignmentDetailsForAStudent.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(AssignmentDetailsForAStudent.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(AssignmentDetailsForAStudent.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new AssignmentDetailsForAStudent().setVisible(true);
            }
        });
    }
    
    private Boolean kiemTraSinhVien() {
        try {
            String sqlQuery = String.format("call timSinhVien('%s', '', '', '', '', '')", mssvTf.getText());
            ResultSet rs = ServiceModel.getResultSetFromSQLQuery(sqlQuery, "kiem tra sinh vien");
            while (rs.next()) {
                if (mssvTf.getText().equals(rs.getString(1))) {
                return true;
            }
            }    
        } catch (SQLException ex) {
            Logger.getLogger(AssignmentDetailsForAStudent.class.getName()).log(Level.SEVERE, null, ex);
        }
        JOptionPane.showMessageDialog(rootPane, "Mã số sinh viên không tồn tại");
        return false;     
    }
    
    private Boolean kiemTraMaLop() {
        try {
            String sqlQuery = String.format("call timPhanCongHuongDan('%s', '', '', '', '')", maLopTf.getText());
            ResultSet rs = ServiceModel.getResultSetFromSQLQuery(sqlQuery, "kiem tra ma lop");
            while (rs.next()) {
                if (maLopTf.getText().equals(rs.getString(1))) {
                    return true;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AssignmentDetailsForAStudent.class.getName()).log(Level.SEVERE, null, ex);
        }
        JOptionPane.showMessageDialog(rootPane, "Mã lớp không tồn tại");
        return false;
    }
    
    private void updateTable() {
        try {
            String sqlQuery = "SELECT * FROM viewchiTietPhanCongHuongDan";
            DefaultTableModel model = ServiceModel.getTableModelFromSQLQuery(sqlQuery, "chi tiet phan cong huong dan");
            chiTietPhanCongBtn.setModel(model);
        } catch (SQLException ex) {
            Logger.getLogger(AssignmentDetailsForAStudent.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTable chiTietPhanCongBtn;
    private javax.swing.JTextField diemQuaTrinhTf;
    private javax.swing.JTextField diemThiTf;
    private javax.swing.JButton huyBtn;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JTextField maLopTf;
    private javax.swing.JTextField mssvTf;
    private com.toedter.calendar.JDateChooser ngayNopBaoCaoDC;
    private javax.swing.JButton suaBtn;
    private javax.swing.JTextField tenBaoCaoTf;
    private javax.swing.JButton themBtn;
    private javax.swing.JButton xoaBtn;
    // End of variables declaration//GEN-END:variables
}
