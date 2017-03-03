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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    </head>

    <body>
        <h1 style="font-size: 20px; text-align: center; margin-top:20px; margin-bottom: 20px;"> Godišnji izveštaj za 2016 za pružaoce usluga fiksne javne telefonske mreže</h1>


        <button onclick="pokreni()">Pokreni izradu izvestaja</button>

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
                        <td id="ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama"</td>                    
                    </tr>
                    <tr>
                        <td>3.1</td>
                        <td> Ostvareni telefonski saobracaj od fiksne ka mobilnim mrezama ka domacim operatorima</td>
                        <td id="ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima"</td>
                    </tr>
                    <tr>
                        <td>3.2</td>
                        <td> Ostvareni telefonski saobracaj od fiksne ka mobilnim mrezama ka inostranim operatorima</td>
                        <td id="ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima"</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td> Ostvareni telefonski saobracaj ka negeografskim i kratkim kodovima</td>
                        <td id="ostvareni_telefonski_saobracaj_ka_negeografskim_i_kratkim_kodovima"</td>
                    </tr>
                    <tr>
                        <td>4.1</td>
                        <td> VAS Servis</td>
                        <td id="VASservis"</td>
                    </tr>
                    <tr>
                        <td>4.1.1</td>
                        <td> kod 09xx</td>
                        <td id="kod09xx"</td>
                    </tr>
                    <tr>
                        <td>4.1.2</td>
                        <td> kod 0780</td>
                        <td id="kod0780"</td>
                    </tr>
                    <tr>
                        <td>4.2</td>
                        <td>Kratki kodovi</td>
                        <td id="kratki_kodovi"</td>
                    </tr>
                    <tr>
                        <td>4.2.1</td>
                        <td> Hitne sluzbe</td>
                        <td id="hitne_sluzbe"</td>
                    </tr>
                    <tr>
                        <td>4.2.2</td>
                        <td> Usluge od javnog interesa</td>
                        <td id="usluge_od_javnog_interesa"</td>
                    </tr>
                    <tr>
                        <td>4.2.3</td>
                        <td> Komercijalne usluge</td>
                        <td id="komercijalne_usluge"</td>
                    </tr>
                    <tr>
                        <td>4.3</td>
                        <td>Ostale negeografske usluge</td>
                        <td id="ostale_negeografske_usluge"</td>
                    </tr>
                    <tr>
                        <td>4.3.1</td>
                        <td>Freephone</td>
                        <td id="freephone"</td>
                    </tr>
                    <tr>
                        <td>4.3.2</td>
                        <td>Univ.pristup.broju</td>
                        <td id="univPristupBroju"</td>
                    </tr>
                    <tr>
                        <td>4.3.3</td>
                        <td>???</td>
                        <td>upit</td>
                    </tr>
                    <tr>
                        <td>4.3.4</td>
                        <td>M2M</td>
                        <td id="M2M"</td>
                    </tr>
                    <tr>
                        <td>4.3.5</td>
                        <td>Nomadska usluga</td>
                        <td id="nomadskaUsluga"</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>Ukupni medjunarodni telefonski saobracaj</td>
                        <td> 6 + 9 (usaglaseni)</td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>Medjunarodni odlazni telefonski saobracaj iz fiksne mreze</td>
                        <td id="medjunarodni_odlazni_telefonski_saobracaj_iz_fiksne_mreze"</td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td>Evropa</td>
                        <td id="evropa"</td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td>Ostatak sveta</td>
                        <td id="ostatak_sveta"</td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td>Iz usaglasenih podataka</td>
                        <td>medj.dolaz_u_I.KOM (491 978)</td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td>Broj medjunarodnih telegrama</td>
                        <td id="broj_medjunarodnih_telegrama"</td>
                    </tr>
                    <tr>
                        <td>11</td>
                        <td>Prosecna duzina razgovora u mrezi</td>
                        <td id="prosecna_duzina_razgovora_u_mrezi"</td>
                    </tr>
                    <tr>
                        <td>12</td>
                        <td>Prosecna duzina razgovora ka mobilnim mrezama</td>
                        <td id="prosecna_duzina_razgovora_ka_mobilnim_mrezema"</td>
                    </tr>
                    <tr>
                        <td>13</td>
                        <td>Prosecna duzina razgovora ka inostranstvu</td>
                        <td id="prosecna_duzina_razgovora_ka_inostranstvu"</td>
                    </tr>
                    <tr>
                        <td>14</td>
                        <td>VoIP minuti</td>
                        <td id="VoIP_minuti"</td>
                    </tr>
                    <tr>
                        <td>15</td>
                        <td>Ostvareni telefonski saobracaj u okviru sopstvene mreze</td>
                        <td id="ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze"</td>
                    </tr>
                    <tr>
                        <td>15.1</td>
                        <td>Ka geografskim kodovima</td>
                        <td id="ka_geografskim_kodovima"</td>
                    </tr>
                    <tr>
                        <td>15.4.1</td>
                        <td>Freephone_oduzimanje</td>
                        <td id="freephoneOduzimanje"</td>
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
//1
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/1",
                }).done(function (response) {
                    $("#ostvareniTelefonskiSaobracajOdFiksneKaFiksnimMrezama").html(response);
                });
//2
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/2",
                }).done(function (response) {
                    $("#ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama").html(response);
                });
//2.1
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/3",
                }).done(function (response) {
                    $("#ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_Telekom_Srbija").html(response);
                });
//2.2
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/4",
                }).done(function (response) {
                    $("#ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_SBB").html(response);
                });
//2.3
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/5",
                }).done(function (response) {
                    $("#ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION").html(response);
                });
//3
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/6",
                }).done(function (response) {
                    $("#ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama").html(response);
                });
//3.1
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/7",
                }).done(function (response) {
                    $("#ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Domacim_Operatorima").html(response);
                });
//3.2
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/8",
                }).done(function (response) {
                    $("#ostvareniTelefonskiSaobracaj_od_Fiksne_Ka_Mobilnim_Mrezama_Ka_Inostranim_Operatorima").html(response);
                });
//4
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/9",
                }).done(function (response) {
                    $("#ostvareni_telefonski_saobracaj_ka_negeografskim_i_kratkim_kodovima").html(response);
                });
//4.1
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/10",
                }).done(function (response) {
                    $("#VASservis").html(response);
                });
//4.1.1
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/11",
                }).done(function (response) {
                    $("#kod09xx").html(response);
                });
//4.1.2
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/12",
                }).done(function (response) {
                    $("#kod0780").html(response);
                });
//4.2
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/13",
                }).done(function (response) {
                    $("#kratki_kodovi").html(response);
                });
//4.2.1
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/14",
                }).done(function (response) {
                    $("#hitne_sluzbe").html(response);
                });
//4.2.2
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/15",
                }).done(function (response) {
                    $("#usluge_od_javnog_interesa").html(response);
                });
//4.2.3
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/16",
                }).done(function (response) {
                    $("#komercijalne_usluge").html(response);
                });
//4.3
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/17",
                }).done(function (response) {
                    $("#ostale_negeografske_usluge").html(response);
                });
//4.3.1
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/18",
                }).done(function (response) {
                    $("#freephone").html(response);
                });
//4.3.2
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/19",
                }).done(function (response) {
                    $("#univPristupBroju").html(response);
                });
//4.3.3
//4.3.4
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/20",
                }).done(function (response) {
                    $("#M2M").html(response);
                });
//4.3.5 
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/21",
                }).done(function (response) {
                    $("#nomadskaUsluga").html(response);
                });
//5 (6 + 9)
//6
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/22",
                }).done(function (response) {
                    $("#medjunarodni_odlazni_telefonski_saobracaj_iz_fiksne_mreze").html(response);
                });
//7
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/23",
                }).done(function (response) {
                    $("#evropa").html(response);
                });
//8
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/24",
                }).done(function (response) {
                    $("#ostatak_sveta").html(response);
                });
//9 usaglaseni podaci
//10
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/25",
                }).done(function (response) {
                    $("#broj_medjunarodnih_telegrama").html(response);
                });
//11
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/26",
                }).done(function (response) {
                    $("#prosecna_duzina_razgovora_u_mrezi").html(response);
                });
//12
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/27",
                }).done(function (response) {
                    $("#prosecna_duzina_razgovora_ka_mobilnim_mrezema").html(response);
                });
//13
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/28",
                }).done(function (response) {
                    $("#prosecna_duzina_razgovora_ka_inostranstvu").html(response);
                });
//14
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/29",
                }).done(function (response) {
                    $("#VoIP_minuti").html(response);
                });
//15
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/30",
                }).done(function (response) {
                    $("#ostvareni_telefonski_saobracaj_u_okviru_sopstvene_mreze").html(response);
                });
//15.1
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/31",
                }).done(function (response) {
                    $("#ka_geografskim_kodovima").html(response);
                });
//15.4.1
                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/32",
                }).done(function (response) {
                    $("#freephoneOduzimanje").html(response);
                });
            }


        </script>
    </body>
</html>
