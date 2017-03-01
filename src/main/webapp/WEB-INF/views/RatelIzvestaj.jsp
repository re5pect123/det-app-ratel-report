<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="newfile.css"/>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Detel</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link type="text/css" rel="stylesheet" href="<c:url value="resources/css/newfile.css" />" />
        <link type="text/css" rel="stylesheet" href="<c:url value="resources/css/bootstrap.min.css" />" />
    </head>

    <body>
        <h1 style="font-size: 20px; text-align: center; margin-top:20px; margin-bottom: 20px;"> Godišnji izveštaj za 2016 za pružaoce usluga fiksne javne telefonske mreže</h1>


        <button onclick="pokreni()">Pokreni izradu izvestaja</button>
        <button onclick="pokreni2()">Pokreni izradu izvestaja</button>

        <div align="center" class="container">
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Naziv</th>
                        <th>Minuti</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td> Ostvareni telefonski saobracaj od fiksne ka fiksnim mrezama</td>
                        <td id="ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama"></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td> Ostvareni telefonski saobracaj od fiksne ka drugim domacim fiksnim mrezama</td>
                        <td id="ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama"></td>
                    </tr>
                    <tr>
                        <td>2.1</td>
                        <td> Ostvareni telefonski saobracaj od fiksne ka drugim domacim fiksnim mrezama Telekom Srbija</td>
                        <td id="ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija"></td>
                    </tr>
                    <tr>
                        <td>2.2</td>
                        <td> Ostvareni telefonski saobracaj od fiksne ka drugim domacim fiksnim mrezama SBB</td>
                        <td id="ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB"></td>
                    </tr>
                    <tr>
                        <td>2.3</td>
                        <td> Ostvareni telefonski saobracaj od fiksne ka drugim domacim fiksnim mrezama ORION</td>
                        <td id="ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION"</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td> Ostvareni telefonski saobracaj od fiksne ka mobilnim mrezama</td>
                        <td>${ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama}</td>
                    </tr>
                    <tr>
                        <td>3.1</td>
                        <td> Ostvareni telefonski saobracaj od fiksne ka mobilnim mrezama ka domacim operatorima</td>
                        <td>${ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima}</td>
                    </tr>
                    <tr>
                        <td>3.2</td>
                        <td> Ostvareni telefonski saobracaj od fiksne ka mobilnim mrezama ka inostranim operatorima</td>
                        <td>${ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima}</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td> Ostvareni telefonski saobracaj ka negeografskim i kratkim kodovima</td>
                        <td>${ostvareni_telefonski_saobracaj_ka_negeografskim_i_kratkim_kodovima}</td>
                    </tr>
                    <tr>
                        <td>4.1</td>
                        <td> VAS Servis</td>
                        <td>${VASservis}</td>
                    </tr>
                    <tr>
                        <td>4.1.1</td>
                        <td> kod 09xx</td>
                        <td>${kod09xx}</td>
                    </tr>
                    <tr>
                        <td>4.1.2</td>
                        <td> kod 0780</td>
                        <td>${kod0780}</td>
                    </tr>
                    <tr>
                        <td>4.2</td>
                        <td>Kratki kodovi</td>
                        <td>${kratki_kodovi}</td>
                    </tr>
                    <tr>
                        <td>4.2.1</td>
                        <td> Hitne sluzbe</td>
                        <td>${hitne_sluzbe}</td>
                    </tr>
                    <tr>
                        <td>4.2.2</td>
                        <td> Usluge od javnog interesa</td>
                        <td>${usluge_od_javnog_interesa}</td>
                    </tr>
                    <tr>
                        <td>4.2.3</td>
                        <td> Komercijalne usluge</td>
                        <td>${komercijalne_usluge}</td>
                    </tr>
                    <tr>
                        <td>4.3</td>
                        <td>Ostale negeografske usluge</td>
                        <td>${ostale_negeografske_usluge}</td>
                    </tr>
                    <tr>
                        <td>4.3.1</td>
                        <td>Freephone</td>
                        <td>${freephone}</td>
                    </tr>
                    <tr>
                        <td>4.3.2</td>
                        <td>Univ.pristup.broju</td>
                        <td>${univPristupBroju}</td>
                    </tr>
                    <tr>
                        <td>4.3.3</td>
                        <td>???</td>
                        <td>upit</td>
                    </tr>
                    <tr>
                        <td>4.3.4</td>
                        <td>M2M</td>
                        <td>${M2M}?</td>
                    </tr>
                    <tr>
                        <td>4.3.5</td>
                        <td>Nomadska usluga</td>
                        <td>${nomadskaUsluga}</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>Ukupni medjunarodni telefonski saobracaj</td>
                        <td> 6 + 9 (usaglaseni)</td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>Medjunarodni odlazni telefonski saobracaj iz fiksne mreze</td>
                        <td>${medjunarodni_odlazni_telefonski_saobracaj_iz_fiksne_mreze}</td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td>Evropa</td>
                        <td>${evropa}</td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td>Ostatak sveta</td>
                        <td>${ostatak_sveta}</td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td>Iz usaglasenih podataka</td>
                        <td>medj.dolaz_u_I.KOM (491 978)</td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td>Broj medjunarodnih telegrama</td>
                        <td>${broj_medjunarodnih_telegrama}</td>
                    </tr>
                    <tr>
                        <td>11</td>
                        <td>Prosecna duzina razgovora u mrezi</td>
                        <td>${prosecna_duzina_razgovora_u_mrezi}</td>
                    </tr>
                    <tr>
                        <td>12</td>
                        <td>Prosecna duzina razgovora ka mobilnim mrezama</td>
                        <td>${prosecna_duzina_razgovora_ka_mobilnim_mrezema}</td>
                    </tr>
                    <tr>
                        <td>13</td>
                        <td>Prosecna duzina razgovora ka inostranstvu</td>
                        <td>${prosecna_duzina_razgovora_ka_inostranstvu}</td>
                    </tr>
                    <tr>
                        <td>14</td>
                        <td>VoIP minuti</td>
                        <td>${VoIP_minuti}</td>
                    </tr>
                    <tr>
                        <td>15</td>
                        <td>Ostvareni telefonski saobracaj u okviru sopstvene mreze</td>
                        <td>${ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze}</td>
                    </tr>
                    <tr>
                        <td>15.1</td>
                        <td>Ka geografskim kodovima</td>
                        <td>${ka_geografskim_kodovima}</td>
                    </tr>
                    <tr>
                        <td>15.4.1</td>
                        <td>Freephone_oduzimanje</td>
                        <td>${freephoneOduzimanje}</td>
                    </tr>

                </tbody>

            </table>


            <!-- TERMINACIJA SAOBRACAJA -->
            <h1 style="font-size: 20px; text-align: center; margin-top:20px; margin-bottom: 20px;"> Terminacija saobracaja</h1>

            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Naziv</th>
                        <th>Minuti</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Terminacija iz drugih fiksnih TS</td>
                        <td>${terminacija_iz_drugih_fiksnih_TS}</td>
                    </tr>
                    <tr>
                        <td>2.1</td>
                        <td>Ostvareni tranzitni saobracaj - nacionalni</td>
                        <td>uzeti iz RVC IKOM - Jotel (51 046)</td>
                    </tr>
                    <tr>
                        <td>2.2</td>
                        <td>Ostvareni tranzitni saobracaj - medjunarodni</td>
                        <td>medj.transit_via_I.KOM (6meseci)(2 117 555) </td>
                    </tr>
                </tbody>

                <!--  <p> ostvareniTelefonskiSaobracajOd Fiksne Ka Fiksnim Mrezama </p> ${ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama}
                  <p> ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama </p>${ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama}
                  <p> ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija </p> ${ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija}
                  <p> ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB </p>${ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB}
                  <p> ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION </p>${ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION}
                  <p> ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama </p>${ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama}
                  <p> ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima </p>${ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima}
                  <p> ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima </p>${ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima}
                  <p> VASservis </p>${VASservis}
                  <p> kod09xx </p>${kod09xx}
                  <p> kod0780 </p>${kod0780}
                  <p> hitne_sluzbe </p>${hitne_sluzbe}
                  <p> usluge_od_javnog_interesa </p>${usluge_od_javnog_interesa}
                  <p> komercijalne_usluge </p>${komercijalne_usluge}
                  <p> freephone </p>${freephone}
                  <p> univPristupBroju </p>${univPristupBroju}
                  <p> M2M </p>${M2M}
                  <p> nomadskaUsluga </p>${nomadskaUsluga}
                  <p> medjunarodni_odlazni_telefonski_saobracaj_iz_fiksne_mreze </p>${medjunarodni_odlazni_telefonski_saobracaj_iz_fiksne_mreze}
                  <p> evropa </p>${evropa}
                  <p> ostatak_sveta </p>${ostatak_sveta}
                  <p> broj_medjunarodnih_telegrama </p>${broj_medjunarodnih_telegrama}
                  <p> prosecna_duzina_razgovora_u_mrezi </p>${prosecna_duzina_razgovora_u_mrezi}
                  <p> prosecna_duzina_razgovora_ka_mobilnim_mrezema </p>${prosecna_duzina_razgovora_ka_mobilnim_mrezema}
                  <p> prosecna_duzina_razgovora_ka_inostranstvu </p>${prosecna_duzina_razgovora_ka_inostranstvu}
                  <p> VoIP_minuti </p>${VoIP_minuti}
                  <p> ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze </p>${ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze}
                  <p> ka_geografskim_kodovima </p>${ka_geografskim_kodovima}
                  <p> freephoneOduzimanje </p>${freephoneOduzimanje}
                  <p> terminacija_iz_drugih_fiksnih_TS </p>${terminacija_iz_drugih_fiksnih_TS} -->

        </div>


        <script>
            function pokreni() {

                var xhr = new XMLHttpRequest();

                xhr.open("get", "http://localhost:8080/downloadHome_master/rest/1", false);
                xhr.send(null);
                var ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama = xhr.responseText;
                document.getElementById("ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama").innerHTML = ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama;

                xhr.open("get", "http://localhost:8080/downloadHome_master/rest/2", false);
                xhr.send(null);
                var ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija = xhr.responseText;
                document.getElementById("ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija").innerHTML = ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija;


            }

            function pokreni2() {

            }

        </script>
    </body>
</html>
