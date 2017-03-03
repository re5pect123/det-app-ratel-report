package net.spring.dao;

public interface BillingRecordsTeles {

    public String ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama();

    public Double ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama();

    public String ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija();

    public String ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB();

    public String ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION();

    public String ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama();

    public String ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima();

    public String ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima();

    public String kod09xx();

    public String kod0780();

    public Double kratki_kodovi();

    public Double ostale_negeografske_usluge();

    public Double ostvareni_telefonski_saobracaj_ka_negeografskim_i_kratkim_kodovima();

    public Double VASservis();

    public String hitne_sluzbe();

    public String usluge_od_javnog_interesa();

    public String komercijalne_usluge();

    public String freephone();

    public String univPristupBroju();

    public String M2M();

    public String nomadskaUsluga();

    public Double ukupan_medjunarodni_telefonski_saobracaj();

    public Double medjunarodni_odlazni_telefonski_saobracaj_iz_fiksne_mreze();

    public String evropa();

    public String ostatak_sveta();

    public String medjunarodni_dolazni_telefonski_saobracaj_ka_fiksnoj_mrezi();

    public Double broj_medjunarodnih_telegrama();

    public String prosecna_duzina_razgovora_u_mrezi();

    public String prosecna_duzina_razgovora_ka_mobilnim_mrezema();

    public String prosecna_duzina_razgovora_ka_inostranstvu();

    public Double VoIP_minuti();

    public String ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze();

    public Double ka_geografskim_kodovima();

    public String freephoneOduzimanje();

    //***** TERMINACIJA SAOBRACAJA *****
    public String ostvareni_dolazni_nacionalni_telefonski_saobracaj_iz_drugih_mreza_termincija();

    public String ostvareni_dolazni_nacionalni_telefonski_saobracaj_iz_fiksnih_mreza();

    public String terminacija_iz_drugih_fiksnih_TS();

}
