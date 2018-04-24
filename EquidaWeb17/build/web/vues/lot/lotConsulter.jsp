<%-- 
    Document   : lotConsulter
    Created on : 17 nov. 2017, 07:22:38
    Author     : ts2slam
--%>

<%@page import="modele.Lot"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>Page de consultation du lot</title>
    </head>
    <body>
        <jsp:include page="../menu/menu.jsp"/>
        <div class="container text-justify">
            <h1>INFOS LOT</h1>

            <%
                Lot unLot = (Lot)request.getAttribute("pLot");
            %>

             <table class="table table-bordered table-striped table-condensed">
                <tr><td>PRIX DE DEPART :</td><td><% out.println(unLot.getPrixDepart());%></td></tr>
                <tr><td>ID CHEVAL :</td><td><%  out.println(unLot.getUnCheval().getId());%></td>  </tr>
                <tr><td>ID VENTE  :</td><td><%  out.println(unLot.getUneVente().getId());%></td>  </tr>
                <tr><td>ID VENDEUR  :</td><td><%  out.println(unLot.getUnVendeur().getId());%></td>  </tr>
            </table>
        </div>
    </body>
</html>
