package net.spring.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BillingRecordsTelesImpl implements BillingRecordsTeles {

    @Autowired
    private SessionFactory sessionFactory;

//1
    @Override
    public String ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama() {
        String ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama = "";
        System.out.println("Zapoceo ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama");
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama);
            if (rs.next()) {
                ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama");
        return ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama;
    }
//2.1
    public static String ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija;

    @Override
    public String ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija() {
        System.out.println("Zapoceo ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija");
        ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija);
            if (rs.next()) {
                ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zapoceo ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija");
        return ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija;
    }
//2.2
    public static String ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB;

    @Override
    public String ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB() {
        System.out.println("Zapoceo ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB");
        ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB);

            if (rs.next()) {
                ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zapoceo ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB");

        return ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB;
    }
//2.3
    public static String ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION;

    @Override
    public String ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION() {
        System.out.println("Zapoceo ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION");
        ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION = "";

        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION);

            if (rs.next()) {
                ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION");

        return ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION;
    }

    //2
    @Override
    public Double ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama() {
        System.out.println("Zapoceo ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama");
        double a = Double.parseDouble(ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION);
        double b = Double.parseDouble(ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB);
        double c = Double.parseDouble(ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija);
        double rezultat = a + b + c;
        System.out.println("Zavrsio ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama");

        return rezultat;
    }

    //3
    @Override
    public String ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama() {
        System.out.println("Zapoceo ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama");
        String ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama);

            if (rs.next()) {
                ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama");

        return ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama;
    }
//3.1

    @Override
    public String ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima() {
        System.out.println("Zapoceo ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima");
        String ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima);

            if (rs.next()) {
                ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima");

        return ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima;
    }
//3.2

    @Override
    public String ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima() {
        System.out.println("Zapoceo ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima");
        String ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima);

            if (rs.next()) {
                ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima");

        return ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima;
    }
    public static String kod09xx;

    @Override
    public String kod09xx() {
        System.out.println("Zapoceo kod09xx");
        kod09xx = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.kod09xx);

            if (rs.next()) {
                kod09xx = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio kod09xx");
        return kod09xx;

    }
    public static String kod0780;

    @Override
    public String kod0780() {
        System.out.println("Zapoceo kod0780");
        kod0780 = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.kod0780);

            if (rs.next()) {
                kod0780 = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("kod0780");
        return kod0780;
    }

    @Override
    public Double ostvareni_telefonski_saobracaj_ka_negeografskim_i_kratkim_kodovima() {
        System.out.println("Zapoceo ostvareni_telefonski_saobracaj_ka_negeografskim_i_kratkim_kodovima");
        double a = VASservis;
        double b = kratki_kodovi;
        double c = ostale_negeografske_usluge;
        double rezultat = a + b + c;
        System.out.println("Zavrsio ostvareni_telefonski_saobracaj_ka_negeografskim_i_kratkim_kodovima");
        return rezultat;
    }
    public static Double kratki_kodovi;

    @Override
    public Double kratki_kodovi() {
        System.out.println("Zapoceo kratki_kodovi");
        double a = Double.parseDouble(hitne_sluzbe);
        double b = Double.parseDouble(usluge_od_javnog_interesa);
        double c = Double.parseDouble(komercijalne_usluge);
        kratki_kodovi = a + b + c;
        System.out.println("Zavrsio kratki_kodovi");
        return kratki_kodovi;
    }
    public static Double ostale_negeografske_usluge;

    @Override
    public Double ostale_negeografske_usluge() {
        System.out.println("Zapoceo ostale_negeografske_usluge");
        double a = Double.parseDouble(freephone);
        double b = Double.parseDouble(univPristupBroju);
        double c = Double.parseDouble(M2M);
        double d = Double.parseDouble(nomadskaUsluga);
        ostale_negeografske_usluge = a + b + c + d;
        System.out.println("Zavrsio ostale_negeografske_usluge");
        return ostale_negeografske_usluge;
    }
    public static Double VASservis;

    @Override
    public Double VASservis() {
        System.out.println("Zapoceo VASservis");
        double a = Double.parseDouble(kod09xx);
        double b = Double.parseDouble(kod0780);
        VASservis = a + b;
        System.out.println("Zavrsio VASservis");
        return VASservis;
    }
    public static String hitne_sluzbe;

    @Override
    public String hitne_sluzbe() {
        System.out.println("Zapoceo hitne_sluzbe");
        hitne_sluzbe = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.hitne_sluzbe);

            if (rs.next()) {
                hitne_sluzbe = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio hitne_sluzbe");

        return hitne_sluzbe;
    }
    public static String usluge_od_javnog_interesa;

    @Override
    public String usluge_od_javnog_interesa() {
        System.out.println("Zapoceo usluge_od_javnog_interesa");
        usluge_od_javnog_interesa = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.usluge_od_javnog_interesa);

            if (rs.next()) {
                usluge_od_javnog_interesa = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zapoceo usluge_od_javnog_interesa");

        return usluge_od_javnog_interesa;
    }
    public static String komercijalne_usluge;

    @Override
    public String komercijalne_usluge() {
        System.out.println("komercijalne_usluge");
        komercijalne_usluge = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.komercijalne_usluge);

            if (rs.next()) {
                komercijalne_usluge = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio komercijalne_usluge");

        return komercijalne_usluge;
    }
    public static String freephone;

    @Override
    public String freephone() {
        System.out.println("Zapoceo freephone");
        freephone = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.freephone);

            if (rs.next()) {
                freephone = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zapoceo freephone");

        return freephone;
    }
    public static String univPristupBroju;

    @Override
    public String univPristupBroju() {
        System.out.println("Zapoceo univPristupBroju");
        univPristupBroju = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.univPristupBroju);

            if (rs.next()) {
                univPristupBroju = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio univPristupBroju");
        return univPristupBroju;
    }
    public static String M2M;

    @Override
    public String M2M() {
        System.out.println("Zapoceo M2M");
        M2M = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.M2M);

            if (rs.next()) {
                M2M = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio M2M");

        return M2M;
    }
    public static String nomadskaUsluga;

    @Override
    public String nomadskaUsluga() {
        System.out.println("Zapoceo nomadskaUsluga");
        nomadskaUsluga = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.nomadskaUsluga);

            if (rs.next()) {
                nomadskaUsluga = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio nomadskaUsluga");

        return nomadskaUsluga;
    }

    @Override
    public Double ukupan_medjunarodni_telefonski_saobracaj() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Double medjunarodni_odlazni_telefonski_saobracaj_iz_fiksne_mreze() {
        System.out.println("Zapoceo medjunarodni_odlazni_telefonski_saobracaj_iz_fiksne_mreze");
        double a = Double.parseDouble(evropa);
        double b = Double.parseDouble(ostatak_sveta);
        double rezultat = a + b;
        System.out.println("Zavrsio medjunarodni_odlazni_telefonski_saobracaj_iz_fiksne_mreze");

        return rezultat;
    }
    public static String evropa;

    @Override
    public String evropa() {
        System.out.println("Zapoceo evropa");
        evropa = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.evropa);
            if (rs.next()) {
                evropa = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio evropa");
        return evropa;
    }
    public static String ostatak_sveta;

    @Override
    public String ostatak_sveta() {
        System.out.println("Zapoceo ostatak_sveta");
        ostatak_sveta = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.ostatak_sveta);
            if (rs.next()) {
                ostatak_sveta = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio ostatak_sveta");
        return ostatak_sveta;
    }

    @Override
    public String medjunarodni_dolazni_telefonski_saobracaj_ka_fiksnoj_mrezi() {
        //Unosimo iz usaglasenih podataka;
        return "";
    }

    @Override
    public Double broj_medjunarodnih_telegrama() {
        System.out.println("broj_medjunarodnih_telegrama");
        return 0.0;
    }

    @Override
    public String prosecna_duzina_razgovora_u_mrezi() {
        System.out.println("Zapoceo prosecna_duzina_razgovora_u_mrezi");
        String prosecna_duzina_razgovora_u_mrezi = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.prosecna_duzina_razgovora_u_mrezi);

            if (rs.next()) {
                prosecna_duzina_razgovora_u_mrezi = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio prosecna_duzina_razgovora_u_mrezi");

        return prosecna_duzina_razgovora_u_mrezi;
    }

    @Override
    public String prosecna_duzina_razgovora_ka_mobilnim_mrezema() {
        System.out.println("Zapoceo prosecna_duzina_razgovora_ka_mobilnim_mrezema");
        String prosecna_duzina_razgovora_ka_mobilnim_mrezema = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.prosecna_duzina_razgovora_ka_mobilnim_mrezema);

            if (rs.next()) {
                prosecna_duzina_razgovora_ka_mobilnim_mrezema = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio prosecna_duzina_razgovora_ka_mobilnim_mrezema");

        return prosecna_duzina_razgovora_ka_mobilnim_mrezema;
    }

    @Override
    public String prosecna_duzina_razgovora_ka_inostranstvu() {
        System.out.println("Zapoceo prosecna_duzina_razgovora_ka_inostranstvu");
        String prosecna_duzina_razgovora_ka_inostranstvu = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.prosecna_duzina_razgovora_ka_inostranstvu);

            if (rs.next()) {
                prosecna_duzina_razgovora_ka_inostranstvu = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio prosecna_duzina_razgovora_ka_inostranstvu");

        return prosecna_duzina_razgovora_ka_inostranstvu;
    }

    @Override
    public Double VoIP_minuti() {
        return 0.0;
    }
    public static String ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze;

    @Override
    public String ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze() {
        System.out.println("Zapoceo ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze");
        ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze);

            if (rs.next()) {
                ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze");

        return ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze;
    }

    @Override
    public Double ka_geografskim_kodovima() {
        System.out.println("Zapoceo ka_geografskim_kodovima");
        double a = Double.parseDouble(ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze);
        double b = Double.parseDouble(freephoneOduzimanje);
        double rezultat = a - b;
        System.out.println("Zavrsio ka_geografskim_kodovima");

        return rezultat;
    }
    public static String freephoneOduzimanje;

    @Override
    public String freephoneOduzimanje() {
        System.out.println("Zapoceo freephoneOduzimanje");
        freephoneOduzimanje = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.freephoneOduzimanje);

            if (rs.next()) {
                freephoneOduzimanje = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio freephoneOduzimanje");

        return freephoneOduzimanje;
    }
//****** TERMINACIJA SAOBRACAJA******

    @Override
    public String ostvareni_dolazni_nacionalni_telefonski_saobracaj_iz_drugih_mreza_termincija() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String ostvareni_dolazni_nacionalni_telefonski_saobracaj_iz_fiksnih_mreza() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String terminacija_iz_drugih_fiksnih_TS() {
        System.out.println("Zapoceo terminacija_iz_drugih_fiksnih_TS");
        String terminacija_iz_drugih_fiksnih_TS = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.terminacija_iz_drugih_fiksnih_TS);

            if (rs.next()) {
                terminacija_iz_drugih_fiksnih_TS = rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Zavrsio terminacija_iz_drugih_fiksnih_TS");

        return terminacija_iz_drugih_fiksnih_TS;
    }

}
