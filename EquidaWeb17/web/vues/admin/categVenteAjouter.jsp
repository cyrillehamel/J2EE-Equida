<%-- 
    Document   : categVenteAjouter
    Created on : 17 nov. 2017, 10:41:54
    Author     : ts2slam
--%>

<%@page import="formulaires.CategVenteForm"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>Categorie de vente Ajouter</title>
    </head>
    <body>
       <jsp:include page="../menu/menu.jsp"/>
         <div class="container">
        <h1>NOUVELLE CATEGORIE DE VENTE</h1>
        <%
                //Client client=(Client)request.getAttribute("client");
                CategVenteForm form = (CategVenteForm)request.getAttribute("form");
            %>
        
        <form class="form-inline" action="ajouterCategVente" method="POST">
                <label for="code">CODE : </label>
                <input id="code" type="text" name="code"  size="5" maxlength="5">
                </br>
                
                <label for="libelle">LIBELLE : </label>
                <input id="libelle"  type="text"  name="libelle" size="30" maxlength="30">      
                 </br>
                
                
            <input type="submit" name="valider" id="valider" value="Valider"/>
            </form>
       </div>
    </body>
</html>
