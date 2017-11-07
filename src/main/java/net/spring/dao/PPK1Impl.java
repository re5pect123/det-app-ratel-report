package net.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PPK1Impl implements PPK1 {

    public static String A;

    @Override
    public String A() {
        String A = "";
        System.out.println("Zapoceo A");
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryPPK1.A);
            if (rs.next()) {
                A = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println(A);
        System.out.println("Zavrsio A");
        return A;
    }
    public static String B;

    @Override
    public String B() {
        String B = "";
        System.out.println("Zapoceo B");
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryPPK1.B);
            if (rs.next()) {
                B = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("ovo je " + B);
        System.out.println("Zavrsio B");
        return B;
    }
    public static String C;

    @Override
    public String C() {
        String C = "";
        System.out.println("Zapoceo C");
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryPPK1.C);
            if (rs.next()) {
                C = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("OVO je |" + C);
        System.out.println("Zavrsio C");
        return C;
    }
    public static String D;

    @Override
    public String D() {
        String D = "";
        System.out.println("Zapoceo D");
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryPPK1.D);
            if (rs.next()) {
                D = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio D");
        return D;
    }
    public static String E;

    @Override
    public String E() {
        String E = "";
        System.out.println("Zapoceo E");
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryPPK1.E);
            if (rs.next()) {
                E = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio E");
        return E;
    }
    public static String F;

    @Override
    public String F() {
        String F = "";
        System.out.println("Zapoceo F");
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryPPK1.F);
            if (rs.next()) {
                F = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio F");
        return F;
    }
    public static String G;

    @Override
    public String G() {
        String G = "";
        System.out.println("Zapoceo G");
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryPPK1.G);
            if (rs.next()) {
                G = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio G");
        return G;
    }
    public static String H;

    @Override
    public String H() {
        String H = "";
        System.out.println("Zapoceo H");
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryPPK1.H);
            if (rs.next()) {
                H = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio H");
        return H;
    }
    public static String I;

    @Override
    public String I() {
        String I = "";
        System.out.println("Zapoceo I");
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryPPK1.E);
            if (rs.next()) {
                I = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio I");
        return I;
    }
    public static String J;

    @Override
    public String J() {
        String J = "";
        System.out.println("Zapoceo J");
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryPPK1.J);
            if (rs.next()) {
                J = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio J");
        return J;
    }
//4.1

    @Override
    public Double n_svih_poziva() {
        Double a = Double.parseDouble(A());
        Double b = Double.parseDouble(B());
        Double c = Double.parseDouble(C());
        Double d = Double.parseDouble(D());
        System.out.println("sad sam ovde negde");
        Double n_svih_poziva = ((a + b) / (c + d)) * 100;
        System.out.println("ovo je rezultat" + n_svih_poziva);
        return n_svih_poziva;
    }
//4.2

    @Override
    public Double n_nacionalnih_poziva_unutar_fiksne_mreže_u_okviru_lokalne_centrale() {
        Double b = Double.parseDouble(B);
        Double d = Double.parseDouble(D);
        Double n_nacionalnih_poziva_unutar_fiksne_mreže_u_okviru_lokalne_centrale = (b / d) * 100;
        return n_nacionalnih_poziva_unutar_fiksne_mreže_u_okviru_lokalne_centrale;
    }
//4.3

    @Override
    public Double n_nacionalnih_poziva_unutar_fiksne_mreže_van_lokalne_centrale() {
        return 0.0;
    }
//4.4

    @Override
    public Double n_nacionalnih_poziva_unutar_fiksne_mreže_prema_mobilnim_operatorima() {
        Double f = Double.parseDouble(F);
        Double e = Double.parseDouble(E);
        Double n_nacionalnih_poziva_unutar_fiksne_mreže_prema_mobilnim_operatorima = (f / e) * 100;
        return n_nacionalnih_poziva_unutar_fiksne_mreže_prema_mobilnim_operatorima;
    }
//4.5

    @Override
    public Double n_nacionalnih_poziva_unutar_fiksne_mreže_prema_drugim_fiksnim_operatorima() {
        Double h = Double.parseDouble(H);
        Double g = Double.parseDouble(G);
        Double n_nacionalnih_poziva_unutar_fiksne_mreže_prema_drugim_fiksnim_operatorima = (h / g) * 100;
        return n_nacionalnih_poziva_unutar_fiksne_mreže_prema_drugim_fiksnim_operatorima;
    }
//4.6

    @Override
    public Double n_medjunarodnih_poziva() {
        Double j = Double.parseDouble(J);
        Double i = Double.parseDouble(I);
        Double n_medjunarodnih_poziva = (j / i) * 100;
        return n_medjunarodnih_poziva;
    }

}
