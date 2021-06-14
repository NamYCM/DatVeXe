/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datvexe;

import java.awt.Color;
import java.security.interfaces.RSAKey;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

/**
 *
 * @author Vanic
 */
public class infoStaff extends javax.swing.JFrame {

    /**
     * Creates new form infoStaff
     */
    String userName = "";
    String cmnd = "";
    public infoStaff(String userName) {
        initComponents();
        this.setDefaultCloseOperation(javax.swing.WindowConstants.HIDE_ON_CLOSE);
        getInfoStaff(userName);
        this.userName = userName;
        clear();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        txt_lastName = new javax.swing.JTextField();
        txt_staffSDT = new javax.swing.JTextField();
        txt_staffCMND = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        cbb_staffGender = new javax.swing.JComboBox<>();
        btn_updateInfoStaff = new javax.swing.JButton();
        txt_titleStaffName = new javax.swing.JLabel();
        txt_firstName = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        label_err1 = new javax.swing.JLabel();
        label_err2 = new javax.swing.JLabel();
        label_err3 = new javax.swing.JLabel();
        label_err4 = new javax.swing.JLabel();
        btn_back = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setText("Thông tin nhân viên:");

        txt_staffSDT.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txt_staffSDTActionPerformed(evt);
            }
        });

        jLabel2.setText("Họ (Last name): ");

        jLabel3.setText("CMND: ");

        jLabel4.setText("Số điện thoại:");

        jLabel5.setText("Giới tính:");

        cbb_staffGender.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "nam", "nu" }));
        cbb_staffGender.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbb_staffGenderActionPerformed(evt);
            }
        });

        btn_updateInfoStaff.setText("cập nhật thông tin ");
        btn_updateInfoStaff.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_updateInfoStaffActionPerformed(evt);
            }
        });

        txt_titleStaffName.setText("jLabel6");

        jLabel6.setText("Tên (First Name):");

        label_err1.setText("jLabel7");

        label_err2.setText("jLabel8");

        label_err3.setText("jLabel9");

        label_err4.setText("jLabel10");

        btn_back.setText("<");
        btn_back.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_backActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jLabel2)
                            .addComponent(txt_lastName, javax.swing.GroupLayout.DEFAULT_SIZE, 140, Short.MAX_VALUE)
                            .addComponent(txt_staffSDT))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                .addComponent(txt_firstName, javax.swing.GroupLayout.PREFERRED_SIZE, 140, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(107, 107, 107))
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel6)
                                    .addComponent(txt_staffCMND, javax.swing.GroupLayout.PREFERRED_SIZE, 140, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addContainerGap())))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel4)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(btn_back)
                                .addGap(36, 36, 36)
                                .addComponent(jLabel1)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txt_titleStaffName)))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 100, Short.MAX_VALUE)
                        .addComponent(jLabel3)
                        .addGap(209, 209, 209))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jLabel5)
                            .addComponent(cbb_staffGender, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(label_err1, javax.swing.GroupLayout.DEFAULT_SIZE, 238, Short.MAX_VALUE)
                            .addComponent(label_err3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(81, 81, 81)
                                .addComponent(label_err4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                            .addGroup(layout.createSequentialGroup()
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(label_err2, javax.swing.GroupLayout.PREFERRED_SIZE, 247, javax.swing.GroupLayout.PREFERRED_SIZE))))))
            .addGroup(layout.createSequentialGroup()
                .addGap(201, 201, 201)
                .addComponent(btn_updateInfoStaff)
                .addGap(0, 0, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(txt_titleStaffName)
                    .addComponent(btn_back))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(jLabel6))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txt_lastName, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txt_firstName, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(label_err1)
                    .addComponent(label_err2))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(jLabel3))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txt_staffSDT, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txt_staffCMND, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(label_err3)
                    .addComponent(label_err4))
                .addGap(18, 18, 18)
                .addComponent(jLabel5)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(cbb_staffGender, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(24, 24, 24)
                .addComponent(btn_updateInfoStaff, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents
    public void clear(){
        label_err1.setText("");
        label_err2.setText("");
        label_err3.setText("");
        label_err4.setText("");
        
    }
    public void getInfoStaff(String userName){
        Connection ketNoi = DatVeXe.layKetNoi();
        String sql = "select Staff_First_Name, Staff_Last_Name, Staff_CMND, Staff_SDT, Staff_Gender from Staff where Staff_Account = '"+userName+"'";
        try {
            PreparedStatement ps = ketNoi.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {                
                String name = rs.getString("Staff_Last_Name")+" "+rs.getString("Staff_First_Name");
                txt_firstName.setText(rs.getString("Staff_First_Name"));
                txt_lastName.setText(rs.getString("Staff_Last_Name"));
                txt_titleStaffName.setText(name);
                txt_staffCMND.setText(rs.getString("Staff_CMND"));
                this.cmnd = rs.getString("Staff_CMND");
                txt_staffSDT.setText(rs.getString("Staff_SDT"));
                String render = rs.getString("Staff_Gender");
                if (render.compareToIgnoreCase("nam")==0){
                    cbb_staffGender.setSelectedIndex(0);
                }else if (render.compareToIgnoreCase("nu")==0){
                    cbb_staffGender.setSelectedIndex(1);
                }
            }
        } catch (Exception e) {
            System.out.println("loi getInfoStaff"+e);
        }
    }
    private void txt_staffSDTActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txt_staffSDTActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txt_staffSDTActionPerformed

    private void cbb_staffGenderActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cbb_staffGenderActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_cbb_staffGenderActionPerformed
    public boolean searchStaffCMND(String staffCMND){
        String cmnd = "";
        Connection ketNoi = DatVeXe.layKetNoi();
        String sql = "select Staff_CMND from Ticket where Staff_CMND = '"+staffCMND+"'";
        String sql2 = "select Staff_CMND from Manage_Passenger_Care where Staff_CMND = '"+staffCMND+"'";
        String sql3 = "select Staff_CMND from Passenger_Care where Staff_CMND = '"+staffCMND+"'";
        try {
            PreparedStatement ps = ketNoi.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                cmnd = rs.getString("Staff_CMND");
            }
            ps = ketNoi.prepareStatement(sql2);
            rs = ps.executeQuery();
            if (rs.next()){
                cmnd = rs.getString("Staff_CMND");
            }
            ps = ketNoi.prepareStatement(sql3);
            rs = ps.executeQuery();
            if (rs.next()){
                cmnd = rs.getString("Staff_CMND");
            }
        } catch (Exception e) {
            System.out.println("loi searchStaffCMND"+e);
        }
        if (cmnd.compareToIgnoreCase(staffCMND) == 0) return true;
        else return false;
    }
    public void updateInfoStaff(String cmnd, String fn, String ln, String sdt, String gender, String userName){
        Connection ketNoi = DatVeXe.layKetNoi();
        String sql = "update Staff set Staff_CMND = '"+cmnd+"',"
                + " Staff_First_Name = '"+fn+"', Staff_Last_Name = '"+ln+"',"
                + " Staff_SDT = '"+sdt+"', Staff_Gender = '"+gender+"'"
                + " where Staff_Account = '"+userName+"'";
        try {
            PreparedStatement ps = ketNoi.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("loi insertInfoStaff"+e);
        }
    }
    private void btn_updateInfoStaffActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_updateInfoStaffActionPerformed
        clear();
        boolean check = true;
        String firstName = txt_firstName.getText();
        String lastName = txt_lastName.getText();
        String sdt = txt_staffSDT.getText();
        String cmnd = txt_staffCMND.getText();
        String gender = String.valueOf(cbb_staffGender.getSelectedItem());
        
        if (lastName.equals("")){
            label_err1.setForeground(Color.red);
            label_err1.setText("Họ (lastName) không được bỏ trống!");
        }
        if (firstName.equals("")){
            label_err2.setForeground(Color.red);
            label_err2.setText("Tên (First Name) không được bỏ trống!");
        }
        if (sdt.equals("")){
            label_err3.setForeground(Color.red);
            label_err3.setText("Số điện thoại không được bỏ trống!");
        }
        if (cmnd.equals("")){
            label_err4.setForeground(Color.red);
            label_err4.setText("CMND không được bỏ trống!");
        }
        if (cmnd.compareToIgnoreCase(this.cmnd)!=0){
            if (searchStaffCMND(this.cmnd)==true){
                JOptionPane.showMessageDialog(this, "cmnd của nhân viên đã được sử dụng không thể thay đổi!","Inane Eror",JOptionPane.ERROR_MESSAGE);
                cmnd = this.cmnd;
                txt_staffCMND.setText(cmnd);
                check = false;
            }else check = true;
        }
        if (!firstName.equals("") && !lastName.equals("") && !sdt.equals("") && !cmnd.equals("") && check == true){
            updateInfoStaff(cmnd, firstName, lastName, sdt, gender, this.userName);
            this.setVisible(false);
        }
    }//GEN-LAST:event_btn_updateInfoStaffActionPerformed

    private void btn_backActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_backActionPerformed
        this.setVisible(false);
    }//GEN-LAST:event_btn_backActionPerformed

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
            java.util.logging.Logger.getLogger(infoStaff.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(infoStaff.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(infoStaff.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(infoStaff.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new infoStaff("").setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_back;
    private javax.swing.JButton btn_updateInfoStaff;
    private javax.swing.JComboBox<String> cbb_staffGender;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel label_err1;
    private javax.swing.JLabel label_err2;
    private javax.swing.JLabel label_err3;
    private javax.swing.JLabel label_err4;
    private javax.swing.JTextField txt_firstName;
    private javax.swing.JTextField txt_lastName;
    private javax.swing.JTextField txt_staffCMND;
    private javax.swing.JTextField txt_staffSDT;
    private javax.swing.JLabel txt_titleStaffName;
    // End of variables declaration//GEN-END:variables
}
