/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datvexe;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.ListSelectionModel;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author huynh
 */
public class ShowGaraList extends javax.swing.JFrame {
    DefaultTableModel dtf;
    DatVeXe datvexe = new DatVeXe(); 
        Connection connection = datvexe.layKetNoi();
    
    /**
     * Creates new form ManageGara
     */
    public ShowGaraList() {
        initComponents();
        
        performed(connection);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        tbListGaras = new javax.swing.JTable();
        btDelGara = new javax.swing.JButton();
        btUpdateGara = new javax.swing.JButton();
        btViewDetail = new javax.swing.JButton();
        ckShowAll = new javax.swing.JCheckBox();
        jLabel2 = new javax.swing.JLabel();
        txgaraName = new javax.swing.JTextField();
        btSearch = new javax.swing.JButton();
        jLabel12 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        jPanel2.setPreferredSize(new java.awt.Dimension(1280, 720));
        jPanel2.setLayout(null);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 51, 51));
        jLabel1.setText("DANH SÁCH NHÀ XE");
        jPanel2.add(jLabel1);
        jLabel1.setBounds(470, 60, 290, 40);

        jButton1.setBackground(new java.awt.Color(0, 0, 255));
        jButton1.setText("Quay lại");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jPanel2.add(jButton1);
        jButton1.setBounds(1060, 50, 120, 40);

        tbListGaras.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Tên nhà xe", "Đánh giá", "Giấy phép kinh doanh", "Số điện thoại"
            }
        ));
        jScrollPane1.setViewportView(tbListGaras);

        jPanel2.add(jScrollPane1);
        jScrollPane1.setBounds(190, 212, 890, 400);

        btDelGara.setBackground(new java.awt.Color(0, 0, 255));
        btDelGara.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        btDelGara.setForeground(new java.awt.Color(255, 255, 255));
        btDelGara.setText("Xóa nhà xe");
        btDelGara.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btDelGaraActionPerformed(evt);
            }
        });
        jPanel2.add(btDelGara);
        btDelGara.setBounds(870, 640, 210, 40);

        btUpdateGara.setBackground(new java.awt.Color(0, 0, 255));
        btUpdateGara.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        btUpdateGara.setForeground(new java.awt.Color(255, 255, 255));
        btUpdateGara.setText("Cập nhật thông tin nhà xe");
        btUpdateGara.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btUpdateGaraActionPerformed(evt);
            }
        });
        jPanel2.add(btUpdateGara);
        btUpdateGara.setBounds(510, 640, 290, 40);

        btViewDetail.setBackground(new java.awt.Color(0, 0, 255));
        btViewDetail.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        btViewDetail.setForeground(new java.awt.Color(255, 255, 255));
        btViewDetail.setText("Xem chi tiết");
        btViewDetail.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btViewDetailActionPerformed(evt);
            }
        });
        jPanel2.add(btViewDetail);
        btViewDetail.setBounds(190, 640, 240, 40);

        ckShowAll.setBackground(new java.awt.Color(0, 0, 255));
        ckShowAll.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        ckShowAll.setForeground(new java.awt.Color(255, 255, 255));
        ckShowAll.setText("Hiển thị toàn bộ danh sách");
        ckShowAll.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                ckShowAllItemStateChanged(evt);
            }
        });
        ckShowAll.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ckShowAllActionPerformed(evt);
            }
        });
        jPanel2.add(ckShowAll);
        ckShowAll.setBounds(920, 150, 190, 40);

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(0, 0, 255));
        jLabel2.setText("Tìm kiếm theo tên nhà xe:");
        jPanel2.add(jLabel2);
        jLabel2.setBounds(50, 160, 170, 30);

        txgaraName.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jPanel2.add(txgaraName);
        txgaraName.setBounds(240, 160, 240, 30);

        btSearch.setBackground(new java.awt.Color(0, 0, 255));
        btSearch.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        btSearch.setForeground(new java.awt.Color(255, 255, 255));
        btSearch.setText("Tìm");
        btSearch.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btSearchActionPerformed(evt);
            }
        });
        jPanel2.add(btSearch);
        btSearch.setBounds(510, 153, 130, 40);

        jLabel12.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Pic/iconTong.png"))); // NOI18N
        jPanel2.add(jLabel12);
        jLabel12.setBounds(50, 20, 160, 123);

        jLabel4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Pic/BackGround.jpg"))); // NOI18N
        jPanel2.add(jLabel4);
        jLabel4.setBounds(0, 0, 1290, 720);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btDelGaraActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btDelGaraActionPerformed
        if(tbListGaras.getSelectedRow()==-1) return;
        
        
        
        String sql = "UPDATE Gara SET Active='false',Account=NULL WHERE Gara_Name=?";
        String sql2 = "SELECT Account from Gara where Gara_Name=?";
        String sql3 = "DELETE Account where Account=?";
        String garaName = "";
        String account = ""; 
        garaName = (String) tbListGaras.getValueAt(tbListGaras.getSelectedRow(),0);
        
        
        int confirm = JOptionPane.showConfirmDialog(rootPane,"Xác nhận thao tác xóa" ,"Bạn có chắc chắn xóa nhà xe \n"+garaName, JOptionPane.YES_NO_OPTION);
                
        if(confirm ==JOptionPane.NO_OPTION){        
                JOptionPane.showMessageDialog(rootPane, "Thao tác xóa bị hủy");
        }else if(confirm ==JOptionPane.YES_OPTION){
            PreparedStatement pstt;
        try {
            PreparedStatement pstt2 = connection.prepareStatement(sql2);
            pstt2.setString(1, garaName);
            ResultSet rs2 = pstt2.executeQuery(); 
            if(rs2.next()){
                account = rs2.getString(1);
            }
         } catch (SQLException ex) {
                Logger.getLogger(ShowGaraList.class.getName()).log(Level.SEVERE, null, ex);
            }
           
        
        
        
            //cap nhat trang thai: active = false, account = NULL
        try {
            pstt = connection.prepareStatement(sql);
            pstt.setString(1, garaName);
            int result = pstt.executeUpdate();
            if(result>0){
                
            
            }
        } catch (SQLException ex) {
            Logger.getLogger(ShowStaffList.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        PreparedStatement pstt3;
            try {
                pstt3 = connection.prepareStatement(sql3);
                pstt3.setString(1, account);
                int x= pstt3.executeUpdate();
                if(x>0){
                    JOptionPane.showMessageDialog(rootPane, "Xóa nhà xe thành công!");
                    performed(connection);
                }
            } catch (SQLException ex) {
                Logger.getLogger(ShowGaraList.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
                
    }//GEN-LAST:event_btDelGaraActionPerformed

    private void btUpdateGaraActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btUpdateGaraActionPerformed
        if(tbListGaras.getSelectedRow()==-1) return ; 
        
        
        String sql = "select Gara_Picture,Account,Gara_Review from Gara where Gara_Name=?";
        String sql2= "select password from Account where account = ?"; 
        
        
        String garaName = (String) tbListGaras.getValueAt(tbListGaras.getSelectedRow(),0);
        String picture ="";
        String account="";
        String password="";
        
        String review = (String) tbListGaras.getValueAt(tbListGaras.getSelectedRow(),1);
        float garaPoint = 0;
        String BusResNum = (String) tbListGaras.getValueAt(tbListGaras.getSelectedRow(),2);
        String active = (String) tbListGaras.getValueAt(tbListGaras.getSelectedRow(),3);
        String phone =(String) tbListGaras.getValueAt(tbListGaras.getSelectedRow(),4);
        PreparedStatement pstt;
        try {
            pstt = connection.prepareStatement(sql);
        pstt.setString(1, garaName);
        ResultSet rs = pstt.executeQuery(); 
        if(rs.next()){
            picture = rs.getString(1);
            account = rs.getString(2);
            garaPoint = rs.getFloat(3);
        }
        } catch (SQLException ex) {
            Logger.getLogger(ShowGaraList.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        PreparedStatement pstt2;
        try {
            pstt2 = connection.prepareStatement(sql2);
            pstt2.setString(1, account);
            ResultSet rs = pstt2.executeQuery();
            if(rs.next()){
                password = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ShowGaraList.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        UpGara upGara = new UpGara(this, rootPaneCheckingEnabled,garaName,picture,review,garaPoint,BusResNum,active,account, password,phone);
        upGara.setLocationRelativeTo(null);
        upGara.setVisible(true);
        performed(connection);
    }//GEN-LAST:event_btUpdateGaraActionPerformed

    private void btViewDetailActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btViewDetailActionPerformed
        
        if(tbListGaras.getSelectedRow()==-1) return; 
       
        
        String sql = "select Gara_Picture,Account from Gara where Gara_Name=?";
        String sql2= "select password from Account where account = ?"; 
        
        String garaName = (String) tbListGaras.getValueAt(tbListGaras.getSelectedRow(),0);
        String picture ="";
        String review = (String) tbListGaras.getValueAt(tbListGaras.getSelectedRow(),1);
        String BusResNum = (String) tbListGaras.getValueAt(tbListGaras.getSelectedRow(),2);
        String active = (String) tbListGaras.getValueAt(tbListGaras.getSelectedRow(),3);
        String account=""; 
        String password=""; 
        PreparedStatement pstt;
        try {
            pstt = connection.prepareStatement(sql);
        pstt.setString(1, garaName);
        ResultSet rs = pstt.executeQuery(); 
        if(rs.next()){
            picture = rs.getString(1);
            account = rs.getString(2);
        }
        } catch (SQLException ex) {
            Logger.getLogger(ShowGaraList.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        PreparedStatement pstt2;
        try {
            pstt2 = connection.prepareStatement(sql2);
            pstt2.setString(1, account);
            ResultSet rs = pstt2.executeQuery();
            if(rs.next()){
                password = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ShowGaraList.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        ViewDetailGara viewDetailGara = new ViewDetailGara(this, rootPaneCheckingEnabled,garaName,picture,review,BusResNum,active,account, password);
        viewDetailGara.setLocationRelativeTo(null);
        viewDetailGara.setVisible(true);
    }//GEN-LAST:event_btViewDetailActionPerformed

    private void btSearchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btSearchActionPerformed
       String garaName = txgaraName.getText();
       garaName = garaName.trim();
       ckShowAll.setSelected(false);
       
      
        performedDueName(connection, garaName);
       
    }//GEN-LAST:event_btSearchActionPerformed

    private void ckShowAllItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_ckShowAllItemStateChanged
        if(ckShowAll.isSelected()){
            performed(connection);
        }
    }//GEN-LAST:event_ckShowAllItemStateChanged

    private void ckShowAllActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ckShowAllActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_ckShowAllActionPerformed

    private void txgaraNameActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txgaraNameActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txgaraNameActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        this.dispose();
        
        ManageStaff managerStaff = new ManageStaff();
        managerStaff.setLocationRelativeTo(null);
        managerStaff.setVisible(true);
        
    }//GEN-LAST:event_jButton1ActionPerformed

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
            java.util.logging.Logger.getLogger(ShowGaraList.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ShowGaraList.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ShowGaraList.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ShowGaraList.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ShowGaraList().setVisible(true);
            }
        });
    }
    public void performedActiveGaras(DefaultTableModel dtf, Connection conn){
        String sql = "SELECT * FROM Gara where active = 'True'"; 
        
        
        
        ResultSet rs; 
        try { 
            Statement stt = conn.createStatement();
            rs = stt.executeQuery(sql); 
            while(rs.next()){
            String garaName = rs.getString(1);
            float garaPoint = rs.getFloat(3);
            String phone = rs.getString(7);
            String garaReview=""; 
            if(garaPoint>=1 && garaPoint<2){
                garaReview = "Rất tệ";
            }else if(garaPoint>=2 && garaPoint<3){
                garaReview = "Tệ";
            }else if(garaPoint>=3 && garaPoint<4){
                garaReview = "Tạm ổn";
            }else if(garaPoint>=4 && garaPoint<4.5){
                garaReview = "Tốt";
            }else if(garaPoint>=4.5){
                garaReview = "Tuyệt vời";
            }else if(garaPoint==-1){
                garaReview = "Chưa được đánh giá";
            }
            String Bus_Res_number = rs.getString(4);
            boolean active = rs.getBoolean(5);
            String statement; 
            if(active==true) statement = "Đang hợp tác";
            else statement = "Ngừng hợp tác";
               
            dtf.addRow(new Object[]{garaName,garaReview,Bus_Res_number,statement,phone});
            }
        } catch (SQLException ex) {
            Logger.getLogger(ShowStaffList.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
    public void performedInActiveGaras(DefaultTableModel dtf,Connection conn){
        String sql = "SELECT * FROM Gara where active = 'False'"; 
        
        ResultSet rs; 
        try { 
            Statement stt = conn.createStatement();
            rs = stt.executeQuery(sql); 
            while(rs.next()){
            String garaName = rs.getString(1);
            float garaPoint = rs.getFloat(3);
            String phone = rs.getString(7);
            String garaReview=""; 
            if(garaPoint>=1 && garaPoint<2){
                garaReview = "Rất tệ";
            }else if(garaPoint>=2 && garaPoint<3){
                garaReview = "Tệ";
            }else if(garaPoint>=3 && garaPoint<4){
                garaReview = "Tạm ổn";
            }else if(garaPoint>=4 && garaPoint<4.5){
                garaReview = "Tốt";
            }else if(garaPoint>=4.5){
                garaReview = "Tuyệt vời";   
            }else if(garaPoint==-1){
                garaReview = "Chưa được đánh giá";   
            }
            String Bus_Res_number = rs.getString(4);
            
            String statement = "Ngừng hợp tác";
            
            
            dtf.addRow(new Object[]{garaName,garaReview,Bus_Res_number,statement,phone});
            
            }
        } catch (SQLException ex) {
            Logger.getLogger(ShowStaffList.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
    public void performed(Connection conn){
        dtf = new DefaultTableModel();
        ListSelectionModel listSelectionModel = tbListGaras.getSelectionModel(); 
        listSelectionModel.setSelectionMode(listSelectionModel.SINGLE_SELECTION);
        tbListGaras.setModel(dtf);
        
        
        dtf.addColumn("Tên nhà xe");
        dtf.addColumn("Đánh giá");
        dtf.addColumn("Giấy phép kinh doanh");
        dtf.addColumn("Trạng thái");
        dtf.addColumn("Số điện thoại");
        performedActiveGaras(dtf, conn);
        performedInActiveGaras(dtf,conn);
    }
    public void performedDueName(Connection conn, String name){
        dtf = new DefaultTableModel();
        ListSelectionModel listSelectionModel = tbListGaras.getSelectionModel(); 
        listSelectionModel.setSelectionMode(listSelectionModel.SINGLE_SELECTION);
        tbListGaras.setModel(dtf);
        
        
        dtf.addColumn("Tên nhà xe");
        dtf.addColumn("Đánh giá");
        dtf.addColumn("Giấy phép kinh doanh");
        dtf.addColumn("Trạng thái");
        String sql = "SELECT * FROM Gara where Gara_Name like N'%"+name+"%'"; 
        
        
        
        ResultSet rs; 
        try { 
            Statement stt = conn.createStatement();
            rs = stt.executeQuery(sql); 
            while(rs.next()){
            String garaName = rs.getString(1);
            float garaPoint = rs.getFloat(3);
            String garaReview=""; 
            if(garaPoint>=1 && garaPoint<2){
                garaReview = "Rất tệ";
            }else if(garaPoint>=2 && garaPoint<3){
                garaReview = "Tệ";
            }else if(garaPoint>=3 && garaPoint<4){
                garaReview = "Tạm ổn";
            }else if(garaPoint>=4 && garaPoint<4.5){
                garaReview = "Tốt";
            }else if(garaPoint>=4.5){
                garaReview = "Tuyệt vời";
            }else if(garaPoint==-1){
                garaReview = "Chưa được đánh giá";
            }
            String Bus_Res_number = rs.getString(4);
            boolean active = rs.getBoolean(5);
            String statement; 
            if(active==true) statement = "Đang hợp tác";
            else statement = "Ngừng hợp tác";
               
            dtf.addRow(new Object[]{garaName,garaReview,Bus_Res_number,statement});
            }
        } catch (SQLException ex) {
            Logger.getLogger(ShowStaffList.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btDelGara;
    private javax.swing.JButton btSearch;
    private javax.swing.JButton btUpdateGara;
    private javax.swing.JButton btViewDetail;
    private javax.swing.JCheckBox ckShowAll;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable tbListGaras;
    private javax.swing.JTextField txgaraName;
    // End of variables declaration//GEN-END:variables
}
