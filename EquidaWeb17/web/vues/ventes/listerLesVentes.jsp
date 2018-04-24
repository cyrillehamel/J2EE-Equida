<%-- 
    Document   : Lister les Ventes 
    Created on : 22/06/2017, 07:43
    Author     : Zakina
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modele.Vente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>LISTE DES VENTES</title>
    </head>
    <body>
        <jsp:include page="../menu/menu.jsp"/>
        <div class="container text-justify">
            <h1>LISTE DES VENTES</h1>
            <a class="btn btn-default btn-lg" href="ajouterVente">
                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Ajouter une vente
            </a><br><br>
            <%
                ArrayList<Vente> lesVentes = (ArrayList)request.getAttribute("pLesVentes");
            %>
            <table class="table table-bordered table-striped table-condensed">  
                <thead>
                    <tr>             
                        <th>id</th>
                        <th>nom</th>
                        <th>date début</th>
                        <th>catégorie</th>
                        <th> Lieu de vente </th>
                        <th> Liste des clients </th>
                        <th>courriel</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <%
                        for(int i = 0; i < lesVentes.size();i++)
                        {

                            Vente uneVente = lesVentes.get(i);
                            out.println("<tr><td>");
                            out.println(uneVente.getId());
                            out.println("</a></td>");

                            out.println("<td>");
                            out.println(uneVente.getNom());
                            out.println("</td>");

                            out.println("<td>");
                            out.println(uneVente.getDateDebutVente());
                            out.println("</td>");

                            out.println("<td>");
                            out.println(uneVente.getUneCategVente().getLibelle());
                            out.println("</td>");

                            out.println("<td>");
                            out.println(uneVente.getUnLieu().getVille());
                            out.println("</td>");

                            out.println("<td><a href ='../ServletVentes/listerLesClients?codeCat="+ uneVente.getUneCategVente().getCode()+ "'>");
                            out.println("Lister les clients interessés");
                            out.println("</td>");

                            out.println("<td><a href ='../ServletVentes/listerLesCourriels?codeVente="+ uneVente.getId()+ "'>");
                            out.println("liste des mail relatif a la vente");
                            out.println("</td>");

                            out.println("<td><a href ='../ServletCourriel/creerCourriel?codeVente="+ uneVente.getId()+ "'>");
                            out.println("Créer un courriel");
                            out.println("</td>");         
                        }
                        %>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
