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
                     <button class="btn btn-warning" type="button"><a style="text-decoration:none; color:white;"  href="index">IZRADA RVC</a></button>
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
         <h1 style="margin-top:100px; text-align:center; padding:20px;">Izrada RVC tabela</h1>
		 
		 <!-- NA GORE IDE COPY -->
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
         <button onclick="pokrenime()" style="display: table; margin: 0 auto;">Pokreni RVC</button>
      </div>
   </body>
</html>