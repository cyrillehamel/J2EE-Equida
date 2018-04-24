<%-- 
    Document   : listerLesChevaux
    Created on : 13 oct. 2017, 08:51:15
    Author     : ts2slam
--%>

<%@page import="modele.Cheval"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        
        <jsp:include page="../menu/menu.jsp"/>
        <div class="container text-justify">
            <h1>LISTE DES CHEVAUX</h1>
            <a class="btn btn-default btn-lg" href="ajouterCheval">
                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Ajouter un cheval
            </a><br><br>
            <%
                ArrayList<Cheval> lesChevaux = (ArrayList)request.getAttribute("pLesChevaux");
            %>
            <table  class="table table-bordered table-striped table-condensed">  
                <thead>
                    <tr>             
                        <th>Id</th>
                        <th>Détails</th>
                        <th>Nom</th>
                        <th>Type de cheval</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <%
                        for(int i = 0; i < lesChevaux.size();i++)
                        {

                            Cheval unCheval = lesChevaux.get(i);
                            out.println("<tr><td>");
                            out.println(unCheval.getId());
                            out.println("</a></td>");

                            out.println("<td><a href ='../ServletCheval/detailCheval?codeCheval="+ unCheval.getId()+ "'>");
                            out.println("Détails");
                            out.println("</td>");

                            out.println("<td>");
                            out.println(unCheval.getNom());
                            out.println("</td>");

                            out.println("<td>");
                            out.println(unCheval.getUnType().getLibelle());
                            out.println("</td>");                        

                        }
                        %>
                    </tr>
                </tbody>
            </table>
        </div>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </body>
</html>
