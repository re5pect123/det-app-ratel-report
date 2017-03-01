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
        System.out.println("ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama");
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama);

            if (rs.next()) {
                ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama = rs.getString(1);
                System.out.println(ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

        return ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama;
    }
//2.1

    @Override
    public String ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija() {
        System.out.println("ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija");
        String ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija);

            if (rs.next()) {
                ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija = rs.getString(1);
                System.out.println(ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija;
    }
//2.2

    @Override
    public String ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB() {
        System.out.println("ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB");
        String ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB);

            if (rs.next()) {
                ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB = rs.getString(1);
                System.out.println(ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB;
    }
//2.3

    @Override
    public String ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION() {
        System.out.println("ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION");
        String ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION);

            if (rs.next()) {
                ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION = rs.getString(1);
                System.out.println(ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION;
    }

    //2
    @Override
    public Double ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama() {
        System.out.println("ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama");
        double a = Double.parseDouble(ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION());
        double b = Double.parseDouble(ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB());
        double c = Double.parseDouble(ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija());
        double rezultat = a + b + c;
        System.out.println(rezultat);
        return rezultat;
    }

    //3
    @Override
    public String ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama() {
        System.out.println("ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama");
        String ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama);

            if (rs.next()) {
                ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama = rs.getString(1);
                System.out.println(ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama;
    }
//3.1

    @Override
    public String ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima() {
        System.out.println("ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima");
        String ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima);

            if (rs.next()) {
                ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima = rs.getString(1);
                System.out.println(ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima;
    }
//3.2

    @Override
    public String ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima() {
        System.out.println("ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima");
        String ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima);

            if (rs.next()) {
                ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima = rs.getString(1);
                System.out.println(ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima;
    }

    @Override
    public String kod09xx() {
        System.out.println("kod09xx");
        String kod09xx = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.kod09xx);

            if (rs.next()) {
                kod09xx = rs.getString(1);
                System.out.println(kod09xx);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return kod09xx;

    }

    @Override
    public String kod0780() {
        System.out.println("kod0780");
        String kod0780 = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.kod0780);

            if (rs.next()) {
                kod0780 = rs.getString(1);
                System.out.println(kod0780);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return kod0780;
    }

    @Override
    public Double ostvareni_telefonski_saobracaj_ka_negeografskim_i_kratkim_kodovima() {
        System.out.println("ostvareni_telefonski_saobracaj_ka_negeografskim_i_kratkim_kodovima");
        double a = VASservis();
        double b = kratki_kodovi();
        double c = ostale_negeografske_usluge();
        double rezultat = a + b + c;
        System.out.println(rezultat);
        return rezultat;
    }

    @Override
    public Double kratki_kodovi() {
        System.out.println("kratki_kodovi");
        double a = Double.parseDouble(hitne_sluzbe());
        double b = Double.parseDouble(usluge_od_javnog_interesa());
        double c = Double.parseDouble(komercijalne_usluge());
        double rezultat = a + b + c;
        System.out.println(rezultat);
        return rezultat;
    }

    @Override
    public Double ostale_negeografske_usluge() {
        System.out.println("ostale_negeografske_usluge");
        double a = Double.parseDouble(freephone());
        double b = Double.parseDouble(univPristupBroju());
        double c = Double.parseDouble(M2M());
        double d = Double.parseDouble(nomadskaUsluga());
        double rezultat = a + b + c + d;
        System.out.println(rezultat);
        return rezultat;
    }

    @Override
    public Double VASservis() {
        System.out.println("VASservis");
        double a = Double.parseDouble(kod09xx());
        double b = Double.parseDouble(kod0780());
        double rezultat = a + b;
        System.out.println(rezultat);
        return rezultat;
    }

    @Override
    public String hitne_sluzbe() {
        System.out.println("hitne_sluzbe");
        String hitne_sluzbe = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.hitne_sluzbe);

            if (rs.next()) {
                hitne_sluzbe = rs.getString(1);
                System.out.println(hitne_sluzbe);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return hitne_sluzbe;
    }

    @Override
    public String usluge_od_javnog_interesa() {
        System.out.println("usluge_od_javnog_interesa");
        String usluge_od_javnog_interesa = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.usluge_od_javnog_interesa);

            if (rs.next()) {
                usluge_od_javnog_interesa = rs.getString(1);
                System.out.println(usluge_od_javnog_interesa);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return usluge_od_javnog_interesa;
    }

    @Override
    public String komercijalne_usluge() {
        System.out.println("komercijalne_usluge");
        String komercijalne_usluge = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.komercijalne_usluge);

            if (rs.next()) {
                komercijalne_usluge = rs.getString(1);
                System.out.println(komercijalne_usluge);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return komercijalne_usluge;
    }

    @Override
    public String freephone() {
        System.out.println("freephone");
        String freephone = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.freephone);

            if (rs.next()) {
                freephone = rs.getString(1);
                System.out.println(freephone);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return freephone;
    }

    @Override
    public String univPristupBroju() {
        System.out.println("univPristupBroju");
        String univPristupBroju = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.univPristupBroju);

            if (rs.next()) {
                univPristupBroju = rs.getString(1);
                System.out.println(univPristupBroju);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return univPristupBroju;
    }

    @Override
    public String M2M() {
        System.out.println("M2M");
        String M2M = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.M2M);

            if (rs.next()) {
                M2M = rs.getString(1);
                System.out.println(M2M);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

        return M2M;
    }

    @Override
    public String nomadskaUsluga() {
        System.out.println("nomadskaUsluga");
        String nomadskaUsluga = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.nomadskaUsluga);

            if (rs.next()) {
                nomadskaUsluga = rs.getString(1);
                System.out.println(nomadskaUsluga);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return nomadskaUsluga;
    }

    @Override
    public Double ukupan_medjunarodni_telefonski_saobracaj() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Double medjunarodni_odlazni_telefonski_saobracaj_iz_fiksne_mreze() {
        System.out.println("medjunarodni_odlazni_telefonski_saobracaj_iz_fiksne_mreze");
        double a = Double.parseDouble(evropa());
        double b = Double.parseDouble(ostatak_sveta());
        double rezultat = a + b;
        System.out.println(rezultat);
        return rezultat;
    }

    @Override
    public String evropa() {
        System.out.println("evropa");
        String evropa = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.evropa);
            System.out.println("evropa");
            if (rs.next()) {
                evropa = rs.getString(1);
                System.out.println(evropa);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return evropa;
    }

    @Override
    public String ostatak_sveta() {
        System.out.println("ostatak_sveta");
        String ostatak_sveta = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.ostatak_sveta);
            System.out.println("ostatak_sveta");
            if (rs.next()) {
                ostatak_sveta = rs.getString(1);
                System.out.println(ostatak_sveta);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        System.out.println("prosecna_duzina_razgovora_u_mrezi");
        String prosecna_duzina_razgovora_u_mrezi = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.prosecna_duzina_razgovora_u_mrezi);

            if (rs.next()) {
                prosecna_duzina_razgovora_u_mrezi = rs.getString(1);
                System.out.println(prosecna_duzina_razgovora_u_mrezi);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return prosecna_duzina_razgovora_u_mrezi;
    }

    @Override
    public String prosecna_duzina_razgovora_ka_mobilnim_mrezema() {
        System.out.println("prosecna_duzina_razgovora_ka_mobilnim_mrezema");
        String prosecna_duzina_razgovora_ka_mobilnim_mrezema = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.prosecna_duzina_razgovora_ka_mobilnim_mrezema);

            if (rs.next()) {
                prosecna_duzina_razgovora_ka_mobilnim_mrezema = rs.getString(1);
                System.out.println(prosecna_duzina_razgovora_ka_mobilnim_mrezema);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return prosecna_duzina_razgovora_ka_mobilnim_mrezema;
    }

    @Override
    public String prosecna_duzina_razgovora_ka_inostranstvu() {
        System.out.println("prosecna_duzina_razgovora_ka_inostranstvu");
        String prosecna_duzina_razgovora_ka_inostranstvu = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.prosecna_duzina_razgovora_ka_inostranstvu);

            if (rs.next()) {
                prosecna_duzina_razgovora_ka_inostranstvu = rs.getString(1);
                System.out.println(prosecna_duzina_razgovora_ka_inostranstvu);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return prosecna_duzina_razgovora_ka_inostranstvu;
    }

    @Override
    public Double VoIP_minuti() {
        return 0.0;
    }

    @Override
    public String ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze() {
        System.out.println("ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze");
        String ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze);

            if (rs.next()) {
                ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze = rs.getString(1);
                System.out.println(ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze;
    }

    @Override
    public Double ka_geografskim_kodovima() {
        System.out.println("ka_geografskim_kodovima");
        double a = Double.parseDouble(ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze());
        double b = Double.parseDouble(freephoneOduzimanje());
        double rezultat = a - b;
        System.out.println(rezultat);
        return rezultat;
    }

    @Override
    public String freephoneOduzimanje() {
        System.out.println("freephoneOduzimanje");
        String freephoneOduzimanje = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.freephoneOduzimanje);

            if (rs.next()) {
                freephoneOduzimanje = rs.getString(1);
                System.out.println(freephoneOduzimanje);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        System.out.println("terminacija_iz_drugih_fiksnih_TS");
        String terminacija_iz_drugih_fiksnih_TS = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.terminacija_iz_drugih_fiksnih_TS);

            if (rs.next()) {
                terminacija_iz_drugih_fiksnih_TS = rs.getString(1);
                System.out.println(terminacija_iz_drugih_fiksnih_TS);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return terminacija_iz_drugih_fiksnih_TS;
    }

    @Override
    public String proba() {
        System.out.println("proba !!!");
        System.out.println("sad sam usao u metodu");
        String proba = "";
        try {
            ConnectionSingleton.getInstance();
            Statement st = ConnectionSingleton.conn.createStatement();
            ResultSet rs = st.executeQuery(querySrbija.QueryBillingRecordsTeles.proba);

            if (rs.next()) {
                proba = rs.getString(1);
                System.out.println(proba);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BillingRecordsTelesImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return proba;
    }

}
