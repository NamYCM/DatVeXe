/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datvexe;

import java.awt.Dialog;

/**
 *
 * @author huynh
 */
public class ManageStaff extends javax.swing.JFrame {

    /**
     * Creates new form ManageStaff
     */
    public ManageStaff() {
        initComponents();
    }

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
        btManageStaffLiss = new javax.swing.JButton();
        btAddNewStaff = new javax.swing.JButton();
        btProfit = new javax.swing.JButton();
        jLabel12 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        jPanel1.setLayout(null);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 36)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 0, 0));
        jLabel1.setText("QUẢN LÍ NHÂN VIÊN");
        jPanel1.add(jLabel1);
        jLabel1.setBounds(430, 150, 420, 70);

        btManageStaffLiss.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Pic/QuanLiNhanVienIcon.png"))); // NOI18N
        btManageStaffLiss.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        btManageStaffLiss.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btManageStaffLissActionPerformed(evt);
            }
        });
        jPanel1.add(btManageStaffLiss);
        btManageStaffLiss.setBounds(190, 290, 230, 310);

        btAddNewStaff.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Pic/ThemNhanVienIcon.png"))); // NOI18N
        btAddNewStaff.setMaximumSize(new java.awt.Dimension(171, 23));
        btAddNewStaff.setMinimumSize(new java.awt.Dimension(171, 23));
        btAddNewStaff.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btAddNewStaffActionPerformed(evt);
            }
        });
        jPanel1.add(btAddNewStaff);
        btAddNewStaff.setBounds(520, 290, 230, 310);

        btProfit.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Pic/ThongKeIcon.png"))); // NOI18N
        btProfit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btProfitActionPerformed(evt);
            }
        });
        jPanel1.add(btProfit);
        btProfit.setBounds(860, 290, 230, 310);

        jLabel12.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Pic/iconTong.png"))); // NOI18N
        jPanel1.add(jLabel12);
        jLabel12.setBounds(50, 20, 160, 123);

        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Pic/BackGround.jpg"))); // NOI18N
        jPanel1.add(jLabel2);
        jLabel2.setBounds(0, 0, 1280, 720);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 1280, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, 720, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btManageStaffLissActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btManageStaffLissActionPerformed
        this.dispose();
        ShowStaffList showStaffList = new ShowStaffList(this, rootPaneCheckingEnabled);
        showStaffList.setLocationRelativeTo(null);
        showStaffList.setVisible(true);
    }//GEN-LAST:event_btManageStaffLissActionPerformed

    private void btAddNewStaffActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btAddNewStaffActionPerformed
        
        this.dispose();
        AddNewEmployer newEmployer  = new AddNewEmployer(this, rootPaneCheckingEnabled);
        newEmployer.setLocationRelativeTo(null);
        newEmployer.setVisible(true);
       
        
    }//GEN-LAST:event_btAddNewStaffActionPerformed

    private void btProfitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btProfitActionPerformed
        InventoryProfit inventoryProfit = new InventoryProfit();
        inventoryProfit.setLocationRelativeTo(null);
        inventoryProfit.setVisible(true);
    }//GEN-LAST:event_btProfitActionPerformed

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
            java.util.logging.Logger.getLogger(ManageStaff.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ManageStaff.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ManageStaff.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ManageStaff.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ManageStaff().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btAddNewStaff;
    private javax.swing.JButton btManageStaffLiss;
    private javax.swing.JButton btProfit;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    // End of variables declaration//GEN-END:variables
}
