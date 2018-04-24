<%-- 
    Document   : CourrielAjouter
    Created on : 20 oct. 2017, 09:20:19
    Author     : ts2slam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>Courriel à créer</title>
    </head>
    <body>
        <jsp:include page="../menu/menu.jsp"/>
        <div class="container text-justify">
            <h1>Créer Courriel</h1>
            <form class="form-inline" action="creerCourriel" method="POST">
                <label for="dateCourriel">Date Debut Vente : </label><br>
                <input class="form-control" id="dateCourriel" type="date" name="dateCourriel"  >
                <br>
                
                <label for="objet"> Objet : </label><br>
                <input class="form-control" id="objet" type="text" name="objet"  size="30" maxlength="30">
                <br>
                
                <label for="corps"> Corps : </label><br>
                <textarea class="form-control" id="corps" name="corps" rows="7" cols="27"></textarea>
                <br><br>
                <%
                    String codeVente = (String)request.getAttribute("pCodeVente");
                    out.println("<input type='hidden' id='codeVente' name='codeVente' value='" + codeVente +"'>"); 
                %>
                
                <input class="form-control btn" type="submit" name="valider" id="valider" value="Valider"/>
            </form>
        </div>    
    </body>
</html>
