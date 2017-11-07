<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="sr">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Detel</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link type="text/css" rel="stylesheet" href="<c:url value="resources/css/bootstrap.min.css" />" />
        <link type="text/css" rel="stylesheet" href="<c:url value="resources/css/style.css" />" />
        <link type="text/css" rel="stylesheet" href="<c:url value="resources/css/style.css" />" />

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Dosis" rel="stylesheet">
    </head>
    <body class="nomobile" style= "font-family:Dosis, Georgia, Serif;">
        <header>
            <nav class="navbar fixed-nav-dark navbar-inverse  navbar-fixed-top" id="main-navbar" >
                <div class="container">
                    <div class="collapse navbar-collapse" id="navbar-collapse">
                        <img src="resources/logo.png" alt="detel" style="float:left; width:150px; margin-top:10px;"/>
                        <ul class="nav navbar-nav navbar-right-left" style="margin-left:120px;">
                            <button class="btn btn-warning" type="button" ><a href="index" style="text-decoration:none; color:white;">IZRADA RVC</a></button>
                            <div class="dropdown">
                                <button class="btn btn-warning dropdown-toggle" type="button" data-toggle="dropdown">RATEL IZVEŠTAJI<span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li><a href="git7">GIT - 7</a></li>
                                    <li><a href="ppk1">PKK - 1</a></li>
                                </ul>
                            </div>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <div class="container" style="display: table; margin: 0 auto;">
            <h1 style="margin-top:100px; text-align:center; padding:20px;">Izveštaj o vrednostima parametara kvaliteta javne govorne usluge u javnoj telefonskoj mreži na fiksnoj lokaciji</h1>
            <button style="margin-top:100px;display: table; margin: 0 auto;" onclick="pokreni1()" class="btn btn-warning">Pokreni izradu izvestaja</button>
            <p style="font-size:20px;"> Procenat neuspešnih poziva </p>
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Naziv</th>
                        <th>Procenat</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>4.1</td>
                        <td>svih poziva</td>
                        <td id="n_svih_poziva"></td>
                    </tr>
                    <tr>
                        <td>4.2</td>
                        <td>Nacionalnih poziva unutar fiksne mreže u okviru lokalne centrale</td>
                        <td id="n_nacionalnih_poziva_unutar_fiksne_mreže_u_okviru_lokalne_centrale"></td>
                    </tr>
                    <tr>
                        <td>4.3</td>
                        <td>Nacionalnih poziva unutar fiksne mreže van lokalne centrale</td>
                        <td id="n_nacionalnih_poziva_unutar_fiksne_mreže_van_lokalne_centrale"></td>
                    </tr>
                    <tr>
                        <td>4.4</td>
                        <td>Nacionalnih poziva iz fiksne mreže prema mobilnim operatorima</td>
                        <td id="n_nacionalnih_poziva_unutar_fiksne_mreže_prema_mobilnim_operatorima"></td>
                    </tr>
                    <tr>
                        <td>4.5</td>
                        <td>Nacionalnih poziva iz fiksne mreže prema drugim fiksnim operatorima</td>
                        <td id="n_nacionalnih_poziva_unutar_fiksne_mreže_prema_drugim_fiksnim_operatorima"></td>
                    </tr>
                    <tr>
                        <td>4.6</td>
                        <td>Međunarodnih poziva</td>
                        <td id="n_medjunarodnih_poziva"></td>
                    </tr>

                </tbody>
            </table>

            <p style="font-size:20px;"> Procenat uspešnih poziva </p>
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Naziv</th>
                        <th>Procenat</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>5.1</td>
                        <td>svih poziva</td>
                        <td id="u_svih_poziva"></td>
                    </tr>
                    <tr>
                        <td>5.2</td>
                        <td>Nacionalnih poziva unutar fiksne mreže u okviru lokalne centrale</td>
                        <td id="u_nacionalnih_poziva_unutar_fiksne_mreže_u_okviru_lokalne_centrale"></td>
                    </tr>
                    <tr>
                        <td>5.3</td>
                        <td>Nacionalnih poziva unutar fiksne mreže van lokalne centrale</td>
                        <td id="u_nacionalnih_poziva_unutar_fiksne_mreže_van_lokalne_centrale"></td>
                    </tr>
                    <tr>
                        <td>5.4</td>
                        <td>Nacionalnih poziva iz fiksne mreže prema mobilnim operatorima</td>
                        <td id="u_nacionalnih_poziva_unutar_fiksne_mreže_prema_mobilnim_operatorima"></td>
                    </tr>
                    <tr>
                        <td>5.5</td>
                        <td>Nacionalnih poziva iz fiksne mreže prema drugim fiksnim operatorima</td>
                        <td id="u_nacionalnih_poziva_unutar_fiksne_mreže_prema_drugim_fiksnim_operatorima"></td>
                    </tr>
                    <tr>
                        <td>5.6</td>
                        <td>Međunarodnih poziva</td>
                        <td id="u_medjunarodnih_poziva"></td>
                    </tr>

                </tbody>
            </table>

            <button onclick="pokreniteMe1()">Try it</button>
            <button onclick="proba()">Proba</button>


            <script>
                function pokreniteMe1() {
                    $.ajax({
                        url: 'http://localhost:8080/downloadHome_master/rest1/1',
                    });
                }


                $.ajax({
                    url: "http://localhost:8080/downloadHome_master/rest/5",
                }).done(function (response) {
                    $("#ostvareniTelefonskiSaobracaj_Od_Fiksne_Ka_Drugim_Domacim_Fiksnim_Mrezama_ORION").html(response);
                });

                function proba() {
                    $.ajax({
                        url: 'http://localhost:8080/downloadHome_master/rest1/1'
                    }).done(function (response) {
                        $("#n_svih_poziva").html(response);
                    }
                    )
                }


            </script>


    </body>
</html>