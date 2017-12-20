/*
* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
*/
package view;

import PDF.PDFF;
import java.awt.Desktop;
import java.awt.Toolkit;
import java.io.File;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.Normalizer;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import javax.swing.ComboBoxModel;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JFileChooser;
import javax.swing.JTable;
import static javax.swing.WindowConstants.DISPOSE_ON_CLOSE;
import javax.swing.table.DefaultTableModel;
import javax.xml.ws.Service;
import model.ServiceModel;

/**
 *
 * @author chunamanh
 */
public class KeKhaiFrame extends javax.swing.JFrame {
    
    /**
     * Creates new form KeKhaiFrame
     */
    private String maGiangVien = "";
    
    public KeKhaiFrame(String maGiangVien, String tenGiangVien) {
        initComponents();
        setLocationRelativeTo(null);
        setTitle("Phân công đồ án- khối lượng môn học cho lớp");
        setIconImage(Toolkit.getDefaultToolkit().getImage(getClass().getResource("/drawable/blue_library.png")));
        setDefaultCloseOperation(DISPOSE_ON_CLOSE);
        
        if (maGiangVien.equalsIgnoreCase("admin")) {           
           fillComboBox();
        } else {
            tenGiangVienCb.addItem(tenGiangVien);
        }
        
        updateTable("");
    }
    
    private void fillComboBox() {
        try {
            ArrayList<String> dsGiangVien = new ArrayList<>();
            String sqlQuery = "SELECT * FROM giangVien;";
            ResultSet rs = ServiceModel.getResultSetFromSQLQuery(sqlQuery, "giang vien");
            while (rs.next()) {
                String tenDayDu = rs.getObject(2).toString() + ' ' + rs.getObject(3).toString();
                dsGiangVien.add(tenDayDu);
                tenGiangVienCb.addItem(tenDayDu);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(KeKhaiFrame.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jDialog1 = new javax.swing.JDialog();
        jFileChooser1 = new javax.swing.JFileChooser();
        jPanel5 = new javax.swing.JPanel();
        tuKyCB = new javax.swing.JComboBox<>();
        jScrollPane1 = new javax.swing.JScrollPane();
        phanCongTable = new javax.swing.JTable();
        denKyCb = new javax.swing.JComboBox<>();
        jLabel26 = new javax.swing.JLabel();
        jLabel27 = new javax.swing.JLabel();
        tenGiangVienCb = new javax.swing.JComboBox<>();
        jLabel28 = new javax.swing.JLabel();
        capNhatBtn = new javax.swing.JButton();
        inBtn = new javax.swing.JButton();

        javax.swing.GroupLayout jDialog1Layout = new javax.swing.GroupLayout(jDialog1.getContentPane());
        jDialog1.getContentPane().setLayout(jDialog1Layout);
        jDialog1Layout.setHorizontalGroup(
            jDialog1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jDialog1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jFileChooser1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jDialog1Layout.setVerticalGroup(
            jDialog1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jDialog1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jFileChooser1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        tuKyCB.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "20141", "20142", "20143", "20151", "20152", "20153", "20161", "20162", "20163", "20171", "20172" }));

        phanCongTable.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane1.setViewportView(phanCongTable);

        denKyCb.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "20141", "20142", "20143", "20151", "20152", "20153", "20161", "20162", "20163", "20171", "20172" }));
        denKyCb.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                denKyCbActionPerformed(evt);
            }
        });

        jLabel26.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jLabel26.setText("Từ kỳ:");

        jLabel27.setText("Đến kỳ:");

        tenGiangVienCb.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { " " }));
        tenGiangVienCb.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                tenGiangVienCbActionPerformed(evt);
            }
        });

        jLabel28.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jLabel28.setText("Giảng viên:");

        capNhatBtn.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        capNhatBtn.setText("Cập nhật");
        capNhatBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                capNhatBtnActionPerformed(evt);
            }
        });

        inBtn.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        inBtn.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/print-resize.png"))); // NOI18N
        inBtn.setText("Xuất báo cáo");
        inBtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                inBtnActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel5Layout = new javax.swing.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addGap(7, 7, 7)
                .addComponent(jLabel26)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(tuKyCB, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel27)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(denKyCb, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(51, 51, 51)
                .addComponent(jLabel28, javax.swing.GroupLayout.PREFERRED_SIZE, 85, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(tenGiangVienCb, javax.swing.GroupLayout.PREFERRED_SIZE, 159, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(capNhatBtn)
                .addContainerGap())
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 1031, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel5Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(inBtn)
                .addGap(20, 20, 20))
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addGap(14, 14, 14)
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(tuKyCB, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(denKyCb, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel26)
                    .addComponent(jLabel27)
                    .addComponent(tenGiangVienCb, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel28)
                    .addComponent(capNhatBtn))
                .addGap(27, 27, 27)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 347, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(inBtn)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents
    
    private void capNhatBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_capNhatBtnActionPerformed
        updateTable(maGiangVien);
    }//GEN-LAST:event_capNhatBtnActionPerformed
    
    private void tenGiangVienCbActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_tenGiangVienCbActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_tenGiangVienCbActionPerformed
    
    private void denKyCbActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_denKyCbActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_denKyCbActionPerformed

    private void inBtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_inBtnActionPerformed
        infileTest(phanCongTable, "Kê khai");
    }//GEN-LAST:event_inBtnActionPerformed
    
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
            java.util.logging.Logger.getLogger(KeKhaiFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(KeKhaiFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(KeKhaiFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(KeKhaiFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        
        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new KeKhaiFrame("admin", "").setVisible(true);
            }
        });
    }
    
    private void updateTable(String tenGiangVien) {
        try {
            // Lay ma giang vien tu combobox vi ten giang vien khong hoat dong
            int indexPath = tenGiangVienCb.getSelectedIndex();
//            String maGiangVien = "";
//            if (indexPath < 10 && indexPath > 0) {
//                maGiangVien = "GV000" + indexPath;
//            } else {
//                maGiangVien = "GV00" + indexPath;
//            }
            
//            String url = covertStringToURL(tenGiangVienCb.getSelectedItem().toString());
            
            String blankQuery = "call keKhaiPhanCongHuongDan('%s','%s','%s','%s')";
            String sqlQuery = String.format(blankQuery,
                    maGiangVien,
                    tuKyCB.getSelectedItem().toString(),
                    denKyCb.getSelectedItem().toString(),
                    tenGiangVienCb.getSelectedItem().toString()
            );
            DefaultTableModel model = ServiceModel.getTableModelFromSQLQuery(sqlQuery, "phan cong huong dan theo giang vien");
            phanCongTable.setModel(model);
        } catch (SQLException ex) {
            Logger.getLogger(KeKhaiFrame.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public String covertStringToURL(String str) {
        try {
            String temp = Normalizer.normalize(str, Normalizer.Form.NFD);
            Pattern pattern = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
            return pattern.matcher(temp).replaceAll("").toLowerCase().replaceAll("đ", "d");
        } catch (Exception e) {
            
        }
        return "";
    }
    
    private void infileTest(JTable table, String tieuDe) {
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
        String target = tieuDe;
        PDFF.makePDF(file, target, ngaythangnam, table); 
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
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton capNhatBtn;
    private javax.swing.JComboBox<String> denKyCb;
    private javax.swing.JButton inBtn;
    private javax.swing.JDialog jDialog1;
    private javax.swing.JFileChooser jFileChooser1;
    private javax.swing.JLabel jLabel26;
    private javax.swing.JLabel jLabel27;
    private javax.swing.JLabel jLabel28;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable phanCongTable;
    private javax.swing.JComboBox<String> tenGiangVienCb;
    private javax.swing.JComboBox<String> tuKyCB;
    // End of variables declaration//GEN-END:variables
}
