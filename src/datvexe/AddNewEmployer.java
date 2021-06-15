/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datvexe;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
/**
 *
 * @author huynh
 */
public class AddNewEmployer extends javax.swing.JDialog {

    /**
     * Creates new form AddNewEmployer
     */
    
    public AddNewEmployer(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        lbErrAcc.setVisible(false);
        lbErrCMND.setVisible(false);
        lbErrPhone.setVisible(false);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        txCMND = new javax.swing.JTextField();
        txLastName = new javax.swing.JTextField();
        txPhone = new javax.swing.JTextField();
        txFirstname = new javax.swing.JTextField();
        txAccount = new javax.swing.JTextField();
        txPassword = new javax.swing.JTextField();
        rdMale = new javax.swing.JRadioButton();
        rdFemale = new javax.swing.JRadioButton();
        btAddEmployer = new javax.swing.JButton();
        jLabel9 = new javax.swing.JLabel();
        cbKind = new javax.swing.JComboBox<>();
        jLabel10 = new javax.swing.JLabel();
        lbErrAcc = new javax.swing.JLabel();
        lbErrCMND = new javax.swing.JLabel();
        lbErrPhone = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        jLabel1.setText("Thêm nhân viên mới");

        jLabel2.setText("CMND");

        jLabel3.setText("Họ");

        jLabel4.setText("Tên");

        jLabel5.setText("SĐT");

        jLabel6.setText("Giới tính");

        jLabel7.setText("Tên đăng nhập");

        jLabel8.setText("Mật khẩu");

        buttonGroup1.add(rdMale);
        rdMale.setText("Nam");

        buttonGroup1.add(rdFemale);
        rdFemale.setText("Nữ");

        btAddEmployer.setText("Thêm nhân viên");
        btAddEmployer.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btAddEmployerActionPerformed(evt);
            }
        });

        jLabel9.setText("Vai trò nhân viên");

        cbKind.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Quản lí", "Nhân viên" }));

        lbErrAcc.setForeground(new java.awt.Color(255, 51, 51));
        lbErrAcc.setText("Tên đăng nhập đã tồn tại");

        lbErrCMND.setForeground(new java.awt.Color(255, 51, 51));
        lbErrCMND.setText("CMND đã được đăng kí trước đó");

        lbErrPhone.setForeground(new java.awt.Color(255, 51, 51));
        lbErrPhone.setText("SĐT đã được đăng kí trước đó");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(28, 28, 28)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel4)
                            .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 187, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel2)
                                    .addComponent(jLabel3)
                                    .addComponent(jLabel5)
                                    .addComponent(jLabel6)
                                    .addComponent(jLabel7)
                                    .addComponent(jLabel8)
                                    .addComponent(jLabel9))
                                .addGap(71, 71, 71)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(txPassword, javax.swing.GroupLayout.PREFERRED_SIZE, 187, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txPhone, javax.swing.GroupLayout.PREFERRED_SIZE, 187, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txLastName, javax.swing.GroupLayout.PREFERRED_SIZE, 187, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txFirstname, javax.swing.GroupLayout.PREFERRED_SIZE, 187, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(rdMale, javax.swing.GroupLayout.PREFERRED_SIZE, 93, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(48, 48, 48)
                                        .addComponent(rdFemale, javax.swing.GroupLayout.PREFERRED_SIZE, 93, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addComponent(cbKind, javax.swing.GroupLayout.PREFERRED_SIZE, 107, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                        .addComponent(lbErrAcc, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(jLabel10, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(txAccount, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 187, Short.MAX_VALUE))
                                    .addComponent(lbErrCMND, javax.swing.GroupLayout.PREFERRED_SIZE, 187, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txCMND, javax.swing.GroupLayout.PREFERRED_SIZE, 187, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(lbErrPhone, javax.swing.GroupLayout.PREFERRED_SIZE, 187, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(183, 183, 183)
                        .addComponent(btAddEmployer, javax.swing.GroupLayout.PREFERRED_SIZE, 156, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(189, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txCMND, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(lbErrCMND, javax.swing.GroupLayout.PREFERRED_SIZE, 14, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(25, 25, 25)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(txFirstname, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(39, 39, 39)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(txLastName, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(38, 38, 38)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(txPhone, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(lbErrPhone, javax.swing.GroupLayout.PREFERRED_SIZE, 14, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(13, 13, 13)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel6)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(rdMale)
                        .addComponent(rdFemale)))
                .addGap(29, 29, 29)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel7)
                    .addComponent(txAccount, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(5, 5, 5)
                .addComponent(jLabel10)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(lbErrAcc)
                .addGap(8, 8, 8)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txPassword, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel8))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel9)
                    .addComponent(cbKind, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 105, Short.MAX_VALUE)
                .addComponent(btAddEmployer)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btAddEmployerActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btAddEmployerActionPerformed
       DatVeXe datvexe = new DatVeXe();
        Connection conn = datvexe.layKetNoi();
        String sql = "INSERT INTO Staff VALUES(?,?,?,?,?,?,?)";
        String cmnd = txCMND.getText().trim(); 
        String firstName= txFirstname.getText().trim();
        String lastname = txLastName.getText().trim();
        String phone = txPhone.getText().trim();
        String sex = "";
        if(rdMale.isSelected()){
            sex = "Nam";
        }else{
            sex = "Nữ";
        }
        String account = txAccount.getText().trim();
        String password = txPassword.getText().trim();
        
        if(cmnd.trim().equals("") || firstName.trim().equals("") || lastname.trim().equals("") || phone.trim().equals("") || account.trim().equals("") || password.trim().equals("")){
            JOptionPane.showMessageDialog(rootPane, "Các trường thông tin không được để trống!");
            return; 
        }
        
        
        String sql2 = "INSERT INTO Account VALUES(?,?,?)"; 
        String kind; 
        if(cbKind.getSelectedIndex()==0){
            kind = "boss";
        }else if(cbKind.getSelectedIndex()==1){
            kind = "staff";
        }else{
            kind = "gara";
        }
        
        PreparedStatement pstt2; 
        
        try {
            int checkAccount = findAccount(account, conn);
            if(checkAccount==-1){
                lbErrAcc.setVisible(true);
                return; 
            }
            pstt2 = conn.prepareStatement(sql2);
            pstt2.setString(1, account);
            pstt2.setString(2, password);
            pstt2.setString(3, kind);
            
            pstt2.executeUpdate(); 
            
        } catch (SQLException ex) {
            Logger.getLogger(AddNewEmployer.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        
        PreparedStatement pstt;
        try {
            int checkCMND = findCMND(cmnd, conn);
            if(checkCMND==-1){
            lbErrCMND.setVisible(true);
            return; 
            }
            int checkPhone = findPhone(phone, conn);
            if(checkPhone ==-1){
                lbErrPhone.setVisible(true);
                return; 
            }
            pstt = conn.prepareStatement(sql);
            pstt.setString(1, cmnd);
            pstt.setString(2, firstName);
            pstt.setString(3, lastname);
            pstt.setString(4, phone);
            pstt.setString(5, sex);
            pstt.setString(6, account);
            pstt.setBoolean(7, true);
            int x = pstt.executeUpdate();
            if(x>0){
                JOptionPane.showMessageDialog(rootPane, "Thêm nhân viên thành công!");
                this.dispose();
            }
            else{
                JOptionPane.showMessageDialog(rootPane, "Có lỗi xảy ra!");
            }
        } catch (SQLException ex) {
            Logger.getLogger(AddNewEmployer.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }//GEN-LAST:event_btAddEmployerActionPerformed

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
            java.util.logging.Logger.getLogger(AddNewEmployer.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(AddNewEmployer.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(AddNewEmployer.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(AddNewEmployer.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the dialog */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                AddNewEmployer dialog = new AddNewEmployer(new javax.swing.JFrame(), true);
                dialog.addWindowListener(new java.awt.event.WindowAdapter() {
                    @Override
                    public void windowClosing(java.awt.event.WindowEvent e) {
                        System.exit(0);
                    }
                });
                dialog.setVisible(true);
            }
        });
    }
    public int findAccount(String account, Connection conn){
    
    String sql = "select * from account where account = ?"; 
    PreparedStatement pstt;
        try {
            pstt = conn.prepareStatement(sql);
            pstt.setString(1, account);
            ResultSet rs = pstt.executeQuery();
            if(rs.next()){
                return -1; 
            }
             
        } catch (SQLException ex) {
            Logger.getLogger(AddNewEmployer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 1;
    }
    public int findPhone(String phone, Connection conn){
    
    String sql = "select * from Staff where Staff_SDT = ?"; 
    PreparedStatement pstt;
        try {
            pstt = conn.prepareStatement(sql);
            pstt.setString(1, phone);
            ResultSet rs = pstt.executeQuery();
            if(rs.next()){
                return -1; 
            }
             
        } catch (SQLException ex) {
            Logger.getLogger(AddNewEmployer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 1;
    }
    public int findCMND(String cmnd, Connection conn){
    
    String sql = "select * from Staff where Staff_CMND = ?"; 
    PreparedStatement pstt;
        try {
            pstt = conn.prepareStatement(sql);
            pstt.setString(1, cmnd);
            ResultSet rs = pstt.executeQuery();
            if(rs.next()){
                return -1; 
            }
             
        } catch (SQLException ex) {
            Logger.getLogger(AddNewEmployer.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 1;
    }
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btAddEmployer;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JComboBox<String> cbKind;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JLabel lbErrAcc;
    private javax.swing.JLabel lbErrCMND;
    private javax.swing.JLabel lbErrPhone;
    private javax.swing.JRadioButton rdFemale;
    private javax.swing.JRadioButton rdMale;
    private javax.swing.JTextField txAccount;
    private javax.swing.JTextField txCMND;
    private javax.swing.JTextField txFirstname;
    private javax.swing.JTextField txLastName;
    private javax.swing.JTextField txPassword;
    private javax.swing.JTextField txPhone;
    // End of variables declaration//GEN-END:variables
}
