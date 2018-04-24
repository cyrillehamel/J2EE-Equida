<%-- 
    Document   : categVenteConsulter
    Created on : 17 nov. 2017, 10:48:20
    Author     : ts2slam
--%>

<%@page import="modele.CategVente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>Consultation Categorie de vente</title>
    </head>
    <body>
        <jsp:include page="../menu/menu.jsp"/>
         <div class="container text-justify">
        <h1>Infos Categorie de vente</h1>
        
        <%
        CategVente unCategVente = (CategVente)request.getAttribute("pCategVente");
        %>
        
        
        <table class="table table-bordered table-striped table-condensed">
            <tr><td>CODE : </td><td><% out.println(unCategVente.getCode());%></td></tr>
            <tr><td>LIBELLE :</td><td><%  out.println(unCategVente.getLibelle());%></td>  </tr>
        </table>
        </div>
    </body>
</html>
