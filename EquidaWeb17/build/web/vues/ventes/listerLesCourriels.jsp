<%-- 
    Document   : listerLesCourriels
    Created on : 13 oct. 2017, 08:51:21
    Author     : ts2slam
--%>

<%@page import="modele.Courriel"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>LISTE DES COURRIELS</title>
    </head>
    <body>
        <jsp:include page="../menu/menu.jsp"/>
        <div class="container text-justify">
            <h1>LISTE DES COURRIELS</h1>
            <%
                ArrayList<Courriel> lesCourriels = (ArrayList)request.getAttribute("pLesCourriels");
            %>
            <table class="table table-bordered table-striped table-condensed">  
                <thead>
                    <tr>             
                        <th>date</th>
                        <th>objet</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <%
                        for(int i = 0; i < lesCourriels.size();i++)
                        {

                            Courriel unCourriel = lesCourriels.get(i);
                             out.println("<tr><td>");
                            out.println(unCourriel.getDate());
                             out.println("</td>");

                            out.println("<td><a href ='../ServletVentes/consulterCourriel?codeCourriel="+ unCourriel.getId()+ "'>");
                            out.println(unCourriel.getObjet());
                            out.println("</a></td>");
                        }
                        %>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
