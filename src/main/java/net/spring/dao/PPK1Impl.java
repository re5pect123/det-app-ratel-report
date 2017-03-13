package net.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PPK1Impl implements PPK1 {

    @Override
    public String A() {
        String A = "";
        System.out.println("Zapoceo A");
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama);
            if (rs.next()) {
                A = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio A");
        return A;
    }

    @Override
    public String B() {
        String B = "";
        System.out.println("Zapoceo B");
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama);
            if (rs.next()) {
                B = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio B");
        return B;
    }

    @Override
    public String C() {
        String C = "";
        System.out.println("Zapoceo C");
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama);
            if (rs.next()) {
                C = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio C");
        return C;
    }

    @Override
    public String D() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String E() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String F() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String G() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String H() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String I() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String J() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Double n_svih_poziva() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Double n_nacionalnih_poziva_unutar_fiksne_mreže_u_okviru_lokalne_centrale() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Double n_nacionalnih_poziva_unutar_fiksne_mreže_van_lokalne_centrale() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Double n_nacionalnih_poziva_unutar_fiksne_mreže_prema_mobilnim_operatorima() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Double n_nacionalnih_poziva_unutar_fiksne_mreže_prema_drugim_fiksnim_operatorima() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Double n_medjunarodnih_poziva() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
