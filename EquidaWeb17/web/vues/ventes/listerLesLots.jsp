<%-- 
    Document   : listerLesClients
    Created on : 22 juin 2017, 10:23:05
    Author     : Zakina
--%>

<%@page import="modele.Lot"%>
<%@page import="modele.Client"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>LISTE LES LOT RELATIF A LA VENTE</title>
    </head>
    <body>
        <jsp:include page="../menu/menu.jsp"/>
        <div class="container text-justify">
            <h1>LISTE DES CLIENTS POUR LA VENTE</h1>
            <%
                ArrayList<Lot> lesLots = (ArrayList)request.getAttribute("pLesLots");
            %>
            <table class="table table-bordered table-striped table-condensed">  
                <thead>
                    <tr>             
                        <th>nom du cheval</th>
                        <th>vendeur</th>
                        <th>prix de depart</th> 
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <%
                        for(int i = 0; i < lesLots.size();i++)
                        {

                            Lot unLot = lesLots.get(i);
                            out.println("<td><a href ='../ServletCheval/detailCheval?codeCheval="+unLot.getUnCheval().getId()+ "'>");
                            out.println(unLot.getUnCheval().getNom());
                            out.println("</a></td>");

                             out.println("<td>");
                            out.println(unLot.getUnVendeur().getNom()+" "+unLot.getUnVendeur().getPrenom());
                            out.println("</td>");

                            out.println("<td>");
                            out.println(unLot.getPrixDepart());
                            out.println("</td></tr>");

                        }
                        %>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
