<%-- 
    Document   : listerLesClients
    Created on : 22 juin 2017, 10:23:05
    Author     : Zakina
--%>

<%@page import="modele.Client"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>LISTE LES CLIENTS POUR UNE CATEGORIE DE VENTE</title>
    </head>
    <body>
        <jsp:include page="../menu/menu.jsp"/>
        <div class="container text-justify">
            <h1>LISTE DES CLIENTS POUR UNE CATEGORIE DE VENTE</h1>
            <%
                ArrayList<Client> lesClients = (ArrayList)request.getAttribute("pLesClients");
            %>
            <table class="table table-bordered table-striped table-condensed">  
                <thead>
                    <tr>             
                        <th>id</th>
                        <th>nom</th>
                        <th>prenomt</th>
                        <th>pays</th> 
                        <th>titre</th>
                        <th>rue</th>
                        <th>copos</th>
                        <th>ville</th>
                        <th>mail</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <%
                        for(int i = 0; i < lesClients.size();i++)
                        {

                            Client unClient = lesClients.get(i);
                            out.println("<tr><td>");
                            out.println(unClient.getId());
                            out.println("</a></td>");

                             out.println("<td>");
                             out.println(unClient.getNom());
                            out.println("</td>");

                            out.println("<td>");
                            out.println(unClient.getPrenom());
                            out.println("</td>");

                            out.println("<td>");
                            out.println(unClient.getUnPays().getNom());
                            out.println("</td>");

                            out.println("<td>");
                            out.println(unClient.getTitre());
                            out.println("</td>");

                            out.println("<td>");
                            out.println(unClient.getRue());
                            out.println("</td>");

                            out.println("<td>");
                            out.println(unClient.getCopos());
                            out.println("</td>");

                            out.println("<td>");
                            out.println(unClient.getVille());
                            out.println("</td>");

                            out.println("<td>");
                            out.println(unClient.getMail());
                            out.println("</td>");
                        }
                        %>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
