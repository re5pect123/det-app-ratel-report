package net.spring.controller;

import java.sql.SQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import net.spring.dao.BillingRecordsTeles;
import net.spring.dao.BillingRecordsTelesImpl;
import net.spring.dao.PPK1;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MainController {

    /*  @Autowired
    BillingRecordsTeles billingRecordsTelesDao;
     */
    @Autowired
    @Qualifier("ppk1")
    PPK1 ppk1;

    @RequestMapping(value = {"/", "/index"})
    public String vrati() {
        return "index";
    }

    @RequestMapping(value = "/git7")
    public String izvestaj(ModelMap model) throws SQLException, ClassNotFoundException {
        return "git7";
    }

    @RequestMapping(value = "/ppk1")
    public String izvestaj1() {
        return "ppk1";
    }

    @RequestMapping(value = "rest1/{vrsta}")
    @ResponseBody
    public String rest1(@PathVariable int vrsta) {
        switch (vrsta) {
            case 1:
                System.out.println("Pokrenuo sam rest i upit n_svih_poziva");
                String n_svih_poziva = String.valueOf(ppk1.n_svih_poziva());
                System.out.println("OVO JE REZULTAT IZ KONTORLERA " + n_svih_poziva);
                return n_svih_poziva;
            /* case 2:
                System.out.println("Pokrenuo sam rest i upit n_nacionalnih_poziva_unutar_fiksne_mreže_u_okviru_lokalne_centrale");
                Double n_nacionalnih_poziva_unutar_fiksne_mreže_u_okviru_lokalne_centrale = ppk1.n_nacionalnih_poziva_unutar_fiksne_mreže_prema_drugim_fiksnim_operatorima();
                return n_nacionalnih_poziva_unutar_fiksne_mreže_u_okviru_lokalne_centrale;
            case 3:
                System.out.println("Pokrenuo sam rest i upit n_nacionalnih_poziva_unutar_fiksne_mreže_van_lokalne_centrale");
                Double n_nacionalnih_poziva_unutar_fiksne_mreže_van_lokalne_centrale = ppk1.n_nacionalnih_poziva_unutar_fiksne_mreže_van_lokalne_centrale();
                return n_nacionalnih_poziva_unutar_fiksne_mreže_van_lokalne_centrale;
            case 4:
                System.out.println("Pokrenuo sam rest i upit n_nacionalnih_poziva_unutar_fiksne_mreže_prema_mobilnim_operatorima");
                Double n_nacionalnih_poziva_unutar_fiksne_mreže_prema_mobilnim_operatorima = ppk1.n_nacionalnih_poziva_unutar_fiksne_mreže_prema_mobilnim_operatorima();
                return n_nacionalnih_poziva_unutar_fiksne_mreže_prema_mobilnim_operatorima;
            case 5:
                System.out.println("Pokrenuo sam rest i upit n_nacionalnih_poziva_unutar_fiksne_mreže_prema_drugim_fiksnim_operatorima");
                Double n_nacionalnih_poziva_unutar_fiksne_mreže_prema_drugim_fiksnim_operatorima = ppk1.n_nacionalnih_poziva_unutar_fiksne_mreže_prema_drugim_fiksnim_operatorima();
                return n_nacionalnih_poziva_unutar_fiksne_mreže_prema_drugim_fiksnim_operatorima;
            case 6:
                System.out.println("Pokrenuo sam rest i upit n_medjunarodnih_poziva");
                Double n_medjunarodnih_poziva = ppk1.n_medjunarodnih_poziva();
                return n_medjunarodnih_poziva;*/
        }
        return "";
    }

    @RequestMapping(value = "/rest/{vrsta}")
    @ResponseBody
    public String rest(@PathVariable int vrsta) throws InterruptedException {

        switch (vrsta) {

            /*       //1
            case 1:
                String ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama = billingRecordsTelesDao.ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama();
                return ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama;
            //2
            case 2:
                Thread.sleep(30000);
                String ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama = String.valueOf(billingRecordsTelesDao.ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama());
                return ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama;
            //2.1
            case 3:
                String ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija = billingRecordsTelesDao.ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija();
                return ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija;
            //2.2
            case 4:
                String ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB = billingRecordsTelesDao.ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB();
                return ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB;
            //2.3
            case 5:
                String ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION = billingRecordsTelesDao.ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION();
                return ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION;
            /* //3
            case 6:
                String ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama = billingRecordsTelesDao.ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama();
                return ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama;
            //3.1
            case 7:
                String ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima = billingRecordsTelesDao.ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima();
                return ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima;
            //3.2
            case 8:
                String ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima = billingRecordsTelesDao.ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima();
                return ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima;
            //4
            case 9:
                Thread.sleep(2400000);
                String ostvareni_telefonski_saobracaj_ka_negeografskim_i_kratkim_kodovima = String.valueOf(billingRecordsTelesDao.ostvareni_telefonski_saobracaj_ka_negeografskim_i_kratkim_kodovima());
                return ostvareni_telefonski_saobracaj_ka_negeografskim_i_kratkim_kodovima;
            //4.1
            case 10:
                Thread.sleep(2400000);
                String VASservis = String.valueOf(billingRecordsTelesDao.VASservis());
                return VASservis;
            //4.1.1
            case 11:
                String kod09xx = billingRecordsTelesDao.kod09xx();
                return kod09xx;
            //4.1.2
            case 12:
                String kod0780 = billingRecordsTelesDao.kod0780();
                return kod0780;
            //4.2
            case 13:
                Thread.sleep(2400000);
                String kratki_kodovi = String.valueOf(billingRecordsTelesDao.kratki_kodovi());
                return kratki_kodovi;
            //4.2.1
            case 14:
                String hitne_sluzbe = billingRecordsTelesDao.hitne_sluzbe();
                return hitne_sluzbe;
            //4.2.2
            case 15:
                String usluge_od_javnog_interesa = billingRecordsTelesDao.usluge_od_javnog_interesa();
                return usluge_od_javnog_interesa;
            //4.2.3
            case 16:
                String komercijalne_usluge = billingRecordsTelesDao.komercijalne_usluge();
                return komercijalne_usluge;
            //4.3
            case 17:
                Thread.sleep(2400000);
                String ostale_negeografske_usluge = String.valueOf(billingRecordsTelesDao.ostale_negeografske_usluge());
                return ostale_negeografske_usluge;
            //4.3.1
            case 18:
                String freephone = billingRecordsTelesDao.freephone();
                return freephone;
            //4.3.2
            case 19:
                String univPristupBroju = billingRecordsTelesDao.univPristupBroju();
                return univPristupBroju;
            //4.3.3
            //4.3.4
            case 20:
                String M2M = billingRecordsTelesDao.M2M();
                return M2M;
            //4.3.5
            case 21:
                String nomadskaUsluga = billingRecordsTelesDao.nomadskaUsluga();
                return nomadskaUsluga;
            //5 ( 6 + 9)
            //6
            case 22:
                Thread.sleep(2400000);
                String medjunarodni_odlazni_telefonski_saobracaj_iz_fiksne_mreze = String.valueOf(billingRecordsTelesDao.medjunarodni_odlazni_telefonski_saobracaj_iz_fiksne_mreze());
                return medjunarodni_odlazni_telefonski_saobracaj_iz_fiksne_mreze;
            //7
            case 23:
                String evropa = billingRecordsTelesDao.evropa();
                return evropa;
            //8
            case 24:
                String ostatak_sveta = billingRecordsTelesDao.ostatak_sveta();
                return ostatak_sveta;
            //9 - usaglaseni podaci
            //10
            case 25:
                Thread.sleep(2400000);
                String broj_medjunarodnih_telegrama = String.valueOf(billingRecordsTelesDao.broj_medjunarodnih_telegrama());
                return broj_medjunarodnih_telegrama;
            //11
            case 26:
                String prosecna_duzina_razgovora_u_mrezi = billingRecordsTelesDao.prosecna_duzina_razgovora_u_mrezi();
                return prosecna_duzina_razgovora_u_mrezi;
            //12
            case 27:
                String prosecna_duzina_razgovora_ka_mobilnim_mrezema = billingRecordsTelesDao.prosecna_duzina_razgovora_ka_mobilnim_mrezema();
                return prosecna_duzina_razgovora_ka_mobilnim_mrezema;
            //13 
            case 28:
                String prosecna_duzina_razgovora_ka_inostranstvu = billingRecordsTelesDao.prosecna_duzina_razgovora_ka_inostranstvu();
                return prosecna_duzina_razgovora_ka_inostranstvu;
            //14
            case 29:
                String VoIP_minuti = String.valueOf(billingRecordsTelesDao.VoIP_minuti());
                return VoIP_minuti;
            //15
            case 30:
                String ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze = billingRecordsTelesDao.ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze();
                return ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze;
            //15.1
            case 31:
                Thread.sleep(2400000);
                String ka_geografskim_kodovima = String.valueOf(billingRecordsTelesDao.ka_geografskim_kodovima());
                return ka_geografskim_kodovima;
            //15.4.1
            case 32:
                String freephoneOduzimanje = billingRecordsTelesDao.freephoneOduzimanje();
                return freephoneOduzimanje;*/
        }

        return "";
    }

}
