package net.spring.controller;

import java.sql.SQLException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import net.spring.dao.BillingRecordsTeles;
import net.spring.dao.BillingRecordsTelesImpl;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MainController {

    @Autowired
    BillingRecordsTeles billingRecordsTelesDao;

    @RequestMapping(value = "/")
    public String vrati() {
        return "index";
    }

    @RequestMapping(value = "/proba")
    public String izvestaj(ModelMap model) throws SQLException, ClassNotFoundException {
        /*  //1
        String ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama = billingRecordsTelesDao.ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama();
        model.addAttribute("ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama", ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama);
        System.out.println(ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama);
        //2
        Double ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama = billingRecordsTelesDao.ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama();
        model.addAttribute("ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama", ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama);
        //2.1
        String ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija = billingRecordsTelesDao.ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija();
        model.addAttribute("ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija", ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija);
        //2.2
        String ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB = billingRecordsTelesDao.ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB();
        model.addAttribute("ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB", ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB);
        //2.3
        String ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION = billingRecordsTelesDao.ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION();
        model.addAttribute("ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION", ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION);
        //3
        String ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama = billingRecordsTelesDao.ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama();
        model.addAttribute("ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama", ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama);
        //3.1
        String ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima = billingRecordsTelesDao.ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima();
        model.addAttribute("ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima", ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima);
        //3.2
        String ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima = billingRecordsTelesDao.ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima();
        model.addAttribute("ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima", ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima);
        //4
        Double ostvareni_telefonski_saobracaj_ka_negeografskim_i_kratkim_kodovima = billingRecordsTelesDao.ostvareni_telefonski_saobracaj_ka_negeografskim_i_kratkim_kodovima();
        model.addAttribute("ostvareni_telefonski_saobracaj_ka_negeografskim_i_kratkim_kodovima", ostvareni_telefonski_saobracaj_ka_negeografskim_i_kratkim_kodovima);
        //4.1
        Double VASservis = billingRecordsTelesDao.VASservis();
        model.addAttribute("VASservis", VASservis);
        //4.1.1
        String kod09xx = billingRecordsTelesDao.kod09xx();
        model.addAttribute("kod09xx", kod09xx);
        //4.1.2
        String kod0780 = billingRecordsTelesDao.kod0780();
        model.addAttribute("kod0780", kod0780);
        //4.2
        Double kratki_kodovi = billingRecordsTelesDao.kratki_kodovi();
        model.addAttribute("kratki_kodovi", kratki_kodovi);
        //4.2.1
        String hitne_sluzbe = billingRecordsTelesDao.hitne_sluzbe();
        model.addAttribute("hitne_sluzbe", hitne_sluzbe);
        //4.2.2
        String usluge_od_javnog_interesa = billingRecordsTelesDao.usluge_od_javnog_interesa();
        model.addAttribute("usluge_od_javnog_interesa", usluge_od_javnog_interesa);
        //4.2.3
        String komercijalne_usluge = billingRecordsTelesDao.komercijalne_usluge();
        model.addAttribute("komercijalne_usluge", komercijalne_usluge);
        //4.3
        Double ostale_negeografske_usluge = billingRecordsTelesDao.ostale_negeografske_usluge();
        model.addAttribute("ostale_negeografske_usluge", ostale_negeografske_usluge);
        //4.3.1
        String freephone = billingRecordsTelesDao.freephone();
        model.addAttribute("freephone", freephone);
        //4.3.2
        String univPristupBroju = billingRecordsTelesDao.univPristupBroju();
        model.addAttribute("univPristupBroju", univPristupBroju);
        //4.3.3
        //4.3.4
        String M2M = billingRecordsTelesDao.M2M();
        model.addAttribute("M2M", M2M);
        //4.3.5
        String nomadskaUsluga = billingRecordsTelesDao.nomadskaUsluga();
        model.addAttribute("nomadskaUsluga", nomadskaUsluga);
        //5 (6 + 9)
        //6
        Double medjunarodni_odlazni_telefonski_saobracaj_iz_fiksne_mreze = billingRecordsTelesDao.medjunarodni_odlazni_telefonski_saobracaj_iz_fiksne_mreze();
        model.addAttribute("medjunarodni_odlazni_telefonski_saobracaj_iz_fiksne_mreze", medjunarodni_odlazni_telefonski_saobracaj_iz_fiksne_mreze);
        //7
        String evropa = billingRecordsTelesDao.evropa();
        model.addAttribute("evropa", evropa);
        //8.0
        String ostatak_sveta = billingRecordsTelesDao.ostatak_sveta();
        model.addAttribute("ostatak_sveta", ostatak_sveta);
        //9.0 iz usaglasenih podataka
        //10
        Double broj_medjunarodnih_telegrama = billingRecordsTelesDao.broj_medjunarodnih_telegrama();
        model.addAttribute("broj_medjunarodnih_telegrama", broj_medjunarodnih_telegrama);
        //11
        String prosecna_duzina_razgovora_u_mrezi = billingRecordsTelesDao.prosecna_duzina_razgovora_u_mrezi();
        model.addAttribute("prosecna_duzina_razgovora_u_mrezi", prosecna_duzina_razgovora_u_mrezi);
        //12
        String prosecna_duzina_razgovora_ka_mobilnim_mrezema = billingRecordsTelesDao.prosecna_duzina_razgovora_ka_mobilnim_mrezema();
        model.addAttribute("prosecna_duzina_razgovora_ka_mobilnim_mrezema", prosecna_duzina_razgovora_ka_mobilnim_mrezema);
        //13
        String prosecna_duzina_razgovora_ka_inostranstvu = billingRecordsTelesDao.prosecna_duzina_razgovora_ka_inostranstvu();
        model.addAttribute("prosecna_duzina_razgovora_ka_inostranstvu", prosecna_duzina_razgovora_ka_inostranstvu);
        //14
        Double VoIP_minuti = billingRecordsTelesDao.VoIP_minuti();
        model.addAttribute("VoIP_minuti", VoIP_minuti);
        //15
        String ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze = billingRecordsTelesDao.ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze();
        model.addAttribute("ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze", ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze);
        //15.1
        Double ka_geografskim_kodovima = billingRecordsTelesDao.ka_geografskim_kodovima();
        model.addAttribute("ka_geografskim_kodovima", ka_geografskim_kodovima);
        //15.4.1
        String freephoneOduzimanje = billingRecordsTelesDao.freephoneOduzimanje();
        model.addAttribute("freephoneOduzimanje", freephoneOduzimanje);
        //***** TERMINACIJA SAOBRACAJA *****
        String terminacija_iz_drugih_fiksnih_TS = billingRecordsTelesDao.terminacija_iz_drugih_fiksnih_TS();
        model.addAttribute("terminacija_iz_drugih_fiksnih_TS", terminacija_iz_drugih_fiksnih_TS);
         */
        return "RatelIzvestaj";
    }

    @RequestMapping(value = "/rest/{vrsta}")
    @ResponseBody
    public String rest(@PathVariable int vrsta) throws InterruptedException {

        switch (vrsta) {

            //1
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
