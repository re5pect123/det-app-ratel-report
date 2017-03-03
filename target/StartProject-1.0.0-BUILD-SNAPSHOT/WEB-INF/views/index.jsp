<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="newfile.css"/>
<html lang="sr">
    <head>

        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Detel</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="https://fonts.googleapis.com/css?family=Dosis" rel="stylesheet"> 

        <link type="text/css" rel="stylesheet" href="<c:url value="resources/css/animate.min.css" />" />
        <link type="text/css" rel="stylesheet" href="<c:url value="resources/css/bootstrap.min.css" />" />
        <link type="text/css" rel="stylesheet" href="<c:url value="resources/css/font-awesome.min.css" />" />
        <link type="text/css" rel="stylesheet" href="<c:url value="resources/css/plugins.css" />" />
        <link type="text/css" rel="stylesheet" href="<c:url value="resources/css/style.css" />" />
        <link type="text/css" rel="stylesheet" href="<c:url value="resources/css/responsive.css" />" />
        <link type="text/font" rel="stylesheet" href="<c:url value="https://fonts.googleapis.com/css?family=Dosis" />" />
    </head>
    <body class="nomobile">
        <div class="page" id="page">
            <header>
                <nav class="navbar fixed-nav-dark navbar-inverse  navbar-fixed-top" id="main-navbar" >
                    <div class="container">
                        <div class="collapse navbar-collapse" id="navbar-collapse">
                            <img src="resources/logo.png" alt="detel" style="float:left; width:150px; margin-top:10px;"/>
                            <ul class="nav navbar-nav navbar-right-left" style="margin-left:100px;">
                                <li class=""  > <a href="/downloadHome_master/">IZRADA RVC</a></li>
                                <li class="" ><a href="/downloadHome_master/proba">GODISNJI RATEL IZVESTAJ</a></li>

                            </ul>
                        </div>
                    </div>
                </nav>
            </header>
            <!-- IZRADA RVC TABELA -->
            <div class="container" style="display: table; margin: 0 auto;">
                <h1 style="margin-top:100px; text-align:center; padding:20px;">Izrada RVC tabela</h1>
                <img src="resources/rvc.png" style="display: table; margin: 0 auto;"/>

                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>R.B.</th>
                            <th>Upustvo</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1.</td>
                            <td>
                                Ubaciti u DataInput:<br>
                                - Telephone service monthly charge <br>
                                - Usaglaseni podaci - medjupovezivanje TS sa I KOM
                                <br>- U DataOutput ubaciti kurs sa sajta NBS
                            </td>
                        </tr>
                        <tr>
                            <td>2.</td>
                            <td>Pokrenuti aplikaciju</td>
                        </tr>
                        <tr>
                            <td>***</td>
                            <td>
                                Podaci koji se ubace u folder DataInput, kao takvi originalni
                                se kopiraju u DataOriginal (backUp)<br>
                                U folderu RVC files se nalaze RVCtabele koje je potrebno popuniti
                                aplikacija kopira iz DataInput u DataOutput .xls fajlove, a
                                nakon toga kopira i iz RVCfiles u DataOutput folder.<br>
                                Fajlovi samostalno popunjavaju tabele i na kraju aplikacija
                                otvara zavrsni excel fajl.
                            </td>
                        </tr>
                    </tbody>
                </table>

                <button onclick="pokreni()" style="display: table; margin: 0 auto;">Pokreni RVC</button>


            </div>









    </body>
</html>